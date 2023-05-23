SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

; Contains Actor
; Cmd Table
; Some extra Cmd code
; AI

    ; Actor_Activate.s

    ; $4000
Actor_CheckRestore::
    ; Restores an actor from the wActor_Save if it was requested via Cmd_Actor_RestoreActorState
    ; Inputs:
    ;   wActor_SaveFlag - restore if  = Actor_SaveFlag_REQUEST_RESTORE

    ; Only restore if requested
    ld a, [wActor_SaveFlag]
    cp Actor_SaveFlag_REQUEST_RESTORE
    ret nz

    ; Mark wActor_Save as empty
    xor a  ; Actor_SaveFlag_EMPTY
    ld [wActor_SaveFlag], a

    ; Copy from wActor_Save to the Actor_Struct pointed to by wActor_SavedActor
    Get16 hl, wActor_SavedActor
    ld bc, wActor_Save
    ld e, Actor_SIZE

    .CopyLoop:
        LdHLIBCI_V
        dec e
        jr nz, .CopyLoop

    ret

    ; $401E
Actor_StoreCopy::
    ; Saves a copy of the current actor into wActor_Save so that it can later be restored
    ; Returns:
    ;   hl = hActor_CurrentAddress

    ; Mark the wActor_SaveFlag as full
    Set8 wActor_SaveFlag, Actor_SaveFlag_FULL

    ; Save the location of the current Actor_Struct so that the correct actor can be restored
    ldh a, [hActor_CurrentAddress]
    ld l, a
    ld [wActor_SavedActor], a
    ldh a, [hActor_CurrentAddress+1]
    ld h, a
    ld [wActor_SavedActor + 1], a
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

    ; Actorlist.s

    ; $403D
Actor_AddActor::
    ; Adds an Actor so that it can run, and enables the ACTIVE flag
    ; The Actor is added to wActorlist_Table, based on the list of available slots in wActorlist_FreeStack/wActorlist_FreeCursor
    ; This can fail if
    ;   1) The Actor to add has the DELETE flag set (happens with uninitialized Actors)
    ;   2) There are already $10 Actors (maximum reached)
    ; Inputs:
    ;   bc - WRAM address of Actor
    ; Outputs:
    ;   The Actor is added to a free slot in wActorlist_Table
    ;   wActorlist_FreeStack/wActorlist_FreeCursor are updated to the next free slot
    ;   The Actor is marked as ACTIVE

    ; Abort if the DELETE flag is set (i.e. you didn't initialize the Actor vars first)
    ld a, [bc]
    bit Actor_FLAGS_BIT_DELETE, a
    ret z

    ; Check the stack position and abort if the stack limit has been reached
    Get16 hl, wActorlist_FreeCursor
    ld a, LOW(wActorlist_FreeStack.End)
    cp l
    ret z

    ; Mark the Actor as now ACTIVE
    ld a, %1 << Actor_FLAGS_BIT_ACTIVE
    ld [bc], a

    ; Get the address of the free slot in wActorlist_Table from wActorlist_FreeStack
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ; Store this address into the free slot in wActorlist_Table
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ; Update Cursor
    Set16 wActorlist_FreeCursor, hl 
    ret

    ; $4062
Actorlist_ReleaseActor::
    ; Disables the specified Actor
    ; Pushes the address of the specified Actor onto wActorlist_Table,
    ; allowing this slot to be reused for a different new Actor
    ;
    ; Inputs:
    ;   hl = Slot within wActorlist_Table to release
    ;   wActorlist_FreeStack = contains a stack of all the free slots
    ; Outputs:
    ;   hl pushed to wActorlist_FreeStack
    ;   [hl] set to null

    ; push hl onto wActorlist_FreeStack
    Get16 bc, wActorlist_FreeCursor
    dec bc
    ld a, h
    ld [bc], a
    dec bc
    ld a, l
    ld [bc], a
    Set16 wActorlist_FreeCursor, bc

    ; Set the slot in wActorlist_Table to $0000 (null)
    xor a
    inc hl
    ld [hl-], a
    ld [hl], a
    ret

    ; $407D
Actorlist_Run::
    ; Iterates over the $10 Actors in wActorlist_Table
    ;   1) Skips null Actors
    ;   2) Deletes Actors with DELETE flag enabled
    ;           wActorlist_Table and wActorlist_FreeStack are updated to allow for a new Actor to eventually replace the old one
    ;   3) Runs the rest of the Actors
    ;   4) Sorts wActorlist_Table in decrementing value of hActor_ScreenY
    ;   5) TODO does "Actor_CheckRestore"
    ; Additionally, special check to see if wActor_Save should run
    ;
    ; Inputs:
    ;   wActorlist_Table - list of up to $10 Actors
    ;
    ld a, $FF
    ldh [hActor_ScreenY], a
    ldh [hActor_ScreenYPrev], a
    ld de, wActorlist_Table ;de will point to the Previous actor (exceptionally points to the same Actor for the first loop) - we could remove this line since no swaps occur in the first loop
    ld hl, wActorlist_Table ;hl will point to the Current actor

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
                ; Update an UNKNOWN TODO flag
                res Actor_FLAGS_BIT_ACTIVE, a ; TODO confirm flag function
                dec hl
                ld [hl], a  ; Actor_Flags

                pop hl
                pop de
                call Actorlist_ReleaseActor
                jr .Skip

        .SetupNextActor:
            ld d, h
            ld e, l
        .Skip:
            inc hl
            inc hl
            ld a, LOW(wActorlist_Table.End)
            cp l
            jr nz, .LoopTable
    call Actor_CheckRestore
    ret

    ; $40D3
Actorlist_Init::
    ; Initializes wActorlist_Table, wActorlist_FreeStack
    ; Sets the DELETE flag and resets the ACTIVE flag of all Actors (bug - except for wActor_2F)
    ; i.e. a new blank slate to fill in Actors for a new Scene
    ; Inputs:
    ;   None
    ; Outputs:
    ;   wActorlist_Table set to $00
    ;   wActorlist_FreeStack/wActorlist_FreeStack has all $10 slots of the wActorlist_Table pushed
    ;   
    
    ; Set wActorlist_Table to null ($00)
    ld b, Actorlist_SIZE
    xor a
    ld hl, wActorlist_Table
    .TableLoop:
        ld [hl+], a  ;Fill each slot with $0000
        ld [hl+], a
        dec b
        jr nz, .TableLoop

    ; Push the $10 empty slot addresses into the stack
    ld b, Actorlist_SIZE
    ld de, wActorlist_Table
    ld hl, wActorlist_FreeStack
    .StackLoop:
        ld a, e
        ld [hl+], a
        ld a, d
        ld [hl+], a
        inc de
        inc de
        dec b
        jr nz, .StackLoop
    Set16_M wActorlist_FreeCursor, wActorlist_FreeStack

    ; Disable all the actors
    ld hl, wActor_RAM
    ld de, Actor_SIZE ;Size of 1 entry
    ld c, Actor_COUNT-1   ;Bug - This actually only erases the first 49 entries and accidentally skips the last entry (50th entry)
    .ActorRAMLoop:
        set Actor_FLAGS_BIT_DELETE, [hl] ;Deleted
        res Actor_FLAGS_BIT_ACTIVE, [hl] ;Not active
        add hl, de
        dec c
        jr nz, .ActorRAMLoop
    ret

    ; $410A
Actor_ScriptClose::
    ; After calling the Script_Play, save the Actor's current state back to the WRAM entry
    ; Inputs:
    ;   hActor_CurrentAddress = WRAM address of opened Actor
    ; Outputs:
    ;   The Actor is saved back into the Actor_Struct at hActor_CurrentAddress
    ldh a, [hActor_CurrentAddress]
    ld l, a
    ldh a, [hActor_CurrentAddress+1]
    ld h, a
    ldh a, [hActor.Flags]
    ld [hl+], a
    ldh a, [hActor.State]
    ld [hl+], a
    ldh a, [hActor.State+1]
    ld [hl+], a
    ldh a, [hActor.XOffset]
    ld [hl+], a
    ldh a, [hActor.YOffset]
    ld [hl+], a
    ldh a, [hActor.XTile]
    ld [hl+], a
    ldh a, [hActor.YTile]
    ld [hl+], a
    ldh a, [hActor.TileAddress]
    ld [hl+], a
    ldh a, [hActor.TileAddress+1]
    ld [hl+], a
    ldh a, [hActor.SpriteBase]
    ld [hl+], a
    ret

    ; $412F
Actor_ScriptOpen::
    ; Before calling Script_Play, copy the Actor into HRAM
    ; Sets wColl_XMove/wColl_YMove to 0 (delta movement)
    ; 
    ; Inputs:
    ;   bc = WRAM address of Actor
    ; Ouputs:
    ;   hActor is ready
    ;   hActor_CurrentAddress = WRAM address of Actor
    ;   wColl_XMove/wColl_YMove = 0
    ;   bc = hActor.State
    ld h, b
    ld l, c
    Set16FF hActor_CurrentAddress, hl
    ld a, [hl+]
    ldh [hActor.Flags], a
    ld a, [hl+]
    ldh [hActor.State], a
    ld a, [hl+]
    ldh [hActor.State+1], a
    ld a, [hl+]
    ldh [hActor.XOffset], a
    ld a, [hl+]
    ldh [hActor.YOffset], a
    ld a, [hl+]
    ldh [hActor.XTile], a
    ld a, [hl+]
    ldh [hActor.YTile], a
    ld a, [hl+]
    ldh [hActor.TileAddress], a
    ld a, [hl+]
    ldh [hActor.TileAddress+1], a
    ld a, [hl+]
    ldh [hActor.SpriteBase], a
    xor a
    ld [wColl_XMove], a
    ld [wColl_YMove], a
    ret


    db $11                                        ; $415D: $11

    db $04

    ld b, $03                                     ; $415F: $06 $03
    add hl, bc                                    ; $4161: $09
    db $10                                        ; $4162: $10
    ld a, [bc]                                    ; $4163: $0A
    dec bc                                        ; $4164: $0B
    ld c, $0C                                     ; $4165: $0E $0C
    ld [$0907], sp                                ; $4167: $08 $07 $09
    inc c                                         ; $416A: $0C
    inc bc                                        ; $416B: $03
    inc b                                         ; $416C: $04
    ld c, b                                       ; $416D: $48
    ld e, $43                                     ; $416E: $1E $43
    ld c, b                                       ; $4170: $48
    ld l, c                                       ; $4171: $69
    inc [hl]                                      ; $4172: $34
    ld [hl], b                                    ; $4173: $70
    sub [hl]                                      ; $4174: $96
    sub [hl]                                      ; $4175: $96
    cp e                                          ; $4176: $BB
    ld b, e                                       ; $4177: $43
    ld l, c                                       ; $4178: $69
    ld b, e                                       ; $4179: $43
    cp e                                          ; $417A: $BB
    inc a                                         ; $417B: $3C
    ld d, $48                                     ; $417C: $16 $48
    pop hl                                        ; $417E: $E1
    ld b, e                                       ; $417F: $43
    ld c, b                                       ; $4180: $48
    ld l, c                                       ; $4181: $69
    ld c, b                                       ; $4182: $48
    ld d, $70                                     ; $4183: $16 $70
    or h                                          ; $4185: $B4
    sub [hl]                                      ; $4186: $96
    cp e                                          ; $4187: $BB
    ld c, b                                       ; $4188: $48
    ld l, c                                       ; $4189: $69
    jp $3CBB                                      ; $418A: $C3 $BB $3C


    or h                                          ; $418D: $B4
    inc a                                         ; $418E: $3C
    jp nc, $36E1                                  ; $418F: $D2 $E1 $36

    pop hl                                        ; $4192: $E1
    inc [hl]                                      ; $4193: $34
    ld [hl], b                                    ; $4194: $70
    or h                                          ; $4195: $B4
    inc [hl]                                      ; $4196: $34
    cp $48                                        ; $4197: $FE $48
    ld [hl], $C3                                  ; $4199: $36 $C3
    pop hl                                        ; $419B: $E1
    or h                                          ; $419C: $B4
    xor h                                         ; $419D: $AC
    jp nc, $FFE1                                  ; $419E: $D2 $E1 $FF

    pop hl                                        ; $41A1: $E1
    and h                                         ; $41A2: $A4
    ret nz                                        ; $41A3: $C0

    or h                                          ; $41A4: $B4
    and h                                         ; $41A5: $A4
    cp $C8                                        ; $41A6: $FE $C8
    rst $38                                       ; $41A8: $FF
    jp $FAE1                                      ; $41A9: $C3 $E1 $FA


    ld d, $C7                                     ; $41AC: $16 $C7
    and a                                         ; $41AE: $A7
    ret nz                                        ; $41AF: $C0

    ld a, [wTextbox_Position]                                 ; $41B0: $FA $EE $C6
    cp $00                                        ; $41B3: $FE $00
    ret nz                                        ; $41B5: $C0

    ld a, $FF                                     ; $41B6: $3E $FF
    ld [$C6D7], a                                 ; $41B8: $EA $D7 $C6
    ld a, [$C6DB]                                 ; $41BB: $FA $DB $C6
    ld [wScript_System.Bank], a                                 ; $41BE: $EA $14 $C7
    ld a, [$C6DC]                                 ; $41C1: $FA $DC $C6
    ld [$C715], a                                 ; $41C4: $EA $15 $C7
    ld a, [$C6DD]                                 ; $41C7: $FA $DD $C6
    ld [$C716], a                                 ; $41CA: $EA $16 $C7
    ld a, $66                                     ; $41CD: $3E $66
    ld [$C717], a                                 ; $41CF: $EA $17 $C7
    ld a, $0A                                     ; $41D2: $3E $0A
    ld [$C718], a                                 ; $41D4: $EA $18 $C7
    ret                                           ; $41D7: $C9


Jump_001_41D8:
    ldh a, [hActor.TileAddress+1]                                  ; $41D8: $F0 $94
    ld h, a                                       ; $41DA: $67
    ldh a, [hActor.TileAddress]                                  ; $41DB: $F0 $93
    ld l, a                                       ; $41DD: $6F
    SwitchRAMBank $05
    ld a, [hl]                                    ; $41E5: $7E
    cp $82                                        ; $41E6: $FE $82
    ret nz                                        ; $41E8: $C0

    ld a, [$C716]                                 ; $41E9: $FA $16 $C7
    and a                                         ; $41EC: $A7
    ret nz                                        ; $41ED: $C0

    ld a, [$C6D7]                                 ; $41EE: $FA $D7 $C6
    and a                                         ; $41F1: $A7
    jp z, $41AB                                   ; $41F2: $CA $AB $41

    cp $FF                                        ; $41F5: $FE $FF
    jr z, jr_001_41FE                             ; $41F7: $28 $05

    dec a                                         ; $41F9: $3D
    ld [$C6D7], a                                 ; $41FA: $EA $D7 $C6
    ret                                           ; $41FD: $C9


jr_001_41FE:
    FGet16 hl, $C6D9                                  ; $41FE: $21 $D9 $C6
    call Math_RandomIncrement                                    ; $4204: $CD $4F $05
    and $0F                                       ; $4207: $E6 $0F
    ld e, a                                       ; $4209: $5F
    ld d, $00                                     ; $420A: $16 $00
    add hl, de                                    ; $420C: $19
    ld a, [hl]                                    ; $420D: $7E
    ld [$C6D7], a                                 ; $420E: $EA $D7 $C6
    ret                                           ; $4211: $C9


Call_001_4212:
    ld a, [$C6D8]                                 ; $4212: $FA $D8 $C6
    and a                                         ; $4215: $A7
    ret z                                         ; $4216: $C8

    ldh a, [$FFA8]                                  ; $4217: $F0 $A8
    and $03                                       ; $4219: $E6 $03
    cp $03                                        ; $421B: $FE $03
    ret nz                                        ; $421D: $C0

    jp Jump_001_41D8                              ; $421E: $C3 $D8 $41


Call_001_4221:
    ld a, [$C6D8]                                 ; $4221: $FA $D8 $C6
    and a                                         ; $4224: $A7
    ret z                                         ; $4225: $C8

    ldh a, [$FFA8]                                  ; $4226: $F0 $A8
    and $01                                       ; $4228: $E6 $01
    ret nz                                        ; $422A: $C0

    jp Jump_001_41D8                              ; $422B: $C3 $D8 $41

    ; source/engine/hotspot/hotspot.s

    ; $422E
HotspotX_CheckHotspot::
    ; Checks if the current actor is standing on a hotspot, and activates the hotspot
    ; if all activation conditions are passed
    ;
    ; Inputs:
    ;   $C716 ?TODO
    ;   wColl_XMove + wColl_XDelta
    ;   wColl_YMove + wColl_YDelta
    ;   wHotspot_Table, wHotspot_TableSize
    ;   wHotspotCurrent
    ;   hActor.TileAddress
    ; Outputs:
    ;   A hotspot is activated if:
    ;       The hero is standing on a hotspot id
    ;       The hotspot id is < wHotspot_TableSize
    ;       The new hotspot id != wHotspotCurrent
    ;       The hotspot's trigger condition direction is respected
    ;       TODO $C716 ?
    ;   If the hotspot is activated
    ;       wHotspotCurrent = hotspot id
    ;       The hotspot's script BankAddress is set via Hotspot_SetScript,
    ;           which sets wScript_System
    ;   If the tile is not a hotspot,
    ;       wHotspotCurrent = HOTSPOT_NULL
    
    ; TODO
    ; Abort if ?
    ld a, [$C716]                                 ; $422E: $FA $16 $C7
    and a                                         ; $4231: $A7
    ret nz                                        ; $4232: $C0

    ; TODO
    ; Abort if the player has not moved
    SwitchRAMBank BANK(wCollisionMap)
    Get8 c, wColl_XMove
    ld a, [wColl_XDelta]                                 ; $423E: $FA $D0 $C6
    add c                                         ; $4241: $81
    ld c, a                                       ; $4242: $4F
    Get8 b, wColl_YMove
    ld a, [wColl_YDelta]                                 ; $4247: $FA $D1 $C6
    add b                                         ; $424A: $80
    ld b, a                                       ; $424B: $47
    or c                                          ; $424C: $B1
    ret z                                         ; $424D: $C8

    ; If the current tile is not a hotspot tile, set the hotspot to null
    Get8 e, wHotspot_TableSize
    FGet16 hl, hActor.TileAddress
    ld d, [hl]
    ld a, d
    and $C0 ; Hotspot tile is defined as %11XXXXXX, where %XXXXXX is the hotspot id
    cp $C0
    jr nz, .NotHotspot

    ; Abort if the hotspot id >= table size
    ld a, d
    and %00111111
    ld d, a
    cp e
    ret nc ; BUG - wHotspotCurrent should probably be updated anyways instead of immediately returning

    ; Abort if the hotspot id has not changed from previous
    ld a, [wHotspotCurrent]
    cp d
    ret z

    ; hl + 4*hotspot_id
    Get16 hl, wHotspot_Table
    ld a, d
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

    ; Determine the hotspot trigger type
    call Hotspot_GetType
    cp HOTSPOT_TRIGGER_NORTH
        jr z, .CheckTriggerNorth
    cp HOTSPOT_TRIGGER_SOUTH
        jr z, .CheckTriggerSouth
    cp HOTSPOT_TRIGGER_EAST
        jr z, .CheckTriggerEast
    cp HOTSPOT_TRIGGER_WEST
        jr z, .CheckTriggerWest
    ; HOTSPOT_TRIGGER_ALL
        ; Always activate so skip the check
        jr .HotspotActivated

    ; Depending on the trigger direction, get either the X or Y movement
    ; and check if the sign of the movement is in the desired direction
    .CheckTriggerNorth:
        ld a, b ; wColl_YMove + wColl_YDelta
        jr .CheckIsNegative
    .CheckTriggerSouth:
        ld a, b ; wColl_YMove + wColl_YDelta
        jr .CheckIsPositive
    .CheckTriggerEast:
        ld a, c ; wColl_XMove + wColl_XDelta
        jr .CheckIsPositive
    .CheckTriggerWest:
        ld a, c ; wColl_XMove + wColl_XDelta
        jr .CheckIsNegative

    ; Check if the desired value has the right sign
    .CheckIsPositive:
        and a
        ret z
        bit 7, a
        jr z, .HotspotActivated
        ret ; n.b. wHotspotCurrent is not updated so that the hotspot can still activate if the hero changes direction
    .CheckIsNegative:
        and a
        ret z
        bit 7, a
        jr nz, .HotspotActivated
        ret ; n.b. wHotspotCurrent is not updated so that the hotspot can still activate if the hero changes direction

    .HotspotActivated:
        ; Valid, new hotspot, with the hero walking in the right direction
        Set8 wHotspotCurrent, d
        call Hotspot_SetScript
        ld a, $66                                     ; $42B2: $3E $66
        ld [$C717], a                                 ; $42B4: $EA $17 $C7
        ld a, $0A                                     ; $42B7: $3E $0A
        ld [$C718], a                                 ; $42B9: $EA $18 $C7
        ret                                           ; $42BC: $C9


    .NotHotspot:
        ; Tile is not a hotspot, so current hotspot is null
        Set8 wHotspotCurrent, HOTSPOT_NULL
        ret

DEF ScriptXX_BANK EQU $01 ;TODO make it refer to a non-constant
ASSERT ScriptXX_BANK == BANK(@)

Script_Table::
    ; $42C3
    dw Cmd_Actor_HeroFromDoor            ; $00
    dw Cmd_Actor_HeroToDoor ; $01
    dw Cmd_Actor_HeroToRelativeDoor            ; $02
    dw $0B22
    dw $0B72
    dw Cmd_Actor_ThatActorInit ; $05
    dw Cmd_Actor_ThatActorTeleportToThatActor ; $06
    dw Cmd_Actor_ThatActorSetAI ; $07
    dw Cmd_Actor_ThatActorSetLoc ; $08
    dw Cmd_Actor_ThatActorSetScript ; $09
    dw Cmd_Actor_ThatActorSetSpriteBase ; $0A
    dw Cmd_Actor_ThatActorStart ; $0B
    dw Cmd_Actor_ThatActorDelete ; $0C
    dw $0C43
    dw $0C49
    dw Cmd_Actor_ThisActorTeleportToThatActor ; $0F

    dw Cmd_Actor_ThisActorNewState ;$10
    dw $0C7E
    dw Cmd_Actor_RestoreActorState ; $12
    dw Cmd_Actor_ThisActorSetAI ; $13
    dw Cmd_Actor_ThisActorSetAnimSingle ; $14
    dw Cmd_Actor_ThisActorSetAnimDelay ; $15
    dw Cmd_Actor_ThisActorSetAnimScroll ; $16
    dw Cmd_Actor_ThisActorSetLoc ; $17
    dw Cmd_Actor_ThisActorSetSpriteBase ; $18
    dw Cmd_Actor_ThisActorDelete ; $19
    dw Cmd_Actor_ThisActorWaitTile  ; $1A

    dw Cmd_Sound_PlaySFX0      ; $1B
    dw Cmd_Sound_PlaySFX1      ; $1C
    dw Cmd_Sound_SongPause_Bugged  ; $1D
    dw Cmd_Sound_SongResume        ; $1E
    dw Cmd_Sound_SongStart         ; $1F
    dw Cmd_Sound_FanfareStart      ; $20
    dw Cmd_Sound_SongStop          ; $21
    dw Cmd_Sound_SetSongVolume      ; $22
    dw Cmd_Sound_FadeInSong        ; $23
    dw Cmd_Sound_FadeOutSong       ; $24

    dw Cmd_Battle_New ; $25
    dw $0F31
    dw $0F39  ;BattleDoneLoading?
    dw $0F46
    dw $0F4E
    dw $0F51
    dw $0F59
    dw $0F6E
    dw $0F76
    dw $0F82 ;This defines a single monster from an encounter
    dw $0F8A

    dw Cmd_Battle_Swirl            ; $30 -todo maybe this should be a graphics function instead
    dw $0FDF
    dw $0FFE
    dw $1049
    dw MagiOp_34_LoadSideScroller
    dw $1088
    dw $11F6
    dw $1207
    dw $10AF
    dw $110C
    dw $1151
    dw $1162
    dw $1173
    dw $11A8
    dw $11B9
    dw $11CA

    dw Cmd_Flow_Delay     ; $40
    dw Cmd_Flow_RandDelay                         ; $41
    dw Cmd_Flow_End       ; $42
    dw Cmd_Flow_LongJumpIf  ; $43
    dw Cmd_Flow_InitSkip         ; $44
    dw Cmd_Flow_LongJump          ; $45
    dw Cmd_Flow_LocalJump     ; $46
    dw Cmd_Flow_RandLongJump  ; $47
    dw Cmd_Flow_Pass          ; $48
    dw Cmd_Flow_SwitchRange   ; $49
    dw Cmd_Flow_ResetScript    ; $4A
    dw Cmd_Flow_Switch        ; $4B

    dw Cmd_Frame_SpriteDraw  ; $4C
    dw Cmd_Frame_SpriteBlock ; $4D
    dw Cmd_Frame_SpriteInvisible  ; $4E
    dw Cmd_Frame_OverlayDraw  ; $4F
    dw Cmd_Frame_OverlayInit            ; $50
    dw Cmd_Frame_OverlayInvisible    ; $51

    dw Cmd_Global_ClearSync   ; $52
    dw Cmd_Global_SetAnyEventMaster ; $53
    dw Cmd_Global_SetAnyEventScroll ; $54
    dw Cmd_Global_SetAnyEventText ; $55
    dw Cmd_Global_SetEventMaster  ; $56
    dw Cmd_Global_SetEventScroll  ; $57
    dw Cmd_Global_SetEventText  ; $58
    dw Cmd_Global_SetScriptMaster  ; $59
    dw Cmd_Global_SetScriptScroll  ; $5A
    dw Cmd_Global_SetScriptText ; $5B
    dw Cmd_Global_Sync  ; $5C
    dw Cmd_Global_WaitAnyEventMaster ; $5D
    dw Cmd_Global_WaitAnyEventScroll ; $5E
    dw Cmd_Global_WaitAnyEventText ; $5F
    dw Cmd_Global_WaitEventMaster            ; $60
    dw Cmd_Global_WaitEventScroll  ; $61
    dw Cmd_Global_WaitEventText  ; $62

    dw Cmd_Load_LargeStaticTilemap  ; $63
    dw Cmd_Load_Hotspots       ; $64
    dw Cmd_Load_Scene ; $65
    dw Cmd_Load_SpritePalette ; $66
    dw Cmd_Load_Map ; $67
    dw Cmd_Load_MapMask ; $68
    dw Cmd_Load_Triggers ; $69
    dw Cmd_Load_BitmapSet ;$6A
    dw Cmd_Load_Bitmap ; $6B
    dw $1A16 ; $6C
    dw $1A44 ; $6D

    dw Cmd_Palette_ClearBase        ; $6E
    dw Cmd_Palette_ClearAnim        ; $6F
    dw Cmd_Palette_CreatureCycle    ; $70
    dw Cmd_Palette_CreatureFadeUniColor ; $71
    dw Cmd_Palette_CreatureFadeMultiColor ; $72
    dw Cmd_Palette_CreatureLoad     ; $73
    dw Cmd_Palette_CreatureFlash    ; $74
    dw Cmd_Palette_CreatureInvert   ; $75
    dw Cmd_Palette_FadeAnimToBase   ; $76
    dw Cmd_Palette_FadeAnimToColor  ; $77
    dw Cmd_Palette_Load             ; $78
    dw Cmd_Palette_Refresh          ; $79
    dw Cmd_Palette_Cycle            ; $7A
    dw Cmd_Palette_Invert           ; $7B

    dw Cmd_Scroll_CameraSeekPos         ; $7C
    dw Cmd_Scroll_CameraSeekActor ; $7D
    dw Cmd_Scroll_TransplantMap ; $7E
    dw Cmd_Scroll_TransplantMapMask ; $7F

    dw Cmd_Scroll_TransplantTile            ; $80
    dw $1DE1
    dw Cmd_Scroll_HeroSetCamera  ;$82
    dw Cmd_Scroll_ScrollMap  ;$83
    dw Cmd_Scroll_SetCamera  ; $84
    
    dw $1EE7
    dw Cmd_System_SceneUnknownNew  ; $86
    dw $1FAF
    dw $1FD4
    dw Cmd_System_LoadGame ; $89
    dw Cmd_System_CopyLoadGame ; $8A
    dw $2045
    dw Cmd_System_MusicMenu ; $8C
    dw $2070
    dw $2089
    dw $20C8

    dw $20DA            ; $90
    dw Cmd_System_NewGame  ; $91
    dw Cmd_System_SaveGame ; $92
    dw Cmd_System_SceneNew ; $93
    dw Cmd_System_SceneReady ; $94
    dw Cmd_System_SetItemSpellMapError ; $95
    dw Cmd_System_SaveLocation ; $96
    dw Cmd_System_Reboot ; $97

    dw Cmd_Textbox_FormatChar ; $98
    dw Cmd_Textbox_Clear ; $99
    dw Cmd_Textbox_Close ; $9A
    dw Cmd_Textbox_Icon  ; $9B
    dw Cmd_Textbox_Menu ; $9C
    dw Cmd_Textbox_Open ; $9D
    dw Cmd_Textbox_FormatWord ;$9E
    dw Cmd_Textbox_Write ; $9F

    dw Cmd_Trigger_ToggleAlways  ; $A0
    dw Cmd_Trigger_ToggleOnce ; $A1
    dw Cmd_Trigger_TriggerAlways ; $A2
    dw Cmd_Trigger_TriggerOnce ; $A3
    dw Cmd_Trigger_Treasure    ; $A4

    dw Cmd_Ram_VarBitExpr    ; $A5
    dw Cmd_Ram_VarByteExpr    ; $A6
    dw Cmd_Ram_VarWordExpr    ; $A7
    dw Cmd_Ram_NextGameCount    ; $A8
    dw Cmd_Ram_SetGameCount    ; $A9
    dw Cmd_Ram_SetWramByte    ; $AA
    dw Cmd_Ram_SetWramWord    ; $AB
    dw Cmd_Ram_SetXramByte    ; $AC
    dw Cmd_Ram_SetXramWord    ; $AD
    dw Cmd_Ram_AndXramByte    ; $AE
    dw Cmd_Ram_OrXramByte    ; $AF


ASSERT BANK(@) == ScriptXX_BANK
    ; $4423
