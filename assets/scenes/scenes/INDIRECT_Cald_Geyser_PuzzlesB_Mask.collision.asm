    db 64        ; wTilemap_Width
    dw $0C00     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $0C03 because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_Cald_Geyser_PuzzlesB_Mask.collision.tilemap.rle"