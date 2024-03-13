ASSERT BattleCore_BANK == BANK(@)


; TODO Insert Main battleAI table here

BattleAI_Target_Table::
    ; Table of functions to help determine targets for battle script commands
    .BattleAI_Target_EnemyWeakPercent:
        dw BattleAI_Target_EnemyWeakPercent
    .BattleAI_Target_EnemyStrongPercent:
        dw BattleAI_Target_EnemyStrongPercent
    .BattleAI_Target_EnemyWeakAbs:
        dw BattleAI_Target_EnemyWeakAbs
    .BattleAI_Target_EnemyStrongAbs:
        dw BattleAI_Target_EnemyStrongAbs
    .BattleAI_Target_EnemyRand:
        dw BattleAI_Target_EnemyRand
    .BattleAI_Target_Me:
        dw BattleAI_Target_Me
    .BattleAI_Target_AllyWeakPercent:
        dw BattleAI_Target_AllyWeakPercent
    .BattleAI_Target_AllyStrongPercent:
        dw BattleAI_Target_AllyStrongPercent
    .BattleAI_Target_AllyWeakAbs:
        dw BattleAI_Target_AllyWeakAbs
    .BattleAI_Target_AllyStrongAbs:
        dw BattleAI_Target_AllyStrongAbs
    .BattleAI_Target_AllyRand:
        dw BattleAI_Target_AllyRand
    .BattleAI_Target_TonyAlways:
        dw BattleAI_Target_TonyAlways
    .BattleAI_Target_TonyIfUnblocked:
        dw BattleAI_Target_TonyIfUnblocked

BattleAI_Target_AdjustForMyTeam:
    ld a, [wBattle_Creature_Current.BattleCmd_Target]
    and a
    jr z, .Magi
    .Creature:
        add $04
        ld [wBattle_Creature_Current.BattleCmd_Target], a
        ret
    .Magi:
        Set8 wBattle_Creature_Current.BattleCmd_Target, BATTLE_SLOT_MAGI
        ret


BattleAI_Target_FindStrongest:
    ; Determines the creature with the highest energy, or targets the hero/magi if no creatures exist
    ; Inputs:
    ;   wBattleAI_Target_CreatureEnergyReport
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target (from BATTLE_SLOT_HERO to BATTLE_SLOT_ALLY3, we can change it to the enemy creatures with BattleAI_Target_AdjustForMyTeam)

    ; Loop through the 4 creatures, finding at least 1 with non-zero energy
    ld de, wBattleAI_Target_CreatureEnergyReport
    Set8 wBattle_TempCounter, 4
    .FindFirstCreatureLoop:
        ld a, [de]
        inc de
        ld h, a
        ld a, [de]
        inc de
        ld l, a
        or h
        jr nz, .MarkAsBestCreature

        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr nz, .FindFirstCreatureLoop
    jr .NoCreatures

    .MarkAsBestCreature:
    ; Mark the current creature as the current best target
    Get8 b, wBattle_TempCounter
    ld a, $05
    sub b
    ld [wBattleAI_Target_CurrentBestCreature], a

    ; Now, loop through the rest of the creatures and find the best creature
    .ComparisonLoop:
        ; Check if we've iterated through them all
        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr z, .Done

        ; Skip 0-energy creatures
        ld a, [de]
        inc de
        ld b, a
        ld a, [de]
        inc de
        ld c, a
        or b
        jr z, .ComparisonLoop

        ; hl = best creature
        ; bc = comparison creature
        ; if bc < hl, the comparison creature is less desirable, so keep looping
        TwosComp bc
        push hl
        add hl, bc
        pop hl
        jr c, .ComparisonLoop

        ; Otherwise, mark the new creature as best creature
        TwosComp bc
        ld h, b
        ld l, c
        jr .MarkAsBestCreature

    .NoCreatures:
        ; No creatures exist, so target hero
        Set8 wBattle_Creature_Current.BattleCmd_Target, BATTLE_SLOT_HERO
        ret

    .Done:
        ld a, [wBattleAI_Target_CurrentBestCreature]
        ld [wBattle_Creature_Current.BattleCmd_Target], a
        ret


