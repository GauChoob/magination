    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 20        ;wTilemap_VStop
    dw $0258     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_COULDBE_Naroom_Forest_Exit_Mask.metatile.tilemap.rle"