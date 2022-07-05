
    ;ds $C6E2 - @
wVBlank_HandlerFunc::
    ; This function handles a the VBlank interrupt
    ; By default the function updates the graphics, calls wVBlank_Func and updates sound
    ds 2
    ;ds $C6E4 - @
wVBlank_Func::
    ; Points to a VBlank function that should be run during VBlank
    ; Usually tiles to be copied during VBlank
    ds 2
    ;ds $C6E6 - @
wVBlank_Bank::
    ; Bank that will be loaded when the vblank function is run
    ; This can either be 1) The bank of a ROMX vblank function or
    ;                    2) The bank of assets that will be copied by a ROM0 vblank function
    ds 1
    ;ds $C6E7 - @
wVBlank_SourceAddress::
    ; Source for wVBlank_Func
    ds 2
    ;ds $C6E9 - @
wVBlank_DestAddress::
    ; VRAM Destination for wVBlank_Func
    ds 2
    ;ds $C6EB - @
wVBlank_DestVBK::
    ; VRAM bank of destination for wVBlank_Func
    ds 1