BattleAI_Target_FindWeakest:
    ; Determines the creature with the lowest energy, or targets the hero/magi if no creatures exist
    ; Inputs:
    ;   wBattleAI_Target_CreatureEnergyReport
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target (from BATTLE_SLOT_HERO to BATTLE_SLOT_ALLY3, we can change it to the enemy creatures with BattleAI_Target_AdjustForMyTeam)

    ; Loop through the 4 creatures, finding at least 1 with non-zero energy
    ld de, wBattleAI_Target_CreatureEnergyReport
    Set8 wBattle_TempCounter, 4
    .FindFirstCreatureLoop:
        ld a, [de]
        inc de
        ld h, a
        ld a, [de]
        inc de
        ld l, a
        or h
        jr nz, .MarkAsBestCreature

        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr nz, .FindFirstCreatureLoop
    jr .NoCreatures

    .MarkAsBestCreature:
    ; Mark the current creature as the current best target
    ld a, [wBattle_TempCounter]
    ld b, a
    ld a, $05
    sub b
    ld [wBattleAI_Target_CurrentBestCreature], a

    ; Now, loop through the rest of the creatures and find the best creature
    .ComparisonLoop:
        ; Check if we've iterated through them all
        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr z, .Done

        ; Skip 0-energy creatures
        ld a, [de]
        inc de
        ld b, a
        ld a, [de]
        inc de
        ld c, a
        or b
        jr z, .ComparisonLoop

        ; hl = best creature
        ; bc = comparison creature
        ; if bc >= hl, the comparison creature is less desirable, so keep looping
        TwosComp bc
        push hl
        add hl, bc
        pop hl
        jr nc, .ComparisonLoop

        ; Otherwise, mark the new creature as best creature
        TwosComp bc
        ld h, b
        ld l, c
        jr .MarkAsBestCreature

    .NoCreatures:
        ld a, $00
        ld [wBattle_Creature_Current.BattleCmd_Target], a
        ret

    .Done:
        ld a, [wBattleAI_Target_CurrentBestCreature]
        ld [wBattle_Creature_Current.BattleCmd_Target], a
        ret


BattleAI_Target_RandomPick:
    ; Choose a random target
    ; Inputs:
    ;   hl = wBattle_CreatureSlots.Ally0 or wBattle_CreatureSlots.Enemy0
    ; Outputs:
    ;   c = 0-3 (representing the 4 creature slots), or $FF if Magi (no creatures available)

    ; Choose a random creature index
    ; bc = rand(4)
    call Math_Rand8Inc
    push af
    and $03
    ld c, a
    ld b, $00

    ; We will start with the random creature index, and if the slot is empty
    ; We will randomly move up/down over the 4 creatures until we find an enemy
    ld d, $04
    pop af
    push hl
    bit 7, a
    jr z, .LoopUpwards

    .LoopDownwards:
        ; Finish if the slot is occupied
        pop hl
        push hl
        add hl, bc
        ld a, [hl]
        and a
        jr nz, .Done

        ; Or else loop over the 4 creatures
        dec bc
        ld a, -1
        cp c
        jr nz, .SkipUnderFlow
        .Underflow:
            ld bc, 3
        .SkipUnderFlow:
        dec d
        jr z, .NoCreatures
        jr .LoopDownwards

    .LoopUpwards:
        ; Finish if the slot is occupied
        pop hl
        push hl
        add hl, bc
        ld a, [hl]
        and a
        jr nz, .Done

        ; Or else loop over the 4 creatures
        inc bc
        ld a, 4
        cp c
        jr nz, .SkipOverflow
        .Overflow
            ld bc, 0
        .SkipOverflow:
        dec d
        jr nz, .LoopUpwards
        ;jr .NoCreatures

    .NoCreatures:
        ld c, $FF
    .Done:
    ld a, c
    pop hl
    ret


BattleAI_Target_ReportPercent:
    ; Will check the 4 creatures and calculate each creature's 32*Energy/MaxEnergy
    ; Inputs:
    ;   hl = wBattle_Creature_Ally0 or wBattle_Creature_Enemy0
    ; Outputs:
    ;   wBattleAI_Target_CreatureEnergyReport populated with the percentage energy of the 4 creatures of the target team (see Math_CalcPercent)

    ; Navigate to CurrentEnergy (MaxEnergy is located right after)
    ld bc, BATTLE_CREATURE_CURENERGY
    add hl, bc

    ; Loop over the 4 creatures
    ld bc, wBattleAI_Target_CreatureEnergyReport
    Set8 wBattle_TempCounter, 4
    .Loop:
        push bc

        ; de = CurEnergy
        ld a, [hl+]
        ld e, [hl]
        inc hl
        ld d, a

        ; bc = MaxEnergy
        ld a, [hl+]
        ld c, [hl]
        inc hl
        ld b, a
        
        ; a = Percent = 32*Energy/MaxEnergy
        push hl
        call Math_CalcPercent
        pop hl
        pop bc

        ; Store the Percent
        ld [bc], a
        inc bc
        xor a
        ld [bc], a
        inc bc

        ; Move to the next creature
        ld de, (BATTLE_CREATURE_SIZE - 4)
        add hl, de

        ; Loop
        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr nz, .Loop
    ret


