SECTION "WRAM1", WRAMX[$D000], BANK[1]

    ds $DF00 - @
    INCLUDE "musyx/wram_1_musyx.asm"


SECTION "WRAM2", WRAMX[$D000], BANK[2]

    ALIGN 8,0 ;Lower address of wPattern must be $00
    ;ds $D000 - @
wPattern::
    ; The total size is $800, and defines $100 metatiles
    ; First, at $D000 you have (4 bytes)*$100 of tile numbers
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ; Next, at $D400, you ave (4 bytes)*$100 of tile attributes
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ds $400
    ds $400
    ; Unused $800

SECTION "WRAM3", WRAMX[$D000], BANK[3]

    ;ds $D000 - @
wMetatilemap::
    ; This contains a tilemap of metatiles
    ds $1000

SECTION "WRAM4", WRAMX[$D000], BANK[4]

UNION
    ;ds $D000 - @
wMaskMetatilemap::
    ; An alternative Metatilemap that contains alternative tiles (e.g. open doors)
    ; These can be copied over to wMetatilemap as needed
    ds $1000
NEXTU
    ;ds $D000 - @
wBackgroundCharsBBuffer::
    ; This is stored to a buffer and retrieved when opening/closing the Start Menu
    ; All the data from VRAM0:9000 is copied here temporarily
    ds $800
    ;ds $D800 - @
wBackgroundCharsCBuffer::
    ; This is stored to a buffer and retrieved when opening/closing the Start Menu
    ; All the data from VRAM1:9000 is copied here temporarily
    ds $800
ENDU

SECTION "WRAM5", WRAMX[$D000], BANK[5]
    ;ds $D000 - @
ALIGN 8,0
wCollisionMap::
    ; This contains a map of collision data for the map
    ds $1000

SECTION "WRAM6", WRAMX[$D000], BANK[6]

UNION
    ;ds $D000 - @
wBattery_CopyBuffer::
    ; To copy data from one XRAM bank to another, $1000 bytes of data is temporarily stored here
wUnpack_Buffer::
    ; When tilemap/attrmaps are decompressed, they are stored in this buffer
wScript_Buffer::
    ; A portion of script can be copied to WRAM and run from WRAM
wMaskCollisionMap::
    ; An alternative Collision that contains alternative tiles (e.g. open doors)
    ; These can be copied over to wCollisionMap as needed
wCardscene_NPCSpritesBackgroundCharsABuffer::
    ; A buffer used to store vNPCSpritesChars and vBackgroundCharsA so that it can
    ; be restored later
    ds $1000
NEXTU
    ASSERT wScript_Buffer == wMenu_MusicBuffer,"wScript_Buffer and wMenu_MusicBuffer must have the same address!"
    ;ds $D000 - @
wMenu_MusicBuffer::
    .Entries:
    ds 1
    .RawData:
        DEF MUSICBUFFER_ID EQU $00
        DEF MUSICBUFFER_NAME EQU $01
        DEF MUSICBUFFER_STRINGLEN EQU $0D
        DEF MUSICBUFFER_ROWSIZE EQU $0E
        ds MUSICBUFFER_ROWSIZE*$25

ENDU

SECTION "WRAM BATTLE", WRAMX[$D000], BANK[7]

