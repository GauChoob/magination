    db 12        ;wTilemap_Width
    dw $006C     ;wTilemap_YMapPad
    db 1         ;
    db 2         ;wTilemap_VStop
    dw $0090     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/north_spookyroom_normal/Naroom_Vash_North_SpookyRoom_Normal.metatile.tilemap.rle"