BattleAI_Target_ReportAbs:
    ; Will check the 4 creatures and get each creature's CurEnergy
    ; Inputs:
    ;   hl = wBattle_Creature_Ally0 or wBattle_Creature_Enemy0
    ; Outputs:
    ;   wBattleAI_Target_CreatureEnergyReport populated with the CurEnergy of the 4 creatures of the target team

    
    ; Navigate to CurrentEnergy
    ld de, BATTLE_CREATURE_SIZE - 2
    ld bc, BATTLE_CREATURE_CURENERGY
    add hl, bc

    ; Loop over the 4 creatures and grab the CurEnergy from each
    ld bc, wBattleAI_Target_CreatureEnergyReport
    Set8 wBattle_TempCounter, 4
    .Loop:
        LdBCIHLI
        LdBCIHLI
        add hl, de
        ld a, [wBattle_TempCounter]
        dec a
        ld [wBattle_TempCounter], a
        jr nz, .Loop
    ret


BattleAI_Target_AllyRand::
    ; Targets a random Ally
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_CreatureSlots.Ally0
    call BattleAI_Target_RandomPick
    cp $FF
    jr z, .TargetHero
    .TargetCreature
        add $01
        jr .Finally
    .TargetHero:
        xor a
    .Finally:
    ld [wBattle_Creature_Current.BattleCmd_Target], a
    ret


BattleAI_Target_AllyStrongAbs::
    ; Targets Ally with highest energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Ally0
    call BattleAI_Target_ReportAbs
    call BattleAI_Target_FindStrongest
    ret


BattleAI_Target_AllyStrongPercent::
    ; Targets Ally with highest % energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Ally0
    call BattleAI_Target_ReportPercent
    call BattleAI_Target_FindStrongest
    ret


BattleAI_Target_AllyWeakAbs::
    ; Targets Ally with lowest energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Ally0
    call BattleAI_Target_ReportAbs
    call BattleAI_Target_FindWeakest
    ret


BattleAI_Target_AllyWeakPercent::
    ; Targets Ally with lowest % energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Ally0
    call BattleAI_Target_ReportPercent
    call BattleAI_Target_FindWeakest
    ret


BattleAI_Target_Me::
    ; Targets self
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to self (wBattle_Buffer_CreatureSlot)
    Mov8 wBattle_Creature_Current.BattleCmd_Target, wBattle_Buffer_CreatureSlot
    ret


BattleAI_Target_EnemyRand::
    ; Targets a random Enemy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_CreatureSlots.Enemy0
    call BattleAI_Target_RandomPick
    cp $FF
    jr z, .TargetMagi
    .TargetCreature
        add $05
        jr .Finally
    .TargetMagi:
        ld a, BATTLE_SLOT_MAGI
    .Finally:
    ld [wBattle_Creature_Current.BattleCmd_Target], a
    ret


BattleAI_Target_EnemyStrongAbs::
    ; Targets Enemy with highest energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Enemy0
    call BattleAI_Target_ReportAbs
    call BattleAI_Target_FindStrongest
    call BattleAI_Target_AdjustForMyTeam
    ret


BattleAI_Target_EnemyStrongPercent::
    ; Targets Enemy with highest % energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Enemy0
    call BattleAI_Target_ReportPercent
    call BattleAI_Target_FindStrongest
    call BattleAI_Target_AdjustForMyTeam
    ret


BattleAI_Target_EnemyWeakAbs::
    ; Targets Enemy with lowest energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Enemy0
    call BattleAI_Target_ReportAbs
    call BattleAI_Target_FindWeakest
    call BattleAI_Target_AdjustForMyTeam
    ret


BattleAI_Target_EnemyWeakPercent::
    ; Targets Enemy with lowest % energy
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_Creature_Enemy0
    call BattleAI_Target_ReportPercent
    call BattleAI_Target_FindWeakest
    call BattleAI_Target_AdjustForMyTeam
    ret


BattleAI_Target_TonyAlways::
    ; Targets Tony
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target = BATTLE_SLOT_HERO
    xor a
    ld [wBattle_Creature_Current.BattleCmd_Target], a
    ret


BattleAI_Target_TonyIfUnblocked::
    ; Targets Tony if there are no allied creatures
    ; Seems to be the same as BattleAI_Target_AllyRand,
    ; since BattleAI_Target_AllyRand will target Tony if there are no
    ; creatures as well?
    ; Outputs:
    ;   wBattle_Creature_Current.BattleCmd_Target set to target
    ld hl, wBattle_CreatureSlots.Ally0
    ld a, [hl+]
    ld d, $03
    .Loop:
        or [hl]
        inc hl
        dec d
        jr nz, .Loop
    and a
    jr z, BattleAI_Target_TonyAlways ; Jump if any Ally is defined
    jp BattleAI_Target_AllyRand