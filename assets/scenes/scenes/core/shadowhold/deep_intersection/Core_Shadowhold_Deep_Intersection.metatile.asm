    db 25        ;wTilemap_Width
    dw $00E1     ;wTilemap_YMapPad
    db 14        ;
    db 20        ;wTilemap_VStop
    dw $02EE     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/core/shadowhold/deep_intersection/Core_Shadowhold_Deep_Intersection.metatile.tilemap.rle"