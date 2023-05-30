
    ; $0000
INCLUDE "source/main/vectors_00.asm"

    ; $0100
INCLUDE "source/main/header_00.asm"

SECTION "ROM Bank $000", ROM0[$0150]
    ; source/ROM/bank00.s -> source/main/boot.s

    ; $0150
INCLUDE "source/main/boot_00.asm"

    ; source/ROM/bank00.s -> source/main/gameloop.s
    ; source/ROM/bank00.s -> source/main/gameloop.s -> source/main/notcgb.s

    ; $01D3
INCLUDE "source/main/notcgb_00.asm"

    ; $02E6
Game_Loop::
    ; Master game loop which controls the whole program
    ldh a, [hTicker]
    inc a
    ldh [hTicker], a
    ld a, [wCntDown]
    bit button_BIT_START, a    ;Start button
    jr z, .SkipMainMenu
        XCall Menu_MainMenu_Open ;Opens Tony's Main Menu
    .SkipMainMenu:
    call System_UpdateGame
    jp Game_Loop

    ; source/ROM/bank00.s -> source/engine/system/system.s


    ; actor section
    ; TODO
    ; $0303
Actor_Table::
    ; All these are spaced apart in order by Actor_SIZE
    ; 50 entries total
    dw wActor_Hero
    dw wActor_Save ; Temporary slot used to store/restore an actor
    dw wActor_00
    dw wActor_01
    dw wActor_02
    dw wActor_03
    dw wActor_04
    dw wActor_05
    dw wActor_06
    dw wActor_07
    dw wActor_08
    dw wActor_09
    dw wActor_Cursor
    dw wActor_0B
    dw wActor_0C
    dw wActor_0D
    dw wActor_0E
    dw wActor_0F
    dw wActor_10
    dw wActor_11
    dw wActor_12
    dw wActor_13
    dw wActor_14
    dw wActor_15
    dw wActor_16
    dw wActor_17
    dw wActor_18
    dw wActor_19
    dw wActor_1A
    dw wActor_1B
    dw wActor_1C
    dw wActor_1D
    dw wActor_1E
    dw wActor_1F
    dw wActor_20
    dw wActor_21
    dw wActor_22
    dw wActor_23
    dw wActor_24
    dw wActor_25
    dw wActor_26
    dw wActor_27
    dw wActor_28
    dw wActor_29
    dw wActor_2A
    dw wActor_2B
    dw wActor_2C
    dw wActor_2D
    dw wActor_2E
    dw wActor_2F

    ; source/ROM/bank00.s -> source/engine/system/system.s -> source/engine/system/math/math.s

    ; $0367
Math_CalcPercent::
    ; Calculates a binary percentage (/32) (rounded down)
    ; This function produces unreliable results if the Divisor is smaller than the Dividend
    ;   (sometimes the result is 32, sometimes the result is the real >32 value)
    ; This function overflows beyond 8191 (the function was intended for 0-999)
    ; Inputs:
    ;   bc = Divisor/Max (0-8191)
    ;   de = Dividend/Current (0-8191)
    ; Output:
    ;   [wPercentCount] = a = (0 = 0%, 32 = 100%) = de/bc
    xor a
    ld h, a
    ld l, a
    ld [wPercentCount], a

    ; Step 1: Compare if Num is 0 or Max
        ld a, e
        and a
        jr z, .CheckZero ;e is zero, so check if d is zero

    .CheckLower:
        cp c
        jr c, .StartCalc ;c > e

        ld a, d
        cp b
        jr c, .StartCalc ;b > d

        Set8 wPercentCount, 32 ; Return max if bc == de, but this check can fail if
        ret                   ; de > bc (e.g. bc = $280, de = $301, or bc = $300, de = $400)

    .CheckZero:
        cp d
        ret z ;Ret wPercentCount = a = 0 if d and e are both 0

    ; Step 2: Calculate the binary percentage
    ; Essentially, multiply the dividend by 32, then see how many times the divisor
    ;  fits into dividend*32.
    .StartCalc:
        srl b
        rr c    ;divisor//=2

        sla e
        rl d
        sla e
        rl d
        sla e
        rl d
        sla e
        rl d   ;dividend*=16   (net result is dividend is 32x larger than divisor relative to each other)

        add hl, bc  ; Put one divisor in dividend*32.
    .Loop:
        ld a, h ;Check if hl < de
        cp d
        jr nz, .Compare ;If h != d, then check h < d
            ld a, l
            cp e            ;If h == d, then check l < e
        .Compare:
        jr nc, .EndLoop ;If hl < de, then the last divisor fit into dividend*32

        add hl, bc  ; Put one more divisor in dividend*32.
        ld a, [wPercentCount]
        inc a       ; Increment by 1
        ld [wPercentCount], a
        jr .Loop

    .EndLoop:
        ld a, [wPercentCount]
        ret

    ; $03AB
Math_CalcSqrRoot::
    ; Input:
    ;   c = 8-bit number to square root
    ; Output:
    ;   a = The square root, rounded. The rounding mechanism is not very clear but in general,
    ;       if the result < X.4, round down, or else round up
    ;
    ;     0 -   0 ->  0
    ;     1 -   1 ->  1
    ;     2 -   4 ->  2
    ;     5 -  10 ->  3
    ;    11 -  18 ->  4
    ;    19 -  28 ->  5
    ;    29 -  40 ->  6
    ;    41 -  54 ->  7
    ;    55 -  70 ->  8
    ;    71 -  88 ->  9
    ;    89 - 108 -> 10
    ;   109 - 130 -> 11
    ;   131 - 154 -> 12
    ;   155 - 180 -> 13
    ;   181 - 207 -> 14
    ;   208 - 237 -> 15
    ;   238 - 255 -> 16
    ; TODO - is this function unused?
    ; COMMENT - This function appears to be unused
    .Ret00:
        ld a, c
        and a
        ret z
    .MidPointOptimization:
        cp 41
        jr nc, .Ret07
    .Ret01:
        cp 2
        jr nc, .Ret02
        ld a, 1
        ret
    .Ret02:
        cp 5
        jr nc, .Ret03
        ld a, 2
        ret
    .Ret03:
        cp 11
        jr nc, .Ret04
        ld a, 3
        ret
    .Ret04:
        cp 19
        jr nc, .Ret05
        ld a, 4
        ret
    .Ret05:
        cp 29
        jr nc, .Ret06
        ld a, 5
        ret
    .Ret06:
        ;cp 41          ;Midpoint optimization eliminates this check
        ;jr nc, .Ret07
        ld a, 6
        ret
    .Ret07:
        cp 55
        jr nc, .Ret08
        ld a, 7
        ret
    .Ret08:
        cp 71
        jr nc, .Ret09
        ld a, 8
        ret
    .Ret09:
        cp 89
        jr nc, .Ret10
        ld a, 9
        ret
    .Ret10:
        cp 109
        jr nc, .Ret11
        ld a, 10
        ret
    .Ret11:
        cp 131
        jr nc, .Ret12
        ld a, 11
        ret
    .Ret12:
        cp 155
        jr nc, .Ret13
        ld a, 12
        ret
    .Ret13:
        cp 181
        jr nc, .Ret14
        ld a, 13
        ret
    .Ret14:
        cp 208
        jr nc, .Ret15
        ld a, 14
        ret
    .Ret15:
        cp 238
        jr nc, .Ret16
        ld a, 15
        ret
    .Ret16:
        ld a, 16
        ret

    ; $041A
Math_ConvertNumberToDigits::
    ; Converts de from a 10-bit number into 3 decimal digits (stored as 3 bytes)
    ; The top 6 bits are masked out, capping the quantity to 1023
    ; Inputs
    ;   de - number (0-999)
    ; Outputs
    ;   [wX100], [wX10], [wX1] - 3 individual digits (hundreds, tens, and ones)
    ;       For example, wX100 = 4, wX10 = 3, wX1 = 9 would represent 439
        xor a
        ld [wX100], a
        ld [wX10], a
        ld [wX1], a

        ; First, handle d. Since it's masked, it can only be 0-3
        ld a, d
        and $03  ;mask out the 6 MSB
        jr z, .DecimalToElements ; <256, so wX100, wX10, wX1 <- 0
    .Check768:
        cp $03
        jr nz, .Check512
        Set8 wX100, 7
        Set8 wX10, 6
        Set8 wX1, 8
        jr .DecimalToElements
    .Check512:
        cp $02
        jr nz, .Check256
        Set8 wX100, 5
        Set8 wX10, 1
        Set8 wX1, 2
        jr .DecimalToElements
    .Check256:
        Set8 wX100, 2
        Set8 wX10, 5
        Set8 wX1, 6

    .DecimalToElements:
        ; Next, handle e. Do each digit place individually
        Get8 b, wX100
        ld a, e
        ld c, a
    .LoopBy100:
        sub 100
        jr c, .ContinueBy10
        inc b ;Add 100 unless number goes negative
        ld c, a
        jr .LoopBy100
    .ContinueBy10:
        Set8 wX100, b
        Get8 b, wX10
        ld a, c ;Restore the number before number goes negative
    .CheckTens:
        sub 10
        jr c, .ContinueBy1
        inc b ;Add 10 unless number goes negative
        ld c, a
        jr .CheckTens
    .ContinueBy1:
        Set8 wX10, b
        ld a, [wX1]
        add c
        ld [wX1], a

    .Carry1To10:
        ;if the first digit has a value of say, 13, you need to carry the 1 to the next digit
        sub 10
        jr c, .Carry10To100
        ld [wX1], a
        ld a, [wX10]
        inc a
        ld [wX10], a
    .Carry10To100:
        ld a, [wX10]
        sub 10
        jr c, .End
        ld [wX10], a
        ld a, [wX100]
        inc a
        ld [wX100], a
    .End: ;No check
        ret

    ; $04AC
Math_Div::
    ; Returns c/b
    ; Inputs:
    ;   c = Dividend
    ;   b = Divisor
    ; Outputs:
    ;   h = Quotient
    ;   l = Remainder
        ld hl, $0000
        ld a, c
    .Loop:
        sub b ;Subtract Dividend from Divisor
        jr c, .Done ;A negative number was obtained
        inc h ;Increment Quotient if the number is still positive
        jr .Loop
    .Done:      ;If the subtraction results in a negative number, undo the last subtraction
        add b   ;and take the remainder as the Remainder
        ld l, a
        ret

    ; $04B9
Math_Div16::
    ; Returns hl/a
    ; Modifies bc
    ; Inputs:
    ;   hl = Dividend
    ;   a = Divisor
    ; Outputs:
    ;   a = Quotient
    ;   The remainder is discarded (i.e. the quotient is rounded down)
    ld c, a
    ld b, $00
    TwosComp bc
    xor a
    .Loop:
        add hl, bc
        ret nc
        inc a
        jr .Loop
    .Done: ;Unused
        ret


    ; $04CA
Math_Mult::
    ; Multiplies 2 numbers together
    ; Modifies de
    ; Inputs:
    ;   b*c
    ; Outputs:
    ;   hl
    ld e, b
    ld hl, $0000
    ld d, $00
    .Bit0:
        bit 0, c ;This is elementary-school-style multiplication.
        jr z, .Bit1
        add hl, de
    .Bit1:
        sla e
        rl d
        bit 1, c
        jr z, .Bit2
        add hl, de
    .Bit2:
        sla e
        rl d
        bit 2, c
        jr z, .Bit3
        add hl, de
    .Bit3:
        sla e
        rl d
        bit 3, c
        jr z, .Bit4
        add hl, de
    .Bit4:
        sla e
        rl d
        bit 4, c
        jr z, .Bit5
        add hl, de
    .Bit5:
        sla e
        rl d
        bit 5, c
        jr z, .Bit6
        add hl, de
    .Bit6:
        sla e
        rl d
        bit 6, c
        jr z, .Bit7
        add hl, de
    .Bit7:
        sla e
        rl d
        bit 7, c
        ret z
        add hl, de
    ret

    ; $0514
Math_ScaleNumber8::
    ; Multiplies a Maximum with a binary percentage (/32), rounded down
    ; Overflows if the binary percentage is > 32 (i.e. over 100%)
    ; Inputs:
    ;   l = Perc (0%=0, 100%=32)
    ;   b = Max
    ; Outputs:
    ;   a = b*l
    ld h, 0
    ld d, h

    ld a, l
    and a
    ret z ;Return 0 if % is 0
    ld e, a

    ld a, b
    and a
    ret z ;Return 0 if Max is 0

    dec b
    jr nz, .Loop
    xor a ;Return 0 if Max is 1, since 0->31 all return 0
    ret

    ; de = hl = Perc
    ; b = Max-1
    .Loop:
        add hl, de
        dec b
        jr nz, .Loop

    ; hl = Perc*Max
    ; Now do hl//32

    ; h <- h*$100/32 = h*8 (never overflows for Perc <= 32)
    sla h
    sla h
    sla h

    ; l <- l//32
    srl l
    srl l
    srl l
    srl l
    srl l
    ld a, h
    add l ;hl//32 = h*$100/32 + l//32
    ret

    ; $053A
Math_Random::
    ; Returns an 8-bit random number, masked
    ; Input:
    ;   c = mask
    ; Output:
    ;   a = random 8-bit number, masked
    ld a, [rDIV] ;First, choose a random delay
    rra
    bit 0, a
    jr nz, .CounterInit
    swap a
    .CounterInit:
        and $3F
        inc a ; Pseudorandom delay of 1-64 loops
    .Loop:
        dec a  ; This delays for a time that can change rDIV by a maximum of about $05
        jr nz, .Loop

    ld a, [rDIV] ; After the delay, just return rDIV masked by c
    and c
    ret

    ; $054F
Math_RandomIncrement::
    ; Increments hMath_RandCounter by an average of 1 (random -3 to 4) every time
    ; the function is called, and returns the value of hMath_RandCounter
    ; TODO - clarify this function's purpose
    ldh a, [rDIV]
    swap a
    sra a
    ld e, a
    ldh a, [rDIV]
    add e
    and %00000111
    dec a
    dec a
    dec a
    ld e, a
    ldh a, [hMath_RandCounter]
    add e
    ldh [hMath_RandCounter], a
    ret


    ; source/ROM/bank00.s -> source/engine/system/system.s -> source/engine/system/graphics/graphics.s
    ; source/ROM/bank00.s -> source/engine/system/system.s -> source/engine/system/graphics/graphics.s -> source/engine/system/graphics/frame/frame.s
    ; frame.s

MACRO Frame_Init
    ld a, LOW(wObjRAM) ;Since the OAM is $100 bytes long, this must always be $00
    ld [wFrame_OAMCursor], a
    ld [wFrame_OAMTop], a
    call Frame_ClearAll
ENDM

    ; $0565
Frame_ClearAll::
    ; Erases the OAM as well as the wObjRAM (OAM WRAM copy)
    ; Achieves this by setting the y coordinates of all 40 sprites to $FF for the Buffer and real OAM
    ld de, $0004
    ld a, $28
    ld b, a
    ld hl, wObjRAM
    ld a, $FF
    .LoopBufferSprite:
        ld [hl], a
        add hl, de
        dec b
        jr nz, .LoopBufferSprite
    ld a, $28
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
    ;   and puts it in wObjRAM
    ;
    ; Inputs:
    ;   hl = Pointer to sprite data
    ;       A series of Y, X, Tile, Attr bytes, terminated by a single $80 byte
    ;   hActor.XTile, hActor.XOffset
    ;   hActor.YTile, hActor.YOffset
    ;   wSCXW, wSCYW: Position of the screen
    ;   hActor.SpriteBase
    ; Outputs:
    ;   The sprite data in hl is added to wObjRAM. Y, X and Tile are offset by
    ;       YTile, hActor.YOffset, wSCYW,
    ;       XTile, hActor.XOffset, wSCXW, and
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
        ld a, [wSCXW]
        ld c, a
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
        ldh [hActor_ScreenX], a  ; <- d <- hActor.XTile*$10 + 8 + hActor.XOffset - wSCXW

    ;Frame_ScreenY
    ; Calculate the position of the sprite relative to the screen
        ld a, [wSCYW]
        ld c, a
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

    ; $05DB
Frame_DrawLoop::
    ; Loops through the frame data of an actor
    ; Adds each sprite from the frame data to wObjRAM (OAM buffer)
    ; wFrame_OAMCursor is updated to point to the next empty spot in wObjRAM, the OAM buffer
    ;
    ; Inputs:
    ;   hl = frame data
    ;       {Y-offset, X-offset, Tileid, Attributes} * N
    ;       $80 (end of data)
    ;   d = OAM x-position
    ;   e = OAM y-position

    ld b, HIGH(wObjRAM)
    Get8 c, wFrame_OAMCursor

    .DrawLoop:
        ld a, [hl+] ;Sprite y-offset
        cp $80   ;Magic Number to end drawing
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
        ld a, c
        ld [wFrame_OAMCursor], a
        ret


    ; $05FD
Frame_DrawChr::
    ; Adds a sprite to wObjRAM, the OAM buffer
    ; wFrame_OAMCursor is updated to point to the next empty spot in wObjRAM (i.e. +$04)
    ; Inputs:
    ;   c = y position
    ;   b = x position
    ;   d = tile number
    ;   e = attribute info
    ; Outputs:
    ;   wFrame_OAMCursor increased by 4 (points to the new next available sprite)
    ld h, HIGH(wObjRAM)
    Get8 l, wFrame_OAMCursor
    Set8 hl+, c ;y-position
    Set8 hl+, b ;x-position
    Set8 hl+, d ;tileid
    Set8 hl+, e ;attributes
    Set8 wFrame_OAMCursor, l
    ret

    ; $0610
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
    ;   The sprite data in hl is added to wObjRAM. Y, X and Tile are offset by
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

    ; $0625
Frame_Ready::
    ; Cleans wObjRAM (OAM buffer) to be ready for copying
    ; It disables unused sprites from the previous frame
    ; For example, if last frame there were 5 sprites and now there are 3 sprites
    ;   it will disable the 4th and 5th sprite.
    ; The other way around, nothing needs to be done since the old sprites are overwritten
    ; Inputs:
    ;   wFrame_OAMCursor = LOW(Address) of the first unused sprite (i.e. sprites*4)
    ;   wFrame_OAMTop = The same as wFrame_OAMCursor but for the previous frame
    ld a, [wFrame_OAMTop] ;OAM used in the previous frame
    ld b, a
    ld a, [wFrame_OAMCursor] ;OAM used for the upcoming frame
    sub b
    jr nc, .OAMClean ;If there are more sprites for this frame, we don't need to
                     ;erase the previous frame data since it will be overwritten
    cpl
    inc a
    srl a
    srl a
    ld e, a ; = (PreviousFrame-CurrentFrame)/4 -> Difference in the number of sprites
    ld bc, $0004
    ld h, HIGH(wObjRAM)
    ld a, [wFrame_OAMCursor]
    ld l, a
    ld a, $FF
    .DisableSpriteLoop:
        ld [hl], a
        add hl, bc
        dec e
        jr nz, .DisableSpriteLoop ;Disable all the extra sprites that aren't used anymore
    .OAMClean:
        Mov8 wFrame_OAMTop, wFrame_OAMCursor ; Shift wFrame_OAMCursor to wFrame_OAMTop and reset wFrame_OAMCursor
        Set8 wFrame_OAMCursor, LOW(wObjRAM) ;Since the OAM is $100 bytes long, this must always be $00
        ret

INCLUDE "source/engine/system/sound/sound_vblank.asm"

    ; source/engine/system/system.s

    ; $0773
CallForeign::
    ; Used with Macro Do_CallForeign
    ; Switches to Bank e temporarily, then calls hl
    ; After that, restores initial bank
    ; Inputs:
    ;   e = Desired bank
    ;   hl = Desired function to call
    PushROMBank
    SwitchROMBank e
    call CallHL
    PopROMBank
    ret

    ; $0789
CallHL::
    ; Inputs:
    ;   hl
    jp hl

    ; $078A
MemAdd::
    ; Used with Macro Do_MemAdd
    ; Adds a fixed value to a range of data
    ; A max value is specified as a cap to avoid overflow
    ; Inputs:
    ;   d = Max value
    ;   e = Add value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    add e
    cp d
    jr c, .DontClip
        ld a, d ;Set max value
    .DontClip:
    ld [hl+], a
    Dec16Loop bc, MemAdd
    ret

    ; $0797
