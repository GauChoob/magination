    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Orothe_Tunnels_Walls,$10,$08
        LoadBitmap $9000,BITMAP_Orothe_Tunnels_Water,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Tunnels_StairsVault,$10,$08
        LoadBitmap $8EA0,BITMAP_Orothe_Tunnels_Chest,$04,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02