    db 12        ; wTilemap_Width
    dw $006C     ; wTilemap_YMapPad
    db 1         ;
    db 0         ; wTilemap_VStop
    dw $0078     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/misc/startscreen/main/Misc_StartScreen_Main.metatile.tilemap.rle"