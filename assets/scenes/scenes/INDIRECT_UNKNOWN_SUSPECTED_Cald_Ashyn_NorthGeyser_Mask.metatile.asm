    db 50        ; wTilemap_Width
    dw $01C2     ; wTilemap_YMapPad
    db 39        ;
    db 50        ; wTilemap_VStop
    dw $0BB8     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/INDIRECT_UNKNOWN_SUSPECTED_Cald_Ashyn_NorthGeyser_Mask.metatile.tilemap.rle"