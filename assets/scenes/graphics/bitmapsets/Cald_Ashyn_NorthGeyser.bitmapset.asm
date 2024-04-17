    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8F00,BITMAP_Cald_Ashyn_NorthGeyser_BridgeAndHead,$10,$09
        LoadBitmap $8B00,BITMAP_Cald_Ashyn_NorthGeyser_Spikes,$10,$04

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000,BITMAP_Cald_Ashyn_NorthGeyser_Head,$10,$08
        LoadBitmap $8000,BITMAP_Sprite_Tony,$10,$08
        LoadBitmap $8E00,BITMAP_Cald_Ashyn_NorthGeyser_Geyser,$10,$02
        LoadBitmap $8EE0,BITMAP_Misc_BlankTiles,$02,$02