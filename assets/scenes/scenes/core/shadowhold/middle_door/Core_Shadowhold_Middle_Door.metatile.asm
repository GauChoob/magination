    db 20        ; wTilemap_Width
    dw $00B4     ; wTilemap_YMapPad
    db 9         ;
    db 20        ; wTilemap_VStop
    dw $0258     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/middle_door/Core_Shadowhold_Middle_Door.metatile.tilemap.rle"