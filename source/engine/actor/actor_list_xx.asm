; Handles a list of ActorList_SIZE == $10 activated actors
; Initializes the list when requested, and adds and removes actors to the activated stack when requested
; Runs the scripts of the activated actors

ActorListXX_AddActor::
    ; Adds an Actor so that it can run, and enables the ACTIVE flag
    ; The Actor is added to wActorList_Table, based on the list of available slots in wActorList_FreeStack/wActorList_FreeCursor
    ; This can fail if
    ;   1) The Actor to add has the DELETE flag set (happens with uninitialized Actors)
    ;   2) There are already $10 Actors (maximum reached)
    ; Inputs:
    ;   bc - WRAM address of Actor
    ; Outputs:
    ;   The Actor is added to a free slot in wActorList_Table
    ;   wActorList_FreeStack/wActorList_FreeCursor are updated to the next free slot
    ;   The Actor is marked as ACTIVE

    ; Abort if the DELETE flag is set (i.e. you didn't initialize the Actor vars first)
    ld a, [bc]
    bit Actor_FLAGS_BIT_DELETE, a
    ret z

    ; Check the stack position and abort if the stack limit has been reached
    Get16 hl, wActorList_FreeCursor
    ld a, LOW(wActorList_FreeStack.End)
    cp l
    ret z

    ; Mark the Actor as now ACTIVE
    ld a, %1 << Actor_FLAGS_BIT_ACTIVE
    ld [bc], a

    ; Get the address of the free slot in wActorList_Table from wActorList_FreeStack
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ; Store this address into the free slot in wActorList_Table
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ; Update Cursor
    Set16 wActorList_FreeCursor, hl 
    ret


ActorList_ReleaseActor::
    ; Disables the specified Actor
    ; Pushes the address of the specified Actor onto wActorList_Table,
    ; allowing this slot to be reused for a different new Actor
    ;
    ; Inputs:
    ;   hl = Slot within wActorList_Table to release
    ;   wActorList_FreeStack = contains a stack of all the free slots
    ; Outputs:
    ;   hl pushed to wActorList_FreeStack
    ;   [hl] set to null

    ; push hl onto wActorList_FreeStack
    Get16 bc, wActorList_FreeCursor
    dec bc
    ld a, h
    ld [bc], a
    dec bc
    ld a, l
    ld [bc], a
    Set16 wActorList_FreeCursor, bc

    ; Set the slot in wActorList_Table to $0000 (null)
    xor a
    inc hl
    ld [hl-], a
    ld [hl], a
    ret


ActorList_Run::
    ; Iterates over the $10 Actors in wActorList_Table
    ;   1) Skips null Actors
    ;   2) Deletes Actors with DELETE flag enabled
    ;           wActorList_Table and wActorList_FreeStack are updated to allow for a new Actor to eventually replace the old one
    ;   3) Runs the rest of the Actors
    ;   4) Sorts wActorList_Table in decrementing value of hActor_ScreenY
    ;   5) Does Actor_CheckRestore to restore any actors that were saved due to dialogue and need to be restored
    ;
    ; Inputs:
    ;   wActorList_Table - list of up to $10 Actors
    ;
    ld a, $FF
    ldh [hActor_ScreenY], a
    ldh [hActor_ScreenYPrev], a
    ld de, wActorList_Table ;de will point to the Previous actor (exceptionally points to the same Actor for the first loop) - we could remove this line since no swaps occur in the first loop
    ld hl, wActorList_Table ;hl will point to the Current actor

    ; For each Actor in the table
    .LoopTable:
        ; Check if the entry actually points to an Actor. Skip if null
        inc hl
        ld a, [hl-]
        and a
        jr z, .Skip ;If HIGH(Entry) == $00, then there is no entry, so skip

        push de
        push hl

            ; Deref hl to point to the Actor_Struct
            DerefHL

            ; Store the address of Actor_Struct in bc
            ld b, h
            ld c, l

            ; If the DELETE flag is enabled, disable the Actor
            ld a, [hl+]  ; Actor_Flags
            bit Actor_FLAGS_BIT_DELETE, a
            jr nz, .DisableActor

            .ProcessActor:
                ; Run the Actor
                DerefHL  ; Actor_State
                call CallHL ; Run the Actor_State function which controls the Actor's behaviour

                pop hl
                pop de

                ; Fix the order of the Actors so that higher Y is on top
                ; Earlier in OAM = on top
                ; So we want the Y in decreasing order
                Get8FF b, hActor_ScreenY
                ldh a, [hActor_ScreenYPrev]
                sub b
                jr nc, .SetupNextActor ; PrevY >= CurY, so no need to fix the order

                .SwapActors:
                    ; PrevY < CurY
                    ; Therefore we need to swap the position of the two actors
                    ; to fix the Z-orders

                    ; bc = [de]
                    ld a, [de]
                    inc de
                    ld c, a
                    ld a, [de]
                    dec de
                    ld b, a
                    ; [de] = [hl]
                    ld a, [hl+]
                    ld [de], a
                    inc de
                    ld a, [hl-]
                    ld [de], a
                    ; [hl] = bc
                    ld a, c
                    ld [hl+], a
                    ld a, b
                    ld [hl-], a
                    jr .SetupNextActor

            .DisableActor:
                ; Unmark the actor as active
                res Actor_FLAGS_BIT_ACTIVE, a
                dec hl
                ld [hl], a  ; Actor_Flags

                pop hl
                pop de
                call ActorList_ReleaseActor
                jr .Skip

        .SetupNextActor:
            ld d, h
            ld e, l
        .Skip:
            inc hl
            inc hl
            ld a, LOW(wActorList_Table.End)
            cp l
            jr nz, .LoopTable
    call Actor_CheckRestore
    ret


ActorList_Init::
    ; Initializes wActorList_Table, wActorList_FreeStack
    ; Sets the DELETE flag and resets the ACTIVE flag of all Actors (bug - except for wActor_2F)
    ; i.e. a new blank slate to fill in Actors for a new Scene
    ; Inputs:
    ;   None
    ; Outputs:
    ;   wActorList_Table set to $00
    ;   wActorList_FreeStack/wActorList_FreeStack has all $10 slots of the wActorList_Table pushed
    ;   
    
    ; Set wActorList_Table to null ($00)
    ld b, ActorList_SIZE
    xor a
    ld hl, wActorList_Table
    .TableLoop:
        ld [hl+], a  ;Fill each slot with $0000
        ld [hl+], a
        dec b
        jr nz, .TableLoop

    ; Push the $10 empty slot addresses into the stack
    ld b, ActorList_SIZE
    ld de, wActorList_Table
    ld hl, wActorList_FreeStack
    .StackLoop:
        ld a, e
        ld [hl+], a
        ld a, d
        ld [hl+], a
        inc de
        inc de
        dec b
        jr nz, .StackLoop
    Set16_M wActorList_FreeCursor, wActorList_FreeStack

    ; Disable all the actors
    ld hl, wActor_RAM
    ld de, Actor_SIZE ; Size of 1 entry
    IF FIX_BUGS == 0
        ld c, Actor_COUNT-1   ; Bug - This actually only erases the first 49 entries and accidentally skips the last entry (50th entry)
    ELSE
        ld c, Actor_COUNT
    ENDC
    .ActorRAMLoop:
        set Actor_FLAGS_BIT_DELETE, [hl] ; Deleted
        res Actor_FLAGS_BIT_ACTIVE, [hl] ; Not active
        add hl, de
        dec c
        jr nz, .ActorRAMLoop
    ret