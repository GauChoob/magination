    db 20        ; wTilemap_Width
    dw $00B4     ; wTilemap_YMapPad
    db 9         ;
    db 2         ; wTilemap_VStop
    dw $00F0     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/southeast/Naroom_Vash_Southeast_Mask.metatile.tilemap.rle"