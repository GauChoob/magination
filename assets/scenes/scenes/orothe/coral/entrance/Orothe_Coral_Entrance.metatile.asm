    db 40        ;wTilemap_Width
    dw $0168     ;wTilemap_YMapPad
    db 29        ;
    db 26        ;wTilemap_VStop
    dw $05A0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/coral/entrance/Orothe_Coral_Entrance.metatile.tilemap.rle"