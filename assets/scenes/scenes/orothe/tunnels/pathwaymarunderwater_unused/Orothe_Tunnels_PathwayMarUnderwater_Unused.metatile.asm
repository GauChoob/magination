    db 22        ;wTilemap_Width
    dw $00C6     ;wTilemap_YMapPad
    db 11        ;
    db 30        ;wTilemap_VStop
    dw $0370     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/tunnels/pathwaymarunderwater_unused/Orothe_Tunnels_PathwayMarUnderwater_Unused.metatile.tilemap.rle"