    db 32        ;wTilemap_Width
    dw $0120     ;wTilemap_YMapPad
    db 21        ;
    db 37        ;wTilemap_VStop
    dw $05E0     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $05E7 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/underneath/geyser/southeast/Underneath_Geyser_Southeast.metatile.tilemap.rle"