 ; Equivalent to BITSET_Misc_StartScreen with old pointer locations

    db 1         ; VRAM0 entries

    ; BITMAP_Misc_StartScreen_Top
    dw $9000
    dw $5000
    db $10
    db $08
    db $5E

    db 3         ; VRAM1 entries

    	; Pointer is surprisingly preserved
        LoadBitmap $9000,BITMAP_Misc_StartScreen_Bottom,$10,$07

    ; BITMAP_Misc_BlankTiles
    dw $8EE0
    dw $50B4
    db $02
    db $02
    db $7C

    ; BITMAP_Sprite_Tony_Main
    dw $8000
    dw $4000
    db $10
    db $08
    db $61