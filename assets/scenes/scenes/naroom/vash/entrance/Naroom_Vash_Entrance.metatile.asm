    db 16        ;wTilemap_Width
    dw $0090     ;wTilemap_YMapPad
    db 5         ;
    db 6         ;wTilemap_VStop
    dw $0100     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/entrance/Naroom_Vash_Entrance.metatile.tilemap.rle"