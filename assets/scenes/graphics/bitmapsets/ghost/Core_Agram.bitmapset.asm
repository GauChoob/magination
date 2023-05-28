; Equivalent to BITSET_Core_End_Agram with old pointer locations

    db 1         ; VRAM0 entries

    	; Pointer is surprisingly preserved
        LoadBitmap $8800,BITMAP_Core_End_Agram_Wall,$10,$10

    db 3         ; VRAM1 entries

    ; BITMAP_Core_End_Agram_Throne
    dw $9000
    dw $7805
    db $10
    db $06
    db $67

    ; BITMAP_Sprite_Tony_Main
    dw $8000
    dw $4000
    db $10
    db $08
    db $61

    ; BITMAP_Misc_BlankTiles
    dw $8EE0
    dw $50B4
    db $02
    db $02
    db $7C