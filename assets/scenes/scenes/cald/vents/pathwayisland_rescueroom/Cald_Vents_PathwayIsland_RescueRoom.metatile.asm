    db 19        ; wTilemap_Width
    dw $00AB     ; wTilemap_YMapPad
    db 8         ;
    db 4         ; wTilemap_VStop
    dw $010A     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/vents/pathwayisland_rescueroom/Cald_Vents_PathwayIsland_RescueRoom.metatile.tilemap.rle"