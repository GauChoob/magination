    db 16        ; wTilemap_Width
    dw $0090     ; wTilemap_YMapPad
    db 5         ;
    db 20        ; wTilemap_VStop
    dw $01E0     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/palace/secondfloorroom/Arderial_Palace_SecondFloorRoom.metatile.tilemap.rle"