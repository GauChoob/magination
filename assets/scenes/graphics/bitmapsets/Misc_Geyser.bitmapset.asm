    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Geyser_Walls,$10,$08
        LoadBitmap $8800,BITMAP_Naroom_Geyser_Tunnel,$10,$08

    db 13        ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Geyser_Interactables,$10,$08
        LoadBitmap $8E00,BITMAP_Underneath_Geyser_FullMoonBlock,$02,$01
        LoadBitmap $8E20,BITMAP_Underneath_Geyser_NewMoonBlock,$02,$01
        LoadBitmap $8E40,BITMAP_Underneath_Geyser_WaxMoonBlock,$04,$01
        LoadBitmap $8E80,BITMAP_Underneath_Geyser_WaneMoonBlock,$04,$01
        LoadBitmap $8F00,BITMAP_Underneath_Geyser_FullMoonButton,$02,$01
        LoadBitmap $8F20,BITMAP_Underneath_Geyser_NewMoonButton,$02,$01
        LoadBitmap $8F40,BITMAP_Underneath_Geyser_WaxMoonButton,$04,$01
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8EC0,BITMAP_Naroom_Geyser_EmptyChest,$02,$01
        LoadBitmap $8FC0,BITMAP_Naroom_Geyser_FullChest,$02,$01
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8F80,BITMAP_Underneath_Geyser_WaneMoonButton,$04,$01