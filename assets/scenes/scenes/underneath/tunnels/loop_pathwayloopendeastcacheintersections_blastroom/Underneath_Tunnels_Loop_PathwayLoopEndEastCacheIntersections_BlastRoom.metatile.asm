    db 12        ; wTilemap_Width
    dw $006C     ; wTilemap_YMapPad
    db 1         ;
    db 2         ; wTilemap_VStop
    dw $0090     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/tunnels/loop_pathwayloopendeastcacheintersections_blastroom/Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections_BlastRoom.metatile.tilemap.rle"