    db 10        ; wTilemap_Width
    dw $005A     ; wTilemap_YMapPad
    db 255       ;
    db 5         ; wTilemap_VStop
    dw $0096     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/bogrom/gogorroom/Underneath_Bogrom_GogorRoom.metatile.tilemap.rle"