
; Interrupts
MACRO Interrupt_Init
    xor a
    ld [wVBlank_Bank], a
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    Set16_M wVBlank_HandlerFunc, Interrupt_VBlank_Handler_Standard
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_Idle
ENDM
