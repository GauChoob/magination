    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 30        ;wTilemap_VStop
    dw $0320     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/tunnels/pathwaycenter/Cald_Tunnels_PathwayCenter.metatile.tilemap.rle"