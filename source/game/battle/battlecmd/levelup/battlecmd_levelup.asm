; Gives XP to creatures/Tony, and also handles level-up
;
; Publically accessed functions:
; BattleCmd_LevelUp_CreatureLevelFromRingsmith - Used for Forge and Power
; Battle_LevelUp_XPAndLevelUp - at end of battle (includes Tony)
; BattleCmd_LevelUp_CreatureLevelUp - used when summoning enemy creature (and used internally)

ASSERT BANK(@) == BattleCore_BANK

Battle_LevelUp_XPAndLevelUp::
    ; Give XP to all summoned creatures and Tony
    ; And level up if necessary

    ; Give XP to all creatures that were summoned
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, wBattle_UsedRings + xInventory_Rings_LENGTH - 1
    Set8 wBattle_TempCounter, xInventory_Rings_LENGTH
    .CreatureXPLoop:
        xor a
        ld [wBattle_PendingMessage], a

        ; Skip all creatures that were never summoned
        ld a, [hl-]
        and a
        jp z, .SkipRing

        ; Get the creature's struct id
        ; id = [xInventory_Rings + (wBattle_TempCounter - 1)]
        push hl
        ld hl, xInventory_Rings
        ld a, [wBattle_TempCounter]
        dec a
        ld c, a
        ld b, $00
        add hl, bc
        Battery_On
        Battery_SetBank "XRAM Gamestate"
        ld a, [hl]
        ld c, a
        Battery_Off

        ; Get the offset to the creature_struct
        ld b, Creature_SIZE
        call Math_Mult
        ld bc, xCreature_RAM
        add hl, bc

        ; Give XP to the creature (returns current XP in hl)
        Set16 wBattle_LevelUp_CreatureToGiveXP, hl
        call BattleCmd_LevelUp_GiveXP 

        ; If XP >= 100, level-up!
        ld bc, 100
        TwosComp bc ; Inefficiency, could just ld bc, -100
        add hl, bc
        FGet16 bc, wBattle_LevelUp_CreatureToGiveXP
        jr nc, .SkipLevelUp

        ; Fake Summon the creature so we can do stuff to it
        ld hl, wBattle_Creature_Target
        call Battle_Init_SummonCreature

        .LevelUpLoop:
            ; Level up and also play sound
            Sound_Request_ForceStartSong SONGID_LevelUp1
            ld hl, wBattle_LevelUp_Flags
            ld [hl], 0 ; Remove 100 XP
            set 1, [hl] ; Display level-up text
            ld hl, wBattle_Creature_Target
            call BattleCmd_LevelUp_CreatureLevelUp
            xor a
            ld [wBattle_LevelUp_Flags], a

            ; Check if multiple level ups (unlikely except against Morag maybe)
            FGet16_BigEndian hl, wBattle_Creature_Target.Experience
            ld bc, 100 ; Inefficiency, could just ld bc, -100
            TwosComp bc
            add hl, bc
            jr c, .LevelUpLoop

        ; Close the creature
        FGet16 bc, wBattle_LevelUp_CreatureToGiveXP
        ld hl, wBattle_Creature_Target
        call Battle_Init_UnsummonCreature

        ; Loop to next creature
        .SkipLevelUp:
        pop hl
        .SkipRing:
        push hl
        ld hl, wBattle_TempCounter
        dec [hl]
        pop hl
        jp nz, .CreatureXPLoop

    ; Give XP to Tony
    ld bc, xCreature_00_Hero
    FSet16 wBattle_LevelUp_CreatureToGiveXP, bc
    call BattleCmd_LevelUp_GiveXP 

    ; Check if XP >= 100
    ; Inefficiency, could just ld bc, -100
    ld bc, 100
    TwosComp bc
    add hl, bc
    ret nc

    ; If >= 100, play music and level up Tony
    ld bc, xCreature_00_Hero
    ld hl, wBattle_Creature_Target
    call Battle_Init_SummonCreature
    Sound_Request_ForceStartSong SONGID_LevelUp1
    ld hl, wBattle_LevelUp_Flags
    res 0, [hl]
    set 1, [hl]
    ld hl, wBattle_Creature_Target
    call BattleCmd_LevelUp_MagiLevelUp

    ; Close Tony
    ld hl, wBattle_Creature_Target
    ld bc, xCreature_00_Hero
    call Battle_Init_UnsummonCreature
    ret


