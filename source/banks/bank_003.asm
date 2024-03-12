SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ; $4000
Menu_HandleArrowPress::
    ; Figures out which arrow is pressed, and then acts accordingly
    ; Inputs:
    ;   a - wCntDown & wMenu_KeyMask
    ;           Pressed buttons and valid button mask and-ed together
    ;   wMenu_CursorTableValidIDsPointer - points to a table, where table[ID] determines whether the ID is a valid option
    ;       If the option is invalid (i.e. menu option is disabled), then the arrow pressed will be applied again to get the subsequent item
    ;       and so on until a valid option is found
    ;   wMenu_CursorTable - points to a table containing information about each menu option (finger pointer X/Y, and what happens when you press buttons A/B/arrows)
    ; Outputs:
    ;   wMenu_CursorID - The new selected option
    ;   wMenu_CursorTable - Updated with the new ID's data
    ;   wMenu_CursorTableValidIDsPointerBank - If this mode is set to 2, then
    ;       Object $0C X and Y - x and y sprite coordinates of the finger selector

    ; Based on the pressed arrow key, will set
    ; hl = wMenu_CursorRow.RightID, .LeftID, .UpID or .DownID (in this order of preference)
    ; If all the arrow keys are unpressed (which should never happen), it will default to wMenu_CursorRow.DownID
    srl a
    srl a ; inefficient - why not just do swap a?
    srl a
    srl a ; a = 0 0 0 0 DOWN UP LEFT RIGHT
    ld hl, wMenu_CursorRow.RightID
    ld c, $03 ; Safety fallback if none of the arrow keys are pressed
    .FindPressedButtonLoop:
        bit 0, a
        jr nz, .GetNewCursorID
        inc hl
        srl a
        dec c
        jr nz, .FindPressedButtonLoop

    .GetNewCursorID:
        ; Update the cursor to the new position:
        ;   Update wMenu_CursorID
        ;   Load the data for the current wMenu_CursorID
        Set8 wMenu_CursorID, [hl]
        push hl
        call Menu_LoadCursorRowData
        pop de

        ; Check to see if the current wMenu_CursorID is considered a permitted option by checking
        ; wMenu_CursorTableValidIDsPointerBank
        SwitchRAMBank [wMenu_CursorTableValidIDsPointerBank]
        FGet16 hl, wMenu_CursorTableValidIDsPointer
        ; Check if wMenu_CursorTableValidIDsPointer points to $0000 i.e. all options are considered valid as there's no table
        ld a, h
        or l
        jr z, .FoundValidNewID ; null table, pass
        ; Check if [[wMenu_CursorTableValidIDsPointer] + wMenu_CursorID] is non-zero, meaning that the current wMenu_CursorID is valid
        Get8 c, wMenu_CursorID
        ld b, $00
        add hl, bc
        ld a, [hl]
        cp $00
        jr nz, .FoundValidNewID ; Non-zero, valid, so pass
        .InvalidCursorID:
            ; The current wMenu_CursorID is invalid
            ; Simulate pressing the same arrow button another time to get a new wMenu_CursorID
            ld h, d
            ld l, e
            jr .GetNewCursorID

    .FoundValidNewID:
    ld a, [wMenu_CursorType]
    cp Menu_CURSOR_ACTOR
    ret nz
    call Menu_CursorActorSetPosition
    ret

    ; $404C
Call_003_404C::
    FGet16 hl, $CCBB                                  ; $404C: $21 $BB $CC
    ld a, $80                                     ; $4052: $3E $80
    ld [hl], a                                    ; $4054: $77
    FGet16 hl, $CCBD                                  ; $4055: $21 $BD $CC
    ld a, $80                                     ; $405B: $3E $80
    ld [hl], a                                    ; $405D: $77
    ret                                           ; $405E: $C9

    ; $405F
Menu_CursorActorSetPosition::
    ; Stores the x and y coordinates of the actor cursor, given a tile x/y
    ; Only used when [wMenu_CursorType] == Menu_CURSOR_ACTOR
    ; Inputs:
    ;   wMenu_CursorRow: contains x and y tile coordinates
    ; Outputs:
    ;   wActor_Cursor.XTile and .YTile are set
    ld a, [wMenu_CursorRow.CursorX]
    inc a
    add a
    add a
    add a
    ld [wActor_Cursor.XTile], a ; (tile+1)*8
    ld a, [wMenu_CursorRow.CursorY]
    inc a
    inc a
    add a
    add a
    add a
    ld [wActor_Cursor.YTile], a ;(tile+2)*8
    ret

    ; $4075
Menu_DrawCursorBackground::
    ld hl, $CCBB                                  ; $4075: $21 $BB $CC
    ld bc, $CCBD                                  ; $4078: $01 $BD $CC
    LdHLIBCI                                        ; $407D: $03
    LdHLIBCI                                        ; $4080: $03
    ld a, $E2                                     ; $4081: $3E $E2
    ld [wVBlank_Func], a                                 ; $4083: $EA $E4 $C6
    ld a, $40                                     ; $4086: $3E $40
    ld [wVBlank_Func+1], a                                 ; $4088: $EA $E5 $C6
    ld a, $03                                     ; $408B: $3E $03
    ld [wVBlank_Bank], a                                 ; $408D: $EA $E6 $C6
    ld a, $82                                     ; $4090: $3E $82
    ld [wMenuChoice_FingerTile], a                                 ; $4092: $EA $A8 $CC
    ld a, [wMenuChoice_ConfirmingChoice]                                 ; $4095: $FA $80 $CD
    cp Menu_CONFIRMING_TRUE                                      ; $4098: $FE $01
    jr z, jr_003_40BD                             ; $409A: $28 $21

    ld a, [wMenu_BlinkFlag]                                 ; $409C: $FA $B9 $CC
    cp Menu_CURSOR_NOBLINK                                        ; $409F: $FE $00
    jr z, jr_003_40BD                             ; $40A1: $28 $1A

    ld a, $81                                     ; $40A3: $3E $81
    ld [wMenuChoice_FingerTile], a                                 ; $40A5: $EA $A8 $CC
    ld hl, wMenuChoice_BlinkFingerTimer                                  ; $40A8: $21 $7F $CD
    ld a, [hl]                                    ; $40AB: $7E
    inc a                                         ; $40AC: $3C
    cp $1F                                        ; $40AD: $FE $1F
    jr nz, jr_003_40B2                            ; $40AF: $20 $01

    xor a                                         ; $40B1: $AF

jr_003_40B2:
    ld [hl], a                                    ; $40B2: $77
    cp $0F                                        ; $40B3: $FE $0F
    jr nc, jr_003_40BD                            ; $40B5: $30 $06

    ld a, $80                                     ; $40B7: $3E $80
    ld [wMenuChoice_FingerTile], a                                 ; $40B9: $EA $A8 $CC
    ret                                           ; $40BC: $C9


jr_003_40BD:
    ld a, [$CD83]                                 ; $40BD: $FA $83 $CD
    sub $0D                                       ; $40C0: $D6 $0D
    ld l, a                                       ; $40C2: $6F
    ld h, $00                                     ; $40C3: $26 $00
    Sla16 hl, 5

    ld a, [wMenu_CursorRow]                                 ; $40CE: $FA $82 $CD
    ld c, a                                       ; $40D1: $4F
    ld b, $00                                     ; $40D2: $06 $00
    add hl, bc                                    ; $40D4: $09
    ld bc, $9C00                                  ; $40D5: $01 $00 $9C
    add hl, bc                                    ; $40D8: $09
    ld a, h                                       ; $40D9: $7C
    ld [$CCBE], a                                 ; $40DA: $EA $BE $CC
    ld a, l                                       ; $40DD: $7D
    ld [$CCBD], a                                 ; $40DE: $EA $BD $CC
    ret                                           ; $40E1: $C9

    ; $40E2
Menu_DrawCursorBackgroundVBlank::
    FGet16 hl, $CCBB                                  ; $40E2: $21 $BB $CC
    ld a, $80                                     ; $40E8: $3E $80
    ld [hl], a                                    ; $40EA: $77
    FGet16 hl, $CCBD                                  ; $40EB: $21 $BD $CC
    ld a, [wMenuChoice_FingerTile]                                 ; $40F1: $FA $A8 $CC
    ld [hl], a                                    ; $40F4: $77
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $40FC: $EA $E5 $C6
    ret                                           ; $40FF: $C9

    ; $4100
Menu_DrawCursorSprite::
    ; This function determines which finger tile to use (diagonal/horizontal)
    ; and blinks the diagonal finger at 1 cycle per $1F (15 frames blank, 16 frames visible)
    ; Inputs:
    ;   wMenu_CursorRow+0 and +1 : Tile x/y position
    ;   wMenuChoice_ConfirmingChoice, wMenu_BlinkFlag: if set to 1 or 0 respectively, the finger will be horizontal and won't blink (double-confirm finger)
    ;   wMenuChoice_BlinkFingerTimer - keeps track of blinking the finger (inc by 1 modulo 1F)

    Set8 wMenuChoice_FingerTile, Textbox_TILEID_CURSORSELECT ; Don't blink the confirmation cursor

    ld a, [wMenuChoice_ConfirmingChoice]
    cp Menu_CONFIRMING_TRUE
    jr z, AddFingerSpriteToOAMBuffer
    ld a, [wMenu_BlinkFlag]
    cp Menu_CURSOR_NOBLINK
    jr z, AddFingerSpriteToOAMBuffer

    Set8 wMenuChoice_FingerTile, Textbox_TILEID_CURSORHOVER
    ld hl, wMenuChoice_BlinkFingerTimer
    ld a, [hl]
    inc a
    cp $1F
    jr nz, .SkipModulo1F
    xor a
.SkipModulo1F:
    ld [hl], a
    cp $0F
    ret c     ;00-0F: ret and don't display finger. 10-1F: display finger
    ;jp AddFingerSpriteToOAMBuffer

    ; $4126
AddFingerSpriteToOAMBuffer::
    ; Takes the x and y tile coordinates of the current selection from wMenu_CursorRow
    ; and uses that information to add a sprite displaying the finger for MenuChoice
    ; Inputs:
    ;   wMenu_CursorRow+0 - tile x position
    ;   wMenu_CursorRow+1 - tile y position
    ;   wMenuChoice_FingerTile - tile number of finger
    ; Outputs:
    ;   Added to sprite OAM buffer
    ld a, [wMenu_CursorRow.CursorX]
    inc a
    add a
    add a
    add a
    ld b, a      ;x position from tile coordinate to sprite coordinate
    ld a, [wMenu_CursorRow.CursorY]
    inc a
    inc a
    add a
    add a
    add a
    ld c, a      ;y position from tile coordinate to sprite coordinate
    ld a, [wMenuChoice_FingerTile]
    ld d, a
    ld e, $09   ;VRAM 1, Palette 1
    call Frame_DrawChr
    ret

    ; $4141
Menu_Do::
    ld a, [wMenu_CursorType]                                 ; $4141: $FA $BA $CC
    cp Menu_CURSOR_SPRITE                                        ; $4144: $FE $00
    jr z, jr_003_4156                             ; $4146: $28 $0E

    cp Menu_CURSOR_ACTOR                                        ; $4148: $FE $02
    jr z, jr_003_4159                             ; $414A: $28 $0D

    call Menu_DrawCursorBackground                            ; $414C: $CD $75 $40
    jr jr_003_4159                                ; $414F: $18 $08

    call Menu_CursorActorSetPosition                            ; $4151: $CD $5F $40
    jr jr_003_4159                                ; $4154: $18 $03

jr_003_4156:
    call Menu_DrawCursorSprite                            ; $4156: $CD $00 $41

jr_003_4159:
    call Menu_ButtonCheck                            ; $4159: $CD $E3 $41
    ret                                           ; $415C: $C9

    ; $415D
Menu_GoClobber::
    call Frame_Ready                                    ; $415D: $CD $25 $06
    ld a, [wMenu_CursorType]                                 ; $4160: $FA $BA $CC
    cp Menu_CURSOR_SPRITE                                        ; $4163: $FE $00
    jr z, jr_003_4175                             ; $4165: $28 $0E

    cp Menu_CURSOR_ACTOR                                        ; $4167: $FE $02
    jr z, jr_003_4178                             ; $4169: $28 $0D

    call Menu_DrawCursorBackground                            ; $416B: $CD $75 $40
    jr jr_003_4178                                ; $416E: $18 $08

    call Menu_CursorActorSetPosition                            ; $4170: $CD $5F $40
    jr jr_003_4178                                ; $4173: $18 $03

jr_003_4175:
    call Menu_DrawCursorSprite                            ; $4175: $CD $00 $41

jr_003_4178:
    call Menu_ButtonCheck                            ; $4178: $CD $E3 $41
    ret                                           ; $417B: $C9

    ; $417C
Menu_Init::
    ld bc, $0000                                  ; $417C: $01 $00 $00
    FSet16 $CCBB, bc                                    ; $4184: $70
    FSet16 $CCBD, bc                                    ; $418A: $70
    ld a, $81                                     ; $418B: $3E $81
    ld [wMenuChoice_FingerTile], a                                 ; $418D: $EA $A8 $CC
    ld a, [wMenu_CursorTableID]                                 ; $4190: $FA $B4 $CC
    ld c, a                                       ; $4193: $4F
    ld b, $00                                     ; $4194: $06 $00
    ld hl, Menu_CursorTables                                  ; $4196: $21 $24 $45
    add hl, bc                                    ; $4199: $09
    add hl, bc                                    ; $419A: $09
    DerefHL
    ld a, h                                       ; $419E: $7C
    ld [wMenu_CursorTable+1], a                                 ; $419F: $EA $AF $CC
    ld a, l                                       ; $41A2: $7D
    ld [wMenu_CursorTable], a                                 ; $41A3: $EA $AE $CC
    xor a                                         ; $41A6: $AF
    ld [wMenuChoice_BlinkFingerTimer], a                                 ; $41A7: $EA $7F $CD
    ld [wMenuChoice_ConfirmingChoice], a                                 ; $41AA: $EA $80 $CD
    call Menu_LoadCursorRowData                            ; $41AD: $CD $74 $42

jr_003_41B0:
    SwitchRAMBank [wMenu_CursorTableValidIDsPointerBank]   
    FGet16 hl, wMenu_CursorTableValidIDsPointer                                  ; $41B8: $21 $B6 $CC
    ld a, h                                       ; $41BE: $7C
    or l                                          ; $41BF: $B5
    jr z, jr_003_41D9                             ; $41C0: $28 $17

    ld a, [wMenu_CursorID]                                 ; $41C2: $FA $81 $CD
    ld c, a                                       ; $41C5: $4F
    ld b, $00                                     ; $41C6: $06 $00
    add hl, bc                                    ; $41C8: $09
    ld a, [hl]                                    ; $41C9: $7E
    cp $00                                        ; $41CA: $FE $00
    jr nz, jr_003_41D9                            ; $41CC: $20 $0B

    ld a, [$CD84]                                 ; $41CE: $FA $84 $CD
    ld [wMenu_CursorID], a                                 ; $41D1: $EA $81 $CD
    call Menu_LoadCursorRowData                            ; $41D4: $CD $74 $42
    jr jr_003_41B0                                ; $41D7: $18 $D7

jr_003_41D9:
    ld a, [wMenu_CursorType]                                 ; $41D9: $FA $BA $CC
    cp Menu_CURSOR_ACTOR                                        ; $41DC: $FE $02
    ret nz                                        ; $41DE: $C0

    call Menu_CursorActorSetPosition                            ; $41DF: $CD $5F $40
    ret                                           ; $41E2: $C9

    ; $41E3
Menu_ButtonCheck::
    ; Run this function once per frame,
    ;
    ; When in a menu choice, if a button is pressed,
    ; checks to see if that buttons is pressable, and if yes,
    ; runs the appropriate function to handle the button
    ; Inputs:
    ;   wCntDown - which buttons are newly pressed by the user
    ;   wMenu_KeyMask - which buttons presses are allowed in this menu
    ;   Select/Start:
    ;       [wMenu_SelectFunc] - function to jump to if Select is pressed
    ;       [wMenu_StartFunc] - function to jump to if Start is pressed
    ;   A/B
    ;       wMenu_CursorRow - contains the jumptable ids if button A or B is pressed
    ;   Arrows
    ;       wMenuChoice_ConfirmingChoice - If the user is confirming a choice (pressed A once but not twice), arrows and Start button are disabled
    ;       wMenu_CursorTableValidIDsPointer - If using arrows, this points to a table indicating whether each option is enabled or disabled. Disabled options will be skipped over
    ;       wMenu_CursorTable - Table of all the DataBuffers corresponding to each ID. This is used to load the new ID
    ; Outputs:
    ;   If Select/Start is pressed, call the indicated function
    ;   If A/B is pressed, call the function from the ABJumpTable
    ;   If an arrow is pressed,
    ;       wMenu_CursorID - The new selected option
    ;       wMenu_CursorTableValidIDsPointerBank - If this mode is set to 2, then
    ;           wObject_EntryList object $0C - FingerSpriteX/Y - x and y sprite coordinates of the finger selector

    ; Get wCntDown & wMenu_KeyMask, which will contain the buttons that will be processed
    Get8 b, wCntDown
    ld a, [wMenu_KeyMask]
    and b
    ld b, a

    .CheckSelect:
    bit button_BIT_SELECT, a
    jr z, .CheckA
        .PressedSelect:
            ; call [wMenu_SelectFunc]
            Get16 hl, wMenu_SelectFunc
            jp hl
    .CheckA:
    bit button_BIT_A, a
    jr z, .CheckB
        .PressedA:
            ; Call the specified handler function located at
            ; [MenuFunc_Table + 2*HandlerID_A]
            ld a, [wMenu_CursorRow.HandlerID_A]
            add a
            ld e, a
            ld d, $00
            ld hl, MenuFunc_Table
            add hl, de
            ECallHL
            jr .EndOfFunction
    .CheckB:
    bit button_BIT_B, a
    jr z, .CheckArrows
        .PressedB:
            ; Call the specified handler function located at
            ; [MenuFunc_Table + 2*HandlerID_B]
            ld a, [wMenu_CursorRow.HandlerID_B]
            add a
            ld e, a
            ld d, $00
            ld hl, MenuFunc_Table
            add hl, de
            ECallHL
            jr .EndOfFunction

    .CheckArrows:
    ld b, a ;unneeded line? The key mask is already backed up in b
    ld a, [wMenuChoice_ConfirmingChoice]
    cp Menu_CONFIRMING_TRUE
    ret z  ;If the item is selected, prevent moving the finger until you deselect

    ; If any of the arrows are pressed, handle the arrow key in Menu_HandleArrowPress
    ; This part of the code is very inefficient
    ; Why not do a single check with:
    ; and (button_BIT_RIGHT | button_BIT_LEFT | button_BIT_UP | button_BIT_DOWN)
    ld a, b
    .CheckRight:
        bit button_BIT_RIGHT, a
        jr z, .CheckLeft
        .PressedRight:
            call Menu_HandleArrowPress
            jr .EndOfFunction
    .CheckLeft:
        bit button_BIT_LEFT, a
        jr z, .CheckUp
        .PressedLeft:
            call Menu_HandleArrowPress
            jr .EndOfFunction
    .CheckUp:
        bit button_BIT_UP, a
        jr z, .CheckDown
        .PressedUp:
            call Menu_HandleArrowPress
            jr .EndOfFunction
    .CheckDown:
        bit button_BIT_DOWN, a
        jr z, .CheckStart
        .PressedDown
            call Menu_HandleArrowPress
            jr .EndOfFunction

    .CheckStart:
        bit button_BIT_START, a
        ret z
        .PressedStart:
            ; call [wMenu_StartFunc]
            ld hl, wMenu_StartFunc
            ECallHL
            ;jr .EndOfFunction

    .EndOfFunction: ; bug - inefficiency - why not ret instead of jumping here?
    ret

Call_003_4260::
Jump_003_4260:
    Text_Update
    call System_UpdateGameNoScript                                    ; $4269: $CD $5F $09
    ld hl, wMenu_TextLengthCounter                                  ; $426C: $21 $B5 $CC
    dec [hl]                                      ; $426F: $35
    jp nz, Jump_003_4260                          ; $4270: $C2 $60 $42

    ret                                           ; $4273: $C9

    ; $4274
Menu_LoadCursorRowData::
    ; Given a current position in a menu, load information about
    ; 1) Where the cursor finger should be located on the screen, and
    ; 2) What happens when the user presses A/B/Arrow keys
    ; Store this information in the wMenu_CursorRow
    ;
    ; Inputs:
    ;   wMenu_CursorID - The ID corresponding to the current menu choice
    ;   wMenu_CursorTable - A pointer to a table containing information for each valid ID for this specific menu
    ; Outputs:
    ;   wMenu_CursorRow - 8 bytes of output containing:
        ; 0 = Finger Sprite X position in tile coordinates
        ; 1 = Finger Sprite Y position in tile coordinates
        ; 2 = Right button press new wMenu_CursorID
        ; 3 = Left button press new wMenu_CursorID
        ; 4 = Up button press new wMenu_CursorID
        ; 5 = Down button press new wMenu_CursorID
        ; 6 = A button press jumptable id handler function
        ; 7 = B button press jumptable id handler function

    ; hl = wMenu_CursorRow + 8*wMenu_CursorID
    Get8 l, wMenu_CursorID
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    Get16 bc, wMenu_CursorTable
    add hl, bc

     ; Copy 8 bytes to wMenu_CursorRow
    ld bc, wMenu_CursorRow
    REPT 8
        LdBCIHLI
    ENDR
    ret


jr_003_42A2:
    ld [hl], a                                    ; $42A2: $77
    add hl, de                                    ; $42A3: $19
    inc a                                         ; $42A4: $3C
    dec c                                         ; $42A5: $0D
    jr nz, jr_003_42A2                            ; $42A6: $20 $FA

    ret                                           ; $42A8: $C9

    ; $42A9
MenuFunc_Table::
    ; See also the lookup vars in menu_include.asm
    dw MenuFunc_MainMenu
    dw MenuFunc_DoubleClickA
    dw MenuFunc_DoubleClickB
    dw MenuFunc_Flash
    dw MenuFunc_SingleClickA
    dw MenuFunc_SingleClickB
    dw MenuFunc_Null

    ; $42B7
MenuFunc_SingleClickA::
    ; Select the current ID
    Mov8 wMenu_ReturnValue, wMenu_CursorID
    ret

    ; $42BE
MenuFunc_SingleClickB::
    ; Select Menu_CANCEL
    Set8 wMenu_ReturnValue, Menu_CANCEL
    ret

    ; $42C4
MenuFunc_DoubleClickA::
    ; If the item is not selected, select the item (blinking finger to solid finger)
    ; If the item is selected, select the current ID
    ld hl, wMenuChoice_ConfirmingChoice
    ld a, [hl]
    and a
    jr z, .NotYetSelected
    .Select:
        ld a, [wMenu_CursorID]
        ld [wMenu_ReturnValue], a
        ret
    .NotYetSelected:
        inc [hl]
        ret

    ; $42D4
MenuFunc_DoubleClickB::
    ; If the item is selected, cancel the selection
    ; If no item is selected, Menu_CANCEL
    ld hl, wMenuChoice_ConfirmingChoice
    ld a, [hl]
    and a
    jr z, .Cancel
    .Deselect:
        dec [hl]
        ret
    .Cancel:
        Set8 wMenu_ReturnValue, Menu_CANCEL
        ret

    ; $42E3
MenuFunc_Flash::
    ; Flash the screen by disabling the screen for 68 milliseconds
    call ScreenHide
    ld bc, $4FFF
    .WaitLoop:
        Dec16Loop bc, .WaitLoop ;7 (28) cycles per loop -> 143353 cycles, or 68 milliseconds delay (about 4 frames)
    call ScreenShow
    ret

    ; $42F2
MenuFunc_Null::
    ; Button does nothing
    ret

    ; $42F3
MenuFunc_StartButtonMainMenuHandler::
    ; This function is run via [wMenu_StartFunc]
    ; Exit the main menu back to the main game
    pop de ;fix the stack
    jp MenuFunc_ExitMainMenu

    ; $42F7
MenuFunc_SelectButtonMainMenuHandler::
    ; This is run via [wMenu_SelectFunc]
    ; If the player is hovering over a ring's relic,
    ; Changes that relic to the last selected relic, or empty
    ; Otherwise, returns
    ; Inputs:
    ;   wMenu_CursorID - current menu selection
    ;   wMenu_MainMenu_RemovedRelicID - whether Select was already pressed on a previous relic
    ;   wMenu_MainMenu_CurRing + xCreature_RAM - Used to access the current ring's data
    ; Outputs:
    ;   wMenu_MainMenu_RemovedRelicID - If null, changes to the relic ID of the removed relic
    ;                           If contains a relic, changes to null
    ;   xInventory_Relics - updated to reflect the relics in Tony's inventory
    ;   wMenu_MainMenu_NeedsScreenUpdate - set to Enum_Menu_MainMenu_SCREENUPDATE_YES if a relic slot was changed

    ; First, check if the cursor is over one of the relic slots
    ; ret if it is not
    ld a, [wMenu_CursorID]
    cp Enum_Menu_CursorTable_MainMenu_Rings_R0
    jr z, .HoveringOverRelic
    cp Enum_Menu_CursorTable_MainMenu_Rings_R1
    ret nz

    .HoveringOverRelic:
    ; Determine if slot 0 or slot 1 is being targetted
    sub Enum_Menu_CursorTable_MainMenu_Rings_R0
    ld [wMenu_MainMenu_CurRingRelicSlot], a

    ; Check if a previous relic was removed. If so, we will swap it into the targetted relic slot
    ld a, [wMenu_MainMenu_RemovedRelicID]
    and a
    jr z, .NoSavedRelic
    .SavedRelic:
        ; Get the relic's index id and decrease the quantity by 1
        ld c, a
        ld b, $00
        ld hl, xInventory_Relics
        add hl, bc
        Battery_On
        Battery_SetBank "XRAM Gamestate"
        dec [hl]

        ; Get the index of the current ring
        Get8 c, wMenu_MainMenu_CurRing
        ld b, $00
        ld hl, xInventory_Rings
        add hl, bc
        ; Get the address of the creature's struct, and set hl to point to .Relic0 or .Relic1
        Get8 c, hl
        ld b, Creature_SIZE
        call Math_Mult
        ld bc, xCreature_00_Hero.Relic0
        add hl, bc
        Get8 c, wMenu_MainMenu_CurRingRelicSlot
        ld b, $00
        add hl, bc ; .Relic0 or .Relic1

        ; Swap the current relic with the one that was previously removed
        Battery_SetBank "XRAM Creatures"
        ld c, [hl]
        Mov8 hl, wMenu_MainMenu_RemovedRelicID

        ; Check whether the current relic is empty (empty i.e. relic id $00)
        Battery_SetBank "XRAM Gamestate"
        xor a
        cp c
        jr z, .SwappedOutRelicIsNull   ;The removed "relic" was empty
        .SwappedOutRelicIsDefined:
            ld b, $00
            ld hl, xInventory_Relics
            add hl, bc
            inc [hl]   ;Give back the removed relic
            .SwappedOutRelicIsNull:
            Battery_Off
            ;Set saved relic to null and request a screen refresh
            xor a
            ld [wMenu_MainMenu_RemovedRelicID], a
            Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES
            ret

    .NoSavedRelic:
        ;There's no stored relic, so switch the target ring's relic slot to empty
        Battery_On
        Battery_SetBank "XRAM Gamestate"

        ; Get the index of the current ring
        Get8 c, wMenu_MainMenu_CurRing
        ld b, $00
        ld hl, xInventory_Rings
        add hl, bc
        ; Get the address of the creature's struct, and set hl to point to .Relic0 or .Relic1
        Get8 c, hl
        ld b, Creature_SIZE
        call Math_Mult
        ld bc, xCreature_00_Hero.Relic0
        add hl, bc
        Get8 c, wMenu_MainMenu_CurRingRelicSlot
        ld b, $00
        add hl, bc

        ; Check whether the current relic is empty (empty i.e. relic id $00)
        Battery_SetBank "XRAM Creatures"
        ld a, [hl]
        and a
        jr z, .EndOfFunction    ;Selected ring's relic slot is already null, so end here

        .SwappedOutRelicNotEmpty:
            ; Set the new relic id to $00
            ; Save the old relic id to be able to swap it back in
            ld [hl], Relic_NULL
            ld [wMenu_MainMenu_RemovedRelicID], a

            ; Give back the relic that was removed to the inventory
            ld c, a
            ld b, $00
            ld hl, xInventory_Relics
            add hl, bc
            Battery_SetBank "XRAM Gamestate"
            inc [hl]

            ; Request screen update
            Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES

        .EndOfFunction:
        Battery_Off
        ret

    ; $43BF
MenuFunc_ExitMainMenu::
    ; Quits the main menu
    ; Copies the buffered tilesets data
    ; Pops the stack back to the position of the masterloop
    ; Resets the chat box to blank for dialogue
    call Frame_ClearAll
    call ScreenHide

    Do_CallForeign Menu_MainMenu_RestoreVRAMObjectsChars
    Cardscene_RestoreBackgroundCharsBC

    ; Re-initialize the textbox as we give control back to the game world and the textbox and main menu share place on the tilemap
    Do_CallForeign TextboxXX_Init

    call ScreenShow

    ; Fix the stack
    pop de
    pop de
    pop de

    Sound_Request_SetVolume $0F

    ret ;Back to Game_Loop

    ; $4415
