    db 25        ;wTilemap_Width
    dw $00E1     ;wTilemap_YMapPad
    db 14        ;
    db 15        ;wTilemap_VStop
    dw $0271     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/grove/pathway/Naroom_Grove_Pathway.metatile.tilemap.rle"