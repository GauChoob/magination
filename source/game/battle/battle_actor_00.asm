
Battle00_Actor_DisableScript::
    ; Disables both scripts for a target actor
    ; Inputs:
    ;   a = ID number of actor
    call Battle00_Actor_GetAddressFromID
    inc hl
    inc hl
    inc hl
    Set8 hl+, LOW(Cmd_Flow_End)
    Set8 hl+, HIGH(Cmd_Flow_End)
    ld bc, (Actor_ENUM_Script1_State - (Actor_ENUM_Script0_State + 2))
    add hl, bc
    Set8 hl+, LOW(Cmd_Flow_End)
    Set8 hl+, HIGH(Cmd_Flow_End)
    ret


Battle00_Actor_GetAddressFromID:
    ; Get the address wActor_XX.Script0, where XX = a
    ; Inputs:
    ;   a = ID number of actor
    ; Outputs:
    ;   hl = wActor_XX.Script0
    ld de, Actor_SIZE
    ld hl, wActor_00
    inc a
    .ActorGetLoop:
        dec a
        jr z, .Done
        add hl, de
        jr .ActorGetLoop
    .Done:
    ld de, Actor_ENUM_Script0
    add hl, de
    ret


Battle00_Actor_SetScript::
    ; Sets the script for a target actor
    ; Call this function via Macro Do_Battle_SetActorScript
    ; Inputs:
    ;   a = Target actor
    ;   d = Bank
    ;   bc = Frame
    push de
    call Battle00_Actor_GetAddressFromID
    pop de
    Set8 hl+, d
    Set8 hl+, c
    Set8 hl+, b
    Set8 hl+, LOW(Script_Start)
    Set8 hl+, HIGH(Script_Start)
    ret