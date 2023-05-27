    db 1         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8F00,BITMAP_Orothe_Dock_FerryBottom,$10,$09

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Dock_FerryTop,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8E00,BITMAP_Orothe_Dock_FerryWindows,$0B,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08