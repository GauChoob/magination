    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Buildings_Outside_StructureCorner,$10,$08
        LoadBitmap $8C00,BITMAP_Arderial_Buildings_Outside_Clouds,$10,$04

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Buildings_Outside_StructureBig,$10,$08
        LoadBitmap $8E00,BITMAP_Arderial_Buildings_Outside_StructureSmall,$10,$02
        LoadBitmap $8CE0,BITMAP_Misc_BlankTiles,$02,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08