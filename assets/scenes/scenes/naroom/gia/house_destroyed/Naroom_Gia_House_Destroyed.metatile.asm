    db 40        ; wTilemap_Width
    dw $0168     ; wTilemap_YMapPad
    db 29        ;
    db 30        ; wTilemap_VStop
    dw $0640     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/gia/house_destroyed/Naroom_Gia_House_Destroyed.metatile.tilemap.rle"