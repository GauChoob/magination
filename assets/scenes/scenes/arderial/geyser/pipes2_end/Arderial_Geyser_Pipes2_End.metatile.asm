    db 48        ;wTilemap_Width
    dw $01B0     ;wTilemap_YMapPad
    db 37        ;
    db 20        ;wTilemap_VStop
    dw $05A0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/pipes2_end/Arderial_Geyser_Pipes2_End.metatile.tilemap.rle"