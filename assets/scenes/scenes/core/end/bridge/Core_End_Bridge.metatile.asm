    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 255       ;wTilemap_VStop
    dw $00D8     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/end/bridge/Core_End_Bridge.metatile.tilemap.rle"