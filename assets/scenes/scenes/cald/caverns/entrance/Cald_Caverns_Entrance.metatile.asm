    db 45        ;wTilemap_Width
    dw $0195     ;wTilemap_YMapPad
    db 34        ;
    db 15        ;wTilemap_VStop
    dw $0465     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/caverns/entrance/Cald_Caverns_Entrance.metatile.tilemap.rle"