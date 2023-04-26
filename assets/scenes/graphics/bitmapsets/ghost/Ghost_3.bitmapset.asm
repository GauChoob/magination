; Equivalent to either BITSET_Misc_Fort_Outside, BITSET_Core_Shadowhold_Marina or BITSET_Arderial_Palace_Throneroom with old pointer locations
; It's not possible to distinguish these 3 bitmapsets
;FORT
    db 1         ;VRAM0 entries

    ; BITMAP_Misc_Fort_Main, BITMAP_Core_Shadowhold_Marina_Walls, or BITMAP_Arderial_Palace_ThroneroomSky
    dw $9000
    dw $5000
    db $10
    db $08
    db $61

    db 3         ;VRAM1 entries

    ; BITMAP_Misc_Fort_Diagonal, BITMAP_Core_Shadowhold_Marina_Sky, or BITMAP_Arderial_Palace_ThroneroomBase
    dw $9000
    dw $4800
    db $10
    db $08
    db $61

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
