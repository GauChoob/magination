    db 32        ;wTilemap_Width
    dw $0120     ;wTilemap_YMapPad
    db 21        ;
    db 14        ;wTilemap_VStop
    dw $0300     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/middle_firstpuzzle/Core_Shadowhold_Middle_FirstPuzzle.metatile.tilemap.rle"