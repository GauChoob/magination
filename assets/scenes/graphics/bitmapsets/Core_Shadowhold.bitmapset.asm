    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Core_Shadowhold_Main,$10,$08
        LoadBitmap $8800,BITMAP_Core_Shadowhold_Glow,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Core_Shadowhold_Decoration,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8E00,BITMAP_Core_Shadowhold_Interactables,$08,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08