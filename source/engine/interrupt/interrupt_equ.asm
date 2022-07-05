
; hInterrupt_VBlank_Control
INTERRUPT_VBLANK_GRAPHICS EQU %00000001
INTERRUPT_VBLANK_FUNC EQU %00000010
INTERRUPT_VBLANK_SOUND EQU %00000100
INTERRUPT_VBLANK_WAITING EQU %10000000
; bits:
INTERRUPT_VBLANK_GRAPHICS_BIT EQU 0 ; Update graphics - Copy sprite DMA, update screen position and stuff
INTERRUPT_VBLANK_FUNC_BIT EQU 1 ; Call [wVBlank_Func]
INTERRUPT_VBLANK_SOUND_BIT EQU 2 ; Call [wSound_VBlankFunction]
INTERRUPT_VBLANK_WAITING_BIT EQU 7 ; All processing is done for current frame. Waiting for VBlank to occur (System_WaitVBlank)
