SECTION "XRAM Gamestate", SRAM[$A000], BANK[$00]
; This represents bank $00 and $02 (two alternate savefiles)
; Exceptionally, xBattery_SavedSavefileBaseBank, xBattery_Verify0 and xBattery_Verify1 are always read from bank $00 and copied to $02
; The rest of the variables are read from bank $00 or $02 depending on the current savefile in use

    ;ds $A000 - @
xBattery_SavedSavefileBaseBank::
    ; There are 4 banks of XRAM, representing 2 savefile (saved game and current game)
    ; Each savefile takes 2 banks of XRAM
    ; This function denotes the player's backup savefile by specifying the base bank ($00 or $02)
    ; i.e. this is the savefile that will only be overwritten when you save on the overworld or in an inn
    ; $00 -> Banks $00 + $01 representing savefile 0
    ; $01 -> Banks $02 + $03 representing savefile 1
    ; Exceptionally, this variable is not associated with either savefile. The value is always checked in bank $00, although it is copied over to bank $02
    ds 1

    ;ds $A001 - @
xBattery_Unused::
    ; This is supposed to be the upper byte of xBattery_SavefileBaseBank, but in practice xBattery_SavefileBaseBank is always treated as an 8-bit value,
    ; so this variable is unused
    ds 1

    ;ds $A002 - @
xBattery_Verify0::
    ; The contents must be set to Battery_VerificationString, or else the savefile will be treated as corrupted
    ; xBattery_Verify1 is also checked
    ; Exceptionally, this variable is not associated with either savefile. The value is always checked in bank $00, although it is copied to and fro with bank $02
    ds Battery_VerificationString_LENGTH

    ;ds A012 - @
xLoad_ScriptBank::
    ds 1
    ;ds $A013 - @
xLoad_ScriptFrame::
    ds 2
    ;ds $A015 - @
xLoad_HeroXTile::
    ds 1
    ;ds $A016 - @
xLoad_HeroYTile::
    ds 1
    ;ds $A017 - @
xGameSaved::
    ; Set to 1 upon the first save of the game
    ; This opens the Continue door and provides a overwrite warning when creating a new game
    ds 1

    ;ds $A018 - @
xNewGamePlus_State::
    ; 1 -> ?
    ; 2 -> NewGame+ door is open
    ds 1

; NEW GAME PLUS PRESERVED ;
    ;ds $A019 - @
xGamestate_RAM_NEW_GAME_START:: ; New Game erases starting from here
xInventory_Relics::
    ; relic id Relic_NULL ($00) is an empty relic. The hero shouldn't be able to have any (the quantity should always be 0), but a creature can have an empty relic slot
    ds $FF
    .End

    ;ds $A118 - @
DEF xInventory_Rings_LENGTH EQU $0A
DEF xInventory_Rings_NORING EQU $FF
xInventory_Rings::
    ; xInventory_Rings_NORING if no ring
    ; Otherwise points to a creature id in "XRAM Creatures"
    ds xInventory_Rings_LENGTH
    .End

    ;ds $A122 - @
xRingCount::
    ; Total number of owned rings.
    ; Used to make sure we don't pass Creature_MAXRINGS
    ds 1

; NEW GAME PLUS PRESERVED END ;

    ;ds $A123 - @
xGamestate_RAM_NEW_GAME_PLUS_START:: ; New Game Plus erases starting from here
xGameCount::
    ; This is the variable that tracks overall quest progression
    ; This is used for choosing the start screen background
    ds 2 ; TODO confirm if this is really length 2

DEF xScript_GAMESTATESIZE EQU $7F ; The number of bytes in xScript_SaveBits and xScript_SaveVars that are reset to $00 when xGameCount is updated

    ;ds $A125 - @
xScript_SaveBits::
    ; Bytes reserved for use by scripts
    ; The first $7F bytes are reset to $00 when xGameCount is updated
    ds $FF
    ;Unknown size, but I assume the remaining $80 bytes are also savebits. TODO

    ;ds $A224 - @
