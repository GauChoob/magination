    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Overworld_Naroom_Buildings,$10,$08
        LoadBitmap $9000,BITMAP_Overworld_Naroom_Mountains,$10,$08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Overworld_Naroom_Volcanos,$10,$08
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_TonyOverworld,$10,$01
        LoadBitmap $8100,BITMAP_Sprite_ParathinOverworld,$10,$03