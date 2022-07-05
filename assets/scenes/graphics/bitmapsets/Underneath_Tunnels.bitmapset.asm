    db 2         ;VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Tunnels_WoodWalls,$10,$08
        LoadBitmap $8B00,BITMAP_Underneath_Tunnels_Plants,$10,$05

    db 4         ;VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8FA0,BITMAP_Misc_CaldVents_UnderneathTunnels_Chest,$04,$01
        LoadBitmap $9000,BITMAP_Underneath_Tunnels_NaturalWalls,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02