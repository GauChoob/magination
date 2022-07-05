    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Mar_Town_HouseTop,$10,$08
        LoadBitmap $8A00,BITMAP_Orothe_Mar_Town_HouseBottom,$10,$06

    db 3         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9100,BITMAP_Orothe_Mar_Town_Turtle,$10,$07
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Swimming,$10,$04