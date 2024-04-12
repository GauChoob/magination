    db $02         ; VRAM0 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000, BITMAP_InteractiveImaginationLogo, $10, $08
        LoadBitmap $8D00, BITMAP_MusyX, $0A, $03

    db $02         ; VRAM1 entries

    ; Destination, Source, Width, Height
        LoadBitmap $9000, BITMAP_InteractiveImaginationLogoText, $10, $04
        LoadBitmap $8EE0, BITMAP_Misc_BlankTiles, $02, $02