BattleCmd_LevelUp_GiveXP:
    ; Give XP to the creature
    ;     
    ; BaseXP =
    ;     Switch (CreatureLvl - BattleLvl)
    ;         Delta > 12: 1
    ;         Delta > 7: 2
    ;         Delta > 5: 5
    ;         Delta > 3: 10
    ;         Delta > -7: 20
    ;         Delta > -11: 10
    ;         Delta > -17: 5
    ;         Delta > -23: 2
    ;         Delta <= -24: 1
    ; XP gain = min(2, BaseXP + wBattle_LevelUp_EnemiesSummoned - wBattle_LevelUp_AlliesSummoned + 1)
    ; Inputs:
    ;   wBattle_LevelUp_CreatureToGiveXP = Pointer to Creature_Struct to level-up
    ;   wBattle_LevelUp_EnemiesSummoned = modifies XP gain
    ;   wBattle_LevelUp_AlliesSummoned = modifies XP gain
    ; Outputs:
    ;   hl = current exp

    ; Get creature's level
    Battery_On
    Battery_SetBank "XRAM Creatures"
    ld bc, Creature_Struct_OFFSET_Level
    FGet16 hl, wBattle_LevelUp_CreatureToGiveXP
    add hl, bc
    Get8 b, hl

    ; Get last Battle's difficulty level + 1
    ld a, [wBattle_Level]
    inc a

    ; Calculate the difference and calculate XP gain (1-20) based on the delta
    sub b
    jr c, .AllyStronger
    .EnemyStronger:
        ; Penalize XP gain if battle is >=7 levels higher than creature
        ld b, BattleCmd_LevelUp_ExpEnemyStrong0
        cp BattleCmd_LevelUp_LevEnemyStrong1
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpEnemyStrong1
        cp BattleCmd_LevelUp_LevEnemyStrong2
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpEnemyStrong2
        cp BattleCmd_LevelUp_LevEnemyStrong3
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpEnemyStrong3
        cp BattleCmd_LevelUp_LevEnemyStrong4
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpEnemyStrong4
        jr .Finally
    .AllyStronger:
        ; Penalize XP gain if ally is >3 levels stronger than creature
        NegativeA
        ld b, BattleCmd_LevelUp_ExpAllyStrong0
        cp BattleCmd_LevelUp_LevAllyStrong1
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpAllyStrong1
        cp BattleCmd_LevelUp_LevAllyStrong2
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpAllyStrong2
        cp BattleCmd_LevelUp_LevAllyStrong3
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpAllyStrong3
        cp BattleCmd_LevelUp_LevAllyStrong4
        jr c, .Finally
        ld b, BattleCmd_LevelUp_ExpAllyStrong4
    .Finally:
    ld a, b

    ; Give bonus XP based on creatures summoned:
    ; BaseLevelXP + wBattle_LevelUp_EnemiesSummoned - wBattle_LevelUp_AlliesSummoned + 1
    ld hl, wBattle_LevelUp_EnemiesSummoned
    add [hl]
    ld hl, wBattle_LevelUp_AlliesSummoned
    sub [hl]
    jr nc, .SkipMin
    .MinXP:
        ; Minimum XP gain is 2
        ld a, $01
    .SkipMin:
    inc a
    ld [wBattle_LevelUp_XPGain], a

    ; Give the XP to the creature
    FGet16 hl, wBattle_LevelUp_CreatureToGiveXP
    ld bc, Creature_Struct_OFFSET_Experience
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [wBattle_LevelUp_XPGain]
    ld c, a
    ld b, $00
    add hl, bc

    ; Store the new XP
    push hl
    ld b, h
    ld c, l
    FGet16 hl, wBattle_LevelUp_CreatureToGiveXP
    ld de, Creature_Struct_OFFSET_Experience
    add hl, de
    Set8 hl+, b
    Set8 hl, c
    Battery_Off

    ; hl = CurrentXP
    pop hl
    ret


