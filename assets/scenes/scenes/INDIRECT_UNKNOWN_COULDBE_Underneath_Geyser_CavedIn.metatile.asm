    db 30        ;wTilemap_Width
    dw $010E     ;wTilemap_YMapPad
    db 19        ;
    db 10        ;wTilemap_VStop
    dw $0258     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_COULDBE_Underneath_Geyser_CavedIn.metatile.tilemap.rle"