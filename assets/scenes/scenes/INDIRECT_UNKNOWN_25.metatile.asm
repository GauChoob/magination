    db 15        ;wTilemap_Width
    dw $0087     ;wTilemap_YMapPad
    db 4         ;
    db 4         ;wTilemap_VStop
    dw $00D2     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_25.metatile.tilemap.rle"