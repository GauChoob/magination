    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 20        ;wTilemap_VStop
    dw $05DC     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/caverns/pathwayz/Cald_Caverns_PathwayZ.metatile.tilemap.rle"