    db 11        ;wTilemap_Width
    dw $0063     ;wTilemap_YMapPad
    db 0         ;
    db 2         ;wTilemap_VStop
    dw $0084     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $008B because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/naroom/geyser/corestone/Naroom_Geyser_CoreStone.metatile.tilemap.rle"