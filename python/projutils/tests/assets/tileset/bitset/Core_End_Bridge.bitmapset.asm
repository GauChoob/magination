    db 2         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8800, BITMAP_Core_End_Bridge_Sky, $10, $08
        LoadBitmap $9000, BITMAP_Core_End_Bridge_Top, $10, $08

    db 4         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000, BITMAP_Core_End_Bridge_Base, $10, $08
        LoadBitmap $8E00, BITMAP_Core_End_Bridge_Misc, $0E, $02
        LoadBitmap $8EE0, BITMAP_Misc_BlankTiles, $02, $02
        LoadBitmap $8000, BITMAP_Sprite_Tony_Main, $10, $08