BattleCmd_LevelUp_UnlockCommands:
    ; Checks to see if a new command has been unlocked
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ;   wBattle_LevelUp_Level = CreatureLevel +- 10*Luck

    DEF i = 0
    REPT 4
        ; Loop through all 4 commands and find the first command that is not unlocked
        push hl
        ld de, BATTLE_CREATURE_ABILITYUNLOCK0 + i
        add hl, de
        ld a, $FF ; Unlocked command
        cp [hl]
        IF i != 3
        jr z, .CheckNextCmd\@
        ELSE
        jr z, .NothingUnlocked
        ENDC

        ; Once we've found the first locked command
        ; If Level < CmdLevel, then we failed to unlock anything
        ld a, [wBattle_LevelUp_Level]
        cp [hl]
        jr c, .NothingUnlocked

        ; Mark the command as unlocked
        Set8 hl, $FF
        ld de, BATTLE_CREATURE_ABILITY0 + 2*i
        if i != 3
        jr .UnlockNewCmd

        .CheckNextCmd\@:
        pop hl
        ENDC
        DEF i += 1
    ENDR

    .UnlockNewCmd:
        pop hl
        call BattleCmd_LevelUp_Format_PrepCommandName

        ; Indicate that a new command was unlocked
        ld a, [wBattle_LevelUp_Flags]
        set 7, a
        ld [wBattle_LevelUp_Flags], a
        ret
    .NothingUnlocked:
        pop hl
        ret


BattleCmd_LevelUp_CopyBuffer_Name:
    ; Formats the current creature's name
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Name
    push hl
    ld bc, BATTLE_CREATURE_ID
    add hl, bc
    Mov8 wBattle_CopyBuffer_ListIndex, hl
    ld bc, wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Name
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign CreatureName_CopyToDest
    Set8 wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Name_End, "🔊"
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Level:
    ; Formats the current creature's level
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Level
    push hl
    ld bc, BATTLE_CREATURE_LEVEL
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Level
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Energy:
    ; Formats the current creature's max energy
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Energy
    push hl
    ld bc, BATTLE_CREATURE_MAXENERGY
    add hl, bc
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    Math_Format3Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Energy
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Strength:
    ; Formats the current creature's Strength
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Strength
    push hl
    ld bc, BATTLE_CREATURE_STRENGTH
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Strength
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Skill:
    ; Formats the current creature's Skill
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Skill
    push hl
    ld bc, BATTLE_CREATURE_SKILL
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Skill
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Speed:
    ; Formats the current creature's Speed
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Speed
    push hl
    ld bc, BATTLE_CREATURE_SPEED
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Speed
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Defence:
    ; Formats the current creature's Defence
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Defence
    push hl
    ld bc, BATTLE_CREATURE_DEFENCE
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Defence
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_Resist:
    ; Formats the current creature's Resist
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Resist
    push hl
    ld bc, BATTLE_CREATURE_RESIST
    add hl, bc
    ld e, [hl]
    ld d, $00
    Math_Format2Digits wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_Resist
    pop hl
    ret


BattleCmd_LevelUp_CopyBuffer_NewBattleCmd:
    ; Inputs:
    ;   Params set via BattleCmd_LevelUp_Format_PrepCommandName
    ;   wMenu_BattleCmd_TablePointer - BattleCmd
    ;   wMenu_BattleCmd_DestBuffer = wText_StringBuffer + 33
    ; Outputs:
    ;   wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_BattleCmd
    Set8 wMenu_BattleCmd_GetEnergyFlag, Menu_GetAbility_GETENERGY_TRUE ; We immediately disregard/trash this information
    Do_CallForeign BattleCmd_GetNameAndEnergy
    Set8 wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_BattleCmd_End, "🔊"
    ret


