; The table is also sometimes accessed via Fightscene_GetCreaturePointers


Creature_Table_CopyStatsToBuffer::
    ; Copies the Creature's Stats from Source to Destination
    ; Inputs:
    ;   wBattle_CopyBuffer_Source = Creature_Table row
    ;   wBattle_CopyBuffer_Destination = Temporary buffer
    FGet16 bc, wBattle_CopyBuffer_Source
    FGet16 hl, wBattle_CopyBuffer_Destination
    ld d, Creature_Table_Stats_SIZE
    .Loop:
        LdHLIBCI
        dec d
        jr nz, .Loop
    ret


Creature_Table_CopyAllToBuffer::
    ; TODO - unused? - graphics are used separately in Cardscene/Fightscene so we don't need both at once
    ; Copies the Creature's Stats and Graphics from Source to Destination
    ; Inputs:
    ;   wBattle_CopyBuffer_Source = Creature_Table row
    ;   wBattle_CopyBuffer_Destination = Temporary buffer
    FGet16 bc, wBattle_CopyBuffer_Source
    FGet16 hl, wBattle_CopyBuffer_Destination
    ld d, Creature_Table_SIZE
    .Loop:
        LdHLIBCI
        dec d
        jr nz, .Loop
    ret


Creature_Table_MagiMakeCreatureStruct::
    ; Copy an enemy magi when loading a battle
    ; This function generates a temporary Creature_Struct from the Creature_Table for the enemy magi
    ; because Battle_Flow_Init_SummonMagi needs a Creature_Struct as input
    ; Inputs:
    ;   wBattle_CopyBuffer_Source = Creature_Table row
    ;   wBattle_CopyBuffer_Destination = Temporary buffer
    FGet16 bc, wBattle_CopyBuffer_Source
    FGet16 hl, wBattle_CopyBuffer_Destination

    ; .ID <- wBattle_MagiCreatureID
    ld a, [wBattle_MagiCreatureID]
    ld [hl+], a

    ; .Type <- .Type
    LdHLIBCI

    ; .Level
    xor a
    ld [hl+], a
    ; .Experience
    ld [hl+], a
    ld [hl+], a
    ; .CurEnergy <- MaxEnergy
    inc bc
    LdHLIBCI
    LdHLIBCI
    ; .MaxEnergy <- MaxEnergy
    dec bc
    dec bc
    LdHLIBCI
    LdHLIBCI

    ; .Strength/.Skill/.Speed/.Defence/.Resist/.Luck/.EnergyUpElem/.ElementResist/.ElementWeak/.StatusImmune <- 10
    ld d, $0A
    .CopyLoop:
        LdHLIBCI
        dec d
        jr nz, .CopyLoop

    ;.StatusActive
    xor a
    ld [hl+], a
    ;.StatusPerm <- StatusPerm
    LdHLIBCI
    ;.AI <- MagiType
    LdHLIBCI
    inc bc
    inc bc
    ; .Ability0/.Ability1/.Ability2/.Ability3
    ld d, $08
    .AbilityLoop:
        LdHLIBCI
        dec d
        jr nz, .AbilityLoop
    ret


Creature_Table::
    INCLUDE "source/game/creature/creature_table.csv"