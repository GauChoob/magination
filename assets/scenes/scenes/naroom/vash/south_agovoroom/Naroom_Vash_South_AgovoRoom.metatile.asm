    db 13        ; wTilemap_Width
    dw $0075     ; wTilemap_YMapPad
    db 2         ;
    db 0         ; wTilemap_VStop
    dw $0082     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/south_agovoroom/Naroom_Vash_South_AgovoRoom.metatile.tilemap.rle"