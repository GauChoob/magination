    db 40        ;wTilemap_Width
    dw $0168     ;wTilemap_YMapPad
    db 29        ;
    db 40        ;wTilemap_VStop
    dw $07D0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/caverns/intersectionx/Cald_Caverns_IntersectionX.metatile.tilemap.rle"