    db 12        ;wTilemap_Width
    dw $006C     ;wTilemap_YMapPad
    db 1         ;
    db 2         ;wTilemap_VStop
    dw $0090     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/easttunnel/intersection_blastroom/Underneath_EastTunnel_Intersection_BlastRoom.metatile.tilemap.rle"