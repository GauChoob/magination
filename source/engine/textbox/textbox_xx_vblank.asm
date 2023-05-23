; Various VBlank functions called by the Textbox module, along with 2 helper functions for the VBlank functions


; source/engine/script/modules/textbox/textbox_xx_vblank.s

    ; $46CF
TextboxXX_VBlank_ClearLine:
    ; Replaces a line of text with blank
    ; Inputs:
    ;   hl = Target line (Textbox_LINE0, 1, 2, 3 or 4)
    ld a, Textbox_TILEID_BLANK  
    REPT 15                   
        ld [hl+], a
    ENDR
    ret

    ; $45E3
TextboxXX_VBlank_CopyLine:
    ; Copies a line of text to another line
    ; Inputs:
    ;   bc = Target line (Textbox_LINE0, 1, 2, 3 or 4)
    ;   hl = Source line (Textbox_LINE0, 1, 2, 3 or 4)
    REPT 15
        LdBCIHLI
    ENDR
    ret 

    ; $470F
TextboxXX_VBlank_Clear1::
    ; Erases lines 1 and 3 of text (the normal dialogue lines)
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE1
    call TextboxXX_VBlank_ClearLine
    ld hl, Textbox_LINE3
    call TextboxXX_VBlank_ClearLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $472A
TextboxXX_VBlank_Clear2::
    ; Erases lines 0 and 2 of text (usually empty lines, although line 2 sometimes has text when scrolling)
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE0
    call TextboxXX_VBlank_ClearLine
    ld hl, Textbox_LINE2
    call TextboxXX_VBlank_ClearLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $4745
TextboxXX_VBlank_Clear3::
    ; Erases line 4 of text (generally empty)
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE4
    call TextboxXX_VBlank_ClearLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $475A
TextboxXX_VBlank_ClearIcon::
    ; Resets and initializes the icon
    ; 1) Replaces the icon with blank
    ; 2) Sets the right attribute map
    xor a
    ld [rVBK], a
    ld bc, $20-$05 ; Each row is $20 tiles long, but we only copy $05 bytes
    ld hl, Textbox_ICON
    ld a, Textbox_TILEID_BLANK

    ; Copy the 5 rows
    REPT 4
        REPT 5
        ld [hl+], a
        ENDR

        add hl, bc
    ENDR
    REPT 5
    ld [hl+], a
    ENDR

    Set8 rVBK, $01
    ld bc, $20-$05 ; Each row is $20 tiles long, but we only copy $05 bytes
    ld hl, Textbox_ICON
    ld a, Textbox_ICON_ATTRIBUTES

    ; Copy the 5 rows
    REPT 4
        REPT 5
        ld [hl+], a
        ENDR

        add hl, bc
    ENDR
    REPT 5
    ld [hl+], a
    ENDR

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


    ; $47B8