BattleCmd_LevelUp_CreatureLevelUp::
    ; Levels up the current creature
    ; Inputs:
    ;   hl = wBattle_Creature_Current/wBattle_Creature_Target
    ;   wBattle_LevelUp_Flags
    ;       Bit 0 - Set if we don't change XP of creature
    ;       Bit 1 - Set to display level up text
    ; Outputs:
    ;   hl = wBattle_Creature_Current updated
    ;   wBattle_LevelUp_Flags:
    ;       Bit 7 - Set if a new battlecommand was learned
    push hl

    ; wBattle_LevelUp_StatIndex = rand(4)*5
    ; This var is now unused to calculate the stat gain
    SwitchRAMBank BANK("WRAM BATTLE")
    ld c, $03
    call Math_Random
    ld c, a
    ld b, $05
    call Math_Mult
    ld a, l
    ld [wBattle_LevelUp_StatIndex], a

    ; wBattle_LevelUp_EnergyIndex = 1 + rand(4)
    ld c, $03
    call Math_Random
    inc a
    ld [wBattle_LevelUp_EnergyIndex], a

    ; Get Creature Type
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_TYPE
    add hl, bc
    ld d, $00
    ld e, [hl]

    ; Remove 100 XP if the flag bit0 is reset
    ld a, [wBattle_LevelUp_Flags]
    bit 0, a
    jr nz, .SkipRemoveXP
    .Subtract100Exp:
        ; inefficiency - we could have just called BattleCmd_Stat_IncreaseCreatureExp (see BattleCmd_LevelUp_MagiLevelUp for example)
        pop hl
        push hl
        ld bc, BATTLE_CREATURE_EXPERIENCE
        add hl, bc
        push hl
        ld a, [hl+]
        ld l, [hl]
        ld h, a
        ld bc, 100 ; Inefficiency, could just ld bc, -100
        TwosComp bc
        add hl, bc
        ld a, h
        ld c, l
        pop hl
        ld [hl+], a
        ld [hl], c
    .SkipRemoveXP:

    ; Check Creature level and skip if level 99
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_LEVEL
    add hl, bc

    ld a, [hl]
    ld [wBattle_LevelUp_Level], a
    cp 99
    jr nz, .Pass
    .MaxLevel:
        pop hl
        ret
    .Pass:
    ; Increment level by 1
    inc a
    ld [hl], a

    ; Past level 62 (Battle_LevelUp_PenaltyLevel), supposed to gain less stats...
    ; But now is unused to calculate the stat gain, so it doesn't matter
    cp BattleCmd_LevelUp_PENALTYLEVEL_UNUSED
    jr c, .NotPenalty
    .Penalty:
        xor a
        ld [wBattle_LevelUp_StatIndex], a
    .NotPenalty:

    ; Calculate stat gains
    call BattleCmd_LevelUp_StrengthGain
    ld [wBattle_LevelUp_Stats.Strength], a
    call BattleCmd_LevelUp_SkillGain
    ld [wBattle_LevelUp_Stats.Skill], a
    call BattleCmd_LevelUp_SpeedGain
    ld [wBattle_LevelUp_Stats.Speed], a
    call BattleCmd_LevelUp_DefenceGain
    ld [wBattle_LevelUp_Stats.Defence], a
    call BattleCmd_LevelUp_ResistGain
    ld [wBattle_LevelUp_Stats.Resist], a

    ; Add stat gain to the creature, capping at 99
    pop hl
    push hl
    ld de, BATTLE_CREATURE_STRENGTH
    add hl, de
    DEF i = 0
    REPT 5
        ld a, [wBattle_LevelUp_Stats + i]
        add [hl]
        cp 99
        jr c, .SkipMax\@
            ld a, 99
        .SkipMax\@:
        ld [hl], a
        IF i != 4
        inc hl
        ENDC
        DEF i += 1
    ENDR

    ; Calculate energy gain
    ; EnergyUp + wBattle_LevelUp_EnergyIndex
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_ENERGYUP
    add hl, bc
    Get8 l, hl
    ld h, $00

    ld d, h
    Get8 e, wBattle_LevelUp_EnergyIndex
    add hl, de
    ld e, l

    ; Add the Creature's Max Energy
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_MAXENERGY
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, de

    ; Cap the energy to 250 (disregard the creature table's max energy)
    ld de, Creature_MAX_MAXENERGY
    ld a, h
    cp d
    jr nz, .CheckRegister
        ld a, l
        cp e
    .CheckRegister:
    jr c, .Pass2
        ld h, d
        ld l, e
    .Pass2:

    ; Store the new energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c

    ; Calculate the creature's effective new level for abilities:
    ; Level + Luck(10) (i.e. can learn new skill up to 10 levels earlier!)
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_LUCK
    add hl, bc
    ld b, [hl]
    ld a, 10
    call BattleCmd_Formula_Luck
    ld b, a
    ld a, [wBattle_LevelUp_Level]
    inc a
    add b
    ld [wBattle_LevelUp_Level], a
    ; Check for new commands learned
    pop hl
    call BattleCmd_LevelUp_UnlockCommands

    ; Display text dialogue
    call BattleCmd_LevelUp_CreatureDisplayText
    ret


BattleCmd_LevelUp_CreatureDisplayText:
    ; Displays a text box showing a creature's new stats after level up
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ;   wBattle_LevelUp_Flags
    ;       Bit 1 - Set to display level up text
    ;       Bit 7 - Set to display new command learned (BattleCmd_LevelUp_Format_PrepCommandName called in advance)
    ; Outputs:
    ;   wBattle_LevelUp_Flags:
    ;       Bit 7 - Reset
    
    ; Abort if we should not display text
    ld a, [wBattle_LevelUp_Flags]
    bit 1, a
    ret z

    ; Prep the formatted string
    call BattleCmd_LevelUp_CopyBuffer_Name
    call BattleCmd_LevelUp_CopyBuffer_Level
    call BattleCmd_LevelUp_CopyBuffer_Energy
    call BattleCmd_LevelUp_CopyBuffer_Strength
    call BattleCmd_LevelUp_CopyBuffer_Skill
    call BattleCmd_LevelUp_CopyBuffer_Speed
    call BattleCmd_LevelUp_CopyBuffer_Defence
    call BattleCmd_LevelUp_CopyBuffer_Resist

    ; Load the text containing the new command learned if flag is set
    ld a, [wBattle_LevelUp_Flags]
    bit 7, a
    jr nz, .WithNewCommand
    .WithoutNewCommand:
        Set16_M wText_StringFormatFrame, wText_StringBuffer
        ; TODO Script_Set wScript_Text, LABEL
        ld hl, wScript_Text
        ld a, $4C
        ld [hl+], a
        ld a, $84
        ld [hl+], a
        ld a, $46
        ld [hl+], a
        ld a, $66
        ld [hl+], a
        ld a, $0A
        ld [hl+], a
        jr .Finally
    .WithNewCommand:
        res 7, a
        ld [wBattle_LevelUp_Flags], a

        ; BattleCmd_LevelUp_Format_PrepCommandName called before calling this function
        call BattleCmd_LevelUp_CopyBuffer_NewBattleCmd

        Set16_M wText_StringFormatFrame, wText_StringBuffer
        ; TODO Script_Set wScript_Text, LABEL
        ld hl, wScript_Text
        ld a, $4C
        ld [hl+], a
        ld a, $FC
        ld [hl+], a
        ld a, $46
        ld [hl+], a
        ld a, $66
        ld [hl+], a
        ld a, $0A
        ld [hl+], a

    .Finally:
    ; Pause until the text is done
    Do_CallForeign Battle_Helpers_AwaitTextEnd
    ret


BattleCmd_LevelUp_MagiDisplayText:
    ; Displays a text box showing a Tony's new stats after level up
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ;   wBattle_LevelUp_Flags
    ;       Bit 1 - Set to display level up text
    
    ; Abort if we should not display text
    ld a, [wBattle_LevelUp_Flags]
    bit 1, a
    ret z

    ; Prep the formatted string
    call BattleCmd_LevelUp_CopyBuffer_Name
    call BattleCmd_LevelUp_CopyBuffer_Level
    call BattleCmd_LevelUp_CopyBuffer_Energy
    Set16_M wText_StringFormatFrame, wText_StringBuffer

    ; TODO Script_Set wScript_Text, LABEL
    ld hl, wScript_Text
    ld a, $4C
    ld [hl+], a
    ld a, $8D
    ld [hl+], a
    ld a, $47
    ld [hl+], a
    ld a, $66
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    ; Pause until the text is done
    Do_CallForeign Battle_Helpers_AwaitTextEnd
    ret


BattleCmd_LevelUp_MagiLevelUp:
    ; Levels up Tony
    ; Inputs:
    ;   hl = wBattle_Creature_Target
    ;   wBattle_LevelUp_Flags
    ;       Bit 0 - Set if we don't change XP of creature
    ;       Bit 1 - Set to display level up text
    ; Outputs:
    ;   hl = wBattle_Creature_Target updated
    push hl
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_LevelUp_Flags]
    bit 0, a
    jr nz, .SkipRemoveXP
    .Subtract100Exp:
        ld bc, 100
        TwosComp bc ; Inefficiency, could just ld bc, -100
        call BattleCmd_Stat_IncreaseCreatureExp
    .SkipRemoveXP:
    pop hl
    push hl
    ld bc, BATTLE_CREATURE_LEVEL
    add hl, bc
    ld a, [hl]
    ld [wBattle_LevelUp_Level], a
    cp 99
    jr nz, .Pass
    .MaxLevel:
        pop hl
        ret
    .Pass:
    ; Increment level by 1
    inc a
    ld [hl], a

    ; Energy gain is based off of level
    ; <32: 10
    ; 32-59: 16
    ; >59: 1
    pop hl
    ld a, [wBattle_LevelUp_Level]
    inc a
    cp BattleCmd_LevelUp_MagiCutoff1
    jr nc, .CheckCutoff2
    .LevelLow:
        ld de, BattleCmd_LevelUp_MagiEnergyLow
        jr .Finally
    .CheckCutoff2:
    cp BattleCmd_LevelUp_MagiCutoff2
    jr nc, .LevelHigh
    .LevelMed:
        ld de, BattleCmd_LevelUp_MagiEnergyMed
        jr .Finally
    .LevelHigh:
        ld de, BattleCmd_LevelUp_MagiEnergyHigh
    .Finally:

    call BattleCmd_Stat_IncreaseMagiEnergy
    call BattleCmd_LevelUp_MagiDisplayText
    ret


