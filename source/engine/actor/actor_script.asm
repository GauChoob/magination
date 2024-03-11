
Actor_Init_SetInterrupt::
    ; Sets the Interrupt Function of an Actor
    ; The interrupt function triggers
    ;   - When you try to talk to a talkable actor AI_TALKER (TODO rename)
    ;   - When you stand on the same tile as an AI_TRAP (TODO rename)
    ; Arguments:
    ;   BankAddress Script
    ;   hl          Memory address of Actor.Interrupt
    ; Output:
    ;   Actor.Interrupt_Bank and Actor.Interrupt_State
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    ret


Actor_Init_SetScript0::
    ; Initializes Script0 of an Actor
    ; Arguments:
    ;   BankAddress  Script
    ;   hl      Memory address of Actor.Script0
    ; Output:
    ;   Bank and Frame are set
    ;   State as Script_Start
    ;   Script0_SmallCounter and Script0_BigCounter are uninitialized
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    ld a, LOW(Script_Start)
    ld [hl+], a
    ld a, HIGH(Script_Start)
    ld [hl+], a
    inc hl
    inc hl
    ret


Actor_Init_NullScript1::
    ; Initializes Script1 of an Actor as Cmd_Flow_End
    ; Arguments:
    ;   hl      Memory address of Actor.Script1
    ; Output:
    ;   Bank and Frame is uninitialized
    ;   State as Cmd_Flow_End
    ;   Script1_SmallCounter and Script1_BigCounter are uninitialized
    inc hl
    inc hl
    inc hl
    ld a, LOW(Cmd_Flow_End)
    ld [hl+], a
    ld a, HIGH(Cmd_Flow_End)
    ld [hl+], a
    inc hl
    inc hl
    ret


Actor_Init_StateAndScript::
    ; Initializes the AI and position of an Actor, as well as Script0
    ; Inputs:
    ;   hl: Points to an Actor
    ;   [bc]
    ;       dw  .State (AI)
    ;       db  .XTile
    ;       db  .YTile
    ;       dw  .TileAddress
    ;       db  .SpriteBase
    ;       BankAddress  Script
    ; Outputs:
    ;   The inputs are copied over
    ;   XSubtile and YSubtile are set to 8 and 8
    inc hl
    LdHLIBCI_V
    LdHLIBCI_V
    Set8 hl+, $08
    Set8 hl+, $08
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    jp Actor_Init_SetScript0


Actor_SetScript::
    ; Locally updates the Frame address of an Actor's script (bank is fixed)
    ; Arguments:
    ;   [bc] dw  New Frame
    ;   hl - Actor.Script0/1_Frame or hScript.Frame
    ; Outputs:
    ;   Frame = [bc]
    ;   State = Script_Start
    ;   hl = If input was Script0.Frame, hl now points to Script1

    ; Set Frame
    LdHLIBCI_V
    LdHLIBCI_V
    ; Set State
    ld a, LOW(Script_Start)
    ld [hl+], a
    ld [hl], HIGH(Script_Start)
    inc hl
    ; Skip Counters
    inc hl
    inc hl
    ret


Cmd_Actor_HeroFromDoor::
    ; Teleport the Hero to the X and Y coordinates specified by a Cmd_Actor_HeroToDoor
    ; Useful to set the Hero to specific tile when loading a new scene
    ; Also sets wHotspotCurrent to null
    ; Arguments:
    ;   None
    XJump ActorXX_HeroFromDoor


Cmd_Actor_HeroToDoor::
    ; Sets the X and Y door coordinates that can be retrieved by Cmd_Actor_HeroFromDoor
    ; Useful to set the location of the next scene when exiting the current scene
    ; Arguments:
    ;   db  wHero_DoorX
    ;   db  wHero_DoorY
    Script_ReadByte_V [wHero_DoorX]
    Script_ReadByte_V [wHero_DoorY]
    jp Script_Start