ActorXX_HeroFromDoorXX::
    ; Teleport the Hero to the X and Y coordinates specified by a Cmd_Actor_HeroToDoor
    ; Useful to set the Hero to specific tile when loading a new scene
    ; Also sets wHotspotCurrent to null
    ; Inputs:
    ;   wHero_DoorX + wHero_DoorY
    ; Outputs:
    ;   wActor_Hero.XTile, wActor_Hero.YTile, wActor_Hero.TileAddress updated
    ;   wHotspotCurrent = HOTSPOT_NULL

    ; Set the X and Y tile from the door variables
    Mov8 wActor_Hero.XTile, wHero_DoorX
    ld a, [wHero_DoorY]
    ld [wActor_Hero.YTile], a

    ; Get the collisionmap/tilemap address:
    ; wActor_Hero.TileAddress = wCollisionMap + wHero_DoorY*wTilemap_Width + wHero_DoorX
    ld b, a
    Get8 c, wTilemap_Width
    call Math_Mult
    ld d, HIGH(wCollisionMap)
    Get8 e, wHero_DoorX
    add hl, de
    Set16 wActor_Hero.TileAddress, hl

    ; Nil hotspot
    Set8 wHotspotCurrent, HOTSPOT_NULL

    Set16_M hScript.State, Script_Start
    ret

Jump_001_4456:: ;Farjump from 00
    ld a, [rDIV]                                 ; $4456: $FA $04 $FF
    and $0F                                       ; $4459: $E6 $0F
    ld b, a                                       ; $445B: $47
    add a                                         ; $445C: $87
    add b                                         ; $445D: $80
    ld c, a                                       ; $445E: $4F
    ld b, $00                                     ; $445F: $06 $00
    ld hl, $639E                                  ; $4461: $21 $9E $63
    add hl, bc                                    ; $4464: $09
    ld a, [hl+]                                   ; $4465: $2A
    ld b, a                                       ; $4466: $47
    ld a, [wTilemap_YTile]                                 ; $4467: $FA $60 $C8
    add b                                         ; $446A: $80
    ldh [hActor.YTile], a                                  ; $446B: $E0 $92
    DerefHL
    ld a, [hl+]                                   ; $4470: $2A
    ld d, [hl]                                    ; $4471: $56
    ld e, a                                       ; $4472: $5F
    ld a, [rDIV]                                 ; $4473: $FA $04 $FF
    swap a                                        ; $4476: $CB $37
    and $0F                                       ; $4478: $E6 $0F
    ld c, a                                       ; $447A: $4F
    ld b, $00                                     ; $447B: $06 $00
    ld hl, $638E                                  ; $447D: $21 $8E $63
    add hl, bc                                    ; $4480: $09
    ld b, [hl]                                    ; $4481: $46
    ld a, [wTilemap_XTile]                                 ; $4482: $FA $5F $C8
    add b                                         ; $4485: $80
    ldh [hActor.XTile], a                                  ; $4486: $E0 $91
    ld l, b                                       ; $4488: $68

jr_001_4489:
    ld h, $00                                     ; $4489: $26 $00
    add hl, de                                    ; $448B: $19
    ld a, [$C862]                                 ; $448C: $FA $62 $C8
    ld d, a                                       ; $448F: $57
    ld a, [$C861]                                 ; $4490: $FA $61 $C8
    ld e, a                                       ; $4493: $5F
    add hl, de                                    ; $4494: $19
    ld a, h                                       ; $4495: $7C
    ld [hActor.TileAddress+1], a                                 ; $4496: $EA $94 $FF
    ld a, l                                       ; $4499: $7D
    ld [hActor.TileAddress], a                                 ; $449A: $EA $93 $FF
    ld a, $9A                                     ; $449D: $3E $9A
    ldh [hScript.State], a                                  ; $449F: $E0 $A4
    ld a, $0C                                     ; $44A1: $3E $0C
    ldh [hScript.State+1], a                                  ; $44A3: $E0 $A5
    ret                                           ; $44A5: $C9


ASSERT BANK(@) == ScriptXX_BANK

    ; $44A6
