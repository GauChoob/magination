MACRO Do_Graphics_VBlank
    ; Runs graphics-related functions every VBlank

    .CheckGraphics\@:
    ldh a, [hInterrupt_VBlank_Control]
    bit INTERRUPT_VBLANK_GRAPHICS_BIT, a
    jr z, .End\@
        .DoGraphics\@:
            Set8 rLCDC, $E3
            call hSystem_RunDMA
            XCall Tilemap_VBlank_DrawRowCol
    .End\@
ENDM

MACRO Graphics_Open
    ; Tilemap_Ready
    XCall Tilemap_Ready_ColCodes
    call Tilemap_Ready_RowCodes
    xor a
    ld [wTilemap_XDelta], a
    ld [wTilemap_YDelta], a
ENDM

MACRO Graphics_Close
    call Frame_Ready
ENDM