TextboxXX_VBlank_Cursor::
    ; Blinks the cursor in and out with delay Textbox_CURSOR_BLINKDELAY on tile Textbox_TILEID_CURSORHOVER
    ; This function is DISABLED with a RET instruction at the very beginning
    ; Inputs:
    ;   wTextbox_CursorBlinkCounter - countdown to blink on/off

    ; THIS FUNCTION WAS DISABLED BY ADDING THIS RET, BUT THE FUNCTION STILL WORKS
    IF DEBUG_TEXTBOX_CURSOR==1
        ; debug code to enable the function
        nop
    ELSE
        ; normal code
        ret
    ENDC

    xor a
    ld [rVBK], a

    ld hl, Textbox_CURSOR
    ld a, [wTextbox_CursorBlinkCounter]  ;bit 7 = cursor on; bits 6-0 = delay
    bit 7, a
    jr nz, .PlaceCursorTile
    .ClearCursorTile:
        ; Decrement the cursor counter by 1, and if it hits zero, reset the counter with the cursor on
        and $7F
        dec a
        jr nz, .CounterNonZero1
        .CounterZero1:
            ld a, $80 + Textbox_CURSOR_BLINKDELAY  ;bit 7 = cursor on; bits 6-0 = delay
        .CounterNonZero1:
        ld [wTextbox_CursorBlinkCounter], a
        ; Hide the cursor
        ld a, Textbox_TILEID_BLANK
        ld [hl], a

        Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
        ret
    .PlaceCursorTile:
        ; Decrement the cursor counter by 1, and if it hits zero, reset the counter with the cursor off
        and $7F
        dec a
        jr nz, .CounterNonZero2
        .CounterZero2:
            ld a, $00 + Textbox_CURSOR_BLINKDELAY  ;bit 7 = cursor on; bits 6-0 = delay
            ld [wTextbox_CursorBlinkCounter], a
            jr .Finally
        .CounterNonZero2:
            set 7, a
            ld [wTextbox_CursorBlinkCounter], a
        .Finally:
        ld a, Textbox_TILEID_CURSORHOVER
        ld [hl], a
        Set8 rVBK, $01
        ld a, Textbox_CURSOR_ATTRIBUTES
        ld [hl], a
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
        ret

    ; $4806
TextboxXX_VBlank_Icon::
    ; After an icon has been copied to Textbox_VRAM_ICON0 or Textbox_VRAM_ICON1,
    ; Update the tilemap to display it
    ; Inputs:
    ;   Textbox_VRAM_ICON0 or Textbox_VRAM_ICON1 holds the icon data
    ;   wTextbox_IconToggle is 0 or 1 and determines which holds the icon data
    ; Outputs:
    ;   The new icon is added to the tilemap
    ;   wTextbox_IconToggle is inverted between 0 and 1 to prepare for the next icon
    xor a
    ld [rVBK], a

    ; if(wTextbox_IconToggle == 0), hl = LOW(Textbox_VRAM_ICON0/$10)
    ; if(wTextbox_IconToggle == 1), hl = LOW(Textbox_VRAM_ICON1/$10)
    ld hl, Textbox_IconX_TileOffset
    ld a, [wTextbox_IconToggle]
    ld c, a
    xor a
    ld b, a
    add hl, bc

    ld a, [hl]
    ld bc, $20-$05 ; Each row is $20 tiles long, but we only copy $05 bytes
    ld hl, Textbox_ICON

    ; Copy the 5 rows
    REPT 4
        REPT 5
        ld [hl+], a
        inc a
        ENDR

        add hl, bc
    ENDR
    REPT 4
    ld [hl+], a
    inc a
    ENDR
    ld [hl], a

    ; Invert wTextbox_IconToggle 0<->1
    ld a, [wTextbox_IconToggle]
    inc a
    and $01
    ld [wTextbox_IconToggle], a

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $4864
TextboxXX_VBlank_Scroll1::
    ; Erases the top line of the textbox
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE2
    ld bc, Textbox_LINE1
    call TextboxXX_VBlank_CopyLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $487C
TextboxXX_VBlank_Scroll2::
    ; Moves the bottom line of the textbox to the middle
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE3
    ld bc, Textbox_LINE2
    call TextboxXX_VBlank_CopyLine
    ld hl, Textbox_LINE4
    ld bc, Textbox_LINE3
    call TextboxXX_VBlank_CopyLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $489D
TextboxXX_VBlank_Scroll3::
    ; Moves a middle line of dialogue to the top line
    xor a
    ld [rVBK], a
    ld hl, Textbox_LINE2
    ld bc, Textbox_LINE1
    call TextboxXX_VBlank_CopyLine
    ld hl, Textbox_LINE3
    ld bc, Textbox_LINE2
    call TextboxXX_VBlank_CopyLine
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $48BE
TextboxXX_VBlank_Window::
    ; Updates the textbox window position to a new position
    Set8FF rWX, [wTextbox_WX]
    ld a, [wTextbox_WY]
    ldh [rWY], a
    ldh [rLYC], a
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret
