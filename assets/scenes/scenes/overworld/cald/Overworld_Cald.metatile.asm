    db 40        ;wTilemap_Width
    dw $0168     ;wTilemap_YMapPad
    db 29        ;
    db 23        ;wTilemap_VStop
    dw $0528     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/overworld/cald/Overworld_Cald.metatile.tilemap.rle"