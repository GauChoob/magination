    db 50        ;wTilemap_Width
    dw $0BB8     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $0BBB because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_30.collision.tilemap.rle"