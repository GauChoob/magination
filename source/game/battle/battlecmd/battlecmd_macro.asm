
MACRO BattleCmd_Struct
    DEF \1 RB 1
    DEF Label\@ EQUS "\1"

    .{Label\@}:

    .{Label\@}_Function:
        dw \2
    .{Label\@}_Cost:
        db \3
    .{Label\@}_Target:
        db \4
    .{Label\@}_MenuID:
        db \5
    .{Label\@}_Rating:
        db \6
    .{Label\@}_Elemental:
        db \7
    .{Label\@}_Multiplier:
        db \8
    .{Label\@}_Accuracy:
        db \9
    .{Label\@}_Name:
        db \<10>
        ASSERT STRLEN(\<10>) == BATTLECMD_STRUCT_NAMESIZE
ENDM

MACRO Do_BattleCmd_Stat_IncreaseCreatureStat
    ; Arguments
    ;   \1 = Stat label
    ;   \2 = Magnitude
    ld hl, wBattle_Creature_Target
    ld bc, (wBattle_Creature_Target.\1 - wBattle_Creature_Target)
    ld e, 99
    ld a, \2
    call BattleCmd_Stat_IncreaseCreatureStat
ENDM

MACRO Do_BattleCmd_Stat_DecreaseCreatureStat
    ; Arguments
    ;   \1 = Stat label
    ;   \2 = Magnitude (positive value)
    ld hl, wBattle_Creature_Target
    ld bc, (wBattle_Creature_Target.\1 - wBattle_Creature_Target)
    ld a, \2
    call BattleCmd_Stat_DecreaseCreatureStat
ENDM

MACRO Do_BattleCmd_Stat_IncreasePercentCreatureStat
    ; Arguments
    ;   \1 = Stat label
    ;   \2 = Percentage (0 = 0%, 32 = 100%)
    ld hl, wBattle_Creature_Target
    ld de, (wBattle_Creature_Target.\1 - wBattle_Creature_Target)
    ld b, \2
    ld c, 99
    call BattleCmd_Stat_IncreasePercentCreatureStat
ENDM

MACRO Do_BattleCmd_Stat_DecreasePercentCreatureStat
    ; Arguments
    ;   \1 = Stat label
    ;   \2 = Percentage (0 = 0%, 32 = 100%)
    ld hl, wBattle_Creature_Target
    ld de, (wBattle_Creature_Target.\1 - wBattle_Creature_Target)
    ld b, \2
    call BattleCmd_Stat_DecreasePercentCreatureStat
ENDM

MACRO BattleCmd_Stat_IncreaseCreatureMaxEnergy
    ; Does not check for an energy maximum
    ; Arguments
    ;   \1 = Magnitude
    Get16_BigEndian hl, wBattle_Creature_Target.MaxEnergy
    ld c, \1
    ld b, 0
    add hl, bc
    ld a, h
    ld [wBattle_Creature_Target.MaxEnergy], a
    ld [wBattle_Creature_Target.CurEnergy], a
    ld a, l
    ld [wBattle_Creature_Target.MaxEnergy + 1], a
    ld [wBattle_Creature_Target.CurEnergy + 1], a
ENDM

MACRO BattleCmd_Stat_SetResist
    ; Arguments
    ;   \1 = Elemental mask (e.g. elementEarth)
    ld hl, wBattle_Creature_Target.ElementResist
    ld a, \1
    or [hl]
    ld [hl], a
ENDM

MACRO BattleCmd_Stat_SetWeak
    ; Arguments
    ;   \1 = Elemental mask (e.g. elementEarth)
    ld hl, wBattle_Creature_Target.ElementWeak
    ld a, \1
    or [hl]
    ld [hl], a
ENDM

MACRO BattleCmd_Stat_SetAttackElem
    ; Arguments
    ;   \1 = Elemental mask (e.g. elementEarth)
    ld hl, wBattle_Creature_Current.BattleCmd_Elemental
    ld a, \1
    or [hl]
    ld [hl], a
ENDM

MACRO BattleCmd_Set_Status
    ; Sets a status
    ; Arguments
    ;   hl = wBattle_Creature_Target.StatusImmune, .StatusPerm, or .StatusActive
    ;   a = Status mask
    or [hl]
    ld [hl], a
ENDM