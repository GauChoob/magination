    db 45        ;wTilemap_Width
    dw $0195     ;wTilemap_YMapPad
    db 34        ;
    db 25        ;wTilemap_VStop
    dw $0627     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $062E because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/underneath/geyser/culdesac/Underneath_Geyser_CulDeSac.metatile.tilemap.rle"