    db 3         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000, BITMAP_Battle_Warrada, $10, $02
        LoadBitmap $8400, BITMAP_Battle_Summon, $10, $04
        LoadBitmap $8800, BITMAP_Battle_Effects, $10, $07

    db 1         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000, BITMAP_Battle_Tony, $10, $04