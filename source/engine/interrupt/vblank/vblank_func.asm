Interrupt_VBlankFunc_CopyByte::
    ; Unused unimplemented function
    ret

Interrupt_VBlankFunc_CopyTile::
    ; Copy $10 bytes from wVBlank_SourceAddress to wVBlank_DestAddress
    ; Arguments:
    ;   wVBlank_SourceAddress
    ;   wVBlank_DestVBK
    ;   wVBlank_DestAddress
    FGet16 bc, wVBlank_DestAddress
    FGet16 hl, wVBlank_SourceAddress
    Mov8 rVBK, wVBlank_DestVBK
    REPT $10
        LdBCIHLI
    ENDR
    Set16 wVBlank_SourceAddress, hl
    FSet16 wVBlank_DestAddress, bc
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


Interrupt_VBlankFunc_Idle::
    ; Does nothing.
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret