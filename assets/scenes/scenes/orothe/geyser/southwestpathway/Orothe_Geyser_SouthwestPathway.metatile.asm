    db 10        ;wTilemap_Width
    dw $005A     ;wTilemap_YMapPad
    db 255       ;
    db 2         ;wTilemap_VStop
    dw $0078     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/geyser/southwestpathway/Orothe_Geyser_SouthwestPathway.metatile.tilemap.rle"