Scroll_TransplantMap_XX::
    ; Copies part of the metatilemap/collisionmap onto a different part of the metatilemap/collisionmap
    ; One tile is copied per frame, unless:
    ;   If screen is off, one entire row will be copied per frame
    ;   If the tile is along the border of the visible screen and the tilemap is being updated in the same frame, then this
    ;       function will try to redo the same tile again. I think this is to avoid a graphical glitch where the tile
    ;       gets immediately overwritten by the buffered data of the edge of the visible screen
    ; Inputs:
    ;   wScript_Scroll_CopySource = source address of mask maps
    ;   wScript_Scroll_CopyDest = destination address of real maps
    ;   wScript_Scroll_CopyXCoord = X, Y coordinate of the tile that is being modified - TODO ?VRAM Tilemap coordinate?
    ;   wScript_Scroll_CopyYCoord
    ;   hScript.SmallCounter, .BigCounter
    ;   wScript_Scroll_CopyHeightCounter
    ; Outputs:
    ;   Tile will be modified in the next VBlank
    ;   If the tile is already buffered in a row or column, then redo the same tile next frame to avoid graphical glitches
    ;   If the screen is on, do the next tile next frame
    ;   If the screen is off, do an entire row per "frame"
    ;   Once all the tiles are copied, continue the Script as normal
    Get16 de, wScript_Scroll_CopySource
    Get16 hl, wScript_Scroll_CopyDest
    SwitchRAMBank BANK(wCollisionMap)
    ld a, [de]
    ld [hl], a
    SwitchRAMBank BANK(wMetatilemap)
    ld a, [de]
    ld [hl], a

    .Shared:
    ; The code is shared with Scroll_TransplantMapMask_XX
    push hl
    push de
    ld a, [wScreenVisible]
    and a
    jr z, .UpdateTileSuccess

    Get8 d, wScript_Scroll_CopyXCoord
    Get8 e, wScript_Scroll_CopyYCoord
    call ScrollXX_UpdateTile
    and a
    jr z, .UpdateTileSuccess
    .UpdateTileFail:
        ; The updated tile is already buffered along one of the edges of the visible tilemap
        ; Try to copy the same tile again to avoid graphical glitches probably
        pop bc
        pop bc
        ret


    .UpdateTileSuccess:
        ; Tile successfully prepped for VBlank, or screen is off
        pop bc ; wScript_Scroll_CopySource
        pop de ; wScript_Scroll_CopyDest

        ; Check to see if the row is finished being copied
        ldh a, [hScript.SmallCounter] ; CopyWidthCounter
        dec a
        jr z, .NextRow

        .SameRow:
            ; Increment to the next tile on the same row

            ; Decrement width counter
            ldh [hScript.SmallCounter], a  ; CopyWidthCounter

            ; Increment source/dest locations
            inc bc
            Set16 wScript_Scroll_CopySource, bc
            inc de
            Set16 wScript_Scroll_CopyDest, de

            ; Increment X coordinate
            ld hl, wScript_Scroll_CopyXCoord
            inc [hl]

            ; Do 1 tile per frame if the screen is on
            ld a, [wScreenVisible]
            and a
            ret nz

            ; If the screen is off, then immediately copy the next tile
            Get16FF hl, hScript.State
            jp hl ; Scroll_TransplantMap_XX or Scroll_TransplantMapMask_XX


        .NextRow:
            ; Reset to the next row

            ; Reset the width counter
            ldh a, [hScript.BigCounter]    ; CopyWidth
            ldh [hScript.SmallCounter], a  ; CopyWidthCounter

            ; Reset the X coordinate
            dec a
            ld l, a
            ld a, [wScript_Scroll_CopyXCoord]
            sub l
            ld [wScript_Scroll_CopyXCoord], a

            ; Offset source/dest locations to the next row, i.e.  += (wTilemap_Width - CopyWidth + 1)
            ;   (+1 because we didn't run .SameRow and so never incremented X the one last time)
            ld a, [wTilemap_Width]
            sub l
            ld l, a
            ld h, $00
            push hl
            add hl, bc
            Set16 wScript_Scroll_CopySource, hl
            pop hl
            add hl, de
            Set16 wScript_Scroll_CopyDest, hl

            ; Increment the Y coordinate
            ld hl, wScript_Scroll_CopyYCoord
            inc [hl]

            ; Check to see if all the rows are done
            ld a, [wScript_Scroll_CopyHeightCounter]
            dec a
            jr z, .End

            .NotEnd:
                ; Pass to next frame
                ld [wScript_Scroll_CopyHeightCounter], a
                ret

            .End:
                ; Disable the upper bit so we continue reading the Script
                ld hl, hScript.Bank
                res 7, [hl]
                Set16_M hScript.State, Script_Start
                ret

    ; $4552
Scroll_TransplantMapMask_XX::
    ; Copies mask metatilemap/collisionmap onto real metatilemap/collisionmap
    ; Inputs:
    ;   wScript_Scroll_CopySource = source address of mask maps
    ;   wScript_Scroll_CopyDest = destination address of real maps
    ;  For the rest of the inputs/outputs, see Scroll_TransplantMap_XX
    Get16 de, wScript_Scroll_CopySource
    Get16 hl, wScript_Scroll_CopyDest
    ; Collisionmap
    SwitchRAMBank BANK(wMaskCollisionMap)
    ld a, [de]
    ld c, a
    SwitchRAMBank BANK(wCollisionMap)
    ld [hl], c
    ; Metatilemap
    SwitchRAMBank BANK(wMaskMetatilemap)
    ld a, [de]
    ld c, a
    SwitchRAMBank BANK(wMetatilemap)
    ld [hl], c
    jp Scroll_TransplantMap_XX.Shared ; The code is shared with Scroll_TransplantMap_XX

Scroll00_TrackCamera_XX::
    ldh a, [hScript.SmallCounter]                                  ; $4587: $F0 $A6
    ld e, a                                       ; $4589: $5F
    ld a, [wTilemap_XTile]                                 ; $458A: $FA $5F $C8
    cp e                                          ; $458D: $BB
    jr c, jr_001_459F                             ; $458E: $38 $0F

    jr nz, jr_001_4595                            ; $4590: $20 $03

jr_001_4592:
    dec l                                         ; $4592: $2D
    jr jr_001_45AB                                ; $4593: $18 $16

jr_001_4595:
    bit 2, h                                      ; $4595: $CB $54
    jr nz, jr_001_4592                            ; $4597: $20 $F9

    ld a, d                                       ; $4599: $7A
    cpl                                           ; $459A: $2F
    inc a                                         ; $459B: $3C
    ld e, a                                       ; $459C: $5F
    jr jr_001_45A4                                ; $459D: $18 $05

jr_001_459F:
    bit 1, h                                      ; $459F: $CB $4C
    jr nz, jr_001_4592                            ; $45A1: $20 $EF

    ld e, d                                       ; $45A3: $5A

jr_001_45A4:
    ld a, [wTilemap_XDelta]                                 ; $45A4: $FA $43 $C8
    add e                                         ; $45A7: $83
    ld [wTilemap_XDelta], a                                 ; $45A8: $EA $43 $C8

jr_001_45AB:
    ldh a, [hScript.BigCounter]                                  ; $45AB: $F0 $A7
    ld e, a                                       ; $45AD: $5F
    ld a, [wTilemap_YTile]                                 ; $45AE: $FA $60 $C8
    cp e                                          ; $45B1: $BB
    jr c, jr_001_45C3                             ; $45B2: $38 $0F

    jr nz, jr_001_45B9                            ; $45B4: $20 $03

jr_001_45B6:
    dec l                                         ; $45B6: $2D
    jr jr_001_45CF                                ; $45B7: $18 $16

jr_001_45B9:
    bit 6, h                                      ; $45B9: $CB $74
    jr nz, jr_001_45B6                            ; $45BB: $20 $F9

    ld a, d                                       ; $45BD: $7A
    cpl                                           ; $45BE: $2F
    inc a                                         ; $45BF: $3C
    ld e, a                                       ; $45C0: $5F
    jr jr_001_45C8                                ; $45C1: $18 $05

jr_001_45C3:
    bit 5, h                                      ; $45C3: $CB $6C
    jr nz, jr_001_45B6                            ; $45C5: $20 $EF

    ld e, d                                       ; $45C7: $5A

jr_001_45C8:
    ld a, [wTilemap_YDelta]                                 ; $45C8: $FA $44 $C8
    add e                                         ; $45CB: $83
    ld [wTilemap_YDelta], a                                 ; $45CC: $EA $44 $C8

jr_001_45CF:
    ld a, l                                       ; $45CF: $7D
    and a                                         ; $45D0: $A7
    ret nz                                        ; $45D1: $C0

    inc bc                                        ; $45D2: $03
    ld a, b                                       ; $45D3: $78
    ld [hScript.Frame+1], a                                 ; $45D4: $EA $A3 $FF
    ld a, c                                       ; $45D7: $79
    ld [hScript.Frame], a                                 ; $45D8: $EA $A2 $FF
    Set16_M hScript.State, Script_Start                                 ; $45E2: $EA $A5 $FF
    ret                                           ; $45E5: $C9

Jump_001_45E6:: ;farjump
    ld hl, $C131                                  ; $45E6: $21 $31 $C1
    xor a                                         ; $45E9: $AF
    ld [hl-], a                                   ; $45EA: $32
    ld [hl-], a                                   ; $45EB: $32
    ld [hl-], a                                   ; $45EC: $32
    ld [hl], a                                    ; $45ED: $77
    cpl                                           ; $45EE: $2F
    bit 0, e                                      ; $45EF: $CB $43
    jr z, jr_001_45F4                             ; $45F1: $28 $01

    ld [hl], a                                    ; $45F3: $77

jr_001_45F4:
    inc hl                                        ; $45F4: $23
    bit 1, e                                      ; $45F5: $CB $4B
    jr z, jr_001_45FA                             ; $45F7: $28 $01

    ld [hl], a                                    ; $45F9: $77

jr_001_45FA:
    inc hl                                        ; $45FA: $23
    bit 2, e                                      ; $45FB: $CB $53
    jr z, jr_001_4600                             ; $45FD: $28 $01

    ld [hl], a                                    ; $45FF: $77

jr_001_4600:
    inc hl                                        ; $4600: $23
    bit 3, e                                      ; $4601: $CB $5B
    jr z, jr_001_4606                             ; $4603: $28 $01

    ld [hl], a                                    ; $4605: $77

jr_001_4606:
    ld a, b                                       ; $4606: $78
    ld [hScript.Frame+1], a                                 ; $4607: $EA $A3 $FF
    ld a, c                                       ; $460A: $79
    ld [hScript.Frame], a                                 ; $460B: $EA $A2 $FF
    ld a, $66                                     ; $460E: $3E $66
    ldh [hScript.State], a                                  ; $4610: $E0 $A4
    ld a, $0A                                     ; $4612: $3E $0A
    ldh [hScript.State+1], a                                  ; $4614: $E0 $A5
    ret                                           ; $4616: $C9


    ; $4617
ScrollXX_UpdateTile::
    ; If a coordinate is visible on the screen, force an update of the tile
    ; The tile will be updated in the next VBlank
    ; Returns a = 1 if the tile to be updated is about to be drawn on one of the tilemap borders
    ; TODO - I think this is because the drawn tile will be immediately overwritten by the data
    ; of the tilemap border, and so this is to avoid a graphical glitch if the hero runs sideways
    ; at a precise timing at the same time as the tile is drawn upon

    ; TODO - are these coordinates on the VRAM tilemap?? To clarify
    ; Entire function to review
    ;
    ; Inputs:
    ;   d = X coordinate
    ;   e = Y coordinate
    ;   hl = Map address
    ; Outputs:
    ;   a = 0 -> Performed successfully (tile is either on screen, or else off screen)
    ;   a = 1 -> The tile is about to be drawn in a row or col border

    ; a = 0 if screen is off
    ld a, [wScreenVisible]
    and a
    ret z

    ; a = 0 if xpos < wTilemap_XTile (off the screen on the left)
    Get8 b, wTilemap_XTile
    ld a, d
    sub b
    ld b, a
    and $F0 ; %10000000 -> negative number so out of screen to the left || %01110000 = 16+ so out of screen to the right
    ld a, $00
    ret nz

    ; a = 0 if ypos < wTilemap_YTile (off the screen on the top)
    Get8 c, wTilemap_YTile
    ld a, e
    sub c
    ld c, a
    and $F0 ; %10000000 -> negative number so out of screen to the left || %01110000 = 16+ so out of screen to the right
    ld a, $00
    ret nz

    push bc ; wTilemap_XTile - X, wTilemap_YTile - Y
    Set16 wTilemap_VBlank_SourceAddress, hl ; Temp var <- (hl = MapAddress)
    Set16 wTilemap_VBlank_DestAddress, de ; Temp var <- (d = X coord, e = Y coord)
    Do_CallForeign Tilemap_UpdateTile
    pop bc

    .CheckX:
        ; X - Check if the tile is on the left or right border ($00 or $0A), or else check Y
        ld a, b
        and a
        jr z, .XIsBorderTile
        cp $0A
        jr nz, .CheckY
        .XIsBorderTile:
            ; The tile is either on the left border ($00) or the right border ($0A)
            ; If there is a ColTrig already activated, then return 1
            ld a, [wTilemap_ColTrig]
            and a
            jr nz, .Ret1

    .CheckY:
        ; Y - Check if the tile is on the left or right border ($00 or $09), or else ret a = 0
        ld a, c
        and a
        jr z, .YIsBorderTile
        cp $09
        ld a, $00 ;Don't change flag
        ret nz

        .YIsBorderTile:
            ; If there is a ColTrig already activated, then return 1, else return 0
            ld a, [wTilemap_RowTrig]
            and a
            ret z

            .Ret1:
                ; Return 1 if the tile is on the X or Y border, and an update trigger is already pending
                ld a, $01
                ret

    ; $466D
SystemXX_NewGameInit::
    ; Modify memory to setup a New Game
    ; Inputs:
    ;   None
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ; Delete all gamestate system variables
    Do_MemSet_Optimized xInventory_Relics, xGamestate_RAM_END - xInventory_Relics, $00
    ; Delete all selected rings ($FF instead of $00)
    Do_MemSet xInventory_Rings, xInventory_Rings_LENGTH, $FF
    ; Delete all creatures except for xCreature_00_Hero
    Battery_SetBank "XRAM Creatures"
    Do_MemSet xCreature_01, xCreature_RAM_End - xCreature_01, $FF
    Battery_Off
    ; Set Tony's default stats and delete all selected rings ($FF)
    Do_CallForeign System_ActorTonyDefaults
    ret

    ; $46B2
SystemXX_NewGamePlusInit::
    ; Modify memory to setup a New Game Plus
    ; Inputs:
    ;   None
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ; Delete all gamestate system variables except for xInventory_Relics and xInventory_Rings
    Do_MemSet_Optimized xGameCount, xGamestate_RAM_END - xGameCount, $00
    Battery_Off
    ret

    ; $46CF
INCLUDE "source/engine/textbox/textbox_xx.asm"

    ; source/engine/trigger/trigger.s

    ; $4A3E
TriggerXX_Start::
    ; Activates a trigger's script
    ; Inputs:
    ;   $C716 - TODO
    ;   wTrigger_Code - id of the trigger to run
    ;   wTrigger_TableAddress & wTrigger_TableSize - the trigger table
    ; Outputs:
    ;   The trigger is loaded into wScript_System
    ld a, [$C716] ;TODO
    and a
    ret nz

    ; Abort if trigger table is empty
    ; TODO - check if wTrigger_TableSize is reset to 0 when loading new scene-I think not automatically
    ld a, [wTrigger_TableSize]
    and a
    ret z

    ld e, a
    ld a, [wTrigger_Code]
    add -$40   ;TODO I assume hotspots are $00-$3F, but to confirm
    cp e      ;Make sure the code is not out of bounds
    ret nc

    ; pointer to wTrigger_TableAddress + 4*(wTrigger_Code-$40)+1, which is the BankAddress of the trigger script
    add a
    add a
    ld e, a
    ld d, $00
    FGet16 hl, wTrigger_TableAddress
    add hl, de
    inc hl

    ; Set wScript_System
    call Hotspot_SetScript
    Set16_M wScript_System.State, Script_Start
    ret

    ; $4A6B
AI_Anim::
    ; $02 START sprite
    ; Runs 2 Threads
    ; Affects the TileAddress in some mysterious way
    ; Lets the object move
    call Actor_ScriptOpen

    call Script_Open
    call Script_Play
    call Script_Close

    call Script_Open
    call Script_Play
    call Script_Close

    call AI_Blocker_CleanTile ; Make the Actor nonsolid

    Do_CallForeign Coll_FreeMove

    call Actor_ScriptClose
    ret

    ; $4A8F
AI_Blocker::
    call Actor_ScriptOpen

    call Script_Open
    call Script_Play
    call Script_Close

    call Script_Open
    call Script_Play
    call Script_Close

    call AI_Blocker_CleanTile ; Make the Actor nonsolid

    Do_CallForeign Coll_FreeMove

    call AI_Blocker_PlaceTile ; Make the Actor solid

    call Actor_ScriptClose
    ret

    ; $4AB6
AI_Blocker_CleanTile::
    ; If the Actor has generated a wall via AI_Blocker_PlaceTile,
    ; Remove the wall and turn it into COLLID_SPACE
    ; Inputs:
    ;   hActor is loaded with the current actor
    ;   hActor.Flags -> Actor_FLAGS_BIT_PLACEDWALL
    ; Outputs:
    ;   The Actor's TileAddress location is potentially changed from COLLID_WALL to COLLID_SPACE
    ;       and then Actor_FLAGS_BIT_PLACEDWALL is reset

    ;   
    SwitchRAMBank BANK(wCollisionMap)
    ldh a, [hActor.Flags]
    ld e, a
    bit Actor_FLAGS_BIT_PLACEDWALL, e
    jr z, .SkipReplace ;USELESS jump - it could just be a ret z instead

        Get16 hl, hActor.TileAddress
        ld a, COLLID_SPACE
        ld [hl], a

    .SkipReplace:
    ld a, e
    res Actor_FLAGS_BIT_PLACEDWALL, a
    ldh [hActor.Flags], a
    ret

    ; $4AD5
AI_Blocker_PlaceTile::
    ; If the Actor is standing on COLLID_SPACE, turn it into COLLID_WALL
    ; Inputs:
    ;   Assumes SwitchRAMBank BANK(wCollisionMap) was already called
    ;   hActor is loaded with the current actor
    ; Outputs:
    ;   The Actor's TileAddress location is potentially changed from COLLID_SPACE to COLLID_WALL
    ;       and then Actor_FLAGS_BIT_PLACEDWALL is set


    ; TODO
    ldh a, [$FFAB]                                  ; $4AD5: $F0 $AB
    bit 1, a                                      ; $4AD7: $CB $4F
    ret z                                         ; $4AD9: $C8

    ; Check if the current collision tile is COLLID_SPACE
    Get16 hl, hActor.TileAddress
    ld a, [hl]
    cp COLLID_SPACE
    ret nz

    ; If so, replace it with COLLID_WALL
    ld a, COLLID_WALL
    ld [hl], a

    ; Mark the Actor with a flag saying that a wall was placed
    ldh a, [hActor.Flags]
    set Actor_FLAGS_BIT_PLACEDWALL, a
    ldh [hActor.Flags], a
    ret

    ; $4AF0
Call_001_4AF0::
    ; AI/Camera.s
    ld a, [wColl_XMove]                                 ; $4AF0: $FA $D2 $C6
    ld e, a                                       ; $4AF3: $5F
    bit 7, a                                      ; $4AF4: $CB $7F
    ldh a, [hActor_ScreenX]                                  ; $4AF6: $F0 $96
    jr z, jr_001_4B02                             ; $4AF8: $28 $08

    sub $54                                       ; $4AFA: $D6 $54
    bit 7, a                                      ; $4AFC: $CB $7F
    jr nz, jr_001_4B08                            ; $4AFE: $20 $08

    jr jr_001_4B0F                                ; $4B00: $18 $0D

jr_001_4B02:
    sub $5C                                       ; $4B02: $D6 $5C
    bit 7, a                                      ; $4B04: $CB $7F
    jr nz, jr_001_4B0F                            ; $4B06: $20 $07

jr_001_4B08:
    ld a, [wTilemap_XDelta]                                 ; $4B08: $FA $43 $C8
    add e                                         ; $4B0B: $83
    ld [wTilemap_XDelta], a                                 ; $4B0C: $EA $43 $C8

jr_001_4B0F:
    ld a, [wColl_YMove]                                 ; $4B0F: $FA $D3 $C6
    ld e, a                                       ; $4B12: $5F
    bit 7, a                                      ; $4B13: $CB $7F
    ldh a, [hActor_ScreenY]                                  ; $4B15: $F0 $97
    jr z, jr_001_4B20                             ; $4B17: $28 $07

    sub $58                                       ; $4B19: $D6 $58
    bit 7, a                                      ; $4B1B: $CB $7F
    jr nz, jr_001_4B25                            ; $4B1D: $20 $06

    ret                                           ; $4B1F: $C9


jr_001_4B20:
    sub $60                                       ; $4B20: $D6 $60
    bit 7, a                                      ; $4B22: $CB $7F
    ret nz                                        ; $4B24: $C0

jr_001_4B25:
    ld a, [wTilemap_YDelta]                                 ; $4B25: $FA $44 $C8
    add e                                         ; $4B28: $83
    ld [wTilemap_YDelta], a                                 ; $4B29: $EA $44 $C8
    ret                                           ; $4B2C: $C9


Jump_001_4B2D:
    Sound_Request_StartSFX0 SFXID_sfx_26
    ld a, b                                       ; $4B32: $78
    ld [wTilemap_VBlank_DestAddress+1], a                                 ; $4B33: $EA $C8 $C8
    ld a, c                                       ; $4B36: $79
    ld [wTilemap_VBlank_DestAddress], a                                 ; $4B37: $EA $C7 $C8
    ld a, h                                       ; $4B3A: $7C
    ld [wTilemap_VBlank_SourceAddress+1], a                                 ; $4B3B: $EA $C6 $C8
    ld a, l                                       ; $4B3E: $7D
    ld [wTilemap_VBlank_SourceAddress], a                                 ; $4B3F: $EA $C5 $C8
    SwitchRAMBank $05
    ld a, $00                                     ; $4B49: $3E $00
    ld [hl], a                                    ; $4B4B: $77
    SwitchRAMBank $03
    ld a, $FC                                     ; $4B53: $3E $FC
    ld [hl], a                                    ; $4B55: $77
    Do_CallForeign Call_007_4ADF
    jp Jump_001_5DA2                              ; $4B5E: $C3 $A2 $5D


Jump_001_4B61:
    ld a, c                                       ; $4B61: $79
    ld [wTrigger_XTile], a                                 ; $4B62: $EA $9C $C9
    ld a, b                                       ; $4B65: $78
    ld [wTrigger_YTile], a                                 ; $4B66: $EA $9D $C9
    ld a, h                                       ; $4B69: $7C
    ld [wTrigger_TilemapAddress+1], a                                 ; $4B6A: $EA $9F $C9
    ld a, l                                       ; $4B6D: $7D
    ld [wTrigger_TilemapAddress], a                                 ; $4B6E: $EA $9E $C9
    ld a, e                                       ; $4B71: $7B
    ld [wTrigger_Code], a                                 ; $4B72: $EA $A0 $C9
    call TriggerXX_Start                            ; $4B75: $CD $3E $4A
    jp Jump_001_5D9B                              ; $4B78: $C3 $9B $5D


Call_001_4B7B:
Jump_001_4B7B:
    call Call_001_4CBF                            ; $4B7B: $CD $BF $4C
    ld a, [$C9A4]                                 ; $4B7E: $FA $A4 $C9
    bit 0, a                                      ; $4B81: $CB $47
    ret z                                         ; $4B83: $C8

    pop af                                        ; $4B84: $F1
    ldh a, [$FFAA]                                  ; $4B85: $F0 $AA
    set 2, a                                      ; $4B87: $CB $D7
    ldh [$FFAA], a                                  ; $4B89: $E0 $AA
    ld a, [hl]                                    ; $4B8B: $7E
    ld e, a                                       ; $4B8C: $5F
    cp $0B                                        ; $4B8D: $FE $0B
    jr nz, jr_001_4BA6                            ; $4B8F: $20 $15

    ld a, [$C9A6]                                 ; $4B91: $FA $A6 $C9
    sub $02                                       ; $4B94: $D6 $02
    jp c, Jump_001_5D9B                           ; $4B96: $DA $9B $5D

    ld a, $09                                     ; $4B99: $3E $09
    ld [hScript.Frame], a                                 ; $4B9B: $EA $A2 $FF
    ld a, $56                                     ; $4B9E: $3E $56
    ld [hScript.Frame+1], a                                 ; $4BA0: $EA $A3 $FF
    jp Jump_001_4B2D                              ; $4BA3: $C3 $2D $4B


jr_001_4BA6:
    cp $09                                        ; $4BA6: $FE $09
    jr nz, jr_001_4BBF                            ; $4BA8: $20 $15

    ld a, [$C9A6]                                 ; $4BAA: $FA $A6 $C9
    sub $01                                       ; $4BAD: $D6 $01
    jp c, Jump_001_5D9B                           ; $4BAF: $DA $9B $5D

    ld a, $BD                                     ; $4BB2: $3E $BD
    ld [hScript.Frame], a                                 ; $4BB4: $EA $A2 $FF
    ld a, $55                                     ; $4BB7: $3E $55
    ld [hScript.Frame+1], a                                 ; $4BB9: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $4BBC: $C3 $A2 $5D


jr_001_4BBF:
    and $E0                                       ; $4BBF: $E6 $E0
    jp z, Jump_001_5D9B                           ; $4BC1: $CA $9B $5D

    bit 7, a                                      ; $4BC4: $CB $7F
    jp nz, Jump_001_5D9B                          ; $4BC6: $C2 $9B $5D

    jp Jump_001_4B61                              ; $4BC9: $C3 $61 $4B


Call_001_4BCC:
Jump_001_4BCC:
    call Call_001_4CDD                            ; $4BCC: $CD $DD $4C
    ld a, [$C9A4]                                 ; $4BCF: $FA $A4 $C9
    bit 0, a                                      ; $4BD2: $CB $47
    ret z                                         ; $4BD4: $C8

    pop af                                        ; $4BD5: $F1
    ldh a, [$FFAA]                                  ; $4BD6: $F0 $AA
    set 2, a                                      ; $4BD8: $CB $D7
    ldh [$FFAA], a                                  ; $4BDA: $E0 $AA
    ld a, [hl]                                    ; $4BDC: $7E
    ld e, a                                       ; $4BDD: $5F
    cp $0B                                        ; $4BDE: $FE $0B
    jr nz, jr_001_4BF7                            ; $4BE0: $20 $15

    ld a, [$C9A6]                                 ; $4BE2: $FA $A6 $C9
    sub $02                                       ; $4BE5: $D6 $02
    jp c, Jump_001_5D9B                           ; $4BE7: $DA $9B $5D

    ld a, $2F                                     ; $4BEA: $3E $2F
    ld [hScript.Frame], a                                 ; $4BEC: $EA $A2 $FF
    ld a, $56                                     ; $4BEF: $3E $56
    ld [hScript.Frame+1], a                                 ; $4BF1: $EA $A3 $FF
    jp Jump_001_4B2D                              ; $4BF4: $C3 $2D $4B


jr_001_4BF7:
    cp $09                                        ; $4BF7: $FE $09
    jr nz, jr_001_4C10                            ; $4BF9: $20 $15

    ld a, [$C9A6]                                 ; $4BFB: $FA $A6 $C9
    sub $01                                       ; $4BFE: $D6 $01
    jp c, Jump_001_5D9B                           ; $4C00: $DA $9B $5D

    ld a, $4B                                     ; $4C03: $3E $4B
    ld [hScript.Frame], a                                 ; $4C05: $EA $A2 $FF
    ld a, $55                                     ; $4C08: $3E $55
    ld [hScript.Frame+1], a                                 ; $4C0A: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $4C0D: $C3 $A2 $5D


jr_001_4C10:
    and $E0                                       ; $4C10: $E6 $E0
    jp z, Jump_001_5D9B                           ; $4C12: $CA $9B $5D

    bit 7, a                                      ; $4C15: $CB $7F
    jp nz, Jump_001_5D9B                          ; $4C17: $C2 $9B $5D

    jp Jump_001_4B61                              ; $4C1A: $C3 $61 $4B


Call_001_4C1D:
Jump_001_4C1D:
    call Call_001_4CF8                            ; $4C1D: $CD $F8 $4C
    ld a, [$C9A4]                                 ; $4C20: $FA $A4 $C9
    bit 0, a                                      ; $4C23: $CB $47
    ret z                                         ; $4C25: $C8

    pop af                                        ; $4C26: $F1
    ldh a, [$FFAA]                                  ; $4C27: $F0 $AA
    set 2, a                                      ; $4C29: $CB $D7
    ldh [$FFAA], a                                  ; $4C2B: $E0 $AA
    ld a, [hl]                                    ; $4C2D: $7E
    ld e, a                                       ; $4C2E: $5F
    cp $0B                                        ; $4C2F: $FE $0B
    jr nz, jr_001_4C48                            ; $4C31: $20 $15

    ld a, [$C9A6]                                 ; $4C33: $FA $A6 $C9
    sub $02                                       ; $4C36: $D6 $02
    jp c, Jump_001_5D9B                           ; $4C38: $DA $9B $5D

    ld a, $55                                     ; $4C3B: $3E $55
    ld [hScript.Frame], a                                 ; $4C3D: $EA $A2 $FF
    ld a, $56                                     ; $4C40: $3E $56
    ld [hScript.Frame+1], a                                 ; $4C42: $EA $A3 $FF
    jp Jump_001_4B2D                              ; $4C45: $C3 $2D $4B


jr_001_4C48:
    cp $09                                        ; $4C48: $FE $09
    jr nz, jr_001_4C61                            ; $4C4A: $20 $15

    ld a, [$C9A6]                                 ; $4C4C: $FA $A6 $C9
    sub $01                                       ; $4C4F: $D6 $01
    jp c, Jump_001_5D9B                           ; $4C51: $DA $9B $5D

    ld a, $71                                     ; $4C54: $3E $71
    ld [hScript.Frame], a                                 ; $4C56: $EA $A2 $FF
    ld a, $55                                     ; $4C59: $3E $55
    ld [hScript.Frame+1], a                                 ; $4C5B: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $4C5E: $C3 $A2 $5D


jr_001_4C61:
    and $E0                                       ; $4C61: $E6 $E0
    jp z, Jump_001_5D9B                           ; $4C63: $CA $9B $5D

    bit 7, a                                      ; $4C66: $CB $7F
    jp nz, Jump_001_5D9B                          ; $4C68: $C2 $9B $5D

    jp Jump_001_4B61                              ; $4C6B: $C3 $61 $4B


Call_001_4C6E:
Jump_001_4C6E:
    call Call_001_4D13                            ; $4C6E: $CD $13 $4D
    ld a, [$C9A4]                                 ; $4C71: $FA $A4 $C9
    bit 0, a                                      ; $4C74: $CB $47
    ret z                                         ; $4C76: $C8

    pop af                                        ; $4C77: $F1
    ldh a, [$FFAA]                                  ; $4C78: $F0 $AA
    set 2, a                                      ; $4C7A: $CB $D7
    ldh [$FFAA], a                                  ; $4C7C: $E0 $AA
    ld a, [hl]                                    ; $4C7E: $7E
    ld e, a                                       ; $4C7F: $5F
    cp $0B                                        ; $4C80: $FE $0B
    jr nz, jr_001_4C99                            ; $4C82: $20 $15

    ld a, [$C9A6]                                 ; $4C84: $FA $A6 $C9
    sub $02                                       ; $4C87: $D6 $02
    jp c, Jump_001_5D9B                           ; $4C89: $DA $9B $5D

    ld a, $E3                                     ; $4C8C: $3E $E3
    ld [hScript.Frame], a                                 ; $4C8E: $EA $A2 $FF
    ld a, $55                                     ; $4C91: $3E $55
    ld [hScript.Frame+1], a                                 ; $4C93: $EA $A3 $FF
    jp Jump_001_4B2D                              ; $4C96: $C3 $2D $4B


jr_001_4C99:
    cp $09                                        ; $4C99: $FE $09
    jr nz, jr_001_4CB2                            ; $4C9B: $20 $15

    ld a, [$C9A6]                                 ; $4C9D: $FA $A6 $C9
    sub $01                                       ; $4CA0: $D6 $01
    jp c, Jump_001_5D9B                           ; $4CA2: $DA $9B $5D

    ld a, $97                                     ; $4CA5: $3E $97
    ld [hScript.Frame], a                                 ; $4CA7: $EA $A2 $FF
    ld a, $55                                     ; $4CAA: $3E $55
    ld [hScript.Frame+1], a                                 ; $4CAC: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $4CAF: $C3 $A2 $5D


jr_001_4CB2:
    and $E0                                       ; $4CB2: $E6 $E0
    jp z, Jump_001_5D9B                           ; $4CB4: $CA $9B $5D

    bit 7, a                                      ; $4CB7: $CB $7F
    jp nz, Jump_001_5D9B                          ; $4CB9: $C2 $9B $5D

    jp Jump_001_4B61                              ; $4CBC: $C3 $61 $4B


Call_001_4CBF:
    ldh a, [hActor.XTile]                                  ; $4CBF: $F0 $91
    ld b, a                                       ; $4CC1: $47
    ldh a, [hActor.YTile]                                  ; $4CC2: $F0 $92
    inc a                                         ; $4CC4: $3C
    ld c, a                                       ; $4CC5: $4F
    ld a, [wTilemap_Width]                                 ; $4CC6: $FA $47 $C8
    ld e, a                                       ; $4CC9: $5F
    ld d, $00                                     ; $4CCA: $16 $00
    ld a, [hActor.TileAddress+1]                                 ; $4CCC: $FA $94 $FF
    ld h, a                                       ; $4CCF: $67
    ld a, [hActor.TileAddress]                                 ; $4CD0: $FA $93 $FF
    ld l, a                                       ; $4CD3: $6F
    add hl, de                                    ; $4CD4: $19
    SwitchRAMBank $05
    ret                                           ; $4CDC: $C9


Call_001_4CDD:
    ldh a, [hActor.XTile]                                  ; $4CDD: $F0 $91
    dec a                                         ; $4CDF: $3D
    ld b, a                                       ; $4CE0: $47
    ldh a, [hActor.YTile]                                  ; $4CE1: $F0 $92
    ld c, a                                       ; $4CE3: $4F
    ld de, $FFFF                                  ; $4CE4: $11 $FF $FF
    ld a, [hActor.TileAddress+1]                                 ; $4CE7: $FA $94 $FF
    ld h, a                                       ; $4CEA: $67
    ld a, [hActor.TileAddress]                                 ; $4CEB: $FA $93 $FF
    ld l, a                                       ; $4CEE: $6F
    add hl, de                                    ; $4CEF: $19
    SwitchRAMBank $05
    ret                                           ; $4CF7: $C9


Call_001_4CF8:
    ldh a, [hActor.XTile]                                  ; $4CF8: $F0 $91
    inc a                                         ; $4CFA: $3C
    ld b, a                                       ; $4CFB: $47
    ldh a, [hActor.YTile]                                  ; $4CFC: $F0 $92
    ld c, a                                       ; $4CFE: $4F
    ld de, $0001                                  ; $4CFF: $11 $01 $00
    ld a, [hActor.TileAddress+1]                                 ; $4D02: $FA $94 $FF
    ld h, a                                       ; $4D05: $67
    ld a, [hActor.TileAddress]                                 ; $4D06: $FA $93 $FF
    ld l, a                                       ; $4D09: $6F
    add hl, de                                    ; $4D0A: $19
    SwitchRAMBank $05
    ret                                           ; $4D12: $C9


Call_001_4D13:
    ldh a, [hActor.XTile]                                  ; $4D13: $F0 $91
    ld b, a                                       ; $4D15: $47
    ldh a, [hActor.YTile]                                  ; $4D16: $F0 $92
    dec a                                         ; $4D18: $3D
    ld c, a                                       ; $4D19: $4F
    ld a, [wTilemap_Width]                                 ; $4D1A: $FA $47 $C8
    cpl                                           ; $4D1D: $2F
    inc a                                         ; $4D1E: $3C
    ld e, a                                       ; $4D1F: $5F
    ld d, $FF                                     ; $4D20: $16 $FF
    ld a, [hActor.TileAddress+1]                                 ; $4D22: $FA $94 $FF
    ld h, a                                       ; $4D25: $67
    ld a, [hActor.TileAddress]                                 ; $4D26: $FA $93 $FF
    ld l, a                                       ; $4D29: $6F
    add hl, de                                    ; $4D2A: $19
    SwitchRAMBank $05
    ret                                           ; $4D32: $C9


Jump_001_4D33:
    Sound_Request_StartSFX0 SFXID_EnemyHit
    pop af                                        ; $4D38: $F1
    jp Jump_001_5D9B                              ; $4D39: $C3 $9B $5D


Jump_001_4D3C:
    Sound_Request_StartSFX0 SFXID_sfx_24
    push bc                                       ; $4D41: $C5
    ld a, d                                       ; $4D42: $7A
    ld [wTilemap_VBlank_DestAddress+1], a                                 ; $4D43: $EA $C8 $C8
    ld a, e                                       ; $4D46: $7B
    ld [wTilemap_VBlank_DestAddress], a                                 ; $4D47: $EA $C7 $C8
    ld a, d                                       ; $4D4A: $7A
    ld [$C9A9], a                                 ; $4D4B: $EA $A9 $C9
    ld a, e                                       ; $4D4E: $7B
    ld [$C9AA], a                                 ; $4D4F: $EA $AA $C9
    ld a, h                                       ; $4D52: $7C
    ld [wTilemap_VBlank_SourceAddress+1], a                                 ; $4D53: $EA $C6 $C8
    ld a, l                                       ; $4D56: $7D
    ld [wTilemap_VBlank_SourceAddress], a                                 ; $4D57: $EA $C5 $C8
    ld a, h                                       ; $4D5A: $7C
    ld [$C9AC], a                                 ; $4D5B: $EA $AC $C9
    ld a, l                                       ; $4D5E: $7D
    ld [$C9AB], a                                 ; $4D5F: $EA $AB $C9
    ld a, $09                                     ; $4D62: $3E $09
    ld [hl], a                                    ; $4D64: $77
    SwitchRAMBank $03
    ld [hl], c                                    ; $4D6C: $71
    Do_CallForeign Call_007_4ADF
    pop bc                                        ; $4D75: $C1
    pop de                                        ; $4D76: $D1
    pop hl                                        ; $4D77: $E1
    ld a, d                                       ; $4D78: $7A
    ld [wTilemap_VBlank_DestAddress+1], a                                 ; $4D79: $EA $C8 $C8
    ld a, e                                       ; $4D7C: $7B
    ld [wTilemap_VBlank_DestAddress], a                                 ; $4D7D: $EA $C7 $C8
    ld a, h                                       ; $4D80: $7C
    ld [wTilemap_VBlank_SourceAddress+1], a                                 ; $4D81: $EA $C6 $C8
    ld a, l                                       ; $4D84: $7D
    ld [wTilemap_VBlank_SourceAddress], a                                 ; $4D85: $EA $C5 $C8
    ld a, h                                       ; $4D88: $7C
    ld [$C9A8], a                                 ; $4D89: $EA $A8 $C9
    ld a, l                                       ; $4D8C: $7D
    ld [$C9A7], a                                 ; $4D8D: $EA $A7 $C9
    SwitchRAMBank $05
    ld a, $81                                     ; $4D97: $3E $81
    ld [hl], a                                    ; $4D99: $77
    SwitchRAMBank $03
    ld a, $FD                                     ; $4DA1: $3E $FD
    ld [hl], a                                    ; $4DA3: $77
    Do_CallForeign Call_007_4ADF
    ld hl, $FFAA                                  ; $4DAC: $21 $AA $FF
    set 3, [hl]                                   ; $4DAF: $CB $DE
    jp Jump_001_5D9B                              ; $4DB1: $C3 $9B $5D

    ; $4DB4
AI_Hero_BoxxleDown::
    call Call_001_5DE1                            ; $4DB4: $CD $E1 $5D
    Do_CallForeign Call_005_682D
    call Call_001_4AF0                            ; $4DBF: $CD $F0 $4A
    ld a, $81                                     ; $4DC2: $3E $81
    ldh [hActor.State], a                                  ; $4DC4: $E0 $8D
    ld a, $5D                                     ; $4DC6: $3E $5D
    ldh [hActor.State+1], a                                  ; $4DC8: $E0 $8E
    SwitchRAMBank $03
    FGet16 hl, hActor.TileAddress                                  ; $4DD1: $21 $93 $FF
    ld a, [wTilemap_Width]                                 ; $4DD7: $FA $47 $C8
    ld e, a                                       ; $4DDA: $5F
    ld d, $00                                     ; $4DDB: $16 $00
    add hl, de                                    ; $4DDD: $19
    ld c, [hl]                                    ; $4DDE: $4E
    push hl                                       ; $4DDF: $E5
    add hl, de                                    ; $4DE0: $19
    SwitchRAMBank $05
    ld a, [hl]                                    ; $4DE8: $7E
    cp $81                                        ; $4DE9: $FE $81
    jp nz, Jump_001_4D33                          ; $4DEB: $C2 $33 $4D

    ldh a, [hActor.XTile]                                  ; $4DEE: $F0 $91
    ld d, a                                       ; $4DF0: $57
    ldh a, [hActor.YTile]                                  ; $4DF1: $F0 $92
    inc a                                         ; $4DF3: $3C
    ld e, a                                       ; $4DF4: $5F
    push de                                       ; $4DF5: $D5
    inc e                                         ; $4DF6: $1C
    jp Jump_001_4D3C                              ; $4DF7: $C3 $3C $4D


    ; $4DFA
AI_Hero_BoxxleLeft::
    call Call_001_5DE1                            ; $4DFA: $CD $E1 $5D
    Do_CallForeign Call_005_682D
    call Call_001_4AF0                            ; $4E05: $CD $F0 $4A
    ld a, $81                                     ; $4E08: $3E $81
    ldh [hActor.State], a                                  ; $4E0A: $E0 $8D
    ld a, $5D                                     ; $4E0C: $3E $5D
    ldh [hActor.State+1], a                                  ; $4E0E: $E0 $8E
    SwitchRAMBank $03
    FGet16 hl, hActor.TileAddress                                  ; $4E17: $21 $93 $FF
    dec hl                                        ; $4E1D: $2B
    ld c, [hl]                                    ; $4E1E: $4E
    push hl                                       ; $4E1F: $E5
    dec hl                                        ; $4E20: $2B
    SwitchRAMBank $05
    ld a, [hl]                                    ; $4E28: $7E
    cp $81                                        ; $4E29: $FE $81
    jp nz, Jump_001_4D33                          ; $4E2B: $C2 $33 $4D

    ldh a, [hActor.XTile]                                  ; $4E2E: $F0 $91
    dec a                                         ; $4E30: $3D
    ld d, a                                       ; $4E31: $57
    ldh a, [hActor.YTile]                                  ; $4E32: $F0 $92
    ld e, a                                       ; $4E34: $5F
    push de                                       ; $4E35: $D5
    dec d                                         ; $4E36: $15
    jp Jump_001_4D3C                              ; $4E37: $C3 $3C $4D


    ; $4E3A
AI_Hero_BoxxleRight::
    call Call_001_5DE1                            ; $4E3A: $CD $E1 $5D
    Do_CallForeign Call_005_682D
    call Call_001_4AF0                            ; $4E45: $CD $F0 $4A
    ld a, $81                                     ; $4E48: $3E $81
    ldh [hActor.State], a                                  ; $4E4A: $E0 $8D
    ld a, $5D                                     ; $4E4C: $3E $5D
    ldh [hActor.State+1], a                                  ; $4E4E: $E0 $8E
    SwitchRAMBank $03
    FGet16 hl, hActor.TileAddress                                  ; $4E57: $21 $93 $FF
    inc hl                                        ; $4E5D: $23
    ld c, [hl]                                    ; $4E5E: $4E
    push hl                                       ; $4E5F: $E5
    inc hl                                        ; $4E60: $23
    SwitchRAMBank $05
    ld a, [hl]                                    ; $4E68: $7E
    cp $81                                        ; $4E69: $FE $81
    jp nz, Jump_001_4D33                          ; $4E6B: $C2 $33 $4D

    ldh a, [hActor.XTile]                                  ; $4E6E: $F0 $91
    inc a                                         ; $4E70: $3C
    ld d, a                                       ; $4E71: $57
    ldh a, [hActor.YTile]                                  ; $4E72: $F0 $92
    ld e, a                                       ; $4E74: $5F
    push de                                       ; $4E75: $D5
    inc d                                         ; $4E76: $14
    jp Jump_001_4D3C                              ; $4E77: $C3 $3C $4D


    ; $4E7A
AI_Hero_BoxxleUp::
    call Call_001_5DE1                            ; $4E7A: $CD $E1 $5D
    Do_CallForeign Call_005_682D
    call Call_001_4AF0                            ; $4E85: $CD $F0 $4A
    ld a, $81                                     ; $4E88: $3E $81
    ldh [hActor.State], a                                  ; $4E8A: $E0 $8D
    ld a, $5D                                     ; $4E8C: $3E $5D
    ldh [hActor.State+1], a                                  ; $4E8E: $E0 $8E
    SwitchRAMBank $03
    FGet16 hl, hActor.TileAddress                                  ; $4E97: $21 $93 $FF
    ld a, [wTilemap_Width]                                 ; $4E9D: $FA $47 $C8
    cpl                                           ; $4EA0: $2F
    inc a                                         ; $4EA1: $3C
    ld e, a                                       ; $4EA2: $5F
    ld d, $FF                                     ; $4EA3: $16 $FF
    add hl, de                                    ; $4EA5: $19
    ld c, [hl]                                    ; $4EA6: $4E
    push hl                                       ; $4EA7: $E5
    add hl, de                                    ; $4EA8: $19
    SwitchRAMBank $05
    ld a, [hl]                                    ; $4EB0: $7E
    cp $81                                        ; $4EB1: $FE $81
    jp nz, Jump_001_4D33                          ; $4EB3: $C2 $33 $4D

    ldh a, [hActor.XTile]                                  ; $4EB6: $F0 $91
    ld d, a                                       ; $4EB8: $57
    ldh a, [hActor.YTile]                                  ; $4EB9: $F0 $92
    dec a                                         ; $4EBB: $3D
    ld e, a                                       ; $4EBC: $5F
    push de                                       ; $4EBD: $D5
    dec e                                         ; $4EBE: $1D
    jp Jump_001_4D3C                              ; $4EBF: $C3 $3C $4D


Call_001_4EC2:
    xor a                                         ; $4EC2: $AF
    ld [wCollMask], a                                 ; $4EC3: $EA $2A $C1
    cpl                                           ; $4EC6: $2F
    ld [$C12C], a                                 ; $4EC7: $EA $2C $C1
    ret                                           ; $4ECA: $C9


Call_001_4ECB:
    xor a                                         ; $4ECB: $AF
    ld [$C12C], a                                 ; $4ECC: $EA $2C $C1
    cpl                                           ; $4ECF: $2F
    ld [wCollMask], a                                 ; $4ED0: $EA $2A $C1
    ret                                           ; $4ED3: $C9


Jump_001_4ED4:
    ld a, $66                                     ; $4ED4: $3E $66
    ldh [hScript.State], a                                  ; $4ED6: $E0 $A4
    ld a, $0A                                     ; $4ED8: $3E $0A
    ldh [hScript.State+1], a                                  ; $4EDA: $E0 $A5
    ld a, $7A                                     ; $4EDC: $3E $7A
    ldh [hScript.Frame], a                                  ; $4EDE: $E0 $A2
    ld a, $5C                                     ; $4EE0: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $4EE2: $E0 $A3
    ld a, $0D                                     ; $4EE4: $3E $0D
    ldh [hActor.State], a                                  ; $4EE6: $E0 $8D
    ld a, $4F                                     ; $4EE8: $3E $4F
    ldh [hActor.State+1], a                                  ; $4EEA: $E0 $8E
    jp Jump_001_5D9B                              ; $4EEC: $C3 $9B $5D


    call Call_001_5DE1                            ; $4EEF: $CD $E1 $5D

Jump_001_4EF2:
    ld a, $66                                     ; $4EF2: $3E $66
    ldh [hScript.State], a                                  ; $4EF4: $E0 $A4
    ld a, $0A                                     ; $4EF6: $3E $0A
    ldh [hScript.State+1], a                                  ; $4EF8: $E0 $A5
    ld a, $B3                                     ; $4EFA: $3E $B3
    ldh [hScript.Frame], a                                  ; $4EFC: $E0 $A2
    ld a, $5C                                     ; $4EFE: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $4F00: $E0 $A3
    ld a, $0D                                     ; $4F02: $3E $0D
    ldh [hActor.State], a                                  ; $4F04: $E0 $8D
    ld a, $4F                                     ; $4F06: $3E $4F
    ldh [hActor.State+1], a                                  ; $4F08: $E0 $8E
    jp Jump_001_5D9B                              ; $4F0A: $C3 $9B $5D


    ld a, $03                                     ; $4F0D: $3E $03
    ldh [hActor.Flags], a                                  ; $4F0F: $E0 $8C
    call Call_001_5DE1                            ; $4F11: $CD $E1 $5D
    call Call_001_4ECB                            ; $4F14: $CD $CB $4E
    ld a, [$C9A4]                                 ; $4F17: $FA $A4 $C9
    bit 6, a                                      ; $4F1A: $CB $77
    jp nz, Jump_001_50F0                          ; $4F1C: $C2 $F0 $50

    bit 5, a                                      ; $4F1F: $CB $6F
    jp nz, Jump_001_4F9C                          ; $4F21: $C2 $9C $4F

    bit 4, a                                      ; $4F24: $CB $67
    jp nz, Jump_001_5046                          ; $4F26: $C2 $46 $50

    call Call_001_5E65                            ; $4F29: $CD $65 $5E
    ld a, [wColl_YMove]                                 ; $4F2C: $FA $D3 $C6
    and a                                         ; $4F2F: $A7
    jp z, Jump_001_5D9B                           ; $4F30: $CA $9B $5D

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $4F3B: $CD $2E $42
    call Call_001_4AF0                            ; $4F3E: $CD $F0 $4A
    ld a, [wColl_YDelta]                                 ; $4F41: $FA $D1 $C6
    and a                                         ; $4F44: $A7
    jp z, Jump_001_5D9B                           ; $4F45: $CA $9B $5D

    ld a, [wColl_YMove]                                 ; $4F48: $FA $D3 $C6
    and a                                         ; $4F4B: $A7
    jp nz, Jump_001_5D9B                          ; $4F4C: $C2 $9B $5D

    call Call_001_4CBF                            ; $4F4F: $CD $BF $4C
    ld a, [hl]                                    ; $4F52: $7E
    cp $02                                        ; $4F53: $FE $02
    jp z, Jump_001_5D9B                           ; $4F55: $CA $9B $5D

    cp $00                                        ; $4F58: $FE $00
    jp nz, Jump_001_4F6B                          ; $4F5A: $C2 $6B $4F

    call Call_001_4EC2                            ; $4F5D: $CD $C2 $4E
    ld a, $9A                                     ; $4F60: $3E $9A
    ldh [hScript.Frame], a                                  ; $4F62: $E0 $A2
    ld a, $5A                                     ; $4F64: $3E $5A
    ldh [hScript.Frame+1], a                                  ; $4F66: $E0 $A3
    jp Jump_001_5DA2                              ; $4F68: $C3 $A2 $5D


Jump_001_4F6B:
    ld a, $66                                     ; $4F6B: $3E $66
    ldh [hScript.State], a                                  ; $4F6D: $E0 $A4
    ld a, $0A                                     ; $4F6F: $3E $0A
    ldh [hScript.State+1], a                                  ; $4F71: $E0 $A5
    ld a, $C3                                     ; $4F73: $3E $C3
    ldh [hScript.Frame], a                                  ; $4F75: $E0 $A2
    ld a, $5C                                     ; $4F77: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $4F79: $E0 $A3
    jp Jump_001_5D9B                              ; $4F7B: $C3 $9B $5D


Jump_001_4F7E:
    ld a, $66                                     ; $4F7E: $3E $66
    ldh [hScript.State], a                                  ; $4F80: $E0 $A4
    ld a, $0A                                     ; $4F82: $3E $0A
    ldh [hScript.State+1], a                                  ; $4F84: $E0 $A5
    ld a, $F5                                     ; $4F86: $3E $F5
    ldh [hScript.Frame], a                                  ; $4F88: $E0 $A2
    ld a, $5C                                     ; $4F8A: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $4F8C: $E0 $A3
    ld a, $B7                                     ; $4F8E: $3E $B7
    ldh [hActor.State], a                                  ; $4F90: $E0 $8D
    ld a, $4F                                     ; $4F92: $3E $4F
    ldh [hActor.State+1], a                                  ; $4F94: $E0 $8E
    jp Jump_001_5D9B                              ; $4F96: $C3 $9B $5D


    call Call_001_5DE1                            ; $4F99: $CD $E1 $5D

Jump_001_4F9C:
    ld a, $66                                     ; $4F9C: $3E $66
    ldh [hScript.State], a                                  ; $4F9E: $E0 $A4
    ld a, $0A                                     ; $4FA0: $3E $0A
    ldh [hScript.State+1], a                                  ; $4FA2: $E0 $A5
    ld a, $2E                                     ; $4FA4: $3E $2E
    ldh [hScript.Frame], a                                  ; $4FA6: $E0 $A2
    ld a, $5D                                     ; $4FA8: $3E $5D
    ldh [hScript.Frame+1], a                                  ; $4FAA: $E0 $A3
    ld a, $B7                                     ; $4FAC: $3E $B7
    ldh [hActor.State], a                                  ; $4FAE: $E0 $8D
    ld a, $4F                                     ; $4FB0: $3E $4F
    ldh [hActor.State+1], a                                  ; $4FB2: $E0 $8E
    jp Jump_001_5D9B                              ; $4FB4: $C3 $9B $5D


    ld a, $01                                     ; $4FB7: $3E $01
    ldh [hActor.Flags], a                                  ; $4FB9: $E0 $8C
    call Call_001_5DE1                            ; $4FBB: $CD $E1 $5D
    call Call_001_4ECB                            ; $4FBE: $CD $CB $4E
    ld a, [$C9A4]                                 ; $4FC1: $FA $A4 $C9
    bit 4, a                                      ; $4FC4: $CB $67
    jp nz, Jump_001_5046                          ; $4FC6: $C2 $46 $50

    bit 6, a                                      ; $4FC9: $CB $77
    jp nz, Jump_001_50F0                          ; $4FCB: $C2 $F0 $50

    bit 7, a                                      ; $4FCE: $CB $7F
    jp nz, Jump_001_4EF2                          ; $4FD0: $C2 $F2 $4E

    call Call_001_5E65                            ; $4FD3: $CD $65 $5E
    ld a, [wColl_XMove]                                 ; $4FD6: $FA $D2 $C6
    and a                                         ; $4FD9: $A7
    jp z, Jump_001_5D9B                           ; $4FDA: $CA $9B $5D

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $4FE5: $CD $2E $42
    call Call_001_4AF0                            ; $4FE8: $CD $F0 $4A
    ld a, [wColl_XDelta]                                 ; $4FEB: $FA $D0 $C6
    and a                                         ; $4FEE: $A7
    jp z, Jump_001_5D9B                           ; $4FEF: $CA $9B $5D

    ld a, [wColl_XMove]                                 ; $4FF2: $FA $D2 $C6
    and a                                         ; $4FF5: $A7
    jp nz, Jump_001_5D9B                          ; $4FF6: $C2 $9B $5D

    call Call_001_4CDD                            ; $4FF9: $CD $DD $4C
    ld a, [hl]                                    ; $4FFC: $7E
    cp $02                                        ; $4FFD: $FE $02
    jp z, Jump_001_5D9B                           ; $4FFF: $CA $9B $5D

    cp $00                                        ; $5002: $FE $00
    jp nz, Jump_001_5015                          ; $5004: $C2 $15 $50

    call Call_001_4EC2                            ; $5007: $CD $C2 $4E
    ld a, $E7                                     ; $500A: $3E $E7
    ldh [hScript.Frame], a                                  ; $500C: $E0 $A2
    ld a, $59                                     ; $500E: $3E $59
    ldh [hScript.Frame+1], a                                  ; $5010: $E0 $A3
    jp Jump_001_5DA2                              ; $5012: $C3 $A2 $5D


Jump_001_5015:
    ld a, $66                                     ; $5015: $3E $66
    ldh [hScript.State], a                                  ; $5017: $E0 $A4
    ld a, $0A                                     ; $5019: $3E $0A
    ldh [hScript.State+1], a                                  ; $501B: $E0 $A5
    ld a, $3E                                     ; $501D: $3E $3E
    ldh [hScript.Frame], a                                  ; $501F: $E0 $A2
    ld a, $5D                                     ; $5021: $3E $5D
    ldh [hScript.Frame+1], a                                  ; $5023: $E0 $A3
    jp Jump_001_5D9B                              ; $5025: $C3 $9B $5D


Jump_001_5028:
    ld a, $66                                     ; $5028: $3E $66
    ldh [hScript.State], a                                  ; $502A: $E0 $A4
    ld a, $0A                                     ; $502C: $3E $0A
    ldh [hScript.State+1], a                                  ; $502E: $E0 $A5
    ld a, $70                                     ; $5030: $3E $70
    ldh [hScript.Frame], a                                  ; $5032: $E0 $A2
    ld a, $5D                                     ; $5034: $3E $5D
    ldh [hScript.Frame+1], a                                  ; $5036: $E0 $A3
    ld a, $61                                     ; $5038: $3E $61
    ldh [hActor.State], a                                  ; $503A: $E0 $8D
    ld a, $50                                     ; $503C: $3E $50
    ldh [hActor.State+1], a                                  ; $503E: $E0 $8E
    jp Jump_001_5D9B                              ; $5040: $C3 $9B $5D


    call Call_001_5DE1                            ; $5043: $CD $E1 $5D

Jump_001_5046:
    ld a, $66                                     ; $5046: $3E $66
    ldh [hScript.State], a                                  ; $5048: $E0 $A4
    ld a, $0A                                     ; $504A: $3E $0A
    ldh [hScript.State+1], a                                  ; $504C: $E0 $A5
    ld a, $A9                                     ; $504E: $3E $A9
    ldh [hScript.Frame], a                                  ; $5050: $E0 $A2
    ld a, $5D                                     ; $5052: $3E $5D
    ldh [hScript.Frame+1], a                                  ; $5054: $E0 $A3
    ld a, $61                                     ; $5056: $3E $61
    ldh [hActor.State], a                                  ; $5058: $E0 $8D
    ld a, $50                                     ; $505A: $3E $50
    ldh [hActor.State+1], a                                  ; $505C: $E0 $8E
    jp Jump_001_5D9B                              ; $505E: $C3 $9B $5D


    ld a, $02                                     ; $5061: $3E $02
    ldh [hActor.Flags], a                                  ; $5063: $E0 $8C
    call Call_001_5DE1                            ; $5065: $CD $E1 $5D
    call Call_001_4ECB                            ; $5068: $CD $CB $4E
    ld a, [$C9A4]                                 ; $506B: $FA $A4 $C9
    bit 5, a                                      ; $506E: $CB $6F
    jp nz, Jump_001_4F9C                          ; $5070: $C2 $9C $4F

    bit 7, a                                      ; $5073: $CB $7F
    jp nz, Jump_001_4EF2                          ; $5075: $C2 $F2 $4E

    bit 6, a                                      ; $5078: $CB $77
    jp nz, Jump_001_50F0                          ; $507A: $C2 $F0 $50

    call Call_001_5E65                            ; $507D: $CD $65 $5E
    ld a, [wColl_XMove]                                 ; $5080: $FA $D2 $C6
    and a                                         ; $5083: $A7
    jp z, Jump_001_5D9B                           ; $5084: $CA $9B $5D

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $508F: $CD $2E $42
    call Call_001_4AF0                            ; $5092: $CD $F0 $4A
    ld a, [wColl_XDelta]                                 ; $5095: $FA $D0 $C6
    and a                                         ; $5098: $A7
    jp z, Jump_001_5D9B                           ; $5099: $CA $9B $5D

    ld a, [wColl_XMove]                                 ; $509C: $FA $D2 $C6
    and a                                         ; $509F: $A7
    jp nz, Jump_001_5D9B                          ; $50A0: $C2 $9B $5D

    call Call_001_4CF8                            ; $50A3: $CD $F8 $4C
    ld a, [hl]                                    ; $50A6: $7E
    cp $02                                        ; $50A7: $FE $02
    jp z, Jump_001_5D9B                           ; $50A9: $CA $9B $5D

    cp $00                                        ; $50AC: $FE $00
    jp nz, Jump_001_50BF                          ; $50AE: $C2 $BF $50

    call Call_001_4EC2                            ; $50B1: $CD $C2 $4E
    ld a, $21                                     ; $50B4: $3E $21
    ldh [hScript.Frame], a                                  ; $50B6: $E0 $A2
    ld a, $5A                                     ; $50B8: $3E $5A
    ldh [hScript.Frame+1], a                                  ; $50BA: $E0 $A3
    jp Jump_001_5DA2                              ; $50BC: $C3 $A2 $5D


Jump_001_50BF:
    ld a, $66                                     ; $50BF: $3E $66
    ldh [hScript.State], a                                  ; $50C1: $E0 $A4
    ld a, $0A                                     ; $50C3: $3E $0A
    ldh [hScript.State+1], a                                  ; $50C5: $E0 $A5
    ld a, $B9                                     ; $50C7: $3E $B9
    ldh [hScript.Frame], a                                  ; $50C9: $E0 $A2
    ld a, $5D                                     ; $50CB: $3E $5D
    ldh [hScript.Frame+1], a                                  ; $50CD: $E0 $A3
    jp Jump_001_5D9B                              ; $50CF: $C3 $9B $5D


Jump_001_50D2:
    ld a, $66                                     ; $50D2: $3E $66
    ldh [hScript.State], a                                  ; $50D4: $E0 $A4
    ld a, $0A                                     ; $50D6: $3E $0A
    ldh [hScript.State+1], a                                  ; $50D8: $E0 $A5
    ld a, $FF                                     ; $50DA: $3E $FF
    ldh [hScript.Frame], a                                  ; $50DC: $E0 $A2
    ld a, $5B                                     ; $50DE: $3E $5B
    ldh [hScript.Frame+1], a                                  ; $50E0: $E0 $A3
    ld a, $0B                                     ; $50E2: $3E $0B
    ldh [hActor.State], a                                  ; $50E4: $E0 $8D
    ld a, $51                                     ; $50E6: $3E $51
    ldh [hActor.State+1], a                                  ; $50E8: $E0 $8E
    jp Jump_001_5D9B                              ; $50EA: $C3 $9B $5D


    call Call_001_5DE1                            ; $50ED: $CD $E1 $5D

Jump_001_50F0:
    ld a, $66                                     ; $50F0: $3E $66
    ldh [hScript.State], a                                  ; $50F2: $E0 $A4
    ld a, $0A                                     ; $50F4: $3E $0A
    ldh [hScript.State+1], a                                  ; $50F6: $E0 $A5
    ld a, $38                                     ; $50F8: $3E $38
    ldh [hScript.Frame], a                                  ; $50FA: $E0 $A2
    ld a, $5C                                     ; $50FC: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $50FE: $E0 $A3
    ld a, $0B                                     ; $5100: $3E $0B
    ldh [hActor.State], a                                  ; $5102: $E0 $8D
    ld a, $51                                     ; $5104: $3E $51
    ldh [hActor.State+1], a                                  ; $5106: $E0 $8E
    jp Jump_001_5D9B                              ; $5108: $C3 $9B $5D


    ld a, $00                                     ; $510B: $3E $00
    ldh [hActor.Flags], a                                  ; $510D: $E0 $8C
    call Call_001_5DE1                            ; $510F: $CD $E1 $5D
    call Call_001_4ECB                            ; $5112: $CD $CB $4E
    ld a, [$C9A4]                                 ; $5115: $FA $A4 $C9
    bit 7, a                                      ; $5118: $CB $7F
    jp nz, Jump_001_4EF2                          ; $511A: $C2 $F2 $4E

    bit 4, a                                      ; $511D: $CB $67
    jp nz, Jump_001_5046                          ; $511F: $C2 $46 $50

    bit 5, a                                      ; $5122: $CB $6F
    jp nz, Jump_001_4F9C                          ; $5124: $C2 $9C $4F

    call Call_001_5E65                            ; $5127: $CD $65 $5E
    ld a, [wColl_YMove]                                 ; $512A: $FA $D3 $C6
    and a                                         ; $512D: $A7
    jp z, Jump_001_5D9B                           ; $512E: $CA $9B $5D

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5139: $CD $2E $42
    call Call_001_4AF0                            ; $513C: $CD $F0 $4A
    ld a, [wColl_YDelta]                                 ; $513F: $FA $D1 $C6
    and a                                         ; $5142: $A7
    jp z, Jump_001_5D9B                           ; $5143: $CA $9B $5D

    ld a, [wColl_YMove]                                 ; $5146: $FA $D3 $C6
    and a                                         ; $5149: $A7
    jp nz, Jump_001_5D9B                          ; $514A: $C2 $9B $5D

    call Call_001_4D13                            ; $514D: $CD $13 $4D
    ld a, [hl]                                    ; $5150: $7E
    cp $02                                        ; $5151: $FE $02
    jp z, Jump_001_5D9B                           ; $5153: $CA $9B $5D

    cp $00                                        ; $5156: $FE $00
    jp nz, Jump_001_5169                          ; $5158: $C2 $69 $51

    call Call_001_4EC2                            ; $515B: $CD $C2 $4E
    ld a, $5B                                     ; $515E: $3E $5B
    ldh [hScript.Frame], a                                  ; $5160: $E0 $A2
    ld a, $5A                                     ; $5162: $3E $5A
    ldh [hScript.Frame+1], a                                  ; $5164: $E0 $A3
    jp Jump_001_5DA2                              ; $5166: $C3 $A2 $5D


Jump_001_5169:
    ld a, $66                                     ; $5169: $3E $66
    ldh [hScript.State], a                                  ; $516B: $E0 $A4
    ld a, $0A                                     ; $516D: $3E $0A
    ldh [hScript.State+1], a                                  ; $516F: $E0 $A5
    ld a, $48                                     ; $5171: $3E $48
    ldh [hScript.Frame], a                                  ; $5173: $E0 $A2
    ld a, $5C                                     ; $5175: $3E $5C
    ldh [hScript.Frame+1], a                                  ; $5177: $E0 $A3
    jp Jump_001_5D9B                              ; $5179: $C3 $9B $5D


Call_001_517C:
    ld a, [$C9A6]                                 ; $517C: $FA $A6 $C9
    sub $04                                       ; $517F: $D6 $04
    jp c, Jump_001_519E                           ; $5181: $DA $9E $51

    ld c, $00                                     ; $5184: $0E $00
    ld a, [hl]                                    ; $5186: $7E
    ld b, a                                       ; $5187: $47
    cp $02                                        ; $5188: $FE $02
    ret nz                                        ; $518A: $C0

    inc c                                         ; $518B: $0C
    add hl, de                                    ; $518C: $19
    ld a, [hl]                                    ; $518D: $7E
    cp $02                                        ; $518E: $FE $02
    jr nz, jr_001_5195                            ; $5190: $20 $03

jr_001_5192:
    inc c                                         ; $5192: $0C
    add hl, de                                    ; $5193: $19
    ld a, [hl]                                    ; $5194: $7E

jr_001_5195:
    cp $00                                        ; $5195: $FE $00
    ret z                                         ; $5197: $C8

    cp $82                                        ; $5198: $FE $82
    ret z                                         ; $519A: $C8

    ld c, $03                                     ; $519B: $0E $03
    ret                                           ; $519D: $C9


Jump_001_519E:
    ld c, $00                                     ; $519E: $0E $00
    ld a, [hl]                                    ; $51A0: $7E
    ld b, a                                       ; $51A1: $47
    cp $01                                        ; $51A2: $FE $01
    jr z, jr_001_51A9                             ; $51A4: $28 $03

    cp $02                                        ; $51A6: $FE $02
    ret nz                                        ; $51A8: $C0

jr_001_51A9:
    inc c                                         ; $51A9: $0C
    add hl, de                                    ; $51AA: $19
    ld a, [hl]                                    ; $51AB: $7E
    cp $01                                        ; $51AC: $FE $01
    jr z, jr_001_51B4                             ; $51AE: $28 $04

    cp $02                                        ; $51B0: $FE $02
    jr nz, jr_001_5195                            ; $51B2: $20 $E1

jr_001_51B4:
    jr jr_001_5192                                ; $51B4: $18 $DC

Call_001_51B6:
    call Call_001_517C                            ; $51B6: $CD $7C $51
    ld a, c                                       ; $51B9: $79
    and a                                         ; $51BA: $A7
    ret z                                         ; $51BB: $C8

    pop af                                        ; $51BC: $F1
    dec c                                         ; $51BD: $0D
    jp z, Jump_001_51D8                           ; $51BE: $CA $D8 $51

    ld a, [$C9A6]                                 ; $51C1: $FA $A6 $C9
    sub $03                                       ; $51C4: $D6 $03
    jp c, Jump_001_5D9B                           ; $51C6: $DA $9B $5D

    dec c                                         ; $51C9: $0D
    jp z, Jump_001_51E5                           ; $51CA: $CA $E5 $51

    ld a, [$C9A6]                                 ; $51CD: $FA $A6 $C9
    sub $05                                       ; $51D0: $D6 $05
    jp c, Jump_001_5D9B                           ; $51D2: $DA $9B $5D

    jp Jump_001_4ED4                              ; $51D5: $C3 $D4 $4E


Jump_001_51D8:
    ld a, $38                                     ; $51D8: $3E $38
    ld [hScript.Frame], a                                 ; $51DA: $EA $A2 $FF
    ld a, $57                                     ; $51DD: $3E $57
    ld [hScript.Frame+1], a                                 ; $51DF: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $51E2: $C3 $A2 $5D


Jump_001_51E5:
    ld a, $5C                                     ; $51E5: $3E $5C
    ld [hScript.Frame], a                                 ; $51E7: $EA $A2 $FF
    ld a, $58                                     ; $51EA: $3E $58
    ld [hScript.Frame+1], a                                 ; $51EC: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $51EF: $C3 $A2 $5D


Call_001_51F2:
    call Call_001_517C                            ; $51F2: $CD $7C $51
    ld a, c                                       ; $51F5: $79
    and a                                         ; $51F6: $A7
    ret z                                         ; $51F7: $C8

    pop af                                        ; $51F8: $F1
    dec c                                         ; $51F9: $0D
    jp z, Jump_001_5214                           ; $51FA: $CA $14 $52

    ld a, [$C9A6]                                 ; $51FD: $FA $A6 $C9
    sub $03                                       ; $5200: $D6 $03
    jp c, Jump_001_5D9B                           ; $5202: $DA $9B $5D

    dec c                                         ; $5205: $0D
    jp z, Jump_001_5221                           ; $5206: $CA $21 $52

    ld a, [$C9A6]                                 ; $5209: $FA $A6 $C9
    sub $05                                       ; $520C: $D6 $05
    jp c, Jump_001_5D9B                           ; $520E: $DA $9B $5D

    jp Jump_001_4F7E                              ; $5211: $C3 $7E $4F


Jump_001_5214:
    ld a, $7B                                     ; $5214: $3E $7B
    ld [hScript.Frame], a                                 ; $5216: $EA $A2 $FF
    ld a, $56                                     ; $5219: $3E $56
    ld [hScript.Frame+1], a                                 ; $521B: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $521E: $C3 $A2 $5D


Jump_001_5221:
    ld a, $77                                     ; $5221: $3E $77
    ld [hScript.Frame], a                                 ; $5223: $EA $A2 $FF
    ld a, $57                                     ; $5226: $3E $57
    ld [hScript.Frame+1], a                                 ; $5228: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $522B: $C3 $A2 $5D


Call_001_522E:
    call Call_001_517C                            ; $522E: $CD $7C $51
    ld a, c                                       ; $5231: $79
    and a                                         ; $5232: $A7
    ret z                                         ; $5233: $C8

    pop af                                        ; $5234: $F1
    dec c                                         ; $5235: $0D
    jp z, Jump_001_5250                           ; $5236: $CA $50 $52

    ld a, [$C9A6]                                 ; $5239: $FA $A6 $C9
    sub $03                                       ; $523C: $D6 $03
    jp c, Jump_001_5D9B                           ; $523E: $DA $9B $5D

    dec c                                         ; $5241: $0D
    jp z, Jump_001_525D                           ; $5242: $CA $5D $52

    ld a, [$C9A6]                                 ; $5245: $FA $A6 $C9
    sub $05                                       ; $5248: $D6 $05
    jp c, Jump_001_5D9B                           ; $524A: $DA $9B $5D

    jp Jump_001_5028                              ; $524D: $C3 $28 $50


Jump_001_5250:
    ld a, $BA                                     ; $5250: $3E $BA
    ld [hScript.Frame], a                                 ; $5252: $EA $A2 $FF
    ld a, $56                                     ; $5255: $3E $56
    ld [hScript.Frame+1], a                                 ; $5257: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $525A: $C3 $A2 $5D


Jump_001_525D:
    ld a, $C5                                     ; $525D: $3E $C5
    ld [hScript.Frame], a                                 ; $525F: $EA $A2 $FF
    ld a, $57                                     ; $5262: $3E $57
    ld [hScript.Frame+1], a                                 ; $5264: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5267: $C3 $A2 $5D


Call_001_526A:
    call Call_001_517C                            ; $526A: $CD $7C $51
    ld a, c                                       ; $526D: $79
    and a                                         ; $526E: $A7
    ret z                                         ; $526F: $C8

    pop af                                        ; $5270: $F1
    dec c                                         ; $5271: $0D
    jp z, Jump_001_528C                           ; $5272: $CA $8C $52

    ld a, [$C9A6]                                 ; $5275: $FA $A6 $C9
    sub $03                                       ; $5278: $D6 $03
    jp c, Jump_001_5D9B                           ; $527A: $DA $9B $5D

    dec c                                         ; $527D: $0D
    jp z, Jump_001_5299                           ; $527E: $CA $99 $52

    ld a, [$C9A6]                                 ; $5281: $FA $A6 $C9
    sub $05                                       ; $5284: $D6 $05
    jp c, Jump_001_5D9B                           ; $5286: $DA $9B $5D

    jp Jump_001_50D2                              ; $5289: $C3 $D2 $50


Jump_001_528C:
    ld a, $F9                                     ; $528C: $3E $F9
    ld [hScript.Frame], a                                 ; $528E: $EA $A2 $FF
    ld a, $56                                     ; $5291: $3E $56
    ld [hScript.Frame+1], a                                 ; $5293: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5296: $C3 $A2 $5D


Jump_001_5299:
    ld a, $13                                     ; $5299: $3E $13
    ld [hScript.Frame], a                                 ; $529B: $EA $A2 $FF
    ld a, $58                                     ; $529E: $3E $58
    ld [hScript.Frame+1], a                                 ; $52A0: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $52A3: $C3 $A2 $5D


Jump_001_52A6:
    ld a, $03                                     ; $52A6: $3E $03
    ldh [hActor.Flags], a                                  ; $52A8: $E0 $8C
    ld a, $66                                     ; $52AA: $3E $66
    ldh [hScript.State], a                                  ; $52AC: $E0 $A4
    ld a, $0A                                     ; $52AE: $3E $0A
    ldh [hScript.State+1], a                                  ; $52B0: $E0 $A5
    ld a, $5D                                     ; $52B2: $3E $5D
    ldh [hScript.Frame], a                                  ; $52B4: $E0 $A2
    ld a, $50                                     ; $52B6: $3E $50
    ldh [hScript.Frame+1], a                                  ; $52B8: $E0 $A3
    ld a, $C5                                     ; $52BA: $3E $C5
    ldh [hActor.State], a                                  ; $52BC: $E0 $8D
    ld a, $52                                     ; $52BE: $3E $52
    ldh [hActor.State+1], a                                  ; $52C0: $E0 $8E
    jp Jump_001_5D9B                              ; $52C2: $C3 $9B $5D


    call Call_001_5DE1                            ; $52C5: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $52C8: $FA $A3 $C9
    bit 7, a                                      ; $52CB: $CB $7F
    jr nz, jr_001_52DC                            ; $52CD: $20 $0D

    ld a, $B5                                     ; $52CF: $3E $B5
    ld [hScript.Frame], a                                 ; $52D1: $EA $A2 $FF
    ld a, $50                                     ; $52D4: $3E $50
    ld [hScript.Frame+1], a                                 ; $52D6: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $52D9: $C3 $FD $5D


jr_001_52DC:
    bit 5, a                                      ; $52DC: $CB $6F
    jp nz, Jump_001_5313                          ; $52DE: $C2 $13 $53

    bit 4, a                                      ; $52E1: $CB $67
    jp nz, Jump_001_53A5                          ; $52E3: $C2 $A5 $53

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $52EE: $CD $2E $42
    call Call_001_4AF0                            ; $52F1: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $52F4: $FA $D3 $C6
    and a                                         ; $52F7: $A7
    jr nz, jr_001_5305                            ; $52F8: $20 $0B

    call Call_001_4B7B                            ; $52FA: $CD $7B $4B
    call Call_001_51B6                            ; $52FD: $CD $B6 $51
    call Call_001_570D                            ; $5300: $CD $0D $57
    jr jr_001_5308                                ; $5303: $18 $03

jr_001_5305:
    call Call_001_4221                            ; $5305: $CD $21 $42

jr_001_5308:
    ld a, [$C9A3]                                 ; $5308: $FA $A3 $C9
    bit 1, a                                      ; $530B: $CB $4F
    jp z, Jump_001_54A4                           ; $530D: $CA $A4 $54

    jp Jump_001_5D9B                              ; $5310: $C3 $9B $5D


Jump_001_5313:
    ld a, $01                                     ; $5313: $3E $01
    ldh [hActor.Flags], a                                  ; $5315: $E0 $8C
    ld a, $66                                     ; $5317: $3E $66
    ldh [hScript.State], a                                  ; $5319: $E0 $A4
    ld a, $0A                                     ; $531B: $3E $0A
    ldh [hScript.State+1], a                                  ; $531D: $E0 $A5
    ld a, $77                                     ; $531F: $3E $77
    ldh [hScript.Frame], a                                  ; $5321: $E0 $A2
    ld a, $50                                     ; $5323: $3E $50
    ldh [hScript.Frame+1], a                                  ; $5325: $E0 $A3
    ld a, $32                                     ; $5327: $3E $32
    ldh [hActor.State], a                                  ; $5329: $E0 $8D
    ld a, $53                                     ; $532B: $3E $53
    ldh [hActor.State+1], a                                  ; $532D: $E0 $8E
    jp Jump_001_5D9B                              ; $532F: $C3 $9B $5D


    call Call_001_5DE1                            ; $5332: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5335: $FA $A3 $C9
    bit 5, a                                      ; $5338: $CB $6F
    jr nz, jr_001_5349                            ; $533A: $20 $0D

    ld a, $FB                                     ; $533C: $3E $FB
    ld [hScript.Frame], a                                 ; $533E: $EA $A2 $FF
    ld a, $50                                     ; $5341: $3E $50
    ld [hScript.Frame+1], a                                 ; $5343: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $5346: $C3 $FD $5D


jr_001_5349:
    bit 6, a                                      ; $5349: $CB $77
    jr z, jr_001_5354                             ; $534B: $28 $07

    ld a, $FF                                     ; $534D: $3E $FF
    ld [wColl_YMove], a                                 ; $534F: $EA $D3 $C6
    jr jr_001_535D                                ; $5352: $18 $09

jr_001_5354:
    bit 7, a                                      ; $5354: $CB $7F
    jr z, jr_001_535D                             ; $5356: $28 $05

    ld a, $01                                     ; $5358: $3E $01
    ld [wColl_YMove], a                                 ; $535A: $EA $D3 $C6

jr_001_535D:
    ld a, [hl]                                    ; $535D: $7E
    cp $AC                                        ; $535E: $FE $AC
    jr z, jr_001_5370                             ; $5360: $28 $0E

    cp $AD                                        ; $5362: $FE $AD
    jr nz, jr_001_5378                            ; $5364: $20 $12

    ld a, [wColl_YMove]                                 ; $5366: $FA $D3 $C6
    dec a                                         ; $5369: $3D
    dec a                                         ; $536A: $3D
    ld [wColl_YMove], a                                 ; $536B: $EA $D3 $C6
    jr jr_001_5378                                ; $536E: $18 $08

jr_001_5370:
    ld a, [wColl_YMove]                                 ; $5370: $FA $D3 $C6
    inc a                                         ; $5373: $3C
    inc a                                         ; $5374: $3C
    ld [wColl_YMove], a                                 ; $5375: $EA $D3 $C6

jr_001_5378:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5380: $CD $2E $42
    call Call_001_4AF0                            ; $5383: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $5386: $FA $D2 $C6
    and a                                         ; $5389: $A7
    jr nz, jr_001_5397                            ; $538A: $20 $0B

    call Call_001_4BCC                            ; $538C: $CD $CC $4B
    call Call_001_51F2                            ; $538F: $CD $F2 $51
    call Call_001_5728                            ; $5392: $CD $28 $57
    jr jr_001_539A                                ; $5395: $18 $03

jr_001_5397:
    call Call_001_4221                            ; $5397: $CD $21 $42

jr_001_539A:
    ld a, [$C9A3]                                 ; $539A: $FA $A3 $C9
    bit 1, a                                      ; $539D: $CB $4F
    jp z, Jump_001_5515                           ; $539F: $CA $15 $55

    jp Jump_001_5D9B                              ; $53A2: $C3 $9B $5D


Jump_001_53A5:
    ld a, $02                                     ; $53A5: $3E $02
    ldh [hActor.Flags], a                                  ; $53A7: $E0 $8C
    ld a, $66                                     ; $53A9: $3E $66
    ldh [hScript.State], a                                  ; $53AB: $E0 $A4
    ld a, $0A                                     ; $53AD: $3E $0A
    ldh [hScript.State+1], a                                  ; $53AF: $E0 $A5
    ld a, $91                                     ; $53B1: $3E $91
    ldh [hScript.Frame], a                                  ; $53B3: $E0 $A2
    ld a, $50                                     ; $53B5: $3E $50
    ldh [hScript.Frame+1], a                                  ; $53B7: $E0 $A3
    ld a, $C4                                     ; $53B9: $3E $C4
    ldh [hActor.State], a                                  ; $53BB: $E0 $8D
    ld a, $53                                     ; $53BD: $3E $53
    ldh [hActor.State+1], a                                  ; $53BF: $E0 $8E
    jp Jump_001_5D9B                              ; $53C1: $C3 $9B $5D


    call Call_001_5DE1                            ; $53C4: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $53C7: $FA $A3 $C9
    bit 4, a                                      ; $53CA: $CB $67
    jr nz, jr_001_53DB                            ; $53CC: $20 $0D

    ld a, $31                                     ; $53CE: $3E $31
    ld [hScript.Frame], a                                 ; $53D0: $EA $A2 $FF
    ld a, $51                                     ; $53D3: $3E $51
    ld [hScript.Frame+1], a                                 ; $53D5: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $53D8: $C3 $FD $5D


jr_001_53DB:
    bit 6, a                                      ; $53DB: $CB $77
    jr z, jr_001_53E6                             ; $53DD: $28 $07

    ld a, $FF                                     ; $53DF: $3E $FF
    ld [wColl_YMove], a                                 ; $53E1: $EA $D3 $C6
    jr jr_001_53EF                                ; $53E4: $18 $09

jr_001_53E6:
    bit 7, a                                      ; $53E6: $CB $7F
    jr z, jr_001_53EF                             ; $53E8: $28 $05

    ld a, $01                                     ; $53EA: $3E $01
    ld [wColl_YMove], a                                 ; $53EC: $EA $D3 $C6

jr_001_53EF:
    ld a, [hl]                                    ; $53EF: $7E
    cp $AC                                        ; $53F0: $FE $AC
    jr z, jr_001_5402                             ; $53F2: $28 $0E

    cp $AD                                        ; $53F4: $FE $AD
    jr nz, jr_001_540A                            ; $53F6: $20 $12

    ld a, [wColl_YMove]                                 ; $53F8: $FA $D3 $C6
    inc a                                         ; $53FB: $3C
    inc a                                         ; $53FC: $3C
    ld [wColl_YMove], a                                 ; $53FD: $EA $D3 $C6
    jr jr_001_540A                                ; $5400: $18 $08

jr_001_5402:
    ld a, [wColl_YMove]                                 ; $5402: $FA $D3 $C6
    dec a                                         ; $5405: $3D
    dec a                                         ; $5406: $3D
    ld [wColl_YMove], a                                 ; $5407: $EA $D3 $C6

jr_001_540A:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5412: $CD $2E $42
    call Call_001_4AF0                            ; $5415: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $5418: $FA $D2 $C6
    and a                                         ; $541B: $A7
    jr nz, jr_001_5429                            ; $541C: $20 $0B

    call Call_001_4C1D                            ; $541E: $CD $1D $4C
    call Call_001_522E                            ; $5421: $CD $2E $52
    call Call_001_5743                            ; $5424: $CD $43 $57
    jr jr_001_542C                                ; $5427: $18 $03

jr_001_5429:
    call Call_001_4221                            ; $5429: $CD $21 $42

jr_001_542C:
    ld a, [$C9A3]                                 ; $542C: $FA $A3 $C9
    bit 1, a                                      ; $542F: $CB $4F
    jp z, Jump_001_55AE                           ; $5431: $CA $AE $55

    jp Jump_001_5D9B                              ; $5434: $C3 $9B $5D


Jump_001_5437:
    ld a, $00                                     ; $5437: $3E $00
    ldh [hActor.Flags], a                                  ; $5439: $E0 $8C
    ld a, $66                                     ; $543B: $3E $66
    ldh [hScript.State], a                                  ; $543D: $E0 $A4
    ld a, $0A                                     ; $543F: $3E $0A
    ldh [hScript.State+1], a                                  ; $5441: $E0 $A5
    ld a, $4D                                     ; $5443: $3E $4D
    ldh [hScript.Frame], a                                  ; $5445: $E0 $A2
    ld a, $50                                     ; $5447: $3E $50
    ldh [hScript.Frame+1], a                                  ; $5449: $E0 $A3
    ld a, $56                                     ; $544B: $3E $56
    ldh [hActor.State], a                                  ; $544D: $E0 $8D
    ld a, $54                                     ; $544F: $3E $54
    ldh [hActor.State+1], a                                  ; $5451: $E0 $8E
    jp Jump_001_5D9B                              ; $5453: $C3 $9B $5D


    call Call_001_5DE1                            ; $5456: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5459: $FA $A3 $C9
    bit 6, a                                      ; $545C: $CB $77
    jr nz, jr_001_546D                            ; $545E: $20 $0D

    ld a, $AB                                     ; $5460: $3E $AB
    ld [hScript.Frame], a                                 ; $5462: $EA $A2 $FF
    ld a, $50                                     ; $5465: $3E $50
    ld [hScript.Frame+1], a                                 ; $5467: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $546A: $C3 $FD $5D


jr_001_546D:
    bit 5, a                                      ; $546D: $CB $6F
    jp nz, Jump_001_5313                          ; $546F: $C2 $13 $53

    bit 4, a                                      ; $5472: $CB $67
    jp nz, Jump_001_53A5                          ; $5474: $C2 $A5 $53

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $547F: $CD $2E $42
    call Call_001_4AF0                            ; $5482: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $5485: $FA $D3 $C6
    and a                                         ; $5488: $A7
    jr nz, jr_001_5496                            ; $5489: $20 $0B

    call Call_001_4C6E                            ; $548B: $CD $6E $4C
    call Call_001_526A                            ; $548E: $CD $6A $52
    call Call_001_575E                            ; $5491: $CD $5E $57
    jr jr_001_5499                                ; $5494: $18 $03

jr_001_5496:
    call Call_001_4221                            ; $5496: $CD $21 $42

jr_001_5499:
    ld a, [$C9A3]                                 ; $5499: $FA $A3 $C9
    bit 1, a                                      ; $549C: $CB $4F
    jp z, Jump_001_5647                           ; $549E: $CA $47 $56

    jp Jump_001_5D9B                              ; $54A1: $C3 $9B $5D


Jump_001_54A4:
    ld a, $03                                     ; $54A4: $3E $03
    ldh [hActor.Flags], a                                  ; $54A6: $E0 $8C
    ld a, $66                                     ; $54A8: $3E $66
    ldh [hScript.State], a                                  ; $54AA: $E0 $A4
    ld a, $0A                                     ; $54AC: $3E $0A
    ldh [hScript.State+1], a                                  ; $54AE: $E0 $A5
    ld a, $CD                                     ; $54B0: $3E $CD
    ldh [hScript.Frame], a                                  ; $54B2: $E0 $A2
    ld a, $4F                                     ; $54B4: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $54B6: $E0 $A3
    ld a, $C3                                     ; $54B8: $3E $C3
    ldh [hActor.State], a                                  ; $54BA: $E0 $8D
    ld a, $54                                     ; $54BC: $3E $54
    ldh [hActor.State+1], a                                  ; $54BE: $E0 $8E
    jp Jump_001_5D9B                              ; $54C0: $C3 $9B $5D


    call Call_001_4212                            ; $54C3: $CD $12 $42
    call Call_001_5DE1                            ; $54C6: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $54C9: $FA $A3 $C9
    bit 7, a                                      ; $54CC: $CB $7F
    jp nz, Jump_001_54DE                          ; $54CE: $C2 $DE $54

    ld a, $B5                                     ; $54D1: $3E $B5
    ld [hScript.Frame], a                                 ; $54D3: $EA $A2 $FF
    ld a, $50                                     ; $54D6: $3E $50
    ld [hScript.Frame+1], a                                 ; $54D8: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $54DB: $C3 $FD $5D


Jump_001_54DE:
    bit 5, a                                      ; $54DE: $CB $6F
    jr z, jr_001_54E5                             ; $54E0: $28 $03

    jp Jump_001_5515                              ; $54E2: $C3 $15 $55


jr_001_54E5:
    bit 4, a                                      ; $54E5: $CB $67
    jr z, jr_001_54EC                             ; $54E7: $28 $03

    jp Jump_001_55AE                              ; $54E9: $C3 $AE $55


jr_001_54EC:
    ld a, [$C9A3]                                 ; $54EC: $FA $A3 $C9
    bit 1, a                                      ; $54EF: $CB $4F
    jp nz, Jump_001_52A6                          ; $54F1: $C2 $A6 $52

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $54FC: $CD $2E $42
    call Call_001_4AF0                            ; $54FF: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $5502: $FA $D3 $C6
    and a                                         ; $5505: $A7
    jr z, jr_001_550B                             ; $5506: $28 $03

    call Call_001_4212                            ; $5508: $CD $12 $42

jr_001_550B:
    ld a, [wColl_YMove]                                 ; $550B: $FA $D3 $C6
    and a                                         ; $550E: $A7
    call z, Call_001_4B7B                         ; $550F: $CC $7B $4B
    jp Jump_001_5D9B                              ; $5512: $C3 $9B $5D


Jump_001_5515:
    ld a, $01                                     ; $5515: $3E $01
    ldh [hActor.Flags], a                                  ; $5517: $E0 $8C
    ld a, $66                                     ; $5519: $3E $66
    ldh [hScript.State], a                                  ; $551B: $E0 $A4
    ld a, $0A                                     ; $551D: $3E $0A
    ldh [hScript.State+1], a                                  ; $551F: $E0 $A5
    ld a, $DD                                     ; $5521: $3E $DD
    ldh [hScript.Frame], a                                  ; $5523: $E0 $A2
    ld a, $4F                                     ; $5525: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $5527: $E0 $A3
    ld a, $34                                     ; $5529: $3E $34
    ldh [hActor.State], a                                  ; $552B: $E0 $8D
    ld a, $55                                     ; $552D: $3E $55
    ldh [hActor.State+1], a                                  ; $552F: $E0 $8E
    jp Jump_001_5D9B                              ; $5531: $C3 $9B $5D


    call Call_001_4212                            ; $5534: $CD $12 $42
    call Call_001_5DE1                            ; $5537: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $553A: $FA $A3 $C9
    bit 5, a                                      ; $553D: $CB $6F
    jr nz, jr_001_554E                            ; $553F: $20 $0D

    ld a, $FB                                     ; $5541: $3E $FB
    ld [hScript.Frame], a                                 ; $5543: $EA $A2 $FF
    ld a, $50                                     ; $5546: $3E $50
    ld [hScript.Frame+1], a                                 ; $5548: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $554B: $C3 $FD $5D


jr_001_554E:
    ldh a, [$FFA8]                                  ; $554E: $F0 $A8
    and $01                                       ; $5550: $E6 $01
    jp z, Jump_001_5574                           ; $5552: $CA $74 $55

    ld a, [$C9A3]                                 ; $5555: $FA $A3 $C9
    bit 6, a                                      ; $5558: $CB $77
    jr z, jr_001_5563                             ; $555A: $28 $07

    ld a, $FF                                     ; $555C: $3E $FF
    ld [wColl_YMove], a                                 ; $555E: $EA $D3 $C6
    jr jr_001_556C                                ; $5561: $18 $09

jr_001_5563:
    bit 7, a                                      ; $5563: $CB $7F
    jr z, jr_001_556C                             ; $5565: $28 $05

    ld a, $01                                     ; $5567: $3E $01
    ld [wColl_YMove], a                                 ; $5569: $EA $D3 $C6

jr_001_556C:
    ld a, [$C9A3]                                 ; $556C: $FA $A3 $C9
    bit 1, a                                      ; $556F: $CB $4F
    jp nz, Jump_001_5313                          ; $5571: $C2 $13 $53

Jump_001_5574:
    ld a, [hl]                                    ; $5574: $7E
    cp $AC                                        ; $5575: $FE $AC
    jr z, jr_001_5586                             ; $5577: $28 $0D

    cp $AD                                        ; $5579: $FE $AD
    jr nz, jr_001_558D                            ; $557B: $20 $10

    ld a, [wColl_YMove]                                 ; $557D: $FA $D3 $C6
    dec a                                         ; $5580: $3D
    ld [wColl_YMove], a                                 ; $5581: $EA $D3 $C6
    jr jr_001_558D                                ; $5584: $18 $07

jr_001_5586:
    ld a, [wColl_YMove]                                 ; $5586: $FA $D3 $C6
    inc a                                         ; $5589: $3C
    ld [wColl_YMove], a                                 ; $558A: $EA $D3 $C6

jr_001_558D:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5595: $CD $2E $42
    call Call_001_4AF0                            ; $5598: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $559B: $FA $D2 $C6
    and a                                         ; $559E: $A7
    jr z, jr_001_55A4                             ; $559F: $28 $03

    call Call_001_4212                            ; $55A1: $CD $12 $42

jr_001_55A4:
    ld a, [wColl_XMove]                                 ; $55A4: $FA $D2 $C6
    and a                                         ; $55A7: $A7
    call z, Call_001_4BCC                         ; $55A8: $CC $CC $4B
    jp Jump_001_5D9B                              ; $55AB: $C3 $9B $5D


Jump_001_55AE:
    ld a, $02                                     ; $55AE: $3E $02
    ldh [hActor.Flags], a                                  ; $55B0: $E0 $8C
    ld a, $66                                     ; $55B2: $3E $66
    ldh [hScript.State], a                                  ; $55B4: $E0 $A4
    ld a, $0A                                     ; $55B6: $3E $0A
    ldh [hScript.State+1], a                                  ; $55B8: $E0 $A5
    ld a, $ED                                     ; $55BA: $3E $ED
    ldh [hScript.Frame], a                                  ; $55BC: $E0 $A2
    ld a, $4F                                     ; $55BE: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $55C0: $E0 $A3
    ld a, $CD                                     ; $55C2: $3E $CD
    ldh [hActor.State], a                                  ; $55C4: $E0 $8D
    ld a, $55                                     ; $55C6: $3E $55
    ldh [hActor.State+1], a                                  ; $55C8: $E0 $8E
    jp Jump_001_5D9B                              ; $55CA: $C3 $9B $5D


    call Call_001_4212                            ; $55CD: $CD $12 $42
    call Call_001_5DE1                            ; $55D0: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $55D3: $FA $A3 $C9
    bit 4, a                                      ; $55D6: $CB $67
    jr nz, jr_001_55E7                            ; $55D8: $20 $0D

    ld a, $31                                     ; $55DA: $3E $31
    ld [hScript.Frame], a                                 ; $55DC: $EA $A2 $FF
    ld a, $51                                     ; $55DF: $3E $51
    ld [hScript.Frame+1], a                                 ; $55E1: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $55E4: $C3 $FD $5D


jr_001_55E7:
    ldh a, [$FFA8]                                  ; $55E7: $F0 $A8
    and $01                                       ; $55E9: $E6 $01
    jp z, Jump_001_560D                           ; $55EB: $CA $0D $56

    ld a, [$C9A3]                                 ; $55EE: $FA $A3 $C9
    bit 6, a                                      ; $55F1: $CB $77
    jr z, jr_001_55FC                             ; $55F3: $28 $07

    ld a, $FF                                     ; $55F5: $3E $FF
    ld [wColl_YMove], a                                 ; $55F7: $EA $D3 $C6
    jr jr_001_5605                                ; $55FA: $18 $09

jr_001_55FC:
    bit 7, a                                      ; $55FC: $CB $7F
    jr z, jr_001_5605                             ; $55FE: $28 $05

    ld a, $01                                     ; $5600: $3E $01
    ld [wColl_YMove], a                                 ; $5602: $EA $D3 $C6

jr_001_5605:
    ld a, [$C9A3]                                 ; $5605: $FA $A3 $C9
    bit 1, a                                      ; $5608: $CB $4F
    jp nz, Jump_001_53A5                          ; $560A: $C2 $A5 $53

Jump_001_560D:
    ld a, [hl]                                    ; $560D: $7E
    cp $AC                                        ; $560E: $FE $AC
    jr z, jr_001_561F                             ; $5610: $28 $0D

    cp $AD                                        ; $5612: $FE $AD
    jr nz, jr_001_5626                            ; $5614: $20 $10

    ld a, [wColl_YMove]                                 ; $5616: $FA $D3 $C6
    inc a                                         ; $5619: $3C
    ld [wColl_YMove], a                                 ; $561A: $EA $D3 $C6
    jr jr_001_5626                                ; $561D: $18 $07

jr_001_561F:
    ld a, [wColl_YMove]                                 ; $561F: $FA $D3 $C6
    dec a                                         ; $5622: $3D
    ld [wColl_YMove], a                                 ; $5623: $EA $D3 $C6

jr_001_5626:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $562E: $CD $2E $42
    call Call_001_4AF0                            ; $5631: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $5634: $FA $D2 $C6
    and a                                         ; $5637: $A7
    jr z, jr_001_563D                             ; $5638: $28 $03

    call Call_001_4212                            ; $563A: $CD $12 $42

jr_001_563D:
    ld a, [wColl_XMove]                                 ; $563D: $FA $D2 $C6
    and a                                         ; $5640: $A7
    call z, Call_001_4C1D                         ; $5641: $CC $1D $4C
    jp Jump_001_5D9B                              ; $5644: $C3 $9B $5D


Jump_001_5647:
    ld a, $00                                     ; $5647: $3E $00
    ldh [hActor.Flags], a                                  ; $5649: $E0 $8C
    ld a, $66                                     ; $564B: $3E $66
    ldh [hScript.State], a                                  ; $564D: $E0 $A4
    ld a, $0A                                     ; $564F: $3E $0A
    ldh [hScript.State+1], a                                  ; $5651: $E0 $A5
    ld a, $B3                                     ; $5653: $3E $B3
    ldh [hScript.Frame], a                                  ; $5655: $E0 $A2
    ld a, $4F                                     ; $5657: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $5659: $E0 $A3
    ld a, $66                                     ; $565B: $3E $66
    ldh [hActor.State], a                                  ; $565D: $E0 $8D
    ld a, $56                                     ; $565F: $3E $56
    ldh [hActor.State+1], a                                  ; $5661: $E0 $8E
    jp Jump_001_5D9B                              ; $5663: $C3 $9B $5D


    call Call_001_4212                            ; $5666: $CD $12 $42
    call Call_001_5DE1                            ; $5669: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $566C: $FA $A3 $C9
    bit 6, a                                      ; $566F: $CB $77
    jr nz, jr_001_5680                            ; $5671: $20 $0D

    ld a, $AB                                     ; $5673: $3E $AB
    ld [hScript.Frame], a                                 ; $5675: $EA $A2 $FF
    ld a, $50                                     ; $5678: $3E $50
    ld [hScript.Frame+1], a                                 ; $567A: $EA $A3 $FF
    jp Jump_001_5DFD                              ; $567D: $C3 $FD $5D


jr_001_5680:
    bit 5, a                                      ; $5680: $CB $6F
    jr z, jr_001_5687                             ; $5682: $28 $03

    jp Jump_001_5515                              ; $5684: $C3 $15 $55


jr_001_5687:
    bit 4, a                                      ; $5687: $CB $67
    jr z, jr_001_568E                             ; $5689: $28 $03

    jp Jump_001_55AE                              ; $568B: $C3 $AE $55


jr_001_568E:
    ld a, [$C9A3]                                 ; $568E: $FA $A3 $C9
    bit 1, a                                      ; $5691: $CB $4F
    jp nz, Jump_001_5437                          ; $5693: $C2 $37 $54

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $569E: $CD $2E $42
    call Call_001_4AF0                            ; $56A1: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $56A4: $FA $D3 $C6
    and a                                         ; $56A7: $A7
    jr z, jr_001_56AD                             ; $56A8: $28 $03

    call Call_001_4212                            ; $56AA: $CD $12 $42

jr_001_56AD:
    ld a, [wColl_YMove]                                 ; $56AD: $FA $D3 $C6
    and a                                         ; $56B0: $A7
    call z, Call_001_4C6E                         ; $56B1: $CC $6E $4C
    jp Jump_001_5D9B                              ; $56B4: $C3 $9B $5D


Call_001_56B7:
    xor a                                         ; $56B7: $AF
    ld [wCollMask], a                                 ; $56B8: $EA $2A $C1
    cpl                                           ; $56BB: $2F
    ld [$C12B], a                                 ; $56BC: $EA $2B $C1
    ret                                           ; $56BF: $C9


Call_001_56C0:
    xor a                                         ; $56C0: $AF
    ld [$C12B], a                                 ; $56C1: $EA $2B $C1
    cpl                                           ; $56C4: $2F
    ld [wCollMask], a                                 ; $56C5: $EA $2A $C1
    ret                                           ; $56C8: $C9


Jump_001_56C9:
    ld a, $66                                     ; $56C9: $3E $66
    ldh [hScript.State], a                                  ; $56CB: $E0 $A4
    ld a, $0A                                     ; $56CD: $3E $0A
    ldh [hScript.State+1], a                                  ; $56CF: $E0 $A5
    ld a, $DC                                     ; $56D1: $3E $DC
    ldh [hActor.State], a                                  ; $56D3: $E0 $8D
    ld a, $56                                     ; $56D5: $3E $56
    ldh [hActor.State+1], a                                  ; $56D7: $E0 $8E
    jp Jump_001_5D9B                              ; $56D9: $C3 $9B $5D


    ; $56DC
AI_Hero_Floating::
    call Call_001_5DE1                            ; $56DC: $CD $E1 $5D
    call Call_001_56C0                            ; $56DF: $CD $C0 $56
    ld a, [$C9A3]                                 ; $56E2: $FA $A3 $C9
    bit 4, a                                      ; $56E5: $CB $67
    jp nz, Jump_001_5888                          ; $56E7: $C2 $88 $58

    bit 5, a                                      ; $56EA: $CB $6F
    jp nz, Jump_001_57F9                          ; $56EC: $C2 $F9 $57

    bit 6, a                                      ; $56EF: $CB $77
    jp nz, Jump_001_5917                          ; $56F1: $C2 $17 $59

    bit 7, a                                      ; $56F4: $CB $7F
    jp nz, Jump_001_5779                          ; $56F6: $C2 $79 $57

    call Call_001_5E65                            ; $56F9: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5704: $CD $2E $42
    call Call_001_4AF0                            ; $5707: $CD $F0 $4A
    jp Jump_001_5D9B                              ; $570A: $C3 $9B $5D


Call_001_570D:
    ld a, [hl]                                    ; $570D: $7E
    cp $01                                        ; $570E: $FE $01
    ret nz                                        ; $5710: $C0

    ld a, [$C9A6]                                 ; $5711: $FA $A6 $C9
    sub $04                                       ; $5714: $D6 $04
    ret c                                         ; $5716: $D8

    call Call_001_56C0                            ; $5717: $CD $C0 $56
    pop af                                        ; $571A: $F1
    ld a, $A8                                     ; $571B: $3E $A8
    ld [hScript.Frame], a                                 ; $571D: $EA $A2 $FF
    ld a, $59                                     ; $5720: $3E $59
    ld [hScript.Frame+1], a                                 ; $5722: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5725: $C3 $A2 $5D


Call_001_5728:
    ld a, [hl]                                    ; $5728: $7E
    cp $01                                        ; $5729: $FE $01
    ret nz                                        ; $572B: $C0

    ld a, [$C9A6]                                 ; $572C: $FA $A6 $C9
    sub $04                                       ; $572F: $D6 $04
    ret c                                         ; $5731: $D8

    call Call_001_56C0                            ; $5732: $CD $C0 $56
    pop af                                        ; $5735: $F1
    ld a, $F5                                     ; $5736: $3E $F5
    ld [hScript.Frame], a                                 ; $5738: $EA $A2 $FF
    ld a, $58                                     ; $573B: $3E $58
    ld [hScript.Frame+1], a                                 ; $573D: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5740: $C3 $A2 $5D


Call_001_5743:
    ld a, [hl]                                    ; $5743: $7E
    cp $01                                        ; $5744: $FE $01
    ret nz                                        ; $5746: $C0

    ld a, [$C9A6]                                 ; $5747: $FA $A6 $C9
    sub $04                                       ; $574A: $D6 $04
    ret c                                         ; $574C: $D8

    call Call_001_56C0                            ; $574D: $CD $C0 $56
    pop af                                        ; $5750: $F1
    ld a, $2F                                     ; $5751: $3E $2F
    ld [hScript.Frame], a                                 ; $5753: $EA $A2 $FF
    ld a, $59                                     ; $5756: $3E $59
    ld [hScript.Frame+1], a                                 ; $5758: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $575B: $C3 $A2 $5D


Call_001_575E:
    ld a, [hl]                                    ; $575E: $7E
    cp $01                                        ; $575F: $FE $01
    ret nz                                        ; $5761: $C0

    ld a, [$C9A6]                                 ; $5762: $FA $A6 $C9
    sub $04                                       ; $5765: $D6 $04
    ret c                                         ; $5767: $D8

    call Call_001_56C0                            ; $5768: $CD $C0 $56
    pop af                                        ; $576B: $F1
    ld a, $69                                     ; $576C: $3E $69
    ld [hScript.Frame], a                                 ; $576E: $EA $A2 $FF
    ld a, $59                                     ; $5771: $3E $59
    ld [hScript.Frame+1], a                                 ; $5773: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5776: $C3 $A2 $5D


Jump_001_5779:
    ld a, $03                                     ; $5779: $3E $03
    ldh [hActor.Flags], a                                  ; $577B: $E0 $8C
    ld a, $66                                     ; $577D: $3E $66
    ldh [hScript.State], a                                  ; $577F: $E0 $A4
    ld a, $0A                                     ; $5781: $3E $0A
    ldh [hScript.State+1], a                                  ; $5783: $E0 $A5
    ld a, $6E                                     ; $5785: $3E $6E
    ldh [hScript.Frame], a                                  ; $5787: $E0 $A2
    ld a, $52                                     ; $5789: $3E $52
    ldh [hScript.Frame+1], a                                  ; $578B: $E0 $A3
    ld a, $98                                     ; $578D: $3E $98
    ldh [hActor.State], a                                  ; $578F: $E0 $8D
    ld a, $57                                     ; $5791: $3E $57
    ldh [hActor.State+1], a                                  ; $5793: $E0 $8E
    jp Jump_001_5D9B                              ; $5795: $C3 $9B $5D


    call Call_001_5DE1                            ; $5798: $CD $E1 $5D
    call Call_001_56C0                            ; $579B: $CD $C0 $56
    ld a, [$C9A3]                                 ; $579E: $FA $A3 $C9
    bit 7, a                                      ; $57A1: $CB $7F
    jp nz, Jump_001_57B3                          ; $57A3: $C2 $B3 $57

    ld a, $B3                                     ; $57A6: $3E $B3
    ld [hScript.Frame], a                                 ; $57A8: $EA $A2 $FF
    ld a, $51                                     ; $57AB: $3E $51
    ld [hScript.Frame+1], a                                 ; $57AD: $EA $A3 $FF
    jp Jump_001_56C9                              ; $57B0: $C3 $C9 $56


Jump_001_57B3:
    bit 5, a                                      ; $57B3: $CB $6F
    jr z, jr_001_57BA                             ; $57B5: $28 $03

    jp Jump_001_57F9                              ; $57B7: $C3 $F9 $57


jr_001_57BA:
    bit 4, a                                      ; $57BA: $CB $67
    jr z, jr_001_57C1                             ; $57BC: $28 $03

    jp Jump_001_5888                              ; $57BE: $C3 $88 $58


jr_001_57C1:
    call Call_001_5E65                            ; $57C1: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $57CC: $CD $2E $42
    call Call_001_4AF0                            ; $57CF: $CD $F0 $4A
    ld a, [wColl_YDelta]                                 ; $57D2: $FA $D1 $C6
    and a                                         ; $57D5: $A7
    jp z, Jump_001_5D9B                           ; $57D6: $CA $9B $5D

    ld a, [wColl_YMove]                                 ; $57D9: $FA $D3 $C6
    and a                                         ; $57DC: $A7
    jp nz, Jump_001_5D9B                          ; $57DD: $C2 $9B $5D

    call Call_001_4CBF                            ; $57E0: $CD $BF $4C
    ld a, [hl]                                    ; $57E3: $7E
    cp $00                                        ; $57E4: $FE $00
    jp nz, Jump_001_5D9B                          ; $57E6: $C2 $9B $5D

    call Call_001_56B7                            ; $57E9: $CD $B7 $56
    ld a, $9A                                     ; $57EC: $3E $9A
    ld [hScript.Frame], a                                 ; $57EE: $EA $A2 $FF
    ld a, $5A                                     ; $57F1: $3E $5A
    ld [hScript.Frame+1], a                                 ; $57F3: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $57F6: $C3 $A2 $5D


Jump_001_57F9:
    ld a, $01                                     ; $57F9: $3E $01
    ldh [hActor.Flags], a                                  ; $57FB: $E0 $8C
    ld a, $66                                     ; $57FD: $3E $66
    ldh [hScript.State], a                                  ; $57FF: $E0 $A4
    ld a, $0A                                     ; $5801: $3E $0A
    ldh [hScript.State+1], a                                  ; $5803: $E0 $A5
    ld a, $1D                                     ; $5805: $3E $1D
    ldh [hScript.Frame], a                                  ; $5807: $E0 $A2
    ld a, $53                                     ; $5809: $3E $53
    ldh [hScript.Frame+1], a                                  ; $580B: $E0 $A3
    ld a, $18                                     ; $580D: $3E $18
    ldh [hActor.State], a                                  ; $580F: $E0 $8D
    ld a, $58                                     ; $5811: $3E $58
    ldh [hActor.State+1], a                                  ; $5813: $E0 $8E
    jp Jump_001_5D9B                              ; $5815: $C3 $9B $5D


    call Call_001_5DE1                            ; $5818: $CD $E1 $5D
    call Call_001_56C0                            ; $581B: $CD $C0 $56
    ld a, [$C9A3]                                 ; $581E: $FA $A3 $C9
    bit 5, a                                      ; $5821: $CB $6F
    jr nz, jr_001_5832                            ; $5823: $20 $0D

    ld a, $8F                                     ; $5825: $3E $8F
    ld [hScript.Frame], a                                 ; $5827: $EA $A2 $FF
    ld a, $51                                     ; $582A: $3E $51
    ld [hScript.Frame+1], a                                 ; $582C: $EA $A3 $FF
    jp Jump_001_56C9                              ; $582F: $C3 $C9 $56


jr_001_5832:
    ldh a, [$FFA8]                                  ; $5832: $F0 $A8
    and $01                                       ; $5834: $E6 $01
    jp z, Jump_001_5850                           ; $5836: $CA $50 $58

    ld a, [$C9A3]                                 ; $5839: $FA $A3 $C9
    bit 6, a                                      ; $583C: $CB $77
    jr z, jr_001_5847                             ; $583E: $28 $07

    ld a, $FF                                     ; $5840: $3E $FF
    ld [wColl_YMove], a                                 ; $5842: $EA $D3 $C6
    jr jr_001_5850                                ; $5845: $18 $09

jr_001_5847:
    bit 7, a                                      ; $5847: $CB $7F
    jr z, jr_001_5850                             ; $5849: $28 $05

    ld a, $01                                     ; $584B: $3E $01
    ld [wColl_YMove], a                                 ; $584D: $EA $D3 $C6

Jump_001_5850:
jr_001_5850:
    call Call_001_5E65                            ; $5850: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $585B: $CD $2E $42
    call Call_001_4AF0                            ; $585E: $CD $F0 $4A
    ld a, [wColl_XDelta]                                 ; $5861: $FA $D0 $C6
    and a                                         ; $5864: $A7
    jp z, Jump_001_5D9B                           ; $5865: $CA $9B $5D

    ld a, [wColl_XMove]                                 ; $5868: $FA $D2 $C6
    and a                                         ; $586B: $A7
    jp nz, Jump_001_5D9B                          ; $586C: $C2 $9B $5D

    call Call_001_4CDD                            ; $586F: $CD $DD $4C
    ld a, [hl]                                    ; $5872: $7E
    cp $00                                        ; $5873: $FE $00
    jp nz, Jump_001_5D9B                          ; $5875: $C2 $9B $5D

    call Call_001_56B7                            ; $5878: $CD $B7 $56
    ld a, $E7                                     ; $587B: $3E $E7
    ld [hScript.Frame], a                                 ; $587D: $EA $A2 $FF
    ld a, $59                                     ; $5880: $3E $59
    ld [hScript.Frame+1], a                                 ; $5882: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5885: $C3 $A2 $5D


Jump_001_5888:
    ld a, $02                                     ; $5888: $3E $02
    ldh [hActor.Flags], a                                  ; $588A: $E0 $8C
    ld a, $66                                     ; $588C: $3E $66
    ldh [hScript.State], a                                  ; $588E: $E0 $A4
    ld a, $0A                                     ; $5890: $3E $0A
    ldh [hScript.State+1], a                                  ; $5892: $E0 $A5
    ld a, $CC                                     ; $5894: $3E $CC
    ldh [hScript.Frame], a                                  ; $5896: $E0 $A2
    ld a, $53                                     ; $5898: $3E $53
    ldh [hScript.Frame+1], a                                  ; $589A: $E0 $A3
    ld a, $A7                                     ; $589C: $3E $A7
    ldh [hActor.State], a                                  ; $589E: $E0 $8D
    ld a, $58                                     ; $58A0: $3E $58
    ldh [hActor.State+1], a                                  ; $58A2: $E0 $8E
    jp Jump_001_5D9B                              ; $58A4: $C3 $9B $5D


    call Call_001_5DE1                            ; $58A7: $CD $E1 $5D
    call Call_001_56C0                            ; $58AA: $CD $C0 $56
    ld a, [$C9A3]                                 ; $58AD: $FA $A3 $C9
    bit 4, a                                      ; $58B0: $CB $67
    jr nz, jr_001_58C1                            ; $58B2: $20 $0D

    ld a, $9B                                     ; $58B4: $3E $9B
    ld [hScript.Frame], a                                 ; $58B6: $EA $A2 $FF
    ld a, $51                                     ; $58B9: $3E $51
    ld [hScript.Frame+1], a                                 ; $58BB: $EA $A3 $FF
    jp Jump_001_56C9                              ; $58BE: $C3 $C9 $56


jr_001_58C1:
    ldh a, [$FFA8]                                  ; $58C1: $F0 $A8
    and $01                                       ; $58C3: $E6 $01
    jp z, Jump_001_58DF                           ; $58C5: $CA $DF $58

    ld a, [$C9A3]                                 ; $58C8: $FA $A3 $C9
    bit 6, a                                      ; $58CB: $CB $77
    jr z, jr_001_58D6                             ; $58CD: $28 $07

    ld a, $FF                                     ; $58CF: $3E $FF
    ld [wColl_YMove], a                                 ; $58D1: $EA $D3 $C6
    jr jr_001_58DF                                ; $58D4: $18 $09

jr_001_58D6:
    bit 7, a                                      ; $58D6: $CB $7F
    jr z, jr_001_58DF                             ; $58D8: $28 $05

    ld a, $01                                     ; $58DA: $3E $01
    ld [wColl_YMove], a                                 ; $58DC: $EA $D3 $C6

Jump_001_58DF:
jr_001_58DF:
    call Call_001_5E65                            ; $58DF: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $58EA: $CD $2E $42
    call Call_001_4AF0                            ; $58ED: $CD $F0 $4A
    ld a, [wColl_XDelta]                                 ; $58F0: $FA $D0 $C6
    and a                                         ; $58F3: $A7
    jp z, Jump_001_5D9B                           ; $58F4: $CA $9B $5D

    ld a, [wColl_XMove]                                 ; $58F7: $FA $D2 $C6
    and a                                         ; $58FA: $A7
    jp nz, Jump_001_5D9B                          ; $58FB: $C2 $9B $5D

    call Call_001_4CF8                            ; $58FE: $CD $F8 $4C
    ld a, [hl]                                    ; $5901: $7E
    cp $00                                        ; $5902: $FE $00
    jp nz, Jump_001_5D9B                          ; $5904: $C2 $9B $5D

    call Call_001_56B7                            ; $5907: $CD $B7 $56
    ld a, $21                                     ; $590A: $3E $21
    ld [hScript.Frame], a                                 ; $590C: $EA $A2 $FF
    ld a, $5A                                     ; $590F: $3E $5A
    ld [hScript.Frame+1], a                                 ; $5911: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5914: $C3 $A2 $5D


Jump_001_5917:
    ld a, $00                                     ; $5917: $3E $00
    ldh [hActor.Flags], a                                  ; $5919: $E0 $8C
    ld a, $66                                     ; $591B: $3E $66
    ldh [hScript.State], a                                  ; $591D: $E0 $A4
    ld a, $0A                                     ; $591F: $3E $0A
    ldh [hScript.State+1], a                                  ; $5921: $E0 $A5
    ld a, $BF                                     ; $5923: $3E $BF
    ldh [hScript.Frame], a                                  ; $5925: $E0 $A2
    ld a, $51                                     ; $5927: $3E $51
    ldh [hScript.Frame+1], a                                  ; $5929: $E0 $A3
    ld a, $36                                     ; $592B: $3E $36
    ldh [hActor.State], a                                  ; $592D: $E0 $8D
    ld a, $59                                     ; $592F: $3E $59
    ldh [hActor.State+1], a                                  ; $5931: $E0 $8E
    jp Jump_001_5D9B                              ; $5933: $C3 $9B $5D


    call Call_001_5DE1                            ; $5936: $CD $E1 $5D
    call Call_001_56C0                            ; $5939: $CD $C0 $56
    ld a, [$C9A3]                                 ; $593C: $FA $A3 $C9
    bit 6, a                                      ; $593F: $CB $77
    jr nz, jr_001_5950                            ; $5941: $20 $0D

    ld a, $A7                                     ; $5943: $3E $A7
    ld [hScript.Frame], a                                 ; $5945: $EA $A2 $FF
    ld a, $51                                     ; $5948: $3E $51
    ld [hScript.Frame+1], a                                 ; $594A: $EA $A3 $FF
    jp Jump_001_56C9                              ; $594D: $C3 $C9 $56


jr_001_5950:
    bit 5, a                                      ; $5950: $CB $6F
    jr z, jr_001_5957                             ; $5952: $28 $03

    jp Jump_001_57F9                              ; $5954: $C3 $F9 $57


jr_001_5957:
    bit 4, a                                      ; $5957: $CB $67
    jr z, jr_001_595E                             ; $5959: $28 $03

    jp Jump_001_5888                              ; $595B: $C3 $88 $58


jr_001_595E:
    call Call_001_5E65                            ; $595E: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5969: $CD $2E $42
    call Call_001_4AF0                            ; $596C: $CD $F0 $4A
    ld a, [wColl_YDelta]                                 ; $596F: $FA $D1 $C6
    and a                                         ; $5972: $A7
    jp z, Jump_001_5D9B                           ; $5973: $CA $9B $5D

    ld a, [wColl_YMove]                                 ; $5976: $FA $D3 $C6
    and a                                         ; $5979: $A7
    jp nz, Jump_001_5D9B                          ; $597A: $C2 $9B $5D

    call Call_001_4D13                            ; $597D: $CD $13 $4D
    ld a, [hl]                                    ; $5980: $7E
    cp $00                                        ; $5981: $FE $00
    jp nz, Jump_001_5D9B                          ; $5983: $C2 $9B $5D

    call Call_001_56B7                            ; $5986: $CD $B7 $56
    ld a, $5B                                     ; $5989: $3E $5B
    ld [hScript.Frame], a                                 ; $598B: $EA $A2 $FF
    ld a, $5A                                     ; $598E: $3E $5A
    ld [hScript.Frame+1], a                                 ; $5990: $EA $A3 $FF
    jp Jump_001_5DA2                              ; $5993: $C3 $A2 $5D


Jump_001_5996:
    ld a, $03                                     ; $5996: $3E $03
    ldh [hActor.Flags], a                                  ; $5998: $E0 $8C
    ld a, $66                                     ; $599A: $3E $66
    ldh [hScript.State], a                                  ; $599C: $E0 $A4
    ld a, $0A                                     ; $599E: $3E $0A
    ldh [hScript.State+1], a                                  ; $59A0: $E0 $A5
    ld a, $73                                     ; $59A2: $3E $73
    ldh [hScript.Frame], a                                  ; $59A4: $E0 $A2
    ld a, $4F                                     ; $59A6: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $59A8: $E0 $A3
    ld a, $B5                                     ; $59AA: $3E $B5
    ldh [hActor.State], a                                  ; $59AC: $E0 $8D
    ld a, $59                                     ; $59AE: $3E $59
    ldh [hActor.State+1], a                                  ; $59B0: $E0 $8E
    jp Jump_001_5D9B                              ; $59B2: $C3 $9B $5D


    call Call_001_5DE1                            ; $59B5: $CD $E1 $5D
    ldh a, [$FFA8]                                  ; $59B8: $F0 $A8
    and $01                                       ; $59BA: $E6 $01
    jr z, jr_001_59DC                             ; $59BC: $28 $1E

    ld a, [$C9A3]                                 ; $59BE: $FA $A3 $C9
    bit 7, a                                      ; $59C1: $CB $7F
    jp nz, Jump_001_59C9                          ; $59C3: $C2 $C9 $59

    jp Jump_001_5B13                              ; $59C6: $C3 $13 $5B


Jump_001_59C9:
    bit 5, a                                      ; $59C9: $CB $6F
    jr z, jr_001_59D0                             ; $59CB: $28 $03

    jp Jump_001_59F3                              ; $59CD: $C3 $F3 $59


jr_001_59D0:
    bit 4, a                                      ; $59D0: $CB $67
    jr z, jr_001_59D7                             ; $59D2: $28 $03

    jp Jump_001_5A55                              ; $59D4: $C3 $55 $5A


jr_001_59D7:
    ld a, $01                                     ; $59D7: $3E $01
    ld [wColl_YMove], a                                 ; $59D9: $EA $D3 $C6

jr_001_59DC:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $59E4: $CD $2E $42
    call Call_001_4AF0                            ; $59E7: $CD $F0 $4A
    call Call_001_4212                            ; $59EA: $CD $12 $42
    call Call_001_4B7B                            ; $59ED: $CD $7B $4B
    jp Jump_001_5D9B                              ; $59F0: $C3 $9B $5D


Jump_001_59F3:
    ld a, $01                                     ; $59F3: $3E $01
    ldh [hActor.Flags], a                                  ; $59F5: $E0 $8C
    ld a, $66                                     ; $59F7: $3E $66
    ldh [hScript.State], a                                  ; $59F9: $E0 $A4
    ld a, $0A                                     ; $59FB: $3E $0A
    ldh [hScript.State+1], a                                  ; $59FD: $E0 $A5
    ld a, $83                                     ; $59FF: $3E $83
    ldh [hScript.Frame], a                                  ; $5A01: $E0 $A2
    ld a, $4F                                     ; $5A03: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $5A05: $E0 $A3
    ld a, $12                                     ; $5A07: $3E $12
    ldh [hActor.State], a                                  ; $5A09: $E0 $8D
    ld a, $5A                                     ; $5A0B: $3E $5A
    ldh [hActor.State+1], a                                  ; $5A0D: $E0 $8E
    jp Jump_001_5D9B                              ; $5A0F: $C3 $9B $5D


    call Call_001_5DE1                            ; $5A12: $CD $E1 $5D
    ldh a, [$FFA8]                                  ; $5A15: $F0 $A8
    and $01                                       ; $5A17: $E6 $01
    jr z, jr_001_5A3E                             ; $5A19: $28 $23

    ld a, [$C9A3]                                 ; $5A1B: $FA $A3 $C9
    bit 5, a                                      ; $5A1E: $CB $6F
    jr nz, jr_001_5A25                            ; $5A20: $20 $03

    jp Jump_001_5B13                              ; $5A22: $C3 $13 $5B


jr_001_5A25:
    ld e, $00                                     ; $5A25: $1E $00
    bit 6, a                                      ; $5A27: $CB $77
    jr z, jr_001_5A2F                             ; $5A29: $28 $04

    ld e, $FF                                     ; $5A2B: $1E $FF
    jr jr_001_5A35                                ; $5A2D: $18 $06

jr_001_5A2F:
    bit 7, a                                      ; $5A2F: $CB $7F
    jr z, jr_001_5A35                             ; $5A31: $28 $02

    ld e, $01                                     ; $5A33: $1E $01

jr_001_5A35:
    ld a, $FF                                     ; $5A35: $3E $FF
    ld [wColl_XMove], a                                 ; $5A37: $EA $D2 $C6
    ld a, e                                       ; $5A3A: $7B
    ld [wColl_YMove], a                                 ; $5A3B: $EA $D3 $C6

jr_001_5A3E:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5A46: $CD $2E $42
    call Call_001_4AF0                            ; $5A49: $CD $F0 $4A
    call Call_001_4212                            ; $5A4C: $CD $12 $42
    call Call_001_4BCC                            ; $5A4F: $CD $CC $4B
    jp Jump_001_5D9B                              ; $5A52: $C3 $9B $5D


Jump_001_5A55:
    ld a, $02                                     ; $5A55: $3E $02
    ldh [hActor.Flags], a                                  ; $5A57: $E0 $8C
    ld a, $66                                     ; $5A59: $3E $66
    ldh [hScript.State], a                                  ; $5A5B: $E0 $A4
    ld a, $0A                                     ; $5A5D: $3E $0A
    ldh [hScript.State+1], a                                  ; $5A5F: $E0 $A5
    ld a, $A3                                     ; $5A61: $3E $A3
    ldh [hScript.Frame], a                                  ; $5A63: $E0 $A2
    ld a, $4F                                     ; $5A65: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $5A67: $E0 $A3
    ld a, $74                                     ; $5A69: $3E $74
    ldh [hActor.State], a                                  ; $5A6B: $E0 $8D
    ld a, $5A                                     ; $5A6D: $3E $5A
    ldh [hActor.State+1], a                                  ; $5A6F: $E0 $8E
    jp Jump_001_5D9B                              ; $5A71: $C3 $9B $5D


    call Call_001_5DE1                            ; $5A74: $CD $E1 $5D
    ldh a, [$FFA8]                                  ; $5A77: $F0 $A8
    and $01                                       ; $5A79: $E6 $01
    jr z, jr_001_5AA0                             ; $5A7B: $28 $23

    ld a, [$C9A3]                                 ; $5A7D: $FA $A3 $C9
    bit 4, a                                      ; $5A80: $CB $67
    jr nz, jr_001_5A87                            ; $5A82: $20 $03

    jp Jump_001_5B13                              ; $5A84: $C3 $13 $5B


jr_001_5A87:
    ld e, $00                                     ; $5A87: $1E $00
    bit 6, a                                      ; $5A89: $CB $77
    jr z, jr_001_5A91                             ; $5A8B: $28 $04

    ld e, $FF                                     ; $5A8D: $1E $FF
    jr jr_001_5A97                                ; $5A8F: $18 $06

jr_001_5A91:
    bit 7, a                                      ; $5A91: $CB $7F
    jr z, jr_001_5A97                             ; $5A93: $28 $02

    ld e, $01                                     ; $5A95: $1E $01

jr_001_5A97:
    ld a, $01                                     ; $5A97: $3E $01
    ld [wColl_XMove], a                                 ; $5A99: $EA $D2 $C6
    ld a, e                                       ; $5A9C: $7B
    ld [wColl_YMove], a                                 ; $5A9D: $EA $D3 $C6

jr_001_5AA0:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5AA8: $CD $2E $42
    call Call_001_4AF0                            ; $5AAB: $CD $F0 $4A
    call Call_001_4212                            ; $5AAE: $CD $12 $42
    call Call_001_4C1D                            ; $5AB1: $CD $1D $4C
    jp Jump_001_5D9B                              ; $5AB4: $C3 $9B $5D


Jump_001_5AB7:
    ld a, $00                                     ; $5AB7: $3E $00
    ldh [hActor.Flags], a                                  ; $5AB9: $E0 $8C
    ld a, $66                                     ; $5ABB: $3E $66
    ldh [hScript.State], a                                  ; $5ABD: $E0 $A4
    ld a, $0A                                     ; $5ABF: $3E $0A
    ldh [hScript.State+1], a                                  ; $5AC1: $E0 $A5
    ld a, $63                                     ; $5AC3: $3E $63
    ldh [hScript.Frame], a                                  ; $5AC5: $E0 $A2
    ld a, $4F                                     ; $5AC7: $3E $4F
    ldh [hScript.Frame+1], a                                  ; $5AC9: $E0 $A3
    ld a, $D6                                     ; $5ACB: $3E $D6
    ldh [hActor.State], a                                  ; $5ACD: $E0 $8D
    ld a, $5A                                     ; $5ACF: $3E $5A
    ldh [hActor.State+1], a                                  ; $5AD1: $E0 $8E
    jp Jump_001_5D9B                              ; $5AD3: $C3 $9B $5D


    call Call_001_5DE1                            ; $5AD6: $CD $E1 $5D
    ldh a, [$FFA8]                                  ; $5AD9: $F0 $A8
    and $01                                       ; $5ADB: $E6 $01
    jr z, jr_001_5AFC                             ; $5ADD: $28 $1D

    ld a, [$C9A3]                                 ; $5ADF: $FA $A3 $C9
    bit 6, a                                      ; $5AE2: $CB $77
    jr nz, jr_001_5AE9                            ; $5AE4: $20 $03

    jp Jump_001_5B13                              ; $5AE6: $C3 $13 $5B


jr_001_5AE9:
    bit 5, a                                      ; $5AE9: $CB $6F
    jr z, jr_001_5AF0                             ; $5AEB: $28 $03

    jp Jump_001_59F3                              ; $5AED: $C3 $F3 $59


jr_001_5AF0:
    bit 4, a                                      ; $5AF0: $CB $67
    jr z, jr_001_5AF7                             ; $5AF2: $28 $03

    jp Jump_001_5A55                              ; $5AF4: $C3 $55 $5A


jr_001_5AF7:
    ld a, $FF                                     ; $5AF7: $3E $FF
    ld [wColl_YMove], a                                 ; $5AF9: $EA $D3 $C6

jr_001_5AFC:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5B04: $CD $2E $42
    call Call_001_4AF0                            ; $5B07: $CD $F0 $4A
    call Call_001_4212                            ; $5B0A: $CD $12 $42
    call Call_001_4C6E                            ; $5B0D: $CD $6E $4C
    jp Jump_001_5D9B                              ; $5B10: $C3 $9B $5D


Jump_001_5B13:
    ld a, $1E                                     ; $5B13: $3E $1E
    ldh [hActor.State], a                                  ; $5B15: $E0 $8D
    ld a, $5B                                     ; $5B17: $3E $5B
    ldh [hActor.State+1], a                                  ; $5B19: $E0 $8E
    jp Jump_001_5D9B                              ; $5B1B: $C3 $9B $5D


    call Call_001_5DE1                            ; $5B1E: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5B21: $FA $A3 $C9
    bit 4, a                                      ; $5B24: $CB $67
    jp nz, Jump_001_5A55                          ; $5B26: $C2 $55 $5A

    bit 5, a                                      ; $5B29: $CB $6F
    jp nz, Jump_001_59F3                          ; $5B2B: $C2 $F3 $59

    bit 6, a                                      ; $5B2E: $CB $77
    jp nz, Jump_001_5AB7                          ; $5B30: $C2 $B7 $5A

    bit 7, a                                      ; $5B33: $CB $7F
    jp nz, Jump_001_5996                          ; $5B35: $C2 $96 $59

    call Call_001_4AF0                            ; $5B38: $CD $F0 $4A
    call Call_001_5E3E                            ; $5B3B: $CD $3E $5E
    jp Jump_001_5D9B                              ; $5B3E: $C3 $9B $5D


    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$A3A3]                                 ; $5B4E: $FA $A3 $A3
    ld [$C9A6], a                                 ; $5B51: $EA $A6 $C9
    Battery_Off
    jp Jump_001_5B6E                              ; $5B58: $C3 $6E $5B


