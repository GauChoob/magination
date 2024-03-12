MACRO Fightscene_TileFX_DissolveTable_Data
    ; \1 = tile's row (0-7)
    ; \2 = mask to apply to erase the row (to both upper and lower byte)
    db 2*(\1), \2     ; lower byte
    db 2*(\1)+1, \2   ; upper byte
ENDM

    ; $6D79
Fightscene_TileFX_DissolveTable_Slow_Data:
    ; Dither-erase the tile
    Fightscene_TileFX_DissolveTable_Data $00, %00110011
    Fightscene_TileFX_DissolveTable_Data $01, %11001100
    Fightscene_TileFX_DissolveTable_Data $02, %00110011
    Fightscene_TileFX_DissolveTable_Data $03, %11001100
    Fightscene_TileFX_DissolveTable_Data $04, %00110011
    Fightscene_TileFX_DissolveTable_Data $05, %11001100
    Fightscene_TileFX_DissolveTable_Data $06, %00110011
    Fightscene_TileFX_DissolveTable_Data $07, %11001100
    ; Then pass a second time
    Fightscene_TileFX_DissolveTable_Data $00, %11001100
    Fightscene_TileFX_DissolveTable_Data $01, %00110011
    Fightscene_TileFX_DissolveTable_Data $02, %11001100
    Fightscene_TileFX_DissolveTable_Data $03, %00110011
    Fightscene_TileFX_DissolveTable_Data $04, %11001100
    Fightscene_TileFX_DissolveTable_Data $05, %00110011
    Fightscene_TileFX_DissolveTable_Data $06, %11001100
    Fightscene_TileFX_DissolveTable_Data $07, %00110011
    ; Unused last 4 data rows - easter egg they spell out "EMORY" who wrote this code
    db "EMOR"
    db "Y822"
    db "50", $02, $9A
    db $00, $00, $00, $00

    ; $6DC9
Fightscene_TileFX_DissolveTable_Fast_Data:
    Fightscene_TileFX_DissolveTable_Data $00, %00000000
    Fightscene_TileFX_DissolveTable_Data $01, %00000000
    Fightscene_TileFX_DissolveTable_Data $02, %00000000
    Fightscene_TileFX_DissolveTable_Data $03, %00000000
    Fightscene_TileFX_DissolveTable_Data $04, %00000000
    Fightscene_TileFX_DissolveTable_Data $05, %00000000
    Fightscene_TileFX_DissolveTable_Data $06, %00000000
    Fightscene_TileFX_DissolveTable_Data $07, %00000000

    ; $6DE9
Fightscene_TileFX_DissolveTable_Fast_Pointers::
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*0
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*1
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*2
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*3
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*4
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*5
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*6
    dw Fightscene_TileFX_DissolveTable_Fast_Data + 4*7
DEF Fightscene_TileFX_DissolveTable_Fast_Pointers_ENTRIES EQU $08

    ; $6DF9
Fightscene_TileFX_DissolveTable_Slow_Pointers::
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*0
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*1
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*2
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*3
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*4
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*5
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*6
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*7
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*8
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*9
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*10
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*11
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*12
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*13
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*14
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*15
DEF Fightscene_TileFX_DissolveTable_Slow_Pointers_ENTRIES EQU $10
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*16  ; UNUSED extra line
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*17  ; UNUSED extra line
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*18  ; UNUSED extra line
    dw Fightscene_TileFX_DissolveTable_Slow_Data + 4*19  ; UNUSED extra line