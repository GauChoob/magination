    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 0         ;wTilemap_VStop
    dw $00C8     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/northwest_historianroom/Naroom_Vash_Northwest_HistorianRoom.metatile.tilemap.rle"