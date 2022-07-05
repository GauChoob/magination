
; Contains the relic table, as well as two functions to load the data from the relic table

    ; $68E1
Relic_GetDataFromAddress::
    ; Copies an entry from the Relic data table to a buffer (Relic_ROWSIZE bytes)
    ; Inputs:
    ;   [wBattle_CopyBuffer_Destination] points to the storage buffer
    ;   [wBattle_CopyBuffer_Source] points to the specific item in the Relics data table
    FGet16 bc, wBattle_CopyBuffer_Destination
    Get16 hl, wBattle_CopyBuffer_Source
    ld d, Relic_ROWSIZE
    .Loop:
        LdBCIHLI
        dec d
        jr nz, .Loop
    ret

    ; $68F8
Relic_GetDataFromID::
    ; Copies an entry from the Relic data table to a buffer (Relic_ROWSIZE bytes)
    ; Inputs:
    ;   [wBattle_CopyBuffer_Destination] points to the storage buffer
    ;   [wBattle_CopyBuffer_ListIndex] points to the specific item in the Relics data table
    ld a, [wBattle_CopyBuffer_ListIndex]
    ld c, a
    ld b, Relic_ROWSIZE
    call Math_Mult
    ld bc, Relic_Table
    add hl, bc
    Get16 bc, wBattle_CopyBuffer_Destination
    ld d, Relic_ROWSIZE
    .Loop:
        LdBCIHLI
        dec d
        jr nz, .Loop
    ret

    ; $6916