Jump_001_5B5B:
    ld a, $66                                     ; $5B5B: $3E $66
    ldh [hScript.State], a                                  ; $5B5D: $E0 $A4
    ld a, $0A                                     ; $5B5F: $3E $0A
    ldh [hScript.State+1], a                                  ; $5B61: $E0 $A5
    ld a, $6E                                     ; $5B63: $3E $6E
    ldh [hActor.State], a                                  ; $5B65: $E0 $8D
    ld a, $5B                                     ; $5B67: $3E $5B
    ldh [hActor.State+1], a                                  ; $5B69: $E0 $8E
    jp Jump_001_5D9B                              ; $5B6B: $C3 $9B $5D


Jump_001_5B6E:
    call Call_001_4212                            ; $5B6E: $CD $12 $42
    call Call_001_5DE1                            ; $5B71: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5B74: $FA $A3 $C9
    bit 4, a                                      ; $5B77: $CB $67
    jp nz, Jump_001_5CA5                          ; $5B79: $C2 $A5 $5C

    bit 5, a                                      ; $5B7C: $CB $6F
    jp nz, Jump_001_5C2F                          ; $5B7E: $C2 $2F $5C

    bit 6, a                                      ; $5B81: $CB $77
    jp nz, Jump_001_5D1B                          ; $5B83: $C2 $1B $5D

    bit 7, a                                      ; $5B86: $CB $7F
    jp nz, Jump_001_5BC8                          ; $5B88: $C2 $C8 $5B

    call Call_001_5E65                            ; $5B8B: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5B96: $CD $2E $42
    call Call_001_4AF0                            ; $5B99: $CD $F0 $4A
    ld a, [$C9A4]                                 ; $5B9C: $FA $A4 $C9
    bit 0, a                                      ; $5B9F: $CB $47
    call nz, Call_001_5BA7                        ; $5BA1: $C4 $A7 $5B
    jp Jump_001_5D9B                              ; $5BA4: $C3 $9B $5D


