    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Mushroom_Decoration,$10,$08
        LoadBitmap $8D00,BITMAP_Underneath_Mushroom_Interactables,$10,$03

    db 5         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Underneath_Mushroom_MushFieldStalactite,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8F00,BITMAP_Underneath_Mushroom_SporeTrail,$0E,$01
        LoadBitmap $8E80,BITMAP_Underneath_Mushroom_Chest,$06,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08