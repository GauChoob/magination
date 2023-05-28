    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8C00,BITMAP_1B30AF_,$10,$04
        LoadBitmap $9000,BITMAP_173000_,$10,$08

    db 3         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_170800_,$10,$08
        LoadBitmap $8E00,BITMAP_1D2757_,$10,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08