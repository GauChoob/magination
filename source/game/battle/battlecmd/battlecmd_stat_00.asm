BattleCmd_Stat_IncreaseCreatureExp::
    ; Increases a creature's experience
    ; Inputs:
    ;   hl = battle creature
    ;   bc = delta
    ; Output:
    ;   Preserves hl

    ; Get experience
    ld de, (wBattle_Creature_Target.Experience - wBattle_Creature_Target)
    add hl, de
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, bc
    ; Store the new value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret


BattleCmd_Stat_IncreaseMagiEnergy::
    ; Increases a magi's maximum energy, up to a maximum of Creature_MAGI_MAX_MAXENERGY
    ; Also sets the magi's current energy to the maximum energy
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta
    ; Output:
    ;   Preserves hl

    ; Get max energy
    push hl
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, de
    ; Cap the value to Creature_MAGI_MAX_MAXENERGY (999)
    ld de, Creature_MAGI_MAX_MAXENERGY
    .ConsiderHigh:
    ld a, h
    cp d
    jr nz, .Check
    .ConsiderLow:
        ld a, l
        cp e
    .Check:
    jr c, .End
    .Overflow:
        ld h, d
        ld l, e
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ; Store the max energy value into the current energy as well
    pop hl
    push hl
    ld de, (wBattle_Creature_Target.CurEnergy - wBattle_Creature_Target)
    add hl, de
    ld [hl+], a
    ld [hl], c
    ; Preserve the pointer to the creature
    pop hl
    ret


BattleCmd_Stat_IncreaseCreatureEnergy::
    ; todo - is this function used? Or just replaced by the macro BattleCmd_Stat_IncreaseCreatureMaxEnergy?
    ; Increases a creature's maximum energy, up to a maximum of Creature_MAX_MAXENERGY
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta

    ; Get max energy
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, de
    ; Cap the value to Creature_MAX_MAXENERGY (250)
    ld de, Creature_MAX_MAXENERGY
    .ConsiderHigh:
    ld a, h
    cp d
    jr nz, .Check
    .ConsiderLow:
        ld a, l
        cp e
    .Check:
    jr c, .End
    .Overflow:
        ; Set the cap value
        ld h, d
        ld l, e
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret


BattleCmd_Stat_DecreaseCreatureEnergy::
    ; todo - is this function used?
    ; todo - is this current energy or max energy? Since the minimum permitted is 0
    ; Decreases a creature's max energy, to a minimum of 0
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta

    ; Get max energy
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Subtract the delta
    TwosComp de
    add hl, de
    jr nc, .End
    .Underflow:
        ; Minimum value is 0
        ld hl, 0
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret


BattleCmd_Stat_IncreaseCreatureStat::
    ; Increases a creature's stat, up to a maximum of X
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   e = max value
    ;   a = delta
    add hl, bc
    add [hl]
    cp e
    jr c, .Skip
    .Overflow:
        ld a, e
    .Skip:
    ld [hl], a
    ret


BattleCmd_Stat_DecreaseCreatureStat::
    ; Decreases a creature's stat, down to a minimum of 1
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = delta
    add hl, bc
    ld c, a
    ld a, [hl]
    sub c
    jr z, .Underflow
    jr nc, .Skip
    .Underflow:
        ; If <= 0, set to 1
        ld a, 1
    .Skip:
    ld [hl], a
    ret


BattleCmd_Stat_IncreasePercentCreatureStat::
    ; Increases a creature's stat by a percentage (minimum of 1), up to a maximum of X
    ; Inputs:
    ;   hl = battle creature
    ;   de = stat offset
    ;   b = percentage increase (from 0 to 32, where 32 = %100)
    ;   e = max value
    add hl, de
    push hl
    ld a, [hl]
    ld l, b
    ld b, a
    call Math_ScaleNumber8
    jr nz, .Skip
    .Zero:
        ; We want to increase by a minimum of 1
        ld a, $01
    .Skip:
    pop hl
    add [hl]
    cp c
    jr c, .Skip2
    .Overflow:
        ld a, c
    .Skip2:
    ld [hl], a
    ret


BattleCmd_Stat_DecreasePercentCreatureStat::
    ; Decreases a creature's stat by a percentage (minimum of 1), down to a minimum of 1
    ; Inputs:
    ;   hl = battle creature
    ;   de = stat offset
    ;   b = percentage decrease (from 0 to 32, where 32 = %100)
    add hl, de
    push hl
    ld a, [hl]
    ld l, b
    ld b, a
    call Math_ScaleNumber8
    jr nz, .Skip
    .Zero:
        ; We want to decrease by a minimum of 1
        ld a, $01
    .Skip:
    pop hl
    NegativeA
    add [hl]
    jr z, .Underflow
    jr c, .Skip2
    .Underflow:
        ; a <= 0
        ld a, $01
    .Skip2:
    ld [hl], a
    ret


BattleCmd_Stat_SetCreatureStatus::
    ; Activates a creature's status
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = bits that are implicated (todo)
    add hl, bc
    or [hl]
    ld [hl], a
    ret


BattleCmd_Stat_ClearCreatureStatus::
    ; Resets a creature's status
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = bits that are implicated (todo)
    add hl, bc
    cpl
    and [hl]
    ld [hl], a
    ret