MemAnd::
    ; Used with Macro Do_MemAnd
    ; Ands a range of data with a fixed value
    ; Inputs:
    ;   e = And value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    and e
    ld [hl+], a
    Dec16Loop bc, MemAnd
    ret

    ; $07A0
MemMov::
    ; Used with Macro Do_MemMov
    ; Variant Macro exists as well, Do_MemMov_V
    ; Copys x bytes of data from source to destination
    ; Inputs:
    ;   hl = source
    ;   de = destination
    ;   bc = size in bytes
    ld a, [hl+]
    ld [de], a
    inc de

    dec bc    ; These 4 lines should be "Dec16Loop bc, MemMov"
    ld a, b   ; but it was manually written out here with a swapped b and c
    or c
    jr nz, MemMov

    ret

    ; $07A9
MemOr::
    ; UNUSED FUNCTION
    ; Used with Macro Do_MemOr
    ; Ors a range of data with a fixed value
    ; Inputs:
    ;   e = Or value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    or e
    ld [hl+], a
    Dec16Loop bc, MemOr
    ret

    ; $07B2
MemSet::
    ; Used with Macro Do_MemSet
    ; Initializes a range of data to a fixed value
    ; Inputs:
    ;   e = Set value
    ;   bc = Total bytes to set
    ;   hl = Starting address
    ld a, e
    ld [hl+], a
    Dec16Loop bc, MemSet
    ret

    ; $07BA
MemXor::
    ; Used with Macro Do_MemXor
    ; Xors a range of data with a fixed value
    ; Inputs:
    ;   e = Xor value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    xor e
    ld [hl+], a
    Dec16Loop bc, MemXor
    ret


    ; $07C3
ScreenHide::
    ; Disables LCD.
    ; If LCD was enabled, it will also disable all interrupts and then setup Timer interrupt
    ; Outputs:
    ;   wScreenVisible <- 0
    ;   Only timer interrupt enabled
    xor a
    ld [wScreenVisible], a

    ld a, [rLCDC]
    bit 7, a
    ret z ;Already in LCDC stop state

    xor a
    ld [rIF], a ;disable pending interrupts
    ld [rIE], a ;disable all interrupts
    .WaitForVBlankLoop:
        ld a, [rLY]
        cp 145      ;VBlank phase
        jr nz, .WaitForVBlankLoop

    xor a
    ld [rLCDC], a

    ld [rIF], a
    ld [rIE], a
    ei

    call Interrupt_Timer_Start

    ret

    ; $07EA
ScreenShow::
    ; If LCD is turned off, turns on LCD with only V-Blank and STAT interrupts
    ; Outputs:
    ;   wScreenVisible <- rLCDC
    ;   V-Blank and H-Blank interrupts enabled
    ld a, [wScreenVisible]
    and a
    ret nz          ;Quit if LCD is already turned on

    ld a, STATF_LYC
    ld [rSTAT], a   ;LYC=LY Coincidence Interrupt only

    xor a
    ld [rIF], a
    ld [hInterrupt_VBlank_Control], a

    ld a, IEF_LCDC | IEF_VBLANK
    ld [rIE], a     ;Enable V-Blank and STAT interrupts

    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJON | LCDCF_BGON
    ld [rLCDC], a
    ld [wScreenVisible], a

    ei
    ret

    ; $080A
System_DoVFunc::
    ; If screen is turned on, waits until vblank triggers, and do sound + vblank function
    ; If screen is turned off, immediately do vblank function
    ; Inputs:
    ;   wScreenVisible
    ;   wVBlank_Func
    ld a, [wScreenVisible]
    and a
    jr nz, .Visible
    .Invisible:
        SwitchROMBank [wVBlank_Bank]
        Get16 hl, wVBlank_Func
        call CallHL
        ret
    .Visible:
        Set8FF hInterrupt_VBlank_Control, (INTERRUPT_VBLANK_SOUND | INTERRUPT_VBLANK_FUNC)
        call System_WaitVBlank
        ret


    ; $082D
System_Init::
    ; Initializes all the parts of the engine

    XCall Collision_Init
    Hotspot_Init
    Interrupt_Init
    Frame_Init
    Do_CallForeign TextboxXX_Init ;This is in bank 0 so direct call would have also worked
    XCall Actorlist_Init
    Controller_Init
    Battle_Init

    ; Set the default error emssage when trying to use a spell/item in the map
    ld hl, wMenu_MainMenu_ItemSpellMapDefaultScript.Bank
    Set8 hl+, BANK(Script_System_ItemSpellMapError)
    Set8 hl+, LOW(Script_System_ItemSpellMapError)
    Set8 hl+, HIGH(Script_System_ItemSpellMapError)

    ; Miscellaneous vars
    xor a
    ld [wRAMBank], a
    ld [wROMBank], a
    ld [wActor_SaveFlag], a
    ld [$C6D8], a
    ld [wMenu_MainMenu_FadeEffect], a
    ld [$C6F3], a
    ld a, $03
    ld [$C6EF], a
    ld hl, $FFAA
    ld [hl+], a
    ld [hl+], a
    ret


    ; $08BB
System_UpdateGame::
    ; Runs all scripts
    PushRAMBank
    PushROMBank
    XCall Tilemap_Ready_ColCodes
    call Call_007_5198
    xor a
    IF TEST == 1
        call TESTING ;TODO
    ELSE
    ld [wTilemap_XDelta], a
    ENDC
    ld [wTilemap_YDelta], a
    call Interpreter_Update
    Script_Do wScript_Master
    Script_Do wScript_Scroll
    Script_Do wScript_System
    Script_Do wScript_Text

    ;AI_UPDATE_CONTROLLER ?
    ld a, [wTextbox_Position]
    and a
    jr z, .Copy
        xor a
        ld hl, $C9A3
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a
        jr .Clear
    .Copy:
        ld hl, $C9A3
        ld a, [wCnt1]
        ld [hl+], a
        ld a, [wCntDown]
        ld [hl+], a
        ld a, [wCntUp]
        ld [hl+], a
    .Clear:
    ld hl, $FFAA
    ld a, [hl+]
    ld [hl-], a
    xor a
    ld [hl], a


    XCall Actorlist_Run

    call Frame_Ready ;Graphics_Close
    XCall Sound_SetupSoundVB
    ld a, %00000111
    ldh [hInterrupt_VBlank_Control], a
    call System_WaitVBlank
    PopROMBank
    PopRAMBank
    ret

    ; $095F
System_UpdateGameNoScript::
    ; Updates the game without running any scripts
    ; Todo
    PushRAMBank
    PushROMBank
    XCall Tilemap_Ready_ColCodes
    call Call_007_5198
    xor a
    ld [wTilemap_XDelta], a
    ld [wTilemap_YDelta], a
    call Frame_Ready
    XCall Sound_SetupSoundVB
    Set8FF hInterrupt_VBlank_Control, $07
    call System_WaitVBlank
    PopROMBank
    PopRAMBank
    ret

    ; $09A0
System_WaitVBlank::
    ; This function will loop until the next VBlank interrupt is triggered
    ; and DoVBlank is finished
    ldh a, [hInterrupt_VBlank_Control]
    set 7, a
    ldh [hInterrupt_VBlank_Control], a
    halt        ; Halt system clock, economize on power
    nop
    .NoVBlank:
        ldh a, [hInterrupt_VBlank_Control]
        bit 7, a
        jr nz, .NoVBlank ; Wait for V-BLANK.
        ret

INCLUDE "source/engine/rle_decompress.asm"

    ; source/engine/hotspot/hotspot_00.s

DEF HOTSPOT_TRIGGER_ALL     EQU     $00
DEF HOTSPOT_TRIGGER_NORTH   EQU     $01
DEF HOTSPOT_TRIGGER_SOUTH   EQU     $02
DEF HOTSPOT_TRIGGER_EAST    EQU     $03
DEF HOTSPOT_TRIGGER_WEST    EQU     $04

    ; $0A09
Hotspot_GetType::
    ; Checks the trigger type of the hotspot
    ; The trigger type is the first byte of the target element in the hotspot table list
    ; Called by HotspotX_CheckHotspot
    ; Inputs:
    ;   hl = pointer to the desired hotspot in the wHotspot_Table
    ; Output:
    ;   a = hotspot trigger type ($00-$04, i.e. HOTSPOT_TRIGGER_ALL - HOTSPOT_TRIGGER_WEST)
    ;   The bank is set back to BANK(HotspotX_CheckHotspot)
    SwitchROMBank Hotspot_BANK ;Todo
    Get8 e, hl+
    SwitchROMBank BANK(HotspotX_CheckHotspot)
    ld a, e
    ret

    ; $0A1D
Hotspot_SetScript::
    ; This function is called by a ROMX function to copy a BankAddress of a trigger
    ; into wScript_System
    ; This function is called by HotspotX_CheckHotspot and TriggerXX_Start
    ; Inputs:
    ;   [hl] in Hotspot_BANK -> BankAddress of the hotspot script
    ; Outputs:
    ;   wScript_System ready to run script (Script_System.State not yet initialized though - TODO check)
    SwitchROMBank Hotspot_BANK ;Todo
    Set8 wScript_System.Bank, [hl+]
    Set8 wScript_System.Frame, [hl+]
    Set8 wScript_System.Frame+1, [hl+]

    ASSERT BANK(HotspotX_CheckHotspot) == BANK(TriggerXX_Start) ; Make sure that all the parent functions share the same bank
    SwitchROMBank BANK(HotspotX_CheckHotspot) ; = BANK(HotspotX_CheckHotspot)

    ret

    ; source/engine/script/script_play.s

    ; $0A3A
Script_Play::
    ; Used to start a script thread that reads Magi Nation Opcodes. Enters at [hScript.State] - most commonly Script_Start
    ;
    ; Inputs:
    ;   [hScript.Bank] - bank of data
    ;   [hScript.Frame] - address of data
    ;   [hScript.State] - function to run to interpret data
    PushROMBank
    ldh a, [hScript.Bank]
    bit 7, a
    jr z, .ScriptBank
        ld a, ScriptXX_BANK ; Valid banks only go to 127. Bit 7 specifies the secondary script bank
    .ScriptBank:
    SwitchROMBank a
    FGet16 bc, hScript.Frame
    Get16 hl, hScript.State
    call CallHL
    PopROMBank
    ret

    ; $0A66
Script_Start::
    ; Reads the opcode at the current frame
    ; and executes that opcode
    ; The frame is shifted forward by 1 (since the opcode is read)
    ; Inputs:
    ;   bc - from hScript.Frame
    ;   hScript.Bank - bank of the frame
    ; Outputs:
    ;   pc = hScript.State = Script_Table + 2*[bc] (opcode jump table)
    ;   hScript.Frame = bc = bc+1
    Script_ReadByteA

    add a   ;de = 2*a
    ld e, a
    ld d, $00
    rl d

    FSet16 hScript.Frame, bc ; Update frame

    ld hl, Script_Table
    add hl, de      ;hl = Script_Table + 2*a

    SwitchROMBank BANK(Script_Table)
    DerefHL
    SwitchROMBank [hScript.Bank]
    Set16 hScript.State, hl

    jp hl

    ; $0A95
Actor_InitInterrupt::
    ; I haven't quite confirmed what these do, but this seems most likely TODO
    ; Sets the Interrupt Function of an Actor
    ; Arguments:
    ;   BankAddress of DisableThread
    ;   hl          Memory address of Actor.Interrupt
    ; Output:
    ;   Actor.Interrupt_Bank and Actor.Interrupt_State
    LdHLIBCI_V
    LdHLIBCI_V
    LdHLIBCI_V
    ret

    ; $0A9F
Actor_InitScript0::
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

    ; $0AB1
Actor_InitScript1::
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

    ; $0ABD
Actor_InitShared::
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
    jp Actor_InitScript0

    ; $0ADC
Actor_SetScript::
    ; Updates the Frame address of an Actor's script
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

    ; $0AEB
Cmd_Actor_HeroFromDoor::
    ; Teleport the Hero to the X and Y coordinates specified by a Cmd_Actor_HeroToDoor
    ; Useful to set the Hero to specific tile when loading a new scene
    ; Also sets wHotspotCurrent to null
    ; Arguments:
    ;   None
    XJump ActorXX_HeroFromDoorXX

    ; $0AF6
Cmd_Actor_HeroToDoor::
    ; Sets the X and Y door coordinates that can be retrieved by Cmd_Actor_HeroFromDoor
    ; Useful to set the location of the next scene when exiting the current scene
    ; Arguments:
    ;   db  wHero_DoorX
    ;   db  wHero_DoorY
    Script_ReadByte_V [wHero_DoorX]
    Script_ReadByte_V [wHero_DoorY]
    jp Script_Start

    ; $0B03
Cmd_Actor_HeroToRelativeDoor::
    ; Sets the X and Y door coordinates that can be retrieved by Cmd_Actor_HeroFromDoor
    ; Useful to set the location of the next scene when exiting the current scene
    ; The coordinates are set as relative offsets from the current position
    ; TODO - probably the negative values are supposed to be the source position, and the positive values the dest position?
    ; Arguments:
    ;   db Decrease X by #
    ;   db Increase X by #
    ;   db Decrease Y by #
    ;   db Increase Y by #
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

    ; $0B22
    call Actor_GetThatActor
Jump_000_0B25:
    ld de, Actor_ENUM_XTile
    add hl, de
    Get8 d, hl+
    Script_ReadByte e
    ld a, [hl+]
    add e
    ld e, a
    Script_ReadByteA
    add d
    ld d, a
    push de
    Script_ReadWord de
    DerefHL
    add hl, de
    SwitchRAMBank $05
    Script_ReadByteA
    ld [hl], a
    SwitchRAMBank $03
    Script_ReadByteA
    ld [hl], a
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    pop de
    XJump ScrollXX_UpdateTile

    ; $0B72
    call Actor_GetThatActor
Jump_000_0B75:
    ld de, Actor_ENUM_TileAddress
    add hl, de
    Script_ReadWord de
    DerefHL
    add hl, de
    SwitchRAMBank $06
    Script_ReadByteA
    ld [hl], a
    SwitchRAMBank $04
    Script_ReadByteA
    ld [hl], a
    jp Script_Start

    ; $0B9A
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
    ;   BankAddress    Interrupt 
    ; Outputs:
    ;   Actor initialized but not activated
    ;   XSubtile and YSubtile set to 8
    ;   Thread1 set to Idle
    call Actor_GetThatActor

    call Actor_InitShared
    call Actor_InitScript1
    call Actor_InitInterrupt
    jp Script_Start

    ; $0BA9
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

    ; $0BCF
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

    ; $0BDC
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

    ; $0BE2
Cmd_Actor_ThatActorSetScript::
    ; For an Actor, sets the BankAddress of Script0
    ; Sets Script1 (animscript) to Cmd_Flow_End
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

    ; $0BFA
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

    ; $0C07
Cmd_Actor_ThatActorStart::
    ; Activates an Actor
    ; If Actor is already activated, it will also cancel a disable command before the actor is actually disabled
    ; This will fail if there's already $10 actors activated
    ; Arguments:
    ;   ds 1    Actor ID
    ; Outputs:
    ;   Actor_FLAGS_BIT_DELETE reset
    ;   If Actor was not already enabled, Actor_AddActor is run to add the actor to the wActorlist_Table
    ;       and Actor_FLAGS_BIT_ACTIVE is set
    call Actor_GetThatActor
    bit Actor_FLAGS_BIT_ACTIVE, [hl]
    jr nz, .ActorAlreadyEnabled
        push bc
        ld b, h
        ld c, l
        XCall Actor_AddActor
        SwitchROMBank [hScript.Bank]
        pop bc
    .ActorAlreadyEnabled:
    res Actor_FLAGS_BIT_DELETE, [hl]
    jp Script_Start

    ; $0C2B
Cmd_Actor_ThatActorDelete::
    ; Deletes the target Actor
    ; Arguments:
    ;   ds 1    Actor ID
    call Actor_GetThatActor
    set Actor_FLAGS_BIT_DELETE, [hl]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret

    ; $0C43
    ld hl, hActor.Flags ;MagiOp 03 but with current obj
    jp Jump_000_0B25

    ; $0C49
    ld hl, hActor.Flags  ;MagiOp 04 but with current obj
    jp Jump_000_0B75

    ; $0C4F
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

    ; $0C6D
Cmd_Actor_ThisActorNewState::
    ; Stores a new state for the actor to load
    ; TODO - only works for wActor_Hero?
    ; TODO - what's the difference compared to Cmd_Actor_ThisActorSetAI?
    Script_ReadWord de
    Set16 wActor_NewState, de
    jp Script_Start

    ; $0C7E
Call_000_0C7E:
    ; TODO
    Set16FF hActor.State, Call_001_63CE
    Set16FF hScript.State, Call_000_0C8F
    ret

    ; $0C8F
Call_000_0C8F:
    XJump Jump_001_4456


    FGet16 de, $C190
    ldh a, [hActor.TileAddress+1]
    ld h, a
    ldh a, [hActor.TileAddress]
    ld l, a
    ld a, l
    cp e
    jr nz, jr_000_0CAE

    ld a, h
    cp d
    jr z, jr_000_0CD4

jr_000_0CAE:
    SwitchRAMBank $05
    ld e, [hl]
    Script_ReadByteA
    cp e
    jr nz, jr_000_0CD4

    Set16 hScript.Frame, bc
    Set16FF hScript.State, Script_Start
    Set16FF hActor.State, $4A6B
    ret


jr_000_0CD4:
    Set16FF hScript.State, Call_000_0C7E
    ret

    ; $0CDD
Cmd_Actor_RestoreActorState::
    ; Restores the Actor's state after it was saved
    ; The Actor is saved when Tony tries to talk to the Actor, so that the Actor
    ; can go back to doing exactly what it was doing before Tony tried to talk to it
    
    ; Although it is originally known as ThisActorRestoreState, technically the actor
    ; that was saved will be restored, be it This actor or a different actor
    Set8 wActor_SaveFlag, Actor_SaveFlag_REQUEST_RESTORE
    Set16_M wActor_Hero.State, $5E10 ; TODO
    jp Cmd_Flow_End

    ; $0CEF
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

    ; $0D0C
Cmd_Actor_ThisActorSetAnimSingle::
    ; Sets Script1 with an animation
    ; Arguments:
    ;   BankAddress - Script1 to run with animation
    Get16 hl, hActor_CurrentAddress
    ld de, Actor_ENUM_Script1_Bank
    add hl, de
    LdHLIBCI_V ;Bank
    call Actor_SetScript
    jp Script_Start

    ; $0D21
Cmd_Actor_ThisActorSetAnimDelay::
    ; Sequentially sets Script1 with animations
    ; Additionally scrolls the tilemap during the animations
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

    ; $0D63
