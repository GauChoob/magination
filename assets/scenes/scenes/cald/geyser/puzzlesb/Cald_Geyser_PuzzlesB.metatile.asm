    db 64        ;wTilemap_Width
    dw $0240     ;wTilemap_YMapPad
    db 53        ;
    db 38        ;wTilemap_VStop
    dw $0C00     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/geyser/puzzlesb/Cald_Geyser_PuzzlesB.metatile.tilemap.rle"