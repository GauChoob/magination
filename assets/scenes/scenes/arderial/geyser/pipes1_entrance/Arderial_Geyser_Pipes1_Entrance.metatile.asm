    db 27        ;wTilemap_Width
    dw $00F3     ;wTilemap_YMapPad
    db 16        ;
    db 17        ;wTilemap_VStop
    dw $02D9     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/geyser/pipes1_entrance/Arderial_Geyser_Pipes1_Entrance.metatile.tilemap.rle"