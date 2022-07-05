; This module handles the textbox used in dialogue, as well as the associated commands
; You should only need to call commands and TextboxXX_Init directly

; Textbox_IconX_TileOffset and Textbox_IconX_TileAddress - lookup tables
; Cmd_Textbox_Clear - clears the text
; Cmd_Textbox_Close - closes the textbox via TextboxXX_Close
; Cmd_Textbox_Icon - erases the current text and displays a new icon
; Cmd_Textbox_Menu - displays a cursor to allow the player to select an option (2-4)
; Cmd_Textbox_Open - opens the textbox via TextboxXX_Open
;   Note that the textbox is also automatically forced open by:
;   Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write
;   So you don't really need to call this command
; Cmd_Textbox_Write - writes a string, optionally formatted with Cmd_Textbox_FormatChar or Cmd_Textbox_FormatWord
;   Textbox_Update - handles the string-writing (called by Cmd_Textbox_Write)
; Cmd_Textbox_FormatChar - formats an 8-bit value as a string "{03d}🔊" (<FORMAT>) and stores into wText_StringFormatFrame
; Cmd_Textbox_FormatWord - formats a 16-bit value as a string "{03d}🔊" (<FORMAT>) and stores into wText_StringFormatFrame
; Textbox_VerifyOpen - called by Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write
;                      forces the textbox open if it is closed (via TextboxXX_Open)
; Textbox_OpenTextInit/Textbox_TextInit - run after a blank textbox is displayed
;                                       (Cmd_Textbox_Icon, Cmd_Textbox_Clear, TextboxXX_Open)

; source/engine/textbox/textbox_xx_init.asm:
;   TextboxXX_Init - prepares the tiles used in the textbox area and prepares the window

; source/engine/textbox/textbox_xx.asm:
;   Contains functions that are moved out of ROM0 to save space:
;   TextboxXX_WindowSlide - contains window rWY positions to describe the sliding behaviour of the textbox
;   TextboxXX_Close - Called from Cmd_Textbox_Close. Closes the textbox
;   TextboxXX_Open - Called from Cmd_Textbox_Open. Also called from 
;                       Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write if they are called when the textbox is closed


    ; source/engine/script/modules/script_00_text.s

    ; $2203
    ; Always accessed via ForeignCall even though it is in ROM0
INCLUDE "source/engine/textbox/textbox_xx_init.asm"

    ; source/engine/script/modules/textbox/textbox_table.s

    ; $2250
Textbox_IconX_TileOffset::
    db LOW(Textbox_VRAM_ICON0/$10) ;Tile number to refer to Textbox_VRAM_ICON0
    db LOW(Textbox_VRAM_ICON1/$10) ;Tile number to refer to Textbox_VRAM_ICON1

    ; $2252
Textbox_IconX_TileAddress::
    dw Textbox_VRAM_ICON0
    dw Textbox_VRAM_ICON1

    ; source/engine/script/modules/script_00_text.s
    
    ; $2256
Cmd_Textbox_FormatChar::
    ; Formats an 8-bit value in WRAM or XRAM Gamestate into a 3-digit value
    ; Used in conjunction with dialogue that uses 🔊<FORMAT>
    ; Arguments:
    ;   ds 2 - Address of 8-bit value
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Script_ReadWord hl
    push bc
    call Text_FormatChar
    pop bc
    Battery_Off
    jp Script_Start

    ; $2275
Cmd_Textbox_Clear::
    ; Clears the text in the textbox to blank
    ; Arguments:
    ;   None

    ; Skip if the textbox is not open
    ld a, [wTextbox_Position]
    cp Textbox_OPEN
    jp nz, Script_Start

    Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear1)
    Set16_M wVBlank_Func, TextboxXX_VBlank_Clear1
    Set16_M hScript.State, Textbox_TextInit
    ret

    ; $2297
Cmd_Textbox_Close::
    ; Waits until the textbox is available, erases the text, then slides the textbox out of view
    ; Arguments:
    ;   None

    ; Setting the 7th bit of the bank makes the bank of Script_Table get loaded instead
    ld hl, hScript.Bank
    set 7, [hl]
    Set16_M hScript.State, TextboxXX_Close
    ret

    ; $22A7