RSRESET
DEF BATTLE_CREATURE_TEAM RB 1
DEF BATTLE_CREATURE_ERUPTMIRRORCOUNTER RB 1
DEF BATTLE_CREATURE_ID RB 1
DEF BATTLE_CREATURE_TYPE RB 1
DEF BATTLE_CREATURE_LEVEL RB 1
DEF BATTLE_CREATURE_EXPERIENCE RB 2
DEF BATTLE_CREATURE_CURENERGY RB 2
DEF BATTLE_CREATURE_MAXENERGY RB 2
DEF BATTLE_CREATURE_STRENGTH RB 1 ; 0B
DEF BATTLE_CREATURE_SKILL RB 1
DEF BATTLE_CREATURE_SPEED RB 1
DEF BATTLE_CREATURE_DEFENCE RB 1
DEF BATTLE_CREATURE_RESIST RB 1
DEF BATTLE_CREATURE_LUCK RB 1
DEF BATTLE_CREATURE_ENERGYUP RB 1
DEF BATTLE_CREATURE_ELEMENTRESIST RB 1
DEF BATTLE_CREATURE_ELEMENTWEAK RB 1
DEF BATTLE_CREATURE_STATUSIMMUNE RB 1
DEF BATTLE_CREATURE_STATUSACTIVE RB 1
DEF BATTLE_CREATURE_STATUSPERM RB 1
DEF BATTLE_CREATURE_AI RB 1
DEF BATTLE_CREATURE_ABILITY0 RB 2
DEF BATTLE_CREATURE_ABILITY1 RB 2
DEF BATTLE_CREATURE_ABILITY2 RB 2
DEF BATTLE_CREATURE_ABILITY3 RB 2
DEF BATTLE_CREATURE_ABILITYUNLOCK0 RB 1
DEF BATTLE_CREATURE_ABILITYUNLOCK1 RB 1
DEF BATTLE_CREATURE_ABILITYUNLOCK2 RB 1
DEF BATTLE_CREATURE_ABILITYUNLOCK3 RB 1
DEF BATTLE_CREATURE_RELIC0 RB 1
DEF BATTLE_CREATURE_RELIC1 RB 1
DEF BATTLE_CREATURE_OTHER RB 1
DEF BATTLE_CREATURE_COMMAND_FUNCTION RB 2
DEF BATTLE_CREATURE_COMMAND_COST RB 1
DEF BATTLE_CREATURE_COMMAND_TARGET RB 1
DEF BATTLE_CREATURE_COMMAND_MENU RB 1
DEF BATTLE_CREATURE_COMMAND_RATING RB 1
DEF BATTLE_CREATURE_COMMAND_ELEMENTAL RB 1
DEF BATTLE_CREATURE_COMMAND_SUMMON RB 0 ;2
DEF BATTLE_CREATURE_COMMAND_ITEM RB 0 ;2
DEF BATTLE_CREATURE_COMMAND_MAXDAMAGE RB 1
DEF BATTLE_CREATURE_COMMAND_CHANCE RB 1
DEF BATTLE_CREATURE_COMMAND_NAME RB 7
DEF BATTLE_CREATURE_SIZE RB 0

RSRESET
DEF BATTLE_COMMAND_FUNCTION RB 2
DEF BATTLE_COMMAND_COST RB 1
DEF BATTLE_COMMAND_TARGET RB 1
DEF BATTLE_COMMAND_MENU RB 1
DEF BATTLE_COMMAND_RATING RB 1
DEF BATTLE_COMMAND_ELEMENTAL RB 1
DEF BATTLE_COMMAND_SUMMON RB 0 ;2
DEF BATTLE_COMMAND_ITEM RB 0 ;2
DEF BATTLE_COMMAND_MAXDAMAGE RB 1
DEF BATTLE_COMMAND_CHANCE RB 1
DEF BATTLE_COMMAND_NAME RB 7
DEF BATTLE_COMMAND_SIZE RB 0


MACRO Battle_Creature_BattleCmd_Struct
    ; a BattleCmd_Struct copied into a battle creature struct
    .BattleCmd:
    .BattleCmd_Function:
        ds 2
    .BattleCmd_Cost:
        ds 1
    .BattleCmd_Target:
        ; Initially contains a target mode e.g. Battle_TARGET_ME
        ; Later changed to be a target e.g. 0-9 (Hero to Magi)
        ds 1
    .BattleCmd_Menu:
        ; Whether or not this Command contains a Menu
        ds 1
    .BattleCmd_Rating:
        ; Damage multiplier
        ds 1
    .BattleCmd_Elemental:
        ds 1
    UNION
        .BattleCmd_MenuChoice:
            ; Item/Spell to use, or Creature to summon (pointer to Row/Struct)
            ds 2
    NEXTU
        .BattleCmd_MaxDamage:
            ; Max damage
            ds 1
        .BattleCmd_Chance:
            ; Chance for successful hit
            ds 1
    ENDU
    .BattleCmd_Name:
        ds 7
ENDM

MACRO Battle_Creature_Struct
    .Team:
        ; Which magi summoned this creature
        ds 1
    .EruptMirrorCounter:
        ; Upper nibble: Erupt counter
        ; Lower nibble: Mirror counter
        ds 1
    Creature_Struct
    Battle_Creature_BattleCmd_Struct
    .End
ENDM

    ds $D000 - @
wBattle_Sort_SpeedSlots::
    ; The temporary speed value of the 8 creatures
    ds 8
    .End
    ASSERT HIGH(wBattle_Sort_SpeedSlots) == HIGH(wBattle_Sort_SpeedSlots.End),"wBattle_Sort_SpeedSlots must be aligned!"

    ds $D008 - @
