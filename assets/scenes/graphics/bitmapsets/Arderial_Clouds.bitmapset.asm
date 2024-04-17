    db 3         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800,BITMAP_Arderial_Clouds_YellowBig,$10,$08
        LoadBitmap $9400,BITMAP_Arderial_Clouds_White,$10,$04
        LoadBitmap $9000,BITMAP_Arderial_Clouds_YellowSmall,$10,$04

    db 5         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Clouds_Scaffolding,$10,$05
        LoadBitmap $9500,BITMAP_Arderial_Clouds_Machinery,$10,$03
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8EB0,BITMAP_Misc_Chest_Default,$03,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02