Call_001_5BA7:
    ldh a, [hActor.Flags]                                  ; $5BA7: $F0 $8C
    and $03                                       ; $5BA9: $E6 $03
    cp $00                                        ; $5BAB: $FE $00
    jr z, jr_001_5BBB                             ; $5BAD: $28 $0C

    cp $03                                        ; $5BAF: $FE $03
    jr z, jr_001_5BBE                             ; $5BB1: $28 $0B

    cp $01                                        ; $5BB3: $FE $01
    jr z, jr_001_5BC1                             ; $5BB5: $28 $0A

    cp $02                                        ; $5BB7: $FE $02
    jr z, jr_001_5BC4                             ; $5BB9: $28 $09

jr_001_5BBB:
    jp Jump_001_4C6E                              ; $5BBB: $C3 $6E $4C


jr_001_5BBE:
    jp Jump_001_4B7B                              ; $5BBE: $C3 $7B $4B


jr_001_5BC1:
    jp Jump_001_4BCC                              ; $5BC1: $C3 $CC $4B


jr_001_5BC4:
    jp Jump_001_4C1D                              ; $5BC4: $C3 $1D $4C


    ret                                           ; $5BC7: $C9


Jump_001_5BC8:
    ld a, $03                                     ; $5BC8: $3E $03
    ldh [hActor.Flags], a                                  ; $5BCA: $E0 $8C
    ld a, $66                                     ; $5BCC: $3E $66
    ldh [hScript.State], a                                  ; $5BCE: $E0 $A4
    ld a, $0A                                     ; $5BD0: $3E $0A
    ldh [hScript.State+1], a                                  ; $5BD2: $E0 $A5
    ld a, $20                                     ; $5BD4: $3E $20
    ldh [$FFA1], a                                  ; $5BD6: $E0 $A1
    ld a, $4C                                     ; $5BD8: $3E $4C
    ldh [hScript.Frame], a                                  ; $5BDA: $E0 $A2
    ld a, $5B                                     ; $5BDC: $3E $5B
    ldh [hScript.Frame+1], a                                  ; $5BDE: $E0 $A3
    ld a, $EB                                     ; $5BE0: $3E $EB
    ldh [hActor.State], a                                  ; $5BE2: $E0 $8D
    ld a, $5B                                     ; $5BE4: $3E $5B
    ldh [hActor.State+1], a                                  ; $5BE6: $E0 $8E
    jp Jump_001_5D9B                              ; $5BE8: $C3 $9B $5D


    call Call_001_4212                            ; $5BEB: $CD $12 $42
    call Call_001_5DE1                            ; $5BEE: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5BF1: $FA $A3 $C9
    bit 7, a                                      ; $5BF4: $CB $7F
    jp nz, Jump_001_5C06                          ; $5BF6: $C2 $06 $5C

    ld a, $CF                                     ; $5BF9: $3E $CF
    ld [hScript.Frame], a                                 ; $5BFB: $EA $A2 $FF
    ld a, $5B                                     ; $5BFE: $3E $5B
    ld [hScript.Frame+1], a                                 ; $5C00: $EA $A3 $FF
    jp Jump_001_5B5B                              ; $5C03: $C3 $5B $5B


