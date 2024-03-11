ActorXX_HeroFromDoor::
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

    ; Disable hotspot
    Set8 wHotspotCurrent, HOTSPOT_NULL

    Set16_M hScript.State, Script_Start
    ret

ActorXX_RaindropLocate::
    ; Randomly select a tile in a 9 x 10 box of the visible screen
    ; Next frame, the actor will call Actor_CheckValidRaindropLocation to check if the selected tile is accepted

    ; hl = YOffset = AI_Raindrop_RandomTable.Row + 3*Rand(16)
    ld a, [rDIV]
    and $0F
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    ld hl, AI_Raindrop_RandomTable.Row
    add hl, bc

    ; hActor.YTile = wTilemap_YTile + YOffset(0-8)
    Get8 b, hl+
    ld a, [wTilemap_YTile]
    add b
    ldh [hActor.YTile], a

    ; de= YPad
    DerefHL ; Deref wTilemap_YPadTable + 2*YOffset
    ld a, [hl+]
    ld d, [hl]
    ld e, a

    ; hl = XOffset = AI_Raindrop_RandomTable.Col + Rand(16)
    ld a, [rDIV]
    swap a
    and $0F
    ld c, a
    ld b, $00
    ld hl, AI_Raindrop_RandomTable.Col
    add hl, bc

    ; hActor.XTile = hActor.XTile + Offset(0-9)
    ld b, [hl]
    ld a, [wTilemap_XTile]
    add b
    ldh [hActor.XTile], a

    ; hl = YPad + XOffset + tilemap source
    ld l, b
    ld h, $00
    add hl, de
    Get16 de, wTilemap_Source
    add hl, de

    Set16 hActor.TileAddress, hl
    Set16FF hScript.State, Cmd_Actor_ThisActorRaindrop.CheckValidRaindropLocation
    ret