    db 3         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000, BITMAP_Sprite_OgarBattle, $10, $02
        LoadBitmap $8400, BITMAP_Sprite_Sparkle, $10, $04
        LoadBitmap $8800, BITMAP_Sprite_CardsceneFX, $10, $07

    db 1         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $8000, BITMAP_Sprite_TonyBattle, $10, $04