xScript_SaveVars::
    ; Bytes reserved for use by scripts
    ; The first $7F bytes are reset to $00 when xGameCount is updated
    ds $FF

    ;ds $A323 - @
xScript_Treasure::
    ds $80

    ;ds $A3A3 - @
xHeroAbilities:: ; 0 = Nothing. 5 = The Eye of the Storm
    ds 1
    ;ds $A3A4 - @
xGlyphState:: ; 0 -> Glyph disabled. 1 -> 0 stones. 6 -> 5 stones
    ds 1
    ;ds $A3A5 - @
xMoney::
    ds 2
    ;ds $A3A7 - @
xInventory_Items::
    ; item id $00 is an empty item. The hero shouldn't be able to have any (the quantity should always be 0)
    ds $FF
    .End
    ;ds $A4A6 - @
xInventory_Infused::
    ; There is no special $00 infused id. $00 refers to Abaquist
    ds $FF
    .End
    ;ds $A5A5 - @
xInventory_Spells::
    ; spell id $00 is an empty spell. This should always be 0 for the hero
    ds $FF
    .End
ASSERT (xInventory_Spells.End - xInventory_Spells) == (xInventory_Infused.End - xInventory_Infused),"All quantity tables must be the same size"
ASSERT (xInventory_Spells.End - xInventory_Spells) == (xInventory_Items.End - xInventory_Items),"All quantity tables must be the same size"
ASSERT (xInventory_Spells.End - xInventory_Spells) == (xInventory_Relics.End - xInventory_Relics),"All quantity tables must be the same size"
    ; $A6A4
xGamestate_RAM_NEW_GAME_END::

    ; Pad until the very end of the bank
    ds $C000 - @ - Battery_VerificationString_LENGTH
xBattery_Verify1::
    ; The contents must be set to the inverse of Battery_VerificationString, or else the savefile will be treated as corrupted
    ; xBattery_Verify0 is also checked
    ; Exceptionally, this variable is not associated with either savefile. The value is always checked in bank $00, although it is copied to and fro with to bank $02
    ds Battery_VerificationString_LENGTH

SECTION "XRAM Creatures", SRAM[$A000], BANK[$01]
; This represents bank $01 and $03 (two alternate savefiles)
; The variables are read from bank $01 or $03 depending on the current savefile in use

DEF Creature_Struct_OFFSET_ID EQU $00
DEF Creature_Struct_OFFSET_Type EQU $01
DEF Creature_Struct_OFFSET_Level EQU $02
DEF Creature_Struct_OFFSET_Experience EQU $03
DEF Creature_Struct_OFFSET_CurEnergy EQU $05
DEF Creature_Struct_OFFSET_MaxEnergy EQU $07
DEF Creature_Struct_OFFSET_Strength EQU $09
DEF Creature_Struct_OFFSET_Skill EQU $0A
DEF Creature_Struct_OFFSET_Speed EQU $0B
DEF Creature_Struct_OFFSET_Defence EQU $0C
DEF Creature_Struct_OFFSET_Resist EQU $0D
DEF Creature_Struct_OFFSET_Luck EQU $0E
DEF Creature_Struct_OFFSET_EnergyUp EQU $0F
DEF Creature_Struct_OFFSET_ElementResist EQU $10
DEF Creature_Struct_OFFSET_ElementWeak EQU $11
DEF Creature_Struct_OFFSET_StatusImmune EQU $12
DEF Creature_Struct_OFFSET_StatusActive EQU $13
DEF Creature_Struct_OFFSET_StatusPerm EQU $14
DEF Creature_Struct_OFFSET_AI EQU $15
DEF Creature_Struct_OFFSET_Ability0 EQU $16
DEF Creature_Struct_OFFSET_Ability1 EQU $18
DEF Creature_Struct_OFFSET_Ability2 EQU $1A
DEF Creature_Struct_OFFSET_Ability3 EQU $1C
DEF Creature_Struct_OFFSET_AbilityUnlock0 EQU $1E
DEF Creature_Struct_OFFSET_AbilityUnlock1 EQU $1F
DEF Creature_Struct_OFFSET_AbilityUnlock2 EQU $20
DEF Creature_Struct_OFFSET_AbilityUnlock3 EQU $21
DEF Creature_Struct_OFFSET_Relic0 EQU $22
DEF Creature_Struct_OFFSET_Relic1 EQU $23
DEF Creature_Struct_OFFSET_Other EQU $24
DEF Creature_Struct_OFFSET_SIZE EQU $25
DEF Creature_Struct_OFFSET_ARRAYLENGTH EQU $D0