Cmd_Textbox_Icon::
    ; Erases the current text and then loads a new icon
    ; The icon is loaded in turn in Textbox_VRAM_ICON0 and Textbox_VRAM_ICON1
    ;   So that the icon can be instantly displayed after it has been completely copied over
    ; Arguments:
    ;   ds 2    PortraitAddressBank
    .Init:
        ; Call Textbox_Open if the textbox is not yet open
        call Textbox_VerifyOpen

        ; New icon so erase the current text
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear1)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Clear1
        Set16_M hScript.State, .Init2
        ret
    .Init2:
        ; Unpack the PortraitAddressBank
        ; and setup a copy loop
        ld h, b
        ld l, c

        ; The address is (val && %11111111 11110000)
        ld a, [hl+]
        ld e, a
        and $F0
        ld [wVBlank_SourceAddress], a
        ld a, [hl+]
        ld [wVBlank_SourceAddress+1], a

        Set16 hScript.Frame, hl

        ; The bank is (val && %00000000 00001111)
        ld a, e
        and $0F
        ld [wVBlank_Bank], a

        ; if(wTextbox_IconToggle == 0), hl = Textbox_VRAM_ICON0
        ; if(wTextbox_IconToggle == 1), hl = Textbox_VRAM_ICON1
        ld hl, Textbox_IconX_TileAddress
        ld a, [wTextbox_IconToggle]
        add a
        ld c, a
        xor a
        ld b, a
        add hl, bc
        ; hl dereferenced to Textbox_VRAM_ICON0 or Textbox_VRAM_ICON1
        DerefHL

        Set16 wVBlank_DestAddress, hl
        Set8 hScript.SmallCounter, 25+1 ;The icon is 25 tiles in size
        Set8 wVBlank_DestVBK, $01
        Set16_M hScript.State, .MainLoop
        ret

    .MainLoop:
        ; Copy 25 tiles
        ld a, [hScript.SmallCounter]
        dec a
        jr z, .Finally

        ld [hScript.SmallCounter], a
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_CopyTile
        ret

    .Finally:
        ; Display the new 25 tiles
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Icon)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Icon
        Set16_M hScript.State, Textbox_TextInit
        ret

    ; $2338
Cmd_Textbox_Menu::
    ; Allows Tony to select up to 4 options in the textbox
    ; To use this command, use a normal Cmd_Textbox_Icon / Cmd_Textbox_Write
    ; to generate the contents of the textbox
    ; An example for Cmd_Textbox_Write is the forge text:
    ;   " Forge  Equip"
    ;   " Power  Done"
    ; The cursor will overwrite the letter location in position 0 and 7.
    ; As an example, here are options 0-3 indicated over the forge text
    ;   "0Forge 2Equip  "
    ;   "1Power 3Done   "
    ; Arguments:
    ;   db - n = Number of available options (2-4)
    ;   (ds 3)*n = n*BankAddress -> JumpTable depending on selected option

    ; Call Textbox_Open if the textbox is not yet open
    .Init:
        call Textbox_VerifyOpen

        Script_ReadByte e
        FSet16 hScript.Frame, bc

        ; We need to set the valid choices to non-zero, and the invalid choices to zero
        ; The first choices must be valid
        ld a, $01
        ld hl, wMenu_TextboxCursorTableValidIDs
        ld [hl+], a
        ; The 2nd-4th choices are initialized as invalid
        xor a
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a

        ; Mark the valid options among 2nd, 3rd and 4th with a non-zero number
        ld a, e
        dec a
        ld hl, wMenu_TextboxCursorTableValidIDs + 1
        .ValidateLoop:
            ld [hl+], a
            dec a
            jr nz, .ValidateLoop

        ; Setup a menu with Start/Select/B disabled
        ; Use wMenu_TextboxCursorTableValidIDs as the valid array
        Do_Menu_Init Menu_CursorTable_Textbox, %11110001, wMenu_TextboxCursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, TopLeft, Menu_CURSOR_BLINK, Menu_CURSOR_BG

        Set16FF hScript.State, .WaitLoop
        ret

    .WaitLoop:
        push bc
        ; Run the Menu checking code
        Do_CallForeign Menu_Do
        ; See if an option was selected
        ld a, [wMenu_ReturnValue]
        ld l, a
        cp Menu_NULL
        pop bc
        ret z

        ; If an option was selected, the value correspond to the jumptable id
        ; *= 3
        ld a, l
        add l
        add l
        ld l, a
        ld h, $00

        add hl, bc

        ; Jump to the BankAddress specified at the selected id in the jumptable
        Set16 hScript.Frame, hl
        Set16_M hScript.State, Cmd_Flow_LongJump
        ret

    ; $23D2
Cmd_Textbox_Open::
    ; Resets the icon and text, and then slides open the textbox
    ; This function is automatically called when
    ;   Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write is called and the textbox is closed
    ; So there's not too much point in directly calling this function
    ;
    ; Inputs:
    ;   None
    ld hl, hScript.Bank
    set 7, [hl]
    Set16_M hScript.State, TextboxXX_Open
    ret

    ; $23E2
Cmd_Textbox_FormatWord::
    ; Formats a 16-bit value in WRAM or XRAM Gamestate into a 3-digit value
    ; Used in conjunction with dialogue that uses 🔊<FORMAT>
    ; Arguments:
    ;   ds 2 - Address of 16-bit value
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Script_ReadWord hl
    push bc
    call Text_FormatWord
    pop bc
    Battery_Off
    jp Script_Start

    ; $2401
