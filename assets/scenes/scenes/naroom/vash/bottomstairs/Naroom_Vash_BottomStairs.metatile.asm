    db 14        ;wTilemap_Width
    dw $007E     ;wTilemap_YMapPad
    db 3         ;
    db 50        ;wTilemap_VStop
    dw $0348     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/bottomstairs/Naroom_Vash_BottomStairs.metatile.tilemap.rle"