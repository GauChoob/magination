; Relic function handlers


    ; $6BD5
RelicCmd_Null::
    ret

RelicCmd_ArchaicLeaf::
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 10
    ret

RelicCmd_ArmorOrb::
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 12
    ret

RelicCmd_BagOfBones::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 08
    ret

RelicCmd_BarkThimble::
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 04
    ret

RelicCmd_ChanneledGem::
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 06
    ret

RelicCmd_CorfPearl::
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 15
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 15
    Do_BattleCmd_Stat_DecreaseCreatureStat Strength, 15
    ret

RelicCmd_CrimsonVoid::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 06
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 06
    Do_BattleCmd_Stat_IncreaseCreatureStat Luck, 20
    Do_BattleCmd_Stat_DecreaseCreatureStat Defence, 10
    Do_BattleCmd_Stat_DecreaseCreatureStat Resist, 10
    ret

RelicCmd_EarthsAura::
    BattleCmd_Stat_SetResist elementEarth
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 15
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 15
    Do_BattleCmd_Stat_DecreaseCreatureStat Speed, 25
    ret

RelicCmd_EndBringer::
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 25
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 25
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 25
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 25
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 25
    Do_BattleCmd_Stat_IncreaseCreatureStat Speed, 25

    ld a, Status_ERUPT
    ld hl, wBattle_Creature_Target.StatusActive
    BattleCmd_Set_Status
    ld hl, wBattle_Creature_Target.StatusPerm
    BattleCmd_Set_Status

    ; Set the erupt counter to 3
    ld hl, wBattle_Creature_Target.EruptMirrorCounter
    ld a, [hl]
    and %00001111
    or %00110000
    ld [hl], a
    ret

RelicCmd_EnergyGem::
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 6
    ret

RelicCmd_FlameAura::
    BattleCmd_Stat_SetResist elementFire
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 15
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 15
    Do_BattleCmd_Stat_DecreaseCreatureStat Defence, 15
    Do_BattleCmd_Stat_DecreaseCreatureStat Resist, 15
    ret

RelicCmd_FlameEssence1::
    BattleCmd_Stat_SetResist elementEarth
    BattleCmd_Stat_SetWeak elementShadow
    ret

RelicCmd_FlameEssence2::
    BattleCmd_Stat_SetAttackElem elementFire
    ret

RelicCmd_GemOfNaroom::
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 05
    ret

RelicCmd_GoldenClover::
    Do_BattleCmd_Stat_IncreaseCreatureStat Luck, 15
    ret

RelicCmd_GrailOfLife::
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 4
    ret

RelicCmd_HyrensClaw::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 05
    ret

RelicCmd_LeafEssence1::
    BattleCmd_Stat_SetResist elementShadow
    BattleCmd_Stat_SetWeak elementWater
    ret

RelicCmd_LeafEssence2::
    BattleCmd_Stat_SetAttackElem elementGrass
    ret

RelicCmd_LucentBelt::
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 10
    ret

RelicCmd_Maelstrom::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 12
    ret

RelicCmd_OmborsAmulet::
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 10
    ret

RelicCmd_PhantomWind::
    Do_BattleCmd_Stat_IncreaseCreatureStat Speed, 10
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 05
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 10

    ld hl, wBattle_Creature_Target.StatusPerm
    ld a, Status_HICCUPS
    BattleCmd_Set_Status
    ret

RelicCmd_PinchOfLife::
    BattleCmd_Stat_SetResist elementGrass
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 15
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 15
    Do_BattleCmd_Stat_DecreaseCreatureStat Strength, 15
    ret

RelicCmd_RabbageFoot::
    xor a
    ld [wBattle_Creature_Target.Luck], a
    ret

RelicCmd_RageStone::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 02
    Do_BattleCmd_Stat_IncreaseCreatureStat Speed, 02
    ret

RelicCmd_ShadowVeil::
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 20
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 20

    ld hl, wBattle_Creature_Target.StatusPerm
    ld a, Status_CONFUSED
    BattleCmd_Set_Status
    ret

RelicCmd_ShieldOrb::
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 15
    ret

RelicCmd_SkyEssence1::
    BattleCmd_Stat_SetResist elementWater
    BattleCmd_Stat_SetWeak elementEarth
    ret

RelicCmd_SkyEssence2::
    BattleCmd_Stat_SetAttackElem elementWind
    ret

RelicCmd_SpiceOfLife::
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 8
    ret

RelicCmd_StoneOfDoom::
    ld hl, wBattle_Creature_Target.StatusPerm
    ld a, Status_PLAGUE
    BattleCmd_Set_Status
    ret

RelicCmd_StoneEssence1::
    BattleCmd_Stat_SetResist elementWind
    BattleCmd_Stat_SetWeak elementFire
    ret

RelicCmd_StoneEssence2::
    BattleCmd_Stat_SetAttackElem elementEarth
    ret

RelicCmd_StoneOfLife::
    BattleCmd_Stat_IncreaseCreatureMaxEnergy 8

    ; Immunity to all statuses
    ld hl, wBattle_Creature_Target.StatusImmune
    ld a, %11111111
    BattleCmd_Set_Status
    ret

RelicCmd_SwordOfWind::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 15
    ret

RelicCmd_TideEssence1::
    BattleCmd_Stat_SetResist elementGrass
    BattleCmd_Stat_SetWeak elementWind
    ret

RelicCmd_TideEssence2::
    BattleCmd_Stat_SetAttackElem elementWater
    ret

RelicCmd_TitanRing::
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 08
    ret

RelicCmd_WaterOrb::
    BattleCmd_Stat_SetResist elementWater

    ld hl, wBattle_Creature_Target.StatusPerm
    ld a, Status_HICCUPS
    BattleCmd_Set_Status

    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 05
    Do_BattleCmd_Stat_IncreaseCreatureStat Strength, 05
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 05
    Do_BattleCmd_Stat_IncreaseCreatureStat Resist, 05
    Do_BattleCmd_Stat_DecreaseCreatureStat Speed, 05
    ret

RelicCmd_Wishbone::
    Do_BattleCmd_Stat_IncreaseCreatureStat Luck, 05
    ret