    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 40        ;wTilemap_VStop
    dw $03E8     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $03EF because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/end_corestone/Arderial_Geyser_End_CoreStone.metatile.tilemap.rle"