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
    ; \4 = Arena R
    ; \5 = Arena G
    ; \6 = Arena B
    AddressBank BITMAP_Fightscene_Arena_\1TopRLE
    AddressBank ATTRTILE_Fightscene_Arena_\1TopRLE
    AddressBank BITMAP_Fightscene_Arena_\1BottomRLE
    AddressBank ATTRTILE_Fightscene_Arena_\1BottomRLE
    db \2
    db \3
    AddressBank PAL_Fightscene_Arena_\1
    RGB (\4), (\5), (\6)
ENDM

FIGHTSCENE_CREATURE_LEFT_EMPTY      EQU BACKGROUND_COORD_08_00
FIGHTSCENE_CREATURE_LEFT_EMPTY_END  EQU BACKGROUND_COORD_20_00
FIGHTSCENE_CREATURE_LEFT_SPRITE     EQU BACKGROUND_COORD_0F_00
FIGHTSCENE_CREATURE_LEFT_SPRITE_END EQU BACKGROUND_COORD_19_00

FIGHTSCENE_CREATURE_RIGHT_EMPTY      EQU WINDOW_COORD_00_00
FIGHTSCENE_CREATURE_RIGHT_EMPTY_END  EQU WINDOW_COORD_20_00
FIGHTSCENE_CREATURE_RIGHT_SPRITE     EQU WINDOW_COORD_00_00
FIGHTSCENE_CREATURE_RIGHT_SPRITE_END EQU WINDOW_COORD_0A_00
FIGHTSCENE_CREATURE_RIGHT_MENU       EQU WINDOW_COORD_0A_00
FIGHTSCENE_CREATURE_RIGHT_MENU_END   EQU WINDOW_COORD_14_00