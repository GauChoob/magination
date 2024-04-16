    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Naroom_Vash_ObservatoryTop,$10,$08
        LoadBitmap $9000,BITMAP_Naroom_Vash_ObservatoryBottom,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Indoors_Main,$10,$08
        LoadBitmap $8EC0,BITMAP_Naroom_Vash_Chest,$02,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08