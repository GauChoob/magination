    db 30        ;wTilemap_Width
    dw $010E     ;wTilemap_YMapPad
    db 19        ;
    db 25        ;wTilemap_VStop
    dw $041A     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/weave/river/Naroom_Weave_River.metatile.tilemap.rle"