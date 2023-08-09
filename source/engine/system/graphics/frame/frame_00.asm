Frame_ClearAll::
    ; Erases the OAM as well as the wFrame_OAM (OAM copy)
    ; Achieves this by setting the y coordinates of all 40 sprites to $FF for the Buffer and real OAM
    ld de, $0004

    ld a, 40
    ld b, a
    ld hl, wFrame_OAM
    ld a, $FF
    .LoopBufferSprite:
        ld [hl], a
        add hl, de
        dec b
        jr nz, .LoopBufferSprite

    ld a, 40
    ld b, a
    ld hl, _OAMRAM
    ld a, $FF
    .LoopOAMSprite:
        ld [hl], a
        add hl, de
        dec b
        jr nz, .LoopOAMSprite
    ret

    ; $0583
Frame_Draw::
    ; Draws an actor
    ; First, it disables the actor by setting the ScreenY to $FF
    ; Then, it checks if the actor is on the screen or near the edge of the screen
    ;   If it is not, it quits without drawing the actor
    ; Otherwise, it calculates the actor's position relative to the screen,
    ;   then it does Frame_DrawLoop, which takes an actor's sprite data
    ;   and puts it in wFrame_OAM
    ;
    ; Inputs:
    ;   hl = Pointer to sprite data
    ;       A series of Y, X, Tile, Attr bytes, terminated by a single $80 byte
    ;   hActor.XTile, hActor.XOffset
    ;   hActor.YTile, hActor.YOffset
    ;   wSCX, wSCY: Position of the screen
    ;   hActor.SpriteBase
    ; Outputs:
    ;   The sprite data in hl is added to wFrame_OAM. Y, X and Tile are offset by
    ;       YTile, hActor.YOffset, wSCY,
    ;       XTile, hActor.XOffset, wSCX, and
    ;       hActor.SpriteBase respectively.
    ldh a, [hActor_ScreenY]
    ldh [hActor_ScreenYPrev], a
    Set8FF hActor_ScreenY, $FF

    ;Frame_CullX
    ; If the actor is out of bounds X-wise, don't bother even trying to draw the actor
    ld a, [wTilemap_XTile]
    add -$02
    ld c, a
    ld a, [hActor.XTile]
    ld d, a
    sub c
    bit 7, a
    ret nz ; Do not draw frame if Actor is 3+ tiles less than wTilemap_XTile
    add -($0A+$02+$02)
    bit 7, a
    ret z ; Do not draw frame if Actor is 3+ tiles more than wTilemap_XTile + ScreenWidth(i.e. 0A)
    ; d <- hActor.XTile

    ;Frame_CullY
    ; If the actor is out of bounds Y-wise, don't bother even trying to draw the actor
    ld a, [wTilemap_YTile]
    add -$02
    ld c, a
    ld a, [hActor.YTile]
    ld e, a
    sub c
    bit 7, a
    ret nz ; Do not draw frame if Actor is 3+ tiles less than wTilemap_YTile
    add -($09+$02+$02)
    bit 7, a
    ret z ; Do not draw frame if Actor is 3+ tiles more than wTilemap_YTile + ScreenHeight(i.e. 9)
    ; e <- hActor.YTile

    ;Frame_ScreenX
    ; Calculate the position of the sprite relative to the screen
    Get8 c, wSCX
    ld a, d ; hActor.XTile
    add a
    add a
    add a
    add a
    ld b, $08 ;SCX vs OAM x-position has an offset of 8
    add b
    ld b, a
    ld a, [hActor.XOffset]
    add b
    sub c
    ld d, a
    ldh [hActor_ScreenX], a  ; <- d <- hActor.XTile*$10 + 8 + hActor.XOffset - wSCX

    ;Frame_ScreenY
    ; Calculate the position of the sprite relative to the screen
    Get8 c, wSCY
    ld a, e ; hActor.YTile
    add a
    add a
    add a
    add a
    ld b, $10 ;SCY vs OAM y-position has an offset of $10
    add b
    ld b, a
    ld a, [hActor.YOffset]
    add b
    sub c
    ld e, a
    ldh [hActor_ScreenY], a  ; <- e <- hActor.YTile*$10 + $10 + hActor.YOffset - wSCYX
    ;jp Frame_DrawLoop


