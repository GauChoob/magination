Interrupt_HBlankFunc_SwitchBackground::
    ; Todo - unused?
    ; Changes the frame + LCDC properties
    Mov8FFFF rLCDC, hInterrupt_HBlank_LCDC
    Mov8FFFF rSCX, hInterrupt_HBlank_SCX
    Mov8FFFF rSCY, hInterrupt_HBlank_SCY
    pop hl
    pop af
    reti


Interrupt_HBlankFunc_Idle::
    ; Null LCDC Interrupt
    pop hl
    pop af
    reti


Interrupt_HBlankFunc_WindowNoSprite::
    ; This LCDC interrupt should run at the transition from game to textbox
    ;
    ; Sets the LCDC for standard background and window settings
    ; Except sprites are turned off. Used when there is a textbox with a background cursor
    Set8FF rLCDC, (LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJOFF | LCDCF_BGON)
    pop hl
    pop af
    reti


Interrupt_HBlankFunc_WindowSprite::
    ; Sets the LCDC for standard background and window settings
    ; Except sprites are turned on. Used when there is a textbox with a sprite cursor
    Set8FF rLCDC, (LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJON | LCDCF_BGON)
    pop hl
    pop af
    reti