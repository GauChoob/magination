    db 35        ; wTilemap_Width
    dw $013B     ; wTilemap_YMapPad
    db 24        ;
    db 10        ; wTilemap_VStop
    dw $02BC     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/tunnels/entrance/Cald_Tunnels_Entrance.metatile.tilemap.rle"