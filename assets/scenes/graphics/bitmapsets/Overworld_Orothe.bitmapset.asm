    db 1         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Overworld_Orothe_Decoration,$10,$08

    db 5         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000,BITMAP_Sprite_MiniTony_Main,$10,$01
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Overworld_Orothe_Mountains,$10,$08
        LoadBitmap $8100,BITMAP_Sprite_MiniTony_Turtle,$10,$03
        LoadBitmap $8F00,BITMAP_Overworld_Orothe_Mar,$07,$01