    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Misc_StartScreen_Top,$10,$08

    db 3         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Misc_StartScreen_Bottom,$10,$07
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08