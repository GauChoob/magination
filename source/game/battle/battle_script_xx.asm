ASSERT BattleCore_BANK == BANK(@)

BattleScriptXX_Attack::
    ; Directs an enemy creature to do the specified attack.
    ; Used only in Salafy's tutorial battle to make the creature Defend
    ; Arguments:
    ;   wBattle_Buffer_CreatureSlot, e.g. BATTLE_SLOT_ENEMY0
    ;   wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an attack in BattleCmd_Table
    ;   wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_EnemyWeakPercent

    ; Load creature into wBattle_Creature_Current
    call BattleScriptXX_OpenCreatureFromFrame

    ; Get the pointer to the BattleCmd
    ld bc, wBattle_Buffer_ItemSpellBattleCmdAddress
    ld hl, wBattle_CopyBuffer_Source
    LdHLIBCI
    LdHLIBCI

    ; Copy the BattleCmd into wBattle_Creature_Current 
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Validate if there is any valid target. Ignore if no valid target
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret z

    ; Choose the target
    call BattleScriptXX_AITarget
    ret


BattleScriptXX_Spell::
    ; Directs an enemy magi to do the specified attack.
    ; Unclear if there will be a bug if you try and make a creature cast a spell
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   dw  wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an attack in Spell_Table
    ;   db  wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_AllyWeakPercent

    ; Load creature into wBattle_Creature_Current
    call BattleScriptXX_OpenCreatureFromFrame

    ; Choose Spell
    ld bc, BattleCmd_Table.BattleCmd_SPELL
    FSet16 wBattle_CopyBuffer_Source, bc
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Set wBattle_Creature_Current.BattleCmd_MenuChoice
    ; Also get the spell data
    FGet16 bc, wBattle_Buffer_ItemSpellBattleCmdAddress
    FSet16 wBattle_CopyBuffer_Source, bc
    FSet16 wBattle_Creature_Current.BattleCmd_MenuChoice, bc
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign ItemSpell_GetDataFromAddress

    ; From the spell data, get the target
    ld hl, wMenu_Battle_TableRowBuffer
    ld bc, wMenu_Battle_TableRowBuffer.ItemSpell_Target - wMenu_Battle_TableRowBuffer
    add hl, bc  ; inefficiency, could have directly loaded the address
    Mov8 wBattle_Creature_Current.BattleCmd_Target, hl

    ; From the spell data, get the energy cost
    ld hl, wMenu_Battle_TableRowBuffer
    ld bc, wMenu_Battle_TableRowBuffer.ItemSpell_Cost - wMenu_Battle_TableRowBuffer
    add hl, bc  ; inefficiency, could have directly loaded the address
    Mov8 wBattle_Creature_Current.BattleCmd_Cost, hl

    ; Check if the target is valid
    Set8 wBattle_CurCreature_Slot, BATTLE_SLOT_MAGI ; Used by Battle_Helpers_CheckValidTarget?
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret z

    ; If the target is valid, choose the best target
    call BattleScriptXX_AITarget
    ret

BattleScriptXX_Evaluate::
    ; Unused, unimplemented command
    ret


BattleScriptXX_Focus::
    ; Directs an enemy magi to focus.
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI

    ; Load creature into wBattle_Creature_Current
    call BattleScriptXX_OpenCreatureFromFrame

    ; Load the Focus command
    ld bc, BattleCmd_Table.BattleCmd_FOCUS
    FSet16 wBattle_CopyBuffer_Source, bc
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Target self
    Mov8 wBattle_Creature_Current.BattleCmd_Target, wBattle_Buffer_CreatureSlot

    ; Close the creature
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld bc, wBattle_Creature_Current
    call Battle_Init_CreatureClose
    ret


BattleScriptXX_ForgeRing::
    ; Gives a ring to Tony
    ; Arguments:
    ;   wBattle_Buffer_CreatureID  Creature ID
    ;   wBattle_Buffer_Level  Creature level
    ld hl, wBattle_Buffer_CreatureID
    Mov8 wMenu_Ringsmith_CreatureID, hl+
    Mov8 wMenu_Ringsmith_RingLevel, hl
    Do_CallForeign Call_004_5D19 ; Hook into Ringsmith code
    ret


