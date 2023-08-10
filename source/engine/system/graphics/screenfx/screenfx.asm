
    ; $55E5
Graphics_ScreenFX_Swirl_VBlank::
    ; Copy the 4 tiles (tileid + attr) at the indicated destination
    ; Inputs:
    ;   wGraphics_ScreenFX_DestAddr - address of the 4 tiles
    ;   wGraphics_ScreenFX_TileID - tildid
    ;   wGraphics_ScreenFX_TileAttr - tile attribute

    ; TILEIDS
    xor a
    ld [rVBK], a

    ; TopLeft
    ld hl, wGraphics_ScreenFX_DestAddr.TopLeft
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileID
    pop hl

    ; TopRight
    inc hl
    inc hl
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileID
    pop hl

    ; BottomLeft
    inc hl
    inc hl
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileID
    pop hl

    ; BottomRight
    inc hl
    inc hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileID

    ; ATTRIBUTES
    Set8 rVBK, $01
    ld hl, wGraphics_ScreenFX_DestAddr.TopLeft

    ; TopLeft
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileAttr
    pop hl

    ; TopRight
    inc hl
    inc hl
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileAttr
    pop hl

    ; BottomLeft
    inc hl
    inc hl
    push hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileAttr
    pop hl

    ; BottomRight
    inc hl
    inc hl
    DerefHL
    Mov8 hl, wGraphics_ScreenFX_TileAttr

    ; End of VBlank
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $564F
Graphics_ScreenFX_ScreenAddressDeltaX:
    ; Take the tilemap address, and displace the X position by c
    ; Wrap the values so that the Y position doesn't change
    ; Inputs:
    ;   hl = tilemap address
    ;   c = delta (can be positive or negative)
    ; Outputs:
    ;   hl = new address

    ; A given row's X value has a range of %00000 ($00) to %11111 ($1F)
    ; Therefore, we keep the upper 11 bits constant and wrap the bottom 5 bits
    ;                           %11111111 11100000       %00000000 00011111
    ;                              h          l              h         l

    ; Wrap around the bottom 5 bits of register l
    ld a, l
    add c
    and %00011111
    ld e, a

    ; Keep the upper 3 bits of l constant
    ; h doesn't change
    ld a, l
    and %11100000
    add e
    ld l, a
    ret

    ; $565A
Graphics_ScreenFX_ScreenAddressDeltaY:
    ; Take the tilemap address, and displace the Y position by c
    ; Wrap the values so that the X position doesn't change
    ; Inputs:
    ;   hl = tilemap address
    ;   c = delta (can be positive or negative)
    ; Outputs:
    ;   hl = new address

    ; For a deltaY of 1, the corresponding binary is %100000
    ; Y ranges from 0 (%00 000XXXXX) to $1F (%11 111XXXXX)
    ; Therefore, the lower 5 bits will always stay constant
    ; The middle 5 bits can vary
    ; We need to keep the upper 6 bits constant (we know the tilemap will always be $9800)
    ; %10011YYY YYYXXXXX
    ;      h       l
    ;  $98-$9B

    ; c *= $20 (the offset is $20 per tile)
    ld e, c
    xor a
    ld d, a
    Sla16 de, 5

    ; Don't modify the lower 8 bits of register l
    ; Keep the lower 2 bits of register h
    ; Keep the upper 6 bits of h constant
    add hl, de
    ld a, h
    and %00000011
    add HIGH($9800) ; Set the upper 6 bits to be constant
    ld h, a
    ret

    ; $566E
Graphics_ScreenFX_Swirl_SetupVBlank:
    ; Given a tilemap address hl, setup the addresses for the vblank function
    ; and then call the vblank function
    ;
    ; Inputs:
    ;   hl = tilemap address of the topleft corner of the 2x2 tilemap
    ; Outputs:
    ;   wGraphics_ScreenFX_DestAddr.TopLeft = hl
    ;   wGraphics_ScreenFX_DestAddr.TopRight = hl + 1
    ;   wGraphics_ScreenFX_DestAddr.BottomLeft = hl + SCRN_VX_B
    ;   wGraphics_ScreenFX_DestAddr.BottomRight = hl + SCRN_VX_B + 1
    ;   wVBlank_Func/wVBlank_Bank <- Graphics_ScreenFX_Swirl_VBlank

    ; Setup wGraphics_ScreenFX_DestAddr
    push hl
    ld c, $01
    Set16 wGraphics_ScreenFX_DestAddr.TopLeft, hl
    call Graphics_ScreenFX_ScreenAddressDeltaX
    Set16 wGraphics_ScreenFX_DestAddr.TopRight, hl
    pop hl
    call Graphics_ScreenFX_ScreenAddressDeltaY
    Set16 wGraphics_ScreenFX_DestAddr.BottomLeft, hl
    call Graphics_ScreenFX_ScreenAddressDeltaX
    Set16 wGraphics_ScreenFX_DestAddr.BottomRight, hl

    ; Setup VBlank function
    Set8 wVBlank_Bank, BANK(Graphics_ScreenFX_Swirl_VBlank)
    Set16_M wVBlank_Func, Graphics_ScreenFX_Swirl_VBlank

    ; Do VBlank
    call Sound_SetupSoundVB
    call System_DoVFunc
    ret

    ; $56B1
