
    ; $2C97
Trigger_LoadTable::
    ; Prepares a trigger table by storing the relevant variables and
    ; running all the config scripts in the trigger table
    ; Must be called through wScript_Master with screen off
    ;
    ; Inputs:
    ;   hl = TriggerTable
    ;           db Size N
    ;           N x {
    ;                   db TRIGGER_CONFIG or TRIGGER_NORMAL
    ;                   BankAddress of trigger's script
    ;               }
    ; Outputs:
    ;   All TRIGGER_CONFIG triggers are run
    ;   wTrigger_TableSize is updated to size N
    ;   wTrigger_TableAddress points to the first trigger entry (TriggerTable+1)

    ; Close the script so we can run trigger scripts temporarily
    push hl
    call Script_Close
    SwitchROMBank Hotspot_BANK ;TODO - must=hotspot bank??
    pop hl

    ; Get the trigger table size
    ld a, [hl+]
    ld [wTrigger_TableSize], a
    and a
    jp z, .End ;Empty table, so skip
    ld c, a

    ; Store the table address
    Set16 wTrigger_TableAddress, hl

    ; Loop through every trigger, and if the trigger is TRIGGER_CONFIG, then 
    ;   run the script of the trigger now
    ; If the trigger is TRIGGER_NORMAL, then don't run the script (only when it is triggered)
    .LoopTriggers:
        SwitchROMBank Hotspot_BANK ;TODO - must=hotspot bank??
        ld a, [hl+]
        cp TRIGGER_CONFIG
        jr nz, .HandleTriggerNormal
        .HandleTriggerConfig:
            ; Run the trigger's script during setup
            Set8 wScript_System.Bank, [hl+]
            Set8 wScript_System.Frame, [hl+]
            Set8 wScript_System.Frame+1, [hl+]
            Set16_M wScript_System.State, Script_Start
            push hl
            push bc

            .DoScriptLoop:
                Script_Do wScript_System
                SwitchROMBank [wVBlank_Bank]
                Get16 hl, wVBlank_Func
                call CallHL
                ld a, [wScript_System.Frame+1] ;Exit if Frame = $0000 (after Cmd_Flow_End)
                and a
                jr nz, .DoScriptLoop

            pop bc
            pop hl
            dec c
            jr nz, .LoopTriggers
            jr .End
        .HandleTriggerNormal:
            ; Don't run the trigger during setup.
            inc hl
            inc hl
            inc hl
            dec c
            jr nz, .LoopTriggers
            ;jr .End

    .End:
    ld hl, wScript_Master
    call Script_Open
    ret
