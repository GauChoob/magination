    db 15        ;wTilemap_Width
    dw $0087     ;wTilemap_YMapPad
    db 4         ;
    db 0         ;wTilemap_VStop
    dw $0096     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/bogrom/brubroom/Underneath_Bogrom_BrubRoom.metatile.tilemap.rle"