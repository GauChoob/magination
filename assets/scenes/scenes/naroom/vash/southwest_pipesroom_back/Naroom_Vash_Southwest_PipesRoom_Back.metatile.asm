    db 50        ;wTilemap_Width
    dw $01C2     ;wTilemap_YMapPad
    db 39        ;
    db 17        ;wTilemap_VStop
    dw $0546     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/southwest_pipesroom_back/Naroom_Vash_Southwest_PipesRoom_Back.metatile.tilemap.rle"