BattleCmd_LevelUp_SkillGain:
    ; Calculates the stat gain for a level up
    ; Inputs:
    ;   wBattle_Creature_Target.Type
    ; Outputs:
    ;   a =
    ;       SMALL/STRONG = average +1
    ;       MED = average +0.8
    ;       LARGE/WEAK = average +0.6

    ; Get a number 0-9
    call Math_Rand8Inc
    ld c, a
    ld b, 10
    call Math_Div8
    ld c, l
    ld b, $00

    ; Choose the lookup table
    ld a, [wBattle_Creature_Target.Type]
    cp CREATURE_TABLE_TYPE_SMALL
    jr nz, .CheckLarge
        ld hl, BattleCmd_LevelUp_GoodTable
        jr .Finally
    .CheckLarge:
    cp CREATURE_TABLE_TYPE_LARGE
    jr nz, .CheckMed
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckMed:
    cp CREATURE_TABLE_TYPE_MEDIUM
    jr nz, .CheckWeak
        ld hl, BattleCmd_LevelUp_OkTable
        jr .Finally
    .CheckWeak:
    cp CREATURE_TABLE_TYPE_WEAK
    jr nz, .CheckStrong
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckStrong:
        ld hl, BattleCmd_LevelUp_GoodTable
    .Finally:
    add hl, bc
    ld a, [hl]
    ret


