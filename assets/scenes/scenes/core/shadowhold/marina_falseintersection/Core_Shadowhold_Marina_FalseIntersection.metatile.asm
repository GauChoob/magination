    db 27        ; wTilemap_Width
    dw $00F3     ; wTilemap_YMapPad
    db 16        ;
    db 8         ; wTilemap_VStop
    dw $01E6     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/marina_falseintersection/Core_Shadowhold_Marina_FalseIntersection.metatile.tilemap.rle"