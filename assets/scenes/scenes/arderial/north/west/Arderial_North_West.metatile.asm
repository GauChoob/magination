    db 20        ; wTilemap_Width
    dw $00B4     ; wTilemap_YMapPad
    db 9         ;
    db 60        ; wTilemap_VStop
    dw $0578     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/north/west/Arderial_North_West.metatile.tilemap.rle"