Cmd_Actor_ThisActorSetAnimScroll::
    ; Sequentially sets Script1 with animations
    ; Additionally scrolls the tilemap during the animations
    ;
    ; Zero-frame commands seem to be only useful as the very last command(?) TODO
    ;
    ; Arguments:
    ;   {
    ;       BankAddress - Script1 to run with animation
    ;       db - Number of frames to run the animation and scroll the tilemap
    ;       db - wTilemap_XDelta per frame (or unused if Framecount is 0)
    ;       db - wTilemap_YDelta per frame (or unused if Framecount is 0)
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

    ; $0DC6
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

    ; $0DCC
Cmd_Actor_ThisActorSetSpriteBase::
    ; Sets the SpriteBase of the current Actor
    ; Arguments:
    ;   db      New value of SpriteBase
    Script_ReadByteA
    ldh [hActor.SpriteBase], a
    jp Script_Start

    ; $0DD3
Cmd_Actor_ThisActorDelete::
    ; Deletes the current actor
    ; Arguments:
    ;   None
    ldh a, [hActor.Flags]
    set Actor_FLAGS_BIT_DELETE, a
    ldh [hActor.Flags], a
    Set16_M hScript.State, Script_Start
    ret

    ; $0DE4
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


    ; $0DFB
Actor_GetThatActor::
    ; Loads the Nth address in Actor_Table and saves it to hl
    ; Input:
    ;   db - index id of the desired actor 0 = Hero, 1 = Save, 2 = 00, 3 = 01, etc
    ; Output:
    ;   hl = reference to the Actor's WRAM structure
    Script_ReadByteA
    add a
    ld e, a
    ld d, $00
    ld hl, Actor_Table
    add hl, de
    DerefHL
    ret

    ; $0E09
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
    ld de, $0003
    add hl, de
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start


INCLUDE "source/engine/system/sound/sound_script.asm"

    ; source/engine/script/modules/script_00_battle.s

    ; $0EC5
Cmd_Battle_New::
    ; Starts a battle
    ; wScript_System - will continue running the script at the end of the battle (TODO to confirm)
    ; Arguments:
    ;   db          TODO - maybe Arena color?
    ;   db          wBattle_MagiCreatureID
    ;   db          TODO
    ;   BankAddress Script that sets up or runs the battle - TODO
    Mov8 wHero_DoorX, wActor_Hero.XTile
    Mov8 wHero_DoorY, wActor_Hero.YTile

    SwitchRAMBank BANK("WRAM BATTLE")

    Script_ReadByte_V [wFightscene_ArenaIndex]  ; TODO

    ; Store the enemy magi ID
    Script_ReadByteA
    ld [wBattle_MagiCreatureID], a
    ; Set whether Tony can run from the battle (yes if no enemy magi)
    cp luDreamCreature6C
    jr z, .NoMagi
    .HasMagi:
        xor a
        jr .Finally
    .NoMagi:
        ld a, $01
    .Finally:
    ld [wBattle_RunEnabled], a

    Script_ReadByte_V [$D36D]

    ld hl, wScript_Master.Bank
    LdHLIBCI
    LdHLIBCI ; wScript_Master.Frame
    LdHLIBCI

    xor a
    ld [$D0D7], a   ; TODO

    ; TODO
    Set16_M wScript_Master.State, Script_Start
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Call_000_0F59
    Set16FF hScript_CurrentAddress, wScript_System
    call Script_Close
    XJump Cardscene_Open


    ld a, $04
    call Battle02_00_CopyFromFrame
    jp $73AC

Call_000_0F39:
    Set16FF hScript.State, Call_000_0F39
    xor a
    ld [$D3C2], a
    ret

    ; $0F46
    ld a, $04
    call Battle02_00_CopyFromFrame
    jp Call_002_73DD


    jp $7449

    ; $0F51
    ld a, $01
    call Battle02_00_CopyFromFrame
    jp $744A

    ; $0F59
Call_000_0F59:
    ; TODO - probably holds wScript_System until $D3C2 is set (?battle is over perhaps), and then will run wScript_System
    xor a
    ld [$D3C2], a
    Set16FF hScript.State, Call_000_0F66
    ret

    ; $0F66
Call_000_0F66:
    ld a, [$D3C2]
    and a
    ret z

    jp Script_Start


    ld a, $02
    call Battle02_00_CopyFromFrame
    jp $7477


    ld a, $04
    call Battle02_00_CopyFromFrame
    xor a
    ld [$D396], a
    jp $752D

    ; $0F82
    ld a, $05
    call Battle02_00_CopyFromFrame
    jp $752D


    ld a, $04
    call Battle02_00_CopyFromFrame
    jp $7595

    ; $0F92
Cmd_Battle_Swirl::
    ; Pause the game and do a white swirl, indicating the start of a battle
    ; Also, backup the current song and play a song for the battle
    ; Arguments:
    ;   dw Graphics_ScreenFX function (should be Graphics_ScreenFX_Swirl_Do) - todo are there any other valid inputs?
    ;   db songid - battle song
    ; Outputs:
    ;   wSound_MapSong - contains the old song

    ; Store the Graphics_ScreenFX function
    Script_MovWord wGraphics_ScreenFX_Function

    ; Back-up the current song, and play the new song if it is not null 
    Mov8 wSound_MapSong, wSound_CurrentSong
    Script_ReadByteA
    push bc
    cp SOUND_NULL
    jr z, .Skip
        Sound_Request_StartSong a
    .Skip:
    pop bc
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Script_Start
    XJump Graphics_ScreenFX_Do

    ; $0FDF
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, $D3CD
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start


    ld a, $01
    ld [$C6D8], a
    ld a, $FF
    ld [$C6D7], a
    ld hl, $C6DB
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    ld hl, $C6D9
    LdHLIBCI
    LdHLIBCI
    jp Script_Start


Battle02_00_CopyFromFrame:
    ; Copies "a" bytes from the reading frame into the buffer
    ; Then saves the updated frame
    ; Arguments:
    ;   a = number of bytes to copy
    ;   bc = reading frame
    ld l, c
    ld h, b
    ld de, wBattle_Buffer
    ld c, a
    ld b, $00
    SwitchRAMBank BANK("WRAM BATTLE")
    call MemMov
    Set16FF_V hScript.Frame, hl
    Set16FF hScript.State, Script_Start
    SwitchROMBank BANK(Battle_Attack_Table) ; TODO change to file
    ret


    ld a, $30
    ld [$C9EC], a
    ld a, $DC
    ld [$C9F0], a
    ld a, $6B
    ld [$C9F1], a
    jp Jump_000_11D9

    ; $105B
MagiOp_34_LoadSideScroller::
    ; Loads the horizontally-scrolling part of the Start Screen
    ; This erases some unimportant temporary variables in the WRAM
    ; Arguments:
    ;   db  The ID of the start screen e.g. FIGHTSCENE_ARENA_Arderial
    Get8 e, wFightscene_ArenaIndex
    push de
    Script_ReadByte [wFightscene_ArenaIndex]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall LoadStartScreenScroller
    pop de
    Set8 wFightscene_ArenaIndex, e
    ret


    ld a, [bc]
    ld [wTemp_8.Palette_PackedInterval], a
    inc bc
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    xor a
    ld [$C9D9], a
    XCall Call_004_7055
    ret


    ld a, [bc]
    ld [wFightscene_ArenaIndex], a
    inc bc
    ld a, [bc]
    ld [$C9E0], a
    inc bc
    ld a, [bc]
    ld [$C9E1], a
    inc bc
    ld a, $01
    ld [$C9C5], a
    Set16 hScript.Frame, bc
    ld a, $06
    ld [hScript_CurrentAddress], a
    ld a, $C7
    ld [hScript_CurrentAddress+1], a
    Set16_M hScript.State, Script_Start
    call Script_Close
    call ScreenHide
    call Interrupt_Timer_Start
    call Interpreter_ReInit
    XCall Call_004_722E
    call System_Script_SceneInit
    call ScreenShow

jr_000_10FC:
    XCall Call_004_71A6
    call Call_004_734D
    jr jr_000_10FC

    ld a, $01
    ldh [hScript.BigCounter], a
    xor a
    ldh [hScript.SmallCounter], a
    ld a, $26
    ld [hScript.State], a
    ld a, $11
    ld [hScript.State+1], a
    Set16 hScript.Frame, bc
    ret


    ld a, [bc]
    ld [$C9EA], a
    inc bc
    ld a, [bc]
    ld [$C9E7], a
    inc bc
    ld a, [bc]
    ld [$C9E8], a
    inc bc
    XCall Call_004_711C
    ret

    ; $1141
    ; Identical to SceneReady, but not an opcode
    ld a, $01
    ld [wScript_SceneReady], a
    Set16_M hScript.State, Script_Start
    ret


    ld a, $30
    ld [$C9EC], a
    ld a, $0C
    ld [$C9F0], a
    ld a, $6C
    ld [$C9F1], a
    jr jr_000_11D9

    ld a, $24
    ld [$C9EC], a
    ld a, $3C
    ld [$C9F0], a
    ld a, $6C
    ld [$C9F1], a
    jr jr_000_11D9

    Script_ReadByteA
    ld [$C9EA], a
    Script_ReadByteA
    ld [$C9E9], a
    Script_ReadByteA
    ldh [hScript.SmallCounter], a
    Set16 hScript.Frame, bc
    ld a, $93
    ld [hScript.State], a
    ld a, $11
    ld [hScript.State+1], a
    ldh a, [hScript.SmallCounter]
    and a
    jp z, Script_Start

    dec a
    ldh [hScript.SmallCounter], a
    XCall Call_004_715B
    ret


    ld a, $54
    ld [$C9EC], a
    ld a, $60
    ld [$C9F0], a
    ld a, $6C
    ld [$C9F1], a
    jr jr_000_11D9

    ld a, $A8
    ld [$C9EC], a
    ld a, $B4
    ld [$C9F0], a
    ld a, $6C
    ld [$C9F1], a
    jr jr_000_11D9

    ld a, $1D
    ld [$C9EC], a
    ld a, $5C
    ld [$C9F0], a
    ld a, $6D
    ld [$C9F1], a

Jump_000_11D9:
jr_000_11D9:
    xor a
    ld [$C9EB], a
    ld [$C9EE], a
    ld [$C9EF], a
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret


    ld a, $08
    ld [$C9FA], a
    ld a, $E9
    ld [$C9F4], a
    ld a, $6D
    ld [$C9F5], a
    jr jr_000_1216

    ld a, $10
    ld [$C9FA], a
    ld a, $F9
    ld [$C9F4], a
    ld a, $6D
    ld [$C9F5], a

jr_000_1216:
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall Call_004_6AFA
    ret

    ; $1234
    INCLUDE "source/engine/expression/expression_00.asm"

;source/engine/script/modules/script_00_flow.s

    ; $13A5
Cmd_Flow_Delay::
    ; Waits X frames before moving on to the next MagiOp
    ; Arguments:
    ;   ds 1    Number of frames to wait
    .Init:
        ; First iteration of the command
        Script_ReadByteA
        ldh [hScript.SmallCounter], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop
    .MainLoop:
        ldh a, [hScript.SmallCounter]
        and a
        jp z, Script_Start
        dec a
        ldh [hScript.SmallCounter], a
        ret

    ; $13C5
Cmd_Flow_RandDelay::
    ; This function will delay a random amount of time.
    ; The input is a table of $10 bytes. Each byte specifies the amount of delay
    ; A random byte from the table will be selected
    ; The delay is val*4 frames
    ; Arguments:
    ;   dw  pointer to table of size $10 in bank TODO
    .Init:
        Script_ReadWord hl
        SwitchROMBank $01 ;TODO LongRandDelay lookup table to locate
        call Math_RandomIncrement
        and %00001111       ;Random-ish number from 0 to F
        ld e, a
        ld d, $00
        add hl, de
        Set8FF hScript.SmallCounter, [hl]
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop
    .MainLoop:
        ldh a, [hTicker]
        and $03
        cp $03
        ret nz                      ;Skip 75% of cycles
        ldh a, [hScript.SmallCounter]
        and a
        jp z, Script_Start       ;Read next instruction after
        dec a
        ldh [hScript.SmallCounter], a
        ret


    ; $1402
Cmd_Flow_End::
    ; Idles forever and sets the thread address to null
    Set8 wScript_Done, $01
    Set16FF hScript.Frame, $0000
    Set16FF hScript.State, Cmd_Flow_End
    ret

    ; $1418
Cmd_Flow_LongJumpIf::
    ; Gets a result from Expr_GetValue
    ; Will jump the bank and pointer to a new location if non-zero
    ; Waits 1 cycle
    ; Arguments:
    ;   Expr
    ;   ds 3    BankAddress
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    Battery_Off
    ld a, e
    or d
    jr z, .Zero
    .NonZero:
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Cmd_Flow_LongJump
        ret
    .Zero:
        inc bc ;Skip if non-zero
        inc bc
        inc bc
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ret

    ; $1459
Cmd_Flow_InitSkip::
    ; Jumps to a new address if LCD is off (i.e. in initialization phase)
    ; Used to skip init code
    ; Arguments:
    ;   ds 2    Address
    ld a, [wScreenVisible]
    and a
    jp z, Cmd_Flow_LocalJump

    inc bc
    inc bc
    jp Script_Start


    ; $1465
Cmd_Flow_LongJump::
    ; Changes hScript.Frame and the hScript.Bank to a new value
    ; Arguments:
    ;   ds 3    BankAddress
    ld a, [bc]
    ld e, a
    ld [hScript.Bank], a
    inc bc
    Script_ReadByte l
    ld a, [bc]
    ld b, a
    ld c, l
    SwitchROMBank e
    jp Script_Start

    ; $147B
Cmd_Flow_LocalJump::
    ; Changes the bc pointer to a new value [bc]
    ; i.e. stays in the same bank
    ; Arguments:
    ;   ds 2    Address
    Script_ReadByte l
    ld a, [bc]
    ld b, a
    ld c, l
    jp Script_Start

    ; $1484
Cmd_Flow_RandLongJump::
    ; Jumps to a random address specified in a jump table
    ; Arguments:
    ;   ds 1        N = Number of entries in the table (1-16)
    ;   N*(ds 3)    N x BankAddress
    ;
    ; First, do X = rand(16) mod N
    Script_ReadByte_V l
    call Math_RandomIncrement
    and $0F
    .ModuloLoop:
        cp l
        jr c, .ModuloDone
        sub l
        jr .ModuloLoop
    .ModuloDone:
    ; Then X*3 and use that BankAddress to jump
    ld l, a
    add a
    add l
    ld l, a
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    jp Cmd_Flow_LongJump

    ; $149E
Cmd_Flow_Pass::
    ; Display 1 frame and then keep going
    ; Arguments:
    ;   None
    Set16FF_V hScript.State, bc  ; BUG - This should update the FRAME, not the State
                                 ; This line of code might cause problems if preceded by certain commands
    Set16FF hScript.State, Script_Start
    ret

    ; $14AD
Cmd_Flow_SwitchRange::
    ; Gets the result of an expression
    ; Then if the value is within the inclusive range of any of the cases below, LongJump to the new value
    ;
    ; Arguments:
    ;   ds ?    Expr
    ;   {
    ;       db      Bank                   \
    ;       dw      LowerLimit              \
    ;       dw      UpperLimit              /   Jump to BankAddress if   LowerLimit <= Expr <= UpperLimit
    ;       dw      Address                /
    ;   } x N
    ;   db $FF (End of Switch)
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue ; Returned in de
    Battery_Off
    jr .CheckIfEnd
    .FailedLowCheck:
        inc bc
        inc bc
    .FailedHighCheck:
        inc bc
        inc bc
        pop hl
    .CheckIfEnd:
        Script_ReadByte l
        cp $FF
        jr nz, .CheckLowerBound
        jp Script_Start
    .CheckLowerBound:
        ; Check LowerLimit <= Expr
        push hl
        Script_ReadWord hl
        ld a, e
        sub l
        ld a, d
        sbc h
        jr nc, .CheckUpperBound
        jr .FailedLowCheck
    .CheckUpperBound:
        ; Check Expr <= UpperLimit
        Script_ReadWord hl
        ld a, l
        sub e
        ld a, h
        sbc d
        jr nc, .FoundMatch
        jr .FailedHighCheck
    .FoundMatch:
        pop hl
        Script_ReadByte e
        ld a, [bc]
        ld b, a
        ld c, e
        Set8 hScript.Bank, l
        SwitchROMBank l
        jp Script_Start

    ; $1504
Cmd_Flow_ResetScript::
    ; TODO - clarify what this is used for
    ; Hypothesis is that it marks the end of a script segment (hence Done), but jumps
    ; Or else it's an internal function for BattleFX for example
    ld a, [bc]
    ldh [hScript.Bank], a
    inc bc
    ld a, [bc]
    ldh [hScript.Frame], a
    inc bc
    ld a, [bc]
    ldh [hScript.Frame+1], a
    Set8 wScript_Done, $01
    Set16_M hScript.State, Script_Start
    ret

    ; $151F
Cmd_Flow_Switch::
    ; Gets the result of an expression
    ; Then if the value matches any of the cases below, LongJump to the new value
    ;
    ; Arguments:
    ;   ds ?    Expr
    ;   {
    ;       db      Bank
    ;       dw      case
    ;       dw      Address
    ;   } x N
    ;   db $FF (End of Switch)
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    Battery_Off
    jr .CheckIfEnd
    .CaseNotMatchLow:
        inc bc
    .CaseNotMatchHigh:
        inc bc
        inc bc
    .CheckIfEnd:
        Script_ReadByte l
        cp $FF
        jr nz, .CheckCaseMatch
            jp Script_Start
    .CheckCaseMatch:
        Script_ReadByteA
        cp e
        jr nz, .CaseNotMatchLow
        Script_ReadByteA
        cp d
        jr nz, .CaseNotMatchHigh
        Script_ReadByte e
        ld a, [bc]
        ld b, a
        ld c, e
        Set8 hScript.Bank, l
        SwitchROMBank l
        jp Script_Start

; source/engine/script/modules/script_00_frame.s

    ; $1560
Cmd_Frame_SpriteDraw::
    ; Moves the current Actor and then draws a sprite
    ; This opcode takes a list of 5-byte commands
    ; Arguments:
    ;   {
    ;       db  Number of frames to do the movement
    ;       db  DeltaX per frame
    ;       db  DeltaY per frame
    ;       dw  Address of Actor Sprite data (must be in same bank as magiscript)
    ;   } x N
    ;   db $00 to terminate list of movement commands
    .Init:
        ; Read a 5-byte command
        Script_ReadByteA
        and a
        jp z, Script_Start ; End byte

        ldh [hScript.SmallCounter], a ; Save the number of frames to loop the command
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ld h, b
        ld l, c
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ld a, [hl+]
        ld e, a
        ld a, [hl+]
        ld d, a
        ld c, l
        ld b, h
        ld l, e
        ld h, d
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
            ldh [hScript.SmallCounter], a
            call Frame_Draw
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, bc
            call Frame_Draw
            Set16_M hScript.State, Cmd_Frame_SpriteDraw
            ret

    ; $15AB
Cmd_Frame_SpriteInvisible::
    ; Moves the current Actor and but draws no sprite (invisible)
    ; This opcode takes a list of 3-byte commands
    ; Arguments:
    ;   db  Number of frames to do the movement (0 is ignored)
    ;   db  DeltaX per frame
    ;   db  DeltaY per frame
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start
        ldh [hScript.SmallCounter], a
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ld h, b
        ld l, c
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
            ldh [hScript.SmallCounter], a
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, hl
            Set16_M hScript.State, Script_Start
            ret

    ; $15E8
Cmd_Frame_SpriteBlock::
    ; Moves the current Actor with a single command but with a set of various sprites
    ; Arguments:
    ;   db  (2*Number of different sprites), i.e. the length of the table
    ;   db  Number of frames for each sprite
    ;   db  DeltaX per frame
    ;   db  DeltaY per frame
    ;   dw*N  pointers to sprites
    .Init:
        ; The BigCounter is the relative offset for the sprite pointers
        ; $00 points to the first entry, $02 to the second entry
        xor a
        ldh [hScript.BigCounter], a
        ; SmallCounter keeps track of the frames for a specific sprite
        inc bc
        ld a, [bc]
        dec bc
        ldh [hScript.SmallCounter], a
        Set16_M hScript.State, .Loop
    .Loop:
        ; Prep the XMove and YMove for Draw_Frame
        ld h, b
        ld l, c
        inc hl
        inc hl
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ; Get the offset pointing to the desired sprite
        ldh a, [hScript.BigCounter]
        ld e, a
        ld d, $00
        add hl, de
        ; dec SmallCounter to see if it's the last frame of the current sprite or not
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .LastFrameOfSprite
        .NotLastFrameOfSprite:
            ; It's not the last frame
            ldh [hScript.SmallCounter], a
            jr .DrawSprite
        .LastFrameOfSprite:
            ; It's the last frame.
            ; Increment BigCounter by 2 to point to the next address for the next frame
            Script_ReadByteA
            ld e, a
            ldh a, [hScript.BigCounter]
            inc a
            inc a
            ; If next frame we are going to point to an address that's out of the table
            ; We know we are done
            cp e
            jr z, .Finished
            .NotFinished:
                ; Update the Counters for next frame
                ldh [hScript.BigCounter], a
                ld a, [bc]
                ldh [hScript.SmallCounter], a
                jr .DrawSprite
    .Finished:
        ld b, h
        ld c, l
        inc bc
        inc bc
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ;jr .DrawSprite   ;We still want to draw the very last frame before quitting
    .DrawSprite:
        DerefHL ; Deref the pointer to the actual sprite
        call Frame_Draw
        ret

    ; $1643
Cmd_Frame_OverlayDraw::
    ; Moves the current Actor and then draws a sprite related to the corner of the screen
    ; This opcode takes a list of 5-byte commands
    ; Inputs:
    ;   I believe hActor.XTile and hActor.YTile are in absolute OAM coordinates. TODO confirm
    ; Arguments:
    ;   {
    ;       db  Number of frames to do the movement
    ;       db  Delta X per frame
    ;       db  Delta Y per frame
    ;       dw  Address of Actor Sprite data (must be in same bank as magiscript)
    ;   } x N
    ;   db $00 to terminate list of movement commands
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start
        ldh [hScript.SmallCounter], a
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ; Unused subtile moves; set to 0
        xor a
        ld [wColl_XMove], a
        ld [wColl_YMove], a

        ; Apply Delta X/Y
        ld h, b
        ld l, c
        ld a, [hl+]
        ld b, a
        ldh a, [hActor.XTile]
        add b
        ldh [hActor.XTile], a
        ld a, [hl+]
        ld b, a
        ldh a, [hActor.YTile]
        add b
        ldh [hActor.YTile], a

        ; Get Actor Sprite data into hl
        ld a, [hl+]
        ld e, a
        ld a, [hl+]
        ld d, a
        ld c, l
        ld b, h
        ld l, e
        ld h, d
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
        .NotEnd:
            ldh [hScript.SmallCounter], a
            call Frame_Overlay
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, bc
            call Frame_Overlay
            Set16_M hScript.State, Cmd_Frame_OverlayDraw
            ret

    ; $169B
Cmd_Frame_OverlayInit::
    ; Sets up an overlay
    ; Arguments:
    ;   dw      Pointer to the desired Actor ?TODO hActor vs wActor vs both
    ;   db      Actor.XTile
    ;   db      Actor.YTile
    ;   db      Actor.SpriteBase
    ;   ds 3    BankAddress of script
    ; Get wActor/hActor
    Script_ReadWord_V hl
    ; Actor.State = AI_Overlay
    inc hl
    ld a, LOW(AI_Overlay)
    ld [hl+], a
    ld a, HIGH(AI_Overlay)
    ld [hl+], a
    ; Set XTile, YTile
    inc hl
    inc hl
    LdHLIBCI_V
    LdHLIBCI_V
    ; Set SpriteBase
    inc hl
    inc hl
    LdHLIBCI_V
    call Actor_InitScript0 ;BankAddress
    call Actor_InitScript1 ;Null
    jp Script_Start

Cmd_Frame_OverlayInvisible::
    ; Equivalent to nop. It doesn't even delay a frame.
    ; Possibly unfinished function vs just a placeholder for clearer code? TODO check
    ; Arguments:
    ;   None
    jp Script_Start


; source/engine/script/modules/script_00_global.s

    ; $16C1
Cmd_Global_ClearSync::
    ; Sets wScript_SyncCount to the specified value at the beginning of next frame
    ;
    ; Arguments:
    ;   db      desired wScript_SyncCount
    ld hl, wScript_SyncNext
    ld a, $01
    ld [hl+], a ;wScript_SyncNext
    ld a, $FF
    ld [hl+], a ;wScript_SyncCurrent
    Script_ReadByteA
    dec a       ;We only want to hit the specified value at the beginning of next frame
    ld [hl+], a ;wScript_SyncCount
    jp Script_Start

    ; $16D1
Cmd_Global_SetAnyEventMaster::
    ld a, [wScript_MasterEventNextID]
    and a
    ret nz

    Set8 wScript_MasterEventNextID, $FF
    jp Script_Start

    ; $16DE
Cmd_Global_SetAnyEventScroll::
    ld a, [wScript_ScrollEventNextID]
    and a
    ret nz

    Set8 wScript_ScrollEventNextID, $FF
    jp Script_Start

    ; $16EB
Cmd_Global_SetAnyEventText::
    ld a, [wScript_TextEventNextID]
    and a
    ret nz

    Set8 wScript_TextEventNextID, $FF
    jp Script_Start

    ; $16F8
Cmd_Global_SetEventMaster::
    ld a, [wScript_MasterEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_MasterEventNextID]
    jp Script_Start

    ; $1705
Cmd_Global_SetEventScroll::
    ld a, [wScript_ScrollEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_ScrollEventNextID]
    jp Script_Start

    ; $1712
Cmd_Global_SetEventText::
    ld a, [wScript_TextEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_TextEventNextID]
    jp Script_Start

    ; $171F
Cmd_Global_SetScriptMaster::
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld hl, wScript_Master.Bank
    jp Global_SetScript

    ; $1725
Cmd_Global_SetScriptScroll::
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld hl, wScript_Scroll.Bank
    jp Global_SetScript

    ; $172B
Cmd_Global_SetScriptText::
    ; Inputs:
    ;   wTextbox_Position - command is refused if textbox is busy
    ; Inputs:
    ;   wTextbox_Position
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld a, [wTextbox_Position]
    cp Textbox_BUSY
    ret z
    ld hl, wScript_Text.Bank
    jp Global_SetScript

    ; $1737
Cmd_Global_Sync::
    ; TODO
    ; Arguments:
    ;   db  Sync parameter - must be <= SyncCount, or else waits
    ;   db  Sync parameter - waits until == wScript_SyncCurrent, or else increments wScript_SyncCurrent
    .Init:
        ; Wait until wScript_SyncCount >= Param1
        ld a, [bc]
        ld e, a
        ld a, [wScript_SyncCount]
        cp e
        ret c

        inc bc
        Set16 hScript.Frame, bc
        ld hl, wScript_SyncNext ; += 1
        inc [hl]
        Set16_M hScript.State, .WaitSync
        ret
    .WaitSync:

        ld hl, wScript_SyncCurrent
        Script_ReadByte e
        ld a, [hl-] ; wScript_SyncCurrent
        and a
        jr z, .Return
            cp e
            ret c

            ld a, $01
            ld [hl+], a ; wScript_SyncNext
            ld a, $FF
            ld [hl+], a ; wScript_SyncCurrent
            ret
        .Return:
            Set16 hScript.Frame, bc
            Set16_M hScript.State, Script_Start
            ret

    ; $177C
Cmd_Global_WaitAnyEventMaster::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_MasterEventID]
    jp Global_WaitAnyEvent

    ; $1782