Cmd_Actor_HeroToRelativeDoor::
    ; Sets the X and Y door coordinates that can be retrieved by Cmd_Actor_HeroFromDoor
    ; Useful to set the location of the next scene when exiting the current scene and there are multiple available tiles
    ; The coordinates are set as relative offsets from the current position
    ; Arguments:
    ;   db Decrease X by # (Source X)
    ;   db Increase X by # (Dest X)
    ;   db Decrease Y by # (Source Y)
    ;   db Increase Y by # (Dest Y)
    ; Outputs:
    ;   wHero_DoorX = wActor_Hero.XTile - SourceX + DestX
    ;   wHero_DoorY = wActor_Hero.YTile - SourceY + DestY
    Script_ReadByte_V l
    ld a, [wActor_Hero.XTile]
    sub l
    ld l, a
    Script_ReadByteA
    add l
    ld [wHero_DoorX], a

    Script_ReadByte_V l
    ld a, [wActor_Hero.YTile]
    sub l
    ld l, a
    Script_ReadByteA
    add l
    ld [wHero_DoorY], a
    jp Script_Start


Cmd_Actor_ThatActorDrawTile::
    ; Draws a tile at the actor's position with an offset
    ; Arguments:
    ;   db  Actor id
    ;   db  Y offset
    ;   db  X offset
    ;   dw  Tileaddress offset = Width*Yoffset + Xoffset
    ;   db  Coll id
    ;   db  Metatilemap id
    call Actor_GetThatActor
    ; jp Actor_DrawTile
Actor_DrawTile:
    ; X
    ld de, Actor_ENUM_XTile
    add hl, de
    Get8 d, hl+
    ; Y
    Script_ReadByte e
    ld a, [hl+]
    add e
    ld e, a
    Script_ReadByteA
    add d
    ld d, a
    push de

    ; Tile address
    Script_ReadWord de
    DerefHL
    add hl, de
    ; Update Coll map
    SwitchRAMBank BANK(wCollisionMap)
    Script_ReadByteA
    ld [hl], a
    ; Update metamap
    SwitchRAMBank BANK(wMetatilemap)
    Script_ReadByteA
    ld [hl], a

    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start

    ; Update tile if visible
    pop de
    XJump ScrollXX_UpdateTile


Cmd_Actor_ThatActorDrawMaskTile::
    ; Modifies a tile in the wMaskMetatilemap at the actor's position with an offset
    ; Arguments:
    ;   db  Actor id
    ;   dw  Tileaddress offset = Width*Yoffset + Xoffset
    ;   db  Coll id
    ;   db  Metatilemap id
    call Actor_GetThatActor
    ; jp Actor_DrawMaskTile
Actor_DrawMaskTile:
    ; Tile address
    ld de, Actor_ENUM_TileAddress
    add hl, de
    Script_ReadWord de
    DerefHL
    add hl, de
    ; Update mask collmap
    SwitchRAMBank BANK(wMaskCollisionMap)
    Script_ReadByteA
    ld [hl], a
    ; Update mask metamap
    SwitchRAMBank BANK(wMaskMetatilemap)
    Script_ReadByteA
    ld [hl], a
    jp Script_Start


Cmd_Actor_ThatActorInit::
    ; Initializes an actor
    ; Arguments:
    ;   db              Actor id
    ;   dw              State (AI)
    ;   db              XTile
    ;   db              YTile
    ;   dw              TileAddress
    ;   db              SpriteBase
    ;   BankAddress    Script0 
    ;   BankAddress    Interrupt (Talk script or stand-on-tile script)
    ; Outputs:
    ;   Actor initialized but not activated
    ;   XSubtile and YSubtile set to 8
    ;   Script1 set to Null
    call Actor_GetThatActor

    call Actor_Init_StateAndScript
    call Actor_Init_NullScript1
    call Actor_Init_SetInterrupt
    jp Script_Start


Cmd_Actor_ThatActorTeleportToThatActor::
    ; Teleports Actor1 to Actor2
    ; Arguments:
    ;   db      Actor ID1
    ;   db      Actor ID2
    ; Outputs:
    ;   Actor.X/YTile and Actor.TileAddress of Actor1 is changed to that of Actor2
    ;   Actor.X/YSubtile is set to $08

    ; Actor1
    call Actor_GetThatActor
    ld de, Actor_ENUM_XOffset
    add hl, de
    push hl

    ; Actor2
    call Actor_GetThatActor
    ld de, Actor_ENUM_XTile
    add hl, de

    pop de
    ld a, $08
    ld [de], a
    inc de
    ld a, $08
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Script_Start


