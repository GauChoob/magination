    db 24        ; wTilemap_Width
    dw $00D8     ; wTilemap_YMapPad
    db 13        ;
    db 0         ; wTilemap_VStop
    dw $00F0     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/tunnels/hyren_exit/Underneath_Tunnels_Hyren_Exit.metatile.tilemap.rle"