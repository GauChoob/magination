; Opens and closes an actor's script

ASSERT ActorXX_BANK == BANK(@)

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