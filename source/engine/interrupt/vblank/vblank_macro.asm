MACRO Do_VBlank_Function
    ; Runs the VBlank function, which is usually a graphics copy/paste function
    
    .CheckVFunc\@:
    ldh a, [hInterrupt_VBlank_Control]
    bit INTERRUPT_VBLANK_FUNC_BIT, a
    jr z, .End\@
        .DoVFunc\@:
        SwitchROMBank [wVBlank_Bank]
        Get16 hl, wVBlank_Func
        call CallHL
    .End\@:
ENDM

MACRO Do_VBlank_Function_V
    ; Squeeze out a few bytes to save space - skimp out on using the macro SwitchROMBank
    
    .CheckVFunc\@:
    ldh a, [hInterrupt_VBlank_Control]
    bit INTERRUPT_VBLANK_FUNC_BIT, a
    jr z, .End\@
        .DoVFunc\@:
        Mov8 rROMB0, wVBlank_Bank ; <-
        Get16 hl, wVBlank_Func
        call CallHL
    .End\@:
ENDM