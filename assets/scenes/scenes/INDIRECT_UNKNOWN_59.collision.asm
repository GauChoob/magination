    db 20        ;wTilemap_Width
    dw $00F0     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $00F3 because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_59.collision.tilemap.rle"