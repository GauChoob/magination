    db 20        ; wTilemap_Width
    dw $00B4     ; wTilemap_YMapPad
    db 9         ;
    db 35        ; wTilemap_VStop
    dw $0384     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $038B because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/cald/ashyn/west/Cald_Ashyn_West.metatile.tilemap.rle"