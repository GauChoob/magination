    db 35        ; wTilemap_Width
    dw $013B     ; wTilemap_YMapPad
    db 24        ;
    db 30        ; wTilemap_VStop
    dw $0578     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/easttunnel/intersection/Underneath_EastTunnel_Intersection.metatile.tilemap.rle"