Cmd_Global_WaitAnyEventScroll::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_ScrollEventID]
    jp Global_WaitAnyEvent

    ; $1788
Cmd_Global_WaitAnyEventText::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_TextEventID]
    jp Global_WaitAnyEvent

    ; $178E
Cmd_Global_WaitEventMaster::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_MasterEventID]
    jp Global_WaitEvent

    ; $1794
Cmd_Global_WaitEventScroll::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_ScrollEventID]
    jp Global_WaitEvent

    ; $179A
Cmd_Global_WaitEventText::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_TextEventID]
    jp Global_WaitEvent


    ; $17A0
Global_SetScript::
    ; Sets a new reading Frame for a script (Master, Scroll or Text)
    ; Inputs:
    ;   hl = wScript.Bank
    ; Arguments:
    ;   ds 3 BankAddress of script's frame
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    ld a, LOW(Script_Start)
    ld [hl+], a
    ld a, HIGH(Script_Start)
    ld [hl+], a
    jp Script_Start

    ; $17B2
Global_WaitAnyEvent::
    ; Passes to the next command if wScript_???EventID is non-zero
    ; Inputs:
    ;   wScript_???EventID
    and a
    ret z

    Set16_M hScript.State, Script_Start
    ret

    ; $17BF
Global_WaitEvent::
    ; Passes to the next command if wScript_???EventID is equal to the Argument
    ; Inputs:
    ;   wScript_???EventID
    ; Arguments:
    ;   db  ID that must match the EventID
    ld d, a
    ld a, [bc]
    cp d
    ret nz
    inc bc
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret

    ; $17D7
Cmd_Load_LargeStaticTilemap::
    ; Unpacks a $20 x $20 size static tilemap
    ; Inputs:
    ;   ds 3    AddressBank of STATICMAP
    Script_Unpack Unpack_AttrTileRLE_To_LargeStaticTilemap
    jp Script_Start

    ; $17FA
Cmd_Load_Hotspots::
    Script_ReadWord hl
    SwitchROMBank Hotspot_BANK ;Todo replace with a real address reference
    Set8 wHotspot_TableSize, [hl+]
    Set16 wHotspot_Table, hl
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $1820
Cmd_Load_Scene::
    ; Loads multiple data files of a scene
    ; Arguments:
    ;   AddressBank Scene file
    ;       contains
    ;           Background palette
    ;           BitmapSet
    ;           Pattern
    ;           MetaTilemap
    ;           CollisionMap
    Script_Unpack Unpack_Scene
    jp Script_Start

    ; $1843
Cmd_Load_SpritePalette::
    ; Loads an 8-palette sprite palette
    ; It writes the data into wPalette_BaseBuffers.Sprite, wPalette_AnimBuffers.Sprite and rOCPS
    ; Arguments:
    ;   ds 3    AddressBank of a full set of 8 palettes
    Script_Unpack Unpack_Palette_Sprite
    jp Script_Start

    ; $1866
Cmd_Load_Map::
    ; Loads a map, without loading the base graphics (see Cmd_Load_Scene for comparison)
    ; Arguments:
    ;   AddressBank MetaTilemap
    ;   AddressBank CollisionMap
    Script_Unpack Unpack_MetaTilemap
    Script_Unpack Unpack_CollisionMap
    jp Script_Start

    ; $18A9
Cmd_Load_MapMask::
    ; Loads a map mask. The map mask contains alternative tiles that are copied over the main map
    ; e.g. You can copy over an opened door, or remove an obstacle, depending on gameplay progression
    ; The specified tiles are only copied when used in conjunction with Cmd_Scroll_TransplantMapMask
    ; Usually, the map masks are identical size to the actual map.
    ; The mask files are identical in format to regular MetaTilemaps and Collisionmaps, although the
    ; headers are completely ignored.
    ; Arguments:
    ;   AddressBank MetaTilemap Mask
    ;   AddressBank Collisionmap Mask
    Script_Unpack Unpack_MaskMetaTilemap
    Script_Unpack Unpack_MaskCollisionmap
    jp Script_Start

    ; $18EC
Cmd_Load_Triggers::
    ; Loads triggers and runs all the config triggers
    ; Needs to be run by wScript_Master while the screen is off
    ; Arguments:
    ;   dw TriggerTable
    Script_ReadWord hl
    push bc
    call Trigger_LoadTable
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1903
Cmd_Load_BitmapSet::
    ; Loads a bitmaps collection and a corresponding palette for the background
    ; The palette is copied into wPalette_BaseBuffers.Background, wPalette_AnimBuffers.Background and rBCPS
    ; Arguments:
    ;   AddressBank BitmapSet
    ;   AddressBank Palette
    Script_Unpack Unpack_BitmapSet
    Script_Unpack Unpack_Palette_Background
    jp Script_Start

    ; $1946
Cmd_Load_Bitmap::
    ; Copies a tileset into VRAM
    ; You cannot specify width
    ; This function can be run when the screen is visible
    ;
    ; Arguments:
    ;   db Number of tiles to copy i.e. size
    ;   BankAddress source tileset
    ;   dw destination address
    ;   db destination VBK bank

    .Init:
        ; Number of tiles to copy
        Script_ReadByteA
        ldh [hScript.SmallCounter], a

        Script_ReadByte [wVBlank_Bank]
        Script_MovWord wVBlank_SourceAddress
        Script_MovWord wVBlank_DestAddress
        Script_ReadByte [wVBlank_DestVBK]

        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop

    .MainLoop:
        ; Copy one tile per frame
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_CopyTile
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .Finally
        ldh [hScript.SmallCounter], a
        ret

    .Finally:
        Set16_M hScript.State, Script_Start
        ret

    ; $1997
Palette_ReadPackedLoop::
    ; Preps a byte that's a packed loop byte
    ; DOES NOT increment hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.BigCounter <- db & %00111111                (0-$3F)
    ;   hScript.SmallCounter <- (db & %11000000) >> 6 + 1   (1-4)
    ;   hScript.Frame is NOT incremented
    Set16 hScript.Frame, bc
    call Palette_ReadPackedLoop_BigCounter
    call Palette_ReadPackedLoop_SmallCounter
    dec bc
    ret

    ; $19A7
Palette_ReadPackedLoop_BigCounter::
    ; Preps a byte that's a packed loop byte
    ; DOES NOT increment hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.BigCounter <- db & %00111111                (0-$3F)
    ;   hScript.Frame is NOT incremented
    ld a, [bc]
    and %00111111
    ldh [hScript.BigCounter], a
    ret

    ; $19AD
Palette_ReadPackedLoop_SmallCounter::
    ; Preps a byte that's a packed loop byte
    ; INCREMENTS hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.SmallCounter <- (db & %11000000) >> 6 + 1   (1-4)
    ld a, [bc]
    and %11000000
    swap a
    rra
    rra
    inc a
    ldh [hScript.SmallCounter], a
    inc bc
    ret


    ; $19B9
Palette_ReadColor::
    ; Preps a word that's a Color
    ; If the 16th bit is set (i.e. transparent Color), load wFightscene_ArenaColor which represents the background Color
    ; Arguments:
    ;   dw      Color - The 16th bit signifies transparency
    ; Output:
    ;   wTemp_A.Palette_SetColor <- Color, unless 16th bit is set, then uses wFightscene_ArenaColor instead
    Script_ReadByteA
    ld [wTemp_A.Palette_SetColor], a
    Script_ReadByteA
    ld [wTemp_A.Palette_SetColor+1], a
    bit 7, a
    ret z ;If the 16th bit is set, the color is transparent and so use the background arena color instead
        Mov16 wTemp_A.Palette_SetColor, wFightscene_ArenaColor
        ret

    ; $19D3
Palette_ReadPackedInterval::
    ; Preps a byte that's a packed palette interval
    ; Argument:
    ;   db      wTemp_8.Palette_PackedInterval
    ; Output:
    ;   wTemp_8.Palette_PackedInterval <- db
    Script_ReadByte [wTemp_8.Palette_PackedInterval]
    ret

    ; $19D9
Palette_ReadClearArguments::
    ; Used in the two palette clear commands to fetch arguments. Updates the frame
    ;
    ; Arguments:
    ;   db      wTemp_8.Palette_PackedInterval
    ;   dw      Color - The 16th bit signifies transparency
    ; Outputs:
    ;   wTemp_8.Palette_PackedInterval <- db
    ;   wTemp_A.Palette_SetColor <- Color, unless 16th bit is set, then uses wFightscene_ArenaColor instead
    call Palette_ReadPackedInterval
    call Palette_ReadColor
    Set16 hScript.Frame, bc
    ret


    ; $19E8
Palette_LoopFinally::
    ; After a looping function triggers a palette function (i.e. when hScript.SmallCounter hits 0)
    ; Make sure VBlank pushes the palette updates
    ; Also, check to see if the total number of iterations is completed
    ; If so, then update the Frame past the current command to run the next command
    ; Or else, continue reading the same command to continue the loop
    ; Inputs:
    ;   hScript.BigCounter = The number of iterations left (including current iteration)
    ; Outputs:
    ;   wVBlank_Bank / wVBlank_Func <- PaletteVB_UpdatePalettes
    ;   If hScript.BigCounter == 1
    ;       wMenu_MainMenu_FadeEffect = 0
    ;       hScript.Frame = next command
    ;       hScript.State = Script_Start
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    ldh a, [hScript.BigCounter]
    dec a
    jr z, .EndOfIterations
    .NextIteration:
        ldh [hScript.BigCounter], a
        ret
    .EndOfIterations:
        xor a
        ld [wMenu_MainMenu_FadeEffect], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ret

    ; $1A16
Cmd_Palette_000_1A16::
    ; Unknown... Maybe it's a BattleFX that fades out the screen to white
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadColor
        Set8 wTemp_B.Palette_FadeMagnitude, $01 ;Unknown
        push bc
        XCall Call_007_5C00
        pop bc
        jp Palette_LoopFinally

    ; $1A44
Cmd_Palette_000_1A44::
    ; Unknown... Maybe it's a BattleFX that fades the screen into the real colors
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Set8 wTemp_B.Palette_FadeMagnitude, $01 ;Unknown
        push bc
        XCall Call_007_5C29
        pop bc
        jp Palette_LoopFinally

    ; $1A6F
Cmd_Palette_ClearBase::
    ; Replaces the specified palettes in wPalette_BaseBuffers with a single Color
    ;
    ; Arguments:
    ;   db      wTemp_8.Palette_PackedInterval - Represents the palettes that should be modified
    ;   dw      wTemp_A.Palette_SetColor - The 16th bit signifies transparency (wFightscene_ArenaColor is used instead)
    call Palette_ReadClearArguments
    XCall PaletteFX_ClearBaseBuffer
    Set16_M hScript.State, Script_Start
    ret

    ; $1A88
Cmd_Palette_ClearAnim::
    ; Replaces the specified palettes in wPalette_AnimBuffers with a single Color
    ;
    ; Arguments:
    ;   db  [wTemp_8.Palette_PackedInterval]
    ;   dw  [wTemp_A.Palette_SetColor]
    call Palette_ReadClearArguments
    XCall PaletteFX_ClearAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1AB0
Cmd_Palette_CreatureCycle::
    ; BattleFX - cycles a creature's palette
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ; Main body
        call Palette_ReadPackedLoop_SmallCounter ; Reset the SmallCounter
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureSide]
        push bc
        XCall PaletteFX_Battle_CreatureCycle
        pop bc
        jp Palette_LoopFinally

    ; $1ADB
Cmd_Palette_CreatureFadeUniColor::
    ; BattleFX - fades a creature's palette to a Color
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   dw  wTemp_A.Palette_SetColor
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter ; Reset the SmallCounter
        call Palette_ReadColor
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureSide]
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_Battle_CreatureFadeUniColor
        pop bc
        jp Palette_LoopFinally

    ; $1B0E
Cmd_Palette_CreatureFadeMultiColor::
    ; TODO VERIFY FUNCTION
    ; A quick glance seems to fade from Anim to Base Buffers
    ; BattleFX - Ipsum TODO
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureSide]
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_Battle_CreatureFadeMultiColor
        pop bc
        jp Palette_LoopFinally

    ; $1B3E
Cmd_Palette_CreatureLoad::
    ; Loads a palette of a creature
    ; TODO
    ; Arguments:
    ;   AddressBank - Creature palette
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    ;
    ; Address
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress]
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress+1]
    ; Bank
    Script_ReadByte_V [wTemp_7.Palette_PaletteBank]
    ; Creature
    Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureSide]
    Set16 hScript.Frame, bc
    XCall Call_000_35F1 ;XCall, but the function needs to be in bank $00
    Set16_M hScript.State, Script_Start
    ret

    ; $1B70
Cmd_Palette_CreatureFlash::
    ; BattleFX - rotates a creature's palette's RGB values
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_8.Palette_ColorSwapType
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Script_ReadByte_V [wTemp_8.Palette_ColorSwapType]
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureSide]
        push bc
        XCall PaletteFX_Battle_CreatureSwapRGB
        pop bc
        jp Palette_LoopFinally

    ; $1BA0
Cmd_Palette_CreatureInvert::
    ; BattleFX - Inverts a creature's palette once
    ; Arguments:
    ;   db  wTemp_9.Palette_BattleFX_CreatureSide (0=left creature, 1=right creature)
    Script_ReadByte [wTemp_9.Palette_BattleFX_CreatureSide]
    Set16 hScript.Frame, bc
    XCall PaletteFX_Battle_CreatureInvert
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1BD2
Cmd_Palette_Cycle::
    ; Cycles wPalette_AnimBuffers
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    ;   db  wTemp_9.Palette_CyclePattern -> Number of Colors to cycle in each Palette (2 to 4, starting from the right)
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_FadeEffect, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        Script_ReadByte [wTemp_9.Palette_CyclePattern]
        push bc
        XCall PaletteFX_CycleAnimBuffer
        pop bc
        jp Palette_LoopFinally

    ; $1C05
Cmd_Palette_FadeAnimToBase::
    ; Fades wPalette_AnimBuffers towards wPalette_BaseBuffers, magnitude 1 at a time
    ; Every hScript.SmallCounter cycles, apply a fade. Do the fade effect hScript.BigCounter times
    ;
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_FadeEffect, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_FadeAnimToBase
        pop bc
        jp Palette_LoopFinally

    ; $1C38
Cmd_Palette_FadeAnimToColor::
    ; Fades to a specific Color
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    ;   dw  Color
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_FadeEffect, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        call Palette_ReadColor
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_FadeAnimToColor
        pop bc
        jp Palette_LoopFinally

    ; $1C6E
