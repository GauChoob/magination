    db 16        ; wTilemap_Width
    dw $01E0     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $01E3 because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/verticalpipe_unused/Arderial_Geyser_VerticalPipe_Unused.collision.tilemap.rle"