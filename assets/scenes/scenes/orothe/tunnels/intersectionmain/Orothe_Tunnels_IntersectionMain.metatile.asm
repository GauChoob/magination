    db 48        ;wTilemap_Width
    dw $01B0     ;wTilemap_YMapPad
    db 37        ;
    db 0         ;wTilemap_VStop
    dw $01E0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/tunnels/intersectionmain/Orothe_Tunnels_IntersectionMain.metatile.tilemap.rle"