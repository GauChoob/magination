    db 64        ; wTilemap_Width
    dw $0240     ; wTilemap_YMapPad
    db 53        ;
    db 10        ; wTilemap_VStop
    dw $0500     ; Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/arderial/middle/pathwayhouse/Arderial_Middle_PathwayHouse.metatile.tilemap.rle"