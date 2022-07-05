    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Ruins_Castle,$10,$08

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Ruins_Walls,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Swimming,$10,$04
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02