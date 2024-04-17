    db 3         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Vash_Training_Walls,$10,$04
        LoadBitmap $9600,BITMAP_Naroom_Forest_Rocks,$10,$02
        LoadBitmap $9400,BITMAP_Naroom_Vash_Training_Floor,$10,$02

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Vash_Training_Statues,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02