Relic_Table::
    ; Command0: Modifies source creature's battlecmd (see Battle_Helpers_ChooseBattleCmd) - could be used to change target or boost damage
    ; Command1: Modifies source creature's stats
    ; Command2: Modifies target creature
    RSRESET
    Relic_Struct Relic_NULL,            RelicCmd_Null, RelicCmd_Null,          RelicCmd_Null,          "             " ; null (empty) relic
    Relic_Struct Relic_ARCHAICLEAF,     RelicCmd_Null, RelicCmd_ArchaicLeaf,   RelicCmd_Null,          "❓Archaic Leaf"
    Relic_Struct Relic_ARMORORB,        RelicCmd_Null, RelicCmd_ArmorOrb,      RelicCmd_Null,          "❓Armor Orb   "
    Relic_Struct Relic_BAGOFBONES,      RelicCmd_Null, RelicCmd_BagOfBones,    RelicCmd_Null,          "❓Bag of Bones"
    Relic_Struct Relic_BARKTHIMBLE,     RelicCmd_Null, RelicCmd_BarkThimble,   RelicCmd_Null,          "❓Bark Thimble"
    Relic_Struct Relic_CHANNELEDGEM,    RelicCmd_Null, RelicCmd_ChanneledGem,  RelicCmd_Null,          "❓ChanneledGem"
    Relic_Struct Relic_CORFPEARL,       RelicCmd_Null, RelicCmd_CorfPearl,     RelicCmd_Null,          "❓Corf Pearl  "
    Relic_Struct Relic_CRIMSONVOID,     RelicCmd_Null, RelicCmd_CrimsonVoid,   RelicCmd_Null,          "❓Crimson Void"
    Relic_Struct Relic_EARTHSAURA,      RelicCmd_Null, RelicCmd_EarthsAura,    RelicCmd_Null,          "❓Earth's Aura"
    Relic_Struct Relic_ENDBRINGER,      RelicCmd_Null, RelicCmd_EndBringer,    RelicCmd_Null,          "❓End Bringer "
    Relic_Struct Relic_ENERGYGEM,       RelicCmd_Null, RelicCmd_EnergyGem,     RelicCmd_Null,          "❓Energy Gem  "
    Relic_Struct Relic_FLAMEAURA,       RelicCmd_Null, RelicCmd_FlameAura,     RelicCmd_Null,          "❓Flame Aura  "
    Relic_Struct Relic_FLAMEESSENCE,    RelicCmd_Null, RelicCmd_FlameEssence1, RelicCmd_FlameEssence2, "❓FlameEssence"
    Relic_Struct Relic_GEMOFNAROOM,     RelicCmd_Null, RelicCmd_GemOfNaroom,   RelicCmd_Null,          "❓GemOfNaroom "
    Relic_Struct Relic_GOLDENCLOVER,    RelicCmd_Null, RelicCmd_GoldenClover,  RelicCmd_Null,          "❓GoldenClover"
    Relic_Struct Relic_GRAILOFLIFE,     RelicCmd_Null, RelicCmd_GrailOfLife,   RelicCmd_Null,          "❓GrailOfLife "
    Relic_Struct Relic_HYRENSCLAW,      RelicCmd_Null, RelicCmd_HyrensClaw,    RelicCmd_Null,          "❓Hyren's Claw"
    Relic_Struct Relic_LEAFESSENCE,     RelicCmd_Null, RelicCmd_LeafEssence1,  RelicCmd_LeafEssence2,  "❓Leaf Essence"
    Relic_Struct Relic_LUCENTBELT,      RelicCmd_Null, RelicCmd_LucentBelt,    RelicCmd_Null,          "❓Lucent Belt "
    Relic_Struct Relic_MAELSTROM,       RelicCmd_Null, RelicCmd_Maelstrom,     RelicCmd_Null,          "❓Maelstrom   "
    Relic_Struct Relic_OMBORSAMULET,    RelicCmd_Null, RelicCmd_OmborsAmulet,  RelicCmd_Null,          "❓OmborsAmulet"
    Relic_Struct Relic_PHANTOMWIND,     RelicCmd_Null, RelicCmd_PhantomWind,   RelicCmd_Null,          "❓Phantom Wind"
    Relic_Struct Relic_PINCHOFLIFE,     RelicCmd_Null, RelicCmd_PinchOfLife,   RelicCmd_Null,          "❓PinchOfLife "
    Relic_Struct Relic_RABBAGEFOOT,     RelicCmd_Null, RelicCmd_RabbageFoot,   RelicCmd_Null,          "❓Rabbage Foot"
    Relic_Struct Relic_RAGESTONE,       RelicCmd_Null, RelicCmd_RageStone,     RelicCmd_Null,          "❓Rage Stone  "
    Relic_Struct Relic_SHADOWVEIL,      RelicCmd_Null, RelicCmd_ShadowVeil,    RelicCmd_Null,          "❓Shadow Veil "
    Relic_Struct Relic_SHIELDORB,       RelicCmd_Null, RelicCmd_ShieldOrb,     RelicCmd_Null,          "❓Shield Orb  "
    Relic_Struct Relic_SKYESSENCE,      RelicCmd_Null, RelicCmd_SkyEssence1,   RelicCmd_SkyEssence2,   "❓Sky Essence "
    Relic_Struct Relic_SPICEOFLIFE,     RelicCmd_Null, RelicCmd_SpiceOfLife,   RelicCmd_Null,          "❓SpiceOfLife "
    Relic_Struct Relic_STONEESSENCE,    RelicCmd_Null, RelicCmd_StoneEssence1, RelicCmd_StoneEssence2, "❓StoneEssence"
    Relic_Struct Relic_STONEOFDOOM,     RelicCmd_Null, RelicCmd_StoneOfDoom,   RelicCmd_Null,          "❓StoneOfDoom "
    Relic_Struct Relic_STONEOFLIFE,     RelicCmd_Null, RelicCmd_StoneOfLife,   RelicCmd_Null,          "❓StoneOfLife "
    Relic_Struct Relic_SWORDOFWIND,     RelicCmd_Null, RelicCmd_SwordOfWind,   RelicCmd_Null,          "❓SwordOfWind "
    Relic_Struct Relic_TIDEESSENCE,     RelicCmd_Null, RelicCmd_TideEssence1,  RelicCmd_TideEssence2,  "❓Tide Essence"
    Relic_Struct Relic_TITANRING,       RelicCmd_Null, RelicCmd_TitanRing,     RelicCmd_Null,          "❓Titan Ring  "
    Relic_Struct Relic_WATERORB,        RelicCmd_Null, RelicCmd_WaterOrb,      RelicCmd_Null,          "❓Water Orb   "
    Relic_Struct Relic_WISHBONE,        RelicCmd_Null, RelicCmd_Wishbone,      RelicCmd_Null,          "❓Wishbone    "
    ; Only $25 out of a possible total of $FF relics have been defined