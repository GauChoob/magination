    db 24        ;wTilemap_Width
    dw $0180     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $0183 because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/orothe/ocean/raft/Orothe_Ocean_Raft.collision.tilemap.rle"