    db 35        ; wTilemap_Width
    dw $041A     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $041D because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "python/projutils/tests/tmp/Misc_Tavel_Crystal.collision.tilemap.rle"