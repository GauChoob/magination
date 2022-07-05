

    VRAM_TILEID_BG
    ; Bottom Menu Tiles:
        VRAM_TILEID Menu_MainMenu, TONY_, $86
        VRAM_TILEID Menu_MainMenu, SPELL, $8B
        VRAM_TILEID Menu_MainMenu, RINGS, $90
        VRAM_TILEID Menu_MainMenu, ITEMS, $95
        VRAM_TILEID Menu_MainMenu, GLYPH, $9A
        VRAM_TILEID Menu_MainMenu, ENERGYICON, $9F
        VRAM_TILEID Menu_MainMenu, ANIMITEICON, $A0
        VRAM_TILEID Menu_MainMenu, NUMBERS, $A1
        ; tiles $AB - $FF, $00 - $74 inclusive reserved for the Top Menu
        ; Also tiles $00 - $7F inclusive in VRAM0 are available but unused in all menus
        VRAM_TILEID Menu_MainMenu, COLON, $75
        VRAM_TILEID Menu_MainMenu, SAVE, $76
        VRAM_TILEID Menu_MainMenu, INFUSEDLIST, $7A
        VRAM_TILEID Menu_MainMenu, FATARROW, $7F

    ; Ring Menu Tiles:
        VRAM_TILEID Menu_MainMenu, RINGS_NAME, $AB
        VRAM_TILEID Menu_MainMenu, RINGS_LVL_, $B5
        VRAM_TILEID Menu_MainMenu, RINGS_EXP, $B9
        VRAM_TILEID Menu_MainMenu, RINGS_ABILITY, $BC
        VRAM_TILEID Menu_MainMenu, RINGS_RELICICON, $C3
        ; $C4 - $D5 unused
        VRAM_TILEID Menu_MainMenu, RINGS_CARD, $D6
        ; $EA - $FC unused
        VRAM_TILEID Menu_MainMenu, RINGS_RELIC0, $FD
        VRAM_TILEID Menu_MainMenu, RINGS_RELIC1, $09
        VRAM_TILEID Menu_MainMenu, RINGS_STRNGTH, $15
        VRAM_TILEID Menu_MainMenu, RINGS_DEFENSE, $19
        VRAM_TILEID Menu_MainMenu, RINGS_SPEED, $1D
        VRAM_TILEID Menu_MainMenu, RINGS_SKILL, $21
        VRAM_TILEID Menu_MainMenu, RINGS_RESIST, $25
        VRAM_TILEID Menu_MainMenu, RINGS_LUCK, $29
        VRAM_TILEID Menu_MainMenu, RINGS_LEVEL, $2D   ; These are aligned to be the same as RINGS_LEVEL and RINGS_EXPRNCE, even though it doesn't have to be this way
        VRAM_TILEID Menu_MainMenu, RINGS_EXPRNCE, $31 ; It does make it a bit simpler though
        ; $35 - $74 unused

    ; Tony Menu Tiles:
        VRAM_TILEID Menu_MainMenu, TONY_ICON, $AB
        VRAM_TILEID Menu_MainMenu, TONY_LVL_, $C4
        VRAM_TILEID Menu_MainMenu, TONY_EXP, $C8
        VRAM_TILEID Menu_MainMenu, TONY_ABILITIES_ENERGYBAND, $CB
        VRAM_TILEID Menu_MainMenu, TONY_ABILITIES_CRYSTALGLOVES, $D4
        VRAM_TILEID Menu_MainMenu, TONY_ABILITIES_AGADONSBOOTS, $DD
        VRAM_TILEID Menu_MainMenu, TONY_ABILITIES_OROTHEANBELT, $E6
        VRAM_TILEID Menu_MainMenu, TONY_ABILITIES_EYEOFTHESTORM, $EF
        ; $F8 - $FF, $00 - $2C are unused
        VRAM_TILEID Menu_MainMenu, TONY_LEVEL, Menu_MainMenu_TILEID_RINGS_LEVEL ; These two variables are aligned with RINGS because they share the same loading function
        VRAM_TILEID Menu_MainMenu, TONY_EXPRNCE, Menu_MainMenu_TILEID_RINGS_EXPRNCE ; These two variables are aligned with RINGS because they share the same loading function
        ; $35 - $74 unused

    ; Entry Menu Tiles (Item, Spells, Infused)
        VRAM_TILEID Menu_MainMenu, ENTRY_0, $AB
        VRAM_TILEID Menu_MainMenu, ENTRY_1, $B8
        VRAM_TILEID Menu_MainMenu, ENTRY_2, $C5
        VRAM_TILEID Menu_MainMenu, ENTRY_3, $D2
        VRAM_TILEID Menu_MainMenu, ENTRY_4, $DF
        ASSERT (Menu_MainMenu_VRAM_ENTRY_1 - Menu_MainMenu_VRAM_ENTRY_0) == (Menu_MainMenu_VRAM_ENTRY_2 - Menu_MainMenu_VRAM_ENTRY_1),"Interval between each entry must be identical"
        ASSERT (Menu_MainMenu_VRAM_ENTRY_1 - Menu_MainMenu_VRAM_ENTRY_0) == (Menu_MainMenu_VRAM_ENTRY_3 - Menu_MainMenu_VRAM_ENTRY_2),"Interval between each entry must be identical"
        ASSERT (Menu_MainMenu_VRAM_ENTRY_1 - Menu_MainMenu_VRAM_ENTRY_0) == (Menu_MainMenu_VRAM_ENTRY_4 - Menu_MainMenu_VRAM_ENTRY_3),"Interval between each entry must be identical"

    ; Glyph Menu Tiles:
        ; $AB - $FF unused
        VRAM_TILEID Menu_MainMenu, GLYPH_MAIN, $00
        ; $46 - $74 unused


    ; Ability Menu Tiles:
        VRAM_TILEID Menu_MainMenu, ABILITY_ABILITY__, $AB
        ; $B4 - $B8 unused
        VRAM_TILEID Menu_MainMenu, ABILITY_ABILITY0, $B9
        ; $C0 - $C7 unused
        VRAM_TILEID Menu_MainMenu, ABILITY_ABILITY1, $C8
        ; $CF - $D6 unused
        VRAM_TILEID Menu_MainMenu, ABILITY_ABILITY2, $D7
        ; $DE - $E5 unused
        VRAM_TILEID Menu_MainMenu, ABILITY_ABILITY3, $E6
        ; $ED - $FF, $00 - $74 unused
        ASSERT (Menu_MainMenu_VRAM_ABILITY_ABILITY1 - Menu_MainMenu_VRAM_ABILITY_ABILITY0) == (Menu_MainMenu_VRAM_ABILITY_ABILITY2 - Menu_MainMenu_VRAM_ABILITY_ABILITY1),"Interval between each ability must be identical"
        ASSERT (Menu_MainMenu_VRAM_ABILITY_ABILITY1 - Menu_MainMenu_VRAM_ABILITY_ABILITY0) == (Menu_MainMenu_VRAM_ABILITY_ABILITY3 - Menu_MainMenu_VRAM_ABILITY_ABILITY2),"Interval between each ability must be identical"