Cmd_Palette_Load::
    ; Loads a palette
    ; Arguments:
    ;   ds 3    Palette AddressBank
    ;   db      Palette_PackedInterval
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress]
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress+1]
    Script_ReadByte_V [wTemp_7.Palette_PaletteBank]
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall Palette_DecodePaletteInterval
    PushROMBank
    SwitchROMBank [wTemp_7.Palette_PaletteBank]
    Get16 hl, wTemp_A.Palette_PaletteBufferStartAddress
    Get16 bc, wTemp_6.Palette_PaletteAddress
    ld e, $00
    ld a, [wTemp_9.Palette_NumColors]
    call Unpack_Palette_Palettes
    PopROMBank
    Set16_M hScript.State, Script_Start
    ret

    ; $1CCA
Cmd_Palette_Refresh::
    ; Copies the base palette buffer to the anim palette buffer
    ; Arguments:
    ;   db      Palette_PackedInterval
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall PaletteFX_RefreshAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1CFA
Cmd_Palette_Invert::
    ; Inverts wPalette_AnimBuffers
    ; Arguments:
    ;   db  Palette_PackedInterval
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall PaletteFX_InvertAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret


    ; $1D2A
Scroll_TrackCamera::
    ; TODO
    ; Arguments:
    ;   db ?
    Get8 h, wTilemap_Flags
    ld l, $02
    ld a, [bc]
    ld d, a
    XJump Scroll00_TrackCamera_XX

    ; $1D3D
Scroll_CenterCamera::
    ; Centers the camera
    ; Inputs:
    ;   e - x-position
    ;   d - y-position
    ; Outputs:
    ;   wTilemap_XTile = e - 5
    ;   wTilemap_YTile = d - 5
    ld l, -5
    ld a, l
    add e
    ld [wTilemap_XTile], a
    ld a, l
    add d
    ld [wTilemap_YTile], a
    jp Script_Start

    ; $1D4C
Cmd_Scroll_CameraSeekPos::
    ; TODO
    ; Does this loop until the camera is done panning?
    ; Arguments:
    ;   db  XTile target
    ;   db  YTile target
    ;   db ??? (? pan speed maybe)
    ld l, -5
    Script_ReadByteA
    add l
    ldh [hScript.SmallCounter], a  ;XTile target
    Script_ReadByteA
    add l
    ldh [hScript.BigCounter], a    ;YTile target
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Scroll_TrackCamera
    ret

    ; $1D6B
Cmd_Scroll_CameraSeekActor::
    ; TODO
    ; Arguments:
    ;   dw  Pointer to Actor structure
    Script_ReadWord hl
    ld de, Actor_ENUM_XTile
    add hl, de
    ; X
    ld e, -5
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, .XChecked  ; Cap a to a minimum 0 if the XTile value <= 4
        ld a, d
        add e
    .XChecked:
    ld [hScript.SmallCounter], a

    ; Y
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, .YChecked  ; Cap a to a minimum of 0 if the YTile value <= 4
        ld a, d
        add e
    .YChecked:
    ld [hScript.BigCounter], a

    Set16 hScript.Frame, bc
    Set16_M hScript.State, Scroll_TrackCamera
    ret

    ; $1DA4
Cmd_Scroll_TransplantTile::
    ; Set a single tile of the metatilemap/collisionmap
    ; Ends the frame
    ; Arguments:
    ;   db  Y coordinate
    ;   db  X coordinate
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  New collisionmap id
    ;   db  New metatilemap id
    Script_ReadByte e ; Y coordinate
    Script_ReadByte d ; X coordinate
    Script_ReadWord hl
    SwitchRAMBank BANK(wCollisionMap)
    Script_ReadByte_V [hl]
    SwitchRAMBank BANK(wMetatilemap)
    Script_ReadByte_V [hl]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XJump ScrollXX_UpdateTile

    ; $1DE1
    ; TODO
    ; Not sure how this is different from Cmd_Scroll_TransplantTile but I guess it is somehow related to the mask
    Script_ReadByte e ; Y coordinate
    Script_ReadByte d ; X coordinate
    Script_ReadWord hl
    push de
    SwitchRAMBank $06
    Script_ReadByte e
    SwitchRAMBank $05
    ld [hl], e
    SwitchRAMBank $04
    Script_ReadByte e
    SwitchRAMBank $03
    ld [hl], e
    pop de
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XJump ScrollXX_UpdateTile

    ; $1E30
Cmd_Scroll_HeroSetCamera::
    ; Instantly centers camera on hero
    ; Arguments:
    ;   None
    Get8 e, wActor_Hero.XTile
    Get8 d, wActor_Hero.YTile
    Set8 wTilemap_XTileOffset, $08
    Set8 wTilemap_YTileOffset, $08
    jp Scroll_CenterCamera

    ; $1E45
Cmd_Scroll_ScrollMap::
    ; TODO
    ; Arguments:
    ;   {
    ;       db  Number of frames
    ;       db  X-scroll per frame
    ;       db  Y-scroll per frame
    ;   } X N
    ;   db $00 -> End of instructions
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start

        ldh [hScript.SmallCounter], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        Script_ReadByte_V l
        ld a, [wTilemap_XDelta]
        add l
        ld [wTilemap_XDelta], a
        Script_ReadByte_V l
        ld a, [wTilemap_YDelta]
        add l
        ld [wTilemap_YDelta], a
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextInstruction
        .NotEndOfLoop
            ldh [hScript.SmallCounter], a
            ret
        .PrepNextInstruction:
            ; Loop is over, read the next instruction
            Set16 hScript.Frame, bc
            Set16_M hScript.State, Cmd_Scroll_ScrollMap
            ret

    ; $1E8E
Cmd_Scroll_SetCamera::
    ; Arguments:
    ;   db      XPos
    ;   db      YPos
    Script_ReadByte e  ; XCenter
    Script_ReadByte d  ; YCenter
    ld a, $08
    ld [wTilemap_XTileOffset], a
    ld [wTilemap_YTileOffset], a
    jp Scroll_CenterCamera

    ; $1E9F
Cmd_Scroll_TransplantMap::
    ; Copy a part of the metatilemap/collisionmap to a different part
    ; of the map
    ; Arguments:
    ;   dw  Source address from the metatilemap and collisionmap
    ;   db  Width (tiles) of portion to copy
    ;   db  Height (tiles) of portion to copy
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  Y-coordinate
    ;   db  X-coordinate
    Set16_M hScript.State, Scroll_TransplantMap_XX

    .Shared:
    ; Code is shared with Cmd_Scroll_TransplantMapMask because the Arguments are the same

        ld hl, wScript_Scroll_CopySource
        LdHLIBCI
        LdHLIBCI

        Script_ReadByteA
        ldh [hScript.SmallCounter], a ; CopyWidthCounter
        ldh [hScript.BigCounter], a   ; CopyWidth

        Script_ReadByte_V [wScript_Scroll_CopyHeightCounter]

        ld hl, wScript_Scroll_CopyDest
        LdHLIBCI
        LdHLIBCI

        LdHLIBCI ;wScript_Scroll_CopyYCoord
        LdHLIBCI ;wScript_Scroll_CopyXCoord

        Set16 hScript.Frame, bc
        ld hl, hScript.Bank ;Set the upper bit to run Scroll_TransplantMap_XX or Scroll_TransplantMapMask_XX next frame (depending on which Cmd was run)
        set 7, [hl]
        ret

    ; $1EDA
Cmd_Scroll_TransplantMapMask::
    ; With a map mask loaded via Cmd_Load_MapMask,
    ; Copy a part of the map mask onto the real metatilemap and collisionmap
    ; Arguments:
    ;   dw  Source address from the map masks
    ;   db  Width (tiles) of portion to copy
    ;   db  Height (tiles) of portion to copy
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  Y-coordinate
    ;   db  X-coordinate
    Set16_M hScript.State, Scroll_TransplantMapMask_XX
    jp Cmd_Scroll_TransplantMap.Shared ; Code is shared with Cmd_Scroll_TransplantMap

    ; $1EE7
    Script_ReadByte_V e
    XJump Jump_001_45E6

    ; $1EF5
System_CopyScriptDataToBuffer::
    ; Copies data from a script function into a WRAM buffer
    ; Inputs:
    ;   bc = Copy header
    ;           ds 3            skipped
    ;           dw              copysize
    ;           ds copysize     raw script data
    ; Output:
    ;       copysize bytes are copied into wScript_Buffer
    ld l, c
    ld h, b
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld de, wScript_Buffer
    SwitchRAMBank BANK(wScript_Buffer)
    call MemMov
    Set16FF hScript.State, Script_Start
    Set16FF_V hScript.Frame, hl
    ret


    ; $1F1A
System_Script_SceneInit::
    ; Runs solely wScript_Master with the screen turned off, until wScript_SceneReady is set to 1
    PushROMBank
    xor a
    ld [wScript_SceneReady], a
    .Loop:
        Script_Do wScript_Master
        SwitchROMBank [wVBlank_Bank]
        Get16 hl, wVBlank_Func
        call CallHL
        ld a, [wScript_SceneReady]
        and a
        jr z, .Loop
    PopROMBank
    ret

    ; $1F50
Cmd_System_SceneUnknownNew::
    ; Re-initializes many aspects of the game
    ; I don't know the difference vs Cmd_System_SceneNew. TODO
    ; Arguments:
    ;   None
    call ScreenHide
    call Interrupt_Timer_Start

    Set16_M hScript_CurrentAddress, wScript_Master
    Set16_M hScript.State, Script_Start
    call Script_Close ;Fake close the script to overwrite the data with the new wScript_Master
    
    call System_Init
    call Interpreter_ReInit ;Disable Scroll and Text scripts
    Script_Init wScript_System ;Disable System script

    StackInit

    call System_Script_SceneInit

    Set8 wTilemap_Width, $20
    ld [wTilemap_Height], a
    ld [wTilemap_HStop], a
    ld [wTilemap_VStop], a
    XCall Tilemap_Clamp

    StackInit
    call ScreenShow
    jp Game_Loop

    ; $1FAF
    ld hl, $C9FC
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    push bc
    XCall Unknown_GetNameAndGiveItem
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1FD4
    ld hl, $C9FC
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    push bc
    XCall Call_007_7465
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1FF9
Cmd_System_LoadGame::
    ; Loads the data saved in the saveslot to initialize the game
    ; Jumps to the script pointed to by xLoad_ScriptFrame
    ; If xLoad_ScriptFrame is null, instead of jumping, it will
    ; simply continue reading the next instruction
    ;
    ; Arguments:
    ;   None
    ; Outputs:
    ;   wHero_DoorX < xLoad_HeroXTile
    ;   wHero_DoorY < xLoad_HeroYTile
    ;   If xLoad_ScriptFrame is non-zero
    ;       hScript.Bank < xLoad_ScriptBank
    ;       bc < xLoad_ScriptFrame
    ;       Jump to the new location
    ;   Else
    ;       Keep reading in the same frame
    Battery_SetBank "XRAM Gamestate"
    Battery_On

    Mov8 wHero_DoorX, xLoad_HeroXTile
    Mov8 wHero_DoorY, xLoad_HeroYTile

    Get8 e, xLoad_ScriptBank
    Get16_V hl, xLoad_ScriptFrame
    Battery_Off
    ld a, h
    or l
    jr z, .Finally ; Do not update bc if the frame is 0000. i.e. read the next command

        ; Update the frame if it is non-null
        ld a, e
        ldh [hScript.Bank], a
        SwitchROMBank a

        ld c, l
        ld b, h

    .Finally:
        jp Script_Start

    ; $2035
Cmd_System_CopyLoadGame::
    ; This is used to load the game
    ; A backup of the current saveslot is saved in the other saveslot
    ; then the game is loaded (Cmd_System_LoadGame)
    ; Arguments:
    ;   None
    push bc
    XCall Battery_LoadGame
    pop bc
    jp Cmd_System_LoadGame

    ; $2045
    push bc
    XCall Call_003_50D0
    pop bc
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $205E
Cmd_System_MusicMenu::
    ; Todo
    ; Arguments:
    ;   dw      N = data size
    ;   ds N    raw data of size N
    ;       db  X = number of entries
    ;       X * {
    ;           db songid
    ;           ds $0D Song name (string)
    ;       }
    dec bc
    dec bc
    dec bc
    call System_CopyScriptDataToBuffer
    XCall Menu_Music_Open
    ret

    ; $2070
    push bc
    XCall Call_003_5AAE
    pop bc
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $2089
    XCall Call_004_5494
    SwitchROMBank [hScript.Bank]
    ld a, [$CD1F]
    and a
    jp nz, Cmd_Flow_LongJump

    inc bc
    inc bc
    inc bc
    push bc
    call System_CopyScriptDataToBuffer
    XCall Call_004_5926
    pop bc
    ld a, [$CD49]
    and a
    ret nz

    SwitchROMBank [hScript.Bank]
    jp Cmd_Flow_LongJump

    ; $20C8
    dec bc
    dec bc
    dec bc
    call System_CopyScriptDataToBuffer
    XCall Call_003_7025
    ret

    ; $20DA
    call System_CopyScriptDataToBuffer
    XCall Call_003_66BE
    ret

    ; $20E9
Cmd_System_NewGame::
    ; Modifies the memory to setup a new game
    ; Tony's default stats will be set and the inventory will be wiped
    ; In New Game Plus, Tony's stats, creatures and relics will be saved
    ;
    ; Arguments:
    ;   db    0 = New Game
    ;         1 = New Game Plus (technically, any non-zero value will do)
    Set16FF hScript.State, Script_Start
    Script_ReadByteA
    and a
    Set16FF_V hScript.Frame, bc
    SwitchROMBank BANK(SystemXX_NewGameInit)
    jp z, SystemXX_NewGameInit
    jp SystemXX_NewGamePlusInit

    ; $2108
Cmd_System_SaveGame::
    ; Saves the game
    ; Arguments:
    ;   db  If non-zero, Tony will be healed right before saving - todo in practice is this =1?
    ; TODO - unknown parameters
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    Set8 $A017, $01 ; TODO
    Mov8 xLoad_HeroXTile, wActor_Hero.XTile
    Mov8 xLoad_HeroYTile, wActor_Hero.YTile

    Battery_SetBank "XRAM Creatures"
    Script_ReadByteA
    and a
    jr z, .SkipHeal
        Mov16_V xCreature_00_Hero.CurEnergy, xCreature_00_Hero.MaxEnergy
    .SkipHeal:
    push bc
    XCall Battery_SaveGame
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $2158
Cmd_System_SceneNew::
    ; Re-initializes many aspects of the game
    ; Arguments:
    ;   None
    call ScreenHide
    call Interrupt_Timer_Start

    Set16_M hScript_CurrentAddress, wScript_Master
    Set16_M hScript.State, Script_Start
    call Script_Close ;Fake close the script to overwrite the data with the new wScript_Master
    
    xor a
    ld [wMenu_MainMenu_IsInOverworld], a

    call System_Init
    call Interpreter_ReInit
    Script_Init wScript_System

    StackInit

    call System_Script_SceneInit

    XCall Tilemap_Position

    StackInit

    Set8 $C6F3, $01

    call ScreenShow
    jp Game_Loop

    ; $21B2
Cmd_System_SceneReady::
    ; Sets [wScript_SceneReady], quitting the single script loop and turning on the LCD
    Set8 wScript_SceneReady, $01
    Set16_M hScript.State, Script_Start
    ret

    ; $21C2
Cmd_System_SetItemSpellMapError::
    ; Sets the script that will run when the user tries to use an item or spell outside of a battle
    ; By default, when the game is turned on, the script is set to Script_System_ItemSpellMapError ("I can't use my X here")
    ; Arguments:
    ;   BankAddress - script
    ld hl, wMenu_MainMenu_ItemSpellMapDefaultScript
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start

    ; $21D1
Cmd_System_SaveLocation::
    ; Save the hero's position and determines from where the script should start upon loading the game
    ; Arguments:
    ;   BankAddress - xLoad_ScriptBank + xLoad_ScriptFrame
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Mov8 xLoad_HeroXTile, wActor_Hero.XTile
    Mov8 xLoad_HeroYTile, wActor_Hero.YTile
    Script_ReadByte_V [xLoad_ScriptBank]
    Script_ReadByte_V [xLoad_ScriptFrame]
    Script_ReadByte_V [xLoad_ScriptFrame + 1]
    Battery_Off
    jp Script_Start

    ; $2200
Cmd_System_Reboot::
    ; Reboots the game
    ; Arguments:
    ;   None
    jp Boot_SoftReset


    ; $2203
INCLUDE "source/engine/textbox/textbox_00.asm"


    ; $254F
Cmd_Trigger_ToggleAlways::
    ; Sets up a toggleable trigger
    ; The trigger script will immediately run every time upon scene loading
    ;     and will re-run upon being triggered again
    ;
    ; Config:
    ;   Off - Update the tilemap to show "Off" state and run the subsequent script
    ;   On - Update the tilemap to show "On" state and run the TurnOn script
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the TurnOn script
    ;   On - Turn varbit Off, update the tilemap to "Off" and run the subsequent script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - TurnOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       db e = pattern id Off state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments - BUG - the size of the arguments is actually $000A!
                 ;    Trigger_Ready is supposed to update hScript.Frame to point to the command after
                 ;    this one (default Off script). However, since the size is wrong, hScript.Frame
                 ;    becomes misaligned! To fix this bug, instead of fixing the size of the arguments
                 ;    so that Trigger_Ready can work properly, what they did was update hScript.Frame
                 ;    a second time in the child function, Trigger_ToggleResetUpdateTilemap
                 ;    In the On case, hScript.Frame gets updated to the TurnOn script and so this bug does not happen
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Trigger_ToggleResetUpdateTilemap
        .ConfigOn:
            jp Trigger_ToggleSetUpdateTilemapAndJump


    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_ToggleSetVarbit_UpdateTilemapAndJump
        .RuntimeOn:
            jp Trigger_ToggleResetVarbit_UpdateTilemap

    ; $256B
Cmd_Trigger_ToggleOnce::
    ; Sets up a toggleable trigger that is only activated upon triggering
    ; The trigger script will not immediately run upon scene loading
    ;
    ; Config:
    ;   Off - Update the tilemap to show "Off" state
    ;   On - Update the tilemap to show "On" state
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the TurnOn script
    ;   On - Turn varbit Off, update the tilemap to "Off" and run the subsequent script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - TurnOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       db e = pattern id Off state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments - BUG - Wrong size! (actually $000A) - see explanation in Cmd_Trigger_ToggleAlways
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        Trigger_CheckVarbit
        Set16FF hScript.State, Cmd_Flow_End
        .ConfigOff:
            jp z, Trigger_ToggleResetUpdateTilemap
        .ConfigOn:
            ld de, $0003
            add hl, de
            ld a, [hl+] ; pattern id On state
            ld e, a
            inc hl
            jp Trigger_UpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_ToggleSetVarbit_UpdateTilemapAndJump
        .RuntimeOn:
            jp Trigger_ToggleResetVarbit_UpdateTilemap

    ; $2596
Cmd_Trigger_TriggerAlways::
    ; Sets up a one-way off->on trigger that is activated upon triggering
    ; In addition, if the trigger was previously activated,
    ;   the trigger will be activated every time upon scene loading
    ;
    ; Config:
    ;   Off - Nothing
    ;   On - Update the tilemap to show "On" state, then run the subsequent script right away
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the subsequent script
    ;   On - Keep varbit On and run the AlreadyOn script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - AlreadyOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Cmd_Flow_End
        .ConfigOn:
            ; Continue running the script
            jp Trigger_TriggerSetUpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_TriggerSetVarbit_UpdateTilemap
        .RuntimeOn:
            ld b, h
            ld c, l
            jp Cmd_Flow_LongJump

    ; $25B4
Cmd_Trigger_TriggerOnce::
    ; Sets up a one-way off->on trigger that is only activated upon triggering
    ;
    ; Config:
    ;   Off - Nothing
    ;   On - Update the tilemap to show "On" state
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the subsequent script
    ;   On - Keep varbit On and run the AlreadyOn script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - AlreadyOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Cmd_Flow_End
        .ConfigOn:
            Set16FF hScript.State, Cmd_Flow_End
            jp Trigger_TriggerSetUpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_TriggerSetVarbit_UpdateTilemap
        .RuntimeOn:
            ld b, h
            ld c, l
            jp Cmd_Flow_LongJump

    ; $25DA
