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


; Arena Index
RSRESET
DEF FIGHTSCENE_ARENA_Arderial            RB 1   ; $00
DEF FIGHTSCENE_ARENA_Core                RB 1   ; $01
DEF FIGHTSCENE_ARENA_Cald                RB 1   ; $02
DEF FIGHTSCENE_ARENA_UnderneathTunnels   RB 1   ; $03
DEF FIGHTSCENE_ARENA_CaldGeyser          RB 1   ; $04
DEF FIGHTSCENE_ARENA_NaroomGeyser        RB 1   ; $05
DEF FIGHTSCENE_ARENA_Naroom              RB 1   ; $06
DEF FIGHTSCENE_ARENA_UnderneathGeyser    RB 1   ; $07
DEF FIGHTSCENE_ARENA_OrotheStarfish      RB 1   ; $08
DEF FIGHTSCENE_ARENA_OrotheGeyser        RB 1   ; $09
DEF FIGHTSCENE_ARENA_Orothe              RB 1   ; $0A
DEF FIGHTSCENE_ARENA_OrotheTunnels       RB 1   ; $0B
DEF FIGHTSCENE_ARENA_Shadowhold          RB 1   ; $0C
DEF FIGHTSCENE_ARENA_Underneath          RB 1   ; $0D

RSRESET
DEF oFightscene_Arena_TopBitmap         RB 3
DEF oFightscene_Arena_TopAttrTile       RB 3
DEF oFightscene_Arena_BottomBitmap      RB 3
DEF oFightscene_Arena_BottomAttrTile    RB 3
DEF oFightscene_Arena_ScrollSpeedTop    RB 1
DEF oFightscene_Arena_ScrollSpeedBottom RB 1
DEF oFightscene_Arena_Pal               RB 3
DEF oFightscene_Arena_Color             RB 2

MACRO Fightscene_ArenaData
    ; \1 = Asset name
    ; \2 = Top scroll speed
    ; \3 = Bottom scroll speed
    ; \4 = Cardscene R
    ; \5 = Cardscene G
    ; \6 = Cardscene B
    AddressBank BITMAP_Fightscene_Arena_\1TopRLE
    AddressBank ATTRTILE_Fightscene_Arena_\1TopRLE
    AddressBank BITMAP_Fightscene_Arena_\1BottomRLE
    AddressBank ATTRTILE_Fightscene_Arena_\1BottomRLE
    db \2
    db \3
    AddressBank PAL_Fightscene_Arena_\1
    RGB (\4), (\5), (\6)
ENDM


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

MACRO Fightscene_FightFX_MoveTable_TableStart
\1:
DEF offset = 0
REDEF FIGHTSCENE_FIGHTFX_MOVETABLE_LABELNAME EQUS "\1"
ENDM

MACRO Fightscene_FightFX_MoveTable_Instruction
       ;ΔX    ΔY  num(frames)-1
    db (\1), (\2), (\3 - 1)
    DEF offset += 3
ENDM

MACRO Fightscene_FightFX_MoveTable_LoopStart
    DEF FIGHTSCENE_FIGHTFX_MOVETABLE_LOOPSTART EQU offset
ENDM

MACRO Fightscene_FightFX_MoveTable_LoopEnd
        ; Magic number identifying a loop
    db $00, $00, $00
        ; Jump to this position          Number of loops
    db FIGHTSCENE_FIGHTFX_MOVETABLE_LOOPSTART, \1
    DEF offset += 5
ENDM

MACRO Fightscene_FightFX_MoveTable_TableEnd
    DEF {FIGHTSCENE_FIGHTFX_MOVETABLE_LABELNAME}_Size EQU offset
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

MACRO Fightscene_TileFX_DissolveTable_Data
    ; \1 = tile's row (0-7)
    ; \2 = mask to apply to erase the row (to both upper and lower byte)
    db 2*(\1), \2     ; lower byte
    db 2*(\1)+1, \2   ; upper byte
ENDM