    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8F00,BITMAP_Cald_Vents_Ground,$10,$09
        LoadBitmap $8C00,BITMAP_Cald_Vents_RoofStairs,$0F,$03

    db 6         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Vents_Walls,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8FA0,BITMAP_Cald_Vents_Block,$02,$01
        LoadBitmap $8EC0,BITMAP_Cald_Vents_EmptyChest,$02,$01
        LoadBitmap $8FC0,BITMAP_Cald_Vents_FullChest,$02,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08