    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 14        ;wTilemap_VStop
    dw $0240     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/end_caldcache/Arderial_Geyser_End_CaldCache.metatile.tilemap.rle"