Cmd_Actor_ThatActorSetAI::
    ; Sets the State of an Actor
    ; Arguments:
    ;   db      Actor ID
    ;   dw      Address
    ; Output:
    ;   Actor.State set to Address (always in bank 1)
    call Actor_GetThatActor
    inc hl
    LdHLIBCI_V
    LdHLIBCI_V
    jp Script_Start


Cmd_Actor_ThatActorSetLoc::
    ; Sets the position of an Actor
    ; Arguments:
    ;   db      Actor ID
    ;   db      XSubtile
    ;   db      YSubtile
    ;   db      XTile
    ;   db      YTile
    ;   dw      TileAddress
    ; Outputs:
    ;   Values above are set for Actor
    call Actor_GetThatActor
    jp Actor_SetLoc


Cmd_Actor_ThatActorSetScript::
    ; For an Actor, sets the BankAddress of Script0
    ; Sets Script1 to Cmd_Flow_End
    ; Arguments:
    ;   db      Actor ID
    ;   BankAddress
    call Actor_GetThatActor
    ld de, Actor_ENUM_Script0_Bank
    add hl, de
    LdHLIBCI_V ;Bank
    call Actor_SetScript ;Address

    ; Script1.State to Cmd_Flow_End
    inc hl
    inc hl
    inc hl
    ld a, LOW(Cmd_Flow_End)
    ld [hl+], a
    ld [hl], HIGH(Cmd_Flow_End)
    jp Script_Start


Cmd_Actor_ThatActorSetSpriteBase::
    ; Sets the SpriteBase of the target Actor
    ; Arguments:
    ;   db      Actor ID
    ;   db      New value of SpriteBase
    call Actor_GetThatActor
    ld de, Actor_ENUM_SpriteBase
    add hl, de
    LdHLIBCI
    jp Script_Start


Cmd_Actor_ThatActorStart::
    ; Activates an Actor
    ; If Actor is already activated, it will also cancel a disable command before the actor is actually disabled
    ; This will silently fail if there's already $10 actors activated
    ; Arguments:
    ;   db  Actor ID
    ; Outputs:
    ;   Actor_FLAGS_BIT_DELETE reset
    ;   If Actor was not already enabled, ActorListXX_AddActor is run to add the actor to the wActorList_Table
    ;       and Actor_FLAGS_BIT_ACTIVE is set
    call Actor_GetThatActor
    bit Actor_FLAGS_BIT_ACTIVE, [hl]
    jr nz, .ActorAlreadyEnabled
        push bc
        ld b, h
        ld c, l
        XCall ActorListXX_AddActor
        SwitchROMBank [hScript.Bank]
        pop bc
    .ActorAlreadyEnabled:
    res Actor_FLAGS_BIT_DELETE, [hl]
    jp Script_Start


Cmd_Actor_ThatActorDelete::
    ; Deletes the target Actor
    ; Arguments:
    ;   db  Actor ID
    call Actor_GetThatActor
    set Actor_FLAGS_BIT_DELETE, [hl]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret


Cmd_Actor_ThisActorDrawTile::
    ; Draws a tile at the actor's position with an offset
    ; Arguments:
    ;   db  Y offset
    ;   db  X offset
    ;   dw  Tileaddress offset = Width*Yoffset + Xoffset
    ;   db  Coll id
    ;   db  Metatilemap id
    ld hl, hActor
    jp Actor_DrawTile


Cmd_Actor_ThisActorDrawMaskTile::
    ; Modifies a tile in the wMaskMetatilemap at the actor's position with an offset
    ; Arguments:
    ;   dw  Tileaddress offset = Width*Yoffset + Xoffset
    ;   db  Coll id
    ;   db  Metatilemap id
    ld hl, hActor
    jp Actor_DrawMaskTile


Cmd_Actor_ThisActorTeleportToThatActor::
    ; Teleports the current Actor to the location of the target actor
    ; Arguments:
    ;   db      Actor index id
    ; Outputs:
    ;   hActor.X/YTile and hActor.TileAddress of current Actor is changed to that of target Actor
    ;   hActor.X/YSubtile is set to $08
    call Actor_GetThatActor
    ld de, Actor_ENUM_XTile
    add hl, de
    ld a, $08
    ldh [hActor.XOffset], a
    ld a, $08
    ldh [hActor.YOffset], a
    ld a, [hl+]
    ldh [hActor.XTile], a
    ld a, [hl+]
    ldh [hActor.YTile], a
    ld a, [hl+]
    ldh [hActor.TileAddress], a
    ld a, [hl+]
    ldh [hActor.TileAddress+1], a
    jp Script_Start