DEF Menu_MainMenu_TOPTILEMAP_WIDTH EQU $14
DEF Menu_MainMenu_TOPTILEMAP_HEIGHT EQU $0A

; Constants used in Menu_CursorTable_MainMenuABHandler
; Bug - These IDs are used in the same place as Menu_MainMenu_ID
; If the param is a Menu_MainMenu_ID, then wMenu_MainMenu_CurrentMenu will be updated
; If the param is greater than any of the Menu_MainMenu_IDs, then it is assumed to be a special command as listed right below.
; However, the developers got confused, and made sure that special commands are > len(Menu_CursorTable_MainMenu), which is a completely different table
; Therefore, all the special commands are > Enum_Menu_CursorTable_MainMenu_Ability, but the requirement should actually be that special commands > Menu_MainMenu_ID_INFUSED
DEF MenuFunc_MainMenu_ABCommand_PAGEUP EQU $2C
DEF MenuFunc_MainMenu_ABCommand_PAGEDOWN EQU $2D
DEF MenuFunc_MainMenu_ABCommand_GLYPHSETORCLEAR EQU $37
DEF MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE EQU $42
DEF MenuFunc_MainMenu_ABCommand_MAP EQU $4B ; Unused. In the alpha version, it was impossible to walk in the overworld. Also, in the menu, instead of a "InfusedList" option, there was a MAP option presumably to check the overworld map
DEF MenuFunc_MainMenu_ABCommand_CHOOSEOPTION EQU $4D
DEF MenuFunc_MainMenu_ABCommand_CANCELOPTION EQU $58
DEF MenuFunc_MainMenu_ABCommand_EXIT EQU $63
ASSERT MenuFunc_MainMenu_ABCommand_PAGEUP > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_PAGEDOWN > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_GLYPHSETORCLEAR > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_GLYPHTOGGLE > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_MAP > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_CHOOSEOPTION > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_CANCELOPTION > Menu_MainMenu_ID_INFUSED
ASSERT MenuFunc_MainMenu_ABCommand_EXIT > Menu_MainMenu_ID_INFUSED

; wMenu_MainMenu_Entry_PageEdge
DEF Enum_Menu_PAGEEDGE_NONE EQU $00   ; Both Up and Down arrow available
DEF Enum_Menu_PAGEEDGE_BOTTOM EQU $01 ; No Down arrow
DEF Enum_Menu_PAGEEDGE_TOP EQU $02    ; No Up arrow

; wMenu_MainMenu_NeedsScreenUpdate
DEF Enum_Menu_MainMenu_SCREENUPDATE_YES EQU $01
DEF Enum_Menu_MainMenu_SCREENUPDATE_NO EQU $00



MACRO Menu_MainMenu_SetTilemapHorizontal
    ; Sets X tiles in sequential horizontal order to a fixed tile id
    ; \1 = Tile ID
    ; \2 = Starting position
    ; \3 = Ending position (EXCLUSIVE)
    ld a, \1
    ld hl, \2
    ld c, (\3 - \2)
    .Loop\@:
        ld [hl+], a
        dec c
        jr nz, .Loop\@
ENDM


MACRO Menu_MainMenu_SetTilemapVertical
    ; Sets X tiles in sequential vertical order to a fixed tile id
    ; \1 = Tile ID
    ; \2 = Starting position
    ; \3 = Ending position (EXCLUSIVE)
    ld a, \1
    ld hl, \2
    ld c, (\3 - \2)/SCRN_VX_B
    ld de, SCRN_VX_B
    .Loop\@:
        ld [hl], a
        add hl, de
        dec c
        jr nz, .Loop\@
ENDM

MACRO Do_Menu_MainMenu_SetTilemapString
    ; Puts a string in the tileset into the tilemap
    ; Equivalent to the macro Menu_SequentialTilesToTilemap
    ; \1 = Tile id of the first character of the string
    ; \2 = Tilemap destination address
    ; \3 = String length
    ld a, \1
    ld hl, \2
    ld de, $0001 ; Delta destination address = +$0001
    ld c, \3
    call Menu_MainMenu_SetTilemapString
ENDM
