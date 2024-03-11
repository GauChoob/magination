; Contains functions to backup an actor's data and then restore the data
; This is used for AI_Talker - the actor is stored and overwritten by the interrupt script, then restored when the dialogue is done

ASSERT ActorXX_BANK == BANK(@)

Actor_CheckRestore::
    ; Restores an actor from the wActor_Save if it was requested via Cmd_Actor_RestoreActorState
    ; Inputs:
    ;   wActorSave_Flags - restore if  = ActorSave_Flag_REQUEST_RESTORE

    ; Only restore if requested
    ld a, [wActorSave_Flags]
    cp ActorSave_Flag_REQUEST_RESTORE
    ret nz

    ; Mark wActor_Save as empty
    xor a  ; ActorSave_Flag_EMPTY
    ld [wActorSave_Flags], a

    ; Copy from wActor_Save to the Actor_Struct pointed to by wActorSave_SavedActorPointer
    Get16 hl, wActorSave_SavedActorPointer
    ld bc, wActor_Save
    ld e, Actor_SIZE

    .CopyLoop:
        LdHLIBCI_V
        dec e
        jr nz, .CopyLoop

    ret


Actor_StoreCopy::
    ; Saves a copy of the current actor into wActor_Save so that it can later be restored
    ; Returns:
    ;   hl = hActor_CurrentAddress

    ; Mark the wActorSave_Flags as full
    Set8 wActorSave_Flags, ActorSave_Flag_FULL

    ; Save the location of the current Actor_Struct so that the correct actor can be restored
    ldh a, [hActor_CurrentAddress]
    ld l, a
    ld [wActorSave_SavedActorPointer], a
    ldh a, [hActor_CurrentAddress + 1]
    ld h, a
    ld [wActorSave_SavedActorPointer + 1], a
    push hl

    ; Copies the current actor's Actor_Struct into wActor_Save
    ld bc, wActor_Save
    ld e, Actor_SIZE
    .CopyLoop:
        LdBCIHLI
        dec e
        jr nz, .CopyLoop

    pop hl
    ret