BattleCmd_LevelUp_SpeedGain:
    ; Calculates the stat gain for a level up
    ; Inputs:
    ;   wBattle_Creature_Target.Type
    ; Outputs:
    ;   a =
    ;       SMALL/STRONG = average +1
    ;       MED = average +0.8
    ;       LARGE/WEAK = average +0.6

    ; Get a number 0-9
    call Math_Rand8Inc
    ld c, a
    ld b, 10
    call Math_Div8
    ld c, l
    ld b, $00

    ; Choose the lookup table
    ld a, [wBattle_Creature_Target.Type]
    cp CREATURE_TABLE_TYPE_SMALL
    jr nz, .CheckLarge
        ld hl, BattleCmd_LevelUp_GoodTable
        jr .Finally
    .CheckLarge:
    cp CREATURE_TABLE_TYPE_LARGE
    jr nz, .CheckMed
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckMed:
    cp CREATURE_TABLE_TYPE_MEDIUM
    jr nz, .CheckWeak
        ld hl, BattleCmd_LevelUp_OkTable
        jr .Finally
    .CheckWeak:
    cp CREATURE_TABLE_TYPE_WEAK
    jr nz, .CheckStrong
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckStrong:
        ld hl, BattleCmd_LevelUp_GoodTable
    .Finally:
    add hl, bc
    ld a, [hl]
    ret


