    db 14        ;wTilemap_Width
    dw $007E     ;wTilemap_YMapPad
    db 3         ;
    db 43        ;wTilemap_VStop
    dw $02E6     ;Uncompressed file size (excluding header)
    ;The imported file size was actually $02ED because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error
    INCBIN "autogenerated/assets/scenes/scenes/core/end/entrance/Core_End_Entrance.metatile.tilemap.rle"