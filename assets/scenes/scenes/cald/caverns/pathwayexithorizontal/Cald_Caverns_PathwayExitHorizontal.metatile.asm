    db 40        ; wTilemap_Width
    dw $0168     ; wTilemap_YMapPad
    db 29        ;
    db 8         ; wTilemap_VStop
    dw $02D0     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/cald/caverns/pathwayexithorizontal/Cald_Caverns_PathwayExitHorizontal.metatile.tilemap.rle"