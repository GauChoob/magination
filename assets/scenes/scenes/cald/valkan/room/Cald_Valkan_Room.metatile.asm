    db 13        ; wTilemap_Width
    dw $0075     ; wTilemap_YMapPad
    db 2         ;
    db 3         ; wTilemap_VStop
    dw $00A9     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/valkan/room/Cald_Valkan_Room.metatile.tilemap.rle"