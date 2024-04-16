    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_DeepForest_Deep,$10,$08
        LoadBitmap $8C00,BITMAP_Naroom_DeepForest_Border,$10,$04

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_DeepForest_Path,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08