Cmd_Trigger_Treasure::
    ; TODO
    ; Treasure chest object
    ; This command sets the reading frame to null after it is done
    ;
    ; Config:
    ;   Off - Do nothing and end the reading frame
    ;   On - Update the tilemap to show open chest and end the reading frame
    ; Runtime:
    ;   Off - TODO
    ;   On - Empty, nooo! and end the reading frame

    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   db Item type (relic, other) TODO
    ;   db Item id
    ;   Trigger_UpdateTilemap
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0007 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        inc hl
        inc hl
        Trigger_CheckVarbit
        .ConfigClosed:
            jp z, Cmd_Flow_End
        .ConfigEmpty:
            Set16FF hScript.State, Cmd_Flow_End
            ld e, TRIGGER_TREASUREOPEN
            jp Trigger_UpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        jp nz, .RuntimeEmpty
        .RuntimeClosed:
            push bc
            push de
            Sound_Request_StartSFX0 SFXID_TreasureChest
            ld a, [hl+] ;2 ;func   TODO
            ld [$C9FC], a
            ld a, [hl+] ;3 ;param
            ld [$C9FD], a
            ld a, $01   ;quantity of item
            ld [$C9FE], a
            push hl
            XCall Unknown_GetNameAndGiveItem
            SwitchROMBank [hScript.Bank]
            pop hl
            Set16_M wText_StringFormatFrame, wText_StringBuffer
            ld a, [$C9FD] ;success or fail (inventory full)
            and a
            jr z, .InventoryFull
            .GetTreasure:
                ; Tony got a⭍🛑; 🔊🅐🛑
                Set8FF hScript.Bank, $22  ;TODO - Tony got a⭍🛑; 🔊🅐🛑
                Set16FF hScript.Frame, $4048
                pop de
                pop bc
                Trigger_SetVarbit
                ld e, TRIGGER_TREASUREOPEN
                jp Trigger_UpdateTilemap
        .RuntimeEmpty:
            ; Empty! Noooo!!
            Set8FF hScript.Bank, $22  ;TODO - empty, nooo!
            Set16FF hScript.Frame, $405B ; "_TXT_ITS_EMPTY"
            ret
            .InventoryFull:
                ; Tony can't hold⭍🛑; another🅐🛑; 🔊🅐🛑
                pop af
                pop af
                Set8FF hScript.Bank, $22
                Set16FF hScript.Frame, $4074 ;TODO Tony can't hold another
                ret

    ; $2674
Trigger_TriggerSetVarbit_UpdateTilemap::
    ; For Cmd_Trigger_TriggerOnce and Cmd_Trigger_TriggerAlways
    ;
    ; Turns a varbit on, and then runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - AlreadyOn script (unused)
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           dw tilemap address
    ;
    Trigger_SetVarbit
    ;jp Trigger_TriggerSetUpdateTilemap

    ; $2680
Trigger_TriggerSetUpdateTilemap::
    ; For Cmd_Trigger_TriggerOnce and Cmd_Trigger_TriggerAlways
    ;
    ; Runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - AlreadyOn script (unused)
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           dw tilemap address
    ;
    ld de, $0003 ;skip AlreadyOn script
    add hl, de
    Get8 e, hl+ ; pattern id On state
    jp Trigger_UpdateTilemap

    ; $2689
Trigger_ToggleSetVarbit_UpdateTilemapAndJump::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, On position
    ;
    ; Turns a varbit on
    ; Updates the frame to continue reading from the TurnOn script
    ; Runs Trigger_UpdateTilemap with On state
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Trigger_SetVarbit
    ;jp Trigger_ToggleSetUpdateTilemapAndJump

    ; $2695
Trigger_ToggleSetUpdateTilemapAndJump::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, On position
    ;
    ; Updates the frame to continue reading from the TurnOn script
    ; Runs Trigger_UpdateTilemap with On state
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Set8 hScript.Bank, [hl+]
    Get8 c, hl+
    Get8 b, hl+
    Set16 hScript.Frame, bc

    Get8 e, hl+ ; pattern id On state
    inc hl
    jp Trigger_UpdateTilemap

    ; $26AB
Trigger_ToggleResetVarbit_UpdateTilemap::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, Off position
    ;
    ; Turns a varbit off, and then runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Trigger_FlipVarbit
    ; jp Trigger_ToggleResetUpdateTilemap

    ; $26B7
Trigger_ToggleResetUpdateTilemap::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, Off position
    ;
    ; Runs Trigger_UpdateTilemap with Off state
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    ld de, $0004
    add hl, de
    Get8 e, hl+ ; pattern id Off state

    inc hl
    inc hl
    Set16 hScript.Frame, hl ; Fixes the bug in Cmd_Trigger_ToggleAlways and Cmd_Trigger_ToggleOnce
    dec hl
    dec hl

    jp Trigger_UpdateTilemap

    ; $26CC
Trigger_UpdateTilemap::
    ; Updates the trigger tile to a new tile id in wMetatilemap
    ; If the screen is on, also updates the tilemap to display the new tile id
    ; Inputs:
    ;   e - new tile id
    ;   [hl] - tilemap address

    ; Update the tile in wMetatilemap
    SwitchRAMBank BANK(wMetatilemap)
    DerefHL
    ld [hl], e

    ; End if screen is not yet visible as the tilemap has not yet been setup
    ld a, [wScreenVisible]
    and a
    ret z

    ; Setup a VBlank function to update the tilemap
    Get8 e, wTrigger_XTile
    Get8 d, wTrigger_YTile
    Get16 hl, wTrigger_TilemapAddress
    ld c, [hl] ;tile id (= Input e)
    XCall Tilemap_Ready_DrawTile
    ; de = VRAM tilemap dest addr
    ; hl = copy source address (address within wPattern)
    Set16 wTilemap_VBlank_DestAddress, de
    Set16 wTilemap_VBlank_SourceAddress, hl

    Set8 wVBlank_Bank, BANK(Tilemap_VBlank_Drawtile2)
    Set16_M wVBlank_Func, Tilemap_VBlank_Drawtile2
    ret

    ; $2718
Trigger_Ready::
    ; For triggers, fetches the corresponding XRAM var to be interpreted
    ; Moves the frame past the trigger command
    ;
    ; Inputs:
    ;   bc = frame
    ;       dw - address of XRAM varbit
    ;       db - mask of XRAM varbit
    ;   hl = number of parameter bytes in the command that called this function
    ; Outputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; Move the frame past the current command
    add hl, bc
    Set16 hScript.Frame, hl
    Set16_M hScript.State, Script_Start

    ; Get the address, value and mask of the XRAM var
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld l, c
    ld h, b
    Get8 e, hl+
    Get8 d, hl+
    Get8 c, de
    Get8 b, hl+
    Battery_Off
    ret

    ; $2747
Cmd_Ram_VarBitExpr::
    ; Gets a result from Expr_GetValue
    ; If nonzero, sets varbit to %1, else sets varbit to %0
    ;
    ; Arguments:
    ;   dw      VarBit address
    ;   db      VarBit mask
    ;   Expr
    Script_ReadWord hl
    Script_ReadByte e
    push hl
    push de
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    ld a, e
    or d
    pop de
    pop hl
    jr z, .False
    .True:
        ; Set VarBit to %1
        ld a, [hl]
        or e
        ld [hl], a
        Battery_Off
        jp Script_Start
    .False:
        ; Set VarBit to %0
        ld a, e
        cpl
        ld e, [hl]
        and e
        ld [hl], a
        Battery_Off
        jp Script_Start

    ; $277E
Cmd_Ram_VarByteExpr::
    ; Sets a VarByte to the value from Expr_GetValue
    ; Since Expr_GetValue returns a 16-bit value
    ; The top 8 bits are ignored
    ;
    ; Arguments:
    ;   dw      VarByte address
    ;   Expr
    Script_ReadWord hl
    push hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    pop hl
    ld [hl], e ;ignore the upper 8 bits
    Battery_Off
    jp Script_Start

    ; $279E
Cmd_Ram_VarWordExpr::
    ; Sets a VarWord to the value from Expr_GetValue
    ;
    ; Arguments:
    ;   dw      VarByte address
    ;   Expr
    Script_ReadWord hl
    push hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    Battery_Off
    jp Script_Start

    ; $27C0
Cmd_Ram_NextGameCount::
    ; Increments xGameCount by 1
    ; This also erases the temporary xScript_SaveBits and xScript_SaveVars
    ;
    ; Arguments:
    ;   None
    ;
    ; BUG - Does not verify that the right bank is loaded when doing the call
    ; Could this crash somehow - to investigate
    call Battery_NextGameCount
    jp Script_Start

    ; $27C6
Cmd_Ram_SetGameCount::
    ; Sets the xGameCount to a specified value.
    ; This also erases the temporary xScript_SaveBits and xScript_SaveVars
    ;
    ; Arguments:
    ;   dw      New xGameCount value
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Script_ReadWord de
    FSet16 xGameCount, de
    Battery_Off
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall Battery_SetGameCount
    ret

    ; $2801
Cmd_Ram_SetWramByte::
    ; Sets a byte at address X in WRAM bank Y
    ; Arguments:
    ;   dw      Address
    ;   db      WRAMBank
    ;   db      NewValue
    Script_ReadWord hl
    Script_ReadByteA
    SwitchRAMBank a ;Causes a ld a,a instruction
    ; BUG? Default WRAM bank is NOT restored, possibly causing misread data or corrupting data
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Script_Start

    ; $2815
Cmd_Ram_SetWramWord::
    ; Sets a word at address X in WRAM bank Y
    ; Arguments:
    ;   dw      Address
    ;   db      WRAMBank
    ;   dw      NewValue
    Script_ReadWord hl
    Script_ReadByteA
    SwitchRAMBank a ;Causes a ld a,a instruction
    ; BUG? Default WRAM bank is NOT restored, possibly causing misread data or corrupting data
    LdHLIBCI
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Script_Start

    ; $282C
Cmd_Ram_SetXramByte::
    ; Sets a byte at address X in XRAM (or close WRAM bank I guess, although the bank isn't set)
    ; Arguments:
    ;   dw      Address
    ;   db      NewValue
    Script_ReadWord hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [bc]
    ld [hl], a
    inc bc
    Battery_Off
    jp Script_Start

    ; $2849
Cmd_Ram_SetXramWord::
    ; Sets a word at address X in XRAM (or close WRAM bank I guess, although the bank isn't set)
    ; Arguments:
    ;   dw      Address
    ;   dw      NewValue
    Script_ReadWord hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    LdHLIBCI
    ld a, [bc]
    ld [hl], a
    inc bc
    Battery_Off
    jp Script_Start

    ; $2869
Cmd_Ram_AndXramByte::
    ; Applies a bitwise & at address X in XRAM (or WRAM0)
    ; Arguments:
    ;   dw      Address
    ;   db      Operand
    Script_ReadWord hl
    Script_ReadByte e
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]
    and e
    ld [hl], a
    Battery_Off
    jp Script_Start

    ; $2889
Cmd_Ram_OrXramByte::
    ; Applies a bitwise | at address X in XRAM (or WRAM0)
    ; Arguments:
    ;   dw      Address
    ;   db      Operand
    Script_ReadWord hl
    Script_ReadByte e
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]
    or e
    ld [hl], a
    Battery_Off
    jp Script_Start


    ; $28A9
Interpreter_ReInit::
    ; Sets wScript_Scroll and wScript_Text to Idle
    ; Disables Sync and Events
    Script_Init wScript_Scroll
    Script_Init wScript_Text
    xor a
    ld [wScript_SyncCurrent], a
    ld [wScript_SyncNext], a
    ld [wScript_SyncCount], a
    ld [wScript_MasterEventNextID], a
    ld [wScript_ScrollEventNextID], a
    ld [wScript_TextEventNextID], a
    ret

    ; $28E5
Interpreter_Update::
    ld hl, wScript_SyncNext
    ld a, [hl+]  ; wScript_SyncNext
    add [hl]     ; wScript_SyncCurrent     wScript_SyncCurrent +=  wScript_SyncNext
    jr nc, .SkipSyncCount
        ld a, [wScript_SyncCount]
        inc a
        ld [wScript_SyncCount], a
        xor a        ; Clear sync on overflow
    .SkipSyncCount:
    ld [hl-], a  ; wScript_SyncCurrent        Store new current sync
    xor a
    ld [hl], a   ; wScript_SyncNext           Erase pending sync
    ld hl, wScript_MasterEventNextID
    REPT 3 ; Master, Scroll, Text
        ld a, [hl+] ; EventNextID
        ld [hl-], a ; EventID                Set EventID
        xor a
        ld [hl+], a ; EventNextID            Erase nextID
        inc hl
    ENDR
    ret

    ; $290A
Script_Close::
    ; After calling Script_Play, save the current state back to [hScript_CurrentAddress]
    Get16 hl, hScript_CurrentAddress
    ldh a, [hScript.Bank]
    ld [hl+], a
    ldh a, [hScript.Frame]
    ld [hl+], a
    ldh a, [hScript.Frame+1]
    ld [hl+], a
    ldh a, [hScript.State]
    ld [hl+], a
    ldh a, [hScript.State+1]
    ld [hl+], a
    ldh a, [hScript.SmallCounter]
    ld [hl+], a
    ldh a, [hScript.BigCounter]
    ld [hl+], a
    ret


    ; $2928
Script_Open::
    ; Before calling Script_Play, copy the data from [hl] into HRAM and load the value of bc
    Set16 hScript_CurrentAddress, hl
    ld a, [hl+]
    ldh [hScript.Bank], a
    ld a, [hl+]
    ldh [hScript.Frame], a
    ld c, a
    ld a, [hl+]
    ldh [hScript.Frame+1], a
    ld b, a
    ld a, [hl+]
    ldh [hScript.State], a
    ld a, [hl+]
    ldh [hScript.State+1], a
    ld a, [hl+]
    ldh [hScript.SmallCounter], a
    ld a, [hl+]
    ldh [hScript.BigCounter], a
    ret



INCLUDE "source/engine/interrupt/interrupt.asm"


    ; $2AC8
INCLUDE "source/engine/text/text_00.asm"

    ; source/engine/trigger/trigger_00.s

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


    ; $2D14
Unpack_AttrTileRLE_To_LargeStaticTilemap::
    ; Decompresses [bc] into the two tilemaps, starting with Bank 1 then Bank 0
    ; The tilemaps are assumed to be full size
    ; Inputs
    ;   [bc] -> RLE-encoded attrmap/tilemap in sequence (encoded separately)
    ; Outputs:
    ;   RLE-encoded attrmap/tilemap decompressed directly into $9800
    ld h, b
    ld l, c
    Set8 rVBK, $01
    ld de, $9800
    call RLE_Decompress
    xor a
    ld [rVBK], a
    ld de, $9800
    call RLE_Decompress
    ret

    ; $2D2C
Unpack_TileAttr_To_StaticTilemap::
    ; Copies an uncompressed tilemap then attrmap of dimensions e x d from [bc] to VRAM tilemap [hl]
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of buffer
    ;   hl = Destination
    ; Outputs:
    ;   tilemap of dimensions e x d copied from dimensionless [bc] to tilemap [hl]
    push hl
    push de
    xor a
    ld [rVBK], a
    call .CopyMap

    pop de
    pop hl
    Set8 rVBK, $01
    call .CopyMap
    ret

    .CopyMap:
        ; Copies a tilemap or attrmap from [bc] to [hl] of dimensions e x d
        .LoopHeight:
            push de
            .LoopWidth: ;Loop e times
                LdHLIBCI
                dec e
                jr nz, .LoopWidth
            pop de
            ; Jump to the next row of the tilemap (hl += $20-width)
            ld a, $20
            sub e
            add l
            ld l, a
            ld a, $00
            adc h
            ld h, a

            dec d
            jr nz, .LoopHeight
        ret

    ; $2D55
Unpack_TileAttr_To_XFlippedStaticTilemap::
    ; Copies an uncompressed tilemap then attrmap of dimensions e x d from [bc] to VRAM tilemap [hl]
    ; Each row's bytes are flipped horizontally (Last byte in the row becomes first byte, and so on)
    ; Vertically unchanged
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of buffer
    ;   hl = Destination
    push hl
    push de
    xor a
    ld [rVBK], a
    call .CopyMap

    pop de
    pop hl
    Set8 rVBK, $01
    call .CopyMap
    ret

    .CopyMap:
        .LoopHeight:
            push de
            ; bc += width (go to the end of the row)
            ld a, e
            add c
            ld c, a
            ld a, $00
            adc b
            ld b, a

            .LoopWidth:
                ; flip the row by copying backwards
                dec bc
                ld a, [bc]
                ld [hl+], a
                dec e
                jr nz, .LoopWidth
            pop de

            ; bc += width (go to the start of the next row)
            ld a, e
            add c
            ld c, a
            ld a, $00
            adc b
            ld b, a

            ; hl += $20 - width (go to the next row of the tilemap)
            ld a, $20
            sub e
            add l
            ld l, a
            ld a, $00
            adc h
            ld h, a

            dec d
            jr nz, .LoopHeight
        ret


    ; $2D8C
Unpack_AttrTileRLE_To_TileAttrBuffer::
    ; Decompresses attrmap and then tilemap of size d*e at address [bc]
    ; Stores the tilemap at wUnpack_Buffer and the attrmap at wUnpack_Buffer+d*e
    ; Inputs:
    ;   The bank is assumed to be BANK(wUnpack_Buffer)
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap (unused but must be preserved)
    ; Outputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of uncompressed tilemap/attrmap (=wUnpack_Buffer)
    ;   hl = Destination on tilemap
    push hl
    push de
    push bc
    ; The data is stored as attrmap/tilemap, but we want to switch the order
    ; Calculate the position of the attrmap (to be right after tilemap)
    ld b, d
    ld c, e
    call Math_Mult
    ld de, wUnpack_Buffer
    add hl, de
    ld d, h
    ld e, l

    pop hl
    call RLE_Decompress

    ; The tilemap is simply at the start of the buffer
    ld de, wUnpack_Buffer
    call RLE_Decompress

    ld bc, wUnpack_Buffer
    pop de
    pop hl
    ret

    ; $2DAA 
Unpack_AttrTileRLE_To_StaticTilemap::
    ; Decompresses a tilemap of dimensions e x d located at [bc]
    ; and inserts it into the tilemap at hl
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap
    PushRAMBank
    SwitchRAMBank BANK(wUnpack_Buffer)
    call Unpack_AttrTileRLE_To_TileAttrBuffer
    call Unpack_TileAttr_To_StaticTilemap
    PopRAMBank
    ret

    ; $2DC3
Unpack_AttrTileRLE_To_XFlippedStaticTilemap::
    ; Decompresses a tilemap of dimensions e x d located at [bc]
    ; and inserts it into the tilemap at hl.
    ; Each row's bytes are flipped horizontally (Last byte in the row becomes first byte, and so on)
    ; Vertically unchanged
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap
    PushRAMBank
    SwitchRAMBank BANK(wUnpack_Buffer)
    call Unpack_AttrTileRLE_To_TileAttrBuffer
    call Unpack_TileAttr_To_XFlippedStaticTilemap
    PopRAMBank
    ret

    ; $2DDC
Unpack_CollisionMap::
    ; Loads an RLE-compressed collisionmap
    ; Inputs:
    ;   hl = collisionmap file with metadata
    ;       db MapWidth
    ;       dw Uncompressed file size (unused)
    ;       ds RLE-encoded collisionmap
    ; Outputs:
    ;   wMapWidth set to MapWidth
    ;   wCollisionMap loaded
    PushRAMBank
    SwitchRAMBank BANK(wCollisionMap)
    ld h, b
    ld l, c
    xor a
    ld [wColl_XMove], a
    ld [wColl_YMove], a
    Set8 wMapWidth, [hl+]

    .Decompress:
    ; The code here is shared between Unpack_CollisionMap, Unpack_MaskCollisionmap and Unpack_MaskMetatilemap

    ASSERT LOW(wCollisionMap) == LOW(wMaskCollisionMap)    ; The loading code for Collisionmaps, Collisionmap masks and Metatilemap masks is shared, and so they all need to have
    ASSERT HIGH(wCollisionMap) == HIGH(wMaskCollisionMap)  ; the same address to avoid problems
    ASSERT LOW(wCollisionMap) == LOW(wMaskMetatilemap)
    ASSERT HIGH(wCollisionMap) == HIGH(wMaskMetatilemap)

    ; Skip uncompressed file size - this is now ignored
    ; Previously this was ld c, [hl+]; ld b, [hl+]; call MemMov
    inc hl
    inc hl
    ld de, wCollisionMap ; = wMaskMetatilemap = wMaskCollisionMap
    call RLE_Decompress
    PopRAMBank
    ret

    ; $2E04
