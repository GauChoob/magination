    db 39        ;wTilemap_Width
    dw $015F     ;wTilemap_YMapPad
    db 28        ;
    db 19        ;wTilemap_VStop
    dw $046B     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/overworld/underneath/Overworld_Underneath.metatile.tilemap.rle"