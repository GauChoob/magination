    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Ashyn_Ground,$10,$08
        LoadBitmap $8F00,BITMAP_Cald_Ashyn_Signs,$0A,$01

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Ashyn_Building,$10,$08
        LoadBitmap $8E00,BITMAP_Cald_Ashyn_Wood,$0F,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08