Cmd_Textbox_Write::
    ; Writes text into the textbox
    ; Arguments:
    ;   A string of indeterminate length, terminated with 🛑

    ; Force the textbox open if it's closed
    call Textbox_VerifyOpen

    ; Use the handler TextHandler_Char
    Set16 wText_StringFrame, bc
    Set16_M wText_HandlerFunc, TextHandler_Char

    ; Run Textbox_Update until the string is over
    Set16_M hScript.State, Textbox_Update
    ret

    ; $2421
Textbox_Update::
    ; Run the wText_HandlerFunc first
    Text_Update

    ; End if no special character code (returned in d)
    ld a, d
    and a
    ret z

    ; For any special character
    ; Start writing at the beginning of the bottom line
    Set16_M wText_MapDest, Textbox_LINE3

    ; Update the frame
    ld a, [wText_StringFrame]
    ldh [hScript.Frame], a
    ld a, [wText_StringFrame+1]
    ldh [hScript.Frame+1], a

    ld a, d
    .CheckEOF:
        cp "🛑" ;<EOF>
        jr nz, .CheckNewline
            Set16_M hScript.State, Script_Start
            ret
    .CheckNewline:
        cp "⭍" ;<NEWLINE>
        jr nz, .HandleWait
            Set16_M hScript.State, Cmd_Textbox_Write ;This line is not useful as it is overwritten below
            jr .NewLine
    .HandleWait:
        ;cp "🅐" ;<WAIT>
        ;ret nz
        .WaitLoop:
            Set16_M hScript.State, .WaitLoop
            IF DEBUG_TEXTBOX_CURSOR == 1
                jp Debug_Textbox_Cursor2
            ELSE
                ld a, [wCnt1]
            ENDC
            and button_MASK_A
            jr nz, .NewLine
            ; Disabled blinking cursor
            ;Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Cursor)
            ;Set16_M wVBlank_Func, TextboxXX_VBlank_Cursor
            ret

    .NewLine:
        ; If first line, can simply continue writing on the second line
        ; If subsequent lines, the bottom line must scroll up to the top line before continuing text
        ld a, [wTextbox_FirstLine]
        and a
        jr z, .Scroll1
        .NoScroll:
            ; Skip all the scrolling and just start writing the next line on the bottom line
            dec a
            ld [wTextbox_FirstLine], a
            Set16_M hScript.State, Cmd_Textbox_Write
            ret

        .Scroll1:
            ; Start the scrolling animation
            ; Hide the top line
            Set16_M hScript.State, .Scroll2
            Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Scroll1)
            Set16_M wVBlank_Func, TextboxXX_VBlank_Scroll1
            ret
        .Scroll2::
            ; Slide the bottom line to the middle
            Set16_M hScript.State, .ScrollDelay1
            Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Scroll2)
            Set16_M wVBlank_Func, TextboxXX_VBlank_Scroll2
            ret
        .ScrollDelay1:
            ; Wait 1 frame
            Set16_M hScript.State, .ScrollDelay2
            ret
        .ScrollDelay2
            ; Wait 1 frame
            Set16_M hScript.State, .Scroll3
            ret
        .Scroll3
            ; Slide the middle to the top line, then continue reading text
            Set16_M hScript.State, Cmd_Textbox_Write
            Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Scroll3)
            Set16_M wVBlank_Func, TextboxXX_VBlank_Scroll3
            ret

    ; $24EC
Textbox_VerifyOpen::
    ; Verifies if the textbox is open
    ; If the textbox is busy or closed, call Cmd_Textbox_Open
    ; Inputs:
    ;   None
    ld a, [wTextbox_Position]
    cp Textbox_OPEN
    jr z, .AlreadyOpen
    .BusyOrClosed:
        dec bc
        Set16FF_V hScript.Frame, bc
        Set16_M hScript.State, Cmd_Textbox_Open
        pop af
        ret
    .AlreadyOpen:
        ret

    ; $2507
Textbox_OpenTextInit::
    ;This part continues after Cmd_Textbox_Open is called and completed
    Set8 wTextbox_Position, Textbox_OPEN
    ;jp Textbox_TextInit

    ; $250C
Textbox_TextInit::
    ; Run after Cmd_Textbox_Icon, Cmd_Textbox_Clear and Cmd_Textbox_Open
    ; Sets the parameters of the Text module for the textbox
    ;
    ; Disabled cursor init:
    ; Set8 wTextbox_CursorBlinkCounter, $80 + Textbox_CURSOR_BLINKDELAY ;bit 7 = cursor on; bits 6-0 = delay
    IF DEBUG_TEXTBOX_CURSOR == 1
        call Debug_Textbox_Cursor1
        nop
        nop
    ELSE
        Set8 wTextbox_FirstLine, $01
    ENDC

    Set16_M wText_StringFormatFrame, wText_StringBuffer

    ;          VBK                                       total 30 characters; 15 per line
    Text_Setup $01, Textbox_VRAM_TEXT, Textbox_LINE1, (Textbox_VRAM_ICON0 - Textbox_VRAM_TEXT)/$10
    jp Script_Start