Jump_001_5C06:
    bit 5, a                                      ; $5C06: $CB $6F
    jr z, jr_001_5C0D                             ; $5C08: $28 $03

    jp Jump_001_5C2F                              ; $5C0A: $C3 $2F $5C


jr_001_5C0D:
    bit 4, a                                      ; $5C0D: $CB $67
    jr z, jr_001_5C14                             ; $5C0F: $28 $03

    jp Jump_001_5CA5                              ; $5C11: $C3 $A5 $5C


jr_001_5C14:
    call Call_001_5E65                            ; $5C14: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5C1F: $CD $2E $42
    call Call_001_4AF0                            ; $5C22: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $5C25: $FA $D3 $C6
    and a                                         ; $5C28: $A7
    call z, Call_001_4B7B                         ; $5C29: $CC $7B $4B
    jp Jump_001_5D9B                              ; $5C2C: $C3 $9B $5D


Jump_001_5C2F:
    ld a, $01                                     ; $5C2F: $3E $01
    ldh [hActor.Flags], a                                  ; $5C31: $E0 $8C
    ld a, $66                                     ; $5C33: $3E $66
    ldh [hScript.State], a                                  ; $5C35: $E0 $A4
    ld a, $0A                                     ; $5C37: $3E $0A
    ldh [hScript.State+1], a                                  ; $5C39: $E0 $A5
    ld a, $20                                     ; $5C3B: $3E $20
    ldh [$FFA1], a                                  ; $5C3D: $E0 $A1
    ld a, $6F                                     ; $5C3F: $3E $6F
    ldh [hScript.Frame], a                                  ; $5C41: $E0 $A2
    ld a, $5B                                     ; $5C43: $3E $5B
    ldh [hScript.Frame+1], a                                  ; $5C45: $E0 $A3
    ld a, $52                                     ; $5C47: $3E $52
    ldh [hActor.State], a                                  ; $5C49: $E0 $8D
    ld a, $5C                                     ; $5C4B: $3E $5C
    ldh [hActor.State+1], a                                  ; $5C4D: $E0 $8E
    jp Jump_001_5D9B                              ; $5C4F: $C3 $9B $5D


    call Call_001_4212                            ; $5C52: $CD $12 $42
    call Call_001_5DE1                            ; $5C55: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5C58: $FA $A3 $C9
    bit 5, a                                      ; $5C5B: $CB $6F
    jr nz, jr_001_5C6C                            ; $5C5D: $20 $0D

    ld a, $DF                                     ; $5C5F: $3E $DF
    ld [hScript.Frame], a                                 ; $5C61: $EA $A2 $FF
    ld a, $5B                                     ; $5C64: $3E $5B
    ld [hScript.Frame+1], a                                 ; $5C66: $EA $A3 $FF
    jp Jump_001_5B5B                              ; $5C69: $C3 $5B $5B


jr_001_5C6C:
    ldh a, [$FFA8]                                  ; $5C6C: $F0 $A8
    and $01                                       ; $5C6E: $E6 $01
    jp z, Jump_001_5C8A                           ; $5C70: $CA $8A $5C

    ld a, [$C9A3]                                 ; $5C73: $FA $A3 $C9
    bit 6, a                                      ; $5C76: $CB $77
    jr z, jr_001_5C81                             ; $5C78: $28 $07

    ld a, $FF                                     ; $5C7A: $3E $FF
    ld [wColl_YMove], a                                 ; $5C7C: $EA $D3 $C6
    jr jr_001_5C8A                                ; $5C7F: $18 $09

jr_001_5C81:
    bit 7, a                                      ; $5C81: $CB $7F
    jr z, jr_001_5C8A                             ; $5C83: $28 $05

    ld a, $01                                     ; $5C85: $3E $01
    ld [wColl_YMove], a                                 ; $5C87: $EA $D3 $C6

Jump_001_5C8A:
jr_001_5C8A:
    call Call_001_5E65                            ; $5C8A: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5C95: $CD $2E $42
    call Call_001_4AF0                            ; $5C98: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $5C9B: $FA $D2 $C6
    and a                                         ; $5C9E: $A7
    call z, Call_001_4BCC                         ; $5C9F: $CC $CC $4B
    jp Jump_001_5D9B                              ; $5CA2: $C3 $9B $5D


Jump_001_5CA5:
    ld a, $02                                     ; $5CA5: $3E $02
    ldh [hActor.Flags], a                                  ; $5CA7: $E0 $8C
    ld a, $66                                     ; $5CA9: $3E $66
    ldh [hScript.State], a                                  ; $5CAB: $E0 $A4
    ld a, $0A                                     ; $5CAD: $3E $0A
    ldh [hScript.State+1], a                                  ; $5CAF: $E0 $A5
    ld a, $20                                     ; $5CB1: $3E $20
    ldh [$FFA1], a                                  ; $5CB3: $E0 $A1
    ld a, $9C                                     ; $5CB5: $3E $9C
    ldh [hScript.Frame], a                                  ; $5CB7: $E0 $A2
    ld a, $5B                                     ; $5CB9: $3E $5B
    ldh [hScript.Frame+1], a                                  ; $5CBB: $E0 $A3
    ld a, $C8                                     ; $5CBD: $3E $C8
    ldh [hActor.State], a                                  ; $5CBF: $E0 $8D
    ld a, $5C                                     ; $5CC1: $3E $5C
    ldh [hActor.State+1], a                                  ; $5CC3: $E0 $8E
    jp Jump_001_5D9B                              ; $5CC5: $C3 $9B $5D


    call Call_001_4212                            ; $5CC8: $CD $12 $42
    call Call_001_5DE1                            ; $5CCB: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5CCE: $FA $A3 $C9
    bit 4, a                                      ; $5CD1: $CB $67
    jr nz, jr_001_5CE2                            ; $5CD3: $20 $0D

    ld a, $EF                                     ; $5CD5: $3E $EF
    ld [hScript.Frame], a                                 ; $5CD7: $EA $A2 $FF
    ld a, $5B                                     ; $5CDA: $3E $5B
    ld [hScript.Frame+1], a                                 ; $5CDC: $EA $A3 $FF
    jp Jump_001_5B5B                              ; $5CDF: $C3 $5B $5B


jr_001_5CE2:
    ldh a, [$FFA8]                                  ; $5CE2: $F0 $A8
    and $01                                       ; $5CE4: $E6 $01
    jp z, Jump_001_5D00                           ; $5CE6: $CA $00 $5D

    ld a, [$C9A3]                                 ; $5CE9: $FA $A3 $C9
    bit 6, a                                      ; $5CEC: $CB $77
    jr z, jr_001_5CF7                             ; $5CEE: $28 $07

    ld a, $FF                                     ; $5CF0: $3E $FF
    ld [wColl_YMove], a                                 ; $5CF2: $EA $D3 $C6
    jr jr_001_5D00                                ; $5CF5: $18 $09

jr_001_5CF7:
    bit 7, a                                      ; $5CF7: $CB $7F
    jr z, jr_001_5D00                             ; $5CF9: $28 $05

    ld a, $01                                     ; $5CFB: $3E $01
    ld [wColl_YMove], a                                 ; $5CFD: $EA $D3 $C6

Jump_001_5D00:
jr_001_5D00:
    call Call_001_5E65                            ; $5D00: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5D0B: $CD $2E $42
    call Call_001_4AF0                            ; $5D0E: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $5D11: $FA $D2 $C6
    and a                                         ; $5D14: $A7
    call z, Call_001_4C1D                         ; $5D15: $CC $1D $4C
    jp Jump_001_5D9B                              ; $5D18: $C3 $9B $5D


