    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 30        ;wTilemap_VStop
    dw $07D0     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $07D7 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/cald/vents/island/Cald_Vents_Island.metatile.tilemap.rle"