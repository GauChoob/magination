    db 24        ; wTilemap_Width
    dw $00D8     ; wTilemap_YMapPad
    db 13        ;
    db 14        ; wTilemap_VStop
    dw $0240     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $0247 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "python/projutils/tests/tmp/Arderial_Geyser_Remix_Naroom_West.metatile.tilemap.rle"