BattleScriptXX_SummonInit:
    ; First, load the creature (magi)
    call BattleScriptXX_OpenCreatureFromFrame

    ; Select the SummonX command
    ld bc, BattleCmd_Table.BattleCmd_SUMMONX
    FSet16 wBattle_CopyBuffer_Source, bc
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Set the params and call Battle_Helpers_CheckValidTarget
    ld a, BATTLE_SLOT_MAGI
    set 7, a
    ld [wBattle_CurCreature_Slot], a
    Set8 wBattle_Creature_Current.BattleCmd_Target, Battle_TARGET_ALLYEMPTY
    Mov8 wBattle_Creature_Current.BattleCmd_Cost, wBattle_Buffer_Summon_CreatureEnergy
    Do_CallForeign Battle_Helpers_CheckValidTarget

    ; If not valid (not enough energy or no empty slots, ret)
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret z

    ; Copy from temporary buffer into Magi's Summon vars
    ; wBattle_Magi_Summon_Delay is not set here
    ; Not there is a bug here - if doing a DualSummon, only the energy cost of the last creature will be applied, and the first one will be free
    ld bc, wBattle_Magi_Summon_CreatureID
    ld hl, wBattle_Buffer_Summon_CreatureID
    LdBCIHLI
    LdBCIHLI
    LdBCIHLI

    ; Choose target summon slot (prioritize slots in order 1, 2, 3, 0)
    ; This whole section of the function is really inefficient, but hey, don't fix what's not broken...
    ld hl, wBattle_CreatureSlots.Enemy0
    ld bc, wBattle_SummonTimer.Enemy0
    ld d, $04
    ; Combine wBattle_CreatureSlots and wBattle_SummonTimer as both have to be 0 to be able to summon into the slot
    .SetupLoop:
        ld a, [bc]
        inc bc
        add [hl]
        ld [hl+], a
        dec d
        jr nz, .SetupLoop

    ; Loop through the slots to find an empty slot
    ; Find the first empty slot within 1, 2, 3
    ; If they are all non-empty, select slot 0 (we already know that we have a valid target somewhere, so we don't need to validate slot 0)
    ld hl, wBattle_CreatureSlots.Enemy1
    ld e, BATTLE_SLOT_ENEMY1
    .Loop:
        ld a, [hl+]
        and a
        jr z, .TargetFound
        inc e
        ld a, e
        cp BATTLE_SLOT_ENEMY3 + 1
        jr z, .TargetEnemy0
        jr .Loop
    .TargetEnemy0:
    ld e, BATTLE_SLOT_ENEMY0
    .TargetFound:
    Set8 wBattle_Creature_Current.BattleCmd_Target, e

    ; In the Setup, we modified wBattle_CreatureSlots, so now we need to restore the original state
    ld hl, wBattle_CreatureSlots.Enemy0
    ld bc, wBattle_SummonTimer.Enemy0
    ld d, $04
    .RemoveSetup:
        ld a, [bc]
        inc bc
        ld e, a
        ld a, [hl]
        sub e
        ld [hl+], a
        dec d
        jr nz, .RemoveSetup

    ; Close the creature
    ld a, [wBattle_Buffer_CreatureSlot]
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld bc, wBattle_Creature_Current
    call Battle_Init_CreatureClose

    ; Create a battle sparkle at the target location
    Mov8 wBattle_Actor_Target, wBattle_Creature_Current.BattleCmd_Target
    Set8 wBattle_Actor_Effect, Battle_Actor_Effect_SPARKLE
    Do_CallForeign Battle_Helpers_SetActorEffect
    ret


BattleScriptXX_SummonDelay::
    xor a
    ld [wBattle_NotEnoughEnergy], a

    call BattleScriptXX_SummonInit
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    jr nz, .Valid
    .Invalid:
        ; If the reason is because we don't have enough energy, we want to set the Magi's energy to 1 to defeat him faster, but this doesn't work (see next comment)
        ld a, [wBattle_NotEnoughEnergy]
        and a
        ret z

        ; Bug - this doesn't actually apply because we don't close the creature! We just ret instead
        xor a
        ld [wBattle_Creature_Current.CurEnergy], a
        Set8 wBattle_Creature_Current.CurEnergy + 1, 1
        ret

    .Valid:
    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_SUMMON, BATTLE_ACTOR_MAGI

    call BattleCmd_Func_CommonSummon

    FGet16 hl, $D07B
    ld bc, $D110
    call Battle_Init_CreatureCopy
    ld a, [wBattle_Creature_Current.BattleCmd_Target]
    ld c, a
    ld b, $00
    ld hl, wBattle_SummonTimer
    add hl, bc
    ld a, [$D396]
    inc a
    ld [hl], a
    ld bc, $51C2
    FSet16 wBattle_Creature_Current.BattleCmd_Function, bc
    ld a, [$D392]
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld bc, $D0D9
    call Battle_Init_CreatureCopy
    ret


BattleScriptXX_Item::
    ; Directs an enemy magi to use the specified item
    ; Unclear if there will be a bug if you try and make a creature use an item
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   dw  wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an item in Item_Table
    ;   db  wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_AllyWeakPercent

    ; Load creature into wBattle_Creature_Current
    call BattleScriptXX_OpenCreatureFromFrame

    ; Choose Item
    ld bc, BattleCmd_Table.BattleCmd_ITEM
    FSet16 wBattle_CopyBuffer_Source, bc
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Set wBattle_Creature_Current.BattleCmd_MenuChoice
    ; Also get the item data
    FGet16 bc, wBattle_Buffer_ItemSpellBattleCmdAddress
    FSet16 wBattle_CopyBuffer_Source, bc
    FSet16 wBattle_Creature_Current.BattleCmd_MenuChoice, bc
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign ItemSpell_GetDataFromAddress

    ld hl, wMenu_Battle_TableRowBuffer
    ld bc, wMenu_Battle_TableRowBuffer.ItemSpell_Target - wMenu_Battle_TableRowBuffer
    add hl, bc ; inefficiency, could have directly loaded the address
    Mov8 wBattle_Creature_Current.BattleCmd_Target, hl

    ; From the item data, get the energy cost
    ld hl, wMenu_Battle_TableRowBuffer
    ld bc, wMenu_Battle_TableRowBuffer.ItemSpell_Cost - wMenu_Battle_TableRowBuffer
    add hl, bc  ; inefficiency, could have directly loaded the address
    Mov8 wBattle_Creature_Current.BattleCmd_Cost, hl

    ; Check if the target is valid
    ; Set8 wBattle_CurCreature_Slot, BATTLE_SLOT_MAGI - this line is added for BattleScriptXX_Spell - todo is it an unnecessary line?
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret z

    ; If the target is valid, choose the best target
    call BattleScriptXX_AITarget
    ret


BattleScriptXX_FindBattleCreatureFromSlot:
    ; Based on the Creature Slot ID, locate the memory address of the creature
    ; Input:
    ;   a = wBattle_Buffer_CreatureSlot
    ; Output:
    ;   hl = Pointer to wBattle_Creature_Hero or other similar slot
    ld b, a
    ld c, BATTLE_CREATURE_SIZE
    call Math_Mult
    ld bc, wBattle_Creature_Hero
    add hl, bc
    ret


BattleScriptXX_AITarget:
    ; If the target is a multi-target, keep as is
    ld a, [wBattle_Creature_Current.BattleCmd_Target]
    cp Battle_TARGET_MANY_START
    jr nc, .Finally

    ; Or else, determine the best single target
        ld a, [wBattle_Buffer_TargetAI]
        ld c, a
        ld b, $00
        ld hl, BattleAI_Target_Table
        add hl, bc
        ECallHL

    .Finally:
    ; Done! Save the creature
    ld a, [wBattle_Buffer_CreatureSlot]
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld bc, wBattle_Creature_Current
    call Battle_Init_CreatureClose
    ret


BattleScriptXX_OpenCreatureFromFrame:
    ; Battle00_CopyDataFromFrame stores params into wBattle_Buffer
    ; Read the creature slot from this buffer
    ; Inputs:
    ;   wBattle_Buffer_CreatureSlot
    ; Outputs:
    ;   wBattle_Creature_Current primed
    ;   wBattle_CurCreature_Slot = $FF

    ; Get the pointer to the creature
    ld a, [wBattle_Buffer_CreatureSlot]
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld b, h
    ld c, l

    ; Store in wBattle_Creature_Current
    ld hl, wBattle_Creature_Current
    call Battle_Init_CreatureOpen

    Set8 wBattle_CurCreature_Slot, $FF ; Unclear utility
    ret