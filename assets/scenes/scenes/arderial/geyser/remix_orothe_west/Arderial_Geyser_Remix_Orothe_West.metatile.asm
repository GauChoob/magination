    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 14        ;wTilemap_VStop
    dw $0240     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/remix_orothe_west/Arderial_Geyser_Remix_Orothe_West.metatile.tilemap.rle"