    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Orothe_Coral_Wall,$10,$08
        LoadBitmap $9000,BITMAP_Orothe_Coral_CoralWall,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Coral_CoralBackground,$10,$08
        LoadBitmap $8E60,BITMAP_Orothe_Coral_SeapodsChest,$08,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Swimming,$10,$04