    db 16        ; wTilemap_Width
    dw $0090     ; wTilemap_YMapPad
    db 5         ;
    db 22        ; wTilemap_VStop
    dw $0200     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/orothe/geyser/south/Orothe_Geyser_South.metatile.tilemap.rle"