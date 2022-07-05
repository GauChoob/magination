
    ;ds $C836 - @
wGraphics_ScreenFX_DestAddr::
    ; The addresses in the tilemap where to draw the white tiles in Graphics_ScreenFX_Swirl
    ; These address should form a 2x2 block
    ; These addresses are wrapped around as well when X and Y overflow past the virtual screen edge
    .TopLeft:
        ds 2
    .TopRight:
        ; = .TopLeft + 1
        ds 2
    .BottomLeft:
        ; = .TopLeft + SCRN_VX_B
        ds 2
    .BottomRight:
        ; = .TopRight + 1
        ds 2
    ;ds $C83E - @
wGraphics_ScreenFX_TileID::
    ; The tileid to paste when doing Graphics_ScreenFX_Swirl
    ; It is a constant: GRAPHICS_SCREENFX_TILEID
    ds 1
    ;ds $C83F - @
wGraphics_ScreenFX_TileAttr::
    ; The attribute to paste when doing Graphics_ScreenFX_Swirl
    ; It is a constant: GRAPHICS_SCREENFX_TILEATTR
    ds 1
    ;ds $C840 - @
wGraphics_ScreenFX_Function::
    ; Pointer to the function called by
    ds 2