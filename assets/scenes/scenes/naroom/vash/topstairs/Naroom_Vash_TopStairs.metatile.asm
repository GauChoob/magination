    db 15        ;wTilemap_Width
    dw $0087     ;wTilemap_YMapPad
    db 4         ;
    db 23        ;wTilemap_VStop
    dw $01EF     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/topstairs/Naroom_Vash_TopStairs.metatile.tilemap.rle"