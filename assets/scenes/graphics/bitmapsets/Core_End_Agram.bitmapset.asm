    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Core_End_Agram_Wall,$10,$10

    db 3         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Core_End_Agram_Throne,$10,$06
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02