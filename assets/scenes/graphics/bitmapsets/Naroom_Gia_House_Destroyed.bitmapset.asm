    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Naroom_Gia_House_DestroyedRoof,$10,$08
        LoadBitmap $9000,BITMAP_Naroom_Gia_House_DestroyedHouse,$10,$08

    db 6         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9200,BITMAP_Naroom_Weave_StoneWall,$10,$06
        LoadBitmap $9000,BITMAP_Naroom_Weave_Bushes,$0C,$02
        LoadBitmap $90C0,BITMAP_Naroom_Weave_StonePath,$04,$02
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08