    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 30        ;wTilemap_VStop
    dw $0320     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/tunnels/pathwayeast/Cald_Tunnels_PathwayEast.metatile.tilemap.rle"