    db $01         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000,BITMAP_Boot_PressStart,$07,$01

    db $02         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Boot_MagiNationLogo,$10,$07
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