Unpack_MaskCollisionmap::
    ; Loads an RLE-compressed collisionmap into the mask bank.
    ; This map can then be later copied over the real collisionmap
    ; Note that wMaskCollisionMap shares space with wBattery_CopyBuffer and wUnpack_Buffer,
    ; and so this data could be overwritten by another function.
    ; Inputs:
    ;   hl = collisionmap file with metadata
    ;       db MapWidth - ignored
    ;       dw Uncompressed file size (unused)
    ;       ds RLE-encoded collisionmap
    ; Outputs:
    ;   wMaskCollisionMap loaded
    PushRAMBank
    SwitchRAMBank BANK(wMaskCollisionMap)
    ld h, b
    ld l, c
    inc hl ; Ignore MapWidth
    jp Unpack_CollisionMap.Decompress

    ; $2E15
Unpack_Scene::
    ; Loads multiple data files of a scene
    ;
    ; Inputs:
    ;   bc - pointer to data header of scene file
    ;       AddressBank of Background palette
    ;       AddressBank of BitmapSet
    ;       AddressBank of Pattern
    ;       AddressBank of MetaTilemap
    ;       AddressBank of CollisionMap
    ;       
    Script_Unpack Unpack_Palette_Background
    Script_Unpack Unpack_BitmapSet
    Script_Unpack Unpack_Pattern
    Script_Unpack Unpack_MetaTilemap
    Script_Unpack Unpack_CollisionMap
    ret

; source/engine/unpack/unpack_palette.s

; Functions to load palettes from data

    ; $2EB6
Unpack_Palette_Palettes::
    ; Palettes are stored uncompressed in raw format (4*Color)
    ; Copies X palettes from a source to destination
    ; Inputs:
    ;   bc -> Source address
    ;   hl -> Target address
    ;   e -> Number of Colors by which to offset hl
    ;   a -> Number of Colors to copy
    ; Outputs:
    ;   Copies a number of Colors from [bc] to [hl+2e]

    ;hl += 2*e
    ld d, a
    ld a, e
    add a
    ld e, a
    ld a, d
    ld d, $00
    add hl, de

    ; e = Number of colors
    ld e, a
    call Unpack_Palette_Colors ;a = Number of Colors;
    ret

    ; $2EC3
Unpack_Palette_Background::
    ; Loads a file containing 8 background palettes
    ; Inputs:
    ;   bc = address of the palette file ($40 bytes)
    ; Outputs:
    ;   wPalette_BaseBuffers.Background <-----\
    ;   wPalette_AnimBuffers.Background <------| <-  $40 bytes copied from [bc]
    ;   Palette memory (rBCPS) <--------------/

    ; First, copy from [bc] into wPalette_BaseBuffers.Background
    ld hl, wPalette_BaseBuffers.Background
    ld e, $00       ; No offset
    ld a, $20       ; Complete palette set ($20 Colors)
    call Unpack_Palette_Palettes
    ; Then, copy from wPalette_BaseBuffers.Background to wPalette_AnimBuffers.Background
    Palette_SetPackedInterval 0,8
    XCall PaletteFX_RefreshAnimBuffer
    ; Then, push the background palette to palette memory
    XCall PaletteVB_UpdateBackgroundPalettes
    ret


    ; $2EE9
Unpack_Palette_Sprite::
    ; Loads a file containing 8 sprite palettes
    ; Inputs:
    ;   bc = address of the palette file ($40 bytes)
    ; Outputs:
    ;   wPalette_BaseBuffers.Sprite <-----\
    ;   wPalette_AnimBuffers.Sprite <------| <-  $40 bytes copied from [bc]
    ;   Palette memory (rOCPS) <----------/

    ; First, copy from [bc] into wPalette_BaseBuffers.Sprite
    ld hl, wPalette_BaseBuffers.Sprite
    ld e, $00       ; No offset
    ld a, $20       ; Complete palette set ($20 Colors)
    call Unpack_Palette_Palettes
    ; Then, copy from wPalette_BaseBuffers.Sprite to wPalette_AnimBuffers.Sprite
    Palette_SetPackedInterval 8,8
    XCall PaletteFX_RefreshAnimBuffer
    ; Then, push the sprite palette to palette memory
    XCall PaletteVB_UpdateSpritePalettes
    ret

    ; $2F0F
Unpack_Palette_Colors::
    ; Colors are stored uncompressed in raw format (16-bit Color)
    ; Copies e Colors from [bc] to [hl]
    ; Inputs:
    ;   bc = Source address
    ;   hl = Target address
    ;   e = Number of Colors to copy
    .Loop:
        LdHLIBCI
        LdHLIBCI
        dec e
        jr nz, .Loop
    ret

    ; $2F19
Unpack_Pattern::
    ; Decompresses the current map's pattern
    ; The total size is $800, and defines $100 metatiles
    ; First, at $D000 you have (4 bytes)*$100 of tile numbers
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ; Next, at $D400, you ave (4 bytes)*$100 of tile attributes
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ; Inputs:
    ;   bc = pointer to compressed pattern data
    ; Outputs:
    ;   wPattern = decompressed pattern data
    ld h, b
    ld l, c
    PushRAMBank
    SwitchRAMBank BANK(wPattern)
    ld de, wPattern
    ld bc, $1000 ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress
    PopRAMBank
    ret

    ; $2F37
Unpack_MetaTilemap::
    ; Decompresses the metatilemap
    ; Also initializes various tilemap variables
    ; Inputs:
    ;   bc = Metatilemap file
    ;       db wTilemap_Width
    ;       dw wTilemap_YMapPad
    ;       db wTilemap_HStop
    ;       db wTilemap_VStop
    ;       dw Uncompressed size
    ;       ds raw RLE-compressed data
    ; Outputs:
    ;   TODO
    PushRAMBank
    SwitchRAMBank BANK(wMetatilemap)
    ld h, b
    ld l, c

    xor a
    ld [wTilemap_XTile], a
    ld [wTilemap_YTile], a
    ld [wTilemap_XTileOffset], a
    ld [wTilemap_YTileOffset], a
    ld [wTilemap_RowTrig], a
    ld [wTilemap_ColTrig], a
    ld [wTilemap_RowPhase], a
    ld [wTilemap_ColPhase], a
    ld [wTilemap_XDelta], a
    ld [wTilemap_YDelta], a

    ld a, %01000100
    ld [wTilemap_Flags], a

    Set8 wTilemap_Width, [hl+]

    Set8 wTilemap_YMapPad, [hl+]
    Set8 wTilemap_YMapPad+1, [hl+]

    Set8 wTilemap_HStop, [hl+]

    ld a, [hl+]
    ld [wTilemap_VStop], a
    add $0A
    ld [wTilemap_Height], a

    ; Skip uncompressed file size
    ; Previously this was ld c, [hl+]; ld b, [hl+]; call MemMov
    inc hl
    inc hl

    ld de, wMetatilemap
    call RLE_Decompress

    PopRAMBank

    ld hl, wTilemap_YPadTable ;tilemap ypad table
    xor a
    ld [hl+], a
    ld [hl+], a

    ld a, [wTilemap_Width]
    ld b, a
    ld c, $08
    ld de, $0000

    .Loop:
        ; de += wTilemap_Width
        ; wTilemap_YPadTable <- de
        ld a, b
        add e
        ld e, a
        ld [hl+], a
        ld a, $00
        adc d
        ld d, a
        ld [hl+], a

        dec c
        jr nz, .Loop

    ret


    ; $2FAC
Unpack_MaskMetaTilemap::
    ; Loads an RLE-compressed metatilemap into the mask bank.
    ; This map can then be later copied over the real metatilemap
    ; Note that wMaskMetatilemap shares space with wBackgroundCharsBBuffer and wBackgroundCharsCBuffer,
    ; and so this data could be overwritten when the player opens the start menu!
    ; Inputs:
    ;   bc = Metatilemap file
    ;       db wTilemap_Width - ignored
    ;       dw wTilemap_YMapPad - ignored
    ;       db wTilemap_HStop - ignored
    ;       db wTilemap_VStop - ignored
    ;       dw Uncompressed size (unused)
    ;       ds raw RLE-compressed data
    PushRAMBank
    SwitchRAMBank BANK(wMaskMetatilemap)
    ld h, b
    ld l, c
    ld de, $0005 ; skip the header data, as this is loaded by Unpack_MetaTilemap
    add hl, de
    jp Unpack_CollisionMap.Decompress

    ; $2FC0
Unpack_BitmapSet::
    ; [bc] points to the beginner of a bitmaps set (BITSET)
    ; This function will copy over all the tilesets from ROM to VRAM
    ; Inputs:
    ;   [bc] -> Pointer to beginning of BITSET
    ; Ouputs:
    ;   All tilesets copied into VRAM
    ;   bc will be shifted to the end of the bitmaps set

    ; First, do bank 0
    .VRAM0:
        ; The first byte is the number of entries
        xor a
        ld [rVBK], a
        ld a, [bc]
        inc bc
        and a
        jr z, .VRAM1
        ld d, a
        .LoopBitmap0:
            push de
            call Unpack_BitmapEntry
            pop de
            dec d
            jr nz, .LoopBitmap0
    ; Do the same for bank 1
    .VRAM1:
        Set8 rVBK, $01
        ld a, [bc]
        inc bc
        and a
        ret z
        ld d, a
        .LoopBitmap1:
            push de
            call Unpack_BitmapEntry
            pop de
            dec d
            jr nz, .LoopBitmap1
        ret

    ; $2FE5
Unpack_BitmapEntry::
    ; Takes a single entry from a tilesetsHeader and copies from Source to Target given a width in tiles and height in tiles.
    ; Inputs:
    ;   [bc] -> bc      Destination VRAM Tile Address
    ;   [bc+2] -> hl    Source ROM Tile Address
    ;   [bc+4] -> e     Tiles per row ($10 usually)
    ;   [bc+5] -> d     Number of rows
    ;   [bc+6] -> a     Source ROM Bank
    ; Output:
    ;   bc points to after the entry
    ;   d rows of e tiles copied from hl to bc

    PushROMBank
    push bc
    Script_ReadWord hl
    push hl
    Script_ReadWord hl ; Source address
    Script_ReadByte e  ; width
    Script_ReadByte d  ; height
    ld a, [bc]
    SwitchROMBank a
    pop bc             ; Destination address

    ; Copy d rows
    .CopyRow:
        push de
        push hl
        push bc

        ; Copy e tiles from source to destination (up to $10 tiles)
        .CopyTileLoop:
            ; Copy 1 entire tile from source to destination ($10 bytes)
            ld d, $02
            .Copy8BytesLoop:
                REPT 8
                    ld a, [hl+]
                    ld [bc], a
                    inc c
                ENDR
                dec d
                jr nz, .Copy8BytesLoop
            dec e
            jr nz, .CopyTileLoop

        pop bc
        pop hl
        pop de

        ; comment: we could have just pushed+popped bc and not touched hl and
        ; we would have avoided needing to do the calculations below:

        ; If width == $10, then hl += $100
        inc h
        bit 4, e ; Check if width == $10
        jr nz, .Width10
        .Width00To0F:
            dec h
            ; If width < $10, then
            ; hl += width*$10
            ld a, e
            swap a
            add l
            ld l, a
            ld a, h
            adc $00
            ld h, a
        .Width10:
            ; hl += $100 and bc += $100
            inc b
        dec d
        jr nz, .CopyRow

    pop hl
    ; point bc to after the entry
    ld bc, $0007
    add hl, bc
    ld c, l
    ld b, h
    PopROMBank
    ret

    ; $304E
Cardscene00_Graphics_InitCardMap::
    ; Unpacks a tilemap and attrmap representing a card
    ; Inputs:
    ;   bc = source
    ;   hl = destination
    ld e, $04 ;width
    ld d, $05 ;height
    call Unpack_TileAttr_To_StaticTilemap
    ret

    ; $3056
Cardscene00_Graphics_ResetCards:
    ; Instantly loads the tilesets for all the 8 cards
    FOR card, 0, 8
        Mov8 wTemp_8.Palette_PackedInterval, wCardscene_CardSlotCreatureIDs.Card{u:card}
        Set8 wTemp_9.Cardscene_CardSlot, {u:card}
        XCall Cardscene_SetCardSlotCreatureID ; inefficiency? This function is called twice as it is also called by Cardscene00_Graphics_DrawCreature. To verify
        call Cardscene00_Graphics_DrawCreature
    ENDR
    ret

    ; $311F
Cardscene00_Graphics_InitCardPalettes:
    ; Setup the card palettes
    ; Palettes $00 - $03 are the palettes for the different cards
    ; Palette $04 is TODO
    ; Palette $05 is the palette for CARDSCENE_BLANKCARD
    ; Palette $06 - $07 are not initialized here
    ld a, BANK(PAL_Cardscene_Main)
    SwitchROMBank a ;inefficiency, causes a ld a,a
    xor a
    ld [wPalette_VBlankReady], a
    ld bc, PAL_Cardscene_Main
    ld hl, wPalette_BaseBuffers.Background
    ld e, 0
    ld a, 6*4
    call Unpack_Palette_Palettes
    db $3E ;ld a, X
        Palette_PackedInterval 0, 6
    ld [wTemp_8.Palette_PackedInterval], a
    XCall PaletteFX_RefreshAnimBuffer
    Set8 wPalette_VBlankReady, $01
    ret

    ; $314F
Cardscene00_Graphics_InitMap:
    ; Initializes the tilemap and attrmap
    ; 1) Loads the arena's color into palette 6
    ; 2) Reloads the textbox palette into palette 7
    ; 3) Loads the bitmap for the arena's background
    ; 4) Loads the tilemap/attrmap of the arena
    ; 5) Fixes the tilemap/attrmap of the textbox
    PushROMBank

    ; Set palette 6:
    ;   6.0 <- Arena color
    ;   6.1 <- Black
    ;   6.2, 6.3 undefined (not used)
    XCall Fightscene_GetCardsceneArenaColor
    XCall Fightscene_PalFX_SetCardsceneArenaColor

    ; Reload the textbox palette into the 7th palette
    SwitchROMBank BANK(PAL_Cardscene_Textbox)
    ld bc, PAL_Cardscene_Textbox
    ld hl, wPalette_BaseBuffers
    ld e, 7*4
    ld a, 4
    call Unpack_Palette_Palettes

    ; Update the bottom 2 palettes
    db $3E ;ld a, X
        Palette_PackedInterval 6, 2
    ld [wTemp_8.Palette_PackedInterval], a
    XCall PaletteFX_RefreshAnimBuffer

    ; Load the bitmap for the card shadows / arena background
    xor a
    ld [rVBK], a
    SwitchROMBank BANK(BITMAP_Cardscene_ArenaBackground)
    Do_MemMov BITMAP_Cardscene_ArenaBackground, $9000, (BITMAP_Cardscene_ArenaBackground.End - BITMAP_Cardscene_ArenaBackground)

    ; Load the tilemap and attrmap
    Set8 rVBK, $01
    SwitchROMBank BANK(TILEATTR_Cardscene_ArenaBackground)
    ld hl, CARDSCENE_BACKGROUND_ARENA
    ld a, $14
    ld e, a   ; inefficiency
    ld a, $0D
    ld d, a   ; inefficiency
    ld bc, TILEATTR_Cardscene_ArenaBackground
    call Unpack_TileAttr_To_StaticTilemap
    PopROMBank ; Inefficiency - not very useful to push/pop the rombank because we immediately do an XCall right after

    ; Re-initialize the textbox and arena color
    XCall Cardscene_ResetArenaBackground
    ret

    ; $31D5
Cardscene00_Graphics_InitCardBattle::
    ; Initialize the palettes
    ; Initiailize the tilemap
    ; Reload the ArenaBackground tileset
    ; Reset the window
    ; Reloads the cards' tilesets

    PushROMBank
    call Cardscene00_Graphics_InitCardPalettes
    call Cardscene00_Graphics_InitMap

    ; Draw the tilemaps and attrmaps of the 8 cards (must be done after Cardscene00_Graphics_InitMap)
    ld a, BANK(TILEATTR_CARDSCENE_CARD0)
    SwitchROMBank a
    FOR card, 0, 8
        ld hl, CARDSCENE_TILEMAP_CARD{u:card}
        ld bc, TILEATTR_CARDSCENE_CARD{u:card}
        call Cardscene00_Graphics_InitCardMap
    ENDR

    ; Reload the cards' tilesets
    call Cardscene00_Graphics_ResetCards

    ; Hide the window
    Set8FF rWX, $A7

    PopROMBank
    ret

    ; $323F
Cardscene00_Graphics_DrawCreature:
    ; Instantly draws a card icon on a card
    ; This function must only be called when the screen is off
    ; If the screen is on, try using Cardscene_SpawnCreature instead
    ; Inputs:
    ;   wTemp_8.Cardscene_CreatureID
    ;   wTemp_9.Cardscene_CardSlot
    PushROMBank

    ; Copy the tileset of the creature's card into vram
    XCall Cardscene_GetCardIcon
    XCall Cardscene_SetCardSlotCreatureID
    SwitchROMBank [wVBlank_Bank]
    Mov8 rVBK, wVBlank_DestVBK
    Get16 hl, wVBlank_SourceAddress
    Get16 de, wVBlank_DestAddress
    ld bc, 5*4*$10
    call MemMov

    ; Set the palette
    Mov8 wCardscene_PaletteTargetCardSlot, wTemp_9.Cardscene_CardSlot
    XCall Cardscene00_VBlank_SetCardPalette
    XCall PaletteVB_UpdateBackgroundPalettes

    PopROMBank
    ret


    ld a, [$C9D9]
    ld [wCardscene_PaletteTargetCardSlot], a
    XCall Cardscene_GetCardSlotCreatureID
    XCall Cardscene_GetCardPalette
    ld a, $DF
    ld [wVBlank_Func], a
    ld a, $32
    ld [wVBlank_Func+1], a
    ret


    ld a, [$C9D9]
    ld [wCardscene_PaletteTargetCardSlot], a
    ld a, $04
    ld [$C9B1], a
    ld a, $DF
    ld [wVBlank_Func], a
    ld a, $32
    ld [wVBlank_Func+1], a
    ret

    ; $32DF
