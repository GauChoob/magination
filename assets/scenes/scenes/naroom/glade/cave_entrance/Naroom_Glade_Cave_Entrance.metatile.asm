    db 54        ;wTilemap_Width
    dw $01E6     ;wTilemap_YMapPad
    db 43        ;
    db 15        ;wTilemap_VStop
    dw $0546     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/glade/cave_entrance/Naroom_Glade_Cave_Entrance.metatile.tilemap.rle"