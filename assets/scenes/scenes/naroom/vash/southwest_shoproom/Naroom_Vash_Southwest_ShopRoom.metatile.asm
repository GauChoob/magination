    db 11        ;wTilemap_Width
    dw $0063     ;wTilemap_YMapPad
    db 0         ;
    db 0         ;wTilemap_VStop
    dw $006E     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/southwest_shoproom/Naroom_Vash_Southwest_ShopRoom.metatile.tilemap.rle"