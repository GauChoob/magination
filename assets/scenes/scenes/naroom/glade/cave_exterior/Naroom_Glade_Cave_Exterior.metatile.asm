    db 12        ;wTilemap_Width
    dw $006C     ;wTilemap_YMapPad
    db 1         ;
    db 2         ;wTilemap_VStop
    dw $0090     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/glade/cave_exterior/Naroom_Glade_Cave_Exterior.metatile.tilemap.rle"