    db 30        ; wTilemap_Width
    dw $010E     ; wTilemap_YMapPad
    db 19        ;
    db 10        ; wTilemap_VStop
    dw $0258     ; Uncompressed file size (excluding header)
    ; The imported file size was actually $025F because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/underneath/geyser/cavedin/Underneath_Geyser_CavedIn.metatile.tilemap.rle"