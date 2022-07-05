    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Geyser_FloatTopAndBuilding,$10,$08
        LoadBitmap $8800,BITMAP_Orothe_Geyser_FloatTopAndFloor,$10,$08

    db 6         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Geyser_FloatBottom,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8E00,BITMAP_Orothe_Geyser_Floor,$0C,$02
        LoadBitmap $8FC0,BITMAP_Orothe_Geyser_FullChest,$02,$01
        LoadBitmap $8EC0,BITMAP_Orothe_Geyser_EmptyChest,$02,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08