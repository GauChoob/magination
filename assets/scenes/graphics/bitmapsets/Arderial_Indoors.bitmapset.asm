    db 1         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Indoors_Walls,$10,$08

    db 3         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Indoors_Ceiling,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02