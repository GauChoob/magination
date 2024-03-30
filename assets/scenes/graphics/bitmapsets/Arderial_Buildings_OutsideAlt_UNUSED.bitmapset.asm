    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8C00,BITMAP_Arderial_Buildings_OutsideAlt_Clouds,$10,$04
        LoadBitmap $9000,BITMAP_Arderial_Buildings_OutsideAlt_StructureCorner,$10,$08

    db 3         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Arderial_Buildings_OutsideAlt_StructureBig,$10,$08
        LoadBitmap $8E00,BITMAP_Arderial_Buildings_OutsideAlt_StructureSmall,$10,$02
        LoadBitmap $8000,BITMAP_Sprite_Tony_Main,$10,$08