    db 14        ;wTilemap_Width
    dw $007E     ;wTilemap_YMapPad
    db 3         ;
    db 26        ;wTilemap_VStop
    dw $01F8     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/seers/pathway/Naroom_Seers_Pathway.metatile.tilemap.rle"