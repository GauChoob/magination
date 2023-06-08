; Viewport
DEF FIGHTSCENE_SCX_MAX_PAN EQU $60
DEF FIGHTSCENE_SCX_MAX_UPDATE EQU $7F
DEF FIGHTSCENE_SCY_INIT EQU $58
DEF FIGHTSCENE_SCY_ARENABOTTOM EQU 22*8
DEF FIGHTSCENE_SCY_STARTSCREEN_TITLE EQU 9*8
DEF FIGHTSCENE_SCY_STARTSCREEN_ARENATOP EQU 23*8
DEF FIGHTSCENE_SCY_STARTSCREEN_ARENABOTTOM EQU 23*8
DEF FIGHTSCENE_WX_HIDDEN EQU $A7 ; Out of bounds
DEF FIGHTSCENE_WY_INIT EQU $20
DEF FIGHTSCENE_WY_MAX EQU $71
DEF FIGHTSCENE_LYC_ARENATOP EQU 4*8 - 1
DEF FIGHTSCENE_LYC_ARENABOTTOM EQU 14*8 + 1
DEF FIGHTSCENE_LYC_STARTSCREEN_ARENATOP EQU 9*8 - 1
DEF FIGHTSCENE_LYC_STARTSCREEN_ARENABOTTOM EQU 13*8
DEF FIGHTSCENE_SCX_WX_DISTANCE EQU $87 ; Number of pixels between the viewport of the Background and the Window. The Window is always this much to the right of the Background (barring a small difference from a FightFX)

; Creature
DEF FIGHTSCENE_CREATURE_MAX_HEIGHT EQU $0A
DEF FIGHTSCENE_CREATURE_LEFT EQU $00
DEF FIGHTSCENE_CREATURE_RIGHT EQU $01

; Magic number for transparent color
DEF FIGHTSCENE_TRANSPARENT_COLOR EQU $3DE0  ; RGB $00, $0F, $0F

; Hardcoded vram locations
    ; Bank 0
    VRAM_TILEID_BG
    VRAM_TILEID FIGHTSCENE, ARENA_TOP, $80
    VRAM_TILEID FIGHTSCENE, ARENA_TOP_END, $C0
    VRAM_TILEID FIGHTSCENE, ARENA_BOTTOM, $C0
    VRAM_TILEID FIGHTSCENE, ARENA_BOTTOM_END, $00
    VRAM_TILEID FIGHTSCENE, ARENA_CREATURE_LEFT, $00
    ; Bank 1
    VRAM_TILEID_BG
    VRAM_TILEID FIGHTSCENE, ARENA_BLANKTILE, $80
    VRAM_TILEID FIGHTSCENE, ARENA_CREATURE_RIGHT, $00
; Manually defined since $9800 is past the end of the VRAM space
FIGHTSCENE_VRAM_ARENA_CREATURE_LEFT_END EQU $9800
FIGHTSCENE_TILEID_ARENA_CREATURE_LEFT_END EQU $80
FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT_END EQU $9800
FIGHTSCENE_TILEID_ARENA_CREATURE_RIGHT_END EQU $80

DEF FIGHTSCENE_ARENA_TOP                EQU BACKGROUND_COORD_00_00
DEF FIGHTSCENE_ARENA_TOP_END            EQU BACKGROUND_COORD_04_00
DEF FIGHTSCENE_ARENA_BOTTOM             EQU BACKGROUND_COORD_04_00
DEF FIGHTSCENE_ARENA_BOTTOM_END         EQU BACKGROUND_COORD_08_00

DEF FIGHTSCENE_CREATURE_LEFT_EMPTY      EQU BACKGROUND_COORD_08_00
DEF FIGHTSCENE_CREATURE_LEFT_EMPTY_END  EQU BACKGROUND_COORD_20_00
DEF FIGHTSCENE_CREATURE_LEFT_SPRITE     EQU BACKGROUND_COORD_0F_00
DEF FIGHTSCENE_CREATURE_LEFT_SPRITE_END EQU BACKGROUND_COORD_19_00

DEF FIGHTSCENE_CREATURE_RIGHT_EMPTY      EQU WINDOW_COORD_00_00
DEF FIGHTSCENE_CREATURE_RIGHT_EMPTY_END  EQU WINDOW_COORD_20_00
DEF FIGHTSCENE_CREATURE_RIGHT_SPRITE     EQU WINDOW_COORD_00_00
DEF FIGHTSCENE_CREATURE_RIGHT_SPRITE_END EQU WINDOW_COORD_0A_00
DEF FIGHTSCENE_CREATURE_RIGHT_MENU       EQU WINDOW_COORD_0A_00
DEF FIGHTSCENE_CREATURE_RIGHT_MENU_END   EQU WINDOW_COORD_14_00

; Macros
MACRO Fightscene_FightFX_MoveTable_Load
    ; \1 = Table name
    Set8 wFightscene_FightFX_ReadingFrameMax, \1_Size
    Set16_M wFightscene_FightFX_DataTable, \1
ENDM


MACRO Fightscene_FightFX_MoveTable_Load_V
    ; \1 = Table name
    Set16_M wFightscene_FightFX_DataTable, \1
    Set8 wFightscene_FightFX_ReadingFrameMax, \1_Size
ENDM


MACRO Fightscene_FightFX_SetNextTile
    ; \1 = wFightscene_TileFX_DestroyAddress
    ; Increment wFightscene_TileFX_DestroyAddress by 1 tile ($10)
    ; At $9800, overflow back to $9000
    ld a, [\1]
    add $10
    ld [\1], a
    ld a, [\1+1]
    adc $00
    cp $98
    jr nz, .\@
        ld a, $90
    .\@:
    ld [\1+1], a
ENDM

