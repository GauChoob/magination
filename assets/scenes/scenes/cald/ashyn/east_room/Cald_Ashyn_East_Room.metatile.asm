    db 12        ;wTilemap_Width
    dw $006C     ;wTilemap_YMapPad
    db 1         ;
    db 2         ;wTilemap_VStop
    dw $0090     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/ashyn/east_room/Cald_Ashyn_East_Room.metatile.tilemap.rle"