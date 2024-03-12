
    ;ds $FF99 - @
hInterrupt_HBlank_Func::
    ; Function to run during HBlank
    ds 2
    ;ds $FF9B - @
hInterrupt_HBlank_LCDC::
    ; Intended for Interrupt_HBlankFunc_SwitchBackground, an unused function
    ; When HBlank is triggered, can be used to update rLCDC
    ds 1
    ;ds $FF9C - @
hInterrupt_HBlank_SCX::
    ; Intended for Interrupt_HBlankFunc_SwitchBackground, an unused function
    ; When HBlank is triggered, can be used to update rSCX
    ds 1
    ;ds $FF9D - @
hInterrupt_HBlank_SCY::
    ; Intended for Interrupt_HBlankFunc_SwitchBackground, an unused function
    ; When HBlank is triggered, can be used to update rSCY
    ds 1
    ;ds $FF9E - @
hInterrupt_VBlank_Control::
    ; Determines which functions run during VBlank
    ds 1
    ; bit 0 = Update graphics: Copy sprite DMA, update screen SCX, SCY and possibly copy stuff into VRAM
    ; bit 1 = Run wVBlank_Func
    ; bit 2 = Run wSound_VBlankFunction
    ; bit 3-6 = Unused
    ; bit 7 = Waiting for VBlank interrupt to be done (System_WaitVBlank running)