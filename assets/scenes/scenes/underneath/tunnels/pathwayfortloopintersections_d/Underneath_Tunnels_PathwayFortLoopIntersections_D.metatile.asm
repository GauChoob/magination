    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 40        ;wTilemap_VStop
    dw $03E8     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/tunnels/pathwayfortloopintersections_d/Underneath_Tunnels_PathwayFortLoopIntersections_D.metatile.tilemap.rle"