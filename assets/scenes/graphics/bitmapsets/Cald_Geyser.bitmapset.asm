    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Geyser_LavaDam,$10,$08
        LoadBitmap $8800,BITMAP_Cald_Geyser_Walls,$10,$08

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Geyser_LavaWall,$10,$08
        LoadBitmap $8E00,BITMAP_Cald_Geyser_Interactables,$10,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02