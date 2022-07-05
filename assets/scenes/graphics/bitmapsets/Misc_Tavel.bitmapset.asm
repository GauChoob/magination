    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Misc_Tavel_Ground,$10,$08

    db 3         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Misc_Tavel_Walls,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02