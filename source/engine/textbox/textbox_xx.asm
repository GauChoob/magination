; source/engine/script/modules/script_xx_text.s

; This section contains the code for sliding open and closed the textbox
; In order to save space in ROM0, since these functions don't need to access any other bank,
; these functions are displaced to an alternative bank

; textbox_xx_vblank.asm -> see for vblank functions
; TextboxXX_WindowSlide - contains window rWY positions to describe the sliding behaviour of the textbox
; TextboxXX_Close - Called from Cmd_Textbox_Close. Closes the textbox
; TextboxXX_Open - Called from Cmd_Textbox_Open. Also called from 
;                   Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write if they are called when the textbox is closed

; ScriptXX_BANK is the bank containing scripts outside of ROM0
ASSERT BANK(@) == ScriptXX_BANK

    ; $46CF
    ; VBlank functions are contained here.
INCLUDE "source/engine/textbox/textbox_xx_vblank.asm"

    ; $48D5
TextboxXX_WindowSlide:
    ; Values to store into wTextbox_WY
    ; 144 = Textbox not visible
    ; 104 = Textbox fully visible
    db 143 ;Unused byte when closing window, but used when opening window
    db 143, 139, 133, 127, 122, 117, 112, 108, 104   ;Position
    ; 1    4    6    6    5    5    5    4    4      ;Velocity
    .End:

    ; $48DF
TextboxXX_Close::
    ; Closes the textbox. This function is called from Cmd_Textbox_Close
    ; 1) Erases the dialogue to blank
    ; 2) Adjusts wTextbox_WY to create a sliding textbox following positional data in TextboxXX_WindowSlide
    ; 3) Sets Textbox_CLOSED
    ld a, [wTextbox_Position]

    ; If textbox is already closed, then continue the script and read the next opcode
    cp Textbox_CLOSED
    jp z, .ResetState

    ; If textbox is busy, loop until the textbox is no longer busy
    cp Textbox_BUSY
    ret z

    ; Default behaviour
    ;cp Textbox_OPEN
    ;ret nz
    .Init:
        Set8 wTextbox_Position, Textbox_BUSY
        Set8 hScript.SmallCounter, (TextboxXX_WindowSlide.End - TextboxXX_WindowSlide - 1)
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear1)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Clear1
        Set16_M hScript.State, .Main
        ret

    .Main:
        ; Check if end
        ld a, [hScript.SmallCounter]
        and a
        jp z, .Finally

        ; Count down
        ld c, a
        dec a
        ld b, $00
        ld [hScript.SmallCounter], a

        ; Get the positional data
        ld hl, TextboxXX_WindowSlide
        add hl, bc
        ld a, [hl]

        ; Update the window position
        ld [wTextbox_WY], a
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Window)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Window
        ret


    .Finally:
        Set8 wTextbox_WY, 144

        ; Update the window position
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Window)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Window

        Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_Idle
        Set16_M hScript.State, .Finish
        ret

    .Finish:
        Set8 wTextbox_Position, Textbox_CLOSED

    .ResetState:
        ; Disable bit 7 which overrides the bank to the Script_Table bank
        ld hl, hScript.Bank
        res 7, [hl]
        Set16_M hScript.State, Script_Start
        ret

    ; $4972
TextboxXX_Open::
    ; Opens the textbox.
    ; This command can be directly accessed by Cmd_Textbox_Open
    ; Alternatively, this command is also called (through Cmd_Textbox_Open), if any of
    ; the following commands get called when the textbox is closed:
    ;   Cmd_Textbox_Icon, Cmd_Textbox_Menu or Cmd_Text_Write
    ld a, [wTextbox_Position]

    ; If textbox is already closed, then continue the script and do the current opcode
    cp Textbox_OPEN
    jp z, .ResetState

    ; Loop until the textbox is no longer busy
    cp Textbox_BUSY
    ret z

    ;cp Textbox_CLOSED
    ;ret nz
    .Init1:
        Set8 wTextbox_Position, Textbox_BUSY

        xor a
        ld [hScript.SmallCounter], a

        Set8 wTextbox_WX, 7
        Set8FF rLYC, 143

        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_ClearIcon)
        Set16_M wVBlank_Func, TextboxXX_VBlank_ClearIcon
        Set16_M hScript.State, .Init2

        ; This hblank disables sprites over the textbox
        Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_WindowNoSprite
        ret

    .Init2:
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear1)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Clear1
        Set16_M hScript.State, .Init3
        ret

    .Init3:
        ;Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear2) ; Does not reliably update the bank but it should be okay as it is set in Init2
        Set16_M wVBlank_Func, TextboxXX_VBlank_Clear2
        Set16_M hScript.State, .Init4
        ret

    .Init4:
        ;Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Clear3) ; Does not reliably update the bank but it should be okay as it is set in Init2
        Set16_M wVBlank_Func, TextboxXX_VBlank_Clear3
        Set16_M hScript.State, .Main
        ret

    .Main:
        ; Check if end
        ld a, [hScript.SmallCounter]
        cp (TextboxXX_WindowSlide.End - TextboxXX_WindowSlide)
        jp z, .Finally

        ; Count up
        ld e, a
        inc a
        ld d, $00
        ld [hScript.SmallCounter], a

        ; Get the positional data
        ld hl, TextboxXX_WindowSlide
        add hl, de
        ld a, [hl]

        ; Update the window position
        ld [wTextbox_WY], a
        Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Window)
        Set16_M wVBlank_Func, TextboxXX_VBlank_Window
        ret

    .Finally:
        ld hl, hScript.Bank
        res 7, [hl]
        Set16_M hScript.State, Textbox_OpenTextInit
        ret

    .ResetState:
        ld hl, hScript.Bank
        res 7, [hl]
        Set16_M hScript.State, Script_Start
        ret