BattleCmd_LevelUp_DefenceGain:
    ; Calculates the stat gain for a level up
    ; Inputs:
    ;   wBattle_Creature_Target.Type
    ; Outputs:
    ;   a =
    ;       LARGE/STRONG = average +1.3333
    ;       MED = average +1.1333
    ;       SMALL/WEAK = average +0.9333

    ; Get a number 0-9
    call Math_Rand8Inc
    ld c, a
    ld b, 10
    call Math_Div8
    ld c, l
    ld b, $00

    ; Choose the lookup table
    ld a, [wBattle_Creature_Target.Type]
    cp CREATURE_TABLE_TYPE_SMALL
    jr nz, .CheckLarge
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckLarge:
    cp CREATURE_TABLE_TYPE_LARGE
    jr nz, .CheckMed
        ld hl, BattleCmd_LevelUp_GoodTable
        jr .Finally
    .CheckMed:
    cp CREATURE_TABLE_TYPE_MEDIUM
    jr nz, .CheckWeak
        ld hl, BattleCmd_LevelUp_OkTable
        jr .Finally
    .CheckWeak:
    cp CREATURE_TABLE_TYPE_WEAK
    jr nz, .CheckStrong
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckStrong:
        ld hl, BattleCmd_LevelUp_GoodTable
    .Finally:
    add hl, bc
    ld a, [hl]

    ; Add 33% chance +1
    push af
    call Math_Rand8Inc
    ld c, a
    ld b, $03
    call Math_Div8
    ld a, l
    and %00000010
    srl a
    ld b, a
    pop af
    add b
    ret


BattleCmd_LevelUp_ResistGain:
    ; Calculates the stat gain for a level up
    ; Inputs:
    ;   wBattle_Creature_Target.Type
    ; Outputs:
    ;   a =
    ;       LARGE/STRONG = average +1.3333
    ;       MED = average +1.1333
    ;       SMALL/WEAK = average +0.9333

    ; Get a number 0-9
    call Math_Rand8Inc
    ld c, a
    ld b, 10
    call Math_Div8
    ld c, l
    ld b, $00

    ; Choose the lookup table
    ld a, [wBattle_Creature_Target.Type]
    cp CREATURE_TABLE_TYPE_SMALL
    jr nz, .CheckLarge
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckLarge:
    cp CREATURE_TABLE_TYPE_LARGE
    jr nz, .CheckMed
        ld hl, BattleCmd_LevelUp_GoodTable
        jr .Finally
    .CheckMed:
    cp CREATURE_TABLE_TYPE_MEDIUM
    jr nz, .CheckWeak
        ld hl, BattleCmd_LevelUp_OkTable
        jr .Finally
    .CheckWeak:
    cp CREATURE_TABLE_TYPE_WEAK
    jr nz, .CheckStrong
        ld hl, BattleCmd_LevelUp_BadTable
        jr .Finally
    .CheckStrong:
        ld hl, BattleCmd_LevelUp_GoodTable
    .Finally:
    add hl, bc
    ld a, [hl]

    ; Add 33% chance +1
    push af
    call Math_Rand8Inc
    ld c, a
    ld b, $03
    call Math_Div8
    ld a, l
    and %00000010
    srl a
    ld b, a
    pop af
    add b
    ret