DEF Creature_SIZE EQU $25
DEF Creature_Ability_UNLOCKED EQU $FF
DEF Creature_MAX_MAXENERGY EQU 250
DEF Creature_MAGI_MAX_MAXENERGY EQU 999
DEF Creature_MAXRINGS EQU $D0

MACRO Creature_Struct
    .ID:
        ; Identity of the creature (table ID)
        ds 1
    .Type:
        ; Unknown, but is related to the level-up function and possible animite chance
        ds 1
    .Level:
        ; Current level
        ds 1
    .Experience:
        ; BIG-ENDIAN VALUE
        ds 2
    .CurEnergy:
        ; BIG-ENDIAN VALUE
        ds 2
    .MaxEnergy:
        ; BIG-ENDIAN VALUE
        ds 2
    .Strength:
        ; Pre-relic/boost stat value
        ds 1
    .Skill:
        ds 1
    .Speed:
        ds 1
    .Defence:
        ds 1
    .Resist:
        ds 1
    .Luck:
        ds 1
    .EnergyUp:
        ; Bonus energy gained per level up
        ds 1
    .ElementResist:
        ; Creature's elemental resistances
        ; elementNone         EQU $00
        ; elementEarth        EQU $01     ;Strong vs Arderial. Weak vs Orothe
        ; elementFire         EQU $02     ;Strong vs Orothe. Weak vs Arderial
        ; elementWind         EQU $04     ;Strong vs Cald. Weak vs Underneath
        ; elementWater        EQU $08     ;Strong vs Underneath. Weak vs Cald
        ; elementGrass        EQU $10     ;Strong vs Core
        ; elementShadow       EQU $20     ;Strong vs Naroom
        ; elementElectrical   EQU $40     ;No interactions
        ds 1
    .ElementWeak:
        ; Creature's elemental weaknesses
        ds 1
    .StatusImmune:
        ; DEF Status_PLAGUE EQU $01
        ; DEF Status_STONE EQU $02
        ; DEF Status_HICCUPS EQU $04
        ; DEF Status_ERUPT EQU $08
        ; DEF Status_HIDDEN EQU $10
        ; DEF Status_MIRROR EQU $20
        ; DEF Status_CONFUSED EQU $40
        ; DEF Status_DIVERT EQU $80
        ds 1
    .StatusActive:
        ds 1
    .StatusPerm:
        ds 1
    .AI:
        ; TODO
        ds 1
    .Ability0:
        ; An address pointing directly to the table entry within the abilities table
        ds 2
    .Ability1:
        ds 2
    .Ability2:
        ds 2
    .Ability3:
        ds 2
    .AbilityUnlock0:
        ; The level required to unlock the ability, or $FF if the ability is already unlocked. The first ability must always be unlocked or else the game will crash
        ds 1
    .AbilityUnlock1:
        ds 1
    .AbilityUnlock2:
        ds 1
    .AbilityUnlock3:
        ds 1
    .Relic0:
        ; Relic id
        ds 1
    .Relic1:
        ds 1
    .Other:
        ; TODO - I think this is an unused spare byte? Maybe used for Defend?
        ds 1
ENDM

    ; ds $A000 - @
xCreature_RAM::
    ; $D1 sequential Creature_Structs
    ; ID $00 = Hero
    ; ID $01 - $D0 = Dream Creatures that the hero can have
xCreature_00_Hero::
    Creature_Struct
    ; ds $A025 - @
FOR i, $01, $D1
xCreature_{02X:i}::
    Creature_Struct
ENDR
    ; $BE35
xCreature_RAM_End::