Frame_DrawLoop::
    ; Loops through the frame data of an actor
    ; Adds each sprite from the frame data to wFrame_OAM (OAM buffer)
    ; wFrame_OAMCursor is updated to point to the next empty spot in wFrame_OAM, the OAM buffer
    ;
    ; Inputs:
    ;   hl = frame data
    ;       {Y-offset, X-offset, Tileid, Attributes} * N
    ;       SPRITE_END (end of data)
    ;   d = OAM x-position
    ;   e = OAM y-position

    ld b, HIGH(wFrame_OAM)
    Get8 c, wFrame_OAMCursor

    .DrawLoop:
        ld a, [hl+] ;Sprite y-offset
        cp SPRITE_END   ;Magic Number to end drawing
        jr z, .Ret
        add e ; hActor_ScreenY + Sprite y-offset
        ld [bc], a
        inc c

        ld a, [hl+] ; Sprite x-offset
        add d ; hActor_ScreenX + Sprite x-offset
        ld [bc], a
        inc c

        ldh a, [hActor.SpriteBase]
        add [hl] ;Sprite tileid
        inc hl
        ld [bc], a  ; hActor.SpriteBase + Sprite tileid
        inc c

        ld a, [hl+] ;Sprite attributes
        ld [bc], a
        inc c

        jr .DrawLoop

    .Ret:
    Set8 wFrame_OAMCursor, c
    ret


Frame_DrawChr::
    ; Adds a sprite to wFrame_OAM, the OAM buffer
    ; wFrame_OAMCursor is updated to point to the next empty spot in wFrame_OAM (i.e. +$04)
    ; Inputs:
    ;   c = y position
    ;   b = x position
    ;   d = tile number
    ;   e = attribute info
    ; Outputs:
    ;   wFrame_OAMCursor increased by 4 (points to the new next available sprite)
    ld h, HIGH(wFrame_OAM)
    Get8 l, wFrame_OAMCursor
    Set8 hl+, c ;y-position
    Set8 hl+, b ;x-position
    Set8 hl+, d ;tileid
    Set8 hl+, e ;attributes
    Set8 wFrame_OAMCursor, l
    ret


Frame_Overlay::
    ; Draws an actor at an absolute position relative to the screen
    ; (i.e. static like an overlay)
    ;
    ; Inputs:
    ;   hl = Pointer to sprite data
    ;       A series of Y, X, Tile, Attr bytes, terminated by a single $80 byte
    ;   hActor.XTile, hActor.XOffset
    ;   hActor.YTile, hActor.YOffset
    ;   hActor.SpriteBase
    ; Outputs:
    ;   The sprite data in hl is added to wFrame_OAM. Y, X and Tile are offset by
    ;       YTile, hActor.YOffset,
    ;       XTile, hActor.XOffset, and
    ;       hActor.SpriteBase respectively.
    ldh a, [hActor_ScreenY]
    ldh [hActor_ScreenYPrev], a
    Set8FF hActor_ScreenY, $FF
    ld a, [hActor.XTile]
    ld d, a
    ldh [hActor_ScreenX], a
    ld a, [hActor.YTile]
    ld e, a
    jp Frame_DrawLoop


Frame_Ready::
    ; Cleans wFrame_OAM (OAM buffer) to be ready for copying
    ; It disables unused sprites from the previous frame
    ; For example, if last frame there were 5 sprites and now there are 3 sprites
    ;   it will disable the 4th and 5th sprite.
    ; The other way around, nothing needs to be done since the old sprites are overwritten
    ; Inputs:
    ;   wFrame_OAMCursor = LOW(Address) of the first unused sprite (i.e. sprites*4)
    ;   wFrame_OAMTop = The same as wFrame_OAMCursor but for the previous frame
    Get8 b, wFrame_OAMTop ;OAM used in the previous frame
    ld a, [wFrame_OAMCursor] ;OAM used for the upcoming frame
    sub b
    jr nc, .OAMClean ;If there are more sprites for this frame, we don't need to
                     ;erase the previous frame data since it will be overwritten
    NegativeA
    srl a
    srl a
    ld e, a ; = (PreviousFrame-CurrentFrame)/4 -> Difference in the number of sprites
    ld bc, $0004
    ld h, HIGH(wFrame_OAM)
    Get8 l, wFrame_OAMCursor
    ld a, $FF
    .DisableSpriteLoop:
        ld [hl], a
        add hl, bc
        dec e
        jr nz, .DisableSpriteLoop ;Disable all the extra sprites that aren't used anymore
    .OAMClean:
    Mov8 wFrame_OAMTop, wFrame_OAMCursor ; Shift wFrame_OAMCursor to wFrame_OAMTop and reset wFrame_OAMCursor
    Set8 wFrame_OAMCursor, LOW(wFrame_OAM) ;Since the OAM is $100 bytes long, this must always be $00
    ret