    db 11        ; wTilemap_Width
    dw $0063     ; wTilemap_YMapPad
    db 0         ;
    db 8         ; wTilemap_VStop
    dw $00C6     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/northwest_trynroom/Naroom_Vash_Northwest_TrynRoom.metatile.tilemap.rle"