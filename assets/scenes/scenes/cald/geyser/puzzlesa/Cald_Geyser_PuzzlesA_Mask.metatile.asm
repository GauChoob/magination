    db 64        ; wTilemap_Width
    dw $0240     ; wTilemap_YMapPad
    db 53        ;
    db 54        ; wTilemap_VStop
    dw $1000     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/geyser/puzzlesa/Cald_Geyser_PuzzlesA_Mask.metatile.tilemap.rle"