Cmd_Actor_ThisActorNewState::
    ; Only for wActor_Hero - Stores a new state for the actor to load for the next frame
    ; Arguments:
    ;   dw  NewState (AI)
    Script_ReadWord de
    Set16 wActor_HeroNewState, de
    jp Script_Start


Cmd_Actor_ThisActorRaindrop::
    ; Randomly select tiles on the screen until a tile meets the following criteria:
    ;   a) Collision ID of the selected tile matches the argument
    ;   b) The selected tile is not where the hero is currently located
    ; Once a tile is found, continue the script
    ; Used for lava bubbles, swirl to teleport to mush hyren, battle sparkles
    ; Arguments:
    ;   db  Collision ID
    .Init:
        Set16FF hActor.State, AI_Raindrop
        Set16FF hScript.State, .RaindropLocate
        ret
    .RaindropLocate:
        XJump ActorXX_RaindropLocate

    .CheckValidRaindropLocation::
        ; First, assert that the selected tile is not the hero's tile, or else .Failed
        FGet16 de, wActor_Hero.TileAddress
        Get16FF hl, hActor.TileAddress
        ld a, l
        cp e
        jr nz, .DifferentTileAddress
        ld a, h
        cp d
        jr z, .Failed
        .DifferentTileAddress:
            ; Second, make sure the selected tile's collision ID matches the input collision ID, or else .Failed
            SwitchRAMBank BANK(wCollisionMap)
            ld e, [hl]
            Script_ReadByteA
            cp e
            jr nz, .Failed
            .Success:
                Set16 hScript.Frame, bc
                Set16FF hScript.State, Script_Start
                Set16FF hActor.State, AI_Anim
                ret
        .Failed:
            Set16FF hScript.State, Cmd_Actor_ThisActorRaindrop
            ret


Cmd_Actor_RestoreActorState::
    ; Restores the Actor's state after it was saved
    ; The Actor is saved when Tony tries to talk to the Actor, so that the Actor
    ; can go back to doing exactly what it was doing before Tony tried to talk to it
    ; The hero also gets control again so he can move
    
    ; Although it is originally known as ThisActorRestoreState, technically the actor
    ; that was saved will be restored, be it This actor or a different actor
    Set8 wActorSave_Flags, ActorSave_Flag_REQUEST_RESTORE
    Set16_M wActor_Hero.State, AI_Hero_Start
    jp Cmd_Flow_End


Cmd_Actor_ThisActorSetAI::
    ; Sets the State AI of the current Object
    ; Arguments:
    ;   dw      Address
    ; Output:
    ;   hActor.State set to Address (always in bank 1)
    Script_ReadByte_V [hActor.State]
    Script_ReadByte_V [hActor.State+1]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret


Cmd_Actor_ThisActorSetAnimSingle::
    ; Sets Script1 (with an animation)
    ; Arguments:
    ;   BankAddress - Script1 to run with animation
    Get16 hl, hActor_CurrentAddress
    ld de, Actor_ENUM_Script1_Bank
    add hl, de
    LdHLIBCI_V ; Bank
    call Actor_SetScript ; Address
    jp Script_Start


Cmd_Actor_ThisActorSetAnimDelay::
    ; Sequentially sets Script1 with animations
    ;
    ; Arguments:
    ;   {
    ;       BankAddress - Script1 to run with animation
    ;       db - Number of frames to run the animation
    ;   }
    ;   db $00 - End-of-command
    .Init:
        Get16 hl, hActor_CurrentAddress
        ld de, Actor_ENUM_Script1_Bank
        add hl, de
        Script_ReadByteA
        and a
        jp z, Script_Start

        ; Not End of command, setup Script1
        ld [hl+], a ;Bank
        call Actor_SetScript
        ; Immediately go to the next command if frames is 0
        Script_ReadByteA
        and a
        jr z, Cmd_Actor_ThisActorSetAnimDelay

        .NonZeroFrames:
            ldh [hScript.SmallCounter], a
            Set16 hScript.Frame, bc
            Set16_M hScript.State, .MainLoop

    .MainLoop:
        ; Decrement counter by 1 and continue looping if nz
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .Finally
        ldh [hScript.SmallCounter], a
        ret

    .Finally:
        ; Read the next entry
        Set16_M hScript.State, Cmd_Actor_ThisActorSetAnimDelay
        ret


