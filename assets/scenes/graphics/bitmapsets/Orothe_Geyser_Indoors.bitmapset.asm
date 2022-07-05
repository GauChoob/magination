    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Geyser_Indoors_LowerLevel,$10,$08
        LoadBitmap $8800,BITMAP_Orothe_Geyser_Indoors_UpperLevel,$10,$08

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Geyser_Indoors_Misc,$10,$08
        LoadBitmap $8E00,BITMAP_Orothe_Geyser_Barrier,$0E,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02