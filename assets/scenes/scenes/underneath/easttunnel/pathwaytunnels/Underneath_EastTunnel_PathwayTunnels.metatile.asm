    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 10        ;wTilemap_VStop
    dw $03E8     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/easttunnel/pathwaytunnels/Underneath_EastTunnel_PathwayTunnels.metatile.tilemap.rle"