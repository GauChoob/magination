    db 25        ;wTilemap_Width
    dw $00E1     ;wTilemap_YMapPad
    db 14        ;
    db 15        ;wTilemap_VStop
    dw $0271     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $0278 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/cald/volcano_hyren/Cald_Volcano_Hyren.metatile.tilemap.rle"