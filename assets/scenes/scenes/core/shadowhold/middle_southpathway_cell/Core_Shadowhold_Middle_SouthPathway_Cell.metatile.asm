    db 24        ;wTilemap_Width
    dw $00D8     ;wTilemap_YMapPad
    db 13        ;
    db 14        ;wTilemap_VStop
    dw $0240     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/middle_southpathway_cell/Core_Shadowhold_Middle_SouthPathway_Cell.metatile.tilemap.rle"