    db 60        ;wTilemap_Width
    dw $021C     ;wTilemap_YMapPad
    db 49        ;
    db 50        ;wTilemap_VStop
    dw $0E10     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/seers/house/Naroom_Seers_House.metatile.tilemap.rle"