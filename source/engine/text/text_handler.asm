; Text_Handler functions are called once per frame and process strings to display on the screen
; All handler functions return the following values:
;   d = $00 if a normal character, or else the special character code (value of Text_SPECIALCHARLOW-$FF)
;   Note that 🔊<FORMAT> and 🔇<SKIPFORMAT> are never returned in d as they are immediately interpreted by Text_StringGetChar


; TextHandler_Char - draws one character every Text_SPEED frames
;                       Used with the Textbox module
; TextHandler_Immediate - a removed function that would instantly write text when the screen was turned off
; TextHandler_String - Copies one character per frame silently, and then instantly displays the text when ready
;                       Used with the Menu module
; TextHandler_Idle - Does nothing (returns d=0)


TextHandler_Char::
    ; Inputs:
    ;   See Text_Wrap and Text_StringGetChar
    ; Outputs:
    ;   A letter is added to the textbox, except
    ;   if a special character is read, then no character is written
    ;   d = special character (or $00 otherwise)
    .Init:
        ; Wrap to the start of the buffer if needed
        call Text_Wrap
        ; Get the next character
        call Text_StringGetChar

        ; Abort if special character code is parsed
        ;   n.b. that 🔇<SKIPFORMAT> and 🔊<FORMAT> are not actually returned by Text_StringGetChar
        ld a, d
        and a
        ret nz

        ; Setup the copying in the next vblank
        call Text_SetVBlankCharSource
        Set16_M wVBlank_Func, TextInterrupt_VBlankFunc_CopyTile

        ; Wait Text_SPEED frames before the next character
        Set8 wText_DelayCounter, Text_SPEED
        Set16_M wText_HandlerFunc, .WaitLoop
    .WaitLoop:
        ld a, [wText_DelayCounter]
        dec a
        ld [wText_DelayCounter], a
        jr nz, .Waiting
            ; Once the timer runs out, parse another character
            Set16_M wText_HandlerFunc, TextHandler_Char
        .Waiting:
            ld d, $00 ;Unneeded line? d should already be zero. Good to be safe I guess
            ret


TextHandler_Immediate::
    ; Disabled handler function - currently UNUSED
    ; To immediately display text, the screen has to be temporarily turned off
    ; So I guess this function was disabled due to the screen flashing effect
    ; Inputs:
    ;   None
    ; Outputs:
    ;   d = 0 (no special character)
    jp TextHandler_Idle
    /*
    ; Here is the original source that was removed prior to the alpha release:
    ; However, note that the whole .DisplayString section is no longer needed, because
    ; TextInterrupt_VBlankFunc_CopyTile now concomitantly updates the tilemap
    .CopyString
        ; First, copy all the text until a special character code into the tileset
        call Text_StringGetChar
        ld a, d
        and a
        jr nz, .DisplayString
        call Text_SetVBlankCharSource
        call TextInterrupt_VBlankFunc_CopyTile
        jr .CopyString
    .DisplayString:
        ; Reset the string pointer to the initial position
        ; Second, copy all the text tileids into the tilemap until the special character code
        Mov16 wText_StringFrame, wText_StringStartFrame ;Address of the start of the string
        .Loop:
            call Text_StringGetChar
            ld a, d
            and a
            ret nz

            Get16 hl, wText_MapDest
            Set8 rVBK, $01
            Mov8 hl, wText_Attributes

            xor a
            ld [rVBK], a
            ld a, [wText_TileCurrent]
            ld [hl+], a
            inc a
            ld [wText_TileCurrent], a

            Set16 wText_MapDest, hl
            jr DisplayString
    */


TextHandler_String::
    ; This function will copy an entire line of a string (one char per frame) into the tileset
    ; Once the entire line is copied, the tilemap will be updated to display the entire frame at once
    ; The line length is determined by wText_TileLimit-wText_TileCurrent
    ; Special characters (excluding 🔊<FORMAT> and 🔇<SKIPFORMAT>) are ignored (including 🛑<EOF>)
    ; Inputs:
    ;   wText_TileStart = wText_TileCurrent - the current tile id
    ;   wText_TileLimit - the limit of the tile id
    ;   wText_StringFrame - the string - special characters are ignored except 🔊<FORMAT>
    ; Outputs:
    ;   The string is copied (1 char per frame)

    ; Make sure we are not at the end of the string
    Get8 d, wText_TileLimit
    ld a, [wText_TileCurrent]
    cp d
    jr z, .StringEnd
        ; Copy one tile into the tileset
        inc a
        ld [wText_TileCurrent], a
        call Text_StringGetChar
        call Text_SetVBlankCharSource
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_CopyTile
        ret

    .StringEnd:
        ; Update the tilemap to display the entire string at once
        ; We need to do this because we were calling Interrupt_VBlankFunc_CopyTile and not TextInterrupt_VBlankFunc_CopyTile
        ; and so the tilemap was not copied
        ; Had we used TextInterrupt_VBlankFunc_CopyTile instead, we would be able to omit the next line of code
        Set16_M wVBlank_Func, TextVBlank_TilemapString
        jp TextHandler_Idle


TextHandler_Idle::
    ; Loops indefinitely
    ; Output:
    ;   d = 0 (No special character is activated)
    Set16_M wText_HandlerFunc, TextHandler_Idle
    ld d, $00 ; No special character
    ret