wBattle_Sort_IndexSlots::
    ; The index of the 8 creatures, from 1 to 8 (0 = no creature)
    ds 8
    .End
    ASSERT HIGH(wBattle_Sort_IndexSlots) == HIGH(wBattle_Sort_IndexSlots.End),"wBattle_Sort_IndexSlots must be aligned!"
    ;ds $D010 - @
wBattle_Sort_TempSwapIndex::
    ; Temporary index being swapped
    ds 1


    ds $D015 - @
wBattle_Sort_CurSpeed::
    ; Temporary variable containing Speed stat
    ds 1
    ;ds $D016 - @
wBattle_ExitCode::
    ; See battle_equ.asm
    ds 1

    ds $D01B - @
wBattle_Menu_BattleCmdPointers::
    ; Contains the address of the ability's battlecmd struct
    .Ability0:
        ds 2
    .Ability1:
        ds 2
    .Ability2:
        ds 2
    .Ability3:
        ds 2
    ;ds $D023 - @
wBattle_Menu_EnergyString::
    ; String: "XXX:XXX" ("energy:maxenergy")
    .CurEnergy:
        ds 3
    .Colon:
        ds 1
    .MaxEnergy:
        ds 3
    ;ds $D02A - @
wBattle_Menu_CommandNameString::
    ; Contains the strings in the menu for the 5 abilities
    .Cmd0:
        ds BATTLECMD_STRUCT_NAMESIZE ; Fight/Focus
    .Cmd1:
        ds BATTLECMD_STRUCT_NAMESIZE ; Ability0
    .Cmd2:
        ds BATTLECMD_STRUCT_NAMESIZE ; Ability1
    .Cmd3:
        ds BATTLECMD_STRUCT_NAMESIZE ; Ability2
    .Cmd4:
        ds BATTLECMD_STRUCT_NAMESIZE ; Ability3
    .Temp:
        ds BATTLECMD_STRUCT_NAMESIZE ; Buffer used to swap the position of Cmd0 and Cmd1 for the hero, since Focus should be the second option
    ;ds $D054 - @
wBattle_Menu_CommandCostString::
    ; Contains the strings in the menu for the costs of the 5 abilities/options
    .Cmd0:
        ; Not used for creature attacks, since Fight/Defend shows wBattle_Menu_EnergyString instead
        ; Used for Summon menu and TODO probably Spell/Item menus
        ds 3
    .Cmd1:
        ds 3
    .Cmd2:
        ds 3
    .Cmd3:
        ds 3
    .Cmd4:
        ds 3
    .End:
    ;ds $D063 - @
wBattle_SelectedRingIndex::
    ; An offset to target one of the rings in xInventory_Rings
    ; Does the same thing as wMenu_SelectedRingIndex
    ds 1

    ds $D06D - @
wBattle_TurnsElapsed::
    ; Number of turns elapsed from the start of the battle
    ds 2
    ;ds $D06F - @
wBattle_SummonRingIndex::
    ; An offset to target one of the rings in xInventory_Rings
    ; The ring that is going to be summoned
    ds 1

    ds $D074 - @
wBattle_TempCounter::
    ; Generic loop counter
    ds 1

    ds $D076 - @
wBattle_DamageOverrideFlag::
    ; Override the normal calculated damage
    ; 0 = don't override
    ; 1 = override
    ; 2 = ?no damage todo
    ds 1
    ;ds $D077 - @
wBattle_DamageOverrideMagnitude::
    ; If wBattle_DamageOverrideFlag is $01,
    ; The amount of damage to deal
    ds 1

    ds $D091 - @
wBattle_CreatureSlots::
    ; TODO Seems to be non-zero if a person/creature exists in the corresponding slot
    .Hero:
        ds 1
    .Ally0:
        ds 1
    .Ally1:
        ds 1
    .Ally2:
        ds 1
    .Ally3:
        ds 1
    .Enemy0:
        ds 1
    .Enemy1:
        ds 1
    .Enemy2:
        ds 1
    .Enemy3:
        ds 1
    .Magi:
        ds 1

    ;ds $D09B - @
wBattle_CursorTableValidIDs::
    ; Used in the same way as wMenu_Generic_CursorTableValidIDs
    ; nz = valid menu option
    ds 7 ; TODO probably goes even higher as high as $7 or $14

    ds $D0AF - @
