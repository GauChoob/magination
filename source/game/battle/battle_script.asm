Cmd_Battle_New::
    ; Starts a battle
    ; wScript_System - will continue running the script at the end of the battle (TODO to confirm)
    ; Arguments:
    ;   db          wFightscene_ArenaIndex
    ;   db          wBattle_MagiCreatureID
    ;   db          wBattle_Level
    ;   BankAddress Script that sets up the cardscene - Originally I think it handled all of the battle logic, but now it always points to TODOBattle_Fade_In
    Mov8 wHero_DoorX, wActor_Hero.XTile
    Mov8 wHero_DoorY, wActor_Hero.YTile

    SwitchRAMBank BANK("WRAM BATTLE")

    Script_ReadByte_V [wFightscene_ArenaIndex]

    ; Store the enemy magi ID
    Script_ReadByteA
    ld [wBattle_MagiCreatureID], a
    ; Set whether Tony can run from the battle (yes if no enemy magi)
    cp CreatureID_NoMagi
    jr z, .NoMagi
    .HasMagi:
        xor a
        jr .Finally
    .NoMagi:
        ld a, $01
    .Finally:
    ld [wBattle_RunEnabled], a

    ; Set the battle level for experience purposes
    Script_ReadByte_V [wBattle_Level]

    ; Cardscene setup script in Master
    ld hl, wScript_Master.Bank
    LdHLIBCI
    LdHLIBCI ; wScript_Master.Frame
    LdHLIBCI

    ; Enable loot gains
    xor a
    ld [wBattle_DisableLoot], a

    ; Move the current thread into wScript_System, and hold the thread using Cmd_Battle_NextTurn
    ; until permission is given to continue processing (when wBattle_ScriptBusy = 1)
    Set16_M wScript_Master.State, Script_Start
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Cmd_Battle_NextTurn
    Set16FF hScript_CurrentAddress, wScript_System
    call Script_Close
    XJump Cardscene_Open


Cmd_Battle_Attack::
    ; Directs an enemy creature to do the specified attack.
    ; Used only in Salafy's tutorial battle to make her creature Defend
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, e.g. BATTLE_SLOT_ENEMY0
    ;   dw  wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an attack in BattleCmd_Table
    ;   db  wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_AllyWeakPercent
    ld a, $04
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_Attack


Cmd_Battle_Auto::
    ; No more script to run ever, permanently reset wBattle_ScriptBusy for the rest of the battle
    ; Arguments:
    ;   None
    Set16FF hScript.State, Cmd_Battle_Auto
    xor a
    ld [wBattle_ScriptBusy], a
    ret


Cmd_Battle_Spell::
    ; Directs an enemy magi to do the specified attack.
    ; Unclear if there will be a bug if you try and make a creature cast a spell
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   dw  wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an attack in Spell_Table
    ;   db  wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_AllyWeakPercent
    ld a, $04
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_Spell


Cmd_Battle_Evaluate::
    ; Unimplemented, unused command
    ; Bug - bank is not set before jumping to function, will probably crash the game
    jp BattleScriptXX_Evaluate


Cmd_Battle_Focus::
    ; Directs an enemy magi to focus.
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ld a, $01
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_Focus


Cmd_Battle_NextTurn::
    ; Declares the battle script to be done, and allows the next turn to be processed
    ; The battle script will hold here until the script is allowed to turn for the next turn
    ; Arguments:
    ;   None
    .Init:
        ; Mark the script as done
        xor a
        ld [wBattle_ScriptBusy], a
        Set16FF hScript.State, .AwaitTurnEnd
        ret
    .AwaitTurnEnd:
        ; Wait until permission is given to continue running script to process next turn
        ld a, [wBattle_ScriptBusy]
        and a
        ret z
        jp Script_Start


Cmd_Battle_ForgeRing::
    ; Gives a ring to Tony
    ; Not actually used in Battle, but shares some level-up code so I guess it's kept in this section
    ; Arguments:
    ;   db  Creature ID
    ;   db  Creature level
    ld a, $02
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_ForgeRing


