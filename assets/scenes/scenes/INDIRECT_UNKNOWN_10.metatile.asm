    db 36        ;wTilemap_Width
    dw $0144     ;wTilemap_YMapPad
    db 25        ;
    db 2         ;wTilemap_VStop
    dw $01B0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_10.metatile.tilemap.rle"