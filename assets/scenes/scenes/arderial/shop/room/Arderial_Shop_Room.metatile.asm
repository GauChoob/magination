    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 10        ;wTilemap_VStop
    dw $0190     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/shop/room/Arderial_Shop_Room.metatile.tilemap.rle"