Jump_001_5D1B:
    ld a, $00                                     ; $5D1B: $3E $00
    ldh [hActor.Flags], a                                  ; $5D1D: $E0 $8C
    ld a, $66                                     ; $5D1F: $3E $66
    ldh [hScript.State], a                                  ; $5D21: $E0 $A4
    ld a, $0A                                     ; $5D23: $3E $0A
    ldh [hScript.State+1], a                                  ; $5D25: $E0 $A5
    ld a, $20                                     ; $5D27: $3E $20
    ldh [$FFA1], a                                  ; $5D29: $E0 $A1
    ld a, $29                                     ; $5D2B: $3E $29
    ldh [hScript.Frame], a                                  ; $5D2D: $E0 $A2
    ld a, $5B                                     ; $5D2F: $3E $5B
    ldh [hScript.Frame+1], a                                  ; $5D31: $E0 $A3
    ld a, $3E                                     ; $5D33: $3E $3E
    ldh [hActor.State], a                                  ; $5D35: $E0 $8D
    ld a, $5D                                     ; $5D37: $3E $5D
    ldh [hActor.State+1], a                                  ; $5D39: $E0 $8E
    jp Jump_001_5D9B                              ; $5D3B: $C3 $9B $5D


    call Call_001_4212                            ; $5D3E: $CD $12 $42
    call Call_001_5DE1                            ; $5D41: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5D44: $FA $A3 $C9
    bit 6, a                                      ; $5D47: $CB $77
    jr nz, jr_001_5D58                            ; $5D49: $20 $0D

    ld a, $BF                                     ; $5D4B: $3E $BF
    ld [hScript.Frame], a                                 ; $5D4D: $EA $A2 $FF
    ld a, $5B                                     ; $5D50: $3E $5B
    ld [hScript.Frame+1], a                                 ; $5D52: $EA $A3 $FF
    jp Jump_001_5B5B                              ; $5D55: $C3 $5B $5B


jr_001_5D58:
    bit 5, a                                      ; $5D58: $CB $6F
    jr z, jr_001_5D5F                             ; $5D5A: $28 $03

    jp Jump_001_5C2F                              ; $5D5C: $C3 $2F $5C


jr_001_5D5F:
    bit 4, a                                      ; $5D5F: $CB $67
    jr z, jr_001_5D66                             ; $5D61: $28 $03

    jp Jump_001_5CA5                              ; $5D63: $C3 $A5 $5C


jr_001_5D66:
    call Call_001_5E65                            ; $5D66: $CD $65 $5E
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5D71: $CD $2E $42
    call Call_001_4AF0                            ; $5D74: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $5D77: $FA $D3 $C6
    and a                                         ; $5D7A: $A7
    call z, Call_001_4C6E                         ; $5D7B: $CC $6E $4C
    jp Jump_001_5D9B                              ; $5D7E: $C3 $9B $5D

AI_Hero_Main:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$A3A3]                                 ; $5D8E: $FA $A3 $A3
    ld [$C9A6], a                                 ; $5D91: $EA $A6 $C9
    Battery_Off
    jp Jump_001_5E10                              ; $5D98: $C3 $10 $5E


Jump_001_5D9B:
    call Script_Close                                    ; $5D9B: $CD $0A $29
    call Actor_ScriptClose                            ; $5D9E: $CD $0A $41
    ret                                           ; $5DA1: $C9


Jump_001_5DA2:
    ld a, $66                                     ; $5DA2: $3E $66
    ldh [hScript.State], a                                  ; $5DA4: $E0 $A4
    ld a, $0A                                     ; $5DA6: $3E $0A
    ldh [hScript.State+1], a                                  ; $5DA8: $E0 $A5
    ld a, $B5                                     ; $5DAA: $3E $B5
    ldh [hActor.State], a                                  ; $5DAC: $E0 $8D
    ld a, $5D                                     ; $5DAE: $3E $5D
    ldh [hActor.State+1], a                                  ; $5DB0: $E0 $8E
    jp Jump_001_5D9B                              ; $5DB2: $C3 $9B $5D


    call Actor_ScriptOpen                            ; $5DB5: $CD $2F $41
    xor a                                         ; $5DB8: $AF
    ld [$C187], a                                 ; $5DB9: $EA $87 $C1
    call Script_Open                                    ; $5DBC: $CD $28 $29
    call Script_Play                                    ; $5DBF: $CD $3A $0A
    call Script_Close                                    ; $5DC2: $CD $0A $29
    Do_CallForeign Coll_FreeMove
    call Call_001_4AF0                            ; $5DCD: $CD $F0 $4A
    ld a, [$C187]                                 ; $5DD0: $FA $87 $C1
    and a                                         ; $5DD3: $A7
    jr z, jr_001_5DDD                             ; $5DD4: $28 $07

    ldh [hActor.State+1], a                                  ; $5DD6: $E0 $8E
    ld a, [$C186]                                 ; $5DD8: $FA $86 $C1
    ldh [hActor.State], a                                  ; $5DDB: $E0 $8D

jr_001_5DDD:
    call Actor_ScriptClose                            ; $5DDD: $CD $0A $41
    ret                                           ; $5DE0: $C9


Call_001_5DE1:
    call Actor_ScriptOpen                            ; $5DE1: $CD $2F $41
    call Script_Open                                    ; $5DE4: $CD $28 $29
    call Script_Play                                    ; $5DE7: $CD $3A $0A
    ld hl, $FFAA                                  ; $5DEA: $21 $AA $FF
    set 1, [hl]                                   ; $5DED: $CB $CE
    SwitchRAMBank $05
    FGet16 hl, hActor.TileAddress                                  ; $5DF6: $21 $93 $FF
    ret                                           ; $5DFC: $C9


Jump_001_5DFD:
    ld a, $66                                     ; $5DFD: $3E $66
    ldh [hScript.State], a                                  ; $5DFF: $E0 $A4
    ld a, $0A                                     ; $5E01: $3E $0A
    ldh [hScript.State+1], a                                  ; $5E03: $E0 $A5
    ld a, $10                                     ; $5E05: $3E $10
    ldh [hActor.State], a                                  ; $5E07: $E0 $8D
    ld a, $5E                                     ; $5E09: $3E $5E
    ldh [hActor.State+1], a                                  ; $5E0B: $E0 $8E
    jp Jump_001_5D9B                              ; $5E0D: $C3 $9B $5D


Jump_001_5E10:
    call Call_001_5DE1                            ; $5E10: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5E13: $FA $A3 $C9
    bit 4, a                                      ; $5E16: $CB $67
    jp nz, Jump_001_55AE                          ; $5E18: $C2 $AE $55

    bit 5, a                                      ; $5E1B: $CB $6F
    jp nz, Jump_001_5515                          ; $5E1D: $C2 $15 $55

    bit 6, a                                      ; $5E20: $CB $77
    jp nz, Jump_001_5647                          ; $5E22: $C2 $47 $56

    bit 7, a                                      ; $5E25: $CB $7F
    jp nz, Jump_001_54A4                          ; $5E27: $C2 $A4 $54

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5E32: $CD $2E $42
    call Call_001_4AF0                            ; $5E35: $CD $F0 $4A
    call Call_001_5E3E                            ; $5E38: $CD $3E $5E
    jp Jump_001_5D9B                              ; $5E3B: $C3 $9B $5D


Call_001_5E3E:
    ld a, [$C9A4]                                 ; $5E3E: $FA $A4 $C9
    bit 0, a                                      ; $5E41: $CB $47
    ret z                                         ; $5E43: $C8

    ldh a, [hActor.Flags]                                  ; $5E44: $F0 $8C
    and $03                                       ; $5E46: $E6 $03
    cp $00                                        ; $5E48: $FE $00
    jr z, jr_001_5E58                             ; $5E4A: $28 $0C

    cp $03                                        ; $5E4C: $FE $03
    jr z, jr_001_5E5B                             ; $5E4E: $28 $0B

    cp $01                                        ; $5E50: $FE $01
    jr z, jr_001_5E5E                             ; $5E52: $28 $0A

    cp $02                                        ; $5E54: $FE $02
    jr z, jr_001_5E61                             ; $5E56: $28 $09

jr_001_5E58:
    jp Jump_001_4C6E                              ; $5E58: $C3 $6E $4C


jr_001_5E5B:
    jp Jump_001_4B7B                              ; $5E5B: $C3 $7B $4B


jr_001_5E5E:
    jp Jump_001_4BCC                              ; $5E5E: $C3 $CC $4B


jr_001_5E61:
    jp Jump_001_4C1D                              ; $5E61: $C3 $1D $4C


    ret                                           ; $5E64: $C9


Call_001_5E65:
    ld a, [hActor.TileAddress+1]                                 ; $5E65: $FA $94 $FF
    ld h, a                                       ; $5E68: $67
    ld a, [hActor.TileAddress]                                 ; $5E69: $FA $93 $FF
    ld l, a                                       ; $5E6C: $6F
    ld b, $A0                                     ; $5E6D: $06 $A0
    ld a, [hl]                                    ; $5E6F: $7E
    cp b                                          ; $5E70: $B8
    jr nz, jr_001_5E79                            ; $5E71: $20 $06

    ld e, $FD                                     ; $5E73: $1E $FD
    ld d, $00                                     ; $5E75: $16 $00
    jr jr_001_5EC3                                ; $5E77: $18 $4A

jr_001_5E79:
    inc b                                         ; $5E79: $04
    cp b                                          ; $5E7A: $B8
    jr nz, jr_001_5E83                            ; $5E7B: $20 $06

    ld e, $FE                                     ; $5E7D: $1E $FE
    ld d, $02                                     ; $5E7F: $16 $02
    jr jr_001_5EC3                                ; $5E81: $18 $40

jr_001_5E83:
    inc b                                         ; $5E83: $04
    cp b                                          ; $5E84: $B8
    jr nz, jr_001_5E8D                            ; $5E85: $20 $06

    ld e, $00                                     ; $5E87: $1E $00
    ld d, $03                                     ; $5E89: $16 $03
    jr jr_001_5EC3                                ; $5E8B: $18 $36

jr_001_5E8D:
    inc b                                         ; $5E8D: $04
    cp b                                          ; $5E8E: $B8
    jr nz, jr_001_5E97                            ; $5E8F: $20 $06

    ld e, $02                                     ; $5E91: $1E $02
    ld d, $02                                     ; $5E93: $16 $02
    jr jr_001_5EC3                                ; $5E95: $18 $2C

jr_001_5E97:
    inc b                                         ; $5E97: $04
    cp b                                          ; $5E98: $B8
    jr nz, jr_001_5EA1                            ; $5E99: $20 $06

    ld e, $03                                     ; $5E9B: $1E $03
    ld d, $00                                     ; $5E9D: $16 $00
    jr jr_001_5EC3                                ; $5E9F: $18 $22

jr_001_5EA1:
    inc b                                         ; $5EA1: $04
    cp b                                          ; $5EA2: $B8
    jr nz, jr_001_5EAB                            ; $5EA3: $20 $06

    ld e, $02                                     ; $5EA5: $1E $02
    ld d, $FE                                     ; $5EA7: $16 $FE
    jr jr_001_5EC3                                ; $5EA9: $18 $18

jr_001_5EAB:
    inc b                                         ; $5EAB: $04
    cp b                                          ; $5EAC: $B8
    jr nz, jr_001_5EB5                            ; $5EAD: $20 $06

    ld e, $00                                     ; $5EAF: $1E $00
    ld d, $FD                                     ; $5EB1: $16 $FD
    jr jr_001_5EC3                                ; $5EB3: $18 $0E

jr_001_5EB5:
    inc b                                         ; $5EB5: $04
    cp b                                          ; $5EB6: $B8
    jr nz, jr_001_5EBF                            ; $5EB7: $20 $06

    ld e, $FE                                     ; $5EB9: $1E $FE
    ld d, $FE                                     ; $5EBB: $16 $FE
    jr jr_001_5EC3                                ; $5EBD: $18 $04

jr_001_5EBF:
    ld e, $00                                     ; $5EBF: $1E $00
    ld d, $00                                     ; $5EC1: $16 $00

jr_001_5EC3:
    ld a, [wColl_XMove]                                 ; $5EC3: $FA $D2 $C6
    add d                                         ; $5EC6: $82
    ld [wColl_XMove], a                                 ; $5EC7: $EA $D2 $C6
    ld a, [wColl_YMove]                                 ; $5ECA: $FA $D3 $C6
    add e                                         ; $5ECD: $83
    ld [wColl_YMove], a                                 ; $5ECE: $EA $D3 $C6
    ret                                           ; $5ED1: $C9


    call AI_Anim                            ; $5ED2: $CD $6B $4A
    ldh a, [$FFAB]                                  ; $5ED5: $F0 $AB
    bit 3, a                                      ; $5ED7: $CB $5F
    ret z                                         ; $5ED9: $C8

    ldh a, [hActor.TileAddress+1]                                  ; $5EDA: $F0 $94
    ld d, a                                       ; $5EDC: $57
    ldh a, [hActor.TileAddress]                                  ; $5EDD: $F0 $93
    ld e, a                                       ; $5EDF: $5F
    ld a, [$C9A7]                                 ; $5EE0: $FA $A7 $C9
    cp e                                          ; $5EE3: $BB
    ret nz                                        ; $5EE4: $C0

    ld a, [$C9A8]                                 ; $5EE5: $FA $A8 $C9
    cp d                                          ; $5EE8: $BA
    ret nz                                        ; $5EE9: $C0

    ldh a, [hActor_CurrentAddress+1]                                  ; $5EEA: $F0 $8B
    ld h, a                                       ; $5EEC: $67
    ldh a, [hActor_CurrentAddress]                                  ; $5EED: $F0 $8A
    ld l, a                                       ; $5EEF: $6F
    ld bc, $0005                                  ; $5EF0: $01 $05 $00
    add hl, bc                                    ; $5EF3: $09
    ld bc, $C9A9                                  ; $5EF4: $01 $A9 $C9
    LdHLIBCI                                        ; $5EF9: $03
    LdHLIBCI                                        ; $5EFC: $03
    LdHLIBCI                                        ; $5EFF: $03
    LdHLIBCI                                        ; $5F02: $03
    ret                                           ; $5F03: $C9


    call AI_Anim                            ; $5F04: $CD $6B $4A
    ld a, $C8                                     ; $5F07: $3E $C8
    ldh [hActor_ScreenY], a                                  ; $5F09: $E0 $97
    ret                                           ; $5F0B: $C9

    ; $5F0C
AI_Overlay::
    ; TODO
    call Actor_ScriptOpen

    call Script_Open
    call Script_Play
    call Script_Close

    call Script_Open
    call Script_Play
    call Script_Close

    call Actor_ScriptClose
    ret


Call_001_5F25:
    ld a, [wCntDown]                                 ; $5F25: $FA $32 $C9
    bit 0, a                                      ; $5F28: $CB $47
    ret z                                         ; $5F2A: $C8

    ld a, [hl]                                    ; $5F2B: $7E
    cp $00                                        ; $5F2C: $FE $00
    ret nz                                        ; $5F2E: $C0

    ld a, $01                                     ; $5F2F: $3E $01
    ld [$C12B], a                                 ; $5F31: $EA $2B $C1
    xor a                                         ; $5F34: $AF
    ld [wCollMask], a                                 ; $5F35: $EA $2A $C1
    ld a, h                                       ; $5F38: $7C
    ld [$C191], a                                 ; $5F39: $EA $91 $C1
    ld a, l                                       ; $5F3C: $7D
    ld [$C190], a                                 ; $5F3D: $EA $90 $C1
    FSet16_BigEndian wActor_Hero.XTile, bc
    pop hl                                        ; $5F46: $E1
    ld a, $22                                     ; $5F47: $3E $22
    ldh [$FFA1], a                                  ; $5F49: $E0 $A1
    ld a, $66                                     ; $5F4B: $3E $66
    ldh [hScript.State], a                                  ; $5F4D: $E0 $A4
    ld a, $0A                                     ; $5F4F: $3E $0A
    ldh [hScript.State+1], a                                  ; $5F51: $E0 $A5
    ld a, $AD                                     ; $5F53: $3E $AD
    ldh [hScript.Frame], a                                  ; $5F55: $E0 $A2
    ld a, $40                                     ; $5F57: $3E $40
    ldh [hScript.Frame+1], a                                  ; $5F59: $E0 $A3
    ld a, $05                                     ; $5F5B: $3E $05
    ldh [hActor.State], a                                  ; $5F5D: $E0 $8D
    ld a, $64                                     ; $5F5F: $3E $64
    ldh [hActor.State+1], a                                  ; $5F61: $E0 $8E
    jp Jump_001_5D9B                              ; $5F63: $C3 $9B $5D


Jump_001_5F66:
    ld a, $03                                     ; $5F66: $3E $03
    ldh [hActor.Flags], a                                  ; $5F68: $E0 $8C
    ld a, $66                                     ; $5F6A: $3E $66
    ldh [hScript.State], a                                  ; $5F6C: $E0 $A4
    ld a, $0A                                     ; $5F6E: $3E $0A
    ldh [hScript.State+1], a                                  ; $5F70: $E0 $A5
    ld a, $16                                     ; $5F72: $3E $16
    ldh [hScript.Frame], a                                  ; $5F74: $E0 $A2
    ld a, $78                                     ; $5F76: $3E $78
    ldh [hScript.Frame+1], a                                  ; $5F78: $E0 $A3
    ld a, $85                                     ; $5F7A: $3E $85
    ldh [hActor.State], a                                  ; $5F7C: $E0 $8D
    ld a, $5F                                     ; $5F7E: $3E $5F
    ldh [hActor.State+1], a                                  ; $5F80: $E0 $8E
    jp Jump_001_5D9B                              ; $5F82: $C3 $9B $5D


    call Call_001_5DE1                            ; $5F85: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5F88: $FA $A3 $C9
    bit 7, a                                      ; $5F8B: $CB $7F
    jp nz, Jump_001_5F93                          ; $5F8D: $C2 $93 $5F

    jp Jump_001_60F2                              ; $5F90: $C3 $F2 $60


Jump_001_5F93:
    bit 5, a                                      ; $5F93: $CB $6F
    jr z, jr_001_5F9A                             ; $5F95: $28 $03

    jp Jump_001_5FC4                              ; $5F97: $C3 $C4 $5F


jr_001_5F9A:
    bit 4, a                                      ; $5F9A: $CB $67
    jr z, jr_001_5FA1                             ; $5F9C: $28 $03

    jp Jump_001_6027                              ; $5F9E: $C3 $27 $60


jr_001_5FA1:
    ld a, $01                                     ; $5FA1: $3E $01
    ld [wColl_YMove], a                                 ; $5FA3: $EA $D3 $C6
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $5FAE: $CD $2E $42
    call Call_001_4AF0                            ; $5FB1: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $5FB4: $FA $D3 $C6
    and a                                         ; $5FB7: $A7
    jp nz, Jump_001_5D9B                          ; $5FB8: $C2 $9B $5D

Jump_001_5FBB:
    call Call_001_4CBF                            ; $5FBB: $CD $BF $4C
    call Call_001_5F25                            ; $5FBE: $CD $25 $5F
    jp Jump_001_5D9B                              ; $5FC1: $C3 $9B $5D


Jump_001_5FC4:
    ld a, $01                                     ; $5FC4: $3E $01
    ldh [hActor.Flags], a                                  ; $5FC6: $E0 $8C
    ld a, $66                                     ; $5FC8: $3E $66
    ldh [hScript.State], a                                  ; $5FCA: $E0 $A4
    ld a, $0A                                     ; $5FCC: $3E $0A
    ldh [hScript.State+1], a                                  ; $5FCE: $E0 $A5
    ld a, $22                                     ; $5FD0: $3E $22
    ldh [hScript.Frame], a                                  ; $5FD2: $E0 $A2
    ld a, $78                                     ; $5FD4: $3E $78
    ldh [hScript.Frame+1], a                                  ; $5FD6: $E0 $A3
    ld a, $E3                                     ; $5FD8: $3E $E3
    ldh [hActor.State], a                                  ; $5FDA: $E0 $8D
    ld a, $5F                                     ; $5FDC: $3E $5F
    ldh [hActor.State+1], a                                  ; $5FDE: $E0 $8E
    jp Jump_001_5D9B                              ; $5FE0: $C3 $9B $5D


    call Call_001_5DE1                            ; $5FE3: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $5FE6: $FA $A3 $C9
    bit 5, a                                      ; $5FE9: $CB $6F
    jr nz, jr_001_5FF0                            ; $5FEB: $20 $03

    jp Jump_001_60F2                              ; $5FED: $C3 $F2 $60


jr_001_5FF0:
    ld e, $00                                     ; $5FF0: $1E $00
    bit 6, a                                      ; $5FF2: $CB $77
    jr z, jr_001_5FFA                             ; $5FF4: $28 $04

    ld e, $FF                                     ; $5FF6: $1E $FF
    jr jr_001_6000                                ; $5FF8: $18 $06

jr_001_5FFA:
    bit 7, a                                      ; $5FFA: $CB $7F
    jr z, jr_001_6000                             ; $5FFC: $28 $02

    ld e, $01                                     ; $5FFE: $1E $01

jr_001_6000:
    ld a, $FF                                     ; $6000: $3E $FF
    ld [wColl_XMove], a                                 ; $6002: $EA $D2 $C6
    ld a, e                                       ; $6005: $7B
    ld [wColl_YMove], a                                 ; $6006: $EA $D3 $C6
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $6011: $CD $2E $42
    call Call_001_4AF0                            ; $6014: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $6017: $FA $D3 $C6
    and a                                         ; $601A: $A7
    jp nz, Jump_001_5D9B                          ; $601B: $C2 $9B $5D

Jump_001_601E:
    call Call_001_4CDD                            ; $601E: $CD $DD $4C
    call Call_001_5F25                            ; $6021: $CD $25 $5F
    jp Jump_001_5D9B                              ; $6024: $C3 $9B $5D


Jump_001_6027:
    ld a, $02                                     ; $6027: $3E $02
    ldh [hActor.Flags], a                                  ; $6029: $E0 $8C
    ld a, $66                                     ; $602B: $3E $66
    ldh [hScript.State], a                                  ; $602D: $E0 $A4
    ld a, $0A                                     ; $602F: $3E $0A
    ldh [hScript.State+1], a                                  ; $6031: $E0 $A5
    ld a, $2E                                     ; $6033: $3E $2E
    ldh [hScript.Frame], a                                  ; $6035: $E0 $A2
    ld a, $78                                     ; $6037: $3E $78
    ldh [hScript.Frame+1], a                                  ; $6039: $E0 $A3
    ld a, $46                                     ; $603B: $3E $46
    ldh [hActor.State], a                                  ; $603D: $E0 $8D
    ld a, $60                                     ; $603F: $3E $60
    ldh [hActor.State+1], a                                  ; $6041: $E0 $8E
    jp Jump_001_5D9B                              ; $6043: $C3 $9B $5D


    call Call_001_5DE1                            ; $6046: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $6049: $FA $A3 $C9
    bit 4, a                                      ; $604C: $CB $67
    jr nz, jr_001_6053                            ; $604E: $20 $03

    jp Jump_001_60F2                              ; $6050: $C3 $F2 $60


jr_001_6053:
    ld e, $00                                     ; $6053: $1E $00
    bit 6, a                                      ; $6055: $CB $77
    jr z, jr_001_605D                             ; $6057: $28 $04

    ld e, $FF                                     ; $6059: $1E $FF
    jr jr_001_6063                                ; $605B: $18 $06

jr_001_605D:
    bit 7, a                                      ; $605D: $CB $7F
    jr z, jr_001_6063                             ; $605F: $28 $02

    ld e, $01                                     ; $6061: $1E $01

jr_001_6063:
    ld a, $01                                     ; $6063: $3E $01
    ld [wColl_XMove], a                                 ; $6065: $EA $D2 $C6
    ld a, e                                       ; $6068: $7B
    ld [wColl_YMove], a                                 ; $6069: $EA $D3 $C6
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $6074: $CD $2E $42
    call Call_001_4AF0                            ; $6077: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $607A: $FA $D3 $C6
    and a                                         ; $607D: $A7
    jp nz, Jump_001_5D9B                          ; $607E: $C2 $9B $5D

Jump_001_6081:
    call Call_001_4CF8                            ; $6081: $CD $F8 $4C
    call Call_001_5F25                            ; $6084: $CD $25 $5F
    jp Jump_001_5D9B                              ; $6087: $C3 $9B $5D


Jump_001_608A:
    ld a, $00                                     ; $608A: $3E $00
    ldh [hActor.Flags], a                                  ; $608C: $E0 $8C
    ld a, $66                                     ; $608E: $3E $66
    ldh [hScript.State], a                                  ; $6090: $E0 $A4
    ld a, $0A                                     ; $6092: $3E $0A
    ldh [hScript.State+1], a                                  ; $6094: $E0 $A5
    ld a, $0A                                     ; $6096: $3E $0A
    ldh [hScript.Frame], a                                  ; $6098: $E0 $A2
    ld a, $78                                     ; $609A: $3E $78
    ldh [hScript.Frame+1], a                                  ; $609C: $E0 $A3
    ld a, $A9                                     ; $609E: $3E $A9
    ldh [hActor.State], a                                  ; $60A0: $E0 $8D
    ld a, $60                                     ; $60A2: $3E $60
    ldh [hActor.State+1], a                                  ; $60A4: $E0 $8E
    jp Jump_001_5D9B                              ; $60A6: $C3 $9B $5D


    call Call_001_5DE1                            ; $60A9: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $60AC: $FA $A3 $C9
    bit 6, a                                      ; $60AF: $CB $77
    jr nz, jr_001_60B6                            ; $60B1: $20 $03

    jp Jump_001_60F2                              ; $60B3: $C3 $F2 $60


jr_001_60B6:
    bit 5, a                                      ; $60B6: $CB $6F
    jr z, jr_001_60BD                             ; $60B8: $28 $03

    jp Jump_001_5FC4                              ; $60BA: $C3 $C4 $5F


jr_001_60BD:
    bit 4, a                                      ; $60BD: $CB $67
    jr z, jr_001_60C4                             ; $60BF: $28 $03

    jp Jump_001_6027                              ; $60C1: $C3 $27 $60


jr_001_60C4:
    ld a, $FF                                     ; $60C4: $3E $FF
    ld [wColl_YMove], a                                 ; $60C6: $EA $D3 $C6
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $60D1: $CD $2E $42
    call Call_001_4AF0                            ; $60D4: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $60D7: $FA $D3 $C6
    and a                                         ; $60DA: $A7
    jp nz, Jump_001_5D9B                          ; $60DB: $C2 $9B $5D

Jump_001_60DE:
    call Call_001_4D13                            ; $60DE: $CD $13 $4D
    call Call_001_5F25                            ; $60E1: $CD $25 $5F
    jp Jump_001_5D9B                              ; $60E4: $C3 $9B $5D


    xor a                                         ; $60E7: $AF
    ld [$C12B], a                                 ; $60E8: $EA $2B $C1
    ld a, $01                                     ; $60EB: $3E $01
    ld [wCollMask], a                                 ; $60ED: $EA $2A $C1
    jr jr_001_60FD                                ; $60F0: $18 $0B

Jump_001_60F2:
    ld a, $FD                                     ; $60F2: $3E $FD
    ldh [hActor.State], a                                  ; $60F4: $E0 $8D
    ld a, $60                                     ; $60F6: $3E $60
    ldh [hActor.State+1], a                                  ; $60F8: $E0 $8E
    jp Jump_001_5D9B                              ; $60FA: $C3 $9B $5D


jr_001_60FD:
    call Call_001_5DE1                            ; $60FD: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $6100: $FA $A3 $C9
    bit 4, a                                      ; $6103: $CB $67
    jp nz, Jump_001_6027                          ; $6105: $C2 $27 $60

    bit 5, a                                      ; $6108: $CB $6F
    jp nz, Jump_001_5FC4                          ; $610A: $C2 $C4 $5F

    bit 6, a                                      ; $610D: $CB $77
    jp nz, Jump_001_608A                          ; $610F: $C2 $8A $60

    bit 7, a                                      ; $6112: $CB $7F
    jp nz, Jump_001_5F66                          ; $6114: $C2 $66 $5F

    call Call_001_4AF0                            ; $6117: $CD $F0 $4A
    ldh a, [hActor.Flags]                                  ; $611A: $F0 $8C
    and $03                                       ; $611C: $E6 $03
    cp $00                                        ; $611E: $FE $00
    jr z, jr_001_612E                             ; $6120: $28 $0C

    cp $03                                        ; $6122: $FE $03
    jr z, jr_001_6131                             ; $6124: $28 $0B

    cp $01                                        ; $6126: $FE $01
    jr z, jr_001_6134                             ; $6128: $28 $0A

    cp $02                                        ; $612A: $FE $02
    jr z, jr_001_6137                             ; $612C: $28 $09

jr_001_612E:
    jp Jump_001_60DE                              ; $612E: $C3 $DE $60


jr_001_6131:
    jp Jump_001_5FBB                              ; $6131: $C3 $BB $5F


jr_001_6134:
    jp Jump_001_601E                              ; $6134: $C3 $1E $60


jr_001_6137:
    jp Jump_001_6081                              ; $6137: $C3 $81 $60


    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$A3A3]                                 ; $6147: $FA $A3 $A3
    ld [$C9A6], a                                 ; $614A: $EA $A6 $C9
    Battery_Off
    jp Jump_001_6167                              ; $6151: $C3 $67 $61


Jump_001_6154:
    ld a, $66                                     ; $6154: $3E $66
    ldh [hScript.State], a                                  ; $6156: $E0 $A4
    ld a, $0A                                     ; $6158: $3E $0A
    ldh [hScript.State+1], a                                  ; $615A: $E0 $A5
    ld a, $67                                     ; $615C: $3E $67
    ldh [hActor.State], a                                  ; $615E: $E0 $8D
    ld a, $61                                     ; $6160: $3E $61
    ldh [hActor.State+1], a                                  ; $6162: $E0 $8E
    jp Jump_001_5D9B                              ; $6164: $C3 $9B $5D


Jump_001_6167:
    call Call_001_5DE1                            ; $6167: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $616A: $FA $A3 $C9
    bit 4, a                                      ; $616D: $CB $67
    jp nz, Jump_001_628C                          ; $616F: $C2 $8C $62

    bit 5, a                                      ; $6172: $CB $6F
    jp nz, Jump_001_621C                          ; $6174: $C2 $1C $62

    bit 6, a                                      ; $6177: $CB $77
    jp nz, Jump_001_62FC                          ; $6179: $C2 $FC $62

    bit 7, a                                      ; $617C: $CB $7F
    jp nz, Jump_001_61BB                          ; $617E: $C2 $BB $61

    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $6189: $CD $2E $42
    call Call_001_4AF0                            ; $618C: $CD $F0 $4A
    ld a, [$C9A4]                                 ; $618F: $FA $A4 $C9
    bit 0, a                                      ; $6192: $CB $47
    call nz, Call_001_619A                        ; $6194: $C4 $9A $61
    jp Jump_001_5D9B                              ; $6197: $C3 $9B $5D


