    db 40        ;wTilemap_Width
    dw $0168     ;wTilemap_YMapPad
    db 29        ;
    db 10        ;wTilemap_VStop
    dw $0320     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/coral/pathwayhorizontal/Orothe_Coral_PathwayHorizontal.metatile.tilemap.rle"