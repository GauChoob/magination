    db 15        ;wTilemap_Width
    dw $0087     ;wTilemap_YMapPad
    db 4         ;
    db 2         ;wTilemap_VStop
    dw $00B4     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/gia/room/Naroom_Gia_Room.metatile.tilemap.rle"