    db 30        ; wTilemap_Width
    dw $010E     ; wTilemap_YMapPad
    db 19        ;
    db 40        ; wTilemap_VStop
    dw $05DC     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/tunnels/intersectionhyren/Underneath_Tunnels_IntersectionHyren.metatile.tilemap.rle"