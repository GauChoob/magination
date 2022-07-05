    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Cald_Tunnels_BrickWalls,$10,$08
        LoadBitmap $9000,BITMAP_Cald_Tunnels_NaturalWalls,$10,$08

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Cald_Tunnels_Decoration,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_UnderneathIndoors_Cald_Chest,$03,$02