Call_001_619A:
    ldh a, [hActor.Flags]                                  ; $619A: $F0 $8C
    and $03                                       ; $619C: $E6 $03
    cp $00                                        ; $619E: $FE $00
    jr z, jr_001_61AE                             ; $61A0: $28 $0C

    cp $03                                        ; $61A2: $FE $03
    jr z, jr_001_61B1                             ; $61A4: $28 $0B

    cp $01                                        ; $61A6: $FE $01
    jr z, jr_001_61B4                             ; $61A8: $28 $0A

    cp $02                                        ; $61AA: $FE $02
    jr z, jr_001_61B7                             ; $61AC: $28 $09

jr_001_61AE:
    jp Jump_001_4C6E                              ; $61AE: $C3 $6E $4C


jr_001_61B1:
    jp Jump_001_4B7B                              ; $61B1: $C3 $7B $4B


jr_001_61B4:
    jp Jump_001_4BCC                              ; $61B4: $C3 $CC $4B


jr_001_61B7:
    jp Jump_001_4C1D                              ; $61B7: $C3 $1D $4C


    ret                                           ; $61BA: $C9


Jump_001_61BB:
    ld a, $03                                     ; $61BB: $3E $03
    ldh [hActor.Flags], a                                  ; $61BD: $E0 $8C
    ld a, $66                                     ; $61BF: $3E $66
    ldh [hScript.State], a                                  ; $61C1: $E0 $A4
    ld a, $0A                                     ; $61C3: $3E $0A
    ldh [hScript.State+1], a                                  ; $61C5: $E0 $A5
    ld a, $11                                     ; $61C7: $3E $11
    ldh [$FFA1], a                                  ; $61C9: $E0 $A1
    ld a, $8D                                     ; $61CB: $3E $8D
    ldh [hScript.Frame], a                                  ; $61CD: $E0 $A2
    ld a, $78                                     ; $61CF: $3E $78
    ldh [hScript.Frame+1], a                                  ; $61D1: $E0 $A3
    ld a, $DE                                     ; $61D3: $3E $DE
    ldh [hActor.State], a                                  ; $61D5: $E0 $8D
    ld a, $61                                     ; $61D7: $3E $61
    ldh [hActor.State+1], a                                  ; $61D9: $E0 $8E
    jp Jump_001_5D9B                              ; $61DB: $C3 $9B $5D


    call Call_001_5DE1                            ; $61DE: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $61E1: $FA $A3 $C9
    bit 7, a                                      ; $61E4: $CB $7F
    jp nz, Jump_001_61F6                          ; $61E6: $C2 $F6 $61

    ld a, $46                                     ; $61E9: $3E $46
    ld [hScript.Frame], a                                 ; $61EB: $EA $A2 $FF
    ld a, $78                                     ; $61EE: $3E $78
    ld [hScript.Frame+1], a                                 ; $61F0: $EA $A3 $FF
    jp Jump_001_6154                              ; $61F3: $C3 $54 $61


Jump_001_61F6:
    bit 5, a                                      ; $61F6: $CB $6F
    jr z, jr_001_61FD                             ; $61F8: $28 $03

    jp Jump_001_621C                              ; $61FA: $C3 $1C $62


jr_001_61FD:
    bit 4, a                                      ; $61FD: $CB $67
    jr z, jr_001_6204                             ; $61FF: $28 $03

    jp Jump_001_628C                              ; $6201: $C3 $8C $62


jr_001_6204:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $620C: $CD $2E $42
    call Call_001_4AF0                            ; $620F: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $6212: $FA $D3 $C6
    and a                                         ; $6215: $A7
    call z, Call_001_4B7B                         ; $6216: $CC $7B $4B
    jp Jump_001_5D9B                              ; $6219: $C3 $9B $5D


Jump_001_621C:
    ld a, $01                                     ; $621C: $3E $01
    ldh [hActor.Flags], a                                  ; $621E: $E0 $8C
    ld a, $66                                     ; $6220: $3E $66
    ldh [hScript.State], a                                  ; $6222: $E0 $A4
    ld a, $0A                                     ; $6224: $3E $0A
    ldh [hScript.State+1], a                                  ; $6226: $E0 $A5
    ld a, $11                                     ; $6228: $3E $11
    ldh [$FFA1], a                                  ; $622A: $E0 $A1
    ld a, $B0                                     ; $622C: $3E $B0
    ldh [hScript.Frame], a                                  ; $622E: $E0 $A2
    ld a, $78                                     ; $6230: $3E $78
    ldh [hScript.Frame+1], a                                  ; $6232: $E0 $A3
    ld a, $3F                                     ; $6234: $3E $3F
    ldh [hActor.State], a                                  ; $6236: $E0 $8D
    ld a, $62                                     ; $6238: $3E $62
    ldh [hActor.State+1], a                                  ; $623A: $E0 $8E
    jp Jump_001_5D9B                              ; $623C: $C3 $9B $5D


    call Call_001_5DE1                            ; $623F: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $6242: $FA $A3 $C9
    bit 5, a                                      ; $6245: $CB $6F
    jr nz, jr_001_6256                            ; $6247: $20 $0D

    ld a, $52                                     ; $6249: $3E $52
    ld [hScript.Frame], a                                 ; $624B: $EA $A2 $FF
    ld a, $78                                     ; $624E: $3E $78
    ld [hScript.Frame+1], a                                 ; $6250: $EA $A3 $FF
    jp Jump_001_6154                              ; $6253: $C3 $54 $61


jr_001_6256:
    ldh a, [$FFA8]                                  ; $6256: $F0 $A8
    and $01                                       ; $6258: $E6 $01
    jp z, Jump_001_6274                           ; $625A: $CA $74 $62

    ld a, [$C9A3]                                 ; $625D: $FA $A3 $C9
    bit 6, a                                      ; $6260: $CB $77
    jr z, jr_001_626B                             ; $6262: $28 $07

    ld a, $FF                                     ; $6264: $3E $FF
    ld [wColl_YMove], a                                 ; $6266: $EA $D3 $C6
    jr jr_001_6274                                ; $6269: $18 $09

jr_001_626B:
    bit 7, a                                      ; $626B: $CB $7F
    jr z, jr_001_6274                             ; $626D: $28 $05

    ld a, $01                                     ; $626F: $3E $01
    ld [wColl_YMove], a                                 ; $6271: $EA $D3 $C6

Jump_001_6274:
jr_001_6274:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $627C: $CD $2E $42
    call Call_001_4AF0                            ; $627F: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $6282: $FA $D2 $C6
    and a                                         ; $6285: $A7
    call z, Call_001_4BCC                         ; $6286: $CC $CC $4B
    jp Jump_001_5D9B                              ; $6289: $C3 $9B $5D


Jump_001_628C:
    ld a, $02                                     ; $628C: $3E $02
    ldh [hActor.Flags], a                                  ; $628E: $E0 $8C
    ld a, $66                                     ; $6290: $3E $66
    ldh [hScript.State], a                                  ; $6292: $E0 $A4
    ld a, $0A                                     ; $6294: $3E $0A
    ldh [hScript.State+1], a                                  ; $6296: $E0 $A5
    ld a, $11                                     ; $6298: $3E $11
    ldh [$FFA1], a                                  ; $629A: $E0 $A1
    ld a, $D3                                     ; $629C: $3E $D3
    ldh [hScript.Frame], a                                  ; $629E: $E0 $A2
    ld a, $78                                     ; $62A0: $3E $78
    ldh [hScript.Frame+1], a                                  ; $62A2: $E0 $A3
    ld a, $AF                                     ; $62A4: $3E $AF
    ldh [hActor.State], a                                  ; $62A6: $E0 $8D
    ld a, $62                                     ; $62A8: $3E $62
    ldh [hActor.State+1], a                                  ; $62AA: $E0 $8E
    jp Jump_001_5D9B                              ; $62AC: $C3 $9B $5D


    call Call_001_5DE1                            ; $62AF: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $62B2: $FA $A3 $C9
    bit 4, a                                      ; $62B5: $CB $67
    jr nz, jr_001_62C6                            ; $62B7: $20 $0D

    ld a, $5E                                     ; $62B9: $3E $5E
    ld [hScript.Frame], a                                 ; $62BB: $EA $A2 $FF
    ld a, $78                                     ; $62BE: $3E $78
    ld [hScript.Frame+1], a                                 ; $62C0: $EA $A3 $FF
    jp Jump_001_6154                              ; $62C3: $C3 $54 $61


jr_001_62C6:
    ldh a, [$FFA8]                                  ; $62C6: $F0 $A8
    and $01                                       ; $62C8: $E6 $01
    jp z, Jump_001_62E4                           ; $62CA: $CA $E4 $62

    ld a, [$C9A3]                                 ; $62CD: $FA $A3 $C9
    bit 6, a                                      ; $62D0: $CB $77
    jr z, jr_001_62DB                             ; $62D2: $28 $07

    ld a, $FF                                     ; $62D4: $3E $FF
    ld [wColl_YMove], a                                 ; $62D6: $EA $D3 $C6
    jr jr_001_62E4                                ; $62D9: $18 $09

jr_001_62DB:
    bit 7, a                                      ; $62DB: $CB $7F
    jr z, jr_001_62E4                             ; $62DD: $28 $05

    ld a, $01                                     ; $62DF: $3E $01
    ld [wColl_YMove], a                                 ; $62E1: $EA $D3 $C6

Jump_001_62E4:
jr_001_62E4:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $62EC: $CD $2E $42
    call Call_001_4AF0                            ; $62EF: $CD $F0 $4A
    ld a, [wColl_XMove]                                 ; $62F2: $FA $D2 $C6
    and a                                         ; $62F5: $A7
    call z, Call_001_4C1D                         ; $62F6: $CC $1D $4C
    jp Jump_001_5D9B                              ; $62F9: $C3 $9B $5D


Jump_001_62FC:
    ld a, $00                                     ; $62FC: $3E $00
    ldh [hActor.Flags], a                                  ; $62FE: $E0 $8C
    ld a, $66                                     ; $6300: $3E $66
    ldh [hScript.State], a                                  ; $6302: $E0 $A4
    ld a, $0A                                     ; $6304: $3E $0A
    ldh [hScript.State+1], a                                  ; $6306: $E0 $A5
    ld a, $11                                     ; $6308: $3E $11
    ldh [$FFA1], a                                  ; $630A: $E0 $A1
    ld a, $6A                                     ; $630C: $3E $6A
    ldh [hScript.Frame], a                                  ; $630E: $E0 $A2
    ld a, $78                                     ; $6310: $3E $78
    ldh [hScript.Frame+1], a                                  ; $6312: $E0 $A3
    ld a, $1F                                     ; $6314: $3E $1F
    ldh [hActor.State], a                                  ; $6316: $E0 $8D
    ld a, $63                                     ; $6318: $3E $63
    ldh [hActor.State+1], a                                  ; $631A: $E0 $8E
    jp Jump_001_5D9B                              ; $631C: $C3 $9B $5D


    call Call_001_5DE1                            ; $631F: $CD $E1 $5D
    ld a, [$C9A3]                                 ; $6322: $FA $A3 $C9
    bit 6, a                                      ; $6325: $CB $77
    jr nz, jr_001_6336                            ; $6327: $20 $0D

    ld a, $3A                                     ; $6329: $3E $3A
    ld [hScript.Frame], a                                 ; $632B: $EA $A2 $FF
    ld a, $78                                     ; $632E: $3E $78
    ld [hScript.Frame+1], a                                 ; $6330: $EA $A3 $FF
    jp Jump_001_6154                              ; $6333: $C3 $54 $61


jr_001_6336:
    bit 5, a                                      ; $6336: $CB $6F
    jr z, jr_001_633D                             ; $6338: $28 $03

    jp Jump_001_621C                              ; $633A: $C3 $1C $62


jr_001_633D:
    bit 4, a                                      ; $633D: $CB $67
    jr z, jr_001_6344                             ; $633F: $28 $03

    jp Jump_001_628C                              ; $6341: $C3 $8C $62


jr_001_6344:
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $634C: $CD $2E $42
    call Call_001_4AF0                            ; $634F: $CD $F0 $4A
    ld a, [wColl_YMove]                                 ; $6352: $FA $D3 $C6
    and a                                         ; $6355: $A7
    call z, Call_001_4C6E                         ; $6356: $CC $6E $4C
    jp Jump_001_5D9B                              ; $6359: $C3 $9B $5D


    call Actor_ScriptOpen                            ; $635C: $CD $2F $41
    xor a                                         ; $635F: $AF
    ld [$C187], a                                 ; $6360: $EA $87 $C1
    call Script_Open                                    ; $6363: $CD $28 $29
    call Script_Play                                    ; $6366: $CD $3A $0A
    call Script_Close                                    ; $6369: $CD $0A $29
    call Script_Open                                    ; $636C: $CD $28 $29
    call Script_Play                                    ; $636F: $CD $3A $0A
    call Script_Close                                    ; $6372: $CD $0A $29
    Do_CallForeign Coll_FreeMove
    ld a, [$C187]                                 ; $637D: $FA $87 $C1
    and a                                         ; $6380: $A7
    jr z, jr_001_638A                             ; $6381: $28 $07

    ldh [hActor.State+1], a                                  ; $6383: $E0 $8E
    ld a, [$C186]                                 ; $6385: $FA $86 $C1
    ldh [hActor.State], a                                  ; $6388: $E0 $8D

jr_001_638A:
    call Actor_ScriptClose                            ; $638A: $CD $0A $41
    ret                                           ; $638D: $C9


    db $00, $00, $01, $01, $02, $02, $03, $04, $05, $06, $07, $07, $08, $08, $09, $09
    db $00, $4B, $C8, $00, $4B, $C8, $01, $4D, $C8, $01, $4D, $C8, $01, $4D, $C8, $02
    db $4F, $C8, $02, $4F, $C8, $03, $51, $C8, $04, $53, $C8, $05, $55, $C8, $06, $57
    db $C8, $06, $57, $C8, $07, $59, $C8, $07, $59, $C8, $08, $5B, $C8, $08, $5B, $C8

    ; $63CE
Call_001_63CE::
    call Actor_ScriptOpen                            ; $63CE: $CD $2F $41
    call Script_Open                                    ; $63D1: $CD $28 $29
    call Script_Play                                    ; $63D4: $CD $3A $0A
    call Script_Close                                    ; $63D7: $CD $0A $29
    Do_CallForeign Coll_FreeMove
    call Actor_ScriptClose                            ; $63E2: $CD $0A $41
    ret                                           ; $63E5: $C9


    call AI_Anim                            ; $63E6: $CD $6B $4A
    call Call_001_4AF0                            ; $63E9: $CD $F0 $4A
    ret                                           ; $63EC: $C9


    call AI_Blocker                            ; $63ED: $CD $8F $4A
    call Call_001_641D                            ; $63F0: $CD $1D $64
    and a                                         ; $63F3: $A7
    ret z                                         ; $63F4: $C8

    ld a, [wActor_SaveFlag]
    and a
    ret nz ; Not Actor_SaveFlag_EMPTY

    call Actor_StoreCopy                            ; $63FA: $CD $1E $40
    inc hl                                        ; $63FD: $23
    ld a, $D1                                     ; $63FE: $3E $D1
    ld [hl+], a                                   ; $6400: $22
    ld a, $64                                     ; $6401: $3E $64
    ld [hl+], a                                   ; $6403: $22
    ret                                           ; $6404: $C9


    call AI_Blocker                            ; $6405: $CD $8F $4A
    call Call_001_641D                            ; $6408: $CD $1D $64
    and a                                         ; $640B: $A7
    ret z                                         ; $640C: $C8

    ld a, [hActor_CurrentAddress+1]                                 ; $640D: $FA $8B $FF
    ld h, a                                       ; $6410: $67
    ld a, [hActor_CurrentAddress]                                 ; $6411: $FA $8A $FF
    ld l, a                                       ; $6414: $6F
    inc hl                                        ; $6415: $23
    ld a, $D1                                     ; $6416: $3E $D1
    ld [hl+], a                                   ; $6418: $22
    ld a, $64                                     ; $6419: $3E $64
    ld [hl+], a                                   ; $641B: $22
    ret                                           ; $641C: $C9


Call_001_641D:
    ldh a, [$FFAB]                                  ; $641D: $F0 $AB
    bit 2, a                                      ; $641F: $CB $57
    jp z, Jump_001_64CF                           ; $6421: $CA $CF $64

    ld a, [wActor_SaveFlag]
    cp Actor_SaveFlag_EMPTY
    jp nz, Jump_001_64CF

    ld a, [wTextbox_Position]                                 ; $642C: $FA $EE $C6
    cp $00                                        ; $642F: $FE $00
    jp nz, Jump_001_64CF                          ; $6431: $C2 $CF $64

    ld a, [$C716]                                 ; $6434: $FA $16 $C7
    and a                                         ; $6437: $A7
    jp nz, Jump_001_64CF                          ; $6438: $C2 $CF $64

    ld a, [hActor_CurrentAddress+1]                                 ; $643B: $FA $8B $FF
    ld h, a                                       ; $643E: $67
    ld a, [hActor_CurrentAddress]                                 ; $643F: $FA $8A $FF
    ld l, a                                       ; $6442: $6F
    ld de, $0005                                  ; $6443: $11 $05 $00
    add hl, de                                    ; $6446: $19
    ld a, [hl+]                                   ; $6447: $2A
    ld c, [hl]                                    ; $6448: $4E
    ld b, a                                       ; $6449: $47
    ld hl, $C189                                  ; $644A: $21 $89 $C1
    add hl, de                                    ; $644D: $19
    ld a, [hl+]                                   ; $644E: $2A
    ld d, a                                       ; $644F: $57
    ld e, [hl]                                    ; $6450: $5E
    push bc                                       ; $6451: $C5
    ld h, d                                       ; $6452: $62
    ld l, e                                       ; $6453: $6B
    TwosComp bc
    add hl, bc                                    ; $645B: $09
    ld a, h                                       ; $645C: $7C
    or l                                          ; $645D: $B5
    pop bc                                        ; $645E: $C1
    jr z, jr_001_64CC                             ; $645F: $28 $6B

    ld a, [$C189]                                 ; $6461: $FA $89 $C1
    and $03                                       ; $6464: $E6 $03
    cp $00                                        ; $6466: $FE $00
    jr z, jr_001_6488                             ; $6468: $28 $1E

    cp $01                                        ; $646A: $FE $01
    jr z, jr_001_649E                             ; $646C: $28 $30

    cp $02                                        ; $646E: $FE $02
    jr z, jr_001_64B6                             ; $6470: $28 $44

    ld a, b                                       ; $6472: $78
    cp d                                          ; $6473: $BA
    jr nz, jr_001_64CF                            ; $6474: $20 $59

    add $00                                       ; $6476: $C6 $00
    cp d                                          ; $6478: $BA
    jr c, jr_001_64CF                             ; $6479: $38 $54

    ld a, c                                       ; $647B: $79
    sub $02                                       ; $647C: $D6 $02
    cp e                                          ; $647E: $BB
    jr nc, jr_001_64CF                            ; $647F: $30 $4E

    add $02                                       ; $6481: $C6 $02
    cp e                                          ; $6483: $BB
    jr c, jr_001_64CF                             ; $6484: $38 $49

    jr jr_001_64CC                                ; $6486: $18 $44

jr_001_6488:
    ld a, b                                       ; $6488: $78
    cp d                                          ; $6489: $BA
    jr nz, jr_001_64CF                            ; $648A: $20 $43

    add $00                                       ; $648C: $C6 $00
    cp d                                          ; $648E: $BA
    jr c, jr_001_64CF                             ; $648F: $38 $3E

    ld a, c                                       ; $6491: $79
    sub $01                                       ; $6492: $D6 $01
    cp e                                          ; $6494: $BB
    jr nc, jr_001_64CF                            ; $6495: $30 $38

    add $02                                       ; $6497: $C6 $02
    cp e                                          ; $6499: $BB
    jr c, jr_001_64CF                             ; $649A: $38 $33

    jr jr_001_64CC                                ; $649C: $18 $2E

jr_001_649E:
    ld a, b                                       ; $649E: $78
    sub $01                                       ; $649F: $D6 $01
    cp d                                          ; $64A1: $BA
    jr nc, jr_001_64CF                            ; $64A2: $30 $2B

    add $02                                       ; $64A4: $C6 $02
    cp d                                          ; $64A6: $BA
    jr c, jr_001_64CF                             ; $64A7: $38 $26

    ld a, c                                       ; $64A9: $79
    add $01                                       ; $64AA: $C6 $01
    cp e                                          ; $64AC: $BB
    jr c, jr_001_64CF                             ; $64AD: $38 $20

    sub $03                                       ; $64AF: $D6 $03
    cp e                                          ; $64B1: $BB
    jr nc, jr_001_64CF                            ; $64B2: $30 $1B

    jr jr_001_64CC                                ; $64B4: $18 $16

jr_001_64B6:
    ld a, b                                       ; $64B6: $78
    sub $02                                       ; $64B7: $D6 $02
    cp d                                          ; $64B9: $BA
    jr nc, jr_001_64CF                            ; $64BA: $30 $13

    add $02                                       ; $64BC: $C6 $02
    cp d                                          ; $64BE: $BA
    jr c, jr_001_64CF                             ; $64BF: $38 $0E

    ld a, c                                       ; $64C1: $79
    add $01                                       ; $64C2: $C6 $01
    cp e                                          ; $64C4: $BB
    jr c, jr_001_64CF                             ; $64C5: $38 $08

    sub $03                                       ; $64C7: $D6 $03
    cp e                                          ; $64C9: $BB
    jr nc, jr_001_64CF                            ; $64CA: $30 $03

jr_001_64CC:
    ld a, $01                                     ; $64CC: $3E $01
    ret                                           ; $64CE: $C9


Jump_001_64CF:
jr_001_64CF:
    xor a                                         ; $64CF: $AF
    ret                                           ; $64D0: $C9


    call Actor_ScriptOpen                            ; $64D1: $CD $2F $41
    ld a, h                                       ; $64D4: $7C
    ld [$FFA0], a                                 ; $64D5: $EA $A0 $FF
    ld a, l                                       ; $64D8: $7D
    ld [$FF9F], a                                 ; $64D9: $EA $9F $FF
    ld de, $000E                                  ; $64DC: $11 $0E $00
    add hl, de                                    ; $64DF: $19
    ld a, [hl+]                                   ; $64E0: $2A
    ldh [$FFA1], a                                  ; $64E1: $E0 $A1
    ld a, [hl+]                                   ; $64E3: $2A
    ldh [hScript.Frame], a                                  ; $64E4: $E0 $A2
    ld a, [hl+]                                   ; $64E6: $2A
    ldh [hScript.Frame+1], a                                  ; $64E7: $E0 $A3
    ld a, $66                                     ; $64E9: $3E $66
    ldh [hScript.State], a                                  ; $64EB: $E0 $A4
    ld a, $0A                                     ; $64ED: $3E $0A
    ldh [hScript.State+1], a                                  ; $64EF: $E0 $A5
    call Script_Play                                    ; $64F1: $CD $3A $0A
    call Script_Close                                    ; $64F4: $CD $0A $29
    call Script_Open                                    ; $64F7: $CD $28 $29
    call Script_Play                                    ; $64FA: $CD $3A $0A
    call Script_Close                                    ; $64FD: $CD $0A $29
    call AI_Blocker_CleanTile                            ; $6500: $CD $B6 $4A
    Do_CallForeign Coll_FreeMove
    ld a, $6B                                     ; $650B: $3E $6B
    ldh [hActor.State], a                                  ; $650D: $E0 $8D
    ld a, $4A                                     ; $650F: $3E $4A
    ldh [hActor.State+1], a                                  ; $6511: $E0 $8E
    call Actor_ScriptClose                            ; $6513: $CD $0A $41
    call Call_001_651A                            ; $6516: $CD $1A $65
    ret                                           ; $6519: $C9


Call_001_651A:
    xor a                                         ; $651A: $AF
    ldh [$FFAA], a                                  ; $651B: $E0 $AA
    ldh [$FFAB], a                                  ; $651D: $E0 $AB
    ld a, [$C189]                                 ; $651F: $FA $89 $C1
    and $03                                       ; $6522: $E6 $03
    cp $00                                        ; $6524: $FE $00
    jr z, jr_001_6534                             ; $6526: $28 $0C

    cp $03                                        ; $6528: $FE $03
    jr z, jr_001_6540                             ; $652A: $28 $14

    cp $01                                        ; $652C: $FE $01
    jr z, jr_001_654C                             ; $652E: $28 $1C

    cp $02                                        ; $6530: $FE $02
    jr z, jr_001_6558                             ; $6532: $28 $24

jr_001_6534:
    ld a, $AB                                     ; $6534: $3E $AB
    ld [$C194], a                                 ; $6536: $EA $94 $C1
    ld a, $50                                     ; $6539: $3E $50
    ld [$C195], a                                 ; $653B: $EA $95 $C1
    jr jr_001_6562                                ; $653E: $18 $22

jr_001_6540:
    ld a, $B5                                     ; $6540: $3E $B5
    ld [$C194], a                                 ; $6542: $EA $94 $C1
    ld a, $50                                     ; $6545: $3E $50
    ld [$C195], a                                 ; $6547: $EA $95 $C1
    jr jr_001_6562                                ; $654A: $18 $16

jr_001_654C:
    ld a, $BF                                     ; $654C: $3E $BF
    ld [$C194], a                                 ; $654E: $EA $94 $C1
    ld a, $50                                     ; $6551: $3E $50
    ld [$C195], a                                 ; $6553: $EA $95 $C1
    jr jr_001_6562                                ; $6556: $18 $0A

jr_001_6558:
    ld a, $C9                                     ; $6558: $3E $C9
    ld [$C194], a                                 ; $655A: $EA $94 $C1
    ld a, $50                                     ; $655D: $3E $50
    ld [$C195], a                                 ; $655F: $EA $95 $C1

jr_001_6562:
    ld a, $20                                     ; $6562: $3E $20
    ld [$C193], a                                 ; $6564: $EA $93 $C1
    ld a, $66                                     ; $6567: $3E $66
    ld [$C196], a                                 ; $6569: $EA $96 $C1
    ld a, $0A                                     ; $656C: $3E $0A
    ld [$C197], a                                 ; $656E: $EA $97 $C1
    ld a, $02                                     ; $6571: $3E $02
    ld [$C19D], a                                 ; $6573: $EA $9D $C1
    ld a, $14                                     ; $6576: $3E $14
    ld [$C19E], a                                 ; $6578: $EA $9E $C1
    ld a, $6B                                     ; $657B: $3E $6B
    ld [$C18A], a                                 ; $657D: $EA $8A $C1
    ld a, $4A                                     ; $6580: $3E $4A
    ld [$C18B], a                                 ; $6582: $EA $8B $C1
    ret                                           ; $6585: $C9

    ; $6586
AI_HorizontalScroller::
    ; $02 Horizontal Scrolling effect
    ; The object itself is kind of a dummy. It just sets some variables
    ; and then turns itself off, and lets VBlank and STAT interrupts do the rest
    call Actor_ScriptOpen
    Do_CallForeign AI_HorizontalScroller_Setup
    Set16FF hActor.State, AI_Idle
    call Actor_ScriptClose
    ret

    ; $659D
AI_Idle::
    ; $02 Horizontal Scrolling effect after the first frame
    call Actor_ScriptOpen
    call Actor_ScriptClose
    ret


    call AI_Anim                            ; $65A4: $CD $6B $4A
    ld a, [$C716]                                 ; $65A7: $FA $16 $C7
    and a                                         ; $65AA: $A7
    ret nz                                        ; $65AB: $C0

    ld a, [wTextbox_Position]                                 ; $65AC: $FA $EE $C6
    cp $00                                        ; $65AF: $FE $00
    ret nz                                        ; $65B1: $C0

    ldh a, [$FFAB]                                  ; $65B2: $F0 $AB
    bit 1, a                                      ; $65B4: $CB $4F
    ret z                                         ; $65B6: $C8

    ldh a, [hActor.XTile]                                  ; $65B7: $F0 $91
    ld e, a                                       ; $65B9: $5F
    ld a, [wActor_Hero.XTile]                                 ; $65BA: $FA $8E $C1
    cp e                                          ; $65BD: $BB
    ret nz                                        ; $65BE: $C0

    ldh a, [hActor.YTile]                                  ; $65BF: $F0 $92
    ld e, a                                       ; $65C1: $5F
    ld a, [wActor_Hero.YTile]                                 ; $65C2: $FA $8F $C1
    cp e                                          ; $65C5: $BB
    ret nz                                        ; $65C6: $C0

    ld a, [hActor_CurrentAddress+1]                                 ; $65C7: $FA $8B $FF
    ld h, a                                       ; $65CA: $67
    ld a, [hActor_CurrentAddress]                                 ; $65CB: $FA $8A $FF
    ld l, a                                       ; $65CE: $6F
    inc hl                                        ; $65CF: $23
    ld a, $D1                                     ; $65D0: $3E $D1
    ld [hl+], a                                   ; $65D2: $22
    ld a, $64                                     ; $65D3: $3E $64
    ld [hl+], a                                   ; $65D5: $22
    ret                                           ; $65D6: $C9


    call Actor_ScriptOpen                            ; $65D7: $CD $2F $41
    call Script_Open                                    ; $65DA: $CD $28 $29
    call Script_Play                                    ; $65DD: $CD $3A $0A
    call Script_Close                                    ; $65E0: $CD $0A $29
    call Script_Open                                    ; $65E3: $CD $28 $29
    call Script_Play                                    ; $65E6: $CD $3A $0A
    call Script_Close                                    ; $65E9: $CD $0A $29
    Do_CallForeign Call_005_682D
    call HotspotX_CheckHotspot                            ; $65F4: $CD $2E $42
    ld hl, $FFAA                                  ; $65F7: $21 $AA $FF
    set 1, [hl]                                   ; $65FA: $CB $CE
    call Actor_ScriptClose                            ; $65FC: $CD $0A $41
    ret                                           ; $65FF: $C9