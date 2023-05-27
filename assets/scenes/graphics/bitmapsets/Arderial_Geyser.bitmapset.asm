    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Geyser_Floor,$10,$08
        LoadBitmap $8800,BITMAP_Arderial_Geyser_PipesKink,$10,$08

    db 3         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Geyser_PipesEntrance,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8E00,BITMAP_Arderial_Geyser_PipesMisc,$10,$02