BattleCmd_LevelUp_StrengthGain:
    ; Calculates a Strength gain
    ; Inputs:
    ;   None
    ; Outputs:
    ;   a = 0-3 (averages 1.1875)

    ; Get a random number from %000-%111, where the 0 digits have 75% chance and 1 digits have 25% chance
    ; Probably not intentional, given the even distribution of the strength table?
    call Math_Rand8Inc
    ld b, a
    call Math_Rand8Inc
    swap a
    and b ; Bug? - should be xor instead?
    and %00000111
    ld c, a
    ld b, $00

    ; Look up the corresponding value in the table
    ld hl, BattleCmd_LevelUp_StrengthTable
    add hl, bc
    ld a, [hl]
    ret

BattleCmd_LevelUp_StrengthTable:
    ; 000 001 010 011 100 101 110 111
    ;  27   9   9   3   9   3   3   1   (chance/64)
    ; Average stat gain: 1.1875 per level
    ; If equally distributed, would expect 1.5 per level
    db 1,  2,  1,  2,  0,  3,  2,  1

BattleCmd_LevelUp_BadTable:
    ; Average = 0.6
    db 0, 0, 1, 1, 1, 1, 0, 0, 2, 0
BattleCmd_LevelUp_OkTable:
    ; Average = 0.8
    db 0, 2, 1, 1, 1, 1, 0, 0, 2, 0
BattleCmd_LevelUp_GoodTable:
    ; Average = 1
    db 0, 3, 1, 1, 1, 1, 0, 1, 2, 0


BattleCmd_LevelUp_CreatureLevelFromRingsmith::
    ; Levels up a newly forged ring, or a powered ring
    ; Originally function was only for newly forged rings
    ; Inputs:
    ;   wMenu_Ringsmith_CreatureXramPointer = Pointer to Creature_Struct
    ;   wMenu_Ringsmith_RingLevel - 1 = Number of levelups (minus 1 since we start from level 1)

    ; Fake summon the creature so we can act on it
    FGet16 bc, wMenu_Ringsmith_CreatureXramPointer
    ld hl, wBattle_Creature_Target
    ld a, [wMenu_Ringsmith_RingLevel]
    dec a
    push af
    SwitchRAMBank BANK("WRAM BATTLE") ; redundant inefficiency - bank is changed in the next function
    call Battle_Init_SummonCreature

    ; Don't display levelup info, and don't reduce XP
    xor a
    set 0, a
    res 1, a
    ld [wBattle_LevelUp_Flags], a

    ; Level up the creature wMenu_Ringsmith_RingLevel-1 times
    pop af
    and a
    jr z, .SkipLoop
    .LevelUpLoop:
        ld hl, wBattle_Creature_Target
        push af
        call BattleCmd_LevelUp_CreatureLevelUp
        pop af
        dec a
        jr nz, .LevelUpLoop

    .SkipLoop:
    ; Store the creature after apply the level up
    FGet16 bc, wMenu_Ringsmith_CreatureXramPointer
    ld hl, wBattle_Creature_Target
    call Battle_Init_UnsummonCreature
    ret


BattleCmd_LevelUp_Format_PrepCommandName:
    ; Puts the newly learned command into the relevant variables to later copy the name
    ; Inputs:
    ;   hl = wBattle_Creature_Current
    ;   de = Offset to BattleCmd0,1,2,3 in the Creature's struct
    ; Outputs:
    ;   wMenu_BattleCmd_TablePointer = BattleCmd struct
    ;   wMenu_BattleCmd_DestBuffer = wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_BattleCmd
    push hl
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    FSet16 wMenu_BattleCmd_TablePointer, de
    Set16_M wMenu_BattleCmd_DestBuffer, wText_StringBuffer + BattleCmd_LevelUp_TextBufferOffset_BattleCmd
    pop hl
    ret