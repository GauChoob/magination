    db 1         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $96E0, BITMAP_Misc_BlankTiles, $02, $02

    db 1         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800, BITMAP_Font, $10, $10
