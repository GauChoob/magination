    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 40        ;wTilemap_VStop
    dw $09C4     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/caverns/pathwayu/Cald_Caverns_PathwayU.metatile.tilemap.rle"