Cmd_Battle_SummonFast::
    ; Deprecated function, equivalent to Cmd_Battle_SummonDelay with a delay of 0
    ; Unused but functional, just hooks into same code as Cmd_Battle_SummonDelay
    ; Inputs:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   db  wBattle_Buffer_Summon_CreatureID
    ;   db  wBattle_Buffer_Summon_CreatureLevel
    ;   db  wBattle_Buffer_Summon_CreatureEnergy
    ld a, $04
    call Battle00_CopyDataFromFrame
    xor a ; Manually define the last param that didn't exist before
    ld [wBattle_Buffer_Summon_Delay], a
    jp BattleScriptXX_SummonDelay

Cmd_Battle_SummonDelay::
    ; Makes the enemy magi summon a creature
    ; Inputs:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   db  wBattle_Buffer_Summon_CreatureID
    ;   db  wBattle_Buffer_Summon_CreatureLevel
    ;   db  wBattle_Buffer_Summon_CreatureEnergy
    ;   db  wBattle_Buffer_Summon_Delay, turns before creature is summoned
    ld a, $05
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_SummonDelay


Cmd_Battle_Item::
    ; Directs an enemy magi to use the specified item
    ; Unclear if there will be a bug if you try and make a creature use an item
    ; Arguments:
    ;   db  wBattle_Buffer_CreatureSlot, i.e. BATTLE_SLOT_MAGI
    ;   dw  wBattle_Buffer_ItemSpellBattleCmdAddress, Address of an item in Item_Table
    ;   db  wBattle_Buffer_TargetAI - Desired target e.g. BattleAI_Target_AllyWeakPercent
    ld a, $04
    call Battle00_CopyDataFromFrame
    jp BattleScriptXX_Item


Cmd_Battle_ScreenWipe::
    ; Pause the game and do a white swirl, indicating the start of a battle
    ; Also, backup the current song and play a song for the battle
    ; Arguments:
    ;   dw Graphics_ScreenFX function (should be Graphics_ScreenFX_Swirl_Do) - todo are there any other valid inputs?
    ;   db songid - battle song
    ; Outputs:
    ;   wSound_SceneSongBackupID - contains the old song

    ; Store the Graphics_ScreenFX function
    Script_MovWord wGraphics_ScreenFX_Function

    ; Back-up the current song, and play the new song if it is not null 
    Mov8 wSound_SceneSongBackupID, wSound_CurrentSong
    Script_ReadByteA
    push bc
    cp SOUND_NULL
    jr z, .Skip
        Sound_Request_StartSong a
    .Skip:
    pop bc
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Script_Start
    XJump Graphics_ScreenFX_Do

Cmd_Battle_SetReturn::
    ; Sets the scripts to run at the end of the battle
    ; Arguments:
    ;   BankAddress     Win Script
    ;   BankAddress     Lose Script
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, wBattle_Return
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start

Cmd_Battle_SetEncounter::
    ; Sets up random encounters, like those in shadow geysers
    ; Arguments:
    ;   BankAddress     wEncounter_Script = Script to run when encounter triggered
    ;   Address         wEncounter_LookupTable = Table containing $10 values of random time to wait until triggering next battle (Encounter_RandomDelayTable_XX)
    Set8 wEncounter_Enabled, $01
    Set8 wEncounter_Countdown, Encounter_Countdown_UNINITIALIZED
    ld hl, wEncounter_Script
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    ld hl, wEncounter_LookupTable
    LdHLIBCI
    LdHLIBCI
    jp Script_Start


Battle00_CopyDataFromFrame::
    ; Copies "a" bytes from the reading frame into the buffer
    ; Then saves the updated frame
    ; Also conveniently changes the ROM bank to the battle bank
    ; Arguments:
    ;   a = number of bytes to copy
    ;   bc = reading frame
    ; Frame params:
    ;   db  wBattle_Buffer_CreatureSlot
    ld l, c
    ld h, b
    ld de, wBattle_Buffer
    ld c, a
    ld b, $00
    SwitchRAMBank BANK("WRAM BATTLE")
    call MemMov
    Set16FF_V hScript.Frame, hl
    Set16FF hScript.State, Script_Start
    SwitchROMBank BattleCore_BANK
    ret