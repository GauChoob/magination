    db 12        ;wTilemap_Width
    dw $006C     ;wTilemap_YMapPad
    db 1         ;
    db 0         ;wTilemap_VStop
    dw $0078     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/naroom/vash/top/Naroom_Vash_Top.metatile.tilemap.rle"