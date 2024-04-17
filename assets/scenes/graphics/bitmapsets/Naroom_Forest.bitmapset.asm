    db 4         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Forest_Shrubbery,$10,$04
        LoadBitmap $9400,BITMAP_Naroom_Forest_BrickPath,$10,$02
        LoadBitmap $9600,BITMAP_Naroom_Forest_Rocks,$10,$02
        LoadBitmap $8C00,BITMAP_Naroom_Vash_Stairs,$10,$04

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Naroom_Forest_Trees,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02