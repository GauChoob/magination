    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 10        ;wTilemap_VStop
    dw $01E0     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $01E7 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/orothe/island/room/Orothe_Island_Room.metatile.tilemap.rle"