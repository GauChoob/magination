    db 12        ; wTilemap_Width
    dw $006C     ; wTilemap_YMapPad
    db 1         ;
    db 2         ; wTilemap_VStop
    dw $0090     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_34.metatile.tilemap.rle"