    db 45        ;wTilemap_Width
    dw $0195     ;wTilemap_YMapPad
    db 34        ;
    db 20        ;wTilemap_VStop
    dw $0546     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/easttunnel/pathwayfort/Underneath_EastTunnel_PathwayFort.metatile.tilemap.rle"