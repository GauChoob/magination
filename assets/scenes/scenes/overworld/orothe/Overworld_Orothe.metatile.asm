    db 33        ;wTilemap_Width
    dw $0129     ;wTilemap_YMapPad
    db 22        ;
    db 25        ;wTilemap_VStop
    dw $0483     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/overworld/orothe/Overworld_Orothe.metatile.tilemap.rle"