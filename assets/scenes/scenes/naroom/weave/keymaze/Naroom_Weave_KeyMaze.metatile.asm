    db 40        ;wTilemap_Width
    dw $0168     ;wTilemap_YMapPad
    db 29        ;
    db 20        ;wTilemap_VStop
    dw $04B0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/weave/keymaze/Naroom_Weave_KeyMaze.metatile.tilemap.rle"