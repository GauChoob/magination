; General purpose math functions:
; Math_CalcPercent
; Math_SquareRoot (unused)
; Math_ConvertNumberToDigits
; Math_Div8
; Math_Div16
; Math_Mult
; Math_ScaleNumber8
; Math_Random
; Math_Rand8Inc

Math_CalcPercent::
    ; Calculates a binary percentage (/32) (rounded down)
    ; This function is a bit buggy - it produces unreliable results if the Divisor is smaller than the Dividend
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

    ; Step 1: Compare if Dividend is 0 or Max
    .CheckZeroLower:
        ld a, e
        and a
        jr z, .CheckZeroUpper ;e is zero, so check if d is zero

    .CheckMax:
        ; If the lower byte of the Dividend is $00, then we accidentally skip this check
        cp c
        jr c, .StartCalc ;c > e

        ld a, d
        cp b
        jr c, .StartCalc ;b > d

        Set8 wPercentCount, 32 ; Return max if bc == de, but this check can fail if
        ret                   ; de > bc (e.g. bc = $280, de = $301, or bc = $300, de = $400)

    .CheckZeroUpper:
        cp d
        ret z ; If Dividend is 0, return wPercentCount = a = 0, or else fall through to Step 2

    ; Step 2: Calculate the binary percentage
    ; Essentially, multiply the dividend by 32, then see how many times the divisor
    ;  fits into dividend*32.
    .StartCalc:
    ; divisor//=2
    srl b
    rr c    

    ; dividend*=16   (net result is dividend is 32x larger than divisor relative to each other)
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d

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


Math_SquareRoot::
    ; Function is UNUSED
    ; Input:
    ;   c = 8-bit number to square root
    ; Output:
    ;   a = The square root, rounded. The rounding mechanism is not very clear but in general,
    ;       if the result < X.4, round down, or else round up (but not 100% accurate)
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

    ; First, handle d. Since it's masked, it can only be 0-3. Hardcode 0-3 to 0, 256, 512 and 768
    ld a, d
    and $03  ;mask out the 6 MSB
    jr z, .CalculateLowerByte ; <256, so wX100, wX10, wX1 <- 0
    .Check768:
    cp $03
    jr nz, .Check512
        Set8 wX100, 7
        Set8 wX10, 6
        Set8 wX1, 8
        jr .CalculateLowerByte
    .Check512:
    cp $02
    jr nz, .Check256
        Set8 wX100, 5
        Set8 wX10, 1
        Set8 wX1, 2
        jr .CalculateLowerByte
    .Check256:
        Set8 wX100, 2
        Set8 wX10, 5
        Set8 wX1, 6

    .CalculateLowerByte:
    ; Next, handle e. Do each digit place individually
    Get8 b, wX100
    ld a, e
    ld c, a
    .LoopBy100:
        sub 100
        jr c, .Done100Loop
        inc b ; Add 100 unless number goes negative
        ld c, a
        jr .LoopBy100
    .Done100Loop:
    Set8 wX100, b

    Get8 b, wX10
    ld a, c ; Restore the number before number went negative
    .LoopBy10:
        sub 10
        jr c, .Done10Loop
        inc b ; Add 10 unless number goes negative
        ld c, a
        jr .LoopBy10
    .Done10Loop:
    Set8 wX10, b

    ; Do the lowest digit.
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
    .End: ;No check. Could optimize this with ret c instead
    ret


Math_Div8::
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
        sub b ; Subtract Dividend from Divisor
        jr c, .Done ; A negative number was obtained
        inc h ; Increment Quotient if the number is still positive
        jr .Loop
    .Done:      ; If the subtraction results in a negative number, undo the last subtraction
    add b       ; and take the remainder as the Remainder
    ld l, a
    ret


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
    IF FIX_BUGS == 0
    .Done:
    ret  ;Unused line
    ENDC


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
    ; This is elementary-school-style multiplication.
    .Bit0:
    bit 0, c 
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


Math_Random::
    ; Returns an 8-bit random number, masked
    ; Input:
    ;   c = mask (3, 7, 15, 31, 63, 127 or 255)
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
        dec a  ; This delays for a time that can change rDIV by a maximum of only about $05
        jr nz, .Loop

    ld a, [rDIV] ; After the delay, just return rDIV masked by c
    and c
    ret


Math_Rand8Inc::
    ; hMath_RandSeed = hMath_RandSeed + rand(-3, 4)
    ; Returns hMath_RandSeed
    ; Intended to give a random value 0-7
    ; BUG - often used to generate larger random numbers which are not very well randomized
    ; On CGB BOOT ROM, hMath_RandSeed is initialized as $DC
    ; This function increments hMath_RandSeed by 1 on average every call
    ; Inputs:
    ;   None
    ; Outputs:
    ;   a = hMath_RandSeed = hMath_RandSeed + rand(-3, 4) (only lower 3 bits should be used)
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
    ldh a, [hMath_RandSeed]
    add e
    ldh [hMath_RandSeed], a
    ret