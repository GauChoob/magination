    db 60        ; wTilemap_Width
    dw $021C     ; wTilemap_YMapPad
    db 49        ;
    db 10        ; wTilemap_VStop
    dw $04B0     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/north/southwest/Arderial_North_Southwest.metatile.tilemap.rle"