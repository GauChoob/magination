    db 15        ;wTilemap_Width
    dw $0087     ;wTilemap_YMapPad
    db 4         ;
    db 40        ;wTilemap_VStop
    dw $02EE     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/grove/entrance/Naroom_Grove_Entrance.metatile.tilemap.rle"