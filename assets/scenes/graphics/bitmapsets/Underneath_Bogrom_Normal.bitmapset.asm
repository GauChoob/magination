    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Bogrom_Main,$10,$08

    db 5         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8FA0,BITMAP_Underneath_Bogrom_Chest,$04,$01
        LoadBitmap $9000,BITMAP_Underneath_Bogrom_Treehouse,$10,$08
        LoadBitmap $8F00,BITMAP_Underneath_Bogrom_Signs,$0A,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02