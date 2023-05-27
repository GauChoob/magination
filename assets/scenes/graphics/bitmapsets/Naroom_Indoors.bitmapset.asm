    db 1         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Indoors_Extra,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EC0,BITMAP_Naroom_Vash_Chest,$02,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Naroom_Indoors_Main,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08