Graphics_ScreenFX_Swirl_MoveRight:
    ; Move wGraphics_ScreenFX_DestAddr by 1 block (2x2) right
    ; Then draw the 2x2 white tiles
    FGet16 hl, wGraphics_ScreenFX_DestAddr.TopRight
    ld c, 1
    call Graphics_ScreenFX_ScreenAddressDeltaX
    call Graphics_ScreenFX_Swirl_SetupVBlank
    ret

    ; $56C0
Graphics_ScreenFX_Swirl_MoveLeft:
    ; Move wGraphics_ScreenFX_DestAddr by 1 block (2x2) left
    ; Then draw the 2x2 white tiles
    FGet16 hl, wGraphics_ScreenFX_DestAddr.TopLeft
    ld c, -2
    call Graphics_ScreenFX_ScreenAddressDeltaX
    call Graphics_ScreenFX_Swirl_SetupVBlank
    ret

    ; $56CF
Graphics_ScreenFX_Swirl_MoveDown:
    ; Move wGraphics_ScreenFX_DestAddr by 1 block (2x2) down
    ; Then draw the 2x2 white tiles
    FGet16 hl, wGraphics_ScreenFX_DestAddr.BottomLeft
    ld c, 1
    call Graphics_ScreenFX_ScreenAddressDeltaY
    call Graphics_ScreenFX_Swirl_SetupVBlank
    ret

    ; $56DE
Graphics_ScreenFX_Swirl_MoveUp:
    ; Move wGraphics_ScreenFX_DestAddr by 1 block (2x2) up
    ; Then draw the 2x2 white tiles
    FGet16 hl, wGraphics_ScreenFX_DestAddr.TopLeft
    ld c, -2
    call Graphics_ScreenFX_ScreenAddressDeltaY
    call Graphics_ScreenFX_Swirl_SetupVBlank
    ret

    ; $56ED
Graphics_ScreenFX_Swirl_Do::
    ; Do a white clockwise swirl - indicates the start of a battle
    ; Every frame, copy 4 white tiles (2x2) in a swirl pattern

    ; Inputs:
    ;   wTilemap_DestAddr = topleft corner of the visible screen. Starting point for the swirl

    ; Swirl: From X to X
    ; X>>>>>>>>>v
    ; >>>>>>>>>vv
    ; ^>>>>>>>vvv
    ; ^^>>>>>vvvv
    ; ^^^>>>vvvvv
    ; ^^^^X<<vvvv
    ; ^^^^<<<<vvv
    ; ^^^<<<<<<vv
    ; ^^<<<<<<<<v
    ; ^<<<<<<<<<<

    ; Setup the parameters of the tile we want to copy (white tile)
    Set8 wGraphics_ScreenFX_TileID, GRAPHICS_SCREENFX_TILEID
    Set8 wGraphics_ScreenFX_TileAttr, GRAPHICS_SCREENFX_TILEATTR

    ; Get the topleft corner of the visible tilemap
    FGet16 hl, wTilemap_DestAddr
    ; Draw the white tile here
    call Graphics_ScreenFX_Swirl_SetupVBlank
    ; Now move in a clockwise circle
    REPT 10
        call Graphics_ScreenFX_Swirl_MoveRight
    ENDR
    REPT 9
        call Graphics_ScreenFX_Swirl_MoveDown
    ENDR
    REPT 10
        call Graphics_ScreenFX_Swirl_MoveLeft
    ENDR
    REPT 8
        call Graphics_ScreenFX_Swirl_MoveUp
    ENDR
    REPT 9
        call Graphics_ScreenFX_Swirl_MoveRight
    ENDR
    REPT 7
        call Graphics_ScreenFX_Swirl_MoveDown
    ENDR
    REPT 8
        call Graphics_ScreenFX_Swirl_MoveLeft
    ENDR
    REPT 6
        call Graphics_ScreenFX_Swirl_MoveUp
    ENDR
    REPT 7
        call Graphics_ScreenFX_Swirl_MoveRight
    ENDR
    REPT 5
        call Graphics_ScreenFX_Swirl_MoveDown
    ENDR
    REPT 6
        call Graphics_ScreenFX_Swirl_MoveLeft
    ENDR
    REPT 4
        call Graphics_ScreenFX_Swirl_MoveUp
    ENDR
    REPT 5
        call Graphics_ScreenFX_Swirl_MoveRight
    ENDR
    REPT 3
        call Graphics_ScreenFX_Swirl_MoveDown
    ENDR
    REPT 4
        call Graphics_ScreenFX_Swirl_MoveLeft
    ENDR
    REPT 2
        call Graphics_ScreenFX_Swirl_MoveUp
    ENDR
    REPT 3
        call Graphics_ScreenFX_Swirl_MoveRight
    ENDR
    REPT 1
        call Graphics_ScreenFX_Swirl_MoveDown
    ENDR
    REPT 2
        call Graphics_ScreenFX_Swirl_MoveLeft
    ENDR
    jp Cmd_System_SceneNew

    ; $584A
Graphics_ScreenFX_Do::
    ; Do a Graphics_ScreenFX
    ; Todo - I feel like there is only one possible input - Graphics_ScreenFX_Swirl_Do - to verify

    ; Clear out the currently pending vblank function
    call System_DoVFunc

    ; Do the indicated Graphics_ScreenFX
    FGet16 hl, wGraphics_ScreenFX_Function
    jp hl