    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Orothe_Geyser_Pathway_Ceiling,$10,$08
        LoadBitmap $8800,BITMAP_Orothe_Geyser_Pathway_Path,$10,$08

    db 3         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $9000,BITMAP_Orothe_Geyser_Pathway_Wall,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony_Swimming,$10,$04