MenuFunc_MainMenu::
    ; This special menu choice operated when pressing A/B for all Main Menu IDs
    ; Basically, it runs a custom function based on a lookup table
    ; Inputs:
        ; b is the mask of pressed buttons + valid buttons together
        ; bit 0,b checks button A
        ; It looks up the table offset: wMenu_CursorID*4 + (2 if B_pressed else 0)

        ; First argument:
        ; If the arg is a Menu_MainMenu_ID (pvalues $00 to $0B), then it will set wMenu_MainMenu_CurrentMenu to the value
        ; If the arg is above the highest index value (the cutoff value is > $2B), then do something custom: <- see the bug explained at the definition of MenuFunc_MainMenu_ABCommand_PAGEUP
        ; DEF MenuFunc_MainMenu_ABCommand_PAGEUP EQU $2C
        ; DEF MenuFunc_MainMenu_ABCommand_PAGEDOWN EQU $2D
        ; DEF MenuFunc_MainMenu_ABCommand_GLYPHSETORCLEAR EQU $37
        ; DEF MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE EQU $42
        ; DEF MenuFunc_MainMenu_ABCommand_MAP EQU $4B
        ; DEF MenuFunc_MainMenu_ABCommand_CHOOSEOPTION EQU $4D
        ; DEF MenuFunc_MainMenu_ABCommand_CANCELOPTION EQU $58
        ; DEF MenuFunc_MainMenu_ABCommand_EXIT EQU $63
        ;
        ; Second argument is the new wMenu_CursorID - only used if the arg is a Menu_MainMenu_ID

    ; Get offset: Menu_CursorTable_MainMenu + wMenu_CursorID*4 + (2 if B_pressed else 0)
    ld a, [wMenu_CursorID]
    add a
    add a      ;*4
    bit 0, b
    jr nz, .APressed
    .BPressed:
        add $02   ;BPressed
    .APressed:
    ld hl, Menu_CursorTable_MainMenuABHandler
    ld c, a
    ld b, $00
    add hl, bc

    ; Get the first argument
    ld a, [hl+]

    ; Check if the argument is a wMenu_CursorID or an ABCommand
    push hl
    push af
    cp Enum_Menu_CursorTable_MainMenu_Ability + 1 ; Bug - this should be "cp Menu_MainMenu_ID_INFUSED + 1"
                                                        ; The full explanation is beside the definition of MenuFunc_MainMenu_ABCommand_PAGEUP
    jp c, .CurrentMenuID ;First argument is an index within Menu_CursorTable_MainMenu
    .ABCommand:
        ; a > len(Menu_CursorTable_MainMenu)
            .CheckEXIT:
            cp MenuFunc_MainMenu_ABCommand_EXIT
            jr nz, .CheckCANCELOPTION
                .EXIT:
                    ; Exit the main menu
                    add sp, $06
                    jp MenuFunc_ExitMainMenu

            .CheckCANCELOPTION:
            cp MenuFunc_MainMenu_ABCommand_CANCELOPTION
            jr nz, .CheckCHOOSEOPTION
                .CANCELOPTION:
                    ; B-press in Spell or Entry list, or Save
                    ; If A was pressed once and the user cancels the selection, update the cursor
                    ; Or else, "go back" (defined differently based on where you are)
                    ld hl, wMenuChoice_ConfirmingChoice
                    ld a, [hl]
                    and a
                    jr z, .GoBackCommand
                    .CancelConfirmation:
                        ; wMenuChoice_ConfirmingChoice: Menu_CONFIRMING_TRUE -> Menu_CONFIRMING_FALSE
                        dec [hl]
                        jp .ABCommandDone
                    .GoBackCommand:
                        ; Check in which menu option we are
                        ld a, [wMenu_MainMenu_CurrentMenu]
                        cp Menu_MainMenu_ID_RELIC
                        jr z, .GoBackRelic
                        cp Menu_MainMenu_ID_SPELL
                        jr z, .GoBackSpell
                        cp Menu_MainMenu_ID_INFUSED
                        jr z, .GoBackInfused
                        .GoBackFallback:
                            ; If you aren't in any of the lists, then fallback to reloading the current menu (wMenu_MainMenu_CurrentMenu)
                            ; This only happens when you press B when hovering over the Save option
                            pop bc
                            push af
                            jp .CurrentMenuID
                        .GoBackRelic:
                            ; Reload the Rings top menu, over the Ability button
                            Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES
                            Set8 wMenu_MainMenu_CurrentMenu, Menu_MainMenu_ID_RINGS
                            Set8 wMenu_CursorID, Enum_Menu_CursorTable_MainMenu_Rings_Ab
                            jr .ABCommandDone
                        .GoBackSpell:
                            ; Move the cursor over the buttom menu Spell
                            Set8 wMenu_CursorID, Enum_Menu_CursorTable_MainMenu_Spell
                            jr .ABCommandDone
                        .GoBackInfused:
                            ; Move the cursor over the bottom menu InfusedList
                            Set8 wMenu_CursorID, Enum_Menu_CursorTable_MainMenu_InfuList
                            jr .ABCommandDone
            .CheckCHOOSEOPTION:
            cp MenuFunc_MainMenu_ABCommand_CHOOSEOPTION
            jr nz, .CheckPAGEDOWN
                .CHOOSEOPTION:
                ; A-press in Spell or Entry list, or Save
                ld a, [wMenuChoice_ConfirmingChoice]
                cp Menu_CONFIRMING_TRUE
                jr nz, .RequestConfirmation
                .SelectCommand:
                    ; Select the current item

                    ; disable the confirmation request
                    xor a
                    ld [wMenuChoice_ConfirmingChoice], a

                    ; Check if where you are
                    ld a, [wMenu_MainMenu_CurrentMenu] ;Do nothing if infused
                    cp Menu_MainMenu_ID_INFUSED
                    jr nz, .SelectSpellItemRelicSave
                    .SelectInfused:
                        ; You could have the infused list and actually be clicking on the Save button. We need to check for this special case
                        ld a, [wMenu_CursorID]
                        cp Enum_Menu_CursorTable_MainMenu_Save
                        .SelectInfusedAndNotSave:
                            ; Nothing happens when you select an infused animite
                            jr nz, .ABCommandDone
                        .SelectSave:
                            ; jr .SelectSpellItemRelicSave
                    .SelectSpellItemRelicSave:
                        ; Use the selection
                        ; For items and spells, quit the main menu and save
                        ; For save, quit the main menu and save
                        ; For relics TODO

                        ; Process the selected entry
                        Do_CallForeign Menu_MainMenu_UseSelected
                        ld a, [wMenu_MainMenu_CurrentMenu]
                        cp Menu_MainMenu_ID_RELIC
                        .NotRelic:
                            ; If Save, Spell or Item, quit the main menu and run the corresponding script (as set up in Menu_MainMenu_UseSelected)
                            jr nz, .QuitMainMenu
                        .Relic:
                            ; Menu_MainMenu_UseSelected only determines the relic id, now we need to actually equip it
                            Do_CallForeign Menu_MainMenu_EquipRelic
                            jr .ABCommandDone
                        .QuitMainMenu:
                            add sp, $06
                            jp MenuFunc_ExitMainMenu
                .RequestConfirmation:
                    ; Need to double click A to confirm
                    Set8 wMenuChoice_ConfirmingChoice, Menu_CONFIRMING_TRUE
                    jr .ABCommandDone

            .CheckPAGEDOWN:
            cp MenuFunc_MainMenu_ABCommand_PAGEDOWN
            jr nz, .CheckPAGEUP
                .PAGEDOWN:
                    ; This parameter is handled by Menu_MainMenu_DrawCurrentTop, so skip it here
                    Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES
                    jr .ABCommandDone

            .CheckPAGEUP:
            cp MenuFunc_MainMenu_ABCommand_PAGEUP
            jr nz, .CurrentMenuID ;Fallback to default behaviour
                .PAGEUP:
                    ; This parameter is handled by Menu_MainMenu_DrawCurrentTop, so skip it here
                    Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES
                    jr .ABCommandDone

        .ABCommandDone:
            ; Fix the stack, and prepare to load the new cursor id's row data
            pop bc
            pop bc
            ld a, [wMenu_CursorID]
            jr .Done

    .CurrentMenuID:
        ; Updates the wMenu_MainMenu_CurrentMenu
        ; a = the new wMenu_MainMenu_CurrentMenu

        ; Check if the new wMenu_MainMenu_CurrentMenu and the old wMenu_MainMenu_CurrentMenu are the same or not
        pop af
        pop hl
        ld b, a
        ld a, [wMenu_MainMenu_CurrentMenu] ;The currently displayed Top
        cp b
        jr z, .SameCurrentMenu  ;If you are in the bottom menu and choose the option that is already displayed, simply jump to the top without refreshing the screen
        .DifferentCurrentMenu:
            ; Abort opening the new menu if
            ; (1) You are trying to leave Rings to (2) enter Relics and (3) You have no relics
            ;    You can't open relics tab unless you have at least 1 relic
            cp Menu_MainMenu_ID_RINGS  ;3 checks: If you try to go from Rings to Relics but there are no relics in Tony's inventory
            jr nz, .OpenNewMenuOption  ;Regular function if not leaving rings
            ld a, b
            cp $06
            jr nz, .OpenNewMenuOption ;Regular function if not entering relics
            ld a, [wMenu_MainMenu_RelicMenuIsDisabled]
            and a
            jr z, .OpenNewMenuOption ;Regular function if relics in inventory
            .CannotOpenRelics:
                ; Make an error sound
                Sound_Request_StartSFX0 SFXID_Error
                jr .Done
            .OpenNewMenuOption:
                ; In the case that you are opening the relics menu, store whether you were choosing relic slot 0 or 1
                ld a, [wMenu_CursorID]
                sub Enum_Menu_CursorTable_MainMenu_Rings_R0
                ld [wMenu_MainMenu_CurRingRelicSlot], a ;Store 0 or 1 if it's a relic slot, otherwise it stores a garbage number which is okay because the other menus don't use this var

                ; Set the new menu and request a screen update
                Set8 wMenu_MainMenu_NeedsScreenUpdate, Enum_Menu_MainMenu_SCREENUPDATE_YES
                ld a, b
                ld [wMenu_MainMenu_CurrentMenu], a
        .SameCurrentMenu:
        ; The second argument is the new wMenu_CursorID
        Set8 wMenu_CursorID, [hl]
    .Done:
    ; Load the new cursor id's row data
    call Menu_LoadCursorRowData
    ret

    ; $4511
Call_004_4511::
    ; TODO
    Menu_TextUpdateLoop
    ret                                           ; $4523: $C9

    ; $4524
Menu_CursorTables::
    .Menu_CursorTable_Battle_CreatureCommand:
        dw Menu_CursorTable_Battle_CreatureCommand
    .Menu_CursorTable_Battle_ChooseTarget:
        dw Menu_CursorTable_Battle_ChooseTarget
    .Menu_CursorTable_Unused:
        dw Menu_CursorTable_Unused
    .Menu_CursorTable_Textbox:
        dw Menu_CursorTable_Textbox
    .Menu_CursorTable_Battle_SpellItem:
        dw Menu_CursorTable_Battle_SpellItem
    .Menu_CursorTable_Forge:
        dw Menu_CursorTable_Forge
    .Menu_CursorTable_Shop:
        dw Menu_CursorTable_Shop
    .Menu_CursorTable_Equip:
        dw Menu_CursorTable_Equip
    .Menu_CursorTable_Generic:
        ; Choose Music; Historian; Power
        dw Menu_CursorTable_Generic
    .Menu_CursorTable_Battle_Summon:
        dw Menu_CursorTable_Battle_Summon
    .Menu_CursorTable_Battle_HeroCommand:
        dw Menu_CursorTable_Battle_HeroCommand
    
    ; $453A
Menu_CursorTable_Battle_CreatureCommand::
    ;XXXX0Fight > ___:___"
    ;XXXX1________  ___  "
    ;XXXX2________  ___  "
    ;XXXX3________  ___  "
    ;XXXX4________  ___  "
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Battle_CreatureCommand
        Menu_CursorTable_Row FightDef,   $04, $0D,   SwapFiDe, SwapFiDe, Ability3, Ability0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Ability0,   $04, $0E,   Ability0, Ability0, FightDef, Ability1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Ability1,   $04, $0F,   Ability1, Ability1, Ability0, Ability2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Ability2,   $04, $10,   Ability2, Ability2, Ability1, Ability3,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Ability3,   $04, $11,   Ability3, Ability3, Ability2, FightDef,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row SwapFiDe,   $04, $0D,   FightDef, FightDef, FightDef, FightDef,   MenuFunc_Null,         MenuFunc_Null          ;05 - Upon swapping to this ID, the ID is immediately set back to FightDef
    Menu_CursorTable_End
    ; $456A
Menu_CursorTable_Battle_HeroCommand::
    ; Identical to Menu_CursorTable_Battle_CreatureCommand except the top two options are in a different order
    ; and there is no fight/def swapping
    ;    1Summon  ___:___"
    ;    0Focus     ___  "
    ;    2Spell     ___  "
    ;    3Item      ___  "
    ;    4Run       ___  "
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Battle_HeroCommand
        Menu_CursorTable_Row Focus,      $04, $0E,   Focus,    Focus,    Summon,   Spell,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Summon,     $04, $0D,   Summon,   Summon,   Run,      Focus,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Spell,      $04, $0F,   Spell,    Spell,    Focus,    Item,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Item,       $04, $10,   Item,     Item,     Spell,    Run,        MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Run,        $04, $11,   Run,      Run,      Item,     Summon,     MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
    Menu_CursorTable_End

    ; $4592
Menu_CursorTable_Battle_ChooseTarget::
    ;
    ;
    ; 0    1     2    3
    ;         E
    ;
    ;
    ;
    ;
    ;      1     2
    ; 0               3
    ;         T
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Battle_ChooseTarget
        Menu_CursorTable_Row TonyMagi,   $09, $0A,   TonySum2, TonySum1, EnemMagi, EnemMagi,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row TonySum0,   $01, $09,   TonySum1, EnemSum3, EnemSum0, EnemSum0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row TonySum1,   $06, $08,   TonyMagi, TonySum0, EnemSum1, EnemSum1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row TonySum2,   $0C, $08,   TonySum3, TonyMagi, EnemSum2, EnemSum2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row TonySum3,   $11, $09,   EnemSum0, TonySum2, EnemSum3, EnemSum3,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row EnemSum0,   $01, $02,   EnemSum1, TonySum3, TonySum0, TonySum0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row EnemSum1,   $06, $02,   EnemMagi, EnemSum0, TonySum1, TonySum1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
        Menu_CursorTable_Row EnemSum2,   $0C, $02,   EnemSum3, EnemMagi, TonySum2, TonySum2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;07
        Menu_CursorTable_Row EnemSum3,   $11, $02,   TonySum0, EnemSum2, TonySum3, TonySum3,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;08
        Menu_CursorTable_Row EnemMagi,   $09, $03,   EnemSum2, EnemSum1, TonyMagi, TonyMagi,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;09
    Menu_CursorTable_End

    ; $45E2
Menu_CursorTable_Unused::
    ; This menu is very similar to Menu_CursorTable_Battle_SpellItem, except the cursor and left arrow is shifted a bit to the right to the center
    ; In addition, instead of requiring a double-confirmation like Menu_CursorTable_Battle_SpellItem, a single click is enough to validate the choice
    ; Lastly, the RLUD arrows work slightly differently
    ;   0SampleText___   "
    ;   1_____________   "
    ;   2_____________   "
    ;  ^3_____________v  "
    ;  P4_____________N  "
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Unused
        Menu_CursorTable_Row Option0,    $03, $0D,   Option1,  Previous, Option4,  Option1,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Option1,    $03, $0E,   Option2,  Option0,  Option0,  Option2,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Option2,    $03, $0F,   Option3,  Option1,  Option1,  Option3,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Option3,    $03, $10,   Option4,  Option2,  Option2,  Option4,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Option4,    $03, $11,   Next,     Option3,  Option3,  Option0,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row Previous,   $02, $11,   Option0,  Next,     Previous, Previous,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row Next,       $13, $11,   Previous, Option4,  Next,     Next,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
    Menu_CursorTable_End

    ; $461A
Menu_CursorTable_Battle_Summon::
    ;  0Leaf Hyren  ___  "
    ;  1Leaf Hyren  ___  "
    ;  2Leaf Hyren  ___  "
    ;^ 3Leaf Hyren  ___  "
    ;S 4Leaf Hyren  ___  "
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Battle_Summon
        Menu_CursorTable_Row Creatur0,   $02, $0D,   Creatur1, SwapRing, SwapRing, Creatur1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Creatur1,   $02, $0E,   Creatur2, Creatur0, Creatur0, Creatur2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Creatur2,   $02, $0F,   Creatur3, Creatur1, Creatur1, Creatur3,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Creatur3,   $02, $10,   Creatur4, Creatur2, Creatur2, Creatur4,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Creatur4,   $02, $11,   SwapRing, Creatur3, Creatur3, SwapRing,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row SwapRing,   $00, $11,   Creatur0, Creatur4, Creatur4, Creatur0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        ; The 7th option does not exist but represents Next so that it mirrors Menu_CursorTable_Battle_SpellItem and Menu_CursorTable_Unused
    Menu_CursorTable_End

    ; $464A
Menu_CursorTable_Battle_SpellItem::
    ; 0*Strength Gem ___ "
    ; 1*Thunderquake ___ "
    ; 2_____________ ___ "
    ;^3_____________ ___v"
    ;P4_____________ ___N"
    ;
    ; Note that the options require doubleclick except for the Previous/Next arrows
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Battle_SpellItem
        Menu_CursorTable_Row Option0,    $01, $0D,   Next,     Previous, Option4,  Option1,    MenuFunc_DoubleClickA, MenuFunc_DoubleClickB  ;00
        Menu_CursorTable_Row Option1,    $01, $0E,   Next,     Previous, Option0,  Option2,    MenuFunc_DoubleClickA, MenuFunc_DoubleClickB  ;01
        Menu_CursorTable_Row Option2,    $01, $0F,   Next,     Previous, Option1,  Option3,    MenuFunc_DoubleClickA, MenuFunc_DoubleClickB  ;02
        Menu_CursorTable_Row Option3,    $01, $10,   Next,     Previous, Option2,  Option4,    MenuFunc_DoubleClickA, MenuFunc_DoubleClickB  ;03
        Menu_CursorTable_Row Option4,    $01, $11,   Next,     Previous, Option3,  Option0,    MenuFunc_DoubleClickA, MenuFunc_DoubleClickB  ;04
        Menu_CursorTable_Row Previous,   $00, $11,   Option0,  Next,     Option0,  Option0,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row Next,       $13, $11,   Previous, Option0,  Option0,  Option0,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
    Menu_CursorTable_End

    ; $4682
Menu_CursorTable_Textbox::
    ;XXXXX               " ;XXXXX               "
    ;XXXXX0Forge 2Equip  " ;XXXXX0No            "
    ;XXXXX               " ;XXXXX               "
    ;XXXXX1Power 3Done   " ;XXXXX1Yes           "
    ;XXXXX               " ;XXXXX               "
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Textbox
        Menu_CursorTable_Row TopLeft,    $05, $0E,   TopRight, TopRight, BotRight, BotLeft,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00 - e.g. Forge
        Menu_CursorTable_Row BotLeft,    $05, $10,   BotRight, BotRight, TopLeft,  TopRight,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01 - e.g. Power
        Menu_CursorTable_Row TopRight,   $0C, $0E,   TopLeft,  TopLeft,  BotLeft,  BotRight,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02 - e.g. Equip
        Menu_CursorTable_Row BotRight,   $0C, $10,   BotLeft,  BotLeft,  TopRight, TopLeft,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03 - e.g. Done
    Menu_CursorTable_End
    ; $46A2
Menu_CursorTable_Forge::
    ;/------------------\
    ;|       U/\        |
    ;|0*Leaf Hyren  *___|
    ;|   Leaf Hyren *___|
    ;|   Arboll     *___|
    ;|1*__________  *___|
    ;|   __________ *___|
    ;|   __________ *___|
    ;|2*__________  *___|
    ;|   __________ *___|
    ;|   __________ *___|
    ;|       D\/        |
    ;/------------------\
    ;|Shall I make  *___|
    ;|              *___|
    ;|this ring?    *___|
    ;|YYes NNo          |
    ;\------------------/
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Forge
        Menu_CursorTable_Row Up,         $08, $01,   Creatur0, Down,     Down,     Creatur0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Creatur0,   $01, $02,   Creatur1, Up,       Up,       Creatur1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Creatur1,   $01, $05,   Creatur2, Creatur0, Creatur0, Creatur2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Creatur2,   $01, $08,   Down,     Creatur1, Creatur1, Down,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Down,       $08, $0B,   Up,       Creatur2, Creatur2, Up,         MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        ; Confirmation
        Menu_CursorTable_Row Yes,        $01, $10,   No,       No,       No,       No,         MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row No,         $06, $10,   Yes,      Yes,      Yes,      Yes,        MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
    Menu_CursorTable_End

    ; $46DA
Menu_CursorTable_Equip::
    ;/------------------\
    ;|       U/\        |
    ;|            Lvl E |
    ;|0*Leaf Hyren __   |
    ;|1___________ __ _ |
    ;|2___________ __ _ |
    ;|3___________ __ _ |
    ;|4___________ __ _ |
    ;|5___________ __ _ |
    ;|6___________ __ _ |
    ;|                  |
    ;|       D\/        |
    ;/------------------\ /------------------\ /------------------\
    ;|Do you want to    | |You can't restore | |De-equip this or  |
    ;|EEquip or DDestroy| |a destroyed ring! | |all your rings?   |
    ;|                  | |                  | |                  |
    ;|                  | |TDestroy ACancel  | |TThis    AAll     |
    ;\------------------/ \------------------/ \------------------/
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Equip
        Menu_CursorTable_Row Up,         $08, $01,   Creatur0, Down,     Down,     Creatur0,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Creatur0,   $01, $03,   Creatur1, Up,       Up,       Creatur1,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Creatur1,   $01, $04,   Creatur2, Creatur0, Creatur0, Creatur2,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        Menu_CursorTable_Row Creatur2,   $01, $05,   Creatur3, Creatur1, Creatur1, Creatur3,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Creatur3,   $01, $06,   Creatur4, Creatur2, Creatur2, Creatur4,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row Creatur4,   $01, $07,   Creatur5, Creatur3, Creatur3, Creatur5,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row Creatur5,   $01, $08,   Creatur6, Creatur4, Creatur4, Creatur6,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
        Menu_CursorTable_Row Creatur6,   $01, $09,   Down,     Creatur5, Creatur5, Down,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;07
        Menu_CursorTable_Row Down,       $08, $0B,   Up,       Creatur6, Creatur6, Up,         MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;08
        ; Confirmation Top
        Menu_CursorTable_Row Equip,      $01, $0E,   Destroy,  Destroy,  Destroy,  Destroy,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;09
        Menu_CursorTable_Row Destroy,    $0B, $0E,   Equip,    Equip,    Equip,    Equip,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0A
        ; Confirmation Bottom
        Menu_CursorTable_Row ThisDest,   $01, $10,   AllCancl, AllCancl, AllCancl, AllCancl,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0B Destroy or This
        Menu_CursorTable_Row AllCancl,   $0A, $10,   ThisDest, ThisDest, ThisDest, ThisDest,   MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0C Cancel or All
    Menu_CursorTable_End

    ; $4742
Menu_CursorTable_Shop::
    ;/------------------\"
    ;        U/\         "
    ;                    "
    ;0*Karmic Power  ___ "
    ;1*____________  ___ "
    ;2*____________  ___ "
    ;3*____________  ___ "
    ;4*____________  ___ "
    ;5*____________  ___ "
    ;6*____________  ___ "
    ;7*____________  ___ "
    ;                    "
    ;        D\/         "
    ;/------------------\"
    ;|BBuy         *___ |"
    ;|SSell             |"
    ;|DDone             |"
    ;\------------------/"
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Shop
        ; Bottom
        Menu_CursorTable_Row Buy,        $01, $0E,   Sell,     Done,     Done,     Sell,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Sell,       $01, $0F,   Done,     Buy,      Buy,      Done,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Done,       $01, $10,   Buy,      Sell,     Sell,     Buy,        MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        ; Top
        Menu_CursorTable_Row Item0,      $00, $03,   Item1,    Up,       Up,       Item1,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Item1,      $00, $04,   Item2,    Item0,    Item0,    Item2,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row Item2,      $00, $05,   Item3,    Item1,    Item1,    Item3,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row Item3,      $00, $06,   Item4,    Item2,    Item2,    Item4,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
        Menu_CursorTable_Row Item4,      $00, $07,   Item5,    Item3,    Item3,    Item5,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;07
        Menu_CursorTable_Row Item5,      $00, $08,   Item6,    Item4,    Item4,    Item6,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;08
        Menu_CursorTable_Row Item6,      $00, $09,   Item7,    Item5,    Item5,    Item7,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;09
        Menu_CursorTable_Row Item7,      $00, $0A,   Down,     Item6,    Item6,    Down,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0A
        Menu_CursorTable_Row Up,         $08, $01,   Item0,    Item7,    Down,     Item0,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0B
        Menu_CursorTable_Row Down,       $08, $0C,   Up,       Item0,    Item7,    Up,         MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0C
    Menu_CursorTable_End

    ; $47AA
Menu_CursorTable_Generic::
    ; Choose Music; Historian; Power
    ;
    ;
    ;/------------------\
    ;|        U/\       |
    ;|                  |
    ;|0*Karmic Power    |
    ;|1*Leaf Hyren __ X |
    ;|2Overture Pt. 1   |
    ;|3_____________    |
    ;|4_____________    |
    ;|5_____________    |
    ;|6_____________    |
    ;|7_____________    |
    ;|                  |
    ;|        D\/       |
    ;/------------------\
    ;|IItems            |
    ;|SSpells     DDone |
    ;|RRelics           |
    ;\------------------/
                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_Generic
        ; Bottom
        Menu_CursorTable_Row Items,      $01, $0E,   Done,     Done,     Relics,   Spells,     MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;00
        Menu_CursorTable_Row Spells,     $01, $0F,   Done,     Done,     Items,    Relics,     MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;01
        Menu_CursorTable_Row Relics,     $01, $10,   Done,     Done,     Spells,   Items,      MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;02
        ; Top
        Menu_CursorTable_Row Choice0,    $01, $03,   Choice1,  Up,       Up,       Choice1,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;03
        Menu_CursorTable_Row Choice1,    $01, $04,   Choice2,  Choice0,  Choice0,  Choice2,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;04
        Menu_CursorTable_Row Choice2,    $01, $05,   Choice3,  Choice1,  Choice1,  Choice3,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;05
        Menu_CursorTable_Row Choice3,    $01, $06,   Choice4,  Choice2,  Choice2,  Choice4,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;06
        Menu_CursorTable_Row Choice4,    $01, $07,   Choice5,  Choice3,  Choice3,  Choice5,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;07
        Menu_CursorTable_Row Choice5,    $01, $08,   Choice6,  Choice4,  Choice4,  Choice6,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;08
        Menu_CursorTable_Row Choice6,    $01, $09,   Choice7,  Choice5,  Choice5,  Choice7,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;09
        Menu_CursorTable_Row Choice7,    $01, $0A,   Down,     Choice6,  Choice6,  Down,       MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0A
        Menu_CursorTable_Row Up,         $08, $01,   Choice0,  Choice7,  Down,     Choice0,    MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0B
        Menu_CursorTable_Row Down,       $08, $0C,   Up,       Choice0,  Choice7,  Up,         MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0C
        ; Done
        Menu_CursorTable_Row Done,       $0D, $0F,   Spells,   Spells,   Items,    Relics,     MenuFunc_SingleClickA, MenuFunc_SingleClickB  ;0D
    Menu_CursorTable_End

    ; $481A
sShallIMake::
    db "Shall I make"
    .End
    ; $4826
sThisRing::
    db "this ring?"
    .End
    ; $4830
sYes__No::
    db "Yes  No"
    .End

    ; $4837
sYouDoNot::
    db "You do not"
    .End
    ; $4841
sHaveEnough::
    db "have enough"
    .End
    ; $484C
sAnimite::
    db "animite."
    .End

    ; $4854
sDoYouWantTo::
    db "Do you want to"
    .End
    ; $4862
sEquipOrDestroy::
    db "Equip or  Destroy"
    .End

    ; $4873
sYouCantRestore::
    db "You can't restore"
    .End
    ; $4884
sADestroyedRing::
    db "a destroyed ring!"
    .End
    ; $4895
sDestroy__Cancel::
    db "Destroy  Cancel"
    .End

    ; $48A4
sWhichRingDoYou_Replace::
    db "Which ring do you"
    .End
    ; $48B5
sWantToReplace::
    db "want to replace?"
    .End

    ; $48C5
sWhichRingDoYou_Act::
    db "Which ring do you"
    .End
    ; $48D6
sWantToActOn::
    db "want to act on?"
    .End

    ; $48E5
sYouHaveTooFew::
    db "You have too few"
    .End
    ; $48F5
sRingsToNeedOne::
    db "rings to need one"
    .End
    ; $4906
sDestroyed::
    db "destroyed."
    .End

    ; $4910
sDeEquipThisOr::
    db "De-equip this or"
    .End
    ; $4920
sAllYourRings::
    db "all your rings?"
    .End
    ; $492F
sThis_____All::
    db "This     All"
    .End

    ; $493B