Cardscene00_VBlank_SetCardPalette::
    ; Sets an entire card slot's 20 tiles to a specified palette
    ; The palette register is updated, just in case
    ; Inputs:
    ;   wCardscene_PaletteTargetCardSlot - cardslot (0-7)
    ;   wCardscene_CardPalette - palette
    ; Outputs:
    ;   The target card's 20 tiles are set to palette wCardscene_CardPalette
    ;   PaletteVB_UpdateBackgroundPalettes is called
    Set8 rVBK, $01
    ld a, [wCardscene_PaletteTargetCardSlot]
    .Card0:
    cp 0
    jp nz, .Card1 ; inefficiency - should be using jr
        XCall Cardscene_SetPalette_Card0
        jp .Finally ; inefficiency - should be using jr
    .Card1:
    cp 1
    jp nz, .Card2
        XCall Cardscene_SetPalette_Card1
        jp .Finally
    .Card2:
    cp 2
    jp nz, .Card3
        XCall Cardscene_SetPalette_Card2
        jp .Finally
    .Card3:
    cp 3
    jp nz, .Card4
        XCall Cardscene_SetPalette_Card3
        jp .Finally
    .Card4:
    cp 4
    jp nz, .Card5
        XCall Cardscene_SetPalette_Card4
        jp .Finally
    .Card5:
    cp 5
    jp nz, .Card6
        XCall Cardscene_SetPalette_Card5
        jp .Finally
    .Card6:
    cp 6
    jp nz, .Card7
        XCall Cardscene_SetPalette_Card6
        jp .Finally
    .Card7:
        XCall Cardscene_SetPalette_Card7
    .Finally:
    XCall PaletteVB_UpdateBackgroundPalettes
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


    PushROMBank
    xor a
    ld [rVBK], a
    SwitchROMBank [$C9CF]
    ld a, [$C9CE]
    ld h, a
    ld a, [$C9CD]
    ld l, a
    ld de, $9000
    ld bc, $0800
    call RLE_Decompress
    XCall Call_004_6F47
    ld a, $01
    ld [rVBK], a
    XCall Call_004_6F60
    ld a, [$C9D2]
    SwitchROMBank a
    ld hl, $99E0
    ld a, [$C9D3]
    ld e, a
    ld a, [$C9D4]
    ld d, a
    xor a
    call Call_000_3635
    ld a, [$C9D1]
    ld b, a
    ld a, [$C9D0]
    ld c, a
    call Unpack_AttrTileRLE_To_StaticTilemap
    ld a, [$C9D7]
    SwitchROMBank a
    ld a, [$C9D6]
    ld b, a
    ld a, [$C9D5]
    ld c, a
    call Call_000_358E
    PopROMBank
    ret


    PushROMBank
    ld a, $01
    ld [rVBK], a
    SwitchROMBank [$C9CF]
    ld a, [$C9CE]
    ld h, a
    ld a, [$C9CD]
    ld l, a
    ld de, $9000
    ld bc, $0800
    call RLE_Decompress
    XCall Call_004_6F79
    xor a
    ld [rVBK], a
    XCall Call_004_6F9E
    SwitchROMBank [$C9D2]
    ld hl, $9C00
    ld a, [$C9D3]
    ld e, a
    ld a, [$C9D4]
    ld d, a
    ld a, $01
    call Call_000_3635
    ld a, [$C9D1]
    ld b, a
    ld a, [$C9D0]
    ld c, a
    call Unpack_AttrTileRLE_To_XFlippedStaticTilemap
    XCall Call_007_718B
    SwitchROMBank [$C9D7]
    ld a, [$C9D6]
    ld b, a
    ld a, [$C9D5]
    ld c, a
    call Call_000_35AD
    PopROMBank
    ret

    ; $3493
LoadStartScreenTilemapsTilesetsPalettes::
    ; Using data saved into memory from CopyStartScreenAssetAddressesToMemory,
    ; Load the tilemaps and tilesets for the top and bottom part of the scrolling
    ; graphics on the start screen.
    ; Also loads palettes 7 + 8 which are used for the top and bottom part respectively
    PushROMBank
    xor a
    ld [rVBK], a
    SwitchROMBank [wStartScreenTopTilesetBank]
    ld a, [wStartScreenTopTilesetAddress+1]
    ld h, a
    ld a, [wStartScreenTopTilesetAddress]
    ld l, a
    ld de, vChars1
    ld bc, $0400
    call RLE_Decompress                              ;TopScroll tileset
    SwitchROMBank [wStartScreenBottomTilesetBank]
    ld a, [wStartScreenBottomTilesetAddress+1]
    ld h, a
    ld a, [wStartScreenBottomTilesetAddress]
    ld l, a
    ld de, vChars1 + $0400
    ld bc, $0400
    call RLE_Decompress                              ;BottomScroll tileset
    ld a, $01
    ld [rVBK], a
    Do_MemSet $8800, $0010, $00 ;Wipe a single tile $100 to a square of palette 0
    SwitchROMBank [wStartScreenTopTilemapBank]
    ld hl, vBGMap0
    ld e, $20
    ld d, $04
    ld a, [wStartScreenTopTilemapAddress+1]
    ld b, a
    ld a, [wStartScreenTopTilemapAddress]
    ld c, a
    call Unpack_AttrTileRLE_To_StaticTilemap                  ;Top tilemap
    SwitchROMBank [wStartScreenBottomTilemapBank]
    ld hl, vBGMap0 + $80
    ld e, $20
    ld d, $04
    ld a, [wStartScreenBottomTilemapAddress+1]
    ld b, a
    ld a, [wStartScreenBottomTilemapAddress]
    ld c, a
    call Unpack_AttrTileRLE_To_StaticTilemap                  ;Bottom tilemap
    xor a
    ld [rVBK], a
    Do_MemAdd vBGMap0, $0080, $80, $FF ;Add 80 to tile number of Top tilemap
    Do_MemAdd vBGMap0 + $80, $0080, $C0, $FF ;Add C0 to tile number of Bottom tilemap
    ld a, $01
    ld [rVBK], a
    Do_MemAdd vBGMap0, $0080, $06, $FF ;Add 06 to attributes of Top tilemap
    Do_MemAdd vBGMap0 + $80, $0080, $06, $FF ;Add 06 to attributes of Top tilemap
    SwitchROMBank [wStartScreen2PalettesBank]
    ld a, [wStartScreen2PalettesAddress+1]
    ld b, a
    ld a, [wStartScreen2PalettesAddress]
    ld c, a
    call CopyPalette67                              ;Overwrites palette 6+7
    ld a, [wStartScreen2PalettesAddress+1]
    ld h, a
    ld a, [wStartScreen2PalettesAddress]
    ld l, a
    DerefHL
    ld a, h
    ld [wFightscene_ArenaColor+1], a                      ;Stores the first color from wStartScreen2PalettesAddress
    ld a, l
    ld [wFightscene_ArenaColor], a
    Do_CallForeign PasteColorToPalette0010304060And2050IfTransparent
    PopROMBank
    ret


Call_000_358E:
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, $00
    ld a, $0C
    call Unpack_Palette_Palettes
    XCall PasteColorToPalette00103040And2050IfTransparent
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret


Call_000_35AD:
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, $0C
    ld a, $0C
    call Unpack_Palette_Palettes
    XCall PasteColorToPalette00103040And2050IfTransparent
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret


    ; $35CC
CopyPalette67:
    ; Copies 2 palettes from [bc] into palette 6+7
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, $18
    ld a, $08
    call Unpack_Palette_Palettes
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret


    xor a
    ld [wPalette_VBlankReady], a
    ld e, $00
    ld a, $20
    call Unpack_Palette_Palettes
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret

;BTL_SET_CREATURE_PAL
Call_000_35F1:
    PushROMBank
    ld a, [$C9D9]
    and a
    jr nz, jr_000_3618

    ld a, [$C9D7]
    SwitchROMBank a
    ld a, [$C9D6]
    ld b, a
    ld a, [$C9D5]
    ld c, a
    call Call_000_358E
    PopROMBank
    ret


jr_000_3618:
    ld a, [$C9D7]
    SwitchROMBank a
    ld a, [$C9D6]
    ld b, a
    ld a, [$C9D5]
    ld c, a
    call Call_000_35AD
    PopROMBank
    ret


Call_000_3635:
    and a
    jr nz, jr_000_3643

    ld a, e
    cp $10
    jr z, jr_000_363E

    inc hl

jr_000_363E:
    call Call_000_3667
    add hl, bc
    ret


jr_000_3643:
    ld a, e
    cp $10
    jr nc, jr_000_3652

    call Call_000_3657
    cpl
    inc a
    add $10
    sub c
    ld c, a
    add hl, bc

jr_000_3652:
    call Call_000_3667
    add hl, bc
    ret


Call_000_3657:
    ld bc, $0000
    ld a, e
    cp $10
    ret nc

    push hl
    ld c, e
    ld hl, $3758
    add hl, bc
    ld c, [hl]
    pop hl
    ret


Call_000_3667:
    ld bc, $0000
    ld a, d
    cp $0A
    ret z

    push hl
    ld c, d
    ld hl, $3769
    add hl, bc
    ld c, [hl]
    pop hl
    ret

    ; $3677
Call_000_3677::
    ; HBlank_Func
    ld a, [$C9C2]
    ldh [rWX], a
    ld a, [$C9BC]
    ldh [rSCX], a
    ld a, [$C9BD]
    ldh [rSCY], a
    ld a, $71
    ldh [rLYC], a
    Set16FF hInterrupt_HBlank_Func, Call_000_36B1
    PushROMBank
    SwitchROMBank $04
    ld hl, $C9F2
    ECallHL
    PopROMBank
    pop hl
    pop af
    reti

    ; $36B1
Call_000_36B1:
    ; HBlank_Func
    ld a, $A7
    ldh [rWX], a
    ld a, [wStartScreenBottomScrollX]
    ldh [rSCX], a
    ld a, $B0
    ldh [rSCY], a
    pop hl
    pop af
    reti


Call_000_36C1:
    ld a, $A7
    ldh [rWX], a
    ld a, [wStartScreenTopScrollX]
    ldh [rSCX], a
    xor a
    ldh [rSCY], a
    ld a, [$C9C3]
    ldh [rWY], a
    ld a, $1F
    ldh [rLYC], a
    SwitchROMBank $04
    FGet16 hl, $C9F2
    push hl
    call CallHL
    pop hl
    push hl
    call CallHL
    pop hl
    push hl
    call CallHL
    pop hl
    push hl
    call CallHL
    pop hl
    ret

    ; $36F9
VBlankHandler_000_36F9::
    ldh a, [hInterrupt_VBlank_Control]
    bit 0, a
    jr z, jr_000_370A

    ld a, $E3
    ld [rLCDC], a
    call hSystem_RunDMA
    call Call_000_36C1

jr_000_370A:
    Do_VBlank_Function
    Do_Sound_VBlank

    Set16FF hInterrupt_HBlank_Func, Call_000_3677
    ret


    inc bc
    inc bc
    ld [bc], a

    db $02

    ld [bc], a
    ld [bc], a
    ld bc, $0101

    db $01

    ld bc, $0101
    ld bc, $0101
    nop
    ldh [$FFE0], a
    db $E0

    db $C0

    and b

    db $80

    ld h, b
    ld h, b

    db $40

    jr nz, jr_000_3774

jr_000_3774:
    nop
    nop

    ; $3776
lcdc_HorizontalScroll_Upper::
    ; Run in StartScreen for horizontal scroll effect (start screen)
    ; Prepares the upper half of the horizontal scroll
    ld a, [wStartScreenTopScrollSpeed]
    ld e, a
    ld a, [wStartScreenTopScrollX]
    add e
    ld [wStartScreenTopScrollX], a
    ldh [rSCX], a  ;SCX to the current position
    ld a, $B8
    ldh [rSCY], a  ;SCY to tile $17 (+rLY is at tile 9, making $20 or $00)
    ld a, $68
    ldh [rLYC], a  ;Tile $0D
    Set16FF hInterrupt_HBlank_Func, lcdc_HorizontalScroll_Lower
    pop hl
    pop af
    reti

    ; $3796
lcdc_HorizontalScroll_Lower::
    ; Run in StartScreen for horizontal scroll effect (start screen)
    ; Prepares the lower half of the horizontal scroll
    ld a, [wStartScreenBottomScrollSpeed]
    ld e, a
    ld a, [wStartScreenBottomScrollX]
    add e
    ld [wStartScreenBottomScrollX], a
    ldh [rSCX], a
    ld a, $B8
    ldh [rSCY], a     ;SCY to tile $17 (+rLY is at tile $0D, making $24 or $04)
    pop hl
    pop af
    reti

    ; $37AA
vblank_HorizontalScroll::
    ; Run in StartScreen for horizontal scroll effect (start screen)
    ; It sets SCX and SCY to (0,9) and adds a STAT interrupt

    ; Sets the window for horizontal scroll instead of calling Do_Graphics_VBlank
    ldh a, [hInterrupt_VBlank_Control]
    bit 0, a
    jr z, .End
    ;GraphicsUpdate
        ld a, $E3 ;Enabled, Window 9C00, WindowEnable, 8800 mode
        ld [rLCDC], a
        call hSystem_RunDMA
        ld a, $A7
        ldh [rWX], a ;Window to Tile 14
        xor a
        ldh [rSCX], a ;SCX to Tile 0
        ld a, $48
        ldh [rSCY], a ;SCY to Tile 9
        ld a, $47
        ldh [rLYC], a ;The line before the 9th tile (counting from 0th)
    .End:
    Do_VBlank_Function_V
    Do_Sound_VBlank

    Set16FF hInterrupt_HBlank_Func, lcdc_HorizontalScroll_Upper
    ret



    ; btlcmd_stat.s


    ; $3812
BattleCmd_Stat_IncreaseCreatureExp::
    ; Increases a creature's experience
    ; Inputs:
    ;   hl = battle creature
    ;   bc = delta

    ; Get experience
    ld de, (wBattle_Creature_Target.Experience - wBattle_Creature_Target)
    add hl, de
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, bc
    ; Store the new value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret

    ; $3821
BattleCmd_Stat_IncreaseMagiEnergy::
    ; Increases a magi's maximum energy, up to a maximum of Creature_MAGI_MAX_MAXENERGY
    ; Also sets the magi's current energy to the maximum energy
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta
    ; Output:
    ;   Preserves hl

    ; Get max energy
    push hl
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, de
    ; Cap the value to Creature_MAGI_MAX_MAXENERGY (999)
    ld de, Creature_MAGI_MAX_MAXENERGY
    .ConsiderHigh:
    ld a, h
    cp d
    jr nz, .Check
    .ConsiderLow:
        ld a, l
        cp e
    .Check:
    jr c, .End
    .Overflow:
        ld h, d
        ld l, e
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ; Store the max energy value into the current energy as well
    pop hl
    push hl
    ld de, (wBattle_Creature_Target.CurEnergy - wBattle_Creature_Target)
    add hl, de
    ld [hl+], a
    ld [hl], c
    ; Preserve the pointer to the creature
    pop hl
    ret

    ; $3847
BattleCmd_Stat_IncreaseCreatureEnergy::
    ; todo - is this function used? Or just replaced by the macro BattleCmd_Stat_IncreaseCreatureMaxEnergy?
    ; Increases a creature's maximum energy, up to a maximum of Creature_MAX_MAXENERGY
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta

    ; Get max energy
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Add the delta
    add hl, de
    ; Cap the value to Creature_MAX_MAXENERGY (250)
    ld de, Creature_MAX_MAXENERGY
    .ConsiderHigh:
    ld a, h
    cp d
    jr nz, .Check
    .ConsiderLow:
        ld a, l
        cp e
    .Check:
    jr c, .End
    .Overflow:
        ; Set the cap value
        ld h, d
        ld l, e
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret

    ; $3863
BattleCmd_Stat_DecreaseCreatureEnergy::
    ; todo - is this function used?
    ; todo - is this current energy or max energy? Since the minimum permitted is 0
    ; Decreases a creature's max energy, to a minimum of 0
    ; Inputs:
    ;   hl = battle creature
    ;   de = delta

    ; Get max energy
    ld bc, (wBattle_Creature_Target.MaxEnergy - wBattle_Creature_Target)
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ; Subtract the delta
    TwosComp de
    add hl, de
    jr nc, .End
    .Underflow:
        ; Minimum value is 0
        ld hl, 0
    .End:
    ; Store the max energy value
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c
    ret

    ; $387E
BattleCmd_Stat_IncreaseCreatureStat::
    ; Increases a creature's stat, up to a maximum of X
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   e = max value
    ;   a = delta
    add hl, bc
    add [hl]
    cp e
    jr c, .Skip
    .Overflow:
        ld a, e
    .Skip:
    ld [hl], a
    ret

    ; $3886
BattleCmd_Stat_DecreaseCreatureStat::
    ; Decreases a creature's stat, down to a minimum of 1
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = delta
    add hl, bc
    ld c, a
    ld a, [hl]
    sub c
    jr z, .Underflow
    jr nc, .Skip
    .Underflow:
        ; If <= 0, set to 1
        ld a, 1
    .Skip:
    ld [hl], a
    ret

    ; $3892
BattleCmd_Stat_IncreasePercentCreatureStat::
    ; Increases a creature's stat by a percentage (minimum of 1), up to a maximum of X
    ; Inputs:
    ;   hl = battle creature
    ;   de = stat offset
    ;   b = percentage increase (from 0 to 32, where 32 = %100)
    ;   e = max value
    add hl, de
    push hl
    ld a, [hl]
    ld l, b
    ld b, a
    call Math_ScaleNumber8
    jr nz, .Skip
    .Zero:
        ; We want to increase by a minimum of 1
        ld a, $01
    .Skip:
    pop hl
    add [hl]
    cp c
    jr c, .Skip2
    .Overflow:
        ld a, c
    .Skip2:
    ld [hl], a
    ret

    ; $38A6
BattleCmd_Stat_DecreasePercentCreatureStat::
    ; Decreases a creature's stat by a percentage (minimum of 1), down to a minimum of 1
    ; Inputs:
    ;   hl = battle creature
    ;   de = stat offset
    ;   b = percentage decrease (from 0 to 32, where 32 = %100)
    add hl, de
    push hl
    ld a, [hl]
    ld l, b
    ld b, a
    call Math_ScaleNumber8
    jr nz, .Skip
    .Zero:
        ; We want to decrease by a minimum of 1
        ld a, $01
    .Skip:
    pop hl
    cpl
    inc a
    add [hl]
    jr z, .Underflow
    jr c, .Skip2
    .Underflow:
        ; a <= 0
        ld a, $01
    .Skip2:
    ld [hl], a
    ret

    ; $38BE
BattleCmd_Stat_SetCreatureStatus::
    ; Activates a creature's status
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = bits that are implicated (todo)
    add hl, bc
    or [hl]
    ld [hl], a
    ret

    ; $38C2
BattleCmd_Stat_ClearCreatureStatus::
    ; Resets a creature's status
    ; Inputs:
    ;   hl = battle creature
    ;   bc = stat offset
    ;   a = bits that are implicated (todo)
    add hl, bc
    cpl
    and [hl]
    ld [hl], a
    ret

    ; $38C7
Battle00_DisableActorScript::
    ; Disables both scripts for a target actor
    ; Inputs:
    ;   a = ID number of actor
    call Battle00_GetPointerAddressScript
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

    ; $38DE
Battle00_GetPointerAddressScript:
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

    ; $38F0
Battle00_SetActorScript::
    ; Sets the script for a target actor
    ; Call this function via Macro Do_Battle_SetActorScript
    ; Inputs:
    ;   a = Target actor
    ;   d = Bank
    ;   bc = Frame
    push de
    call Battle00_GetPointerAddressScript
    pop de
    Set8 hl+, d
    Set8 hl+, c
    Set8 hl+, b
    Set8 hl+, LOW(Script_Start)
    Set8 hl+, HIGH(Script_Start)
    ret


    PushROMBank
    SwitchROMBank $06 ;TODO define $06.. font table I guess?
    call Interrupt_VBlankFunc_CopyTile
    PopROMBank
    ret

    ; $3919
Battle00_SwapFightDef::
    ; Swaps the "Fight  " text with "Defend "
    ; This function is kind of genius - BATTLE_TILEID_CMDNAME0 and BATTLE_TILEID_DEFEND are placed
    ; at $86 and $06. So to swap between the two, we just need to add $80 (i.e. flip the topmost bit)
    ld hl, BATTLE_MENU_TILEMAP_CMD0NAME
    ld d, BATTLECMD_STRUCT_NAMESIZE
    ld b, $80
    .Loop:
        ld a, b
        add [hl]
        ld [hl+], a
        dec d
        jr nz, .Loop
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


    xor a
    ld [rVBK], a
    PushRAMBank
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D0A0]
    and a
    jr z, jr_000_394A

    ld a, $0D
    jr jr_000_394C

jr_000_394A:
    ld a, $80

jr_000_394C:
    ld hl, $9C60
    ld [hl], a
    ld a, $01
    ld [rVBK], a
    ld a, $4F
    ld [hl], a
    xor a
    ld [rVBK], a
    ld a, [$D0A1]
    and a
    jr z, jr_000_3966

    ld a, $0D
    jr jr_000_3968

jr_000_3966:
    ld a, $80

jr_000_3968:
    ld hl, $9C73
    ld [hl], a
    PopRAMBank
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $397E
sBattle_Helpers_DefendArrowArrow::
    db "Defend🡆🡇"
    .End

    ; $3986
    ; A little bit of ghost data is here (see ghost_data.asm)

    ; $3AB0
INCLUDE "musyx/musyxb0.asm"


IF TEST==1
    ; Erases the HardSample function from musyx
    SECTION "TEST", ROM0
    INCLUDE "source/test/magianim_test.asm"
ENDC
IF DEBUG_TEXTBOX_CURSOR==1
    SECTION "CURSOR", ROM0
    INCLUDE "source/engine/textbox/debug_textbox_cursor.asm"
ENDC