    db 11        ;wTilemap_Width
    dw $0063     ;wTilemap_YMapPad
    db 0         ;
    db 1         ;wTilemap_VStop
    dw $0079     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/archery/Cald_Archery.metatile.tilemap.rle"