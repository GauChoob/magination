    db 20        ;wTilemap_Width
    dw $00B4     ;wTilemap_YMapPad
    db 9         ;
    db 38        ;wTilemap_VStop
    dw $03C0     ;Uncompressed file size (excluding header)
    INCBIN "autogenerated/assets/scenes/scenes/underneath/tunnels/outside/Underneath_Tunnels_Outside.metatile.tilemap.rle"