Menu_CursorTable_MainMenuABHandler::
    ; What to do when the user presses A or B on a position in the main menu
    ; Row 0: A button
    ; Row 1: B button
    ; Column 0: wMenu_MainMenu_CurrentMenu
    ; Column 1: wMenu_CursorID
    ; The second column is unused if the first column is an ABCommand
    ; (except in the special case of Save's B option)
    ; By default, the unused values are defined by pointing to themselves

    ;00 - Tony
        db Menu_MainMenu_ID_TONY_,                      Enum_Menu_CursorTable_MainMenu_Tony
        db MenuFunc_MainMenu_ABCommand_EXIT,            Enum_Menu_CursorTable_MainMenu_Tony
    ;01 - Spell
        db Menu_MainMenu_ID_SPELL,                      Enum_Menu_CursorTable_MainMenu_Spell_0
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Tony
    ;02 - Rings
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings_Ab
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Tony
    ;03 - Items
        db Menu_MainMenu_ID_ITEMS,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Tony
    ;04 - Glyph
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph_Mn
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Tony
    ;05 - InfuList
        db Menu_MainMenu_ID_INFUSED,                    Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Tony
    ;06 - Spell_0
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Spell_0
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Spell
    ;07 - Spell_1
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Spell_1
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Spell
    ;08 - Spell_2
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Spell_2
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Spell
    ;09 - Spell_3
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Spell_3
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Spell
    ;0A - Spell_4
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Spell_4
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Spell
    ;0B - Spell_Up
        db MenuFunc_MainMenu_ABCommand_PAGEUP,          Enum_Menu_CursorTable_MainMenu_Spell_0
        db Menu_MainMenu_ID_SPELL,                      Enum_Menu_CursorTable_MainMenu_Spell
    ;0C - Spell_Dn
        db MenuFunc_MainMenu_ABCommand_PAGEDOWN,        Enum_Menu_CursorTable_MainMenu_Spell_0
        db Menu_MainMenu_ID_SPELL,                      Enum_Menu_CursorTable_MainMenu_Spell
    ;0D - Entry_0
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_0
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;0E - Entry_1
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_1
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;0F - Entry_2
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_2
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;10 - Entry_3
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_3
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;11 - Entry_4
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_4
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;12 - Entry_X5
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_X5
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;13 - Entry_X6
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_X6
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;14 - Glyph_Mn
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph_Mn
        db Menu_MainMenu_ID_MAIN,                       Enum_Menu_CursorTable_MainMenu_Glyph
    ;15 - Entry_X8
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_X8
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;16 - Entry_X9
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Entry_X9
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;17 - Entry_Up
        db MenuFunc_MainMenu_ABCommand_PAGEUP,          Enum_Menu_CursorTable_MainMenu_Entry_0
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;18 - Entry_Dn
        db MenuFunc_MainMenu_ABCommand_PAGEDOWN,        Enum_Menu_CursorTable_MainMenu_Entry_0
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Items
    ;19 - Rings_Ab
        db Menu_MainMenu_ID_ABILITY,                    Enum_Menu_CursorTable_MainMenu_Ability
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1A - Rings_Up
        db MenuFunc_MainMenu_ABCommand_PAGEUP,          Enum_Menu_CursorTable_MainMenu_Rings_Ab
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1B - Rings_Dn
        db MenuFunc_MainMenu_ABCommand_PAGEDOWN,        Enum_Menu_CursorTable_MainMenu_Rings_Ab
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1C - Rings_R0
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1D - Rings_R1
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1E - Rings_X0
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;1F - Rings_X1
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;20 - Rings_X2
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;21 - Rings_X3
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;22 - Rings_X4
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;23 - Rings_X5
        db Menu_MainMenu_ID_RELIC,                      Enum_Menu_CursorTable_MainMenu_Entry_0
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings
    ;24 - Save
        db MenuFunc_MainMenu_ABCommand_CHOOSEOPTION,    Enum_Menu_CursorTable_MainMenu_Save
        db MenuFunc_MainMenu_ABCommand_CANCELOPTION,    Enum_Menu_CursorTable_MainMenu_Tony
    ;25 - Glyph_X1
        db MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE,     Enum_Menu_CursorTable_MainMenu_Glyph_X1
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;26 - Glyph_X2
        db MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE,     Enum_Menu_CursorTable_MainMenu_Glyph_X2
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;27 - Glyph_X3
        db MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE,     Enum_Menu_CursorTable_MainMenu_Glyph_X3
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;28 - Glyph_X4
        db MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE,     Enum_Menu_CursorTable_MainMenu_Glyph_X4
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;29 - Glyph_XS
        db MenuFunc_MainMenu_ABCommand_GLYPHSETORCLEAR, Enum_Menu_CursorTable_MainMenu_Glyph_XS
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;2A - Glyph_XC
        db MenuFunc_MainMenu_ABCommand_GLYPHSETORCLEAR, Enum_Menu_CursorTable_MainMenu_Glyph_XC
        db Menu_MainMenu_ID_GLYPH,                      Enum_Menu_CursorTable_MainMenu_Glyph
    ;2B - Ability
        db Menu_MainMenu_ID_ABILITY,                    Enum_Menu_CursorTable_MainMenu_Ability
        db Menu_MainMenu_ID_RINGS,                      Enum_Menu_CursorTable_MainMenu_Rings_Ab

    ; $49EB
Menu_CursorTable_MainMenu::
    ;   Bottom + Spell           Entry                Rings            Glyph (removed)
    ;/------------------\ /------------------\ /------------------\ /------------------\
    ;|       U/\        | |       U/\        | |       U/\        | |                  |
    ;|                  | |                  | |XXXX Leaf Hyren   | |     0    1       |
    ;|___ 0_Leaf Cut    | |___ 0_Baloo Leaf  | |XXXX     __     __| |                  |
    ;|___ 1             | |___ 1             | |XXXX     __     __| |                  |
    ;|___ 2             | |___ 2             | |XXXX     __012345_| |S       4    C    |
    ;|___ 3             | |___ 3             | |XXXX     __     __| |                  |
    ;|___ 4             | |___ 4             | |R______           | |                  |
    ;|                  | |         7        | |R______           | |                  |
    ;|       D\/        | | 5     D 8        | |A_______          | |     2    3       |
    ;|                  | | 6       9        | |       D\/        | |                  |
    ;/------------------\ /------------------\ /------------------\ /------------------\
    ;|T____             | |T____             | |T____             | |T____             |
    ;|S_____            | |S_____            | |S_____            | |S_____            |
    ;|R_____            | |R_____            | |R_____            | |R_____            |
    ;|I_____      S____ | |I_____      S____ | |I_____      S____ | |I_____      S____ |
    ;|G_____      E_____| |G_____      E_____| |G_____      E_____| |G_____      E_____|
    ;\------------------/ \------------------/ \------------------/ \------------------/

                            ;              Cursor                New MenuID                               Function Handler
                            ; Name         X    Y      R         L         U         D                  A                  B
    Menu_CursorTable_New Menu_CursorTable_MainMenu
        ; Bottom
        Menu_CursorTable_Row Tony,       $01, $0C,   Save,     Save,     Glyph,    Spell,      MenuFunc_MainMenu, MenuFunc_MainMenu  ;00
        Menu_CursorTable_Row Spell,      $01, $0D,   Save,     Save,     Tony,     Rings,      MenuFunc_MainMenu, MenuFunc_MainMenu  ;01
        Menu_CursorTable_Row Rings,      $01, $0E,   Save,     Save,     Spell,    Items,      MenuFunc_MainMenu, MenuFunc_MainMenu  ;02
        Menu_CursorTable_Row Items,      $01, $0F,   Save,     Save,     Rings,    Glyph,      MenuFunc_MainMenu, MenuFunc_MainMenu  ;03
        Menu_CursorTable_Row Glyph,      $01, $10,   Save,     Save,     Items,    Tony,       MenuFunc_MainMenu, MenuFunc_MainMenu  ;04
        Menu_CursorTable_Row InfuList,   $0D, $10,   Tony,     Save,     Save,     Save,       MenuFunc_MainMenu, MenuFunc_MainMenu  ;05
        ; Spell upper - bug - Interestingly, Spell_Dn and Entry_Dn have different behaviours when you press Up
        Menu_CursorTable_Row Spell_0,    $05, $03,   Spell_1,  Spell_Up, Spell_Up, Spell_1,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;06
        Menu_CursorTable_Row Spell_1,    $05, $04,   Spell_2,  Spell_0,  Spell_0,  Spell_2,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;07
        Menu_CursorTable_Row Spell_2,    $05, $05,   Spell_3,  Spell_1,  Spell_1,  Spell_3,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;08
        Menu_CursorTable_Row Spell_3,    $05, $06,   Spell_4,  Spell_2,  Spell_2,  Spell_4,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;09
        Menu_CursorTable_Row Spell_4,    $05, $07,   Spell_Dn, Spell_3,  Spell_3,  Spell_Dn,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;0A
        Menu_CursorTable_Row Spell_Up,   $08, $01,   Spell_0,  Spell_Dn, Spell_Dn, Spell_0,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;0B
        Menu_CursorTable_Row Spell_Dn,   $08, $09,   Spell_Up, Spell_0,  Spell_0,  Spell_Up,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;0C
        ; Item/Infused/Relics upper
        Menu_CursorTable_Row Entry_0,    $05, $03,   Entry_1,  Entry_Up, Entry_Up, Entry_1,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;0D
        Menu_CursorTable_Row Entry_1,    $05, $04,   Entry_2,  Entry_0,  Entry_0,  Entry_2,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;0E
        Menu_CursorTable_Row Entry_2,    $05, $05,   Entry_3,  Entry_1,  Entry_1,  Entry_3,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;0F
        Menu_CursorTable_Row Entry_3,    $05, $06,   Entry_4,  Entry_2,  Entry_2,  Entry_4,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;10
        Menu_CursorTable_Row Entry_4,    $05, $07,   Entry_Dn, Entry_3,  Entry_3,  Entry_Dn,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;11
        ; Item/Infused/Relics - Removed dummy bottomleft choices
        Menu_CursorTable_Row Entry_X5,   $03, $09,   Entry_Dn, Entry_Up, Entry_4,  Entry_X6,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;12
        Menu_CursorTable_Row Entry_X6,   $03, $0A,   Entry_Dn, Entry_Up, Entry_X5, Entry_0,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;13
        ; Glyph upper (main) - Invisible cursor
        Menu_CursorTable_Row Glyph_Mn,   $14, $14,   Glyph_Mn, Glyph_Mn, Glyph_Mn, Glyph_Mn,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;14
        ; Item/Infused - Removed dummy bottomright choices - Entry_X7 was replaced by Glyph_Mn
        Menu_CursorTable_Row Entry_X8,   $0A, $09,   Entry_Dn, Entry_3,  Glyph_Mn, Entry_X9,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;15
        Menu_CursorTable_Row Entry_X9,   $0A, $0A,   Entry_Dn, Entry_4,  Entry_X8, Entry_0,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;16
        Menu_CursorTable_Row Entry_Up,   $08, $01,   Entry_0,  Entry_Dn, Entry_Dn, Entry_0,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;17
        Menu_CursorTable_Row Entry_Dn,   $08, $09,   Entry_Up, Entry_4,  Entry_4,  Entry_Up,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;18
        ; Rings upper
        Menu_CursorTable_Row Rings_Ab,   $01, $09,   Rings_Ab, Rings_Ab, Rings_R1, Rings_Dn,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;19
        Menu_CursorTable_Row Rings_Up,   $08, $01,   Rings_Up, Rings_Up, Rings_Dn, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1A
        Menu_CursorTable_Row Rings_Dn,   $08, $0A,   Rings_Dn, Rings_Dn, Rings_Ab, Rings_Up,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1B
        Menu_CursorTable_Row Rings_R0,   $01, $07,   Rings_R0, Rings_R0, Rings_Up, Rings_R1,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1C
        Menu_CursorTable_Row Rings_R1,   $01, $08,   Rings_R1, Rings_R1, Rings_R0, Rings_Ab,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1D
        ; Rings upper - Removed dummy "status 0-5" choices
        Menu_CursorTable_Row Rings_X0,   $0C, $05,   Rings_R0, Rings_R0, Rings_R0, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1E
        Menu_CursorTable_Row Rings_X1,   $0D, $05,   Rings_R1, Rings_R1, Rings_R1, Rings_R1,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;1F
        Menu_CursorTable_Row Rings_X2,   $0E, $05,   Rings_X3, Rings_X1, Rings_Ab, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;20
        Menu_CursorTable_Row Rings_X3,   $0F, $05,   Rings_X4, Rings_X2, Rings_Ab, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;21
        Menu_CursorTable_Row Rings_X4,   $10, $05,   Rings_X5, Rings_X3, Rings_Ab, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;22
        Menu_CursorTable_Row Rings_X5,   $11, $05,   Rings_Dn, Rings_X4, Rings_Ab, Rings_R0,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;23
        ; Bottom - Save (overwrote Glyph Stone 0)
        Menu_CursorTable_Row Save,       $0D, $0F,   InfuList, Tony,     InfuList, InfuList,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;24
        ; Glyph upper - Removed dummy choices to select the stones. Stone 0 was overwritten by Save
        ;               Funnily enough, glyph stone 2 is very hard to navigate to
        Menu_CursorTable_Row Glyph_X1,   $0B, $02,   Glyph_XC, Save,     Glyph_X3, Glyph_X4,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;25
        Menu_CursorTable_Row Glyph_X2,   $06, $09,   Glyph_X3, Glyph_XS, Glyph_X4, Save,       MenuFunc_MainMenu, MenuFunc_MainMenu  ;26
        Menu_CursorTable_Row Glyph_X3,   $0B, $09,   Glyph_XC, Glyph_X2, Glyph_X4, Glyph_X1,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;27
        Menu_CursorTable_Row Glyph_X4,   $09, $05,   Glyph_XC, Glyph_XS, Save,     Glyph_X3,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;28
        ; Glyph upper - "Set all" and "Clear all" dummy choices
        Menu_CursorTable_Row Glyph_XS,   $01, $05,   Save,     Glyph_XC, Glyph_XS, Glyph_XS,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;29
        Menu_CursorTable_Row Glyph_XC,   $0E, $05,   Glyph_XS, Glyph_X1, Glyph_XC, Glyph_XC,   MenuFunc_MainMenu, MenuFunc_MainMenu  ;2A
        ; Ability window - Invisible cursor
        Menu_CursorTable_Row Ability,    $14, $14,   Ability,  Ability,  Ability,  Ability,    MenuFunc_MainMenu, MenuFunc_MainMenu  ;2B
    Menu_CursorTable_End

    ; $4B4B
TILEMAP_Menu_4B4B::
    INCBIN "autogenerated/assets/menu/tilemaps/4B4B.tilemap"

    ; $4CB3
TILEMAP_Menu_4CB3::
    INCBIN "autogenerated/assets/menu/tilemaps/4CB3.tilemap"

    ; $4E1B
TILEMAP_Menu_4E1B::
    INCBIN "autogenerated/assets/menu/tilemaps/4E1B.tilemap"

    ; $4F83
Jump_003_4F83:
jr_003_4F83:
    ld a, $FF                                     ; $4F83: $3E $FF
    ld [wMenu_ReturnValue], a                                 ; $4F85: $EA $A7 $CC
    Do_CallForeign Menu_Do
    call System_UpdateGameNoScript                                    ; $4F90: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $4F93: $FA $A7 $CC
    cp $FF                                        ; $4F96: $FE $FF
    jr z, jr_003_4F83                             ; $4F98: $28 $E9

    cp $FE                                        ; $4F9A: $FE $FE
    jp z, Jump_003_5238                           ; $4F9C: $CA $38 $52

    cp $0B                                        ; $4F9F: $FE $0B
    jp z, Jump_003_4FBE                           ; $4FA1: $CA $BE $4F

    cp $0C                                        ; $4FA4: $FE $0C
    jp z, Jump_003_503E                           ; $4FA6: $CA $3E $50

    cp $01                                        ; $4FA9: $FE $01
    jp z, Jump_003_5158                           ; $4FAB: $CA $58 $51

    cp $00                                        ; $4FAE: $FE $00
    jp z, Jump_003_5158                           ; $4FB0: $CA $58 $51

    cp $02                                        ; $4FB3: $FE $02
    jp z, Jump_003_5158                           ; $4FB5: $CA $58 $51

    call Call_003_521A                            ; $4FB8: $CD $1A $52
    jp Menu_Exit                              ; $4FBB: $C3 $37 $76


Jump_003_4FBE:
    call Call_003_7512                            ; $4FBE: $CD $12 $75
    call ScreenHide                                    ; $4FC1: $CD $C3 $07
    call Call_003_7596                            ; $4FC4: $CD $96 $75
    call ScreenShow                                    ; $4FC7: $CD $EA $07
    ld a, [wMenu_Generic_FatArrowTileID]                                 ; $4FCA: $FA $EB $CC
    call Menu_Generic_DrawDownArrow                            ; $4FCD: $CD $51 $77
    ld hl, $CCE2                                  ; $4FD0: $21 $E2 $CC
    ld a, $01                                     ; $4FD3: $3E $01
    ld [hl-], a                                   ; $4FD5: $32
    ld a, [$CCC8]                                 ; $4FD6: $FA $C8 $CC
    sub $08                                       ; $4FD9: $D6 $08
    ld [$CCC8], a                                 ; $4FDB: $EA $C8 $CC
    cp $08                                        ; $4FDE: $FE $08
    jr nz, jr_003_4FEA                            ; $4FE0: $20 $08

    ld a, $00                                     ; $4FE2: $3E $00
    ld [hl], a                                    ; $4FE4: $77
    call Menu_Generic_EraseUpArrow                            ; $4FE5: $CD $C2 $77
    jr jr_003_4FED                                ; $4FE8: $18 $03

jr_003_4FEA:
    call Menu_Generic_DrawUpArrow                            ; $4FEA: $CD $77 $77

jr_003_4FED:
    ld a, [wMenu_ReturnValue]                                 ; $4FED: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $4FF0: $EA $81 $CD


    ; Special Start func, but Start is disabled? TODO to clarify
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ;wMenu_Generic_CursorTableValidIDs to clarify TODO

    jp Jump_003_4F83                              ; $503B: $C3 $83 $4F


Jump_003_503E:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $503E: $21 $CD $CC
    ld e, $07                                     ; $5041: $1E $07
    ld d, $00                                     ; $5043: $16 $00
    add hl, de                                    ; $5045: $19
    ld a, [hl]                                    ; $5046: $7E
    inc a                                         ; $5047: $3C
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $5048: $EA $D5 $CC
    call Call_003_7550                            ; $504B: $CD $50 $75
    call ScreenHide                                    ; $504E: $CD $C3 $07
    call Call_003_7596                            ; $5051: $CD $96 $75
    call ScreenShow                                    ; $5054: $CD $EA $07
    ld a, [wMenu_ReturnValue]                                 ; $5057: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $505A: $EA $81 $CD
    call Menu_Generic_DrawUpArrow                            ; $505D: $CD $77 $77
    ld a, $01                                     ; $5060: $3E $01
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up                                  ; $5062: $21 $E1 $CC
    ld [hl+], a                                   ; $5065: $22
    ld a, [wMenu_Generic_EntryCount]                                 ; $5066: $FA $CC $CC
    ld c, a                                       ; $5069: $4F
    ld a, [$CCC8]                                 ; $506A: $FA $C8 $CC
    add $08                                       ; $506D: $C6 $08
    ld [$CCC8], a                                 ; $506F: $EA $C8 $CC
    cp c                                          ; $5072: $B9
    jr c, jr_003_5082                             ; $5073: $38 $0D

    ld a, $00                                     ; $5075: $3E $00
    ld [hl], a                                    ; $5077: $77
    ld a, $0B                                     ; $5078: $3E $0B
    ld [wMenu_CursorID], a                                 ; $507A: $EA $81 $CD
    call Menu_Generic_EraseDownArrow                            ; $507D: $CD $9D $77
    jr jr_003_5085                                ; $5080: $18 $03

jr_003_5082:
    call Menu_Generic_DrawDownArrow                            ; $5082: $CD $51 $77

jr_003_5085:

    ; Special Start func, but Start is disabled? TODO to clarify
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ;wMenu_Generic_CursorTableValidIDs to clarify TODO

    jp Jump_003_4F83                              ; $50CD: $C3 $83 $4F

Call_003_50D0::
    call Menu_Setup_GenericMenu                            ; $50D0: $CD $63 $74
    ld bc, TILEMAP_Menu_4CB3                                  ; $50D3: $01 $B3 $4C
    call Menu_LoadTilemap                            ; $50D6: $CD $FA $76
    ld de, $8860                                  ; $50D9: $11 $60 $88
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de                                    ; $50E1: $72
    ld a, $68                                     ; $50E2: $3E $68
    call Menu_EmptyStringToTileset                            ; $50E4: $CD $2F $77
    ld bc, $52F2                                  ; $50E7: $01 $F2 $52
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $50EF: $70
    ld a, $10                                     ; $50F0: $3E $10
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $50F2: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset

    ; Special Start func, but Start is disabled? TODO to clarify
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ;wMenu_Generic_CursorTableValidIDs to clarify TODO

    call ScreenShow                                    ; $5145: $CD $EA $07
    call System_UpdateGameNoScript                                    ; $5148: $CD $5F $09
    ld a, $03                                     ; $514B: $3E $03
    ld [$CCE3], a                                 ; $514D: $EA $E3 $CC
    ld a, $F9                                     ; $5150: $3E $F9
    ld [wMenu_Generic_FatArrowTileID], a                                 ; $5152: $EA $EB $CC
    jp Jump_003_4F83                              ; $5155: $C3 $83 $4F


Jump_003_5158:
    xor a                                         ; $5158: $AF
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $5159: $EA $D5 $CC
    ld a, [wMenu_ReturnValue]                                 ; $515C: $FA $A7 $CC
    ld [wMenu_Music_FirstSongChoice], a                                 ; $515F: $EA $CB $CC
    cp $00                                        ; $5162: $FE $00
    jr z, jr_003_518E                             ; $5164: $28 $28

    cp $01                                        ; $5166: $FE $01
    jr z, jr_003_51B2                             ; $5168: $28 $48

    ld a, $02                                     ; $516A: $3E $02
    ld [$CCFD], a                                 ; $516C: $EA $FD $CC
    ld a, $06                                     ; $516F: $3E $06
    ld [$CCE9], a                                 ; $5171: $EA $E9 $CC
    ld a, $13                                     ; $5174: $3E $13
    ld [$CCE8], a                                 ; $5176: $EA $E8 $CC
    ld hl, Relic_Table                                  ; $5179: $21 $16 $69
    ld a, h                                       ; $517C: $7C
    ld [wMenu_Generic_EntryDataTable + 1], a                                 ; $517D: $EA $E7 $CC
    ld a, l                                       ; $5180: $7D
    ld [wMenu_Generic_EntryDataTable], a                                 ; $5181: $EA $E6 $CC
    ld a, $0D                                     ; $5184: $3E $0D
    ld [$CCEA], a                                 ; $5186: $EA $EA $CC
    ld hl, xInventory_Relics                                  ; $5189: $21 $19 $A0
    jr jr_003_51D4                                ; $518C: $18 $46

jr_003_518E:
    ld a, $00                                     ; $518E: $3E $00
    ld [$CCFD], a                                 ; $5190: $EA $FD $CC
    ld a, $0C                                     ; $5193: $3E $0C
    ld [$CCE9], a                                 ; $5195: $EA $E9 $CC
    ld a, ItemSpell_ROWSIZE                                     ; $5198: $3E $22
    ld [$CCE8], a                                 ; $519A: $EA $E8 $CC
    ld hl, Item_Table                                  ; $519D: $21 $FF $5D
    ld a, h                                       ; $51A0: $7C
    ld [wMenu_Generic_EntryDataTable + 1], a                                 ; $51A1: $EA $E7 $CC
    ld a, l                                       ; $51A4: $7D
    ld [wMenu_Generic_EntryDataTable], a                                 ; $51A5: $EA $E6 $CC
    ld a, $0D                                     ; $51A8: $3E $0D
    ld [$CCEA], a                                 ; $51AA: $EA $EA $CC
    ld hl, $A3A7                                  ; $51AD: $21 $A7 $A3
    jr jr_003_51D4                                ; $51B0: $18 $22

jr_003_51B2:
    ld a, $03                                     ; $51B2: $3E $03
    ld [$CCFD], a                                 ; $51B4: $EA $FD $CC
    ld a, $0C                                     ; $51B7: $3E $0C
    ld [$CCE9], a                                 ; $51B9: $EA $E9 $CC
    ld a, ItemSpell_ROWSIZE                                     ; $51BC: $3E $22
    ld [$CCE8], a                                 ; $51BE: $EA $E8 $CC
    ld hl, Spell_Table                                  ; $51C1: $21 $F5 $6F
    ld a, h                                       ; $51C4: $7C
    ld [wMenu_Generic_EntryDataTable + 1], a                                 ; $51C5: $EA $E7 $CC
    ld a, l                                       ; $51C8: $7D
    ld [wMenu_Generic_EntryDataTable], a                                 ; $51C9: $EA $E6 $CC
    ld a, $0D                                     ; $51CC: $3E $0D
    ld [$CCEA], a                                 ; $51CE: $EA $EA $CC
    ld hl, $A5A5                                  ; $51D1: $21 $A5 $A5

jr_003_51D4:
    ld a, h                                       ; $51D4: $7C
    ld [$CCE5], a                                 ; $51D5: $EA $E5 $CC
    ld a, l                                       ; $51D8: $7D
    ld [$CCE4], a                                 ; $51D9: $EA $E4 $CC
    ld c, $F0                                     ; $51DC: $0E $F0
    call Call_003_74EF                            ; $51DE: $CD $EF $74
    call Call_003_7550                            ; $51E1: $CD $50 $75
    call ScreenHide                                    ; $51E4: $CD $C3 $07
    call Call_003_7596                            ; $51E7: $CD $96 $75
    call ScreenShow                                    ; $51EA: $CD $EA $07
    call Menu_Generic_EraseUpArrow                            ; $51ED: $CD $C2 $77
    xor a                                         ; $51F0: $AF
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up                                  ; $51F1: $21 $E1 $CC
    ld [hl+], a                                   ; $51F4: $22
    ld [hl], a                                    ; $51F5: $77
    ld a, [wMenu_Generic_EntryCount]                                 ; $51F6: $FA $CC $CC
    ld c, a                                       ; $51F9: $4F
    ld a, $08                                     ; $51FA: $3E $08
    ld [$CCC8], a                                 ; $51FC: $EA $C8 $CC
    cp c                                          ; $51FF: $B9
    jr nc, jr_003_520A                            ; $5200: $30 $08

    ld a, $01                                     ; $5202: $3E $01
    ld [hl], a                                    ; $5204: $77
    call Menu_Generic_DrawDownArrow                            ; $5205: $CD $51 $77
    jr jr_003_520D                                ; $5208: $18 $03

jr_003_520A:
    call Menu_Generic_EraseDownArrow                            ; $520A: $CD $9D $77

jr_003_520D:
    ld a, [wMenu_ReturnValue]                                 ; $520D: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $5210: $EA $81 $CD
    xor a                                         ; $5213: $AF
    ld [$CCE3], a                                 ; $5214: $EA $E3 $CC
    jp Jump_003_5238                              ; $5217: $C3 $38 $52


Call_003_521A:
    ld a, [wMenu_ReturnValue]                                 ; $521A: $FA $A7 $CC
    cp $0D                                        ; $521D: $FE $0D
    jr z, jr_003_522F                             ; $521F: $28 $0E

    sub $03                                       ; $5221: $D6 $03
    ld c, a                                       ; $5223: $4F
    ld b, $00                                     ; $5224: $06 $00
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $5226: $21 $CD $CC
    add hl, bc                                    ; $5229: $09
    ld a, [hl]                                    ; $522A: $7E
    ld [wMenu_Music_CurrentSong], a                                 ; $522B: $EA $FC $CC
    ret                                           ; $522E: $C9


jr_003_522F:
    ld a, $FF                                     ; $522F: $3E $FF
    ld [wMenu_Music_CurrentSong], a                                 ; $5231: $EA $FC $CC
    ld [$CCFD], a                                 ; $5234: $EA $FD $CC
    ret                                           ; $5237: $C9


Jump_003_5238:
    ld a, [$CCE3]                                 ; $5238: $FA $E3 $CC
    cp $00                                        ; $523B: $FE $00
    jr z, jr_003_525D                             ; $523D: $28 $1E

    cp $03                                        ; $523F: $FE $03
    jr nz, jr_003_524E                            ; $5241: $20 $0B

    ld a, $FF                                     ; $5243: $3E $FF
    ld [wMenu_Music_CurrentSong], a                                 ; $5245: $EA $FC $CC
    ld [$CCFD], a                                 ; $5248: $EA $FD $CC
    jp Menu_Exit                              ; $524B: $C3 $37 $76


jr_003_524E:
    ld a, $03                                     ; $524E: $3E $03
    ld [$CCE3], a                                 ; $5250: $EA $E3 $CC
    ld a, $00                                     ; $5253: $3E $00
    ld [wMenu_CursorID], a                                 ; $5255: $EA $81 $CD
    call Call_003_76B1                            ; $5258: $CD $B1 $76
    jr jr_003_5271                                ; $525B: $18 $14

jr_003_525D:
    call Call_003_76E0                            ; $525D: $CD $E0 $76
    cp $00                                        ; $5260: $FE $00
    jr z, jr_003_524E                             ; $5262: $28 $EA

    call Call_003_7679                            ; $5264: $CD $79 $76
    ld a, $03                                     ; $5267: $3E $03
    ld [wMenu_CursorID], a                                 ; $5269: $EA $81 $CD
    ld a, $01                                     ; $526C: $3E $01
    ld [$CCE3], a                                 ; $526E: $EA $E3 $CC

jr_003_5271:

    ; Special Start func, but Start is disabled? TODO to clarify
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ;wMenu_Generic_CursorTableValidIDs to clarify TODO

    jp Jump_003_4F83                              ; $52B9: $C3 $83 $4F

    ; $52BC
Menu_Music_MainLoop:
    ; Handle all the choices

    Set8 wMenu_ReturnValue, Menu_NULL
    Do_CallForeign Menu_Do
    call System_UpdateGameNoScript
    ld a, [wMenu_ReturnValue]

    cp Menu_NULL
        jr z, Menu_Music_MainLoop
    cp Menu_CANCEL
        jp z, Menu_Exit
    cp Enum_Menu_CursorTable_Generic_Up
        jp z, Menu_Music_DoPageUp
    cp Enum_Menu_CursorTable_Generic_Down
        jp z, Menu_Music_DoPageDown
    cp Enum_Menu_CursorTable_Generic_Done
        jp z, Menu_Exit
    call Menu_Music_PlaySong
    jp Menu_Music_MainLoop


    ; $52ED
Menu_Music_DoPageUp:
    ; Process a page up request

    ; Decrease the index by 8
    ld a, [wMenu_Generic_TopEntryIndex]
    sub (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
    ld [wMenu_Generic_TopEntryIndex], a
    ; Update the songs to be displayed
    call Menu_Music_PopulateReturnValues
    call ScreenHide
    call Menu_Music_PopulateEntryNames
    call ScreenShow

    ; Enable the down arrow
    call Menu_Generic_DrawDownArrow
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Down
    ld a, $01
    ld [hl-], a

    ; Check to see if we keep the up arrow by checking if the index is 0 or not
    ld a, [wMenu_Generic_TopEntryIndex]
    cp $00
    jr nz, .IndexNon0
    .Index0:
        ; Erase the up arrow
        Set8 hl, $00
        call Menu_Generic_EraseUpArrow
        jr .Finally
    .IndexNon0:
        ; Draw the up arrow. The up arrow's cursorid is already enabled because we just clicked it, so no need to enable it
        call Menu_Generic_DrawUpArrow
    .Finally:
    Mov8 wMenu_CursorID, wMenu_ReturnValue ; Keep the cursor the same - I think this line is unneeded
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    jp Menu_Music_MainLoop

    ; $536D
Menu_Music_DoPageDown:
    ; Process a page down request

    ; Increase the index by 8
    ld a, [wMenu_Generic_TopEntryIndex]
    add (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
    ld [wMenu_Generic_TopEntryIndex], a
    ; Update the songs to be displayed
    call Menu_Music_PopulateReturnValues
    call ScreenHide
    ld de, Menu_Generic_VRAM_CHOICE0 ; unused 2 lines because wMenu_MainMenu_StringToTileset_Dest is set in Menu_Music_PopulateEntryNames
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de
    call Menu_Music_PopulateEntryNames
    call ScreenShow

    Mov8 wMenu_CursorID, wMenu_ReturnValue

    ; Enable the up arrow
    call Menu_Generic_DrawUpArrow
    ld a, $01
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up
    ld [hl+], a

    ; Check to see if there are enough entries for there to be a next page
    Get8 c, wMenu_Generic_EntryCount
    ld a, [wMenu_Generic_TopEntryIndex]
    add (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
    cp c
    jr c, .EnoughEntries
    .NotEnoughEntries:
        ; Erase the up arrow
        Set8 hl, $00
        Set8 wMenu_CursorID, Enum_Menu_CursorTable_Generic_Up ; move the cursor so it isn't over an invalid choice
        call Menu_Generic_EraseDownArrow
        jr .Finally
    .EnoughEntries:
        ; Draw the down arrow. The down arrow's cursorid is already enabled because we just clicked it, so no need to enable it
        call Menu_Generic_DrawDownArrow
    .Finally:
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    jp Menu_Music_MainLoop

    ; $5400
Menu_Music_Open::
    ; Open the Music Menu

    ; Store the total number of songs
    SwitchRAMBank BANK(wMenu_MusicBuffer)
    Mov8 wMenu_Generic_EntryCount, wMenu_MusicBuffer.Entries

    xor a
    ld [wMenu_Generic_TopEntryIndex], a
    ld [wMenu_Temp6], a

    ; Store the id of the fat arrow so we can draw arrows when we need to
    Set8 wMenu_Generic_FatArrowTileID, Menu_Music_TILEID_FATARROW
    Set8 $CCC8, $08 ;todo

    ld hl, wMenu_MusicBuffer.RawData
    Set16 wMenu_Generic_EntryDataTable, hl

    ; Set to non-zero.
    Set8 wMenu_Music_FirstSongChoice, $03

    ; Load a generic menu
    ; Cannabilize the tilemap from TODO?historian, which we will then use for our own purposes
    call Menu_Setup_GenericMenu
    ld bc, TILEMAP_Menu_4CB3
    call Menu_LoadTilemap

    ; Initialize the 8 song names as blank
    ld de, Menu_Generic_VRAM_CHOICE0
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de
    ld a, ItemSpell_NAMESIZE*8
    call Menu_EmptyStringToTileset
    ;wMenu_MainMenu_StringToTileset_Dest = Menu_Generic_VRAM_CHOOSEASONG

    ; Copy the text for the bottom part of the menu + the fat arrow
    ;    Choose a Song
    ;    A-Selects
    ;    B-Exits
    ld bc, sMenu_Music_ChooseASong
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc
    Set8 wMenu_MainMenu_StringToTileset_Length, (sMenu_Music_FatArrow.End - sMenu_Music_ChooseASong)
    Do_CallForeign Menu_MainMenu_StringToTileset
    ; Put the tileids into the tilemap, since we've cannabilized a tilemap that doesn't have the right text
    call Menu_Music_SetupBottomText

    call ScreenShow
    call System_UpdateGameNoScript ; Game is frozen so don't process scripts

    Set8 $CCE3, $03 ;todo - option D. todo - is this useless?

    ; Populate the entries with the names and the return values, and update the validity of the cursor id for the entries
    ld de, Menu_Generic_VRAM_CHOICE0
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de
    call ScreenHide
    call Menu_Music_PopulateReturnValues
    call Menu_Music_PopulateEntryNames
    call ScreenShow

    xor a
    ld [$CCE3], a ; todo

    ; Hide the up arrow and disable it
    call Menu_Generic_EraseUpArrow
    xor a
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up
    ld [hl+], a

    ; Let's see if we need to hide or draw the down arrow
    ld [hl], a ; Disable the cursorid by default
    Get8 c, wMenu_Generic_EntryCount
    ld a, $08
    ld [$CCC8], a ; todo
    cp c
    jr nc, .EightOrLess
    .NineOrMore:
        ; We should enable the down arrow!
        ; Enable the cursorid and draw the arrow
        Set8 hl, $01
        call Menu_Generic_DrawDownArrow
        jr .Continue
    .EightOrLess:
        ; Hide the arrow
        call Menu_Generic_EraseDownArrow
    .Continue:

    ; Setup the menu
    Set8 wMenu_CursorID, Enum_Menu_CursorTable_Generic_Choice0 ; inefficient. We could have directly passed the cursorID into Do_Menu_Init
    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE

    jp Menu_Music_MainLoop


Menu_Music_PopulateReturnValues:
    ; This function populates wMenu_Generic_EntryReturnVals with up to 8 return values,
    ; starting with the index indicated by wMenu_Generic_TopEntryIndex
    ; It will return Menu_NULL if the entry is undefined (past the end of the list)
    ; Inputs:
    ;   wMenu_Generic_TopEntryIndex - where to start
    ; Outputs:
    ;   wMenu_Generic_EntryReturnVals - populated with the return values, or Menu_NULL if past the end of the list

    ; wMenu_Temp0 = loop (from 0 to 7)
    ; wMenu_Temp6 = current index in the list

    ; Start at the specified index
    Mov8 wMenu_Temp6, wMenu_Generic_TopEntryIndex

    xor a
    ld [wMenu_Temp0], a
    SwitchRAMBank BANK(wMenu_MusicBuffer)
    .Loop1:
        ; Get the return value of the current index
        Get8 c, wMenu_Temp6
        ld b, MUSICBUFFER_ROWSIZE
        call Math_Mult
        ld de, wMenu_MusicBuffer.RawData + MUSICBUFFER_ID
        add hl, de
        Get8 b, hl

        ; Store it into wMenu_Generic_EntryReturnVals
        ld a, [wMenu_Temp0]
        ld hl, wMenu_Generic_EntryReturnVals
        ld e, a
        ld d, $00
        add hl, de
        ld [hl], b

        ; Check if we've populated all 8 entries. If so, we are done
        ld a, [wMenu_Generic_TopEntryIndex]
        add (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
        ld b, a
        ld a, [wMenu_Temp6]
        inc a
        cp b
        ret z

        ; Otherwise, increment the index, and keep looping if we haven't reached the end of the list
        ld [wMenu_Temp6], a
        ld b, a
        ld a, [wMenu_Temp0]
        inc a
        ld [wMenu_Temp0], a
        ld a, [wMenu_Generic_EntryCount]
        cp b
        jr nz, .Loop1

    ; We've reached the end of the list!
    ; Populate all remaining entries with Menu_NULL
    .Loop2:
        ; Set the entry to Menu_NULL
        ld a, [wMenu_Temp0]
        ld hl, wMenu_Generic_EntryReturnVals
        ld e, a
        ld d, $00
        add hl, de
        ld [hl], Menu_NULL

        ; If we've populated all 8 entries, we are done
        ld a, [wMenu_Generic_TopEntryIndex]
        add (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
        ld b, a
        ld a, [wMenu_Temp6]
        inc a
        cp b
        ret z

        ; Otherwise, increment by 1 and keep looping
        ld [wMenu_Temp6], a
        ld a, [wMenu_Temp0]
        inc a
        ld [wMenu_Temp0], a
        jr .Loop2

    ; $555E
Menu_Music_PopulateEntryNames:
    ; Write into the tileset the names of the 8 entries
    ; This function checks wMenu_Generic_EntryReturnVals to see which entries are valid
    ; This function also sets whether the cursor ids are valid
    ; Inputs:
    ;   wMenu_Generic_EntryReturnVals - If the entry return value is Menu_NULL, then will not write the name

    ; wMenu_Temp6 = loop counter (0 to 7)
    Set8 rVBK, $01
    xor a
    ld [wMenu_Temp6], a
    ld de, Menu_Generic_VRAM_CHOICE0
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de

    .Loop1:
        ; Check if the entry's return value is Menu_NULL
        ; If so, then this entry and all the remaining entries need to be blanked out
        ld hl, wMenu_Generic_EntryReturnVals
        Get8 c, wMenu_Temp6
        ld b, $00
        add hl, bc
        ld a, [hl]
        cp Menu_NULL
        jr z, .Loop2

        ; Navigate to the name in the data table
        ld a, [wMenu_Generic_TopEntryIndex]
        add c
        ld b, a
        ld a, MUSICBUFFER_ROWSIZE
        ld c, a
        call Math_Mult
        Get16 bc, wMenu_Generic_EntryDataTable
        add hl, bc
        ld a, MUSICBUFFER_NAME
        ld e, a ; inefficient
        ld d, $00
        add hl, de

        ; Copy string to tileset
        Set16 wMenu_MainMenu_StringToTileset_Source, hl
        Set8 wMenu_MainMenu_StringToTileset_Length, MUSICBUFFER_STRINGLEN
        Do_CallForeign Menu_MainMenu_StringToTileset

        ; Set the CursorID for the corresponding entry to valid
        ld a, [wMenu_Temp6]
        add Enum_Menu_CursorTable_Generic_Choice0
        ld hl, wMenu_Generic_CursorTableValidIDs
        ld d, $00
        ld e, a
        add hl, de
        Set8 hl, $01

        ; Loop until we are done with all the entries
        ld hl, wMenu_Temp6
        inc [hl]
        ld a, [hl]
        cp (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
        jr nz, .Loop1
    ret

    .Loop2:
        ; Blank out all the remaining entries
        ld a, MUSICBUFFER_STRINGLEN
        call Menu_EmptyStringToTileset

        ; Set the CursorID for the corresponding entry to invalid
        ld a, [wMenu_Temp6]
        add Enum_Menu_CursorTable_Generic_Choice0
        ld hl, wMenu_Generic_CursorTableValidIDs
        ld d, $00
        ld e, a
        add hl, de
        ld [hl], d

        ; Loop until we are done with all the entries
        ld hl, wMenu_Temp6
        inc [hl]
        ld a, [hl]
        cp (wMenu_Generic_EntryReturnVals.End - wMenu_Generic_EntryReturnVals)
        jr nz, .Loop2
    ret

    ; $55E3
Menu_Music_PlaySong:
    ; Choose the song and play it. This function is weirdly implemented and has some minor bugs - see below

    ; If it is the very first time you choose a song, don't stop the song because when you first enter the room,
    ; no song is played. However, this is bugged because if you quit the music menu and re-open it, you will have music playing
    ; and then if you try to re-play the same song, the song won't immediately reset because you haven't stopped the song
    ld a, [wMenu_Music_FirstSongChoice]
    cp $00
    jr nz, .Continue1
    .NotFirstTime:
        ld a, [wMenu_Music_CurrentSong] ; unused command. I suspect that some commands have been commented out

        ; The implemented behaviour is that it immediately disables the currently playing song, allowing you to replay the song you are already listening to
        ; (This of course doesn't work on the very first song selection choice)
        Sound_Request_StopSong
        call System_UpdateGameNoScript

    .Continue1:
    Set8 wMenu_Music_FirstSongChoice, $00

    ; Get the return value of the selected entry, which is the songid
    ld a, [wMenu_ReturnValue]
    sub Enum_Menu_CursorTable_Generic_Choice0
    ld c, a
    ld b, $00
    ld hl, wMenu_Generic_EntryReturnVals
    add hl, bc
    ld a, [hl]

    ; Unused - This is not used later, possible due to commented out code
    ld [wMenu_Music_CurrentSong], a

    ; Play the new song
    ; Bug - This macro prevents you from replaying the same song. However, we want to be able to restart songs. That is why
    ; at the beginning of the function, the song is stopped. However, on the very first song selection, the code above is skipped
    ; due to wMenu_Music_FirstSongChoice, meaning you can't replay a song on the very first selection
    Sound_Request_StartSong a
    ret

    ; $5627
Menu_Music_SetupBottomText:
    ; Writes
    ; "Choose a Song"
    ; "A-Selects"
    ; "B-Exits"
    ; into the tilemap
    ; and hides "Done"
    xor a
    ld [rVBK], a

    Menu_SequentialTilesToTilemap WINDOW_COORD_0E_02, Menu_Music_TILEID_CHOOSEASONG, (sMenu_Music_ChooseASong.End - sMenu_Music_ChooseASong)
    Menu_SequentialTilesToTilemap WINDOW_COORD_0F_02, Menu_Music_TILEID_ASELECTS, (sMenu_Music_ASelects.End - sMenu_Music_ASelects)
    Menu_SequentialTilesToTilemap WINDOW_COORD_10_02, Menu_Music_TILEID_BEXITS, (sMenu_Music_BExits.End - sMenu_Music_BExits)

    ; Hide the "Done" tilemapping
    ld hl, WINDOW_COORD_0F_0E
    ld a, Textbox_TILEID_BLANK
    ld b, $04
    .Loop:
        ld [hl+], a
        dec b
        jr nz, .Loop
    ret


Call_003_565B:
    ld a, $03                                     ; $565B: $3E $03
    ld [wVBlank_Bank], a                                 ; $565D: $EA $E6 $C6
    ld a, $3A                                     ; $5660: $3E $3A
    ld [wVBlank_Func], a                                 ; $5662: $EA $E4 $C6
    ld a, $65                                     ; $5665: $3E $65
    ld [wVBlank_Func+1], a                                 ; $5667: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $566A: $CD $5F $09
    ld a, $75                                     ; $566D: $3E $75
    ld [wVBlank_Func], a                                 ; $566F: $EA $E4 $C6
    ld a, $65                                     ; $5672: $3E $65
    ld [wVBlank_Func+1], a                                 ; $5674: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $5677: $CD $5F $09
    ret                                           ; $567A: $C9


Jump_003_567B:
    call Frame_ClearAll
    call ScreenHide                                    ; $567E: $CD $C3 $07
    Do_CallForeign Menu_MainMenu_RestoreVRAMObjectsChars
    Cardscene_RestoreBackgroundCharsBC
    Do_CallForeign TextboxXX_Init ;In bank 0...
    call ScreenShow                                    ; $56B9: $CD $EA $07
    ret                                           ; $56BC: $C9


Call_003_56BD:
    ld a, [$CD68]                                 ; $56BD: $FA $68 $CD
    dec a                                         ; $56C0: $3D
    ld [$CC89], a                                 ; $56C1: $EA $89 $CC
    ld b, a                                       ; $56C4: $47
    ld c, $25                                     ; $56C5: $0E $25
    call Math_Mult                                    ; $56C7: $CD $CA $04
    ld bc, $A025                                  ; $56CA: $01 $25 $A0
    add hl, bc                                    ; $56CD: $09
    push hl                                       ; $56CE: $E5
    ld bc, $0022                                  ; $56CF: $01 $22 $00
    add hl, bc                                    ; $56D2: $09
    ld bc, $CD7A                                  ; $56D3: $01 $7A $CD
    LdBCIHLI                                        ; $56D8: $03
    LdBCIHLI                                        ; $56DB: $03
    pop hl                                        ; $56DC: $E1
    push hl                                       ; $56DD: $E5
    ld bc, $0025                                  ; $56DE: $01 $25 $00
    add hl, bc                                    ; $56E1: $09
    pop bc                                        ; $56E2: $C1

jr_003_56E3:
    ld a, [$CC89]                                 ; $56E3: $FA $89 $CC
    cp $CF                                        ; $56E6: $FE $CF
    ret z                                         ; $56E8: $C8

    ld d, $25                                     ; $56E9: $16 $25

jr_003_56EB:
    LdBCIHLI                                        ; $56ED: $03
    dec d                                         ; $56EE: $15
    jr nz, jr_003_56EB                            ; $56EF: $20 $FA

    ld a, [$CC89]                                 ; $56F1: $FA $89 $CC
    inc a                                         ; $56F4: $3C
    ld [$CC89], a                                 ; $56F5: $EA $89 $CC
    jr jr_003_56E3                                ; $56F8: $18 $E9

Call_003_56FA:
    ld a, $01                                     ; $56FA: $3E $01
    ld [$CD54], a                                 ; $56FC: $EA $54 $CD
    Do_CallForeign Call_004_557A
    xor a                                         ; $5707: $AF
    ld [rVBK], a                                 ; $5708: $EA $4F $FF
    ld a, $91                                     ; $570B: $3E $91
    ld [$9C29], a                                 ; $570D: $EA $29 $9C
    ld [$9C2A], a                                 ; $5710: $EA $2A $9C
    ld [$9D69], a                                 ; $5713: $EA $69 $9D
    ld [$9D6A], a                                 ; $5716: $EA $6A $9D
    ld a, $92                                     ; $5719: $3E $92
    ld hl, $9C4D                                  ; $571B: $21 $4D $9C
    ld de, $0001                                  ; $571E: $11 $01 $00
    ld c, $03                                     ; $5721: $0E $03
    call Call_003_65D2                            ; $5723: $CD $D2 $65
    ld a, $95                                     ; $5726: $3E $95
    ld [$9C51], a                                 ; $5728: $EA $51 $9C
    ld a, $97                                     ; $572B: $3E $97
    ld hl, $9C4D                                  ; $572D: $21 $4D $9C
    ld de, $0001                                  ; $5730: $11 $01 $00
    ld b, $07                                     ; $5733: $06 $07

jr_003_5735:
    push bc                                       ; $5735: $C5
    ld bc, $0016                                  ; $5736: $01 $16 $00
    add hl, bc                                    ; $5739: $09
    pop bc                                        ; $573A: $C1
    ld c, $0A                                     ; $573B: $0E $0A
    call Call_003_65D2                            ; $573D: $CD $D2 $65
    dec b                                         ; $5740: $05
    jr nz, jr_003_5735                            ; $5741: $20 $F2

    ret                                           ; $5743: $C9


Call_003_5744:
    xor a                                         ; $5744: $AF
    ld [$CC89], a                                 ; $5745: $EA $89 $CC
    xor a                                         ; $5748: $AF
    ld [rVBK], a                                 ; $5749: $EA $4F $FF
    ld a, $80                                     ; $574C: $3E $80
    ld [$9C29], a                                 ; $574E: $EA $29 $9C
    ld [$9C2A], a                                 ; $5751: $EA $2A $9C
    ld [$9D69], a                                 ; $5754: $EA $69 $9D
    ld [$9D6A], a                                 ; $5757: $EA $6A $9D
    ld a, [$CC4D]                                 ; $575A: $FA $4D $CC
    and a                                         ; $575D: $A7
    jr z, jr_003_5767                             ; $575E: $28 $07

    ld a, $91                                     ; $5760: $3E $91
    ld hl, $9C29                                  ; $5762: $21 $29 $9C
    ld [hl+], a                                   ; $5765: $22
    ld [hl+], a                                   ; $5766: $22

jr_003_5767:
    ld a, [$CC55]                                 ; $5767: $FA $55 $CC
    and a                                         ; $576A: $A7
    jr z, jr_003_5774                             ; $576B: $28 $07

    ld a, $91                                     ; $576D: $3E $91
    ld hl, $9D69                                  ; $576F: $21 $69 $9D
    ld [hl+], a                                   ; $5772: $22
    ld [hl+], a                                   ; $5773: $22

Jump_003_5774:
jr_003_5774:
    ld hl, $CD59                                  ; $5774: $21 $59 $CD
    ld a, [$CC89]                                 ; $5777: $FA $89 $CC
    ld c, a                                       ; $577A: $4F
    ld b, $00                                     ; $577B: $06 $00
    sla c                                         ; $577D: $CB $21
    add hl, bc                                    ; $577F: $09
    ld a, [hl]                                    ; $5780: $7E
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $5781: $EA $8C $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $5784: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $578C: $70
    Do_CallForeign CreatureName_CopyToDest
    ld b, $A0                                     ; $5795: $06 $A0
    ld a, [$CC89]                                 ; $5797: $FA $89 $CC
    ld c, a                                       ; $579A: $4F
    call Math_Mult                                    ; $579B: $CD $CA $04
    ld bc, $8970                                  ; $579E: $01 $70 $89
    add hl, bc                                    ; $57A1: $09
    ld a, h                                       ; $57A2: $7C
    ld [$CC46], a                                 ; $57A3: $EA $46 $CC
    ld a, l                                       ; $57A6: $7D
    ld [wMenu_MainMenu_StringToTileset_Dest], a                                 ; $57A7: $EA $45 $CC
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $57AA: $01 $91 $CD
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $57B2: $70
    ld a, $0A                                     ; $57B3: $3E $0A
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $57B5: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    xor a                                         ; $57C0: $AF
    ld [rVBK], a                                 ; $57C1: $EA $4F $FF
    ld a, [wMenu_Battle_TableRowBuffer]                                 ; $57C4: $FA $91 $CD
    cp $20                                        ; $57C7: $FE $20
    jr nz, jr_003_57EE                            ; $57C9: $20 $23

    ld a, [$CC89]                                 ; $57CB: $FA $89 $CC
    ld b, a                                       ; $57CE: $47
    ld c, $20                                     ; $57CF: $0E $20
    push de                                       ; $57D1: $D5
    call Math_Mult                                    ; $57D2: $CD $CA $04
    pop de                                        ; $57D5: $D1
    push hl                                       ; $57D6: $E5
    ld bc, $9C71                                  ; $57D7: $01 $71 $9C
    add hl, bc                                    ; $57DA: $09
    ld [hl], $80                                  ; $57DB: $36 $80
    pop bc                                        ; $57DD: $C1
    ld hl, $9C62                                  ; $57DE: $21 $62 $9C
    add hl, bc                                    ; $57E1: $09
    ld [hl], $80                                  ; $57E2: $36 $80
    ld a, $FA                                     ; $57E4: $3E $FA
    ld [wX10], a                                 ; $57E6: $EA $2E $C9
    ld [wX1], a                                 ; $57E9: $EA $2D $C9
    jr jr_003_5859                                ; $57EC: $18 $6B

jr_003_57EE:
    ld a, [$CC89]                                 ; $57EE: $FA $89 $CC
    ld b, a                                       ; $57F1: $47
    ld c, $20                                     ; $57F2: $0E $20
    call Math_Mult                                    ; $57F4: $CD $CA $04
    ld bc, $9C62                                  ; $57F7: $01 $62 $9C
    add hl, bc                                    ; $57FA: $09
    ld [hl], $90                                  ; $57FB: $36 $90
    ld a, [$CD57]                                 ; $57FD: $FA $57 $CD
    ld hl, $CC89                                  ; $5800: $21 $89 $CC
    add [hl]                                      ; $5803: $86
    ld b, a                                       ; $5804: $47
    inc b                                         ; $5805: $04
    ld hl, xInventory_Rings                                  ; $5806: $21 $18 $A1
    ld d, $0A                                     ; $5809: $16 $0A
    Battery_SetBank "XRAM Gamestate"
    Battery_On

jr_003_5818:
    ld a, [hl+]                                   ; $5818: $2A
    cp b                                          ; $5819: $B8
    jr z, jr_003_5823                             ; $581A: $28 $07

    dec d                                         ; $581C: $15
    jr nz, jr_003_5818                            ; $581D: $20 $F9

    ld a, $80                                     ; $581F: $3E $80
    jr jr_003_5831                                ; $5821: $18 $0E

jr_003_5823:
    ld a, [$CC89]                                 ; $5823: $FA $89 $CC
    ld c, a                                       ; $5826: $4F
    ld b, $00                                     ; $5827: $06 $00
    ld hl, $CC4E                                  ; $5829: $21 $4E $CC
    add hl, bc                                    ; $582C: $09
    ld [hl], $0A                                  ; $582D: $36 $0A
    ld a, $96                                     ; $582F: $3E $96

jr_003_5831:
    ld d, a                                       ; $5831: $57
    Battery_Off
    ld a, [$CC89]                                 ; $5836: $FA $89 $CC
    ld b, a                                       ; $5839: $47
    ld c, $20                                     ; $583A: $0E $20
    push de                                       ; $583C: $D5
    call Math_Mult                                    ; $583D: $CD $CA $04
    pop de                                        ; $5840: $D1
    ld bc, $9C71                                  ; $5841: $01 $71 $9C
    add hl, bc                                    ; $5844: $09
    ld [hl], d                                    ; $5845: $72
    ld hl, $CD59                                  ; $5846: $21 $59 $CD
    ld a, [$CC89]                                 ; $5849: $FA $89 $CC
    ld c, a                                       ; $584C: $4F
    ld b, $00                                     ; $584D: $06 $00
    sla c                                         ; $584F: $CB $21
    add hl, bc                                    ; $5851: $09
    inc hl                                        ; $5852: $23
    ld e, [hl]                                    ; $5853: $5E
    ld d, $00                                     ; $5854: $16 $00
    call Math_ConvertNumberToDigits                                    ; $5856: $CD $1A $04

jr_003_5859:
    ld a, [$CC89]                                 ; $5859: $FA $89 $CC
    ld b, a                                       ; $585C: $47
    ld c, $20                                     ; $585D: $0E $20
    call Math_Mult                                    ; $585F: $CD $CA $04
    ld bc, $9C6E                                  ; $5862: $01 $6E $9C
    add hl, bc                                    ; $5865: $09
    ld a, [wX10]                                 ; $5866: $FA $2E $C9
    add $86                                       ; $5869: $C6 $86
    ld [hl+], a                                   ; $586B: $22
    ld a, [wX1]                                 ; $586C: $FA $2D $C9
    add $86                                       ; $586F: $C6 $86
    ld [hl], a                                    ; $5871: $77
    ld hl, $CC89                                  ; $5872: $21 $89 $CC
    inc [hl]                                      ; $5875: $34
    ld a, $07                                     ; $5876: $3E $07
    cp [hl]                                       ; $5878: $BE
    jp nz, Jump_003_5774                          ; $5879: $C2 $74 $57

    ld bc, $52C0                                  ; $587C: $01 $C0 $52
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $5884: $70
    ld bc, $8DD0                                  ; $5885: $01 $D0 $8D
    FSet16 wMenu_MainMenu_StringToTileset_Dest, bc                                    ; $588D: $70
    ld a, $11                                     ; $588E: $3E $11
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $5890: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    ld bc, $52D1                                  ; $589B: $01 $D1 $52
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $58A3: $70
    ld a, $0F                                     ; $58A4: $3E $0F
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $58A6: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    xor a                                         ; $58B1: $AF
    ld [rVBK], a                                 ; $58B2: $EA $4F $FF
    ld a, $DD                                     ; $58B5: $3E $DD
    ld hl, $9DA1                                  ; $58B7: $21 $A1 $9D
    ld de, $0001                                  ; $58BA: $11 $01 $00
    ld c, $11                                     ; $58BD: $0E $11
    call Call_003_65D2                            ; $58BF: $CD $D2 $65
    ld hl, $9DC1                                  ; $58C2: $21 $C1 $9D
    ld c, $0F                                     ; $58C5: $0E $0F
    call Call_003_65D2                            ; $58C7: $CD $D2 $65
    ret                                           ; $58CA: $C9


Jump_003_58CB:
jr_003_58CB:
    Do_CallForeign Menu_GoClobber
    call System_UpdateGameNoScript                                    ; $58D3: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $58D6: $FA $A7 $CC
    cp $FF                                        ; $58D9: $FE $FF
    jr z, jr_003_58CB                             ; $58DB: $28 $EE

    ld [$CD74], a                                 ; $58DD: $EA $74 $CD
    and a                                         ; $58E0: $A7
    jr nz, jr_003_5939                            ; $58E1: $20 $56

jr_003_58E3:
    call ScreenHide                                    ; $58E3: $CD $C3 $07
    call Call_003_6400                            ; $58E6: $CD $00 $64
    call Call_003_5744                            ; $58E9: $CD $44 $57

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, Creatur0, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE

    call ScreenShow                                    ; $5933: $CD $EA $07
    jp Jump_003_58CB                              ; $5936: $C3 $CB $58


jr_003_5939:
    cp $08                                        ; $5939: $FE $08
    jr z, jr_003_58E3                             ; $593B: $28 $A6

    cp $FE                                        ; $593D: $FE $FE
    jr nz, jr_003_5944                            ; $593F: $20 $03

    jp Jump_003_567B                              ; $5941: $C3 $7B $56


jr_003_5944:
    call Call_003_5BC3                            ; $5944: $CD $C3 $5B
    ld a, [$CD69]                                 ; $5947: $FA $69 $CD
    cp $00                                        ; $594A: $FE $00
    jp z, Jump_003_5A63                           ; $594C: $CA $63 $5A

    cp $03                                        ; $594F: $FE $03
    jr z, jr_003_595B                             ; $5951: $28 $08

    cp $01                                        ; $5953: $FE $01
    jp nz, Jump_003_567B                          ; $5955: $C2 $7B $56

    call Call_003_64B1                            ; $5958: $CD $B1 $64

jr_003_595B:
    call Call_003_565B                            ; $595B: $CD $5B $56

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, [$CD74], Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE
    ;CD74 to clarify TODO

    Menu_TextSetup $01, $8DD0, $9DA1, .End, sWhichRingDoYou_Act
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8EE0, $9DC1, .End, sWantToActOn
    Do_CallForeign Call_003_4260
    jp Jump_003_58CB                              ; $5A60: $C3 $CB $58


Jump_003_5A63:

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE

    jp Jump_003_58CB                              ; $5AAB: $C3 $CB $58

Call_003_5AAE::
    Frame_Init
    call ScreenHide                                    ; $5AB9: $CD $C3 $07
    xor a                                         ; $5ABC: $AF
    ld [rWY], a                                 ; $5ABD: $EA $4A $FF
    ld a, $07                                     ; $5AC0: $3E $07
    ld [rWX], a                                 ; $5AC2: $EA $4B $FF
    Do_CallForeign Menu_MainMenu_BackupVRAMObjectsChars
    Do_CallForeign Cardscene_BackupBackgroundCharsBC
    ld bc, $5275                                  ; $5AD5: $01 $75 $52
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $5ADD: $70
    ld bc, $8860                                  ; $5ADE: $01 $60 $88
    FSet16 wMenu_MainMenu_StringToTileset_Dest, bc                                    ; $5AE6: $70
    ld a, $0A                                     ; $5AE7: $3E $0A
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $5AE9: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    ld a, $01                                     ; $5AF4: $3E $01
    ld [wVBlank_DestVBK], a                                 ; $5AF6: $EA $EB $C6
    ld bc, $4100                                  ; $5AF9: $01 $00 $41
    FSet16 wVBlank_SourceAddress, bc                                    ; $5B01: $70
    ld bc, $8900                                  ; $5B02: $01 $00 $89
    FSet16 wVBlank_DestAddress, bc                                    ; $5B0A: $70
    ld e, $06                                     ; $5B0B: $1E $06
    ld hl, Interrupt_VBlankFunc_CopyTile                                  ; $5B0D: $21 $49 $29
    call CallForeign                                    ; $5B10: $CD $73 $07
    ld bc, $41D0                                  ; $5B13: $01 $D0 $41
    FSet16 wVBlank_SourceAddress, bc                                    ; $5B1B: $70
    ld hl, Interrupt_VBlankFunc_CopyTile                                  ; $5B1C: $21 $49 $29
    call CallForeign                                    ; $5B1F: $CD $73 $07
    ld bc, $52E0                                  ; $5B22: $01 $E0 $52
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $5B2A: $70
    ld bc, $8920                                  ; $5B2B: $01 $20 $89
    FSet16 wMenu_MainMenu_StringToTileset_Dest, bc                                    ; $5B33: $70
    ld a, $05                                     ; $5B34: $3E $05
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $5B36: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset

Jump_003_5B41:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [xRingCount]                                 ; $5B4E: $FA $22 $A1
    ld [$CD58], a                                 ; $5B51: $EA $58 $CD
    Battery_Off
    ld a, $01                                     ; $5B58: $3E $01
    ld [$CC4E], a                                 ; $5B5A: $EA $4E $CC
    ld hl, $CC56                                  ; $5B5D: $21 $56 $CC
    ld [hl+], a                                   ; $5B60: $22
    ld [hl+], a                                   ; $5B61: $22
    ld [hl+], a                                   ; $5B62: $22
    ld [hl+], a                                   ; $5B63: $22

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, Creatur0, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE

    call Call_003_56FA                            ; $5BAB: $CD $FA $56
    call Call_003_6400                            ; $5BAE: $CD $00 $64
    call Call_003_5744                            ; $5BB1: $CD $44 $57
    call ScreenShow                                    ; $5BB4: $CD $EA $07
    jp Jump_003_58CB                              ; $5BB7: $C3 $CB $58


Jump_003_5BBA:
    call System_UpdateGameNoScript                                    ; $5BBA: $CD $5F $09
    call ScreenHide                                    ; $5BBD: $CD $C3 $07
    jp Jump_003_5B41                              ; $5BC0: $C3 $41 $5B


Call_003_5BC3:
    xor a                                         ; $5BC3: $AF
    ld [$CD69], a                                 ; $5BC4: $EA $69 $CD
    call Call_003_565B                            ; $5BC7: $CD $5B $56
    ld a, [wMenu_CursorID]                                 ; $5BCA: $FA $81 $CD
    ld hl, $CD57                                  ; $5BCD: $21 $57 $CD
    add [hl]                                      ; $5BD0: $86
    ld [$CD68], a                                 ; $5BD1: $EA $68 $CD
    ld a, [wMenu_CursorID]                                 ; $5BD4: $FA $81 $CD
    ld c, a                                       ; $5BD7: $4F
    ld b, $00                                     ; $5BD8: $06 $00
    ld hl, $CC4D                                  ; $5BDA: $21 $4D $CC
    add hl, bc                                    ; $5BDD: $09
    ld a, $0A                                     ; $5BDE: $3E $0A
    cp [hl]                                       ; $5BE0: $BE
    jp nz, Jump_003_5DC4                          ; $5BE1: $C2 $C4 $5D

    Menu_TextSetup $01, $8EE0, $9DA1, .End, sDeEquipThisOr
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8FE0, $9DC1, .End, sAllYourRings
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $90D0, $9E02, .End, sThis_____All
    Do_CallForeign Call_003_4260

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, ThisDest, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE


jr_003_5D42:
    Do_CallForeign Menu_GoClobber
    call System_UpdateGameNoScript                                    ; $5D4A: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $5D4D: $FA $A7 $CC
    cp $FF                                        ; $5D50: $FE $FF
    jr z, jr_003_5D42                             ; $5D52: $28 $EE

    ld a, [wMenu_ReturnValue]                                 ; $5D54: $FA $A7 $CC
    cp $0C                                        ; $5D57: $FE $0C
    jr z, jr_003_5D65                             ; $5D59: $28 $0A

    cp $FE                                        ; $5D5B: $FE $FE
    jr nz, jr_003_5D85                            ; $5D5D: $20 $26

    ld a, $03                                     ; $5D5F: $3E $03
    ld [$CD69], a                                 ; $5D61: $EA $69 $CD
    ret                                           ; $5D64: $C9


jr_003_5D65:
    ld hl, xInventory_Rings                                  ; $5D65: $21 $18 $A1
    ld d, $0A                                     ; $5D68: $16 $0A
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, $FF                                     ; $5D77: $3E $FF

jr_003_5D79:
    ld [hl+], a                                   ; $5D79: $22
    dec d                                         ; $5D7A: $15
    jr nz, jr_003_5D79                            ; $5D7B: $20 $FC

    Battery_Off
    pop hl                                        ; $5D81: $E1
    jp Jump_003_5BBA                              ; $5D82: $C3 $BA $5B


jr_003_5D85:
    ld a, $01                                     ; $5D85: $3E $01
    ld [$CD69], a                                 ; $5D87: $EA $69 $CD
    ld a, [$CD68]                                 ; $5D8A: $FA $68 $CD
    ld [$CD75], a                                 ; $5D8D: $EA $75 $CD
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld hl, xInventory_Rings                                  ; $5D9D: $21 $18 $A1
    ld a, [$CD68]                                 ; $5DA0: $FA $68 $CD
    ld b, a                                       ; $5DA3: $47
    ld d, $0A                                     ; $5DA4: $16 $0A

jr_003_5DA6:
    dec d                                         ; $5DA6: $15
    ld a, [hl+]                                   ; $5DA7: $2A
    cp b                                          ; $5DA8: $B8
    jr nz, jr_003_5DA6                            ; $5DA9: $20 $FB

    ld b, h                                       ; $5DAB: $44
    ld c, l                                       ; $5DAC: $4D
    dec bc                                        ; $5DAD: $0B
    ld a, $FF                                     ; $5DAE: $3E $FF
    ld [bc], a                                    ; $5DB0: $02
    inc d                                         ; $5DB1: $14

jr_003_5DB2:
    dec d                                         ; $5DB2: $15
    jr z, jr_003_5DBA                             ; $5DB3: $28 $05

    LdBCIHLI                                        ; $5DB7: $03
    jr jr_003_5DB2                                ; $5DB8: $18 $F8

jr_003_5DBA:
    ld a, $FF                                     ; $5DBA: $3E $FF
    ld [$A121], a                                 ; $5DBC: $EA $21 $A1
    Battery_Off
    ret                                           ; $5DC3: $C9


Jump_003_5DC4:
    Menu_TextSetup $01, $8EE0, $9DA1, .End, sDoYouWantTo
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8FC0, $9DC2, .End, sEquipOrDestroy
    Do_CallForeign Call_003_4260


    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, Equip, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE


jr_003_5EC5:
    Do_CallForeign Menu_GoClobber
    call System_UpdateGameNoScript                                    ; $5ECD: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $5ED0: $FA $A7 $CC
    cp $FF                                        ; $5ED3: $FE $FF
    jr z, jr_003_5EC5                             ; $5ED5: $28 $EE

    cp $FE                                        ; $5ED7: $FE $FE
    jr nz, jr_003_5EE1                            ; $5ED9: $20 $06

Jump_003_5EDB:
    ld a, $03                                     ; $5EDB: $3E $03
    ld [$CD69], a                                 ; $5EDD: $EA $69 $CD
    ret                                           ; $5EE0: $C9


jr_003_5EE1:
    cp $09                                        ; $5EE1: $FE $09
    jp z, Jump_003_6213                           ; $5EE3: $CA $13 $62

    call Call_003_565B                            ; $5EE6: $CD $5B $56
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [xRingCount]                                 ; $5EF6: $FA $22 $A1
    ld b, a                                       ; $5EF9: $47
    Battery_Off
    ld a, b                                       ; $5EFE: $78
    cp $0A                                        ; $5EFF: $FE $0A
    jp nc, Jump_003_602B                          ; $5F01: $D2 $2B $60

    Menu_TextSetup $01, $8EE0, $9DA1, .End, sYouHaveTooFew
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8FE0, $9DC1, .End, sRingsToNeedOne
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $90F0, $9DE1, .End, sDestroyed
    Do_CallForeign Call_003_4260

jr_003_601B:
    call System_UpdateGameNoScript                                    ; $601B: $CD $5F $09
    ld a, [wCntDown]                                 ; $601E: $FA $32 $C9
    and $03                                       ; $6021: $E6 $03
    jr z, jr_003_601B                             ; $6023: $28 $F6

    call System_UpdateGameNoScript                                    ; $6025: $CD $5F $09
    jp Jump_003_61A2                              ; $6028: $C3 $A2 $61


Jump_003_602B:
    Menu_TextSetup $01, $8EE0, $9DA1, .End, sYouCantRestore
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8FF0, $9DC1, .End, sADestroyedRing
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $9100, $9E02, .End, sDestroy__Cancel
    Do_CallForeign Call_003_4260

    Do_Menu_Init Menu_CursorTable_Equip, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, AllCancl, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE

jr_003_6189:
    Do_CallForeign Menu_GoClobber
    call System_UpdateGameNoScript                                    ; $6191: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $6194: $FA $A7 $CC
    cp $FF                                        ; $6197: $FE $FF
    jr z, jr_003_6189                             ; $6199: $28 $EE

    ld a, [wMenu_ReturnValue]                                 ; $619B: $FA $A7 $CC
    cp $0B                                        ; $619E: $FE $0B
    jr z, jr_003_61A8                             ; $61A0: $28 $06

Jump_003_61A2:
    ld a, $03                                     ; $61A2: $3E $03
    ld [$CD69], a                                 ; $61A4: $EA $69 $CD
    ret                                           ; $61A7: $C9


jr_003_61A8:
    call System_UpdateGameNoScript                                    ; $61A8: $CD $5F $09
    xor a                                         ; $61AB: $AF
    ld hl, $CD7A                                  ; $61AC: $21 $7A $CD
    ld [hl+], a                                   ; $61AF: $22
    ld [hl+], a                                   ; $61B0: $22
    Battery_SetBank "XRAM Creatures"
    Battery_On
    call Call_003_56BD                            ; $61BE: $CD $BD $56
    ld a, $FF                                     ; $61C1: $3E $FF
    ld d, $25                                     ; $61C3: $16 $25
    ld hl, $BE10                                  ; $61C5: $21 $10 $BE

jr_003_61C8:
    ld [hl+], a                                   ; $61C8: $22
    dec d                                         ; $61C9: $15
    jr nz, jr_003_61C8                            ; $61CA: $20 $FC

    Battery_SetBank "XRAM Gamestate"
    ld hl, xRingCount                                  ; $61D4: $21 $22 $A1
    dec [hl]                                      ; $61D7: $35
    ld a, [$CD68]                                 ; $61D8: $FA $68 $CD
    ld b, a                                       ; $61DB: $47
    ld d, $0A                                     ; $61DC: $16 $0A
    ld hl, xInventory_Rings                                  ; $61DE: $21 $18 $A1

jr_003_61E1:
    ld a, [hl]                                    ; $61E1: $7E
    cp $FF                                        ; $61E2: $FE $FF
    jr z, jr_003_61EB                             ; $61E4: $28 $05

    cp b                                          ; $61E6: $B8
    jr c, jr_003_61EB                             ; $61E7: $38 $02

    dec a                                         ; $61E9: $3D
    ld [hl], a                                    ; $61EA: $77

jr_003_61EB:
    inc hl                                        ; $61EB: $23
    dec d                                         ; $61EC: $15
    jr nz, jr_003_61E1                            ; $61ED: $20 $F2

    ld b, $00                                     ; $61EF: $06 $00
    ld a, [$CD7A]                                 ; $61F1: $FA $7A $CD
    and a                                         ; $61F4: $A7
    jr z, jr_003_61FD                             ; $61F5: $28 $06

    ld c, a                                       ; $61F7: $4F
    ld hl, xInventory_Relics                                  ; $61F8: $21 $19 $A0
    add hl, bc                                    ; $61FB: $09
    inc [hl]                                      ; $61FC: $34

jr_003_61FD:
    ld a, [$CD7B]                                 ; $61FD: $FA $7B $CD
    and a                                         ; $6200: $A7
    jr z, jr_003_6209                             ; $6201: $28 $06

    ld c, a                                       ; $6203: $4F
    ld hl, xInventory_Relics                                  ; $6204: $21 $19 $A0
    add hl, bc                                    ; $6207: $09
    inc [hl]                                      ; $6208: $34

jr_003_6209:
    Battery_Off
    ld a, $02                                     ; $620D: $3E $02
    ld [$CD69], a                                 ; $620F: $EA $69 $CD
    ret                                           ; $6212: $C9


Jump_003_6213:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld hl, xInventory_Rings                                  ; $6220: $21 $18 $A1
    ld bc, $CD6A                                  ; $6223: $01 $6A $CD
    ld d, $0A                                     ; $6226: $16 $0A

jr_003_6228:
    LdBCIHLI                                        ; $622A: $03
    cp $FF                                        ; $622B: $FE $FF
    jp z, Jump_003_63EC                           ; $622D: $CA $EC $63

    dec d                                         ; $6230: $15
    jr nz, jr_003_6228                            ; $6231: $20 $F5

    Battery_Off
    call Call_003_565B                            ; $6237: $CD $5B $56
    Menu_TextSetup $01, $8DD0, $9DA1, .End, sWhichRingDoYou_Replace
    Do_CallForeign Call_003_4260
    Menu_TextSetup $01, $8F40, $9DC1, .End, sWantToReplace
    Do_CallForeign Call_003_4260
    xor a                                         ; $62F4: $AF
    ld [$CC89], a                                 ; $62F5: $EA $89 $CC

Jump_003_62F8:
    ld a, [$CC89]                                 ; $62F8: $FA $89 $CC
    ld c, a                                       ; $62FB: $4F
    ld b, $00                                     ; $62FC: $06 $00
    ld hl, $CD6A                                  ; $62FE: $21 $6A $CD
    add hl, bc                                    ; $6301: $09
    ld a, [hl]                                    ; $6302: $7E
    dec a                                         ; $6303: $3D
    ld c, a                                       ; $6304: $4F
    ld b, $25                                     ; $6305: $06 $25
    call Math_Mult                                    ; $6307: $CD $CA $04
    ld bc, $A025                                  ; $630A: $01 $25 $A0
    add hl, bc                                    ; $630D: $09
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [hl]                                    ; $631B: $7E
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $631C: $EA $8C $CD
    Battery_Off
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $6323: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $632B: $70
    Do_CallForeign CreatureName_CopyToDest
    Menu_TextSetup $01, $9040, $9E05, $0A, wMenu_Battle_TableRowBuffer
    Do_CallForeign Call_003_4260

jr_003_6391:
    ld a, [wCntDown]                                 ; $6391: $FA $32 $C9
    and $F3                                       ; $6394: $E6 $F3
    jr z, jr_003_6391                             ; $6396: $28 $F9

    bit 0, a                                      ; $6398: $CB $47
    jr nz, jr_003_63C3                            ; $639A: $20 $27

    bit 1, a                                      ; $639C: $CB $4F
    jp nz, Jump_003_5EDB                          ; $639E: $C2 $DB $5E

    and $90                                       ; $63A1: $E6 $90
    jr z, jr_003_63B4                             ; $63A3: $28 $0F

    ld hl, $CC89                                  ; $63A5: $21 $89 $CC
    dec [hl]                                      ; $63A8: $35
    ld a, $FF                                     ; $63A9: $3E $FF
    cp [hl]                                       ; $63AB: $BE
    jp nz, Jump_003_62F8                          ; $63AC: $C2 $F8 $62

    ld [hl], $09                                  ; $63AF: $36 $09
    jp Jump_003_62F8                              ; $63B1: $C3 $F8 $62


jr_003_63B4:
    ld hl, $CC89                                  ; $63B4: $21 $89 $CC
    inc [hl]                                      ; $63B7: $34
    ld a, $0A                                     ; $63B8: $3E $0A
    cp [hl]                                       ; $63BA: $BE
    jp nz, Jump_003_62F8                          ; $63BB: $C2 $F8 $62

    ld [hl], $00                                  ; $63BE: $36 $00
    jp Jump_003_62F8                              ; $63C0: $C3 $F8 $62


jr_003_63C3:
    ld a, [$CC89]                                 ; $63C3: $FA $89 $CC
    ld c, a                                       ; $63C6: $4F
    ld b, $00                                     ; $63C7: $06 $00
    ld hl, xInventory_Rings                                  ; $63C9: $21 $18 $A1
    add hl, bc                                    ; $63CC: $09
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]                                    ; $63DA: $7E
    ld [$CD75], a                                 ; $63DB: $EA $75 $CD
    ld a, [$CD68]                                 ; $63DE: $FA $68 $CD
    ld [hl], a                                    ; $63E1: $77
    Battery_Off
    ld a, $01                                     ; $63E6: $3E $01
    ld [$CD69], a                                 ; $63E8: $EA $69 $CD
    ret                                           ; $63EB: $C9


Jump_003_63EC:
    ld a, $FF                                     ; $63EC: $3E $FF
    ld [$CD75], a                                 ; $63EE: $EA $75 $CD
    dec hl                                        ; $63F1: $2B
    ld a, [$CD68]                                 ; $63F2: $FA $68 $CD
    ld [hl], a                                    ; $63F5: $77
    Battery_Off
    ld a, $01                                     ; $63FA: $3E $01
    ld [$CD69], a                                 ; $63FC: $EA $69 $CD
    ret                                           ; $63FF: $C9


Call_003_6400:
    xor a                                         ; $6400: $AF
    ld hl, $CC4D                                  ; $6401: $21 $4D $CC
    ld d, $09                                     ; $6404: $16 $09

jr_003_6406:
    ld [hl+], a                                   ; $6406: $22
    dec d                                         ; $6407: $15
    jr nz, jr_003_6406                            ; $6408: $20 $FC

    ld a, $FF                                     ; $640A: $3E $FF
    ld hl, $CD59                                  ; $640C: $21 $59 $CD
    ld d, $0E                                     ; $640F: $16 $0E

jr_003_6411:
    ld [hl+], a                                   ; $6411: $22
    dec d                                         ; $6412: $15
    jr nz, jr_003_6411                            ; $6413: $20 $FC

    ld a, [wMenu_CursorID]                                 ; $6415: $FA $81 $CD
    cp $00                                        ; $6418: $FE $00
    jr z, jr_003_6426                             ; $641A: $28 $0A

    cp $08                                        ; $641C: $FE $08
    jr z, jr_003_6491                             ; $641E: $28 $71

    xor a                                         ; $6420: $AF
    ld [$CD57], a                                 ; $6421: $EA $57 $CD
    jr jr_003_642D                                ; $6424: $18 $07

jr_003_6426:
    ld hl, $CD57                                  ; $6426: $21 $57 $CD
    ld a, [hl]                                    ; $6429: $7E
    sub $07                                       ; $642A: $D6 $07
    ld [hl], a                                    ; $642C: $77

jr_003_642D:
    xor a                                         ; $642D: $AF
    ld [$CC89], a                                 ; $642E: $EA $89 $CC
    ld [$CD67], a                                 ; $6431: $EA $67 $CD
    ld de, $CD59                                  ; $6434: $11 $59 $CD
    Battery_SetBank "XRAM Creatures"
    Battery_On

jr_003_6444:
    ld hl, $CD67                                  ; $6444: $21 $67 $CD
    inc [hl]                                      ; $6447: $34
    ld a, [$CD57]                                 ; $6448: $FA $57 $CD
    ld hl, $CC89                                  ; $644B: $21 $89 $CC
    add [hl]                                      ; $644E: $86
    ld b, a                                       ; $644F: $47
    ld c, $25                                     ; $6450: $0E $25
    push de                                       ; $6452: $D5
    call Math_Mult                                    ; $6453: $CD $CA $04
    pop de                                        ; $6456: $D1
    ld bc, $A025                                  ; $6457: $01 $25 $A0
    add hl, bc                                    ; $645A: $09
    ld a, [hl+]                                   ; $645B: $2A
    inc hl                                        ; $645C: $23
    ld [de], a                                    ; $645D: $12
    inc de                                        ; $645E: $13
    ld a, [hl]                                    ; $645F: $7E
    ld [de], a                                    ; $6460: $12
    inc de                                        ; $6461: $13
    ld hl, $CC89                                  ; $6462: $21 $89 $CC
    inc [hl]                                      ; $6465: $34
    ld a, [hl]                                    ; $6466: $7E
    cp $07                                        ; $6467: $FE $07
    jr z, jr_003_6476                             ; $6469: $28 $0B

    ld hl, $CD57                                  ; $646B: $21 $57 $CD
    add [hl]                                      ; $646E: $86
    ld b, a                                       ; $646F: $47
    ld a, [$CD58]                                 ; $6470: $FA $58 $CD
    cp b                                          ; $6473: $B8
    jr nz, jr_003_6444                            ; $6474: $20 $CE

jr_003_6476:
    ld a, [$CD57]                                 ; $6476: $FA $57 $CD
    ld [$CC4D], a                                 ; $6479: $EA $4D $CC
    ld a, [$CD58]                                 ; $647C: $FA $58 $CD
    ld b, a                                       ; $647F: $47
    ld a, [$CD57]                                 ; $6480: $FA $57 $CD
    ld hl, $CD67                                  ; $6483: $21 $67 $CD
    add [hl]                                      ; $6486: $86
    cp b                                          ; $6487: $B8
    jr nc, jr_003_649F                            ; $6488: $30 $15

    ld a, $01                                     ; $648A: $3E $01
    ld [$CC55], a                                 ; $648C: $EA $55 $CC
    jr jr_003_649F                                ; $648F: $18 $0E

jr_003_6491:
    ld hl, $CD57                                  ; $6491: $21 $57 $CD
    ld a, [hl]                                    ; $6494: $7E
    add $07                                       ; $6495: $C6 $07
    ld [hl], a                                    ; $6497: $77
    ld a, $01                                     ; $6498: $3E $01
    ld [$CC4D], a                                 ; $649A: $EA $4D $CC
    jr jr_003_642D                                ; $649D: $18 $8E

jr_003_649F:
    Battery_Off
    ld hl, $CC4E                                  ; $64A3: $21 $4E $CC
    ld a, [$CD67]                                 ; $64A6: $FA $67 $CD
    ld d, a                                       ; $64A9: $57
    ld a, $01                                     ; $64AA: $3E $01

jr_003_64AC:
    ld [hl+], a                                   ; $64AC: $22
    dec d                                         ; $64AD: $15
    jr nz, jr_003_64AC                            ; $64AE: $20 $FC

    ret                                           ; $64B0: $C9


Call_003_64B1:
    ld a, [$CD75]                                 ; $64B1: $FA $75 $CD
    cp $FF                                        ; $64B4: $FE $FF
    jr z, jr_003_64EB                             ; $64B6: $28 $33

    ld b, a                                       ; $64B8: $47
    ld a, [$CD57]                                 ; $64B9: $FA $57 $CD
    cp b                                          ; $64BC: $B8
    jr nc, jr_003_64EB                            ; $64BD: $30 $2C

    jr z, jr_003_64C6                             ; $64BF: $28 $05

    add $07                                       ; $64C1: $C6 $07
    cp b                                          ; $64C3: $B8
    jr c, jr_003_64EB                             ; $64C4: $38 $25

jr_003_64C6:
    ld a, [$CD75]                                 ; $64C6: $FA $75 $CD
    ld hl, $CD57                                  ; $64C9: $21 $57 $CD
    sub [hl]                                      ; $64CC: $96
    ld c, a                                       ; $64CD: $4F
    ld b, $00                                     ; $64CE: $06 $00
    ld hl, $CC4D                                  ; $64D0: $21 $4D $CC
    add hl, bc                                    ; $64D3: $09
    ld [hl], $01                                  ; $64D4: $36 $01
    ld a, [$CD57]                                 ; $64D6: $FA $57 $CD
    ld b, a                                       ; $64D9: $47
    ld a, [$CD75]                                 ; $64DA: $FA $75 $CD
    dec a                                         ; $64DD: $3D
    sub b                                         ; $64DE: $90
    ld c, a                                       ; $64DF: $4F
    ld b, $20                                     ; $64E0: $06 $20
    call Math_Mult                                    ; $64E2: $CD $CA $04
    ld bc, $9C71                                  ; $64E5: $01 $71 $9C
    add hl, bc                                    ; $64E8: $09
    jr jr_003_64EE                                ; $64E9: $18 $03

jr_003_64EB:
    ld hl, $0000                                  ; $64EB: $21 $00 $00

jr_003_64EE:
    ld a, h                                       ; $64EE: $7C
    ld [$CD77], a                                 ; $64EF: $EA $77 $CD
    ld a, l                                       ; $64F2: $7D
    ld [$CD76], a                                 ; $64F3: $EA $76 $CD
    ld a, [$CD68]                                 ; $64F6: $FA $68 $CD
    ld hl, $CD75                                  ; $64F9: $21 $75 $CD
    cp [hl]                                       ; $64FC: $BE
    jr z, jr_003_650C                             ; $64FD: $28 $0D

    ld hl, $CD57                                  ; $64FF: $21 $57 $CD
    sub [hl]                                      ; $6502: $96
    ld c, a                                       ; $6503: $4F
    ld b, $00                                     ; $6504: $06 $00
    ld hl, $CC4D                                  ; $6506: $21 $4D $CC
    add hl, bc                                    ; $6509: $09
    ld [hl], $0A                                  ; $650A: $36 $0A

jr_003_650C:
    ld a, [$CD57]                                 ; $650C: $FA $57 $CD
    ld b, a                                       ; $650F: $47
    ld a, [$CD68]                                 ; $6510: $FA $68 $CD
    dec a                                         ; $6513: $3D
    sub b                                         ; $6514: $90
    ld c, a                                       ; $6515: $4F
    ld b, $20                                     ; $6516: $06 $20
    call Math_Mult                                    ; $6518: $CD $CA $04
    ld bc, $9C71                                  ; $651B: $01 $71 $9C
    add hl, bc                                    ; $651E: $09
    ld a, h                                       ; $651F: $7C
    ld [$CD79], a                                 ; $6520: $EA $79 $CD
    ld a, l                                       ; $6523: $7D
    ld [$CD78], a                                 ; $6524: $EA $78 $CD
    ld a, $03                                     ; $6527: $3E $03
    ld [wVBlank_Bank], a                                 ; $6529: $EA $E6 $C6
    ld a, $AF                                     ; $652C: $3E $AF
    ld [wVBlank_Func], a                                 ; $652E: $EA $E4 $C6
    ld a, $65                                     ; $6531: $3E $65
    ld [wVBlank_Func+1], a                                 ; $6533: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6536: $CD $5F $09
    ret                                           ; $6539: $C9


    xor a                                         ; $653A: $AF
    ld [rVBK], a                                 ; $653B: $EA $4F $FF
    ld a, $80                                     ; $653E: $3E $80
    ld hl, $9DA1                                  ; $6540: $21 $A1 $9D
    ld [hl+], a                                   ; $6543: $22
    ld [hl+], a                                   ; $6544: $22
    ld [hl+], a                                   ; $6545: $22
    ld [hl+], a                                   ; $6546: $22
    ld [hl+], a                                   ; $6547: $22
    ld [hl+], a                                   ; $6548: $22
    ld [hl+], a                                   ; $6549: $22
    ld [hl+], a                                   ; $654A: $22
    ld [hl+], a                                   ; $654B: $22
    ld [hl+], a                                   ; $654C: $22
    ld [hl+], a                                   ; $654D: $22
    ld [hl+], a                                   ; $654E: $22
    ld [hl+], a                                   ; $654F: $22
    ld [hl+], a                                   ; $6550: $22
    ld [hl+], a                                   ; $6551: $22
    ld [hl+], a                                   ; $6552: $22
    ld [hl+], a                                   ; $6553: $22
    ld [hl+], a                                   ; $6554: $22
    ld hl, $9DC1                                  ; $6555: $21 $C1 $9D
    ld [hl+], a                                   ; $6558: $22
    ld [hl+], a                                   ; $6559: $22
    ld [hl+], a                                   ; $655A: $22
    ld [hl+], a                                   ; $655B: $22
    ld [hl+], a                                   ; $655C: $22
    ld [hl+], a                                   ; $655D: $22
    ld [hl+], a                                   ; $655E: $22
    ld [hl+], a                                   ; $655F: $22
    ld [hl+], a                                   ; $6560: $22
    ld [hl+], a                                   ; $6561: $22
    ld [hl+], a                                   ; $6562: $22
    ld [hl+], a                                   ; $6563: $22
    ld [hl+], a                                   ; $6564: $22
    ld [hl+], a                                   ; $6565: $22
    ld [hl+], a                                   ; $6566: $22
    ld [hl+], a                                   ; $6567: $22
    ld [hl+], a                                   ; $6568: $22
    ld [hl+], a                                   ; $6569: $22
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $6571: $EA $E5 $C6
    ret                                           ; $6574: $C9


    xor a                                         ; $6575: $AF
    ld [rVBK], a                                 ; $6576: $EA $4F $FF
    ld a, $80                                     ; $6579: $3E $80
    ld hl, $9E02                                  ; $657B: $21 $02 $9E
    ld [hl+], a                                   ; $657E: $22
    ld [hl+], a                                   ; $657F: $22
    ld [hl+], a                                   ; $6580: $22
    ld [hl+], a                                   ; $6581: $22
    ld [hl+], a                                   ; $6582: $22
    ld [hl+], a                                   ; $6583: $22
    ld [hl+], a                                   ; $6584: $22
    ld [hl+], a                                   ; $6585: $22
    ld [hl+], a                                   ; $6586: $22
    ld [hl+], a                                   ; $6587: $22
    ld [hl+], a                                   ; $6588: $22
    ld [hl+], a                                   ; $6589: $22
    ld [hl+], a                                   ; $658A: $22
    ld [hl+], a                                   ; $658B: $22
    ld [hl+], a                                   ; $658C: $22
    ld [hl+], a                                   ; $658D: $22
    ld [hl+], a                                   ; $658E: $22
    ld hl, $9DE1                                  ; $658F: $21 $E1 $9D
    ld [hl+], a                                   ; $6592: $22
    ld [hl+], a                                   ; $6593: $22
    ld [hl+], a                                   ; $6594: $22
    ld [hl+], a                                   ; $6595: $22
    ld [hl+], a                                   ; $6596: $22
    ld [hl+], a                                   ; $6597: $22
    ld [hl+], a                                   ; $6598: $22
    ld [hl+], a                                   ; $6599: $22
    ld [hl+], a                                   ; $659A: $22
    ld [hl+], a                                   ; $659B: $22
    ld [hl+], a                                   ; $659C: $22
    ld [hl+], a                                   ; $659D: $22
    ld [hl+], a                                   ; $659E: $22
    ld [hl+], a                                   ; $659F: $22
    ld [hl+], a                                   ; $65A0: $22
    ld [hl+], a                                   ; $65A1: $22
    ld [hl+], a                                   ; $65A2: $22
    ld [hl+], a                                   ; $65A3: $22
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $65AB: $EA $E5 $C6
    ret                                           ; $65AE: $C9


    xor a                                         ; $65AF: $AF
    ld [rVBK], a                                 ; $65B0: $EA $4F $FF
    FGet16 hl, $CD78                                  ; $65B3: $21 $78 $CD
    ld [hl], $96                                  ; $65B9: $36 $96
    FGet16 hl, $CD76                                  ; $65BB: $21 $76 $CD
    ld a, h                                       ; $65C1: $7C
    or l                                          ; $65C2: $B5
    jr z, jr_003_65C7                             ; $65C3: $28 $02

    ld [hl], $80                                  ; $65C5: $36 $80

jr_003_65C7:
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $65CE: $EA $E5 $C6
    ret                                           ; $65D1: $C9


Call_003_65D2:
jr_003_65D2:
    ld [hl], a                                    ; $65D2: $77
    add hl, de                                    ; $65D3: $19
    inc a                                         ; $65D4: $3C
    dec c                                         ; $65D5: $0D
    jr nz, jr_003_65D2                            ; $65D6: $20 $FA

    ret                                           ; $65D8: $C9


Jump_003_65D9:
    ld a, $FF                                     ; $65D9: $3E $FF
    ld [wMenu_ReturnValue], a                                 ; $65DB: $EA $A7 $CC
    Do_CallForeign Menu_Do
    call System_UpdateGameNoScript                                    ; $65E6: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $65E9: $FA $A7 $CC
    cp $FF                                        ; $65EC: $FE $FF
    jr z, jr_003_6619                             ; $65EE: $28 $29

    cp $FE                                        ; $65F0: $FE $FE
    jp z, Jump_003_6CA8                           ; $65F2: $CA $A8 $6C

    cp $0B                                        ; $65F5: $FE $0B
    jp z, Jump_003_6653                           ; $65F7: $CA $53 $66

    cp $0C                                        ; $65FA: $FE $0C
    jp z, Jump_003_667E                           ; $65FC: $CA $7E $66

    cp $00                                        ; $65FF: $FE $00
    jp z, Jump_003_6B7A                           ; $6601: $CA $7A $6B

    cp $01                                        ; $6604: $FE $01
    jp z, Jump_003_6B7A                           ; $6606: $CA $7A $6B

    cp $02                                        ; $6609: $FE $02
    jp z, Menu_Exit                           ; $660B: $CA $37 $76

    ld a, [wMenu_Music_FirstSongChoice]                                 ; $660E: $FA $CB $CC
    cp $00                                        ; $6611: $FE $00
    jp z, Jump_003_6A4D                           ; $6613: $CA $4D $6A

    jp Jump_003_6930                              ; $6616: $C3 $30 $69


jr_003_6619:
    ld a, [wMenu_CursorID]                                 ; $6619: $FA $81 $CD
    ld c, a                                       ; $661C: $4F
    ld a, [wMenu_Temp0]                                 ; $661D: $FA $C9 $CC
    cp c                                          ; $6620: $B9
    jp z, Jump_003_65D9                           ; $6621: $CA $D9 $65

    ld a, c                                       ; $6624: $79
    ld [wMenu_Temp0], a                                 ; $6625: $EA $C9 $CC
    ld b, $0B                                     ; $6628: $06 $0B
    ld a, $03                                     ; $662A: $3E $03

jr_003_662C:
    cp c                                          ; $662C: $B9
    jp z, Jump_003_6C5C                           ; $662D: $CA $5C $6C

    inc a                                         ; $6630: $3C
    cp b                                          ; $6631: $B8
    jr nz, jr_003_662C                            ; $6632: $20 $F8

    ld a, $03                                     ; $6634: $3E $03
    ld [wVBlank_Bank], a                                 ; $6636: $EA $E6 $C6
    ld a, $9E                                     ; $6639: $3E $9E
    ld [wVBlank_Func], a                                 ; $663B: $EA $E4 $C6
    ld a, $6C                                     ; $663E: $3E $6C
    ld [wVBlank_Func+1], a                                 ; $6640: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6643: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $664D: $EA $E5 $C6
    jp Jump_003_65D9                              ; $6650: $C3 $D9 $65


Jump_003_6653:
    xor a                                         ; $6653: $AF
    ld [$CCFB], a                                 ; $6654: $EA $FB $CC
    call Call_003_6B25                            ; $6657: $CD $25 $6B
    ld a, [wMenu_Music_FirstSongChoice]                                 ; $665A: $FA $CB $CC
    cp $00                                        ; $665D: $FE $00
    jr nz, jr_003_666D                            ; $665F: $20 $0C

    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6661: $FA $D5 $CC
    dec a                                         ; $6664: $3D
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $6665: $EA $D5 $CC
    call Call_003_68E8                            ; $6668: $CD $E8 $68
    jr jr_003_6670                                ; $666B: $18 $03

jr_003_666D:
    call Call_003_7512                            ; $666D: $CD $12 $75

jr_003_6670:
    ld a, [$CCC8]                                 ; $6670: $FA $C8 $CC
    sub $08                                       ; $6673: $D6 $08
    ld [$CCC8], a                                 ; $6675: $EA $C8 $CC
    call Call_003_6796                            ; $6678: $CD $96 $67
    jp Jump_003_65D9                              ; $667B: $C3 $D9 $65


Jump_003_667E:
    ld a, [$CCFB]                                 ; $667E: $FA $FB $CC
    cp $00                                        ; $6681: $FE $00
    jr nz, jr_003_66AE                            ; $6683: $20 $29

    ld a, [wMenu_Music_FirstSongChoice]                                 ; $6685: $FA $CB $CC
    cp $00                                        ; $6688: $FE $00
    jr nz, jr_003_6699                            ; $668A: $20 $0D

    ld a, [$CCC8]                                 ; $668C: $FA $C8 $CC
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $668F: $EA $D5 $CC
    add $08                                       ; $6692: $C6 $08
    ld [$CCC8], a                                 ; $6694: $EA $C8 $CC
    jr jr_003_66AE                                ; $6697: $18 $15

jr_003_6699:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6699: $21 $CD $CC
    ld e, $07                                     ; $669C: $1E $07
    ld d, $00                                     ; $669E: $16 $00
    add hl, de                                    ; $66A0: $19
    ld a, [hl]                                    ; $66A1: $7E
    inc a                                         ; $66A2: $3C
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $66A3: $EA $D5 $CC
    ld a, [$CCC8]                                 ; $66A6: $FA $C8 $CC
    add $08                                       ; $66A9: $C6 $08
    ld [$CCC8], a                                 ; $66AB: $EA $C8 $CC

jr_003_66AE:
    xor a                                         ; $66AE: $AF
    ld [$CCFB], a                                 ; $66AF: $EA $FB $CC
    ld a, [wMenu_ReturnValue]                                 ; $66B2: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $66B5: $EA $81 $CD
    call Call_003_6784                            ; $66B8: $CD $84 $67
    jp Jump_003_65D9                              ; $66BB: $C3 $D9 $65

Call_003_66BE::
    call Menu_Setup_GenericMenu                            ; $66BE: $CD $63 $74
    ld bc, TILEMAP_Menu_4B4B                                  ; $66C1: $01 $4B $4B
    call Menu_LoadTilemap                            ; $66C4: $CD $FA $76
    xor a                                         ; $66C7: $AF
    ld [wMenu_Temp6], a                                 ; $66C8: $EA $C6 $CC
    ld [$CCFB], a                                 ; $66CB: $EA $FB $CC
    ld a, $08                                     ; $66CE: $3E $08
    ld [$CCC8], a                                 ; $66D0: $EA $C8 $CC
    ld a, $03                                     ; $66D3: $3E $03
    ld [wMenu_Music_FirstSongChoice], a                                 ; $66D5: $EA $CB $CC
    ld [$CCE3], a                                 ; $66D8: $EA $E3 $CC
    ld a, $04                                     ; $66DB: $3E $04
    ld [wMenu_Generic_FatArrowTileID], a                                 ; $66DD: $EA $EB $CC
    ld a, $00                                     ; $66E0: $3E $00
    ld [wMenu_CursorID], a                                 ; $66E2: $EA $81 $CD
    SwitchRAMBank $06
    ld a, [$D000]                                 ; $66EC: $FA $00 $D0
    ld [wMenu_Generic_EntryCount], a                                 ; $66EF: $EA $CC $CC
    ld a, $22                                     ; $66F2: $3E $22
    ld [$CCE8], a                                 ; $66F4: $EA $E8 $CC
    ld a, $0C                                     ; $66F7: $3E $0C
    ld [$CCE9], a                                 ; $66F9: $EA $E9 $CC
    ld hl, Item_Table                                  ; $66FC: $21 $FF $5D
    ld a, h                                       ; $66FF: $7C
    ld [wMenu_Generic_EntryDataTable + 1], a                                 ; $6700: $EA $E7 $CC
    ld a, l                                       ; $6703: $7D
    ld [wMenu_Generic_EntryDataTable], a                                 ; $6704: $EA $E6 $CC
    ld hl, $A3A7                                  ; $6707: $21 $A7 $A3
    ld a, h                                       ; $670A: $7C
    ld [$CCE5], a                                 ; $670B: $EA $E5 $CC
    ld a, l                                       ; $670E: $7D
    ld [$CCE4], a                                 ; $670F: $EA $E4 $CC
    ld a, $0D                                     ; $6712: $3E $0D
    ld [$CCEA], a                                 ; $6714: $EA $EA $CC
    call ScreenHide                                    ; $6717: $CD $C3 $07
    ld de, $8860                                  ; $671A: $11 $60 $88
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de                                    ; $6722: $72
    ld a, $68                                     ; $6723: $3E $68
    call Menu_EmptyStringToTileset                            ; $6725: $CD $2F $77
    ld bc, $52E5                                  ; $6728: $01 $E5 $52
    ld a, $0D                                     ; $672B: $3E $0D
    call Call_003_77F3                            ; $672D: $CD $F3 $77
    call Call_003_6B43                            ; $6730: $CD $43 $6B
    call Call_003_6C1A                            ; $6733: $CD $1A $6C

    Do_Menu_Init Menu_CursorTable_Shop, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    call ScreenShow                                    ; $677E: $CD $EA $07
    jp Jump_003_65D9                              ; $6781: $C3 $D9 $65


Call_003_6784:
    call Call_003_6B25                            ; $6784: $CD $25 $6B
    ld a, [wMenu_Music_FirstSongChoice]                                 ; $6787: $FA $CB $CC
    cp $00                                        ; $678A: $FE $00
    jr nz, jr_003_6793                            ; $678C: $20 $05

    call Call_003_6880                            ; $678E: $CD $80 $68
    jr jr_003_6796                                ; $6791: $18 $03

jr_003_6793:
    call Call_003_7550                            ; $6793: $CD $50 $75

Call_003_6796:
jr_003_6796:
    call ScreenHide                                    ; $6796: $CD $C3 $07
    ld bc, TILEMAP_Menu_4B4B                                  ; $6799: $01 $4B $4B
    call Menu_LoadTilemap                            ; $679C: $CD $FA $76
    call Call_003_7596                            ; $679F: $CD $96 $75
    call Call_003_6801                            ; $67A2: $CD $01 $68
    call Call_003_6B43                            ; $67A5: $CD $43 $6B
    call Call_003_6C1A                            ; $67A8: $CD $1A $6C
    call ScreenShow                                    ; $67AB: $CD $EA $07
    call Call_003_6D1F                            ; $67AE: $CD $1F $6D
    call System_UpdateGameNoScript                                    ; $67B1: $CD $5F $09


    Do_Menu_Init Menu_CursorTable_Shop, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    xor a                                         ; $67FC: $AF
    ld [wMenu_Temp0], a                                 ; $67FD: $EA $C9 $CC
    ret                                           ; $6800: $C9


Call_003_6801:
    xor a                                         ; $6801: $AF
    ld [rVBK], a                                 ; $6802: $EA $4F $FF
    ld [wMenu_Temp6], a                                 ; $6805: $EA $C6 $CC

Jump_003_6808:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6808: $21 $CD $CC
    ld a, [wMenu_Temp6]                                 ; $680B: $FA $C6 $CC
    ld c, a                                       ; $680E: $4F
    ld b, $00                                     ; $680F: $06 $00
    add hl, bc                                    ; $6811: $09
    ld a, [hl]                                    ; $6812: $7E
    cp $FF                                        ; $6813: $FE $FF
    jp z, Jump_003_6873                           ; $6815: $CA $73 $68

    ld b, $20                                     ; $6818: $06 $20
    call Math_Mult                                    ; $681A: $CD $CA $04
    ld e, l                                       ; $681D: $5D
    ld d, h                                       ; $681E: $54
    ld hl, $9C6F                                  ; $681F: $21 $6F $9C
    add hl, de                                    ; $6822: $19
    push hl                                       ; $6823: $E5
    ld a, [wMenu_Music_FirstSongChoice]                                 ; $6824: $FA $CB $CC
    cp $00                                        ; $6827: $FE $00
    jr z, jr_003_6841                             ; $6829: $28 $16

    ld a, [wMenu_Temp6]                                 ; $682B: $FA $C6 $CC
    ld c, a                                       ; $682E: $4F
    ld b, $00                                     ; $682F: $06 $00
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6831: $21 $CD $CC
    add hl, bc                                    ; $6834: $09
    ld a, [hl]                                    ; $6835: $7E
    call Call_003_6D72                            ; $6836: $CD $72 $6D
    pop hl                                        ; $6839: $E1
    ld [hl], $80                                  ; $683A: $36 $80
    inc hl                                        ; $683C: $23
    ld d, b                                       ; $683D: $50
    ld e, c                                       ; $683E: $59
    jr jr_003_685B                                ; $683F: $18 $1A

jr_003_6841:
    ld a, [wMenu_Temp6]                                 ; $6841: $FA $C6 $CC
    ld c, a                                       ; $6844: $4F
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6845: $FA $D5 $CC
    add c                                         ; $6848: $81
    ld c, a                                       ; $6849: $4F
    ld b, $03                                     ; $684A: $06 $03
    call Math_Mult                                    ; $684C: $CD $CA $04
    ld bc, $D001                                  ; $684F: $01 $01 $D0
    add hl, bc                                    ; $6852: $09
    inc hl                                        ; $6853: $23
    ld a, [hl+]                                   ; $6854: $2A
    ld e, a                                       ; $6855: $5F
    ld d, [hl]                                    ; $6856: $56
    pop hl                                        ; $6857: $E1
    ld [hl], $FE                                  ; $6858: $36 $FE
    inc hl                                        ; $685A: $23

jr_003_685B:
    call Math_ConvertNumberToDigits                                    ; $685B: $CD $1A $04
    ld b, h                                       ; $685E: $44
    ld c, l                                       ; $685F: $4D
    ld hl, $CCEC                                  ; $6860: $21 $EC $CC
    ld [hl], $01                                  ; $6863: $36 $01
    inc hl                                        ; $6865: $23
    ld [hl], b                                    ; $6866: $70
    inc hl                                        ; $6867: $23
    ld [hl], c                                    ; $6868: $71
    inc hl                                        ; $6869: $23
    call Call_003_6B0C                            ; $686A: $CD $0C $6B
    ld [hl], $80                                  ; $686D: $36 $80
    inc hl                                        ; $686F: $23
    call Call_003_6C1A                            ; $6870: $CD $1A $6C

Jump_003_6873:
    ld a, [wMenu_Temp6]                                 ; $6873: $FA $C6 $CC
    inc a                                         ; $6876: $3C
    cp $08                                        ; $6877: $FE $08
    ret z                                         ; $6879: $C8

    ld [wMenu_Temp6], a                                 ; $687A: $EA $C6 $CC
    jp Jump_003_6808                              ; $687D: $C3 $08 $68


Call_003_6880:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6880: $FA $D5 $CC
    ld [wMenu_Temp6], a                                 ; $6883: $EA $C6 $CC
    xor a                                         ; $6886: $AF
    ld [wMenu_Temp0], a                                 ; $6887: $EA $C9 $CC
    SwitchRAMBank $06

jr_003_6891:
    ld a, [wMenu_Temp6]                                 ; $6891: $FA $C6 $CC
    ld c, a                                       ; $6894: $4F
    ld b, $03                                     ; $6895: $06 $03
    call Math_Mult                                    ; $6897: $CD $CA $04
    ld de, $D001                                  ; $689A: $11 $01 $D0
    add hl, de                                    ; $689D: $19
    ld a, [hl]                                    ; $689E: $7E
    ld b, a                                       ; $689F: $47
    ld a, [wMenu_Temp0]                                 ; $68A0: $FA $C9 $CC
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $68A3: $21 $CD $CC
    ld e, a                                       ; $68A6: $5F
    ld d, $00                                     ; $68A7: $16 $00
    add hl, de                                    ; $68A9: $19
    ld [hl], b                                    ; $68AA: $70
    ld a, [$CCC8]                                 ; $68AB: $FA $C8 $CC
    ld b, a                                       ; $68AE: $47
    ld a, [wMenu_Temp6]                                 ; $68AF: $FA $C6 $CC
    inc a                                         ; $68B2: $3C
    cp b                                          ; $68B3: $B8
    ret z                                         ; $68B4: $C8

    ld [wMenu_Temp6], a                                 ; $68B5: $EA $C6 $CC
    ld b, a                                       ; $68B8: $47
    ld a, [wMenu_Temp0]                                 ; $68B9: $FA $C9 $CC
    inc a                                         ; $68BC: $3C
    ld [wMenu_Temp0], a                                 ; $68BD: $EA $C9 $CC
    ld a, [wMenu_Generic_EntryCount]                                 ; $68C0: $FA $CC $CC
    cp b                                          ; $68C3: $B8
    jr nz, jr_003_6891                            ; $68C4: $20 $CB

jr_003_68C6:
    ld a, [wMenu_Temp0]                                 ; $68C6: $FA $C9 $CC
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $68C9: $21 $CD $CC
    ld e, a                                       ; $68CC: $5F
    ld d, $00                                     ; $68CD: $16 $00
    add hl, de                                    ; $68CF: $19
    ld [hl], $FF                                  ; $68D0: $36 $FF
    ld a, [$CCC8]                                 ; $68D2: $FA $C8 $CC
    ld b, a                                       ; $68D5: $47
    ld a, [wMenu_Temp6]                                 ; $68D6: $FA $C6 $CC
    inc a                                         ; $68D9: $3C
    cp b                                          ; $68DA: $B8
    ret z                                         ; $68DB: $C8

    ld [wMenu_Temp6], a                                 ; $68DC: $EA $C6 $CC
    ld a, [wMenu_Temp0]                                 ; $68DF: $FA $C9 $CC
    inc a                                         ; $68E2: $3C
    ld [wMenu_Temp0], a                                 ; $68E3: $EA $C9 $CC
    jr jr_003_68C6                                ; $68E6: $18 $DE

Call_003_68E8:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $68E8: $FA $D5 $CC
    ld [wMenu_Temp6], a                                 ; $68EB: $EA $C6 $CC
    ld a, $08                                     ; $68EE: $3E $08
    dec a                                         ; $68F0: $3D
    ld [wMenu_Temp0], a                                 ; $68F1: $EA $C9 $CC
    SwitchRAMBank $06

jr_003_68FB:
    ld a, [wMenu_Temp6]                                 ; $68FB: $FA $C6 $CC
    ld c, a                                       ; $68FE: $4F
    ld b, $03                                     ; $68FF: $06 $03
    call Math_Mult                                    ; $6901: $CD $CA $04
    ld de, $D001                                  ; $6904: $11 $01 $D0
    add hl, de                                    ; $6907: $19
    ld a, [hl]                                    ; $6908: $7E
    ld b, a                                       ; $6909: $47
    ld a, [wMenu_Temp0]                                 ; $690A: $FA $C9 $CC
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $690D: $21 $CD $CC
    ld e, a                                       ; $6910: $5F
    ld d, $00                                     ; $6911: $16 $00
    add hl, de                                    ; $6913: $19
    ld [hl], b                                    ; $6914: $70
    ld a, [wMenu_Temp0]                                 ; $6915: $FA $C9 $CC
    cp $00                                        ; $6918: $FE $00
    jr z, jr_003_6929                             ; $691A: $28 $0D

    dec a                                         ; $691C: $3D
    ld [wMenu_Temp0], a                                 ; $691D: $EA $C9 $CC
    ld a, [wMenu_Temp6]                                 ; $6920: $FA $C6 $CC
    dec a                                         ; $6923: $3D
    ld [wMenu_Temp6], a                                 ; $6924: $EA $C6 $CC
    jr jr_003_68FB                                ; $6927: $18 $D2

jr_003_6929:
    ld a, [wMenu_Temp6]                                 ; $6929: $FA $C6 $CC
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $692C: $EA $D5 $CC
    ret                                           ; $692F: $C9


Jump_003_6930:
    ld a, [wMenu_ReturnValue]                                 ; $6930: $FA $A7 $CC
    sub $03                                       ; $6933: $D6 $03
    ld e, a                                       ; $6935: $5F
    ld d, $00                                     ; $6936: $16 $00
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6938: $21 $CD $CC
    add hl, de                                    ; $693B: $19
    ld a, [hl]                                    ; $693C: $7E
    ld d, $00                                     ; $693D: $16 $00
    ld e, a                                       ; $693F: $5F
    push de                                       ; $6940: $D5
    Battery_Off
    ld a, e                                       ; $6945: $7B
    call Call_003_6D72                            ; $6946: $CD $72 $6D
    xor a                                         ; $6949: $AF
    cp c                                          ; $694A: $B9
    jp nz, Jump_003_6952                          ; $694B: $C2 $52 $69

    cp b                                          ; $694E: $B8
    jp z, Jump_003_6B03                           ; $694F: $CA $03 $6B

Jump_003_6952:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 hl, $A3A5                                  ; $695F: $21 $A5 $A3
    add hl, bc                                    ; $6965: $09
    ld a, h                                       ; $6966: $7C
    cp $03                                        ; $6967: $FE $03
    jr c, jr_003_6978                             ; $6969: $38 $0D

    jr z, jr_003_696F                             ; $696B: $28 $02

    jr nc, jr_003_6974                            ; $696D: $30 $05

jr_003_696F:
    ld a, l                                       ; $696F: $7D
    cp $E7                                        ; $6970: $FE $E7
    jr c, jr_003_6978                             ; $6972: $38 $04

jr_003_6974:
    ld h, $03                                     ; $6974: $26 $03
    ld l, $E7                                     ; $6976: $2E $E7

jr_003_6978:
    ld c, l                                       ; $6978: $4D
    ld b, h                                       ; $6979: $44
    FSet16 $A3A5, bc                                    ; $697F: $70
    Battery_Off
    call Call_003_6B43                            ; $6984: $CD $43 $6B
    ld a, $03                                     ; $6987: $3E $03
    ld [wVBlank_Bank], a                                 ; $6989: $EA $E6 $C6
    ld a, $1A                                     ; $698C: $3E $1A
    ld [wVBlank_Func], a                                 ; $698E: $EA $E4 $C6
    ld a, $6C                                     ; $6991: $3E $6C
    ld [wVBlank_Func+1], a                                 ; $6993: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6996: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $69A0: $EA $E5 $C6
    pop de                                        ; $69A3: $D1
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld hl, $A3A7                                  ; $69B1: $21 $A7 $A3
    add hl, de                                    ; $69B4: $19
    dec [hl]                                      ; $69B5: $35
    jp nz, Jump_003_6A41                          ; $69B6: $C2 $41 $6A

    ld a, [wMenu_ReturnValue]                                 ; $69B9: $FA $A7 $CC
    sub $03                                       ; $69BC: $D6 $03
    ld c, a                                       ; $69BE: $4F
    ld b, $20                                     ; $69BF: $06 $20
    call Math_Mult                                    ; $69C1: $CD $CA $04
    ld e, l                                       ; $69C4: $5D
    ld d, h                                       ; $69C5: $54
    ld hl, $9C6F                                  ; $69C6: $21 $6F $9C
    add hl, de                                    ; $69C9: $19
    ld b, h                                       ; $69CA: $44
    ld c, l                                       ; $69CB: $4D
    ld hl, $CCEC                                  ; $69CC: $21 $EC $CC
    ld [hl], $02                                  ; $69CF: $36 $02
    ld d, $00                                     ; $69D1: $16 $00
    ld e, $07                                     ; $69D3: $1E $07
    add hl, de                                    ; $69D5: $19
    ld [hl], b                                    ; $69D6: $70
    inc hl                                        ; $69D7: $23
    ld [hl], c                                    ; $69D8: $71
    inc hl                                        ; $69D9: $23
    ld [hl], $80                                  ; $69DA: $36 $80
    ld a, $01                                     ; $69DC: $3E $01
    ld [$CCFB], a                                 ; $69DE: $EA $FB $CC
    ld a, [wMenu_ReturnValue]                                 ; $69E1: $FA $A7 $CC
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $69E4: $21 $D6 $CC
    ld c, a                                       ; $69E7: $4F
    ld b, $00                                     ; $69E8: $06 $00
    add hl, bc                                    ; $69EA: $09
    ld [hl], b                                    ; $69EB: $70
    call Call_003_6D1F                            ; $69EC: $CD $1F $6D
    call Call_003_6AE6                            ; $69EF: $CD $E6 $6A

    Do_Menu_Init Menu_CursorTable_Shop, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    ld a, [wMenu_CursorID]                                 ; $6A3A: $FA $81 $CD
    ld c, a                                       ; $6A3D: $4F
    jp Jump_003_6C5C                              ; $6A3E: $C3 $5C $6C


Jump_003_6A41:
    Battery_Off
    ld a, $FF                                     ; $6A45: $3E $FF
    ld [wMenu_Temp0], a                                 ; $6A47: $EA $C9 $CC
    jp Jump_003_65D9                              ; $6A4A: $C3 $D9 $65


Jump_003_6A4D:
    ld a, [wMenu_ReturnValue]                                 ; $6A4D: $FA $A7 $CC
    sub $03                                       ; $6A50: $D6 $03
    ld c, a                                       ; $6A52: $4F
    ld a, [$CCC8]                                 ; $6A53: $FA $C8 $CC
    ld b, $08                                     ; $6A56: $06 $08
    sub b                                         ; $6A58: $90
    add c                                         ; $6A59: $81
    ld c, a                                       ; $6A5A: $4F
    ld b, $03                                     ; $6A5B: $06 $03
    call Math_Mult                                    ; $6A5D: $CD $CA $04
    ld b, h                                       ; $6A60: $44
    ld c, l                                       ; $6A61: $4D
    SwitchRAMBank $06
    ld hl, $D001                                  ; $6A69: $21 $01 $D0
    add hl, bc                                    ; $6A6C: $09
    ld a, [hl+]                                   ; $6A6D: $2A
    ld [$C9FD], a                                 ; $6A6E: $EA $FD $C9
    ld a, [hl+]                                   ; $6A71: $2A
    ld c, a                                       ; $6A72: $4F
    ld b, [hl]                                    ; $6A73: $46
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 hl, $A3A5                                  ; $6A81: $21 $A5 $A3
    Battery_Off
    push bc                                       ; $6A8B: $C5
    ld a, b                                       ; $6A8C: $78
    cp h                                          ; $6A8D: $BC
    jr c, jr_003_6A97                             ; $6A8E: $38 $07

    jr nz, jr_003_6B03                            ; $6A90: $20 $71

    ld a, l                                       ; $6A92: $7D
    cp c                                          ; $6A93: $B9
    jp c, Jump_003_6B03                           ; $6A94: $DA $03 $6B

jr_003_6A97:
    ld a, $00                                     ; $6A97: $3E $00
    ld [$C9FC], a                                 ; $6A99: $EA $FC $C9
    ld a, $01                                     ; $6A9C: $3E $01
    ld [$C9FE], a                                 ; $6A9E: $EA $FE $C9
    Do_CallForeign Unknown_GetNameAndGiveItem
    ld a, [$C9FD]                                 ; $6AA9: $FA $FD $C9
    cp $00                                        ; $6AAC: $FE $00
    jp z, Jump_003_6B03                           ; $6AAE: $CA $03 $6B

    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 de, $A3A5                                  ; $6ABE: $21 $A5 $A3                                       ; $6AC3: $5F
    ld a, e                                       ; $6AC4: $7B
    pop bc                                        ; $6AC5: $C1
    sub c                                         ; $6AC6: $91
    ld e, a                                       ; $6AC7: $5F
    jr nc, jr_003_6ACB                            ; $6AC8: $30 $01

    dec d                                         ; $6ACA: $15

jr_003_6ACB:
    ld a, d                                       ; $6ACB: $7A
    sub b                                         ; $6ACC: $90
    ld d, a                                       ; $6ACD: $57
    FSet16 $A3A5, de                                    ; $6AD3: $72
    Battery_Off
    call Call_003_6B43                            ; $6AD8: $CD $43 $6B
    call Call_003_6AE6                            ; $6ADB: $CD $E6 $6A
    ld a, $FF                                     ; $6ADE: $3E $FF
    ld [wMenu_Temp0], a                                 ; $6AE0: $EA $C9 $CC
    jp Jump_003_65D9                              ; $6AE3: $C3 $D9 $65


Call_003_6AE6:
    ld a, $03                                     ; $6AE6: $3E $03
    ld [wVBlank_Bank], a                                 ; $6AE8: $EA $E6 $C6
    ld a, $1A                                     ; $6AEB: $3E $1A
    ld [wVBlank_Func], a                                 ; $6AED: $EA $E4 $C6
    ld a, $6C                                     ; $6AF0: $3E $6C
    ld [wVBlank_Func+1], a                                 ; $6AF2: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6AF5: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $6AFF: $EA $E5 $C6
    ret                                           ; $6B02: $C9


Jump_003_6B03:
jr_003_6B03:
    pop bc                                        ; $6B03: $C1
    Sound_Request_StartSFX0 SFXID_SfxCancel
    jp Jump_003_65D9                              ; $6B09: $C3 $D9 $65


Call_003_6B0C:
    ld e, $EE                                     ; $6B0C: $1E $EE
    ld a, [wX100]                                 ; $6B0E: $FA $2F $C9
    call Call_003_77E7                            ; $6B11: $CD $E7 $77
    ld e, $EE                                     ; $6B14: $1E $EE
    ld a, [wX10]                                 ; $6B16: $FA $2E $C9
    call Call_003_77E7                            ; $6B19: $CD $E7 $77
    ld e, $EE                                     ; $6B1C: $1E $EE
    ld a, [wX1]                                 ; $6B1E: $FA $2D $C9
    call Call_003_77E7                            ; $6B21: $CD $E7 $77
    ret                                           ; $6B24: $C9


Call_003_6B25:
    ld a, [wMenu_Music_FirstSongChoice]                                 ; $6B25: $FA $CB $CC
    cp $00                                        ; $6B28: $FE $00
    jr z, jr_003_6B35                             ; $6B2A: $28 $09

    ld hl, $A3A7                                  ; $6B2C: $21 $A7 $A3
    ld c, $F0                                     ; $6B2F: $0E $F0
    call Call_003_74EF                            ; $6B31: $CD $EF $74
    ret                                           ; $6B34: $C9


jr_003_6B35:
    SwitchRAMBank $06
    ld a, [$D000]                                 ; $6B3C: $FA $00 $D0
    ld [wMenu_Generic_EntryCount], a                                 ; $6B3F: $EA $CC $CC
    ret                                           ; $6B42: $C9


Call_003_6B43:
    xor a                                         ; $6B43: $AF
    ld [rVBK], a                                 ; $6B44: $EA $4F $FF
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 de, $A3A5                                  ; $6B54: $21 $A5 $A3                                       ; $6B59: $5F
    Battery_Off
    call Math_ConvertNumberToDigits                                    ; $6B5E: $CD $1A $04
    ld hl, $9DCE                                  ; $6B61: $21 $CE $9D
    ld b, h                                       ; $6B64: $44
    ld c, l                                       ; $6B65: $4D
    ld hl, $CCEC                                  ; $6B66: $21 $EC $CC
    ld [hl], $01                                  ; $6B69: $36 $01
    inc hl                                        ; $6B6B: $23
    ld [hl], b                                    ; $6B6C: $70
    inc hl                                        ; $6B6D: $23
    ld [hl], c                                    ; $6B6E: $71
    inc hl                                        ; $6B6F: $23
    ld [hl], $FE                                  ; $6B70: $36 $FE
    inc hl                                        ; $6B72: $23
    call Call_003_6B0C                            ; $6B73: $CD $0C $6B
    ret                                           ; $6B76: $C9

    ; $6B77
MenuFunc_Exit::
    ; This function is a Start MenuFunc. However, the option to press start
    ; is always disabled so in reality this function is unused
    ; This exits ungracefully; i.e. the script might not be properly set when you exit via this function
    jp Menu_Exit


Jump_003_6B7A:
    ld a, $03                                     ; $6B7A: $3E $03
    ld [wMenu_CursorID], a                                 ; $6B7C: $EA $81 $CD
    ld a, [wMenu_ReturnValue]                                 ; $6B7F: $FA $A7 $CC
    ld b, a                                       ; $6B82: $47
    ld a, [wMenu_Music_FirstSongChoice]                                 ; $6B83: $FA $CB $CC
    cp b                                          ; $6B86: $B8
    jr nz, jr_003_6BE1                            ; $6B87: $20 $58

    ld a, $01                                     ; $6B89: $3E $01
    ld [$CCE3], a                                 ; $6B8B: $EA $E3 $CC
    ld a, $03                                     ; $6B8E: $3E $03
    ld [wMenu_CursorID], a                                 ; $6B90: $EA $81 $CD
    call Call_003_6D1F                            ; $6B93: $CD $1F $6D

    Do_Menu_Init Menu_CursorTable_Shop, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    jp Jump_003_65D9                              ; $6BDE: $C3 $D9 $65


jr_003_6BE1:
    xor a                                         ; $6BE1: $AF
    ld [$CCFB], a                                 ; $6BE2: $EA $FB $CC
    ld [wMenu_Temp6], a                                 ; $6BE5: $EA $C6 $CC
    ld a, $08                                     ; $6BE8: $3E $08
    ld [$CCC8], a                                 ; $6BEA: $EA $C8 $CC
    inc a                                         ; $6BED: $3C
    ld [$CCE3], a                                 ; $6BEE: $EA $E3 $CC
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $6BF1: $21 $D6 $CC
    ld d, $00                                     ; $6BF4: $16 $00
    ld e, $0B                                     ; $6BF6: $1E $0B
    add hl, de                                    ; $6BF8: $19
    ld [hl], d                                    ; $6BF9: $72
    inc hl                                        ; $6BFA: $23
    ld [hl], $01                                  ; $6BFB: $36 $01
    ld a, [wMenu_ReturnValue]                                 ; $6BFD: $FA $A7 $CC
    cp $00                                        ; $6C00: $FE $00
    jr z, jr_003_6C0B                             ; $6C02: $28 $07

    ld a, $01                                     ; $6C04: $3E $01
    ld [wMenu_Music_FirstSongChoice], a                                 ; $6C06: $EA $CB $CC
    jr jr_003_6C10                                ; $6C09: $18 $05

jr_003_6C0B:
    ld a, $00                                     ; $6C0B: $3E $00
    ld [wMenu_Music_FirstSongChoice], a                                 ; $6C0D: $EA $CB $CC

jr_003_6C10:
    xor a                                         ; $6C10: $AF
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $6C11: $EA $D5 $CC
    call Call_003_6784                            ; $6C14: $CD $84 $67
    jp Jump_003_65D9                              ; $6C17: $C3 $D9 $65


Call_003_6C1A:
    ld hl, $CCEC                                  ; $6C1A: $21 $EC $CC
    ld a, [hl+]                                   ; $6C1D: $2A
    ld e, a                                       ; $6C1E: $5F

jr_003_6C1F:
    dec e                                         ; $6C1F: $1D
    ld a, [hl+]                                   ; $6C20: $2A
    ld b, a                                       ; $6C21: $47
    ld a, [hl+]                                   ; $6C22: $2A
    ld c, a                                       ; $6C23: $4F
    ld a, [$CCFB]                                 ; $6C24: $FA $FB $CC
    sub e                                         ; $6C27: $93
    cp $01                                        ; $6C28: $FE $01
    jr z, jr_003_6C41                             ; $6C2A: $28 $15

    LdBCIHLI                                        ; $6C2E: $03
    LdBCIHLI                                        ; $6C31: $03
    LdBCIHLI                                        ; $6C34: $03
    LdBCIHLI                                        ; $6C37: $03
    ld a, e                                       ; $6C38: $7B
    cp $00                                        ; $6C39: $FE $00
    ret z                                         ; $6C3B: $C8

    jr jr_003_6C1F                                ; $6C3C: $18 $E1

    jr nz, jr_003_6C1F                            ; $6C3E: $20 $DF

    ret                                           ; $6C40: $C9


jr_003_6C41:
    ld a, $05                                     ; $6C41: $3E $05
    ld [$CCFB], a                                 ; $6C43: $EA $FB $CC
    ld e, $0F                                     ; $6C46: $1E $0F
    ld a, c                                       ; $6C48: $79
    sub e                                         ; $6C49: $93
    jr nc, jr_003_6C4D                            ; $6C4A: $30 $01

    dec b                                         ; $6C4C: $05

jr_003_6C4D:
    ld h, b                                       ; $6C4D: $60
    ld l, a                                       ; $6C4E: $6F
    ld d, $80                                     ; $6C4F: $16 $80
    ld a, $15                                     ; $6C51: $3E $15
    ld b, $00                                     ; $6C53: $06 $00

jr_003_6C55:
    ld [hl], d                                    ; $6C55: $72
    inc hl                                        ; $6C56: $23
    dec a                                         ; $6C57: $3D
    cp b                                          ; $6C58: $B8
    jr nz, jr_003_6C55                            ; $6C59: $20 $FA

    ret                                           ; $6C5B: $C9


Jump_003_6C5C:
    dec c                                         ; $6C5C: $0D
    dec c                                         ; $6C5D: $0D
    dec c                                         ; $6C5E: $0D
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6C5F: $21 $CD $CC
    ld b, $00                                     ; $6C62: $06 $00
    add hl, bc                                    ; $6C64: $09
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]                                    ; $6C72: $7E
    ld c, a                                       ; $6C73: $4F
    ld b, $00                                     ; $6C74: $06 $00
    ld hl, $A3A7                                  ; $6C76: $21 $A7 $A3
    add hl, bc                                    ; $6C79: $09
    ld a, [hl]                                    ; $6C7A: $7E
    ld e, a                                       ; $6C7B: $5F
    Battery_Off
    ld d, $00                                     ; $6C80: $16 $00
    call Math_ConvertNumberToDigits                                    ; $6C82: $CD $1A $04
    ld hl, $CCEC                                  ; $6C85: $21 $EC $CC
    ld [hl], $01                                  ; $6C88: $36 $01
    inc hl                                        ; $6C8A: $23
    ld bc, $9E0E                                  ; $6C8B: $01 $0E $9E
    ld [hl], b                                    ; $6C8E: $70
    inc hl                                        ; $6C8F: $23
    ld [hl], c                                    ; $6C90: $71
    inc hl                                        ; $6C91: $23
    ld [hl], $03                                  ; $6C92: $36 $03
    inc hl                                        ; $6C94: $23
    call Call_003_6B0C                            ; $6C95: $CD $0C $6B
    call Call_003_6AE6                            ; $6C98: $CD $E6 $6A
    jp Jump_003_65D9                              ; $6C9B: $C3 $D9 $65


    ld hl, $9E0E                                  ; $6C9E: $21 $0E $9E
    ld a, $80                                     ; $6CA1: $3E $80
    ld [hl+], a                                   ; $6CA3: $22
    ld [hl+], a                                   ; $6CA4: $22
    ld [hl+], a                                   ; $6CA5: $22
    ld [hl+], a                                   ; $6CA6: $22
    ret                                           ; $6CA7: $C9


Jump_003_6CA8:
    ld a, [$CCE3]                                 ; $6CA8: $FA $E3 $CC
    cp $00                                        ; $6CAB: $FE $00
    jr z, jr_003_6CC3                             ; $6CAD: $28 $14

    cp $03                                        ; $6CAF: $FE $03
    jp z, Menu_Exit                           ; $6CB1: $CA $37 $76

    ld a, $03                                     ; $6CB4: $3E $03
    ld [$CCE3], a                                 ; $6CB6: $EA $E3 $CC
    ld a, $00                                     ; $6CB9: $3E $00
    ld [wMenu_CursorID], a                                 ; $6CBB: $EA $81 $CD
    call Call_003_76B1                            ; $6CBE: $CD $B1 $76
    jr jr_003_6CD4                                ; $6CC1: $18 $11

jr_003_6CC3:
    call Call_003_76E0                            ; $6CC3: $CD $E0 $76
    cp $00                                        ; $6CC6: $FE $00
    jr z, jr_003_6CD4                             ; $6CC8: $28 $0A

    ld a, $03                                     ; $6CCA: $3E $03
    ld [wMenu_CursorID], a                                 ; $6CCC: $EA $81 $CD
    ld a, $01                                     ; $6CCF: $3E $01
    ld [$CCE3], a                                 ; $6CD1: $EA $E3 $CC

jr_003_6CD4:

    Do_Menu_Init Menu_CursorTable_Shop, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    jp Jump_003_65D9                              ; $6D1C: $C3 $D9 $65


Call_003_6D1F:
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $6D1F: $21 $D6 $CC
    ld c, $0C                                     ; $6D22: $0E $0C
    ld b, $00                                     ; $6D24: $06 $00
    add hl, bc                                    ; $6D26: $09
    ld a, [wMenu_Generic_EntryCount]                                 ; $6D27: $FA $CC $CC
    ld b, a                                       ; $6D2A: $47
    ld a, [$CCC8]                                 ; $6D2B: $FA $C8 $CC
    cp b                                          ; $6D2E: $B8
    jr nc, jr_003_6D3C                            ; $6D2F: $30 $0B

    ld a, $01                                     ; $6D31: $3E $01
    ld [hl], a                                    ; $6D33: $77
    ld a, [wMenu_Generic_FatArrowTileID]                                 ; $6D34: $FA $EB $CC
    call Menu_Generic_DrawDownArrow                            ; $6D37: $CD $51 $77
    jr jr_003_6D3E                                ; $6D3A: $18 $02

jr_003_6D3C:
    xor a                                         ; $6D3C: $AF
    ld [hl], a                                    ; $6D3D: $77

jr_003_6D3E:
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $6D3E: $21 $D6 $CC
    ld c, $0B                                     ; $6D41: $0E $0B
    ld b, $00                                     ; $6D43: $06 $00
    add hl, bc                                    ; $6D45: $09
    ld a, [$CCC8]                                 ; $6D46: $FA $C8 $CC
    ld b, $08                                     ; $6D49: $06 $08
    dec a                                         ; $6D4B: $3D
    cp b                                          ; $6D4C: $B8
    jr c, jr_003_6D57                             ; $6D4D: $38 $08

    ld a, $01                                     ; $6D4F: $3E $01
    ld [hl-], a                                   ; $6D51: $32
    call Menu_Generic_DrawUpArrow                            ; $6D52: $CD $77 $77
    jr jr_003_6D59                                ; $6D55: $18 $02

jr_003_6D57:
    xor a                                         ; $6D57: $AF
    ld [hl-], a                                   ; $6D58: $32

jr_003_6D59:
    call Call_003_76E0                            ; $6D59: $CD $E0 $76
    cp $00                                        ; $6D5C: $FE $00
    jr z, jr_003_6D64                             ; $6D5E: $28 $04

    call Call_003_7679                            ; $6D60: $CD $79 $76
    ret                                           ; $6D63: $C9


jr_003_6D64:
    call Call_003_76B1                            ; $6D64: $CD $B1 $76
    ld a, $00                                     ; $6D67: $3E $00
    ld [wMenu_CursorID], a                                 ; $6D69: $EA $81 $CD
    ld a, $03                                     ; $6D6C: $3E $03
    ld [$CCE3], a                                 ; $6D6E: $EA $E3 $CC
    ret                                           ; $6D71: $C9


Call_003_6D72:
    ld b, a                                       ; $6D72: $47
    ld c, ItemSpell_ROWSIZE                                     ; $6D73: $0E $22
    call Math_Mult                                    ; $6D75: $CD $CA $04
    ld de, Item_Table                                  ; $6D78: $11 $FF $5D
    add hl, de                                    ; $6D7B: $19
    ld e, $0A                                     ; $6D7C: $1E $0A
    ld d, $00                                     ; $6D7E: $16 $00
    add hl, de                                    ; $6D80: $19
    ld a, h                                       ; $6D81: $7C
    ld [wBattle_CopyBuffer_Source + 1], a                                 ; $6D82: $EA $8E $CD
    ld a, l                                       ; $6D85: $7D
    ld [wBattle_CopyBuffer_Source], a                                 ; $6D86: $EA $8D $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $6D89: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $6D91: $70
    Do_CallForeign Call_007_5D9B
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $6D9A: $21 $91 $CD
    ld c, [hl]                                    ; $6D9D: $4E
    inc hl                                        ; $6D9E: $23
    ld b, [hl]                                    ; $6D9F: $46
    ret                                           ; $6DA0: $C9


Jump_003_6DA1:
jr_003_6DA1:
    ld a, $FF                                     ; $6DA1: $3E $FF
    ld [wMenu_ReturnValue], a                                 ; $6DA3: $EA $A7 $CC
    Do_CallForeign Menu_Do
    call System_UpdateGameNoScript                                    ; $6DAE: $CD $5F $09
    ld a, [wMenu_ReturnValue]                                 ; $6DB1: $FA $A7 $CC
    cp $FF                                        ; $6DB4: $FE $FF
    jr z, jr_003_6DCF                             ; $6DB6: $28 $17

    cp $FE                                        ; $6DB8: $FE $FE
    jp z, Menu_Exit                           ; $6DBA: $CA $37 $76

    cp $0B                                        ; $6DBD: $FE $0B
    jp z, Jump_003_6DDC                           ; $6DBF: $CA $DC $6D

    cp $0C                                        ; $6DC2: $FE $0C
    jp z, Jump_003_6E56                           ; $6DC4: $CA $56 $6E

    ld a, $FF                                     ; $6DC7: $3E $FF
    ld [wMenu_Temp0], a                                 ; $6DC9: $EA $C9 $CC
    jp Jump_003_729A                              ; $6DCC: $C3 $9A $72


jr_003_6DCF:
    ld a, [wMenu_CursorID]                                 ; $6DCF: $FA $81 $CD
    ld c, a                                       ; $6DD2: $4F
    ld a, [wMenu_Temp0]                                 ; $6DD3: $FA $C9 $CC
    cp c                                          ; $6DD6: $B9
    jr z, jr_003_6DA1                             ; $6DD7: $28 $C8

    jp Jump_003_6F39                              ; $6DD9: $C3 $39 $6F


Jump_003_6DDC:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6DDC: $FA $D5 $CC
    sub $08                                       ; $6DDF: $D6 $08
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $6DE1: $EA $D5 $CC
    call Call_003_70D4                            ; $6DE4: $CD $D4 $70
    ld a, [wMenu_Generic_FatArrowTileID]                                 ; $6DE7: $FA $EB $CC
    call Menu_Generic_DrawDownArrow                            ; $6DEA: $CD $51 $77
    ld hl, $CCE2                                  ; $6DED: $21 $E2 $CC
    ld a, $01                                     ; $6DF0: $3E $01
    ld [hl-], a                                   ; $6DF2: $32
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6DF3: $FA $D5 $CC
    cp $08                                        ; $6DF6: $FE $08
    jr nc, jr_003_6E02                            ; $6DF8: $30 $08

    ld a, $00                                     ; $6DFA: $3E $00
    ld [hl], a                                    ; $6DFC: $77
    call Menu_Generic_EraseUpArrow                            ; $6DFD: $CD $C2 $77
    jr jr_003_6E05                                ; $6E00: $18 $03

jr_003_6E02:
    call Menu_Generic_DrawUpArrow                            ; $6E02: $CD $77 $77

jr_003_6E05:
    ld a, [wMenu_ReturnValue]                                 ; $6E05: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $6E08: $EA $81 $CD

    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    jp Jump_003_6DA1                              ; $6E53: $C3 $A1 $6D


Jump_003_6E56:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6E56: $FA $D5 $CC
    add $08                                       ; $6E59: $C6 $08
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $6E5B: $EA $D5 $CC
    call Call_003_70D4                            ; $6E5E: $CD $D4 $70
    ld a, [wMenu_ReturnValue]                                 ; $6E61: $FA $A7 $CC
    ld [wMenu_CursorID], a                                 ; $6E64: $EA $81 $CD
    call Menu_Generic_DrawUpArrow                            ; $6E67: $CD $77 $77
    ld a, $01                                     ; $6E6A: $3E $01
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up                                  ; $6E6C: $21 $E1 $CC
    ld [hl+], a                                   ; $6E6F: $22
    ld a, [wMenu_Generic_EntryCount]                                 ; $6E70: $FA $CC $CC
    ld c, a                                       ; $6E73: $4F
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $6E74: $FA $D5 $CC
    add $08                                       ; $6E77: $C6 $08
    cp c                                          ; $6E79: $B9
    jr c, jr_003_6E89                             ; $6E7A: $38 $0D

    ld a, $00                                     ; $6E7C: $3E $00
    ld [hl], a                                    ; $6E7E: $77
    ld a, $0B                                     ; $6E7F: $3E $0B
    ld [wMenu_CursorID], a                                 ; $6E81: $EA $81 $CD
    call Menu_Generic_EraseDownArrow                            ; $6E84: $CD $9D $77
    jr jr_003_6E8C                                ; $6E87: $18 $03

jr_003_6E89:
    call Menu_Generic_DrawDownArrow                            ; $6E89: $CD $51 $77

jr_003_6E8C:

    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    jp Jump_003_6DA1                              ; $6ED4: $C3 $A1 $6D


Call_003_6ED7:
    ld e, $DE                                     ; $6ED7: $1E $DE
    ld a, [wX100]                                 ; $6ED9: $FA $2F $C9
    call Call_003_77E7                            ; $6EDC: $CD $E7 $77
    ld e, $DE                                     ; $6EDF: $1E $DE
    ld a, [wX10]                                 ; $6EE1: $FA $2E $C9
    call Call_003_77E7                            ; $6EE4: $CD $E7 $77
    ld e, $DE                                     ; $6EE7: $1E $DE
    ld a, [wX1]                                 ; $6EE9: $FA $2D $C9
    call Call_003_77E7                            ; $6EEC: $CD $E7 $77
    ret                                           ; $6EEF: $C9


Jump_003_6EF0:
    ld hl, $CCEC                                  ; $6EF0: $21 $EC $CC
    ld a, $80                                     ; $6EF3: $3E $80
    ld b, $0C                                     ; $6EF5: $06 $0C

jr_003_6EF7:
    ld [hl+], a                                   ; $6EF7: $22
    dec b                                         ; $6EF8: $05
    jr nz, jr_003_6EF7                            ; $6EF9: $20 $FC

    push hl                                       ; $6EFB: $E5
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 de, $A3A5                                  ; $6F09: $21 $A5 $A3                                       ; $6F0E: $5F
    Battery_Off
    call Math_ConvertNumberToDigits                                    ; $6F13: $CD $1A $04
    pop hl                                        ; $6F16: $E1
    call Call_003_6ED7                            ; $6F17: $CD $D7 $6E
    ld a, $03                                     ; $6F1A: $3E $03
    ld [wVBlank_Bank], a                                 ; $6F1C: $EA $E6 $C6
    ld a, $E8                                     ; $6F1F: $3E $E8
    ld [wVBlank_Func], a                                 ; $6F21: $EA $E4 $C6
    ld a, $6F                                     ; $6F24: $3E $6F
    ld [wVBlank_Func+1], a                                 ; $6F26: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6F29: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $6F33: $EA $E5 $C6
    jp Jump_003_6DA1                              ; $6F36: $C3 $A1 $6D


Jump_003_6F39:
    ld a, [wMenu_CursorID]                                 ; $6F39: $FA $81 $CD
    ld [wMenu_Temp0], a                                 ; $6F3C: $EA $C9 $CC
    cp $0B                                        ; $6F3F: $FE $0B
    jp nc, Jump_003_6EF0                          ; $6F41: $D2 $F0 $6E

    sub $03                                       ; $6F44: $D6 $03
    ld c, a                                       ; $6F46: $4F
    ld b, $03                                     ; $6F47: $06 $03
    call Math_Mult                                    ; $6F49: $CD $CA $04
    ld de, $CCFE                                  ; $6F4C: $11 $FE $CC
    add hl, de                                    ; $6F4F: $19
    ld a, [hl+]                                   ; $6F50: $2A
    ld e, a                                       ; $6F51: $5F
    ld a, [hl+]                                   ; $6F52: $2A
    ld d, a                                       ; $6F53: $57
    cp $FF                                        ; $6F54: $FE $FF
    jp z, Jump_003_6EF0                           ; $6F56: $CA $F0 $6E

    push hl                                       ; $6F59: $E5
    call Math_ConvertNumberToDigits                                    ; $6F5A: $CD $1A $04
    ld hl, $CCEC                                  ; $6F5D: $21 $EC $CC
    ld a, $F2                                     ; $6F60: $3E $F2
    ld [hl+], a                                   ; $6F62: $22
    call Call_003_6ED7                            ; $6F63: $CD $D7 $6E
    ld b, h                                       ; $6F66: $44
    ld c, l                                       ; $6F67: $4D
    pop hl                                        ; $6F68: $E1
    push bc                                       ; $6F69: $C5
    ld a, [hl+]                                   ; $6F6A: $2A
    ld e, a                                       ; $6F6B: $5F
    ld d, $00                                     ; $6F6C: $16 $00
    call Math_ConvertNumberToDigits                                    ; $6F6E: $CD $1A $04
    pop hl                                        ; $6F71: $E1
    ld a, $F1                                     ; $6F72: $3E $F1
    ld [hl+], a                                   ; $6F74: $22
    call Call_003_6ED7                            ; $6F75: $CD $D7 $6E
    push hl                                       ; $6F78: $E5
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [wMenu_CursorID]                                 ; $6F86: $FA $81 $CD
    sub $03                                       ; $6F89: $D6 $03
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $6F8B: $21 $CD $CC
    ld c, a                                       ; $6F8E: $4F
    ld b, $00                                     ; $6F8F: $06 $00
    add hl, bc                                    ; $6F91: $09
    ld a, [hl]                                    ; $6F92: $7E
    ld hl, $A4A6                                  ; $6F93: $21 $A6 $A4
    ld c, a                                       ; $6F96: $4F
    add hl, bc                                    ; $6F97: $09
    ld a, [hl]                                    ; $6F98: $7E
    ld e, a                                       ; $6F99: $5F
    ld d, $00                                     ; $6F9A: $16 $00
    Battery_Off
    call Math_ConvertNumberToDigits                                    ; $6FA0: $CD $1A $04
    pop hl                                        ; $6FA3: $E1
    ld a, $F1                                     ; $6FA4: $3E $F1
    ld [hl+], a                                   ; $6FA6: $22
    call Call_003_6ED7                            ; $6FA7: $CD $D7 $6E
    push hl                                       ; $6FAA: $E5
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 de, $A3A5                                  ; $6FB8: $21 $A5 $A3                                       ; $6FBD: $5F
    Battery_Off
    call Math_ConvertNumberToDigits                                    ; $6FC2: $CD $1A $04
    pop hl                                        ; $6FC5: $E1
    call Call_003_6ED7                            ; $6FC6: $CD $D7 $6E
    ld a, $03                                     ; $6FC9: $3E $03
    ld [wVBlank_Bank], a                                 ; $6FCB: $EA $E6 $C6
    ld a, $E8                                     ; $6FCE: $3E $E8
    ld [wVBlank_Func], a                                 ; $6FD0: $EA $E4 $C6
    ld a, $6F                                     ; $6FD3: $3E $6F
    ld [wVBlank_Func+1], a                                 ; $6FD5: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $6FD8: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $6FE2: $EA $E5 $C6
    jp Jump_003_6DA1                              ; $6FE5: $C3 $A1 $6D


    ld hl, $CCEC                                  ; $6FE8: $21 $EC $CC
    ld bc, $9DE2                                  ; $6FEB: $01 $E2 $9D
    LdBCIHLI                                        ; $6FF0: $03
    LdBCIHLI                                        ; $6FF3: $03
    LdBCIHLI                                        ; $6FF6: $03
    LdBCIHLI                                        ; $6FF9: $03
    ld bc, $9E02                                  ; $6FFA: $01 $02 $9E
    LdBCIHLI                                        ; $6FFF: $03
    LdBCIHLI                                        ; $7002: $03
    LdBCIHLI                                        ; $7005: $03
    LdBCIHLI                                        ; $7008: $03
    ld bc, $9E0E                                  ; $7009: $01 $0E $9E
    LdBCIHLI                                        ; $700E: $03
    LdBCIHLI                                        ; $7011: $03
    LdBCIHLI                                        ; $7014: $03
    LdBCIHLI                                        ; $7017: $03
    ld bc, $9DEF                                  ; $7018: $01 $EF $9D
    LdBCIHLI                                        ; $701D: $03
    LdBCIHLI                                        ; $7020: $03
    LdBCIHLI                                        ; $7023: $03
    ret                                           ; $7024: $C9

Call_003_7025::
    call Menu_Setup_GenericMenu                            ; $7025: $CD $63 $74
    ld bc, TILEMAP_Menu_4E1B                                  ; $7028: $01 $1B $4E
    call Menu_LoadTilemap                            ; $702B: $CD $FA $76
    xor a                                         ; $702E: $AF
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $702F: $EA $D5 $CC
    ld [$CCE9], a                                 ; $7032: $EA $E9 $CC
    ld a, $03                                     ; $7035: $3E $03
    ld [wMenu_CursorID], a                                 ; $7037: $EA $81 $CD
    ld hl, xInventory_Rings                                  ; $703A: $21 $18 $A1
    ld a, h                                       ; $703D: $7C
    ld [$CCE5], a                                 ; $703E: $EA $E5 $CC
    ld a, l                                       ; $7041: $7D
    ld [$CCE4], a                                 ; $7042: $EA $E4 $CC
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [xRingCount]                                 ; $7052: $FA $22 $A1
    ld [wMenu_Generic_EntryCount], a                                 ; $7055: $EA $CC $CC
    Battery_Off
    call Call_003_70D4                            ; $705C: $CD $D4 $70


    Do_Menu_Init Menu_CursorTable_Generic, %11110011, wMenu_Generic_CursorTableValidIDs, MenuFunc_Exit, MenuFunc_Flash, [wMenu_CursorID], Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE
    ; TODOwMenu_Generic_CursorTableValidIDs to clarify
    ; TODO StartFunc is MenuFunc_Exit but disabled?

    call System_UpdateGameNoScript                                    ; $70A7: $CD $5F $09
    ld a, $03                                     ; $70AA: $3E $03
    ld [$CCE3], a                                 ; $70AC: $EA $E3 $CC
    ld a, $F3                                     ; $70AF: $3E $F3
    ld [wMenu_Generic_FatArrowTileID], a                                 ; $70B1: $EA $EB $CC
    call Menu_Generic_EraseUpArrow                            ; $70B4: $CD $C2 $77
    xor a                                         ; $70B7: $AF
    ld hl, wMenu_Generic_CursorTableValidIDs + Enum_Menu_CursorTable_Generic_Up                                  ; $70B8: $21 $E1 $CC
    ld [hl+], a                                   ; $70BB: $22
    ld [hl], a                                    ; $70BC: $77
    ld a, [wMenu_Generic_EntryCount]                                 ; $70BD: $FA $CC $CC
    ld c, a                                       ; $70C0: $4F
    ld a, $08                                     ; $70C1: $3E $08
    cp c                                          ; $70C3: $B9
    jr nc, jr_003_70CE                            ; $70C4: $30 $08

    ld a, $01                                     ; $70C6: $3E $01
    ld [hl], a                                    ; $70C8: $77
    call Menu_Generic_DrawDownArrow                            ; $70C9: $CD $51 $77
    jr jr_003_70D1                                ; $70CC: $18 $03

jr_003_70CE:
    call Menu_Generic_EraseDownArrow                            ; $70CE: $CD $9D $77

jr_003_70D1:
    jp Jump_003_6DA1                              ; $70D1: $C3 $A1 $6D


Call_003_70D4:
    call Call_003_71AA                            ; $70D4: $CD $AA $71
    ld bc, $5AA6                                  ; $70D7: $01 $A6 $5A
    FSet16 wMenu_Generic_EntryDataTable, bc                                    ; $70DF: $70
    ld a, $0A                                     ; $70E0: $3E $0A
    ld [$CCE8], a                                 ; $70E2: $EA $E8 $CC
    ld [$CCEA], a                                 ; $70E5: $EA $EA $CC
    call ScreenHide                                    ; $70E8: $CD $C3 $07
    call Call_003_7103                            ; $70EB: $CD $03 $71
    ld bc, $5320                                  ; $70EE: $01 $20 $53
    ld a, $10                                     ; $70F1: $3E $10
    call Call_003_77F3                            ; $70F3: $CD $F3 $77
    call Call_003_7393                            ; $70F6: $CD $93 $73
    call Call_003_7415                            ; $70F9: $CD $15 $74
    call ScreenShow                                    ; $70FC: $CD $EA $07
    call Call_003_7213                            ; $70FF: $CD $13 $72
    ret                                           ; $7102: $C9


Call_003_7103:
    ld a, $01                                     ; $7103: $3E $01
    ld [rVBK], a                                 ; $7105: $EA $4F $FF
    xor a                                         ; $7108: $AF
    ld [wMenu_Temp6], a                                 ; $7109: $EA $C6 $CC
    ld de, $8860                                  ; $710C: $11 $60 $88
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de                                    ; $7114: $72

jr_003_7115:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $7115: $21 $CD $CC
    ld a, [wMenu_Temp6]                                 ; $7118: $FA $C6 $CC
    ld c, a                                       ; $711B: $4F
    ld b, $00                                     ; $711C: $06 $00
    add hl, bc                                    ; $711E: $09
    ld a, [hl]                                    ; $711F: $7E
    cp $FF                                        ; $7120: $FE $FF
    jr z, jr_003_718C                             ; $7122: $28 $68

    ld b, a                                       ; $7124: $47
    ld a, [$CCE8]                                 ; $7125: $FA $E8 $CC
    ld c, a                                       ; $7128: $4F
    call Math_Mult                                    ; $7129: $CD $CA $04
    ld a, [wMenu_Generic_EntryDataTable + 1]                                 ; $712C: $FA $E7 $CC
    ld b, a                                       ; $712F: $47
    ld a, [wMenu_Generic_EntryDataTable]                                 ; $7130: $FA $E6 $CC
    ld c, a                                       ; $7133: $4F
    add hl, bc                                    ; $7134: $09
    ld a, h                                       ; $7135: $7C
    ld [wBattle_CopyBuffer_Source + 1], a                                 ; $7136: $EA $8E $CD
    ld a, l                                       ; $7139: $7D
    ld [wBattle_CopyBuffer_Source], a                                 ; $713A: $EA $8D $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $713D: $01 $91 $CD
    ld a, $10                                     ; $7140: $3E $10
    ld [bc], a                                    ; $7142: $02
    inc bc                                        ; $7143: $03
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $7149: $70
    Do_CallForeign Call_006_5A87
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $7152: $21 $91 $CD
    ld a, [$CCE9]                                 ; $7155: $FA $E9 $CC
    ld e, a                                       ; $7158: $5F
    ld d, $00                                     ; $7159: $16 $00
    add hl, de                                    ; $715B: $19
    ld a, h                                       ; $715C: $7C
    ld [wMenu_MainMenu_StringToTileset_Source+1], a                                 ; $715D: $EA $44 $CC
    ld a, l                                       ; $7160: $7D
    ld [wMenu_MainMenu_StringToTileset_Source], a                                 ; $7161: $EA $43 $CC
    ld a, [$CCEA]                                 ; $7164: $FA $EA $CC
    inc a                                         ; $7167: $3C
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $7168: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    ld a, [wMenu_Temp6]                                 ; $7173: $FA $C6 $CC
    add $03                                       ; $7176: $C6 $03
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $7178: $21 $D6 $CC
    ld d, $00                                     ; $717B: $16 $00
    ld e, a                                       ; $717D: $5F
    add hl, de                                    ; $717E: $19
    ld a, $01                                     ; $717F: $3E $01
    ld [hl], a                                    ; $7181: $77
    ld hl, wMenu_Temp6                                  ; $7182: $21 $C6 $CC
    inc [hl]                                      ; $7185: $34
    ld a, [hl]                                    ; $7186: $7E
    cp $08                                        ; $7187: $FE $08
    jr nz, jr_003_7115                            ; $7189: $20 $8A

    ret                                           ; $718B: $C9


jr_003_718C:
    ld a, [$CCEA]                                 ; $718C: $FA $EA $CC
    inc a                                         ; $718F: $3C
    call Menu_EmptyStringToTileset                            ; $7190: $CD $2F $77
    ld a, [wMenu_Temp6]                                 ; $7193: $FA $C6 $CC
    add $03                                       ; $7196: $C6 $03
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $7198: $21 $D6 $CC
    ld d, $00                                     ; $719B: $16 $00
    ld e, a                                       ; $719D: $5F
    add hl, de                                    ; $719E: $19
    ld [hl], d                                    ; $719F: $72
    ld hl, wMenu_Temp6                                  ; $71A0: $21 $C6 $CC
    inc [hl]                                      ; $71A3: $34
    ld a, [hl]                                    ; $71A4: $7E
    cp $08                                        ; $71A5: $FE $08
    jr nz, jr_003_718C                            ; $71A7: $20 $E3

    ret                                           ; $71A9: $C9


Call_003_71AA:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $71AA: $FA $D5 $CC
    ld [wMenu_Temp6], a                                 ; $71AD: $EA $C6 $CC
    xor a                                         ; $71B0: $AF
    ld [$CCC7], a                                 ; $71B1: $EA $C7 $CC
    add hl, bc                                    ; $71B4: $09
    Battery_SetBank "XRAM Creatures"
    Battery_On

jr_003_71C2:
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $71C2: $FA $D5 $CC
    add $08                                       ; $71C5: $C6 $08
    ld e, a                                       ; $71C7: $5F
    ld a, [wMenu_Temp6]                                 ; $71C8: $FA $C6 $CC
    cp e                                          ; $71CB: $BB
    jr z, jr_003_71FB                             ; $71CC: $28 $2D

    inc a                                         ; $71CE: $3C
    ld [wMenu_Temp6], a                                 ; $71CF: $EA $C6 $CC
    dec a                                         ; $71D2: $3D
    ld c, a                                       ; $71D3: $4F
    ld b, $25                                     ; $71D4: $06 $25
    call Math_Mult                                    ; $71D6: $CD $CA $04
    ld bc, $A025                                  ; $71D9: $01 $25 $A0
    add hl, bc                                    ; $71DC: $09
    ld a, [hl]                                    ; $71DD: $7E
    cp $FF                                        ; $71DE: $FE $FF
    jr z, jr_003_71C2                             ; $71E0: $28 $E0

    ld e, a                                       ; $71E2: $5F
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $71E3: $21 $CD $CC
    ld a, [$CCC7]                                 ; $71E6: $FA $C7 $CC
    ld c, a                                       ; $71E9: $4F
    ld b, $00                                     ; $71EA: $06 $00
    add hl, bc                                    ; $71EC: $09
    ld [hl], e                                    ; $71ED: $73
    inc a                                         ; $71EE: $3C
    ld [$CCC7], a                                 ; $71EF: $EA $C7 $CC
    cp $08                                        ; $71F2: $FE $08
    jr nz, jr_003_71C2                            ; $71F4: $20 $CC

    Battery_Off
    ret                                           ; $71FA: $C9


jr_003_71FB:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $71FB: $21 $CD $CC
    ld a, [$CCC7]                                 ; $71FE: $FA $C7 $CC
    ld c, a                                       ; $7201: $4F
    ld b, $00                                     ; $7202: $06 $00
    add hl, bc                                    ; $7204: $09

jr_003_7205:
    ld a, $FF                                     ; $7205: $3E $FF
    ld [hl+], a                                   ; $7207: $22
    inc c                                         ; $7208: $0C
    ld a, c                                       ; $7209: $79
    cp $08                                        ; $720A: $FE $08
    jr nz, jr_003_7205                            ; $720C: $20 $F7

    Battery_Off
    ret                                           ; $7212: $C9


Call_003_7213:
    xor a                                         ; $7213: $AF
    ld [wMenu_Temp6], a                                 ; $7214: $EA $C6 $CC
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $7217: $21 $CD $CC

Jump_003_721A:
    ld a, [wMenu_Temp6]                                 ; $721A: $FA $C6 $CC
    cp $08                                        ; $721D: $FE $08
    ret z                                         ; $721F: $C8

    inc a                                         ; $7220: $3C
    ld [wMenu_Temp6], a                                 ; $7221: $EA $C6 $CC
    ld a, [hl+]                                   ; $7224: $2A
    ld d, a                                       ; $7225: $57
    ld e, $00                                     ; $7226: $1E $00
    push hl                                       ; $7228: $E5
    ld hl, $D001                                  ; $7229: $21 $01 $D0
    SwitchRAMBank $06

jr_003_7233:
    ld a, [hl+]                                   ; $7233: $2A
    cp d                                          ; $7234: $BA
    jr z, jr_003_724A                             ; $7235: $28 $13

    inc e                                         ; $7237: $1C
    ld a, [$D000]                                 ; $7238: $FA $00 $D0
    cp e                                          ; $723B: $BB
    jr nz, jr_003_7233                            ; $723C: $20 $F5

jr_003_723E:
    ld a, $FF                                     ; $723E: $3E $FF
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $7240: $01 $91 $CD
    ld [bc], a                                    ; $7243: $02
    inc bc                                        ; $7244: $03
    ld [bc], a                                    ; $7245: $02
    inc bc                                        ; $7246: $03
    ld [bc], a                                    ; $7247: $02
    jr jr_003_727D                                ; $7248: $18 $33

jr_003_724A:
    ld a, [wMenu_Temp6]                                 ; $724A: $FA $C6 $CC
    dec a                                         ; $724D: $3D
    ld c, a                                       ; $724E: $4F
    ld b, $00                                     ; $724F: $06 $00
    ld hl, $CD17                                  ; $7251: $21 $17 $CD
    add hl, bc                                    ; $7254: $09
    ld a, [hl]                                    ; $7255: $7E
    cp $63                                        ; $7256: $FE $63
    jr z, jr_003_723E                             ; $7258: $28 $E4

    ld c, a                                       ; $725A: $4F
    ld b, $03                                     ; $725B: $06 $03
    call Math_Mult                                    ; $725D: $CD $CA $04
    ld de, $5AD7                                  ; $7260: $11 $D7 $5A
    add hl, de                                    ; $7263: $19
    ld a, h                                       ; $7264: $7C
    ld [wBattle_CopyBuffer_Source + 1], a                                 ; $7265: $EA $8E $CD
    ld a, l                                       ; $7268: $7D
    ld [wBattle_CopyBuffer_Source], a                                 ; $7269: $EA $8D $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $726C: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $7274: $70
    Do_CallForeign Call_007_5AC1

jr_003_727D:
    ld a, [wMenu_Temp6]                                 ; $727D: $FA $C6 $CC
    dec a                                         ; $7280: $3D
    ld c, a                                       ; $7281: $4F
    ld b, $03                                     ; $7282: $06 $03
    call Math_Mult                                    ; $7284: $CD $CA $04
    ld bc, $CCFE                                  ; $7287: $01 $FE $CC
    add hl, bc                                    ; $728A: $09
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $728B: $01 $91 $CD
    LdHLIBCI                                        ; $7290: $03
    LdHLIBCI                                        ; $7293: $03
    ld a, [bc]                                    ; $7294: $0A
    ld [hl], a                                    ; $7295: $77
    pop hl                                        ; $7296: $E1
    jp Jump_003_721A                              ; $7297: $C3 $1A $72


Jump_003_729A:
    ld a, [wMenu_ReturnValue]                                 ; $729A: $FA $A7 $CC
    sub $03                                       ; $729D: $D6 $03
    ld c, a                                       ; $729F: $4F
    ld b, $03                                     ; $72A0: $06 $03
    call Math_Mult                                    ; $72A2: $CD $CA $04
    ld de, $CCFE                                  ; $72A5: $11 $FE $CC
    add hl, de                                    ; $72A8: $19
    ld c, [hl]                                    ; $72A9: $4E
    inc hl                                        ; $72AA: $23
    ld b, [hl]                                    ; $72AB: $46
    inc hl                                        ; $72AC: $23
    push bc                                       ; $72AD: $C5
    push hl                                       ; $72AE: $E5
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 hl, $A3A5                                  ; $72BC: $21 $A5 $A3
    ld a, b                                       ; $72C2: $78
    cp h                                          ; $72C3: $BC
    jr c, jr_003_72CD                             ; $72C4: $38 $07

    jr nz, jr_003_730E                            ; $72C6: $20 $46

    ld a, l                                       ; $72C8: $7D
    cp c                                          ; $72C9: $B9
    jp c, Jump_003_730E                           ; $72CA: $DA $0E $73

jr_003_72CD:
    ld a, [wMenu_ReturnValue]                                 ; $72CD: $FA $A7 $CC
    sub $03                                       ; $72D0: $D6 $03
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $72D2: $21 $CD $CC
    ld c, a                                       ; $72D5: $4F
    ld b, $00                                     ; $72D6: $06 $00
    add hl, bc                                    ; $72D8: $09
    ld a, [hl]                                    ; $72D9: $7E
    ld c, a                                       ; $72DA: $4F
    Battery_On
    ld hl, $A4A6                                  ; $72E0: $21 $A6 $A4
    add hl, bc                                    ; $72E3: $09
    pop de                                        ; $72E4: $D1
    push de                                       ; $72E5: $D5
    ld a, [de]                                    ; $72E6: $1A
    ld c, a                                       ; $72E7: $4F
    ld a, [hl]                                    ; $72E8: $7E
    cp c                                          ; $72E9: $B9
    jr c, jr_003_730E                             ; $72EA: $38 $22

    sub c                                         ; $72EC: $91
    ld [hl], a                                    ; $72ED: $77
    FGet16 de, $A3A5                                  ; $72EE: $21 $A5 $A3                                       ; $72F3: $5F
    ld a, e                                       ; $72F4: $7B
    pop hl                                        ; $72F5: $E1
    pop bc                                        ; $72F6: $C1
    sub c                                         ; $72F7: $91
    ld e, a                                       ; $72F8: $5F
    jr nc, jr_003_72FC                            ; $72F9: $30 $01

    dec d                                         ; $72FB: $15

jr_003_72FC:
    ld a, d                                       ; $72FC: $7A
    sub b                                         ; $72FD: $90
    ld d, a                                       ; $72FE: $57
    FSet16 $A3A5, de                                    ; $7304: $72
    call Call_003_731C                            ; $7305: $CD $1C $73
    call Call_003_7213                            ; $7308: $CD $13 $72
    jp Jump_003_6DA1                              ; $730B: $C3 $A1 $6D


Jump_003_730E:
jr_003_730E:
    pop hl                                        ; $730E: $E1
    pop hl                                        ; $730F: $E1
    Battery_Off
    Sound_Request_StartSFX0 SFXID_SfxCancel
    jp Jump_003_6DA1                              ; $7319: $C3 $A1 $6D


Call_003_731C:
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $7329: $FA $D5 $CC
    ld c, a                                       ; $732C: $4F
    ld a, [wMenu_ReturnValue]                                 ; $732D: $FA $A7 $CC
    sub $03                                       ; $7330: $D6 $03
    add c                                         ; $7332: $81
    ld c, a                                       ; $7333: $4F
    ld b, $25                                     ; $7334: $06 $25
    call Math_Mult                                    ; $7336: $CD $CA $04
    ld de, $A025                                  ; $7339: $11 $25 $A0
    add hl, de                                    ; $733C: $19
    ld a, h                                       ; $733D: $7C
    ld [$CD53], a                                 ; $733E: $EA $53 $CD
    ld a, l                                       ; $7341: $7D
    ld [$CD52], a                                 ; $7342: $EA $52 $CD
    ld a, $02                                     ; $7345: $3E $02
    ld [$CD50], a                                 ; $7347: $EA $50 $CD
    PushRAMBank
    Do_CallForeign Call_002_5B35
    PopRAMBank
    Battery_Off
    ld a, [wMenu_ReturnValue]                                 ; $7361: $FA $A7 $CC
    sub $03                                       ; $7364: $D6 $03
    ld [wMenu_Temp6], a                                 ; $7366: $EA $C6 $CC
    ld hl, $CD17                                  ; $7369: $21 $17 $CD
    ld c, a                                       ; $736C: $4F
    ld b, $00                                     ; $736D: $06 $00
    add hl, bc                                    ; $736F: $09
    ld a, [hl]                                    ; $7370: $7E
    inc a                                         ; $7371: $3C
    ld [hl], a                                    ; $7372: $77
    ld [$CCEC], a                                 ; $7373: $EA $EC $CC
    ld a, $03                                     ; $7376: $3E $03
    ld [wVBlank_Bank], a                                 ; $7378: $EA $E6 $C6
    ld a, $E3                                     ; $737B: $3E $E3
    ld [wVBlank_Func], a                                 ; $737D: $EA $E4 $C6
    ld a, $73                                     ; $7380: $3E $73
    ld [wVBlank_Func+1], a                                 ; $7382: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $7385: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $738F: $EA $E5 $C6
    ret                                           ; $7392: $C9


Call_003_7393:
    xor a                                         ; $7393: $AF
    ld [rVBK], a                                 ; $7394: $EA $4F $FF
    ld [wMenu_Temp6], a                                 ; $7397: $EA $C6 $CC

Jump_003_739A:
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $73A7: $FA $D5 $CC
    ld c, a                                       ; $73AA: $4F
    ld a, [wMenu_Temp6]                                 ; $73AB: $FA $C6 $CC
    add c                                         ; $73AE: $81
    ld c, a                                       ; $73AF: $4F
    ld b, $25                                     ; $73B0: $06 $25
    call Math_Mult                                    ; $73B2: $CD $CA $04
    ld bc, $A025                                  ; $73B5: $01 $25 $A0
    add hl, bc                                    ; $73B8: $09
    ld c, $02                                     ; $73B9: $0E $02
    ld b, $00                                     ; $73BB: $06 $00
    add hl, bc                                    ; $73BD: $09
    ld a, [hl]                                    ; $73BE: $7E
    ld e, a                                       ; $73BF: $5F
    ld hl, $CD17                                  ; $73C0: $21 $17 $CD
    ld a, [wMenu_Temp6]                                 ; $73C3: $FA $C6 $CC
    ld c, a                                       ; $73C6: $4F
    ld b, $00                                     ; $73C7: $06 $00
    add hl, bc                                    ; $73C9: $09
    ld [hl], e                                    ; $73CA: $73
    ld a, e                                       ; $73CB: $7B
    ld [$CCEC], a                                 ; $73CC: $EA $EC $CC
    Battery_Off
    call Call_003_73E3                            ; $73D3: $CD $E3 $73
    ld a, [wMenu_Temp6]                                 ; $73D6: $FA $C6 $CC
    inc a                                         ; $73D9: $3C
    cp $08                                        ; $73DA: $FE $08
    ret z                                         ; $73DC: $C8

    ld [wMenu_Temp6], a                                 ; $73DD: $EA $C6 $CC
    jp Jump_003_739A                              ; $73E0: $C3 $9A $73


Call_003_73E3:
    ld a, [wMenu_Temp6]                                 ; $73E3: $FA $C6 $CC
    ld c, a                                       ; $73E6: $4F
    ld b, $20                                     ; $73E7: $06 $20
    call Math_Mult                                    ; $73E9: $CD $CA $04
    ld de, $9C6E                                  ; $73EC: $11 $6E $9C
    add hl, de                                    ; $73EF: $19
    ld a, [$CCEC]                                 ; $73F0: $FA $EC $CC
    cp $FF                                        ; $73F3: $FE $FF
    jr z, jr_003_7410                             ; $73F5: $28 $19

    push hl                                       ; $73F7: $E5
    ld e, a                                       ; $73F8: $5F
    ld d, $00                                     ; $73F9: $16 $00
    call Math_ConvertNumberToDigits                                    ; $73FB: $CD $1A $04
    pop hl                                        ; $73FE: $E1
    ld e, $DE                                     ; $73FF: $1E $DE
    ld a, [wX10]                                 ; $7401: $FA $2E $C9
    call Call_003_77E7                            ; $7404: $CD $E7 $77
    ld e, $DE                                     ; $7407: $1E $DE
    ld a, [wX1]                                 ; $7409: $FA $2D $C9
    call Call_003_77E7                            ; $740C: $CD $E7 $77
    ret                                           ; $740F: $C9


jr_003_7410:
    ld a, $80                                     ; $7410: $3E $80
    ld [hl+], a                                   ; $7412: $22
    ld [hl+], a                                   ; $7413: $22
    ret                                           ; $7414: $C9


Call_003_7415:
    xor a                                         ; $7415: $AF
    ld [wMenu_Temp6], a                                 ; $7416: $EA $C6 $CC

jr_003_7419:
    ld e, $F7                                     ; $7419: $1E $F7
    ld a, [wMenu_Temp6]                                 ; $741B: $FA $C6 $CC
    ld d, a                                       ; $741E: $57
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $741F: $FA $D5 $CC
    add d                                         ; $7422: $82
    ld d, a                                       ; $7423: $57
    ld c, $00                                     ; $7424: $0E $00
    ld hl, xInventory_Rings                                  ; $7426: $21 $18 $A1
    Battery_SetBank "XRAM Gamestate"
    Battery_On

jr_003_7436:
    ld a, [hl+]                                   ; $7436: $2A
    dec a                                         ; $7437: $3D
    cp d                                          ; $7438: $BA
    jr z, jr_003_7443                             ; $7439: $28 $08

    inc c                                         ; $743B: $0C
    ld a, c                                       ; $743C: $79
    cp $0A                                        ; $743D: $FE $0A
    jr nz, jr_003_7436                            ; $743F: $20 $F5

    ld e, $80                                     ; $7441: $1E $80

jr_003_7443:
    Battery_Off
    ld a, [wMenu_Temp6]                                 ; $7447: $FA $C6 $CC
    ld c, a                                       ; $744A: $4F
    ld b, $20                                     ; $744B: $06 $20
    push de                                       ; $744D: $D5
    call Math_Mult                                    ; $744E: $CD $CA $04
    ld bc, $9C71                                  ; $7451: $01 $71 $9C
    add hl, bc                                    ; $7454: $09
    pop de                                        ; $7455: $D1
    ld [hl], e                                    ; $7456: $73
    ld a, [wMenu_Temp6]                                 ; $7457: $FA $C6 $CC
    inc a                                         ; $745A: $3C
    cp $08                                        ; $745B: $FE $08
    ret z                                         ; $745D: $C8

    ld [wMenu_Temp6], a                                 ; $745E: $EA $C6 $CC
    jr jr_003_7419                                ; $7461: $18 $B6

    ; $7463
Menu_Setup_GenericMenu::
    ; Initializes the screen and attrmap for a generic menu
    ; Backs up the scene data so we have more room
    ; And initializes cursorid for a Historian menu
    ; - todo - possibly other menus as well

    call ScreenHide

    ; Set the entire attrmap to $0F
    Set8 rVBK, $01
    ld d, $0F
    ld bc, WINDOW_COORD_11_13 - (WINDOW_COORD_00_00 - 1)
    .AttrLoop:
        ld hl, WINDOW_COORD_00_00 - 1
        add hl, bc
        ld [hl], d
        Dec16Loop bc, .AttrLoop

    ; YFlip the attrmap for the bottom-most line
    ld a, $4F
    ld d, (WINDOW_COORD_11_13 - WINDOW_COORD_11_01)
    ld hl, WINDOW_COORD_11_01
    .HorLoop:
        ld [hl+], a
        dec d
        jr nz, .HorLoop

    ; XFlip the attrmap for the left-most line
    ld bc, (WINDOW_COORD_10_00 - WINDOW_COORD_00_00)/SCRN_VX_B
    .VerLoop:
        ; coord = WINDOW_COORD_00_00 + bc << 5 = WINDOW_COORD_00_00 + bc*$20
        ld hl, $9C00
        push bc
        Sla16 bc, 5 ; *$20
        add hl, bc
        ld a, $2F
        ld [hl+], a
        pop bc
        dec c
        jr nz, .VerLoop

    ; Flip the tiles for the corners of the border
    ; as well as the Up and Down arrows
    ld a, $2F
    ld [WINDOW_COORD_00_00], a ; Topleft border corner
    ld [WINDOW_COORD_01_0A], a ; Up arrow (right)
    ld [WINDOW_COORD_0D_00], a ; Middleleft border corner
    ld a, $4F
    ld [WINDOW_COORD_11_13], a ; Bottomright border corner
    ld [WINDOW_COORD_0C_09], a ; Down arrow (left)
    ld a, $6F
    ld [WINDOW_COORD_11_00], a ; Bottomleft border corner
    ld [WINDOW_COORD_0C_0A], a ; Down arrow (right)

    ; Set the window frame
    xor a
    ld [wTextbox_WY], a
    Set8 wTextbox_WX, $07

    ; Backup the scene assets so we have more space to work
    Do_CallForeign Menu_MainMenu_BackupVRAMObjectsChars
    Do_CallForeign Cardscene_BackupBackgroundCharsBC

    ; Reset the wMenu_CursorID
    ; It looks like we are setting this up for the Historian
    xor a ; Items
    ld [wMenu_CursorID], a

    ; Init the valid ids table.
    ; It looks like we are setting this up for the Historian
    ; See Menu_CursorTable_Generic
    ld hl, wMenu_Generic_CursorTableValidIDs
    ld c, $01
    ld [hl], c ; Items
    inc hl
    ld [hl], c ; Spells
    inc hl
    ld [hl], c ; Relics
    inc hl
    ld [hl+], a ; Choice0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a ; Choice7
    ld [hl+], a ; Up
    ld [hl+], a ; Down
    ld [hl], c  ; Done

    ld [$CCE3], a ; TODO
    ret


Call_003_74EF:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld b, $00                                     ; $74FC: $06 $00

jr_003_74FE:
    dec c                                         ; $74FE: $0D
    jr z, jr_003_7509                             ; $74FF: $28 $08

    ld a, [hl+]                                   ; $7501: $2A
    cp $00                                        ; $7502: $FE $00
    jr z, jr_003_74FE                             ; $7504: $28 $F8

    inc b                                         ; $7506: $04
    jr jr_003_74FE                                ; $7507: $18 $F5

jr_003_7509:
    Battery_Off
    ld a, b                                       ; $750D: $78
    ld [wMenu_Generic_EntryCount], a                                 ; $750E: $EA $CC $CC
    ret                                           ; $7511: $C9


Call_003_7512:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $7512: $21 $CD $CC
    ld de, $0007                                  ; $7515: $11 $07 $00
    add hl, de                                    ; $7518: $19
    ld d, h                                       ; $7519: $54
    ld e, l                                       ; $751A: $5D
    FGet16 hl, $CCE4                                  ; $751B: $21 $E4 $CC
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $7521: $FA $D5 $CC
    dec a                                         ; $7524: $3D
    ld c, a                                       ; $7525: $4F
    ld b, $00                                     ; $7526: $06 $00
    add hl, bc                                    ; $7528: $09
    Battery_SetBank "XRAM Gamestate"
    Battery_On

jr_003_7536:
    dec c                                         ; $7536: $0D
    ld a, [hl-]                                   ; $7537: $3A
    cp $00                                        ; $7538: $FE $00
    jr z, jr_003_7536                             ; $753A: $28 $FA

    ld a, c                                       ; $753C: $79
    inc a                                         ; $753D: $3C
    ld [de], a                                    ; $753E: $12
    dec de                                        ; $753F: $1B
    inc b                                         ; $7540: $04
    ld a, b                                       ; $7541: $78
    cp $08                                        ; $7542: $FE $08
    jr nz, jr_003_7536                            ; $7544: $20 $F0

    ld a, c                                       ; $7546: $79
    inc a                                         ; $7547: $3C
    ld [wMenu_Generic_TopEntryIndex], a                                 ; $7548: $EA $D5 $CC
    Battery_Off
    ret                                           ; $754F: $C9


Call_003_7550:
    FGet16 hl, $CCE4                                  ; $7550: $21 $E4 $CC
    ld a, [wMenu_Generic_TopEntryIndex]                                 ; $7556: $FA $D5 $CC
    ld c, a                                       ; $7559: $4F
    ld b, $00                                     ; $755A: $06 $00
    add hl, bc                                    ; $755C: $09
    ld de, wMenu_Generic_EntryReturnVals                                  ; $755D: $11 $CD $CC
    Battery_SetBank "XRAM Gamestate"
    Battery_On

jr_003_756D:
    inc c                                         ; $756D: $0C
    ld a, c                                       ; $756E: $79
    cp $FF                                        ; $756F: $FE $FF
    jr z, jr_003_7587                             ; $7571: $28 $14

    ld a, [hl+]                                   ; $7573: $2A
    cp $00                                        ; $7574: $FE $00
    jr z, jr_003_756D                             ; $7576: $28 $F5

    ld a, c                                       ; $7578: $79
    dec a                                         ; $7579: $3D
    ld [de], a                                    ; $757A: $12
    inc de                                        ; $757B: $13
    inc b                                         ; $757C: $04
    ld a, b                                       ; $757D: $78
    cp $08                                        ; $757E: $FE $08
    jr nz, jr_003_756D                            ; $7580: $20 $EB

    Battery_Off
    ret                                           ; $7586: $C9


jr_003_7587:
    ld a, $FF                                     ; $7587: $3E $FF
    ld [de], a                                    ; $7589: $12
    inc de                                        ; $758A: $13
    inc b                                         ; $758B: $04
    ld a, b                                       ; $758C: $78
    cp $08                                        ; $758D: $FE $08
    jr nz, jr_003_7587                            ; $758F: $20 $F6

    Battery_Off
    ret                                           ; $7595: $C9


Call_003_7596:
    ld a, $01                                     ; $7596: $3E $01
    ld [rVBK], a                                 ; $7598: $EA $4F $FF
    xor a                                         ; $759B: $AF
    ld [wMenu_Temp6], a                                 ; $759C: $EA $C6 $CC
    ld de, $8860                                  ; $759F: $11 $60 $88
    FSet16 wMenu_MainMenu_StringToTileset_Dest, de                                    ; $75A7: $72

jr_003_75A8:
    ld hl, wMenu_Generic_EntryReturnVals                                  ; $75A8: $21 $CD $CC
    ld a, [wMenu_Temp6]                                 ; $75AB: $FA $C6 $CC
    ld c, a                                       ; $75AE: $4F
    ld b, $00                                     ; $75AF: $06 $00
    add hl, bc                                    ; $75B1: $09
    ld a, [hl]                                    ; $75B2: $7E
    cp $FF                                        ; $75B3: $FE $FF
    jr z, jr_003_761A                             ; $75B5: $28 $63

    ld b, a                                       ; $75B7: $47
    ld a, [$CCE8]                                 ; $75B8: $FA $E8 $CC
    ld c, a                                       ; $75BB: $4F
    call Math_Mult                                    ; $75BC: $CD $CA $04
    ld a, [wMenu_Generic_EntryDataTable + 1]                                 ; $75BF: $FA $E7 $CC
    ld b, a                                       ; $75C2: $47
    ld a, [wMenu_Generic_EntryDataTable]                                 ; $75C3: $FA $E6 $CC
    ld c, a                                       ; $75C6: $4F
    add hl, bc                                    ; $75C7: $09
    ld a, h                                       ; $75C8: $7C
    ld [wBattle_CopyBuffer_Source + 1], a                                 ; $75C9: $EA $8E $CD
    ld a, l                                       ; $75CC: $7D
    ld [wBattle_CopyBuffer_Source], a                                 ; $75CD: $EA $8D $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $75D0: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $75D8: $70
    Do_CallForeign ItemSpell_GetDataFromAddress
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $75E1: $21 $91 $CD
    ld a, [$CCE9]                                 ; $75E4: $FA $E9 $CC
    ld e, a                                       ; $75E7: $5F
    ld d, $00                                     ; $75E8: $16 $00
    add hl, de                                    ; $75EA: $19
    ld a, h                                       ; $75EB: $7C
    ld [wMenu_MainMenu_StringToTileset_Source+1], a                                 ; $75EC: $EA $44 $CC
    ld a, l                                       ; $75EF: $7D
    ld [wMenu_MainMenu_StringToTileset_Source], a                                 ; $75F0: $EA $43 $CC
    ld a, [$CCEA]                                 ; $75F3: $FA $EA $CC
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $75F6: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    ld a, [wMenu_Temp6]                                 ; $7601: $FA $C6 $CC
    add $03                                       ; $7604: $C6 $03
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $7606: $21 $D6 $CC
    ld d, $00                                     ; $7609: $16 $00
    ld e, a                                       ; $760B: $5F
    add hl, de                                    ; $760C: $19
    ld a, $01                                     ; $760D: $3E $01
    ld [hl], a                                    ; $760F: $77
    ld hl, wMenu_Temp6                                  ; $7610: $21 $C6 $CC
    inc [hl]                                      ; $7613: $34
    ld a, [hl]                                    ; $7614: $7E
    cp $08                                        ; $7615: $FE $08
    jr nz, jr_003_75A8                            ; $7617: $20 $8F

    ret                                           ; $7619: $C9


jr_003_761A:
    ld a, [$CCEA]                                 ; $761A: $FA $EA $CC
    call Menu_EmptyStringToTileset                            ; $761D: $CD $2F $77
    ld a, [wMenu_Temp6]                                 ; $7620: $FA $C6 $CC
    add $03                                       ; $7623: $C6 $03
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $7625: $21 $D6 $CC
    ld d, $00                                     ; $7628: $16 $00
    ld e, a                                       ; $762A: $5F
    add hl, de                                    ; $762B: $19
    ld [hl], d                                    ; $762C: $72
    ld hl, wMenu_Temp6                                  ; $762D: $21 $C6 $CC
    inc [hl]                                      ; $7630: $34
    ld a, [hl]                                    ; $7631: $7E
    cp $08                                        ; $7632: $FE $08
    jr nz, jr_003_761A                            ; $7634: $20 $E4

    ret                                           ; $7636: $C9

    ; $7637
Menu_Exit:
    call Frame_ClearAll
    call ScreenHide
    Do_CallForeign Menu_MainMenu_RestoreVRAMObjectsChars
    Cardscene_RestoreBackgroundCharsBC
    Do_CallForeign TextboxXX_Init
    call ScreenShow
    ret


Call_003_7679:
    ld a, $03                                     ; $7679: $3E $03
    ld [wVBlank_Bank], a                                 ; $767B: $EA $E6 $C6
    ld a, $96                                     ; $767E: $3E $96
    ld [wVBlank_Func], a                                 ; $7680: $EA $E4 $C6
    ld a, $76                                     ; $7683: $3E $76
    ld [wVBlank_Func+1], a                                 ; $7685: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $7688: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $7692: $EA $E5 $C6
    ret                                           ; $7695: $C9


    ld a, [wMenu_Music_FirstSongChoice]                                 ; $7696: $FA $CB $CC
    cp $00                                        ; $7699: $FE $00
    jr z, jr_003_76A6                             ; $769B: $28 $09

    cp $01                                        ; $769D: $FE $01
    jr z, jr_003_76AB                             ; $769F: $28 $0A

    ld hl, $9E01                                  ; $76A1: $21 $01 $9E
    jr jr_003_76AE                                ; $76A4: $18 $08

jr_003_76A6:
    ld hl, $9DC1                                  ; $76A6: $21 $C1 $9D
    jr jr_003_76AE                                ; $76A9: $18 $03

jr_003_76AB:
    ld hl, $9DE1                                  ; $76AB: $21 $E1 $9D

jr_003_76AE:
    ld [hl], $82                                  ; $76AE: $36 $82
    ret                                           ; $76B0: $C9


Call_003_76B1:
    ld a, $03                                     ; $76B1: $3E $03
    ld [wVBlank_Bank], a                                 ; $76B3: $EA $E6 $C6
    ld a, $CE                                     ; $76B6: $3E $CE
    ld [wVBlank_Func], a                                 ; $76B8: $EA $E4 $C6
    ld a, $76                                     ; $76BB: $3E $76
    ld [wVBlank_Func+1], a                                 ; $76BD: $EA $E5 $C6
    call System_UpdateGameNoScript                                    ; $76C0: $CD $5F $09
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle                                 ; $76CA: $EA $E5 $C6
    ret                                           ; $76CD: $C9


    ld hl, $9E01                                  ; $76CE: $21 $01 $9E
    ld [hl], $80                                  ; $76D1: $36 $80
    ld hl, $9DC1                                  ; $76D3: $21 $C1 $9D
    ld [hl], $80                                  ; $76D6: $36 $80
    ld hl, $9DE1                                  ; $76D8: $21 $E1 $9D
    ld [hl], $80                                  ; $76DB: $36 $80
    ld [hl], $80                                  ; $76DD: $36 $80
    ret                                           ; $76DF: $C9


Call_003_76E0:
    ld hl, wMenu_Generic_CursorTableValidIDs                                  ; $76E0: $21 $D6 $CC
    ld e, $03                                     ; $76E3: $1E $03
    ld d, $00                                     ; $76E5: $16 $00
    add hl, de                                    ; $76E7: $19
    ld c, $0C                                     ; $76E8: $0E $0C
    inc c                                         ; $76EA: $0C

jr_003_76EB:
    ld a, [hl+]                                   ; $76EB: $2A
    cp $01                                        ; $76EC: $FE $01
    jr z, jr_003_76F7                             ; $76EE: $28 $07

    inc e                                         ; $76F0: $1C
    ld a, e                                       ; $76F1: $7B
    cp c                                          ; $76F2: $B9
    jr nz, jr_003_76EB                            ; $76F3: $20 $F6

    xor a                                         ; $76F5: $AF
    ret                                           ; $76F6: $C9


jr_003_76F7:
    ld a, $01                                     ; $76F7: $3E $01
    ret                                           ; $76F9: $C9

    ; $76FA
Menu_LoadTilemap:
    ; Loads a tilemap of width $14 and height $12 into the window
    ; Inputs:
    ;   bc = tilemap address

    ; Align the window
    xor a
    ld [rWY], a
    Set8 rWX, $07

    ; Setup and do the loop
    xor a
    ld [rVBK], a
    ld hl, $9C00
    Set8 wMenu_Temp0, SCRN_Y_B
    Set8 wMenu_Temp1, SCRN_X_B
    ld d, a
    ld e, SCRN_VX_B - SCRN_X_B
    .Loop:
        ; Copy row
        LdHLIBCI
        dec d
        jr nz, .Loop
            ; Next row
            ld a, [wMenu_Temp0]
            dec a
            ret z
            ld [wMenu_Temp0], a

            ld d, $00
            add hl, de
            ld a, [wMenu_Temp1]
            ld d, a
            jr .Loop
    ret ; seems to be unused - probably the end of Menu_LoadTilemap

    ; $772F
Menu_EmptyStringToTileset:
    ; Initialize [wMenu_MainMenu_StringToTileset_Dest] as "     ", where the length is specified in a
    ; BUG! the maximum input a that is used is $68. However, the temporary buffer used is smaller than that, meaning that
    ;    a bunch of variables after wMenu_Battle_TableRowBuffer are overwritten, as well as the bottom $21 bytes of the stack!!

    ; Inputs:
    ;   a = Length of buffer
    ;   wMenu_MainMenu_StringToTileset_Dest = destination in tileset

    ; Make a string = " "*a
    ld hl, wMenu_Battle_TableRowBuffer
    ld b, " "
    ld c, $00
    ld [wMenu_MainMenu_StringToTileset_Length], a
    .Loop:
        ld [hl], b
        inc hl
        dec a
        cp c ; inefficient? Why cp 0? dec a should set the flag properly
        jr nz, .Loop

    ; Copy it into the tileset
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc
    Do_CallForeign Menu_MainMenu_StringToTileset
    ret

    ; $7751
Menu_Generic_DrawDownArrow:
    ; Draws the down arrow during vblank
    Set8 wVBlank_Bank, BANK(Menu_Generic_VBlank_DrawDownArrow)
    Set16_M wVBlank_Func, Menu_Generic_VBlank_DrawDownArrow
    call System_UpdateGameNoScript
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $776E
Menu_Generic_VBlank_DrawDownArrow:
    ld hl, WINDOW_COORD_0C_09
    ld a, [wMenu_Generic_FatArrowTileID]
    ld [hl+], a
    ld [hl], a
    ret

    ; $7777
Menu_Generic_DrawUpArrow:
    ; Draws the up arrow during vblank
    Set8 wVBlank_Bank, BANK(Menu_Generic_VBlank_DrawUpArrow)
    Set16_M wVBlank_Func, Menu_Generic_VBlank_DrawUpArrow
    call System_UpdateGameNoScript
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $7794
Menu_Generic_VBlank_DrawUpArrow:
    ld hl, WINDOW_COORD_01_09
    ld a, [wMenu_Generic_FatArrowTileID]
    ld [hl+], a
    ld [hl], a
    ret

    ; $779D
Menu_Generic_EraseDownArrow:
    ; Hides the down arrow during vblank
    Set8 wVBlank_Bank, BANK(Menu_Generic_VBlank_EraseDownArrow)
    Set16_M wVBlank_Func, Menu_Generic_VBlank_EraseDownArrow
    call System_UpdateGameNoScript
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $77BA
Menu_Generic_VBlank_EraseDownArrow:
    ; VBlank function
    ld hl, WINDOW_COORD_0C_09
    ld a, Textbox_TILEID_BLANK
    ld [hl+], a
    ld [hl], a
    ret

    ; $77C2
Menu_Generic_EraseUpArrow:
    ; Hides the up arrow during vblank
    Set8 wVBlank_Bank, BANK(Menu_Generic_VBlank_EraseUpArrow)
    Set16_M wVBlank_Func, Menu_Generic_VBlank_EraseUpArrow
    call System_UpdateGameNoScript
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $77DF
Menu_Generic_VBlank_EraseUpArrow:
    ; VBlank function
    ld hl, WINDOW_COORD_01_09
    ld a, Textbox_TILEID_BLANK
    ld [hl+], a
    ld [hl], a
    ret


Call_003_77E7:
    ld d, $00                                     ; $77E7: $16 $00

jr_003_77E9:
    cp d                                          ; $77E9: $BA
    jr z, jr_003_77F0                             ; $77EA: $28 $04

    dec a                                         ; $77EC: $3D
    inc e                                         ; $77ED: $1C
    jr jr_003_77E9                                ; $77EE: $18 $F9

jr_003_77F0:
    ld [hl], e                                    ; $77F0: $73
    inc hl                                        ; $77F1: $23
    ret                                           ; $77F2: $C9


Call_003_77F3:
    push af                                       ; $77F3: $F5
    push bc                                       ; $77F4: $C5
    ld a, $30                                     ; $77F5: $3E $30
    ld d, $40                                     ; $77F7: $16 $40
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $77F9: $01 $91 $CD

jr_003_77FC:
    ld [bc], a                                    ; $77FC: $02
    inc bc                                        ; $77FD: $03
    inc a                                         ; $77FE: $3C
    cp d                                          ; $77FF: $BA
    jr nz, jr_003_77FC                            ; $7800: $20 $FA

    ld bc, wMenu_Battle_TableRowBuffer                                  ; $7802: $01 $91 $CD
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $780A: $70
    ld a, $0A                                     ; $780B: $3E $0A
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $780D: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    pop bc                                        ; $7818: $C1
    FSet16 wMenu_MainMenu_StringToTileset_Source, bc                                    ; $781E: $70
    pop af                                        ; $781F: $F1
    ld [wMenu_MainMenu_StringToTileset_Length], a                                 ; $7820: $EA $42 $CC
    Do_CallForeign Menu_MainMenu_StringToTileset
    ret                                           ; $782B: $C9