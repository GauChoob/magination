    db 18        ;wTilemap_Width
    dw $00A2     ;wTilemap_YMapPad
    db 7         ;
    db 7         ;wTilemap_VStop
    dw $0132     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $0139 because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/core/end/antechamber/Core_End_Antechamber.metatile.tilemap.rle"