wBattle_CurCreature_ValidBattleCmd:
    ds 1

    ds $D0B0 - @
wBattle_TargetMode::
    ; todo
    ds 1
    ;ds $D0B1 - @
wBattle_CurCreature_Slot::
    ; Offset of wBattle_CreatureSlots pointing to .Hero, .Ally, .Enemy or .Magi
    ; bit 7 = non-zero if owned by enemy
    ds 1

    ds $D0B3 - @
wBattle_CurCreature_CardTileID::
    ; The tileid of the creature's card in the tileset
    ; Used for allied creatures only to draw the card in the cmd menu
    ds 1

    ds $D0D3 - @
wBattle_RunEnabled::
    ; Set to 1 if Tony is allowed to run from the battle (i.e. there is no enemy magi), else set to 0
    ds 1
    ;ds $D0D4 - @
wBattle_CurCreature_FightDef::
    ; Temporary variable
    ; .Other is copied into this variable
    ; z -> Fight; nz -> Defend
    ds 1

    ds $D0D7 - @
wBattle_DisableLoot::
    ; Automatically reset at the start of battle. Set to 1 in Salafy battles to disable loot gains
    ds 1
    ;ds $D0D8 - @
wBattle_NotEnoughEnergy::
    ; Set to 1 when a BattleCmd is rejected by Battle_Helpers_CheckValidTarget because the creature does not have enough energy
    ds 1

    ;ds $D0D9 - @
wBattle_Creature_Current::
    Battle_Creature_Struct

    ;ds $D110 - @
wBattle_Creature_Target::
    Battle_Creature_Struct

    ;ds $D147 - @
wBattle_Creature_Hero::
    Battle_Creature_Struct
    ;ds $D17E - @
wBattle_Creature_Ally0::
    Battle_Creature_Struct
    ;ds $D1B5 - @
wBattle_Creature_Ally1::
    Battle_Creature_Struct
    ;ds $D1EC - @
wBattle_Creature_Ally2::
    Battle_Creature_Struct
    ;ds $D223 - @
wBattle_Creature_Ally3::
    Battle_Creature_Struct
    ;ds $D25A - @
wBattle_Creature_Enemy0::
    Battle_Creature_Struct
    ;ds $D291 - @
wBattle_Creature_Enemy1::
    Battle_Creature_Struct
    ;ds $D2C8 - @
wBattle_Creature_Enemy2::
    Battle_Creature_Struct
    ;ds $D2FF - @
wBattle_Creature_Enemy3::
    Battle_Creature_Struct
    ;ds $D336 - @
wBattle_Creature_Magi::
    Battle_Creature_Struct

    ;ds $D36D - @
wBattle_Level::
    ; Difficulty level of the Battle, used in calculating experience gains
    ds 1

    ds $D37A - @
wBattle_UsedRings::
    ; Indicates whether the rings have been used or not previously
    DEF BATTLE_USEDRINGS_NEVERUSED EQU $00 ; Has never been summoned this battle
    DEF BATTLE_USEDRINGS_DEAD EQU $01      ; Was summoned but is not longer on the field
    DEF BATTLE_USEDRINGS_ALIVE EQU $02     ; Summoned on the field
    ds xInventory_Rings_LENGTH

    ds $D391 - @
wBattle_MagiCreatureID::
    ; The creature ID of the enemy magi
    ds 1

    ds $D392 - @
UNION
wBattle_Buffer::
    ; Data copied from a ROMX script frame into a temporary buffer
    ; So we can access the data from a different bank
    ds $30
.End
NEXTU
    ;ds $D392 - @
wBattle_Buffer_CreatureSlot::
    ; Target slot, e.g. BATTLE_SLOT_HERO
    ds 1
    ;ds $D393 - @
wBattle_ItemSpellBattleCmdAddress::
    ds 2
    ;ds $D395 - @
wBattle_TargetAI::
    ; The desired target
    ds 1
ENDU

    ;ds $D3C2 - @
wBattle_ScriptBusy::
    ; 0 when Cmd_Battle_NextTurn or Cmd_Battle_Auto is called
    ; 1 when the battle script is running
    ds 1
    
    ds $D3C4 - @
wBattleAI_Target_CreatureEnergyReport::
    ; A table of 4 creature's energies, used to compare and find the strongest/weakest
    ds 4*2
    ;ds $D3CC - @
wBattleAI_Target_CurrentBestCreature::
    ; Temporary variable marking the best target creature id (0-3)
    ds 1