    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Vash_PipesRoom_BrickWall,$10,$08
        LoadBitmap $8B00,BITMAP_Naroom_Vash_PipesRoom_WallShadows,$10,$05

    db 7         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8F00,BITMAP_Naroom_Vash_PipesRoom_Block,$03,$01
        LoadBitmap $8F30,BITMAP_Naroom_Vash_PipesRoom_FlatBlock,$05,$01
        LoadBitmap $8E00,BITMAP_Naroom_Vash_PipesRoom_Unknown,$02,$01
        LoadBitmap $9000,BITMAP_Naroom_Vash_PipesRoom_BigPipes,$10,$08
        LoadBitmap $8EB0,BITMAP_Naroom_Vash_PipesRoom_Unknown,$02,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08