    db 60        ; wTilemap_Width
    dw $021C     ; wTilemap_YMapPad
    db 49        ;
    db 30        ; wTilemap_VStop
    dw $0960     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/vents/pathwaya/Cald_Vents_PathwayA.metatile.tilemap.rle"