    db 30        ; wTilemap_Width
    dw $010E     ; wTilemap_YMapPad
    db 19        ;
    db 20        ; wTilemap_VStop
    dw $0384     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_12.metatile.tilemap.rle"