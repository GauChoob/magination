    db 17        ; wTilemap_Width
    dw $0099     ; wTilemap_YMapPad
    db 6         ;
    db 20        ; wTilemap_VStop
    dw $01FE     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/mushroom/grukroom_teleportcore/Underneath_Mushroom_GrukRoom_TeleportCore.metatile.tilemap.rle"