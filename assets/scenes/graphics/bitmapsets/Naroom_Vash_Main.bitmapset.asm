    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8F00,BITMAP_Naroom_Vash_Signs,$10,$01
        LoadBitmap $9000,BITMAP_Naroom_Vash_Walls,$10,$08

    db 3         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Naroom_Forest_Trees,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08