    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 10        ;wTilemap_VStop
    dw $01E0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/inn/room/Arderial_Inn_Room.metatile.tilemap.rle"