Cmd_Actor_ThisActorSetAnimScroll::
    ; Sequentially sets Script1 with animations
    ; Additionally scrolls the tilemap during the animations
    ;
    ; Arguments:
    ;   {
    ;       BankAddress - Script1 to run with animation
    ;       db - Number of frames to run the animation and scroll the tilemap
    ;       db - wTilemap_XDelta per frame
    ;       db - wTilemap_YDelta per frame
    ;   }
    ;   db $00 - End-of-command
    ;
    .Init:
        ; Check for End-of-command
        Get16 hl, hActor_CurrentAddress
        ld de, Actor_ENUM_Script1_Bank
        add hl, de
        Script_ReadByteA
        and a
        jp z, Script_Start

        ; Not End of command, setup Script1
        ld [hl+], a ;Bank
        call Actor_SetScript
        Script_ReadByteA
        and a
        jp nz, .NonZeroFrames

        .ZeroFrames:
            ; Immediately go to the next command if frames is 0
            inc bc
            inc bc
            jr Cmd_Actor_ThisActorSetAnimScroll

        .NonZeroFrames:
            ldh [hScript.SmallCounter], a
            Set16 hScript.Frame, bc
            Set16_M hScript.State, .MainLoop
    .MainLoop:
        ; wTilemap_XDelta
        Script_ReadByte l
        ld a, [wTilemap_XDelta]
        add l
        ld [wTilemap_XDelta], a

        ; wTilemap_YDelta
        Script_ReadByte l
        ld a, [wTilemap_YDelta]
        add l
        ld [wTilemap_YDelta], a

        ; Decrement counter by 1 and continue looping if nz
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .Finally
        ldh [hScript.SmallCounter], a
        ret

    .Finally:
        ; Read the next entry
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Cmd_Actor_ThisActorSetAnimScroll
        ret


Cmd_Actor_ThisActorSetLoc::
    ; Sets the position of the current Actor
    ; Arguments:
    ;   db      XSubtile
    ;   db      YSubtile
    ;   db      XTile
    ;   db      YTile
    ;   dw      TileAddress
    ; Outputs:
    ;   Values above are set for current Actor
    ld hl, hActor
    jp Actor_SetLoc


Cmd_Actor_ThisActorSetSpriteBase::
    ; Sets the SpriteBase of the current Actor
    ; Arguments:
    ;   db      New value of SpriteBase
    Script_ReadByteA
    ldh [hActor.SpriteBase], a
    jp Script_Start


Cmd_Actor_ThisActorDelete::
    ; Deletes the current actor
    ; Arguments:
    ;   None
    ldh a, [hActor.Flags]
    set Actor_FLAGS_BIT_DELETE, a
    ldh [hActor.Flags], a
    Set16_M hScript.State, Script_Start
    ret


Cmd_Actor_ThisActorWaitTile::
    ; Loop and wait until the actor is standing on the specified pattern id
    ; Arguments:
    ;   db  Pattern ID
    ; Outputs:
    ;   If [hActor.TileAddress] == PatternID, read the next command, or else try again next frame
    Get16 hl, hActor.TileAddress
    SwitchRAMBank BANK(wMetatilemap)
    ld e, [hl]
    ld a, [bc]
    cp e
    ret nz
        inc bc
        jp Script_Start


Actor_GetThatActor::
    ; Loads the Nth address in Actor00_Table and saves it to hl
    ; Input:
    ;   db - index id of the desired actor 0 = Hero, 1 = Save, 2 = 00, 3 = 01, etc
    ; Output:
    ;   hl = reference to the Actor's WRAM structure
    Script_ReadByteA
    add a
    ld e, a
    ld d, $00
    ld hl, Actor00_Table
    add hl, de
    DerefHL
    ret


Actor_SetLoc::
    ; Sets the position of an actor
    ; Arguments:
    ;   hl      Points to an actor structure (hActor or a WRAM actor struct)
    ;   db      XSubtile
    ;   db      YSubtile
    ;   db      XTile
    ;   db      YTile
    ;   dw      TileAddress
    ; Outputs:
    ;   Values above are set for Actor
    ld de, Actor_ENUM_XOffset
    add hl, de
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start
