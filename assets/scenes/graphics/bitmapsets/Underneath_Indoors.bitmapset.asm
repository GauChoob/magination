    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Indoors_Walls,$10,$08
        LoadBitmap $8800,BITMAP_Underneath_Indoors_Misc,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Indoors_Objects,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_UnderneathIndoors_Cald_Chest,$03,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02