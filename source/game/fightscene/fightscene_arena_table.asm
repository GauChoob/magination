; Arena Index
RSRESET
DEF FIGHTSCENE_ARENA_Arderial            RB 1   ; $00
DEF FIGHTSCENE_ARENA_ArderialGeyser      RB 1   ; $01
DEF FIGHTSCENE_ARENA_Cald                RB 1   ; $02
DEF FIGHTSCENE_ARENA_UnderneathTunnels   RB 1   ; $03
DEF FIGHTSCENE_ARENA_CaldGeyser          RB 1   ; $04
DEF FIGHTSCENE_ARENA_Core        RB 1   ; $05
DEF FIGHTSCENE_ARENA_Naroom              RB 1   ; $06
DEF FIGHTSCENE_ARENA_NaroomUnderneathGeysers    RB 1   ; $07
DEF FIGHTSCENE_ARENA_OrotheGeyser      RB 1   ; $08
DEF FIGHTSCENE_ARENA_OrotheWarrada        RB 1   ; $09
DEF FIGHTSCENE_ARENA_Orothe              RB 1   ; $0A
DEF FIGHTSCENE_ARENA_OrotheTunnels       RB 1   ; $0B
DEF FIGHTSCENE_ARENA_Shadowhold          RB 1   ; $0C
DEF FIGHTSCENE_ARENA_Underneath          RB 1   ; $0D


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


RSRESET
DEF oFightscene_Arena_TopBitmap         RB 3
DEF oFightscene_Arena_TopAttrTile       RB 3
DEF oFightscene_Arena_BottomBitmap      RB 3
DEF oFightscene_Arena_BottomAttrTile    RB 3
DEF oFightscene_Arena_ScrollSpeedTop    RB 1
DEF oFightscene_Arena_ScrollSpeedBottom RB 1
DEF oFightscene_Arena_Pal               RB 3
DEF oFightscene_Arena_Color             RB 2


Fightscene_ArenaTable_Arderial::
    Fightscene_ArenaData Arderial, 1, 2, $0D, $02, $07

Fightscene_ArenaTable_ArderialGeyser::
    Fightscene_ArenaData ArderialGeyser, 1, 2, $00, $00, $00

Fightscene_ArenaTable_Cald::
    Fightscene_ArenaData Cald, 1, 2, $1F, $01, $00

Fightscene_ArenaTable_UnderneathTunnels::
    Fightscene_ArenaData UnderneathTunnels, 1, 2, $0F, $00, $09

Fightscene_ArenaTable_CaldGeyser::
    Fightscene_ArenaData CaldGeyser, 1, 2, $00, $00, $00

Fightscene_ArenaTable_Core::
    Fightscene_ArenaData Core, 1, 1, $00, $00, $00

Fightscene_ArenaTable_Naroom::
    Fightscene_ArenaData Naroom, 1, 2, $00, $1F, $00

Fightscene_ArenaTable_NaroomUnderneathGeysers::
    Fightscene_ArenaData NaroomUnderneathGeysers, 1, 2, $00, $00, $00

Fightscene_ArenaTable_OrotheGeyser::
    Fightscene_ArenaData OrotheGeyser, 1, 2, $00, $00, $00

Fightscene_ArenaTable_OrotheWarrada::
    Fightscene_ArenaData OrotheWarrada, 1, 2, $00, $00, $00

Fightscene_ArenaTable_Orothe::
    Fightscene_ArenaData Orothe, 1, 2, $00, $00, $09

Fightscene_ArenaTable_OrotheTunnels::
    Fightscene_ArenaData OrotheTunnels, 1, 2, $00, $00, $09

Fightscene_ArenaTable_Shadowhold::
    Fightscene_ArenaData Shadowhold, 1, 2, $00, $00, $00

Fightscene_ArenaTable_Underneath::
    Fightscene_ArenaData Underneath, 1, 2, $04, $01, $0C


Fightscene_ArenaTable::
    dw Fightscene_ArenaTable_Arderial
    dw Fightscene_ArenaTable_ArderialGeyser
    dw Fightscene_ArenaTable_Cald
    dw Fightscene_ArenaTable_UnderneathTunnels
    dw Fightscene_ArenaTable_CaldGeyser
    dw Fightscene_ArenaTable_Core
    dw Fightscene_ArenaTable_Naroom
    dw Fightscene_ArenaTable_NaroomUnderneathGeysers
    dw Fightscene_ArenaTable_OrotheGeyser
    dw Fightscene_ArenaTable_OrotheWarrada
    dw Fightscene_ArenaTable_Orothe
    dw Fightscene_ArenaTable_OrotheTunnels
    dw Fightscene_ArenaTable_Shadowhold
    dw Fightscene_ArenaTable_Underneath