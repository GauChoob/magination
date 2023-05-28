; Equivalent to BITSET_Arderial_Indoors with old pointer locations

    db 1         ; VRAM0 entries

    ; BITMAP_Arderial_Indoors_Walls
    dw $9000
    dw $4800
    db $10
    db $08
    db $58

    db 3         ; VRAM1 entries

    ; BITMAP_Arderial_Indoors_Ceiling
    dw $9000
    dw $5000
    db $10
    db $08
    db $58

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