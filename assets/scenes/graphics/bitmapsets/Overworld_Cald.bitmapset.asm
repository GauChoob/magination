    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Overworld_Cald_Volcano,$10,$08

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Overworld_Cald_Buildings,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_MiniTony_Main,$10,$01
        LoadBitmap $8100,BITMAP_Sprite_MiniTony_Turtle,$10,$03