    db 12        ; wTilemap_Width
    dw $006C     ; wTilemap_YMapPad
    db 1         ;
    db 4         ; wTilemap_VStop
    dw $00A8     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/middle_southpathway_screwroom/Core_Shadowhold_Middle_SouthPathway_ScrewRoom.metatile.tilemap.rle"