; Equivalent to BITSET_Overworld_Arderial with old pointer locations

    db 1         ;VRAM0 entries

        LoadBitmap $8800,BITMAP_Overworld_Arderial_Scenery,$10,$10

    db 3         ;VRAM1 entries

    ; BITMAP_Arderial_Indoors_Ceiling
    dw $9000
    dw $582F
    db $10
    db $03
    db $70

    ; BITMAP_Misc_BlankTiles
    dw $8EE0
    dw $50B4
    db $02
    db $02
    db $7C

    ; BITMAP_Sprite_MiniTony_Main
    dw $8000
    dw $4A19
    db $10
    db $01
    db $79