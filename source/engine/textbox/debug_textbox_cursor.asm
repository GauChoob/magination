
; Some lines of code required to make the blinking cursor work
; These lines were commented out in the source code

Debug_Textbox_Cursor1::
    Set8 wTextbox_CursorBlinkCounter, $80 + Textbox_CURSOR_BLINKDELAY ;bit 7 = cursor on; bits 6-0 = delay
    Set8 wTextbox_FirstLine, $01
    ret
    
Debug_Textbox_Cursor2::
    ld a, [wCnt1]
    and button_MASK_A
    jp nz, Textbox_Update.NewLine
    Set8 wVBlank_Bank, BANK(TextboxXX_VBlank_Cursor)
    Set16_M wVBlank_Func, TextboxXX_VBlank_Cursor
    ret