    db 64        ;wTilemap_Width
    dw $0240     ;wTilemap_YMapPad
    db 53        ;
    db 54        ;wTilemap_VStop
    dw $1000     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/overworld/naroom/Overworld_Naroom.metatile.tilemap.rle"