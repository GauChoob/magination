    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 40        ;wTilemap_VStop
    dw $09C4     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $09CB because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/naroom/forest/deep_heart/Naroom_Forest_Deep_Heart.metatile.tilemap.rle"