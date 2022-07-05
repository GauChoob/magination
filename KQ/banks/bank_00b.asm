; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld [hl+], a
    rlca
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ccf
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld c, $0B
    ld e, b
    pop de
    nop
    dec bc
    ld l, l
    ld b, c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    dec bc
    ld d, [hl]
    pop de
    ld a, c
    dec bc
    pop bc
    ld b, d
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec c
    inc c
    ld [hl], l
    pop de
    xor c
    dec bc
    dec e
    ld b, d
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    rlca
    dec c
    adc l
    pop de
    nop
    inc de
    ld d, h
    ld l, b
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    ld [$E810], sp
    pop de
    dec hl
    ld de, $4242
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    inc c
    inc de
    ld b, [hl]
    jp nc, $13A0

    xor h
    ld h, d
    add hl, de
    add sp, $46
    dec b
    ld [$4AF8], sp
    rrca
    inc de
    ld c, c
    jp nc, $1179

    and e
    ld b, h
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    ld [de], a
    db $10
    ld a, [c]
    pop de
    ld d, e
    ld de, $4E58
    add hl, de
    add sp, $46
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    dec c
    inc d
    ld h, l
    jp nc, $0B00

    dec l
    ld b, c
    add hl, de
    add sp, $46
    dec b
    dec bc
    ld hl, sp+$4A
    rrca
    inc d
    ld h, a
    jp nc, $0B30

    ld c, l
    ld b, c
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    ld l, [hl]
    dec hl
    dec c
    ret nc

    ld d, l
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_00B_40CD

    ld b, b
    ld l, [hl]
    or b
    add d
    nop
    ld l, [hl]
    ld h, $0D
    ld b, b
    ld [hl], e
    jr nc, @-$79

    nop

jr_00B_40CD:
    ld l, [hl]
    jr nc, jr_00B_40DD

    ret nc

    ld b, e
    sub b
    add a
    nop
    ld l, [hl]
    jr nc, jr_00B_40E5

    and b
    ld b, b
    sub b
    adc d
    nop

jr_00B_40DD:
    adc b
    ld c, $0A
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_00B_40E5:
    ld a, d
    ld h, b
    rrca
    ld e, l
    dec bc
    db $ED
    ld b, b
    ld b, l
    add a
    ld [hl-], a
    rst $38
    ld bc, $FF46
    nop
    nop
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    adc d
    nop
    add a
    ld c, b
    nop
    ld bc, $6E00
    jr z, jr_00B_4112

    ret nz

    ld [hl], b
    sub b
    add a
    nop
    add a
    or b
    ld bc, $0000
    ld l, [hl]
    jr nc, jr_00B_411F

jr_00B_4112:
    and b
    ld b, b
    sub b
    adc d
    nop
    add a
    ld c, b
    nop
    rst $38
    nop
    ld l, [hl]
    jr nc, jr_00B_412C

jr_00B_411F:
    ret nc

    ld b, e
    sub b
    add a
    nop
    add a
    inc a
    rst $38
    nop
    nop
    ld e, a
    nop
    ld [bc], a

jr_00B_412C:
    ld b, l
    dec d
    inc de
    reti


    ld e, a
    ld [$B913], sp
    ld e, a
    db $10
    inc de
    ld l, e
    ld h, b
    nop
    nop
    ld e, a
    ld b, $05
    dec d
    inc de
    reti


    ld e, a
    db $10
    inc de
    cp c
    ld e, a
    jr nz, jr_00B_415B

    reti


    ld e, a
    ld c, b
    nop
    add hl, de
    dec d
    inc de
    ld h, e
    ld l, a
    ld [$4313], sp
    ld l, a
    db $10
    inc de
    db $EB
    ld l, a
    nop
    nop

jr_00B_415B:
    ld e, a
    ld b, $05
    dec d
    inc de
    ld [hl], e
    ld l, a
    db $10
    inc de
    ld b, e
    ld l, a
    jr nz, jr_00B_417B

    ld [hl], e
    ld l, a
    ld c, b
    nop
    add hl, de
    inc d
    inc d
    and c
    ld e, l
    ld e, a
    ld [bc], a
    ld [bc], a
    dec d
    inc d
    ret


    ld e, l
    jr nz, jr_00B_418E

    ld l, l

jr_00B_417B:
    ld e, h
    ld [$4D14], sp
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    jr nz, jr_00B_419A

    ld c, l
    ld e, h
    db $10
    inc d
    and c
    ld e, l
    jr nz, jr_00B_418E

jr_00B_418E:
    ld e, [hl]
    dec bc
    ld h, $43
    ld h, l
    ld bc, $1415
    and c
    ld e, l
    jr nz, jr_00B_41AE

jr_00B_419A:
    or l
    ld e, l
    jr nz, jr_00B_41B2

    db $D3
    ld e, l
    jr nz, @+$16

    and c
    ld e, l
    nop
    nop
    ld e, a
    inc bc
    inc b
    inc d
    inc d
    sub a
    ld e, l
    ld e, a

jr_00B_41AE:
    inc b
    inc b
    dec d
    inc d

jr_00B_41B2:
    ld b, c
    ld e, l
    ld [$AB14], sp
    ld e, l
    inc c
    inc d
    cp a
    ld e, l
    ld [$A114], sp
    ld e, l
    jr nz, jr_00B_41D6

    or l
    ld e, l
    db $10
    inc d
    ld l, l
    ld e, h
    db $10
    inc d
    ld c, l
    ld e, h
    jr nz, jr_00B_41E2

    and c
    ld e, l
    jr nc, jr_00B_41D2

jr_00B_41D2:
    ld d, $14
    ld c, l
    ld e, h

jr_00B_41D6:
    jr nz, jr_00B_41D8

jr_00B_41D8:
    ld bc, $A114
    ld e, l
    ld b, b
    nop
    ld bc, $5E00
    dec bc

jr_00B_41E2:
    sbc c
    ld b, e
    ld e, a
    dec b
    inc bc
    dec d
    inc d
    and c
    ld e, l
    inc c
    inc d
    ret


    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1414
    and c
    ld e, l
    ld e, a
    ld b, $05
    dec d
    inc d
    ret


    ld e, l
    db $10
    inc d
    or l
    ld e, l
    inc c
    inc d
    db $DD
    ld e, l
    inc c
    inc d
    sub a
    ld e, l
    inc c
    nop
    ld d, $14
    inc hl
    ld e, h
    jr c, jr_00B_4212

jr_00B_4212:
    rst $38
    nop
    inc d
    inc d
    or l
    ld e, l
    ld e, [hl]
    dec bc
    cp $45
    ld b, l
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld e, a
    nop
    ld [bc], a
    dec d
    inc de
    ld a, [hl+]
    ld l, l
    jr nz, jr_00B_423D

    or b
    ld l, h
    stop
    ld e, c
    ld bc, $1315
    ret nc

    ld l, h
    ld [$2A13], sp
    ld l, l
    jr nz, jr_00B_423A

jr_00B_423A:
    ld e, [hl]
    dec bc
    ld l, h

jr_00B_423D:
    ld b, [hl]
    ld e, a
    ld bc, $1502
    inc de
    ld h, [hl]
    ld l, l
    jr nz, jr_00B_425A

    ld e, h
    ld l, l
    jr nz, jr_00B_425E

    jr nz, jr_00B_42BA

    jr nz, jr_00B_424F

jr_00B_424F:
    ld e, c
    ld bc, $1315
    db $10
    ld l, l
    db $10
    inc de
    ld c, b
    ld l, l
    nop

jr_00B_425A:
    nop
    ld e, a
    ld [bc], a
    ld [bc], a

jr_00B_425E:
    dec d
    inc de
    ld c, b
    ld l, l
    ld l, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, a
    inc bc
    inc b
    inc d
    inc de
    ld c, b
    ld l, l
    ld e, a
    inc b
    inc b
    dec d
    inc de
    ld c, b
    ld l, l
    ld [$3413], sp
    ld l, l
    inc c
    inc de
    ld e, h
    ld l, l
    ld [$2A13], sp
    ld l, l
    jr nz, @+$15

    inc [hl]
    ld l, l
    ld b, b
    inc de
    ret nz

    ld l, h
    jr nz, jr_00B_429F

    ld a, [hl+]
    ld l, l
    jr c, jr_00B_42A3

    or b
    ld l, h
    jr z, jr_00B_42A7

    ret nc

    ld l, h
    jr jr_00B_42AB

    or b
    ld l, h
    jr nz, @+$15

    ld e, h
    ld l, l
    nop

jr_00B_429F:
    nop
    ld e, a
    dec b
    inc bc

jr_00B_42A3:
    inc d
    inc de
    ld c, b
    ld l, l

jr_00B_42A7:
    ld e, a
    ld b, $05
    dec d

jr_00B_42AB:
    inc de
    and b
    ld l, h
    jr nz, jr_00B_42C3

    ret nz

    ld l, h
    db $10
    inc de
    and b
    ld l, h
    jr nz, jr_00B_42CB

    ret nc

    ld l, h

jr_00B_42BA:
    db $10
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld b, l
    inc d
    dec d

jr_00B_42C3:
    ld h, h
    ld a, b
    ld h, e
    ld bc, $1514
    and b
    ld a, b

jr_00B_42CB:
    ld h, e
    ld bc, $1515
    ld a, b
    ld a, b
    jr c, jr_00B_42E8

    and b
    ld a, b
    nop
    nop
    ld e, a
    inc bc
    inc b
    dec d
    dec d
    ld c, d
    ld a, b
    ld [$6415], sp
    ld a, b
    nop
    nop
    ld e, a
    inc b
    inc b
    inc c

jr_00B_42E8:
    rlca
    inc c
    ld [$0909], sp
    dec bc
    ei
    ld b, d
    dec d
    dec d
    ld c, d
    ld a, b
    inc b
    dec d
    ld a, [hl+]
    ld a, b
    ld h, b
    nop
    add hl, de
    dec d
    ld de, $4E58
    jr z, jr_00B_4312

    ld b, h
    ld c, [hl]
    ld [$6C11], sp
    ld c, [hl]
    ld [$3A11], sp
    ld c, [hl]
    db $10
    ld de, $4DE0
    stop
    ld l, [hl]

jr_00B_4312:
    jr nc, jr_00B_4321

    ldh [rBGP], a
    nop
    add b
    nop
    ld l, [hl]
    ld a, [hl+]
    dec c
    add b
    ld e, b
    nop
    add e
    nop

jr_00B_4321:
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    add hl, de
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, l
    ld l, $2E
    ld l, $FF
    ld l, b
    ld l, c
    jr nz, jr_00B_43A8

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $6043
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $75
    ld l, b
    ld l, $2E
    ld l, $2E
    cp $FD
    and c
    and [hl]
    ld e, c
    ld c, c
    ld d, b
    ld d, b
    ld b, l
    ld b, l
    ld b, l
    ld hl, $4CFE
    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, jr_00B_43AC

    ld c, c
    ld d, [hl]
    ld b, l
    rst $38
    ld d, h
    ld c, b
    ld b, l
    jr nz, jr_00B_43B4

    ld b, l
    ld b, l
    ld d, b
    ld b, l
    ld d, d
    ld hl, $FDFE
    and c
    ld e, a
    inc bc
    inc b
    and d
    jr z, jr_00B_43BB

    and [hl]
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    jr nz, @+$56

    ld c, a
    jr nz, jr_00B_43D2

    ld b, c
    ld d, d
    ld d, h
    ld e, c
    ld hl, $59FE
    ld b, l
    ld b, c
    ld c, b
    ld hl, $5720
    ld c, a
    ld c, a
    ld hl, $FDFE
    and c
    ld e, a
    inc b
    inc b
    ld b, l
    and d
    jr z, jr_00B_43F8

    and [hl]
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_00B_43EE

    ld l, a
    ld h, d
    inc l
    rst $38

jr_00B_43A8:
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_00B_43AC:
    ld h, [hl]
    ld a, c
    ld hl, $FDFE
    and d
    ret c

    ld h, b

jr_00B_43B4:
    and [hl]
    ld b, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, a
    ld l, b

jr_00B_43BB:
    ld l, $2E
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, jr_00B_442C

    ld l, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    ld l, $FE
    ld e, c
    ld h, l
    daa
    halt
    ld h, l

jr_00B_43D2:
    jr nz, jr_00B_4436

    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00B_444C

    ld l, a
    ld [hl], d
    ld [hl], h
    ld [hl], e
    cp $65
    halt
    daa
    ld l, [hl]
    jr nz, jr_00B_4430

    daa
    halt
    ld h, l
    rst $38
    ld l, a
    ld l, [hl]
    ld l, h

jr_00B_43EE:
    ld a, c
    jr nz, jr_00B_4459

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$71

    ld h, [hl]

jr_00B_43F8:
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_445A

    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_447D

    ld l, a
    ld [hl], l
    jr nz, jr_00B_4477

    ld [hl], l
    ld [hl], h
    dec l
    rst $38
    ld h, [hl]
    ld l, a
    ld a, b
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    cp $74
    ld [hl], a
    ld l, a
    jr nz, jr_00B_4482

    halt
    ld l, c
    ld l, h
    jr nz, @+$4F

    ld h, c
    ld h, a
    ld l, c
    ld l, $FF
    ld b, d
    ld [hl], d
    ld h, c
    halt
    ld l, a

jr_00B_442C:
    ld hl, $FDFE
    and d

jr_00B_4430:
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l

jr_00B_4436:
    jr nz, jr_00B_44A8

    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $64
    ld l, c
    ld h, [hl]
    ld h, [hl]

jr_00B_444C:
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h
    ld [hl], h
    jr nz, jr_00B_44C3

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $FE
    db $FD

jr_00B_4459:
    and d

jr_00B_445A:
    ret c

    ld h, b
    and [hl]
    ld c, c
    daa
    ld h, h
    jr nz, jr_00B_44CE

    ld l, a
    halt
    ld h, l
    jr nz, jr_00B_44DB

    ld l, a
    rst $38
    ld l, h
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_00B_44E4

    ld l, b
    ld h, l
    jr nz, jr_00B_44E8

    ld h, c
    ld l, h
    ld h, l

jr_00B_4477:
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_44F0

    ld l, b

jr_00B_447D:
    ld h, c
    ld [hl], h
    rst $38
    ld l, l
    ld l, c

jr_00B_4482:
    ld h, a
    ld l, b
    ld [hl], h
    ld a, c
    jr nz, jr_00B_44EE

    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00B_450D

    ld h, c
    ld [hl], e
    jr nz, jr_00B_44FB

    rst $38
    ld [hl], h
    ld l, c
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld l, c
    ld h, e
    cp $73
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, a

jr_00B_44A8:
    ld h, a
    ld l, h
    ld h, l
    ld l, $FF
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00B_4522

    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    cp $77
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00B_452B

    ld l, a
    ld l, [hl]
    ld h, a
    inc l

jr_00B_44C3:
    rst $38
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], l
    ld l, a
    ld [hl], l
    ld [hl], e
    inc l
    jr nz, jr_00B_452F

jr_00B_44CE:
    ld l, [hl]
    ld h, h
    cp $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00B_453B

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l

jr_00B_44DB:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b

jr_00B_44E4:
    jr nz, jr_00B_4552

    ld l, a
    ld [hl], h

jr_00B_44E8:
    ld [hl], e
    jr nz, jr_00B_455A

    ld h, [hl]
    cp $73

jr_00B_44EE:
    ld l, b
    ld h, c

jr_00B_44F0:
    ld [hl], d
    ld [hl], b
    jr nz, @+$75

    ld [hl], b
    ld l, c
    ld l, e
    ld h, l
    ld [hl], e
    rst $38
    ld h, c

jr_00B_44FB:
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_4572

    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld l, $FE
    ld c, c
    jr nz, jr_00B_456E

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h

jr_00B_450D:
    jr nz, jr_00B_4575

    ld l, a
    ld [hl], d
    rst $38
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    jr nz, jr_00B_457A

    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld [hl], h
    cp $74
    ld l, a
    ld l, a

jr_00B_4522:
    ld l, e
    jr nz, jr_00B_458A

    halt
    ld h, l
    ld [hl], d
    ld a, c
    rst $38
    ld h, d

jr_00B_452B:
    ld l, c
    ld [hl], h
    jr nz, jr_00B_459E

jr_00B_452F:
    ld h, [hl]
    jr nz, jr_00B_45A5

    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    cp $61

jr_00B_453B:
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_45A2

    ld l, h
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    rst $38
    ld c, c
    jr nz, jr_00B_45B4

    ld h, c
    ld h, h
    inc l
    jr nz, jr_00B_45B2

    ld l, [hl]

jr_00B_4552:
    ld h, h
    dec l
    dec l
    cp $FD
    ld e, a
    dec b
    inc bc

jr_00B_455A:
    and d
    cp b
    ld e, l
    and [hl]
    ld b, c
    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    ld e, e
    ld bc, $98A2
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h

jr_00B_456E:
    ld l, h
    inc l
    jr nz, jr_00B_45BB

jr_00B_4572:
    jr nz, jr_00B_45DB

    ld [hl], l

jr_00B_4575:
    ld h, l
    ld [hl], e
    ld [hl], e
    rst $38
    ld c, c

jr_00B_457A:
    daa
    ld l, h
    ld l, h
    jr nz, jr_00B_45E7

    ld h, c
    halt
    ld h, l
    jr nz, jr_00B_45F8

    ld l, a
    cp $74
    ld h, l
    ld l, h
    ld l, h

jr_00B_458A:
    jr nz, jr_00B_4605

    ld l, a
    ld [hl], l
    jr nz, jr_00B_4603

    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00B_460F

    ld l, c
    ld l, l
    ld h, l

jr_00B_459E:
    ld l, $FE
    db $FD
    and d

jr_00B_45A2:
    cp b
    ld e, l
    and [hl]

jr_00B_45A5:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_4622

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_00B_4613

    ld h, l

jr_00B_45B2:
    rst $38
    ld h, d

jr_00B_45B4:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $20
    ld b, e
    ld l, a

jr_00B_45BB:
    ld l, l
    ld h, l
    inc l
    cp $53
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00B_463C

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_00B_4633

    jr nz, jr_00B_463A

    ld h, l
    ld [hl], a
    jr nz, jr_00B_4645

    ld l, a
    ld [hl], d
    ld h, l

jr_00B_45DB:
    cp $6F
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_00B_465A

    ld l, b

jr_00B_45E7:
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00B_4664

    ld h, l
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_4669

    ld l, a
    ld l, $FE

jr_00B_45F8:
    db $FD
    and c
    ld e, a
    ld b, $05
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l

jr_00B_4603:
    ld [hl], d
    inc l

jr_00B_4605:
    jr nz, jr_00B_464C

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ccf
    cp $FD
    and d

jr_00B_460F:
    cp b
    ld e, l
    and [hl]
    ld e, c

jr_00B_4613:
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, l
    inc l
    jr nz, jr_00B_4678

    ld l, b

jr_00B_4622:
    ld h, c
    ld [hl], h
    jr nz, jr_00B_4687

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    cp $4B
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_00B_4692

    ld l, [hl]
    ld h, h

jr_00B_4633:
    jr nz, @+$5C

    ld h, l
    ld [hl], h
    ccf
    cp $FD

jr_00B_463A:
    and d
    cp b

jr_00B_463C:
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_46AD

    ld [hl], e

jr_00B_4645:
    jr nz, jr_00B_46A8

    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], d

jr_00B_464C:
    ld a, c
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_00B_46B4

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    rst $38

jr_00B_465A:
    ld h, h
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld [hl], d
    rrca
    rst $38

jr_00B_4664:
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, b

jr_00B_4669:
    dec bc
    add h
    ld b, a
    and d
    cp b
    ld e, l

Call_00B_466F:
    and [hl]
    ld d, b
    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_00B_46E7

jr_00B_4678:
    ld h, [hl]
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    jr nz, jr_00B_46FC

    ld l, a
    ld [hl], l
    jr nz, jr_00B_46E8

jr_00B_4687:
    ld l, h
    ld l, h
    cp $6B
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_46E3

    ld h, c
    ld l, h

jr_00B_4692:
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_00B_470B

    ld h, [hl]
    jr nz, jr_00B_470E

    ld [hl], l
    ld [hl], d
    cp $62
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$63

jr_00B_46A8:
    ld l, [hl]
    ld h, h
    rst $38
    ld h, d
    ld [hl], d

jr_00B_46AD:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h

jr_00B_46B4:
    jr nz, jr_00B_4703

    ld h, c
    ld h, a
    ld l, c
    ld l, $FE
    ld d, e
    ld l, b
    ld h, l
    jr nz, @+$6A

    ld h, c
    ld [hl], e
    jr nz, @+$72

    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    rst $38
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_00B_4743

    ld l, b
    ld h, l
    jr nz, jr_00B_4747

    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    cp $62
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00B_4748

    ld h, l
    ld [hl], d
    inc l

jr_00B_46E3:
    jr nz, jr_00B_4746

    ld l, [hl]
    ld h, h

jr_00B_46E7:
    rst $38

jr_00B_46E8:
    ld h, c
    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_00B_4752

    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    cp $61
    jr nz, jr_00B_4767

    ld h, l
    ld h, [hl]
    ld h, c

jr_00B_46FC:
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld [hl], e

jr_00B_4703:
    ld h, e
    ld l, b
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_00B_476C

    ld a, c

jr_00B_470B:
    cp $4B
    ld l, a

jr_00B_470E:
    ld [hl], d
    ld h, a
    jr nz, jr_00B_4773

    ld l, [hl]
    ld h, h
    jr nz, jr_00B_4770

    ld h, l
    ld [hl], h
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00B_4784

    halt
    ld l, c
    ld l, h
    jr nz, jr_00B_4771

    ld h, c
    ld h, a
    ld l, c
    ld hl, $54FE
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$4B

    rst $38
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00B_47B3

    ld l, a
    jr nz, jr_00B_47BB

    ld l, a

jr_00B_4743:
    ld [hl], l
    cp $74

jr_00B_4746:
    ld l, b

jr_00B_4747:
    ld h, l

jr_00B_4748:
    jr nz, jr_00B_47B8

    ld h, l
    ld [hl], a
    jr nz, @+$4D

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l

jr_00B_4752:
    ld [hl], d
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00B_47A6

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld hl, $FDFE
    and c
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld b, c
    ld b, c

jr_00B_4767:
    ld c, b
    ld c, b
    ld hl, $4820

jr_00B_476C:
    ld c, a
    ld c, a
    ld d, d
    ld b, c

jr_00B_4770:
    ld e, c

jr_00B_4771:
    rst $38
    ld b, [hl]

jr_00B_4773:
    ld c, a
    ld d, d
    jr nz, jr_00B_47CA

    ld b, c
    ld c, h
    ld b, c
    ld b, [hl]
    ld e, c
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4502

jr_00B_4784:
    ld [hl+], a
    rlca
    or e
    ld sp, $01C7
    sub a
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld c, [hl]
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld de, $1D1A
    db $D3
    nop
    dec bc
    add sp, $47
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A

jr_00B_47A6:
    db $10
    ld a, [de]
    inc e
    db $D3
    jr z, jr_00B_47B7

    ld h, [hl]
    ld c, b
    add hl, de
    add sp, $46
    dec b
    inc b

jr_00B_47B3:
    ld hl, sp+$4A
    dec bc
    inc d

jr_00B_47B7:
    ld h, e

jr_00B_47B8:
    jp nc, $0B64

jr_00B_47BB:
    or e
    ld c, b
    add hl, de
    add sp, $46
    adc b
    rla
    dec de
    ld l, [hl]
    jr z, jr_00B_47D3

    ret nz

    ld l, e
    nop
    add b

jr_00B_47CA:
    nop
    ld l, [hl]
    jr nc, jr_00B_47DA

    ldh a, [rLYC]
    add b
    add d
    nop

jr_00B_47D3:
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    ld b, b
    add [hl]

jr_00B_47DA:
    nop
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    jr nz, jr_00B_47F2

    dec bc
    ld [bc], a
    dec bc
    inc bc
    ld b, l
    dec d
    dec d
    ld hl, sp+$74
    jr z, jr_00B_4803

    ld h, $75
    inc c
    dec d

jr_00B_47F2:
    ld hl, sp+$74
    inc bc
    dec d
    ld h, $75
    jr @+$17

    inc e
    ld [hl], l
    nop
    nop
    ld e, [hl]
    dec bc
    ld a, [c]
    ld c, b
    ld e, a

jr_00B_4803:
    ld bc, $1502
    dec d
    inc e
    ld [hl], l
    inc c
    dec d
    ld hl, sp+$74
    ld [$1C15], sp
    ld [hl], l
    nop
    nop
    ld e, a
    ld [bc], a
    inc bc
    dec d
    dec d
    inc e
    ld [hl], l
    inc d
    dec d
    ld hl, sp+$74
    inc b
    dec d
    ret z

    ld [hl], h
    inc b
    dec d
    ld hl, sp+$74
    inc b
    dec d
    ret c

    ld [hl], h
    inc b
    dec d
    ld h, $75
    inc c
    dec d
    ld [$0C75], sp
    dec d
    inc e
    ld [hl], l
    inc c
    dec d
    ld [de], a
    ld [hl], l
    inc c
    dec d
    ld h, $75
    inc c
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld e, [hl]
    dec bc
    db $EB
    ld c, c
    ld h, l
    ld bc, $1515
    add sp, $74
    inc c
    dec d
    ret c

    ld [hl], h
    jr nc, jr_00B_4854

jr_00B_4854:
    dec b
    inc b
    ld hl, sp+$4A
    ld de, $1D1A
    db $D3
    ld h, h
    dec bc
    add $48
    add hl, de
    add sp, $46
    dec bc
    inc b
    add hl, de
    dec d
    db $10
    sub b
    ld a, d
    ld l, $10
    xor d
    ld a, d
    inc b
    db $10
    add b

jr_00B_4871:
    ld a, d
    ld [$BE10], sp
    ld a, d
    jr jr_00B_4888

    or h
    ld a, d
    inc b
    db $10
    cp [hl]
    ld a, d
    inc b
    db $10
    or h
    ld a, d
    inc b
    db $10
    cp [hl]
    ld a, d
    nop
    nop

jr_00B_4888:
    ld h, l
    ld bc, $1014
    or h
    ld a, d
    ld e, l
    dec bc
    db $DB
    ld c, b
    ld e, a
    nop
    inc bc
    inc d
    db $10
    cp [hl]
    ld a, d
    ld e, a
    ld [bc], a
    inc bc
    dec d
    db $10
    sub b
    ld a, d
    inc d
    db $10
    xor d
    ld a, d
    inc b
    db $10
    cp [hl]
    ld a, d
    jr jr_00B_48BA

    add b
    ld a, d
    ld [$7010], sp
    ld a, d
    jr nc, jr_00B_48B2

jr_00B_48B2:
    add hl, de
    dec d
    inc de
    add h
    ld e, l
    jr nc, jr_00B_48CC

    ld [hl], h

jr_00B_48BA:
    ld e, l
    jr nz, jr_00B_48D0

    add h
    ld e, l
    jr nc, jr_00B_48D4

    ld d, h
    ld e, l
    jr nz, jr_00B_48C5

jr_00B_48C5:
    add hl, de
    dec d
    inc de
    ld d, h
    ld e, l
    ld h, b
    inc de

jr_00B_48CC:
    add h
    ld e, l
    jr nz, jr_00B_48D0

jr_00B_48D0:
    ld [hl], d
    rrca
    rst $38
    ld a, a

jr_00B_48D4:
    ld a, d
    jr nz, jr_00B_48E6

    ld c, b
    ld c, $10
    ld b, a
    add a
    ld e, b
    cp $00
    nop
    dec bc
    inc b
    add a
    db $10
    cp $00

jr_00B_48E6:
    nop
    ld b, e
    jr c, jr_00B_4871

    ld l, b
    ld [bc], a
    nop
    nop
    ld e, a
    nop
    inc bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    ld [hl], e
    ld l, $2E
    ld l, $20
    ld [hl], b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld l, $2E
    ld l, $FF
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_4972

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $2E
    ld l, $FE
    ld [hl], b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld l, $2E
    ld l, $20
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    rst $38
    ld h, e
    ld l, b
    ld h, c
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$77

    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $005F
    inc bc
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_49B4

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, d
    ld d, l
    ld c, [hl]
    ld hl, $FDFE
    ld e, a
    ld bc, $A202
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    ld hl, $4920
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    rst $38

jr_00B_4972:
    ld h, c
    jr nz, @+$72

    ld l, h
    ld h, c
    ld l, [hl]
    ld hl, $41FE
    jr nz, jr_00B_49ED

    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, @+$75

    ld l, a
    rst $38
    ld h, e
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    ccf
    jr nz, jr_00B_49F3

    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_00B_49F9

    ld h, l
    ld [hl], h
    inc l
    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, jr_00B_4A0A

    jr nz, @+$72

    ld l, h
    ld h, c
    ld l, [hl]
    ccf
    cp $FD
    and d
    xor b
    ld c, a

jr_00B_49B4:
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    jr nz, jr_00B_4A2A

    ld h, c
    halt
    ld h, l
    jr nz, jr_00B_4A28

    jr nz, jr_00B_4A39

    ld l, h
    ld h, c
    ld l, [hl]
    ccf
    rst $38
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_4A3D

    ld [hl], e
    jr nz, jr_00B_4A40

    ld [hl], h
    ccf
    cp $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, a
    ld [bc], a
    inc bc
    ld b, l
    and d
    ld c, b

jr_00B_49ED:
    ld e, a
    and [hl]
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h

jr_00B_49F3:
    ld hl, $4920
    jr nz, @+$66

    ld l, a

jr_00B_49F9:
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, @+$6B

    ld [hl], h
    ld hl, $57FE
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_00B_4A0A:
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00B_4A81

    ld l, h
    ld h, c
    ld l, [hl]
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $2245
    rlca
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld e, l

jr_00B_4A28:
    ld d, d
    inc de

jr_00B_4A2A:
    dec b
    inc bc
    ld hl, sp+$4A
    rra
    dec h
    ld [hl], l
    call nc, $0B8A
    dec a
    ld d, e
    add hl, de
    add sp, $46

jr_00B_4A39:
    dec b
    inc b
    ld hl, sp+$4A

jr_00B_4A3D:
    rra
    dec h
    ld [hl], l

jr_00B_4A40:
    call nc, $0B60
    ld bc, $1952
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    ld hl, $7725
    call nc, $0BB0
    ccf
    ld d, h
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    ld e, $25
    ld [hl], h
    call nc, $0B00
    sub $4D
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    ld e, $1B
    ld c, b
    db $D3
    jr nc, jr_00B_4A7B

    add a
    ld d, b
    add hl, de
    add sp, $46
    dec b
    ld [$4AF8], sp
    jr nz, jr_00B_4A96

jr_00B_4A7B:
    ld c, d
    db $D3
    nop
    dec bc
    cp [hl]
    ld c, d

jr_00B_4A81:
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00B_4A94

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_00B_4A9C

    and b
    ld b, b
    nop
    add e
    nop

jr_00B_4A94:
    ld l, [hl]
    ld a, [hl+]

jr_00B_4A96:
    dec c
    jr nz, @+$7D

    nop
    add [hl]
    nop

jr_00B_4A9C:
    ld l, [hl]
    ld h, $0D
    ld h, b
    ld e, l
    and b
    adc b
    nop
    ld l, [hl]
    jr nc, jr_00B_4AB4

    ret nz

    ld e, a
    nop
    adc e
    nop
    adc b
    rra
    jr nz, jr_00B_4B23

    rrca
    rst $38
    ld a, a
    sbc b

jr_00B_4AB4:
    ld a, d
    ld h, b
    rrca
    dec bc
    inc bc
    ld b, l
    ld c, b
    ld c, $10
    ld b, a
    inc d
    inc d
    and c
    ld e, l
    ld e, a
    inc bc
    ld b, $15
    inc d
    cp a
    ld e, l
    ld [$C914], sp
    ld e, l
    ld [$BF14], sp
    ld e, l
    ld [$C914], sp
    ld e, l
    ld [$BF14], sp
    ld e, l
    ld [$A114], sp
    ld e, l
    nop
    nop
    ld e, a
    inc b
    inc bc
    dec d
    inc d
    ld c, l
    ld e, h
    db $10
    inc d
    and c
    ld e, l
    nop
    nop
    ld e, a
    dec b
    inc bc
    inc d
    inc d
    xor e
    ld e, l
    ld e, a
    ld b, $03
    dec d
    inc d
    ld c, l
    ld e, h
    jr jr_00B_4B10

    ld l, l
    ld e, h
    stop
    ld e, a
    rlca
    inc bc
    dec d
    inc d
    ld c, l
    ld e, h
    jr z, jr_00B_4B09

jr_00B_4B09:
    ld e, a
    ld [$1603], sp
    inc d
    ld c, l
    ld e, h

jr_00B_4B10:
    jr jr_00B_4B12

jr_00B_4B12:
    ld bc, $9714
    ld e, l
    inc b
    nop
    ld bc, $5F00
    add hl, bc
    dec b
    dec d
    inc d
    sub a
    ld e, l
    jr nz, jr_00B_4B37

jr_00B_4B23:
    db $D3
    ld e, l
    jr nz, jr_00B_4B3B

    db $DD
    ld e, l
    jr nz, jr_00B_4B3F

    cp a
    ld e, l
    jr nz, jr_00B_4B43

    and c
    ld e, l
    jr nz, jr_00B_4B33

jr_00B_4B33:
    ld e, [hl]
    dec bc
    push bc
    ld c, e

jr_00B_4B37:
    ld e, a
    ld a, [bc]
    inc bc
    inc d

jr_00B_4B3B:
    inc d
    db $DD
    ld e, l
    ld e, a

jr_00B_4B3F:
    dec bc
    dec b
    inc d
    inc d

jr_00B_4B43:
    db $D3
    ld e, l
    ld e, a
    inc c
    ld b, $14
    inc d
    sub a
    ld e, l
    ld e, a
    dec c
    rlca
    inc d
    inc d
    db $D3
    ld e, l
    ld e, a
    ld c, $06
    inc d
    inc d
    sub a
    ld e, l
    ld e, a
    rrca
    ld b, $15
    inc d
    inc hl
    ld e, h
    jr nz, @+$16

    sub a
    ld e, l
    nop
    nop
    ld e, a
    ld de, $1502
    inc d
    db $DD
    ld e, l
    db $10
    inc d
    db $D3
    ld e, l
    db $10
    inc d
    cp a
    ld e, l
    jr nz, jr_00B_4B8C

    ret


    ld e, l
    jr nz, jr_00B_4B90

    db $D3
    ld e, l
    jr nz, jr_00B_4B94

    db $DD
    ld e, l
    jr nz, jr_00B_4B98

    sub a
    ld e, l
    nop
    nop
    ld e, a
    ld [de], a
    rlca
    dec d

jr_00B_4B8C:
    inc d
    inc hl
    ld e, h
    inc l

jr_00B_4B90:
    inc d
    and c
    ld e, l
    nop

jr_00B_4B94:
    nop
    ld e, [hl]
    dec bc
    nop

jr_00B_4B98:
    ld c, l
    ld e, a
    inc de
    rlca
    dec d
    inc d
    cp a
    ld e, l
    db $10
    inc d
    ret


    ld e, l
    db $10
    inc d
    db $D3
    ld e, l
    jr nz, jr_00B_4BBE

    db $DD
    ld e, l
    jr nz, jr_00B_4BC2

    cp a
    ld e, l
    ld c, b
    inc d
    and c
    ld e, l
    add b
    inc d
    ld c, l
    ld e, h
    ld b, b
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a

jr_00B_4BBE:
    ld a, d
    ld h, b
    rrca
    ld c, b

jr_00B_4BC2:
    ld c, $10
    ld b, a
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_4C38

    ld [hl], e
    jr nz, jr_00B_4C45

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_00B_4C38

    rst $38
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, @+$69

    ld l, h
    ld h, c
    ld h, h
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    ld e, a
    ld a, [bc]
    inc bc
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld d, e
    ld [hl], e
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_00B_4C72

    ld l, a
    ld [hl], h
    jr nz, jr_00B_4C6A

    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld d, h
    ld c, b
    ld b, c
    ld d, h
    jr nz, jr_00B_4C81

    ld l, a
    ld l, c
    ld [hl], e
    ld a, c
    ld l, $FE
    db $FD
    ld e, a
    dec bc
    dec b
    and d
    jr z, jr_00B_4C63

    and [hl]
    ld d, e
    ld [hl], e
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_00B_4CAE

    ld h, l
    ld h, c
    ld l, b

jr_00B_4C38:
    inc l
    jr nz, jr_00B_4CA7

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_4CA7

    ld h, c

jr_00B_4C45:
    ld l, [hl]
    jr nz, @+$76

    ld h, c
    ld l, h
    ld l, e
    ld l, $FE
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00B_4CC2

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    rst $38
    ld d, a
    ld c, a
    ld c, a
    ld hl, $5920
    ld b, l
    ld b, c

jr_00B_4C63:
    ld c, b
    ld hl, $4120
    ld l, [hl]
    ld h, h
    dec l

jr_00B_4C6A:
    cp $FD
    ld e, a
    inc c
    ld b, $A2
    cp b
    ld e, l

jr_00B_4C72:
    and [hl]
    ld b, c
    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, a
    ld [hl], b

jr_00B_4C81:
    ld [hl], e
    ld l, $20
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$65

    ld h, l
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    rst $38
    ld l, l
    ld h, c
    ld [hl], d
    ld l, e
    ld [hl], e
    jr nz, jr_00B_4D19

    ld l, b
    ld h, l

jr_00B_4CA7:
    cp $70
    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_00B_4CAE:
    ld h, a
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00B_4D28

    ld l, b
    ld h, l
    rst $38
    ld [hl], d
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_00B_4D2C

    ld h, [hl]
    jr nz, @+$4D

    ld h, l
    ld h, l

jr_00B_4CC2:
    ld [hl], b
    ld h, l
    ld [hl], d
    cp $66
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00B_4D39

    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_00B_4D47

    ld l, a
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld c, b
    ld hl, $5720
    ld c, a
    ld c, a
    ld c, a
    ld hl, $47FF
    ld c, a
    jr nz, jr_00B_4D45

    ld b, c
    ld c, h
    ld b, c
    ld b, [hl]
    ld e, c
    ld hl, $FE21
    db $FD
    and c
    ld e, a
    dec c
    rlca
    ld b, l
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00B_4D80

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00B_4D8B

    ld l, a
    ld [hl], l
    rst $38
    halt
    ld h, l
    ld [hl], d
    ld a, c

jr_00B_4D19:
    jr nz, jr_00B_4D88

    ld [hl], l
    ld h, e
    ld l, b
    inc l
    jr nz, jr_00B_4D82

    ld l, h
    ld l, h
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_4DA1

jr_00B_4D28:
    ld l, a
    ld [hl], l
    ld l, $20

jr_00B_4D2C:
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6B

    ld [hl], e
    rst $38
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l

jr_00B_4D39:
    jr nz, jr_00B_4D9C

    ld l, [hl]
    jr nz, jr_00B_4DA6

    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, $FE
    db $FD

jr_00B_4D45:
    and d
    cp b

jr_00B_4D47:
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$67

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_00B_4DBE

    ld [hl], h
    inc l
    rst $38
    ld l, e
    ld l, c
    ld h, h
    ld l, $FE
    db $FD
    and d
    ret c

    ld b, a
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_00B_4DD7

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, h
    jr nz, jr_00B_4DDC

    ld h, [hl]
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and d
    ld hl, sp+$63
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_00B_4DDE

    ld l, l
    jr nz, jr_00B_4DC9

jr_00B_4D80:
    ld l, $FF

jr_00B_4D82:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_4DEB

    ld l, c

jr_00B_4D88:
    ld h, h
    jr nz, @+$79

jr_00B_4D8B:
    ld h, l
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, @+$4B

jr_00B_4D9C:
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e

jr_00B_4DA1:
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, c

jr_00B_4DA6:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00B_4E14

    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_4DF7

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5020
    ld b, c
    ld d, d

jr_00B_4DBE:
    ld d, h
    ld e, c
    rst $38
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    ld hl, $4820
    ld c, a

jr_00B_4DC9:
    ld c, a
    ld d, d
    ld b, c
    ld e, c
    ld hl, $FE21
    db $FD
    and c
    ld e, a
    inc de
    rlca
    ld b, l
    dec d

jr_00B_4DD7:
    dec d
    ld a, [de]
    ld a, b
    jr jr_00B_4DDC

jr_00B_4DDC:
    ld e, [hl]
    dec bc

jr_00B_4DDE:
    pop bc
    ld c, [hl]
    dec d
    dec d
    ld a, [de]
    ld a, b
    jr jr_00B_4DFB

    ld l, [hl]
    ld a, b
    ld [$1A15], sp

jr_00B_4DEB:
    ld a, b
    ld [$4A15], sp
    ld a, b
    ld [$2A15], sp
    ld a, b
    ld [$3A15], sp

jr_00B_4DF7:
    ld a, b
    ld [$6415], sp

jr_00B_4DFB:
    ld a, b
    ld [$3A15], sp
    ld a, b
    ld [$4A15], sp
    ld a, b
    ld [$3A15], sp
    ld a, b
    inc c
    dec d
    ld c, d
    ld a, b
    jr nz, jr_00B_4E23

    ld a, [hl+]
    ld a, b
    db $10
    dec d
    ld a, [hl-]
    ld a, b

jr_00B_4E14:
    inc c
    dec d
    ld a, [de]
    ld a, b
    ld [$4A15], sp
    ld a, b
    inc d
    dec d
    ld h, h
    ld a, b
    nop
    nop
    ld e, a

jr_00B_4E23:
    ld [bc], a
    dec b
    add a
    jr nz, jr_00B_4E28

jr_00B_4E28:
    ld bc, $0B00
    rlca
    dec bc
    ld [$035F], sp
    ld b, $14
    dec d
    ld e, d
    ld a, b
    add a
    stop
    db $FC
    nop
    dec d
    dec d
    ld a, [de]
    ld a, b
    inc b
    dec d
    ld a, [hl-]
    ld a, b
    jr jr_00B_4E59

    ld h, h
    ld a, b
    ld [$4A15], sp
    ld a, b
    ld [$6E15], sp
    ld a, b
    db $10
    dec d
    ld a, [de]
    ld a, b
    ld [$3A15], sp
    ld a, b
    jr jr_00B_4E6D

    adc h

jr_00B_4E59:
    ld a, b
    nop
    nop
    ld e, a
    rlca
    inc bc
    dec d
    dec d
    ld a, b
    ld a, b
    db $10
    dec d
    and b
    ld a, b
    nop
    nop
    ld e, a
    add hl, bc
    dec b
    ld b, e

jr_00B_4E6D:
    db $10
    inc d
    dec d
    adc h
    ld a, b
    ld e, a
    dec bc
    dec b
    inc d
    dec d
    and b
    ld a, b
    ld e, a
    inc c
    ld b, $14
    dec d
    adc h
    ld a, b
    ld e, a
    dec c
    rlca
    dec d
    dec d
    adc h
    ld a, b
    jr nz, jr_00B_4E9E

    and b
    ld a, b
    jr nz, jr_00B_4EA2

    adc h
    ld a, b
    jr nz, jr_00B_4EA6

    and b
    ld a, b
    jr nz, jr_00B_4EAA

    adc h
    ld a, b
    nop
    nop
    ld e, [hl]
    dec bc
    jp hl


    ld c, [hl]
    ld e, a

jr_00B_4E9E:
    rrca
    ld b, $15
    dec d

jr_00B_4EA2:
    and b
    ld a, b
    jr nz, jr_00B_4EBB

jr_00B_4EA6:
    ld a, b
    ld a, b
    nop
    nop

jr_00B_4EAA:
    ld e, a
    ld [de], a
    rlca
    dec d
    dec d
    ld a, b
    ld a, b
    db $10
    dec d
    adc h
    ld a, b
    nop
    nop
    ld e, a
    inc de
    rlca
    dec d

jr_00B_4EBB:
    dec d
    ld a, [hl-]
    ld a, b
    jr nc, jr_00B_4EC0

jr_00B_4EC0:
    add hl, de
    and d
    jr z, jr_00B_4F07

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $4820
    ld b, l
    ld d, d
    ld b, l
    jr nz, jr_00B_4F24

    ld c, b
    ld b, l
    ld e, c
    rst $38
    ld b, e
    ld c, a
    ld c, l
    ld b, l
    ld hl, $4820
    ld b, c
    jr nz, jr_00B_4F26

    ld b, c
    ld b, c
    ld b, c
    ld hl, $FDFE
    and c
    ld e, a
    ld [bc], a
    dec b
    ld b, l
    and d
    jr z, jr_00B_4F2F

    and [hl]
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00B_4F74

    ld l, b
    ld l, $2E
    ld l, $FE
    ld e, c
    ld h, l
    ld h, c

jr_00B_4F07:
    ld l, b
    ld l, $20
    ld c, a
    ld l, e
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld c, $06
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_00B_4F89

    ld h, c
    ld [hl], e
    rst $38

jr_00B_4F24:
    ld [hl], b
    ld [hl], d

jr_00B_4F26:
    ld l, a
    halt
    ld h, l
    ld l, [hl]
    jr nz, @+$6A

    ld h, l
    ld [hl], d
    ld [hl], e

jr_00B_4F2F:
    ld h, l
    ld l, h
    ld h, [hl]
    cp $74
    ld l, a
    jr nz, jr_00B_4F99

    ld h, l
    jr nz, jr_00B_4FAD

    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    inc l
    rst $38
    ld h, [hl]
    ld h, c
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_00B_4FAA

    ld h, c
    ld [hl], b
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    inc l
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_4FCA

    ld h, l
    ld [hl], d
    ld [hl], e
    ld h, c
    ld [hl], h
    ld l, c
    ld l, h
    ld h, l
    ld l, $FF
    ld d, e
    ld l, b
    ld h, l
    jr nz, jr_00B_4FC8

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    cp $65
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_00B_4FDF

    ld h, [hl]
    jr nz, jr_00B_4FE7

    ld l, b

jr_00B_4F74:
    ld h, l
    rst $38
    ld [hl], d
    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    daa
    jr nz, jr_00B_4FED

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    cp $66
    ld h, l
    ld h, c
    ld [hl], d

jr_00B_4F89:
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, h
    ld a, c
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_5008

    ld l, a
    ld l, h
    halt
    ld h, l

jr_00B_4F99:
    ld h, h
    cp $65
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_00B_5010

    ld l, [hl]
    ld h, l
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00B_501C

    ld l, b
    ld h, l

jr_00B_4FAA:
    ld l, l
    ld l, $FE

jr_00B_4FAD:
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00B_5026

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    jr nz, jr_00B_5028

    ld l, a
    ld [hl], d
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h

jr_00B_4FC8:
    ld l, $FE

jr_00B_4FCA:
    db $FD
    and c
    ld e, a
    rrca
    ld b, $A2
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00B_5053

    ld l, c
    ld l, h
    ld l, h

jr_00B_4FDF:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_5046

    ld h, e
    ld h, e

jr_00B_4FE7:
    ld h, l
    ld [hl], b
    ld [hl], h
    jr nz, jr_00B_5060

    ld l, b

jr_00B_4FED:
    ld h, l
    cp $72
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_00B_5064

    ld h, [hl]
    jr nz, jr_00B_5043

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00B_5050

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l

jr_00B_5008:
    cp $77
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_00B_507F

jr_00B_5010:
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00B_5089

    ld l, b
    ld h, l
    rst $38
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h

jr_00B_501C:
    jr nz, jr_00B_507F

    ld l, [hl]
    ld h, h
    jr nz, jr_00B_5089

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h

jr_00B_5026:
    cp $74

jr_00B_5028:
    ld l, b
    ld h, l
    jr nz, jr_00B_509F

    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    jr nz, jr_00B_5094

    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    dec l
    ld h, d
    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld h, [hl]

jr_00B_5043:
    cp $61
    ld l, h

jr_00B_5046:
    ld l, h
    jr nz, jr_00B_50B8

    ld h, [hl]
    jr nz, jr_00B_50C0

    ld l, b
    ld h, l
    rst $38
    ld l, c

jr_00B_5050:
    ld l, [hl]
    ld l, b
    ld h, c

jr_00B_5053:
    ld h, d
    ld l, c
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_00B_50CB

    ld h, [hl]
    cp $74
    ld l, b

jr_00B_5060:
    ld h, l
    jr nz, jr_00B_50AA

    ld [hl], d

jr_00B_5064:
    ld h, l
    ld h, c
    ld [hl], h
    rst $38
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, a
    ld h, l
    ld h, l
    ld l, $2E
    ld l, $20
    ld c, c
    ld l, $2E

jr_00B_507F:
    ld l, $FE
    db $FD
    and c
    ld e, a
    db $10
    ld [bc], a
    ld b, l
    inc d
    inc de

jr_00B_5089:
    ld a, [hl+]
    ld l, l
    ld e, [hl]
    dec bc
    inc e
    ld d, c
    ld e, a
    inc b
    inc bc
    ld d, $13

jr_00B_5094:
    or b
    ld l, h
    stop
    ld bc, $1400
    inc de
    ld a, [hl+]
    ld l, l
    ld e, [hl]

jr_00B_509F:
    dec bc
    inc l
    ld d, c
    ld e, a
    dec b
    inc bc
    inc d
    inc de
    ld a, $6D
    ld e, a

jr_00B_50AA:
    ld b, $03
    dec d
    inc de
    ld a, $6D
    ld [$6613], sp
    ld l, l
    db $10
    inc de
    ld a, [hl+]
    ld l, l

jr_00B_50B8:
    db $10
    inc de
    ret nc

    ld l, h
    inc c
    inc de
    or b
    ld l, h

jr_00B_50C0:
    db $10
    inc de
    ld a, [hl+]
    ld l, l
    nop
    nop
    ld e, a
    dec c
    rlca
    inc d
    inc de

jr_00B_50CB:
    ld e, h
    ld l, l
    ld e, a
    ld c, $06
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld e, a
    db $10
    ld [bc], a
    dec d
    inc de
    or b
    ld l, h
    jr nz, jr_00B_50DD

jr_00B_50DD:
    ld e, [hl]
    dec bc
    halt
    ld d, c
    dec d
    inc de
    ld a, [hl+]
    ld l, l
    jr nz, jr_00B_50FA

    and b
    ld l, h
    jr nz, jr_00B_50FE

    ld a, [hl+]
    ld l, l
    nop
    nop
    ld h, l
    ld bc, $0B5E
    sbc c
    ld d, c
    ld e, a
    ld [de], a
    rlca
    dec d
    inc de

jr_00B_50FA:
    ret nz

    ld l, h
    db $10
    inc de

jr_00B_50FE:
    ld a, $6D
    nop
    nop
    ld e, a
    inc de
    rlca
    dec d
    inc de
    ld a, [hl+]
    ld l, l
    jr z, jr_00B_511E

    or b
    ld l, h
    jr nz, jr_00B_5122

    ld a, [hl+]
    ld l, l
    jr nz, jr_00B_5126

    ld d, d
    ld l, l
    ld b, b
    inc de
    or b
    ld l, h
    add b
    nop
    add hl, de
    and d
    cp b

jr_00B_511E:
    ld e, l
    and [hl]
    ld b, c
    ld l, b

jr_00B_5122:
    ld h, l
    ld l, l
    ld l, $FE

jr_00B_5126:
    db $FD
    and c
    ld e, a
    inc bc
    ld b, $45
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    ld h, [hl]
    jr nz, jr_00B_51AD

    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    rst $38
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_00B_51B2

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $2E
    ld l, $FE
    db $FD
    ld e, a
    dec b
    inc bc
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    rst $38
    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_00B_51D1

    ld h, c
    ld l, e
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_00B_51D7

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld b, $03
    ld b, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_00B_51E6

    ld l, a
    ld [hl], h
    jr nz, @+$63

    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_00B_51E1

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_00B_5208

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $53FF
    ld h, c
    ld l, h
    ld h, c

jr_00B_51AD:
    ld h, [hl]
    ld a, c
    inc l
    jr nz, @+$4B

jr_00B_51B2:
    jr nz, jr_00B_5222

    ld l, a
    ld [hl], a
    cp $63
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_522A

    ld [hl], e
    jr nz, jr_00B_5240

    ld l, b
    ld h, l
    jr nz, @+$70

    ld h, l

jr_00B_51D1:
    ld [hl], a
    cp $4B
    ld h, l
    ld h, l
    ld [hl], b

jr_00B_51D7:
    ld h, l
    ld [hl], d
    jr nz, jr_00B_524A

    ld h, [hl]
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a

jr_00B_51E1:
    ld l, a
    ld l, l
    ld hl, $FDFE

jr_00B_51E6:
    and c
    ld e, a
    ld de, $A602
    ld c, b
    ld l, c
    ld [hl], b
    jr nz, jr_00B_5238

    ld c, c
    ld d, b
    rst $38
    ld c, b
    ld c, a
    ld c, a
    ld d, d
    ld b, c
    ld e, c
    ld hl, $FDFE
    and c
    ld e, a
    ld [de], a
    rlca
    ld b, l
    dec d
    ld de, $52D6
    jr nc, jr_00B_5218

    ld a, [hl]

jr_00B_5208:
    ld d, e
    jr nz, @+$13

    sub $52
    jr nc, jr_00B_5220

    or $52
    db $10
    ld de, $5392
    nop
    nop
    ld e, a

jr_00B_5218:
    nop
    inc b
    dec d
    ld de, $5360
    ld b, b
    nop

jr_00B_5220:
    ld e, [hl]
    dec bc

jr_00B_5222:
    rra
    ld d, e
    ld e, a
    ld bc, $0B04
    ld b, $15

jr_00B_522A:
    ld de, $5360
    jr nc, jr_00B_5240

    ld [hl], $53
    inc b
    ld de, $536A
    ld [$6011], sp

jr_00B_5238:
    ld d, e
    ld [$7411], sp
    ld d, e
    ld [$5611], sp

jr_00B_5240:
    ld d, e
    ld [$6A11], sp
    ld d, e
    inc b
    ld de, $5336
    inc b

jr_00B_524A:
    ld de, $5360
    ld c, $11
    ld [hl], $53
    inc b
    ld de, $5360
    ld c, $11
    ld [hl], $53
    inc b
    ld de, $5360
    db $10
    ld de, $5374
    jr nz, jr_00B_5274

    adc b
    ld d, e
    inc b
    ld de, $539C
    inc b
    ld de, $5388
    inc b
    ld de, $5374
    nop
    nop
    ld e, a

jr_00B_5274:
    ld [bc], a
    dec b
    dec d
    ld de, $5360
    nop
    nop
    ld e, a
    inc bc
    ld b, $15
    ld de, $5356
    ld d, $11
    ld b, [hl]
    ld d, e
    ld c, $11
    ld h, $53
    inc b
    ld de, $5346
    ld [bc], a
    ld de, $5356
    ld [$3611], sp
    ld d, e
    ld [$7411], sp
    ld d, e
    jr nz, @+$13

    adc b
    ld d, e
    inc b
    ld de, $539C
    inc b
    ld de, $5388
    inc b
    ld de, $539C
    inc b
    ld de, $5374
    db $10
    ld de, $5346
    ld [$2611], sp
    ld d, e
    ld [$4611], sp
    ld d, e
    jr @+$13

    ld a, [hl]
    ld d, e
    nop
    nop
    ld e, a
    inc b
    inc bc
    ld c, e
    ld e, a
    ld [$1503], sp
    ld de, $536A
    db $10
    ld de, $5392
    nop
    nop
    ld e, a
    add hl, bc
    dec b
    ld b, e
    db $10
    inc d
    ld de, $537E
    ld e, a
    dec bc
    dec b
    inc d
    ld de, $5392
    ld e, a
    inc c
    ld b, $14
    ld de, $537E
    ld e, a
    dec c
    rlca
    inc d
    ld de, $536A
    ld e, a
    ld c, $06
    inc d
    ld de, $537E
    ld e, a
    rrca
    ld b, $15
    ld de, $5392
    db $10
    ld de, $536A
    nop
    nop
    ld e, a
    ld [de], a
    rlca
    dec d
    ld de, $536A
    db $10
    ld de, $537E
    nop
    nop
    ld e, a
    inc de
    rlca
    dec d
    ld de, $537E
    jr jr_00B_532B

    ld d, $53
    jr nc, jr_00B_531E

jr_00B_531E:
    add hl, de
    and d
    ret c

    ld b, a
    and [hl]
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$65

    ld l, a
    ld l, l

jr_00B_532B:
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld bc, $4504
    dec d
    ld de, $483E
    jr nz, @+$13

    cp [hl]
    ld c, b
    jr nz, @+$13

    ldh a, [rOBP0]
    jr nz, @+$13

    and $48
    jr nz, jr_00B_5360

    ld a, $48
    jr z, jr_00B_5364

    call c, $2048
    ld de, $485E
    jr nz, @+$13

    call c, $2048
    nop
    ld e, [hl]

jr_00B_5360:
    dec bc
    add hl, de
    ld d, h
    ld h, l

jr_00B_5364:
    ld bc, $040B
    dec bc
    dec b
    inc d
    ld de, $4904
    ld h, e
    ld bc, $1114
    call c, $5F48
    nop
    inc b
    dec d
    ld de, $4904
    jr nc, jr_00B_538D

    call c, Call_00B_6448
    ld de, $4904
    nop
    nop
    ld e, a
    ld bc, $1504
    ld de, $4904
    jr nz, jr_00B_539E

jr_00B_538D:
    call c, $0848
    ld de, $48F0
    jr c, @+$13

    cp [hl]
    ld c, b
    jr z, jr_00B_53AA

    ldh a, [rOBP0]
    ld [$DC11], sp

jr_00B_539E:
    ld c, b
    nop
    nop
    ld e, a
    ld [bc], a
    dec b
    dec d
    ld de, $4904
    nop
    nop

jr_00B_53AA:
    ld e, a
    inc bc
    ld b, $15
    ld de, $48F0
    db $10
    ld de, $489E
    inc b
    ld de, $487E
    db $10
    ld de, $48AE
    inc h
    ld de, $48E6
    nop
    nop
    ld e, a
    rlca
    inc bc
    dec d
    ld de, $48D2
    db $10
    ld de, $48FA
    nop
    nop
    ld e, a
    add hl, bc
    dec b
    ld b, e
    db $10
    inc d
    ld de, $48E6
    ld e, a
    ld a, [bc]
    inc bc
    inc d
    ld de, $48FA
    ld e, a
    inc c
    ld b, $14
    ld de, $48E6
    ld e, a
    dec c
    rlca
    inc d
    ld de, $48D2
    ld e, a
    ld c, $06
    inc d
    ld de, $48E6
    ld e, a
    rrca
    ld b, $15
    ld de, $48FA
    jr nz, jr_00B_540F

    jp nc, LCDCInterrupt

    nop
    ld e, a
    ld [de], a
    rlca
    dec d
    ld de, $48D2
    db $10
    ld de, $48E6
    nop
    nop

jr_00B_540F:
    ld e, a
    inc de
    rlca
    dec d
    ld de, $48AE
    jr nc, jr_00B_5418

jr_00B_5418:
    add hl, de
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld c, c
    jr nz, jr_00B_5487

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_00B_546F

    jr nz, jr_00B_549F

    ld h, c
    ld [hl], e
    rst $38
    ld h, c
    jr nz, jr_00B_5490

    ld l, c
    ld [hl], h
    jr nz, @+$67

    ld h, c
    ld [hl], d
    ld l, h
    ld a, c
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $1545
    inc de
    or [hl]
    ld [hl], c
    jr nc, jr_00B_5458

    ld e, [hl]
    ld [hl], d
    jr nz, jr_00B_545C

    or [hl]
    ld [hl], c
    jr jr_00B_544D

jr_00B_544D:
    ld e, c
    ld bc, $1315
    sub $71
    jr nz, jr_00B_5468

    ld c, d
    ld [hl], d
    nop

jr_00B_5458:
    nop
    ld e, [hl]
    dec bc
    rra

jr_00B_545C:
    ld d, l
    ld e, a
    nop
    inc b
    dec d
    inc de
    ld b, b
    ld [hl], d
    jr nc, jr_00B_5479

    ld c, d
    ld [hl], d

jr_00B_5468:
    ld h, h
    inc de
    ld b, b
    ld [hl], d
    nop
    nop
    ld e, a

jr_00B_546F:
    ld bc, $1504
    inc de
    ld b, b
    ld [hl], d
    jr @+$15

    ld [hl], d
    ld [hl], d

jr_00B_5479:
    ld [$4A13], sp
    ld [hl], d
    ld [$5E13], sp
    ld [hl], d
    db $10
    inc de
    ld [hl], $72
    jr nz, @+$15

jr_00B_5487:
    ld e, [hl]
    ld [hl], d
    jr c, jr_00B_549E

    ld [hl], $72
    ld [$6813], sp

jr_00B_5490:
    ld [hl], d
    ld [$5413], sp
    ld [hl], d
    ld [$7C13], sp
    ld [hl], d
    ld [$F613], sp
    ld [hl], c
    db $10

jr_00B_549E:
    inc de

jr_00B_549F:
    ld a, h
    ld [hl], d
    nop
    nop
    ld e, a
    ld [bc], a
    dec b
    dec d
    inc de
    ld b, b
    ld [hl], d
    nop
    nop
    ld e, a
    inc bc
    ld b, $15
    inc de
    ld [hl], $72
    db $10
    inc de
    or $71
    db $10
    inc de
    ld h, $72
    db $10
    inc de
    ld b, $72
    jr nz, jr_00B_54D4

    ld d, $72
    inc h
    inc de
    ld l, b
    ld [hl], d
    stop
    ld e, a
    ld [$1503], sp
    inc de
    ld d, h
    ld [hl], d
    db $10
    inc de
    ld a, h
    ld [hl], d

jr_00B_54D4:
    nop
    nop
    ld e, a
    add hl, bc
    dec b
    ld b, e
    db $10
    inc d
    inc de
    ld l, b
    ld [hl], d
    ld e, a
    dec bc
    dec b
    inc d
    inc de
    ld a, h
    ld [hl], d
    ld e, a
    inc c
    ld b, $14
    inc de
    ld l, b
    ld [hl], d
    ld e, a
    dec c
    rlca
    inc d
    inc de
    ld [hl], $72
    ld e, a
    ld c, $06
    inc d
    inc de
    ld l, b
    ld [hl], d
    ld e, a
    rrca
    ld b, $15
    inc de
    ld a, h
    ld [hl], d
    db $10
    inc de
    ld d, h
    ld [hl], d
    nop
    nop
    ld e, a
    ld [de], a
    rlca
    dec d
    inc de
    ld d, h
    ld [hl], d
    db $10
    inc de
    ld l, b
    ld [hl], d
    nop
    nop
    ld e, a
    inc de
    rlca
    dec d
    inc de
    ld b, $72
    jr nc, jr_00B_551E

jr_00B_551E:
    add hl, de
    and d
    ld hl, sp+$63
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_00B_5596

    ld l, [hl]
    ld h, l
    jr nz, jr_00B_5590

    ld l, h
    ld [hl], e
    ld h, l
    jr nz, jr_00B_5599

    ld [hl], e
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00B_55B1

    ld h, l
    ld [hl], h
    inc l
    jr nz, jr_00B_55A5

    ld [hl], l
    ld l, b
    ccf
    cp $FD
    and c
    ld e, a
    nop
    inc b
    ld b, l
    ld [hl+], a
    rlca
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ccf
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld c, $0B
    ld e, b
    pop de
    nop
    dec bc
    ld d, [hl]
    ld d, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    dec bc
    ld d, [hl]
    pop de
    ld a, c
    dec bc
    ret


    ld d, [hl]
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec c
    inc c

jr_00B_557A:
    ld [hl], l
    pop de
    xor c
    dec bc
    ei
    ld d, [hl]
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    rlca
    dec c
    adc l
    pop de
    nop
    inc de
    ld d, h
    ld l, b
    add hl, de

jr_00B_5590:
    add sp, $46
    dec b
    ld b, $F8
    ld c, d

jr_00B_5596:
    ld [$E810], sp

jr_00B_5599:
    pop de
    dec hl
    ld de, $4242
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A

jr_00B_55A5:
    inc c
    inc de
    ld b, [hl]
    jp nc, $13A0

    xor h
    ld h, d
    add hl, de
    add sp, $46
    dec b

jr_00B_55B1:
    ld [$4AF8], sp
    rrca
    inc de
    ld c, c
    jp nc, $1179

    and e
    ld b, h
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    ld [de], a
    db $10
    ld a, [c]
    pop de
    ld d, e
    ld de, $4E58
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    ld l, [hl]
    dec hl
    dec c
    ret nc

    ld d, l
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_00B_55F6

    ld b, b
    ld l, [hl]
    or b
    add d
    nop
    ld l, [hl]
    ld h, $0D
    ld b, b
    ld [hl], e
    jr nc, jr_00B_557A

    nop

jr_00B_55F6:
    ld l, [hl]
    jr nc, jr_00B_5606

    ret nc

    ld b, e
    sub b
    add a
    nop
    ld l, [hl]
    jr nc, jr_00B_560E

    and b
    ld b, b
    sub b
    adc d
    nop

jr_00B_5606:
    adc b
    ld c, $0A
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_00B_560E:
    ld a, d
    ld h, b
    rrca
    ld e, l
    dec bc
    ld d, $56
    ld b, l
    add a
    ld [hl-], a
    rst $38
    ld bc, $FF46
    nop
    nop
    ld l, [hl]
    add hl, hl
    dec c
    ld b, b
    ld d, e
    nop
    adc d
    nop
    add a
    ld c, b
    nop
    ld bc, $6E00
    jr z, jr_00B_563B

    ret nz

    ld [hl], b
    sub b
    add a
    nop
    add a
    or b
    ld bc, $0000
    ld l, [hl]
    jr nc, jr_00B_5648

jr_00B_563B:
    and b
    ld b, b
    sub b
    adc d
    nop
    add a
    ld c, b
    nop
    rst $38
    nop
    ld l, [hl]
    jr nc, jr_00B_5655

jr_00B_5648:
    ret nc

    ld b, e
    sub b
    add a
    nop
    add a
    inc a
    rst $38
    nop
    nop
    ld e, a
    nop
    ld [bc], a

jr_00B_5655:
    ld b, l
    inc d
    inc d
    and c
    ld e, l
    ld e, a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    dec bc
    xor e
    ld d, a
    dec d
    inc d
    ret


    ld e, l
    jr nz, jr_00B_567B

    ld l, l
    ld e, h
    ld [$4D14], sp
    ld e, h
    jr nz, jr_00B_5683

    and c
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1415
    and c
    ld e, l
    jr nz, jr_00B_568F

jr_00B_567B:
    cp a
    ld e, l
    db $10
    inc d
    ret


    ld e, l
    db $10
    inc d

jr_00B_5683:
    cp a
    ld e, l
    db $10
    inc d
    and c
    ld e, l
    stop
    ld e, [hl]
    dec bc
    ld d, b
    ld e, b

jr_00B_568F:
    ld e, a
    inc bc
    inc bc
    inc d
    inc d
    or l
    ld e, l
    ld e, a
    inc b
    inc bc
    dec d
    inc d
    and c
    ld e, l
    db $10
    inc d
    cp a
    ld e, l
    db $10
    inc d
    ret


    ld e, l
    db $10
    inc d
    and c
    ld e, l
    nop
    nop
    ld e, a
    dec b
    inc b
    dec d
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    ld [$A114], sp
    ld e, l
    ld d, b
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    xor e
    ld e, l
    nop
    nop
    ld e, [hl]
    dec bc
    ret nc

    ld e, d
    ld b, l
    inc d
    dec d
    ld h, h
    ld a, b
    ld h, e
    ld bc, $1514
    and b
    ld a, b
    ld h, e
    ld bc, $1515
    ld a, b
    ld a, b
    jr c, jr_00B_56F0

    and b
    ld a, b
    nop
    nop
    ld h, l
    ld [bc], a
    inc d
    dec d
    ld h, h
    ld a, b
    ld e, a
    dec b
    inc b
    dec d
    dec d
    and b
    ld a, b
    jr nz, jr_00B_5703

    ld h, h
    ld a, b

jr_00B_56F0:
    ld c, b
    dec d
    and b
    ld a, b
    ld [$7815], sp
    ld a, b
    nop
    nop
    ld b, l
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld e, a
    nop
    ld [bc], a
    dec d

jr_00B_5703:
    inc de
    ld a, [hl+]
    ld l, l
    jr nz, jr_00B_571B

    or b
    ld l, h
    stop
    ld e, c
    ld bc, $1315
    ret nc

    ld l, h
    ld [$2A13], sp
    ld l, l
    jr nz, jr_00B_5718

jr_00B_5718:
    ld e, [hl]
    dec bc
    ld [hl], b

jr_00B_571B:
    ld d, a
    ld e, a
    ld bc, $1502
    inc de
    ld h, [hl]
    ld l, l
    jr nz, jr_00B_5738

    ld e, h
    ld l, l
    jr nz, jr_00B_573C

    jr nz, jr_00B_5798

    jr nz, jr_00B_572D

jr_00B_572D:
    ld e, c
    ld bc, $1315
    db $10
    ld l, l
    db $10
    inc de
    ld c, b
    ld l, l
    nop

jr_00B_5738:
    nop
    ld e, a
    ld [bc], a
    ld [bc], a

jr_00B_573C:
    dec d
    inc de
    ld c, b
    ld l, l
    ld c, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, a
    inc bc
    inc bc
    inc d
    inc de
    ld a, [hl+]
    ld l, l
    ld e, a
    inc b
    inc bc
    dec d
    inc de
    ld e, h
    ld l, l
    db $10
    inc de
    ld h, [hl]
    ld l, l
    db $10
    inc de
    ld e, h
    ld l, l
    db $10
    inc de
    ld a, [hl+]
    ld l, l
    nop
    nop
    ld e, a
    dec b
    inc b
    dec d
    inc de
    ret nz

    ld l, h
    jr nz, jr_00B_577E

    or b
    ld l, h
    add b
    nop
    add hl, de
    and d
    cp b
    ld e, l
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_57E7

    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_00B_57E6

jr_00B_577E:
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld l, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_00B_57D7

    ld h, c
    ld h, a
    ld l, c
    jr nz, @+$71

    ld h, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$6A

    ld l, a
    ld [hl], l

jr_00B_5798:
    ld [hl], d
    ld l, $2E
    ld l, $FF
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4502
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld b, c
    ld e, c
    ld hl, $48FF
    ld d, l
    ld d, d
    ld d, d
    ld b, c
    ld b, c
    ld c, b
    cp $FD
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld l, $FF
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00B_584C

    ld l, a
    ld [hl], l
    jr nz, @+$63

jr_00B_57D7:
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and c
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld b, c
    ld e, c
    ld hl, $48FF

jr_00B_57E6:
    ld d, l

jr_00B_57E7:
    ld d, d
    ld d, d
    ld b, c
    ld b, c
    ld c, b
    cp $FD
    and c
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld l, $FE
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00B_587F

    ld l, a
    ld [hl], l
    rst $38
    halt
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00B_587C

    ld [hl], l
    ld h, e
    ld l, b
    ld l, $FE
    db $FD
    and c
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld b, c
    ld e, c
    ld hl, $48FF
    ld d, l
    ld d, d
    ld d, d
    ld b, c
    ld b, c
    ld c, b
    cp $FD
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_00B_58A2

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld l, $2E
    cp $59
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00B_58B6

    ld l, a
    ld l, a
    rst $38
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    ld l, $FE
    db $FD

jr_00B_584C:
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00B_58CA

    ld l, e
    ld h, c
    ld a, c
    inc l
    cp $6D
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_00B_58D1

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00B_58CD

    cp $6C
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_00B_58E2

    ld l, a
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c

jr_00B_587C:
    and [hl]
    ld e, c
    ld h, l

jr_00B_587F:
    ld h, l
    ld h, l
    ld h, c
    ld h, c
    ld l, b
    ld hl, $53FF
    ld [hl], b
    ld h, l
    ld h, l
    ld h, e
    ld l, b
    ld hl, $5320
    ld [hl], b
    ld h, l
    ld h, l
    ld h, e
    ld l, b
    ld hl, $FDFE
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_00B_58F0

    ld c, e

jr_00B_58A2:
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_00B_5920

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_00B_5916

    ld l, [hl]

jr_00B_58B6:
    cp $61
    ld h, h
    halt
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, c
    ld [hl], h
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    ld [hl], e

jr_00B_58CA:
    jr nz, jr_00B_5940

    ld l, b

jr_00B_58CD:
    ld h, c
    ld [hl], h
    jr nz, @+$75

jr_00B_58D1:
    ld l, a
    ld l, l
    ld h, l
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_5952

    ld l, a
    ld [hl], l
    jr nz, jr_00B_593E

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h

jr_00B_58E2:
    ld a, c
    rst $38
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_595E

    ld l, b
    ld h, c
    ld [hl], h
    cp $73
    ld l, [hl]

jr_00B_58F0:
    ld h, l
    ld h, c
    ld l, e
    ld a, c
    jr nz, jr_00B_5965

    ld l, h
    ld h, h
    rst $38
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_00B_5968

    ld h, c
    ld [hl], e
    jr nz, jr_00B_5966

    ld h, l
    ld h, l
    ld l, [hl]
    cp $74
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_597F

    ld h, l
    rst $38
    ld [hl], h
    ld l, a

jr_00B_5916:
    jr nz, jr_00B_597A

    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $4B
    ld h, l

jr_00B_5920:
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_00B_5995

    ld h, [hl]
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld l, $FE
    db $FD
    ld e, e
    ld [bc], a
    and d
    jr z, jr_00B_5979

    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    ld hl, $5920

jr_00B_593E:
    ld b, l
    ld b, c

jr_00B_5940:
    ld b, c
    ld c, b
    ld hl, $4920
    rst $38
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_00B_5973

    ld h, l
    ld l, l
    jr nz, @+$63

    ld l, h
    ld l, h

jr_00B_5952:
    ld hl, $FDFE
    ld e, a
    inc bc
    inc bc
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c

jr_00B_595E:
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_00B_59CC

    ld h, c

jr_00B_5965:
    ld [hl], e

jr_00B_5966:
    rst $38
    ld [hl], b

jr_00B_5968:
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_00B_59D0

    ld l, h
    ld l, h
    jr nz, jr_00B_59E7

jr_00B_5973:
    ld l, b
    ld h, l
    cp $74
    ld h, l
    ld [hl], e

jr_00B_5979:
    ld [hl], h

jr_00B_597A:
    ld [hl], e
    inc l
    jr nz, jr_00B_59DF

    ld l, [hl]

jr_00B_597F:
    ld h, h
    jr nz, jr_00B_59EA

    ld h, c
    ld [hl], e
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_00B_5A01

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00B_5A07

    ld h, l
    ld l, h
    ld l, h
    ld l, $FE

jr_00B_5995:
    ld c, c
    jr nz, jr_00B_5A00

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    cp $63
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, [hl]
    jr nz, jr_00B_5A16

    ld h, l
    ld [hl], d
    jr nz, jr_00B_5A26

    ld l, a
    rst $38
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_00B_5A2A

    ld h, l
    jr nz, jr_00B_5A21

    ld [hl], e
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00B_5A12

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_00B_59CC:
    jr nz, @+$71

    ld h, [hl]
    rst $38

jr_00B_59D0:
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld l, $20
    ld c, c
    jr nz, jr_00B_5A3C

    ld [hl], e
    ld l, e
    cp $79

jr_00B_59DF:
    ld l, a
    ld [hl], l
    jr nz, jr_00B_5A51

    ld l, a
    ld [hl], a
    jr nz, jr_00B_5A5B

jr_00B_59E7:
    ld l, a
    rst $38
    ld h, e

jr_00B_59EA:
    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld l, l
    jr nz, @+$6F

    ld a, c
    cp $63
    ld l, b
    ld l, a
    ld l, c
    ld h, e
    ld h, l
    ld l, $FF
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e

jr_00B_5A00:
    ld h, l

jr_00B_5A01:
    jr nz, jr_00B_5A6C

    ld l, [hl]
    cp $66
    ld h, c

jr_00B_5A07:
    halt
    ld l, a
    ld [hl], d
    jr nz, @+$71

    ld h, [hl]
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_00B_5A12:
    ld h, [hl]
    ld a, c
    jr nz, jr_00B_5A78

jr_00B_5A16:
    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00B_5A8E

    ld h, l

jr_00B_5A21:
    ld [hl], a
    jr nz, jr_00B_5A6F

    ld h, l
    ld h, l

jr_00B_5A26:
    ld [hl], b
    ld h, l
    ld [hl], d
    rst $38

jr_00B_5A2A:
    ld l, a
    ld h, [hl]
    jr nz, jr_00B_5A7C

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ccf
    cp $FD
    and c
    and [hl]
    ld e, c
    ld b, l
    ld b, c
    ld c, b

jr_00B_5A3C:
    ld hl, $FE21
    db $FD
    and c
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    ld [hl], e
    jr nz, jr_00B_5AAA

    ld l, [hl]
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    rst $38
    ld h, c
    ld h, a

jr_00B_5A51:
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, a

jr_00B_5A5B:
    inc b
    inc bc
    ld b, e
    jr nc, @-$5C

    cp b
    ld e, l
    and [hl]
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h

jr_00B_5A6C:
    ld h, c
    ld [hl], h
    ld l, c

jr_00B_5A6F:
    ld l, a
    ld l, [hl]
    ld [hl], e
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]

jr_00B_5A78:
    ld a, c
    inc l
    jr nz, jr_00B_5AF5

jr_00B_5A7C:
    ld l, a
    ld [hl], l
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_00B_5AF3

    ld [hl], l
    ld [hl], d
    jr nz, jr_00B_5AF6

    ld h, l
    ld [hl], a
    rst $38
    ld c, e
    ld h, l
    ld h, l

jr_00B_5A8E:
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    cp $6E
    ld l, a
    ld [hl], a
    jr nz, jr_00B_5B09

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    rst $38
    ld [hl], d
    ld h, l
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l

jr_00B_5AAA:
    ld l, $2E
    ld l, $FE
    ld [hl], h
    ld l, a
    jr nz, @+$6F

    ld a, c
    jr nz, @+$64

    ld h, l
    ld h, h
    ld hl, $47FF
    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$70

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, a
    dec b
    inc b
    add hl, bc
    add hl, bc
    dec bc
    ret c

    ld e, e
    ld b, l
    and d
    jr z, jr_00B_5B16

    and [hl]
    ld d, a
    ld h, c
    ld a, c
    jr nz, jr_00B_5B4D

    ld l, a
    jr nz, @+$69

    ld l, a
    inc l
    rst $38
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l

jr_00B_5AF3:
    cp $62

jr_00B_5AF5:
    ld [hl], l

jr_00B_5AF6:
    ld [hl], h
    jr nz, jr_00B_5B42

    jr nz, jr_00B_5B5F

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $6B
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_5B7D

    ld l, b
    ld h, c
    ld [hl], h

jr_00B_5B09:
    jr nz, jr_00B_5B54

    daa
    ld l, l
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_5B89

    ld l, a

jr_00B_5B16:
    jr nz, jr_00B_5B7C

    ld l, a
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_00B_5B94

    ld l, b
    ld l, c
    ld [hl], e
    cp $53
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00B_5B76

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $FE
    ld c, c
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    cp $69
    ld [hl], h

jr_00B_5B42:
    jr nz, jr_00B_5BA6

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_00B_5BB2

    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_00B_5B4D:
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    inc l

jr_00B_5B54:
    jr nz, jr_00B_5BBF

    ld [hl], h
    daa
    ld [hl], e
    cp $6E
    ld l, a
    ld [hl], h
    jr nz, jr_00B_5BD2

jr_00B_5B5F:
    ld h, c
    ld h, [hl]
    ld h, l
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_5BB1

    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_00B_5BE9

    ld l, b

jr_00B_5B76:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00B_5BF0

jr_00B_5B7C:
    ld l, b

jr_00B_5B7D:
    ld h, l
    rst $38
    ld d, e
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    jr nz, jr_00B_5BD5

    ld b, [hl]
    jr nz, jr_00B_5BD1

jr_00B_5B89:
    ld e, c
    ld d, d
    ld b, l
    ld c, [hl]
    ld hl, $53FE
    ld l, a
    jr nz, jr_00B_5BFE

    ld h, l

jr_00B_5B94:
    ld h, l
    ld [hl], b
    jr nz, jr_00B_5C01

    ld [hl], h
    jr nz, jr_00B_5BFC

    ld l, [hl]
    ld h, h
    rst $38
    ld d, d
    ld d, l
    ld c, h
    ld b, l
    jr nz, jr_00B_5BF8

    ld c, b
    ld b, l

jr_00B_5BA6:
    jr nz, @+$59

    ld c, a
    ld d, d
    ld c, h
    ld b, h
    ld hl, $FDFE
    and d
    sbc b

jr_00B_5BB1:
    ld b, c

jr_00B_5BB2:
    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FF
    ld d, d
    ld [hl], l
    ld l, h
    ld h, l

jr_00B_5BBF:
    jr nz, jr_00B_5C35

    ld l, b
    ld h, l
    jr nz, jr_00B_5C3C

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ccf
    cp $FD
    and c
    ld [hl], d
    rrca
    rst $38
    ld a, a

jr_00B_5BD1:
    ld a, d

jr_00B_5BD2:
    ld h, b
    rrca
    ld c, b

jr_00B_5BD5:
    dec bc
    rst $20
    ld e, e
    dec d
    ld de, $4E58
    ld d, b
    ld de, $4E44
    db $10
    ld de, $4DE0
    jr nc, jr_00B_5BE6

jr_00B_5BE6:
    add hl, de
    sub a
    or e

jr_00B_5BE9:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d

jr_00B_5BF0:
    ld l, b
    ld l, h
    ld d, d
    inc de
    dec b
    nop
    ld hl, sp+$4A

jr_00B_5BF8:
    dec b
    dec e
    ld l, e
    db $D3

jr_00B_5BFC:
    nop
    dec bc

jr_00B_5BFE:
    jr jr_00B_5C5D

    add hl, de

jr_00B_5C01:
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    add hl, bc
    ld d, $9D
    jp nc, $0B00

    ld [hl], c
    ld e, h
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec b
    dec e
    ld l, e
    db $D3
    ld a, [hl+]
    dec bc
    adc d
    ld e, h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec c
    inc d
    ld h, l
    jp nc, $0B50

    ld [$195C], a
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    dec bc

jr_00B_5C35:
    ld d, $9F
    jp nc, $0B80

    inc bc
    ld e, l

jr_00B_5C3C:
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    dec bc
    dec b
    ld l, [hl]
    ld a, [hl+]
    dec c
    jr nz, jr_00B_5CC3

    nop
    add b
    nop
    ld l, [hl]
    ld h, $0D
    ld h, b
    ld e, l
    and b
    add d
    nop
    ld l, [hl]
    jr nc, jr_00B_5C62

    ldh a, [rLYC]
    nop
    add l
    nop
    ld l, [hl]
    ld a, [hl+]

jr_00B_5C5D:
    dec c
    add b
    ld e, b
    nop
    adc b

jr_00B_5C62:
    nop
    adc b
    add hl, bc
    jr jr_00B_5CDA

    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    dec bc
    inc bc
    ld b, l
    inc d
    ld de, $5374
    ld e, a
    nop
    inc bc
    inc d
    ld de, $5392
    ld e, a
    ld bc, $1504
    ld de, $5346
    ld d, b
    nop
    dec bc
    inc b
    ld b, e
    jr nz, jr_00B_5CA3

    dec d
    ld de, $487E
    jr z, @+$13

    xor [hl]
    ld c, b
    ld [$F011], sp
    ld c, b
    nop
    nop
    ld e, [hl]
    dec bc
    xor c
    ld e, h
    ld e, a
    nop
    inc bc
    ld e, a
    ld bc, $1504

jr_00B_5CA3:
    ld de, $48AE
    ld h, b
    nop
    add hl, de
    and d
    ld c, b
    ld b, [hl]
    and [hl]
    ld d, d
    ld d, l
    ld c, [hl]
    jr nz, @+$43

    ld d, a
    ld b, c
    ld e, c
    ld hl, $FF21
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$55

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c

jr_00B_5CC3:
    ld hl, $FE21
    ld d, e
    ld l, b
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00B_5D30

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00B_5D46

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00B_5D49

jr_00B_5CDA:
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00B_5D22

    ld h, c
    ld l, h
    ld h, h
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4504
    dec d
    db $10
    jr nc, jr_00B_5D68

    db $10
    db $10
    and $7A
    jr nz, jr_00B_5D04

    cp [hl]
    ld a, d
    jr nz, jr_00B_5D08

    call c, $307A
    db $10
    ld h, b
    ld a, d
    ld b, $00
    dec bc
    nop
    add hl, de
    inc d

jr_00B_5D04:
    inc de
    rst $10
    ld l, a
    ld e, a

jr_00B_5D08:
    nop
    inc bc
    inc d
    inc de
    rst $38
    ld l, a
    ld e, a
    ld bc, $1504
    inc de
    or e
    ld l, a
    ld d, b
    nop
    add hl, de
    dec d
    inc d
    inc hl
    ld e, h
    ld c, b
    inc d
    adc l
    ld e, h
    jr nz, jr_00B_5D36

jr_00B_5D22:
    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    dec bc
    dec sp
    ld e, l
    ld h, l
    ld bc, $1414
    adc l
    ld e, h

jr_00B_5D30:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b

jr_00B_5D36:
    rrca
    ld c, b
    dec bc
    ret


    ld e, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_00B_5D46:
    jr nz, @+$64

    ld h, l

jr_00B_5D49:
    ld h, l
    ld l, [hl]
    rst $38
    ld h, l
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_00B_5DB6

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $54FE
    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_00B_5DDA

    ld l, b
    ld l, c

jr_00B_5D68:
    ld l, [hl]
    ld h, a
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00B_5DD7

    ld [hl], d
    ld l, a
    ld [hl], a
    ld hl, $4820
    ld h, c
    jr nz, jr_00B_5DE1

    ld h, c
    ld hl, $49FE
    daa
    ld l, h
    ld l, h
    jr nz, jr_00B_5DEF

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00B_5DFB

    ld l, b
    ld h, l
    rst $38
    halt
    ld l, a
    ld l, h
    ld h, e
    ld h, c
    ld l, [hl]
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_00B_5DFE

    ld l, [hl]
    ld [hl], h
    ld l, a
    cp $62
    ld l, c
    ld h, a
    jr nz, jr_00B_5E04

    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld hl, $4DFE
    ld d, a
    ld b, c
    ld c, b
    jr nz, jr_00B_5DF8

    ld b, c
    ld c, b
    jr nz, jr_00B_5DFC

    ld b, c
    ld c, b

jr_00B_5DB6:
    rst $38
    ld c, b
    ld b, c
    ld c, b
    jr nz, jr_00B_5E04

    ld b, c
    ld c, b
    jr nz, jr_00B_5E08

    ld b, c
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    ld bc, $9745
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ccf
    ld d, d
    inc de
    dec b

jr_00B_5DD7:
    ld [bc], a
    ld hl, sp+$4A

jr_00B_5DDA:
    ld c, $0B
    ld e, b
    pop de
    nop
    dec bc
    ld h, l

jr_00B_5DE1:
    ld h, b
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    dec bc
    ld d, [hl]
    pop de
    ld a, c
    dec bc

jr_00B_5DEF:
    add l
    ld h, b
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    dec bc
    inc bc

jr_00B_5DF8:
    ld l, [hl]
    jr nc, jr_00B_5E08

jr_00B_5DFB:
    ret nc

jr_00B_5DFC:
    ld b, e
    sub b

jr_00B_5DFE:
    add a
    nop
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_00B_5E04:
    adc b
    dec c
    dec bc
    sbc b

jr_00B_5E08:
    ld a, d
    ld h, b
    rrca
    ld e, [hl]
    dec bc
    db $10
    ld e, [hl]
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_00B_5E8F

    ld h, c
    ld a, c
    ld hl, $4420
    ld l, a
    jr nz, jr_00B_5E99

    ld l, a
    ld [hl], l
    rst $38
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$6A

    ld l, a
    ld [hl], a
    jr nz, jr_00B_5E9A

    ld [hl], l
    ld h, e
    ld l, b
    cp $77
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_00B_5EA0

    ld [hl], h
    jr nz, jr_00B_5EAE

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$74

    ld [hl], l
    ld l, h
    ld h, l
    jr nz, jr_00B_5EBC

    ld l, b
    ld h, l
    cp $77
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ccf
    jr nz, @+$44

    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], e
    inc l
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, jr_00B_5ECE

    ld l, a
    cp $63
    ld l, a
    ld l, [hl]
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], d
    inc l
    jr nz, jr_00B_5ECF

    ld l, [hl]
    ld h, h
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, jr_00B_5EE1

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    cp $74
    ld l, a
    jr nz, @+$63

    ld h, d
    ld [hl], l
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_5EF8

    ld l, a

jr_00B_5E8F:
    ld h, d
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, [hl]
    ld h, l

jr_00B_5E99:
    halt

jr_00B_5E9A:
    ld h, l
    ld [hl], d
    jr nz, jr_00B_5F0A

    ld l, a
    ld l, a

jr_00B_5EA0:
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_00B_5F06

    ld [hl], h
    rst $38
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_00B_5EAE:
    jr nz, @+$79

    ld h, c
    ld a, c
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, l

jr_00B_5EBC:
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_00B_5F36

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], a
    ld l, b
    ld a, c
    jr nz, jr_00B_5F12

    ld l, c

jr_00B_5ECE:
    ld h, h

jr_00B_5ECF:
    ld l, a
    ld l, [hl]
    cp $77
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_00B_5F47

    ld h, l
    jr nz, jr_00B_5F43

    ld l, a
    ld [hl], d
    rst $38
    ld [hl], h

jr_00B_5EE1:
    ld l, b
    ld h, l
    jr nz, jr_00B_5F4F

    ld l, a
    ld h, d
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_5F30

    and [hl]
    ld d, e
    ld h, c
    ld a, c
    inc l
    jr nz, jr_00B_5F58

    ld l, c
    ld h, h
    ld l, [hl]
    daa

jr_00B_5EF8:
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_5F65

    ld l, c
    ld l, [hl]
    ld h, h
    cp $73
    ld l, a
    ld l, l

jr_00B_5F06:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_00B_5F0A:
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_5F73

    ld l, h
    ld [hl], e
    ld h, l
    rst $38

jr_00B_5F12:
    ld l, c
    ld l, [hl]
    jr nz, jr_00B_5F8A

    ld l, b
    ld h, l
    jr nz, jr_00B_5F5D

    ld l, a
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    jr nz, jr_00B_5FA1

    ld h, l
    ld h, c
    ld l, b
    ld l, $20
    ld d, h
    ld l, b
    ld h, l

jr_00B_5F30:
    rst $38
    ld c, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_00B_5F36:
    jr nz, jr_00B_5F8B

    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld l, $FE
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a

jr_00B_5F43:
    jr nz, jr_00B_5FA6

    ld l, [hl]
    ld h, h

jr_00B_5F47:
    jr nz, jr_00B_5FA3

    ld h, l
    ld [hl], h
    rst $38
    ld [hl], l
    ld [hl], e
    ld h, l

jr_00B_5F4F:
    ld h, h
    jr nz, jr_00B_5FBB

    ld [hl], h
    jr nz, jr_00B_5FC9

    ld l, a
    cp $74

jr_00B_5F58:
    ld l, a
    jr nz, jr_00B_5FD2

    ld h, c
    ld [hl], d

jr_00B_5F5D:
    ld h, h
    jr nz, jr_00B_5FCF

    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b

jr_00B_5F65:
    ld h, l
    jr nz, jr_00B_5FD0

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_00B_5FD7

    ld l, [hl]
    cp $74
    ld l, b
    ld h, l

jr_00B_5F73:
    jr nz, jr_00B_5FB8

    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20

Jump_00B_5F7A:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, c
    jr nz, jr_00B_5FF8

    ld h, l
    ld [hl], d
    ld a, c
    cp $64
    ld h, c
    ld l, [hl]
    ld h, a

jr_00B_5F8A:
    ld h, l

jr_00B_5F8B:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_00B_5FD4

    ld l, a
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], d
    ld h, l
    ld l, h
    ld l, c
    ld h, e
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_5FE3

    and [hl]

jr_00B_5FA1:
    ld c, c
    ld h, [hl]

jr_00B_5FA3:
    jr nz, jr_00B_601E

    ld l, a

jr_00B_5FA6:
    ld [hl], l
    jr nz, jr_00B_6020

    ld h, c
    ld l, [hl]
    ld [hl], h
    inc l
    rst $38
    ld c, c
    jr nz, jr_00B_6019

    ld h, c
    halt
    ld h, l
    jr nz, @+$63

    cp $73

jr_00B_5FB8:
    ld h, l
    ld h, e
    ld [hl], d

jr_00B_5FBB:
    ld h, l
    ld [hl], h
    jr nz, @+$74

    ld l, a
    ld l, a
    ld l, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_00B_603B

    ld l, b
    ld h, l

jr_00B_5FC9:
    jr nz, jr_00B_601F

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]

jr_00B_5FCF:
    ld l, c

jr_00B_5FD0:
    ld l, [hl]
    ld h, a

jr_00B_5FD2:
    cp $47

jr_00B_5FD4:
    ld [hl], d
    ld l, a
    ld [hl], l

jr_00B_5FD7:
    ld l, [hl]
    ld h, h
    ld [hl], e
    inc l
    jr nz, jr_00B_6026

    rst $38
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_00B_5FE3:
    jr nz, jr_00B_604D

    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_00B_6053

    ld [hl], h
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_00B_5FF8:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00B_6061

    jr nz, jr_00B_6069

    ld l, a
    ld l, a
    ld h, h
    rst $38
    ld l, c
    ld h, h
    ld h, l
    ld h, c
    ld l, $20
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_605B

    and [hl]

jr_00B_6019:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_6085

jr_00B_601E:
    ld l, a

jr_00B_601F:
    ld [hl], h

jr_00B_6020:
    jr nz, jr_00B_608B

    ld [hl], h
    inc l
    rst $38
    ld [hl], e

jr_00B_6026:
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $41FE
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_60A0

    ld l, a
    ld [hl], a
    ld l, $2E
    ld l, $FF
    ld c, h
    ld h, l
    ld [hl], h

jr_00B_603B:
    daa
    ld [hl], e
    jr nz, jr_00B_60AF

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ld hl, $FE21
    ld c, a
    ld c, a
    ld c, b
    ld c, b
    jr nz, jr_00B_60A5

    ld b, l

jr_00B_604D:
    ld b, c
    ld c, b
    ld hl, $FF21
    ld b, h

jr_00B_6053:
    ld c, c
    ld b, a
    jr nz, jr_00B_60A0

    ld d, h
    ld hl, $5720

jr_00B_605B:
    ld c, a
    ld c, a
    ld hl, $FDFE
    and c

jr_00B_6061:
    ld e, a
    nop
    inc bc
    ld b, l
    inc d
    inc d
    xor e
    ld e, l

jr_00B_6069:
    ld e, a
    nop
    inc bc
    dec d
    inc d
    cp a
    ld e, l
    inc c
    inc d
    and c
    ld e, l
    jr jr_00B_608A

    dec c
    ld e, l
    jr nz, jr_00B_607A

jr_00B_607A:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    ld c, $10
    ld b, a

jr_00B_6085:
    inc d
    dec d
    ld a, b
    ld a, b
    ld e, a

jr_00B_608A:
    nop

jr_00B_608B:
    inc bc
    dec d
    dec d
    ld a, [hl+]
    ld a, b
    ld [$4A15], sp
    ld a, b
    db $10
    dec d
    ld a, [hl+]
    ld a, b
    ld d, b
    nop
    add hl, de
    sub a
    or e
    ld sp, $01C7

jr_00B_60A0:
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b

jr_00B_60A5:
    ccf
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec c
    dec bc
    ld d, a

jr_00B_60AF:
    pop de
    nop
    dec bc
    ld sp, hl
    ld h, b
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    rrca
    dec bc
    ld e, c
    pop de
    ld a, c
    dec bc
    add hl, hl
    ld h, c
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld c, $12
    ld a, [hl+]
    jp nc, $0BA9

    ld e, l
    ld h, c
    add hl, de
    add sp, $46
    dec bc
    ld [bc], a
    dec bc
    inc bc
    ld l, [hl]
    jr nc, jr_00B_60E9

    ret nc

    ld b, e
    sub b
    add a
    nop
    ld l, [hl]
    jr nc, jr_00B_60F1

    and b
    ld b, b
    sub b
    adc d
    nop

jr_00B_60E9:
    adc b
    ld c, $0D
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_00B_60F1:
    ld a, d
    ld h, b
    rrca
    ld e, [hl]
    dec bc
    ld [hl], c
    ld h, c
    ld b, l
    inc d
    inc d
    or l
    ld e, l
    ld e, a
    nop
    inc bc
    ld b, e
    jr nz, jr_00B_6117

    inc d
    ret


    ld e, l
    ld e, a
    ld bc, $1504
    inc d
    ret


    ld e, l
    jr nz, @+$16

    or l
    ld e, l
    nop
    nop
    ld e, a
    ld [bc], a
    inc bc
    dec d

jr_00B_6117:
    inc d
    or l
    ld e, l
    inc b
    inc d
    sub a
    ld e, l
    jr nc, jr_00B_6134

    db $DD
    ld e, l
    jr nz, @+$16

    and c
    ld e, l
    nop
    nop
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld e, a
    nop
    inc bc
    ld b, e
    jr nz, jr_00B_6147

    dec d

jr_00B_6134:
    sub [hl]
    ld a, b
    ld e, a
    ld bc, $1504
    dec d
    sub [hl]
    ld a, b
    jr nz, jr_00B_6154

    ld l, [hl]
    ld a, b
    nop
    nop
    ld e, a
    ld [bc], a
    inc bc
    dec d

jr_00B_6147:
    dec d
    ld [$2077], a
    dec d
    ld a, [$2077]
    dec d
    ld [$0877], a
    dec d

jr_00B_6154:
    ld e, d
    ld a, b
    nop
    nop
    ld e, [hl]
    dec bc
    dec b
    ld h, h
    ld b, l
    dec d
    inc de
    and b
    ld l, h
    ld d, b
    inc de
    jr nz, jr_00B_61D2

    nop
    nop
    ld e, a
    ld bc, $1504
    inc de
    or b
    ld l, h
    ld d, b
    nop
    add hl, de
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_00B_61ED

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_61E7

    ld [hl], e
    rst $38
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00B_61F0

    ld [hl], h
    daa
    ld [hl], e
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, a
    rst $38
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ccf
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld e, c
    ld h, l
    ld [hl], b
    ld l, $20
    ld c, c
    ld l, [hl]
    jr nz, @+$6C

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$63

    rst $38
    ld h, [hl]
    ld h, l
    ld [hl], a
    jr nz, @+$6A

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    inc l
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    rst $38
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00B_6228

    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    cp $68
    ld l, c
    ld [hl], e

jr_00B_61D2:
    jr nz, jr_00B_6246

    ld h, l
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_625D

    ld l, a
    ld [hl], l
    daa

jr_00B_61E7:
    ld l, h
    ld l, h
    jr nz, jr_00B_625F

    ld h, c
    ld l, e

jr_00B_61ED:
    ld h, l
    cp $6F

jr_00B_61F0:
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00B_6256

    ld [hl], e
    jr nz, jr_00B_626C

    ld l, b
    ld h, l
    jr nz, jr_00B_626A

    ld h, l
    ld [hl], a
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$4B

    daa
    ld l, l
    jr nz, jr_00B_6283

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$4B

    daa
    ld l, l
    jr nz, jr_00B_6294

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $FE

jr_00B_6228:
    db $FD
    dec bc
    inc b
    ld e, a
    nop
    inc bc
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_00B_6299

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_00B_62B3

jr_00B_6246:
    ld a, c
    jr nz, jr_00B_62AD

    ld h, l
    ld h, c
    ld [hl], d
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, c
    ld h, h

jr_00B_6256:
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    cp b

jr_00B_625D:
    ld e, l
    and [hl]

jr_00B_625F:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_62C5

    ld [hl], d
    ld h, l
    jr nz, jr_00B_62DA

    ld h, l
    ld h, c

jr_00B_626A:
    ld h, h
    ld a, c

jr_00B_626C:
    inc l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_62DE

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    cp $65
    ld a, b
    ld h, e
    ld h, l
    ld h, l
    ld h, h
    ld h, l

jr_00B_6283:
    ld h, h
    jr nz, jr_00B_62EB

    halt
    ld h, l
    ld l, [hl]
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_00B_62F3

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    ld h, c

jr_00B_6294:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_00B_6299:
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_6317

    ld l, a
    ld [hl], l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    daa
    halt
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, h
    halt

jr_00B_62AD:
    ld h, l
    ld h, h
    jr nz, jr_00B_6316

    halt
    ld h, l

jr_00B_62B3:
    ld [hl], d
    ld a, c
    cp $73
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    jr nz, jr_00B_632D

    ld l, [hl]
    ld h, l
    jr nz, jr_00B_6331

    ld h, [hl]
    rst $38
    ld [hl], h

jr_00B_62C5:
    ld l, b
    ld h, l
    jr nz, jr_00B_6339

    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_00B_6345

    ld l, b
    ld h, l
    cp $65
    ld l, h
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e

jr_00B_62DA:
    jr nz, jr_00B_633F

    ld [hl], d
    ld h, l

jr_00B_62DE:
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_635C

    ld l, b
    ld l, a

jr_00B_62EB:
    ld [hl], a
    ld l, [hl]
    cp $72
    ld h, l
    ld l, l
    ld h, c
    ld [hl], d

jr_00B_62F3:
    ld l, e
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld h, e
    ld l, h
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    inc l
    cp $73
    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    ld h, a
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h

jr_00B_6316:
    ld a, c

jr_00B_6317:
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00B_639E

    ld l, a
    ld [hl], l
    ld l, $20
    ld c, c
    rst $38
    ld l, b
    ld l, a

jr_00B_632D:
    ld [hl], b
    ld h, l
    jr nz, @+$4B

jr_00B_6331:
    jr nz, jr_00B_6397

    ld l, a
    jr nz, jr_00B_6397

    cp $67
    ld l, a

jr_00B_6339:
    ld l, a
    ld h, h
    jr nz, jr_00B_63A7

    ld l, a
    ld h, d

jr_00B_633F:
    jr nz, jr_00B_63A2

    ld [hl], e
    rst $38
    ld c, e
    ld h, l

jr_00B_6345:
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_00B_63B5

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    halt
    ld h, l
    jr nz, jr_00B_63C4

    ld l, [hl]

jr_00B_635C:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_00B_63B6

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_63D8

    ld h, [hl]
    jr nz, @+$7B

    ld l, a
    ld [hl], l

jr_00B_6374:
    rst $38
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00B_63E0

    ld a, b
    ld h, e
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_00B_63EF

    ld h, l
    inc l
    cp $49
    jr nz, jr_00B_63F0

    ld h, c
    halt
    ld h, l
    jr nz, jr_00B_6400

    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e

jr_00B_6397:
    jr nz, jr_00B_640D

    ld l, a
    jr nz, @+$76

    ld h, l
    ld l, [hl]

jr_00B_639E:
    ld h, h
    cp $74
    ld l, a

jr_00B_63A2:
    jr nz, jr_00B_6406

    ld h, l
    ld h, [hl]
    ld l, a

jr_00B_63A7:
    ld [hl], d
    ld h, l
    jr nz, jr_00B_641F

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld h, l
    ld l, h
    ld h, l
    ld h, d
    ld [hl], d
    ld h, c

jr_00B_63B5:
    ld [hl], h

jr_00B_63B6:
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $FE
    ld d, e
    ld h, l
    ld h, l
    jr nz, jr_00B_6439

    ld l, a
    ld [hl], l
    jr nz, @+$6E

jr_00B_63C4:
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4304
    jr nz, jr_00B_6374

    jr z, jr_00B_6417

    and [hl]
    ld e, c
    ld h, l
    ld h, c

jr_00B_63D8:
    ld l, b
    inc l
    jr nz, jr_00B_6453

    ld h, l
    daa
    ld h, h
    rst $38

jr_00B_63E0:
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_00B_644F

    ld h, l
    ld [hl], h
    cp $72
    ld h, l
    ld h, c
    ld h, h

jr_00B_63EF:
    ld a, c

jr_00B_63F0:
    inc l
    jr nz, jr_00B_6467

    ld l, a
    ld l, a
    inc l
    rst $38
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $FDFE

jr_00B_6400:
    ld e, a
    ld [bc], a
    inc bc
    and c
    ld b, l
    and d

jr_00B_6406:
    jr z, @+$45

    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_00B_640D:
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld a, c
    ld l, a

jr_00B_6417:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00B_648D

    ld l, h
    ld h, c

jr_00B_641F:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00B_649C

    ld l, a

jr_00B_6439:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00B_64A9

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $20
    ld c, c
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l

Call_00B_6448:
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld [hl], h
    jr nz, @+$6B

jr_00B_644F:
    ld l, [hl]
    cp $6F
    ld l, [hl]

jr_00B_6453:
    ld h, l
    jr nz, jr_00B_64C5

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld [hl], b
    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $20
    ld c, c
    ld [hl], h

jr_00B_6467:
    daa
    ld [hl], e
    cp $73
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00B_64E3

    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_00B_64E4

    ld h, [hl]
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, @+$75

    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    cp $6F
    ld [hl], d
    jr nz, jr_00B_64FC

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h

jr_00B_648D:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld c, c
    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_00B_6504

    ld [hl], l
    ld [hl], e

jr_00B_649C:
    ld [hl], h
    jr nz, jr_00B_650A

    ld l, c
    ld l, [hl]
    ld h, h
    cp $6F
    ld h, [hl]
    jr nz, @+$79

    ld l, a
    ld l, [hl]

jr_00B_64A9:
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_651F

    ld [hl], h
    jr nz, jr_00B_6530

    ld h, c
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_6504

    and [hl]
    ld c, h
    ld l, a
    ld l, a

jr_00B_64C5:
    ld l, e
    ld [hl], e
    jr nz, jr_00B_6534

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_653D

    ld h, [hl]
    rst $38
    ld h, e
    ld l, a
    ld l, a
    ld l, h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld l, $2E
    ld l, $FE

jr_00B_64E3:
    db $FD

jr_00B_64E4:
    and c
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    dec bc
    ldh a, [$64]
    or e
    ld sp, $01C7
    sub a
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    adc h
    ld d, b

jr_00B_64FC:
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    add hl, bc
    cp a

jr_00B_6504:
    ret nc

    nop
    dec bc
    ld d, l
    ld h, l
    add hl, de

jr_00B_650A:
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld a, [bc]
    ld a, [bc]
    jp nc, $28D0

    dec bc
    xor h
    ld h, l
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A

jr_00B_651F:
    inc b
    rlca
    sub b
    ret nc

    ld h, h
    dec bc
    call nc, $1965
    add sp, $46
    adc b
    dec bc
    add hl, bc
    ld l, [hl]
    jr z, jr_00B_653D

jr_00B_6530:
    ret nz

    ld l, e
    nop
    add b

jr_00B_6534:
    nop
    ld l, [hl]
    jr nc, jr_00B_6544

    ldh a, [rLYC]
    add b
    add d
    nop

jr_00B_653D:
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    ld b, b
    add [hl]

jr_00B_6544:
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    jr nz, jr_00B_6560

    ld e, a
    nop
    inc bc
    ld b, l
    inc d
    dec d
    jr nc, @+$77

    ld e, a
    nop
    inc bc
    ld b, e
    jr jr_00B_6573

    dec d

jr_00B_6560:
    ld b, h
    ld [hl], l
    ld e, [hl]
    dec bc
    ld hl, sp+$65
    ld e, a
    ld bc, $1503
    dec d
    jr nc, jr_00B_65E2

    inc b
    nop
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_00B_6573:
    dec d
    dec d
    inc e

Call_00B_6576:
    ld [hl], l
    inc b
    nop
    ld a, l
    rrca
    dec d
    dec d
    jr nc, jr_00B_65F4

    inc b
    nop
    ld [hl], e
    rrca
    rra
    nop
    dec d
    dec d
    inc e
    ld [hl], l
    inc b
    nop
    ld a, d
    jr nz, jr_00B_659D

    dec d
    dec d
    jr nc, jr_00B_6607

    nop
    nop
    ld e, [hl]
    dec bc
    ld a, b
    ld h, [hl]
    ld h, l
    ld bc, $1514
    ld b, h

jr_00B_659D:
    ld [hl], l
    ld e, a
    ld [bc], a
    inc b
    dec d
    dec d
    ld [$2075], sp
    dec d
    ret c

    ld [hl], h
    ld d, b
    nop
    add hl, de
    inc d
    db $10
    ret z

    ld a, d
    ld e, a
    nop
    inc bc
    ld b, e
    jr jr_00B_65CA

    db $10
    jp nc, Jump_00B_5F7A

    ld bc, $1403
    db $10
    ret z

    ld a, d
    ld h, l
    ld [bc], a
    inc d
    db $10
    jp nc, Jump_00B_5F7A

    ld [bc], a
    inc b
    dec d

jr_00B_65CA:
    db $10
    and b
    ld a, d
    jr nz, jr_00B_65DF

    ld [hl], b
    ld a, d
    ld b, b
    nop
    add hl, de
    dec d
    inc de
    ld d, h
    ld e, l
    ld b, b
    inc de
    add hl, bc
    ld e, [hl]
    jr nz, jr_00B_65F1

    add h

jr_00B_65DF:
    ld e, l
    db $10
    inc de

jr_00B_65E2:
    ld [hl], h
    ld e, l
    db $10
    inc de
    add hl, de
    ld e, [hl]
    nop
    nop
    ld e, a
    ld [bc], a
    inc b
    dec d
    inc de
    ld d, h
    ld e, l

jr_00B_65F1:
    ld b, b
    inc de
    add h

jr_00B_65F4:
    ld e, l
    add b
    nop
    add hl, de
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, a
    ld l, e
    ld h, c
    ld a, c
    inc l
    jr nz, @+$75

    ld l, a
    jr nz, jr_00B_667A

    ld l, b

jr_00B_6607:
    ld h, l
    ld l, [hl]
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_6658

    ld l, $2E
    ld l, $20
    ld [hl], l
    ld l, l
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_00B_6697

    ld l, b
    ld h, l
    jr nz, jr_00B_669A

    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, e
    ld l, b
    ld [hl], l
    ld [hl], h
    jr nz, @+$77

    ld [hl], b
    ld hl, $4920
    daa
    ld l, l
    jr nz, @+$6B

    ld l, [hl]
    rst $38
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, @+$6A

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $4EFE
    ld l, a

jr_00B_6658:
    ld [hl], a
    jr nz, jr_00B_66A4

    jr nz, jr_00B_66D2

    ld [hl], e
    ld h, l
    jr nz, jr_00B_66D5

    ld l, b
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    jr nz, jr_00B_66DF

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4503
    and d
    ld c, b

jr_00B_667A:
    ld e, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, a
    ld l, a
    ld h, c
    ld l, b
    inc l
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00B_6705

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD

jr_00B_6697:
    and d
    xor b
    ld c, a

jr_00B_669A:
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00B_6707

    ld h, c
    ld [hl], h
    ld h, l
    rst $38

jr_00B_66A4:
    ld l, c
    ld [hl], e
    jr nz, jr_00B_6717

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5420
    ld l, b
    ld h, l
    cp $63
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00B_6722

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_00B_6721

    ld [hl], d
    ld h, l
    rst $38
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_673A

    ld [hl], l
    ld [hl], h
    ld hl, $FDFE
    and d
    ld c, b

jr_00B_66D2:
    ld e, a
    and [hl]
    ld d, h

jr_00B_66D5:
    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_00B_6740

    ld l, a
    ld [hl], d
    jr nz, jr_00B_6751

    ld l, a

jr_00B_66DF:
    ld l, l
    ld h, l
    rst $38
    ld h, h
    ld l, c
    ld [hl], e
    ld l, $2E
    ld l, $20
    ld [hl], l
    ld l, b
    inc l
    jr nz, jr_00B_6760

    ld h, c
    ld a, c
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_00B_6774

    ld h, c
    ld l, c
    ld h, h
    rst $38

jr_00B_6705:
    ld l, c
    ld [hl], h

jr_00B_6707:
    jr nz, jr_00B_677B

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    jr nz, jr_00B_677B

jr_00B_6717:
    ld l, c
    ld h, h
    ccf
    jr nz, @+$51

    ld h, [hl]
    rst $38
    ld h, e
    ld l, a
    ld [hl], l

jr_00B_6721:
    ld [hl], d

jr_00B_6722:
    ld [hl], e
    ld h, l
    jr nz, jr_00B_676F

    jr nz, jr_00B_678C

    ld l, c
    ld h, h
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld d, e
    ld [hl], e
    ld l, b
    ld l, b
    ld l, b
    ld hl, $4820
    ld h, l

jr_00B_673A:
    ld [hl], d
    ld h, l
    rst $38
    ld h, e
    ld l, a
    ld l, l

jr_00B_6740:
    ld h, l
    ld [hl], e
    jr nz, jr_00B_67B3

    ld l, [hl]
    ld h, l
    ld hl, $FDFE
    and c
    dec bc
    inc b
    ld b, e
    jr nz, @-$5C

    ld c, b
    ld e, a

jr_00B_6751:
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_00B_67C1

    ld [hl], h
    jr nz, jr_00B_67CE

    ld [hl], l
    ld [hl], d
    ld h, l
    rst $38
    ld l, c

jr_00B_6760:
    ld [hl], e
    jr nz, jr_00B_67D8

    ld l, l
    inc l
    jr nz, jr_00B_67C9

    ld l, c
    ld h, a
    ld hl, $FDFE
    and d
    xor b
    ld c, a

jr_00B_676F:
    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b

jr_00B_6774:
    inc l
    jr nz, jr_00B_67D8

    ld l, [hl]
    ld h, h
    jr nz, @+$6B

jr_00B_677B:
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, a
    ld l, a
    ld [hl], h
    jr nz, jr_00B_67E6

    ld l, c
    ld h, a
    jr nz, jr_00B_67EE

    ld h, c
    ld l, [hl]
    ld h, a
    ld [hl], e

jr_00B_678C:
    inc l
    cp $73
    ld l, a
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_00B_680F

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_00B_6808

    ld l, [hl]
    ld h, h
    jr nz, @+$77

    ld [hl], e
    ld h, l
    cp $69
    ld [hl], h
    jr nz, jr_00B_6826

    ld l, a

jr_00B_67B3:
    jr nz, jr_00B_6818

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00B_6829

jr_00B_67C1:
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    ld e, e

jr_00B_67C9:
    ld bc, $48A2
    ld e, a
    and [hl]

jr_00B_67CE:
    ld b, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ccf
    jr nz, jr_00B_682F

jr_00B_67D8:
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ccf
    cp $FD
    ld e, e

jr_00B_67E6:
    ld [bc], a
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld c, b
    ld b, c

jr_00B_67EE:
    ld d, h
    ccf
    ld hl, $203F
    ld e, c
    ld l, a
    ld [hl], l
    rst $38
    ld h, h
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00B_686F

    ld [hl], l
    ld [hl], h
    jr nz, jr_00B_6877

    ld l, b
    ld h, l
    cp $63
    ld [hl], d

jr_00B_6808:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_00B_687F

jr_00B_680F:
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    ld h, a

jr_00B_6818:
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ccf
    ld hl, $FE3F
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]

jr_00B_6826:
    ld d, h
    ld l, b
    ld h, l

jr_00B_6829:
    ld [hl], d
    ld h, l
    jr nz, jr_00B_68A4

    ld h, l
    ld [hl], d

jr_00B_682F:
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, l
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_00B_68AC

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld c, b
    ld e, c
    jr nz, jr_00B_6891

    ld c, c
    ld b, h
    ld c, [hl]
    daa
    ld d, h
    jr nz, @+$5B

    ld c, a
    ld d, l
    rst $38
    ld d, h
    ld b, l
    ld c, h
    ld c, h
    jr nz, jr_00B_68AA

    ld b, l
    ccf
    ld hl, $FE3F
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    daa
    ld b, e
    ld [hl], l
    ld a, d
    jr nz, jr_00B_68E6

    ld l, a
    ld [hl], l

jr_00B_686F:
    jr nz, jr_00B_68E4

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38

jr_00B_6877:
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $20
    ld e, c
    ld l, a

jr_00B_687F:
    ld [hl], l
    jr nz, @+$69

    ld h, c
    halt
    ld h, l
    cp $6D
    ld h, l
    jr nz, jr_00B_68EB

    ld l, h
    ld l, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00B_6905

jr_00B_6891:
    ld l, b
    ld h, l
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_00B_6913

    ld h, l
    jr nz, jr_00B_6907

    ld h, c
    halt
    ld h, l
    ld l, $FE

jr_00B_68A4:
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld b, d

jr_00B_68AA:
    ld [hl], l
    ld [hl], h

jr_00B_68AC:
    jr nz, jr_00B_6917

    ld h, [hl]
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld h, h
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00B_692C

    ld [hl], l
    ld [hl], h
    jr nz, jr_00B_6921

    ld l, h
    ld l, h
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_693B

    ld l, b
    ld h, l
    jr nz, jr_00B_693B

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, a
    ld h, a
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, [hl]
    cp $77
    ld h, l
    jr nz, jr_00B_6948

jr_00B_68E4:
    ld l, a
    ld l, [hl]

jr_00B_68E6:
    daa
    ld [hl], h
    jr nz, jr_00B_6952

    ld h, c

jr_00B_68EB:
    halt
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00B_6956

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld hl, $2121
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, e
    ld l, a
    ccf

jr_00B_6905:
    cp $FD

jr_00B_6907:
    and d
    xor b
    ld c, a
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_00B_6986

    ld h, l
    jr nz, jr_00B_6975

    ld h, c

jr_00B_6913:
    ld l, [hl]
    daa
    ld [hl], h
    rst $38

jr_00B_6917:
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_00B_6994

    ld l, b

jr_00B_6921:
    ld h, l
    cp $68
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_00B_698C

    ld l, [hl]

jr_00B_692C:
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00B_699F

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], d

jr_00B_693B:
    ld a, c
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, b
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], d

jr_00B_6948:
    ld a, c
    inc l
    jr nz, jr_00B_69B4

    ld [hl], l
    ld l, b
    ccf
    jr nz, jr_00B_699A

    rst $38

jr_00B_6952:
    ld l, b
    ld h, c
    halt
    ld h, l

jr_00B_6956:
    jr nz, jr_00B_69B9

    jr nz, @+$72

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld b, c
    ld [hl], h
    jr nz, jr_00B_69DC

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_69E1

    ld l, c
    ld l, l
    ld h, l
    inc l
    rst $38
    ld c, c
    daa
    ld l, h

jr_00B_6975:
    ld l, h
    jr nz, jr_00B_69EC

    ld [hl], d
    ld a, c
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld d, a

jr_00B_6986:
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e

jr_00B_698C:
    jr nz, jr_00B_6A07

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_00B_6A03

    ld l, h

jr_00B_6994:
    ld h, c
    ld l, [hl]
    ccf
    cp $FD
    and d

jr_00B_699A:
    ld c, b
    ld e, a
    and [hl]
    ld d, d
    ld d, l

jr_00B_699F:
    ld c, [hl]
    ld hl, $2121
    ld hl, $2121
    cp $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00B_6A22

    ld l, h
    ld h, c

jr_00B_69B4:
    ld l, [hl]
    ld l, $FE
    db $FD
    and c

jr_00B_69B9:
    ld e, a
    ld [bc], a
    inc b
    ld b, e
    db $10
    and [hl]
    ld b, c
    ld b, c
    ld c, c
    ld c, c
    ld c, c
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld hl, $2121
    ld hl, $FDFE
    and c
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    dec bc
    jp c, $9769

    or e

jr_00B_69DC:
    ld sp, $01C7
    ld l, c
    ld e, b

jr_00B_69E1:
    ld a, b
    inc d
    ld l, b
    ccf
    ld d, d
    inc de
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec c

jr_00B_69EC:
    dec bc
    ld d, a
    pop de
    nop
    dec bc
    ld hl, $196A
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec c
    dec c
    sub e
    pop de
    ld a, c
    dec bc
    ld h, $6A
    add hl, de

jr_00B_6A03:
    add sp, $46
    dec bc
    ld [bc], a

jr_00B_6A07:
    dec bc
    inc bc
    ld l, [hl]
    jr nc, jr_00B_6A19

    ret nc

    ld b, e
    sub b
    add a
    nop
    adc b
    ld c, $0D
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_00B_6A19:
    ld a, d
    ld h, b
    rrca
    ld e, [hl]
    dec bc
    dec hl
    ld l, d
    ld b, l
    inc d

jr_00B_6A22:
    inc d
    and c
    ld e, l
    ld b, l
    inc d
    dec d
    ld e, d
    ld a, b
    ld b, l
    and d
    jr z, jr_00B_6A71

    and [hl]
    ld b, c
    ld l, b
    inc l
    jr nz, jr_00B_6AAB

    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00B_6AA3

    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    jr nz, jr_00B_6AB2

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00B_6AAE

    cp $77
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, b
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_00B_6AC9

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00B_6AD4

    ld l, a
    ld h, e
    ld l, e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_6ADC

jr_00B_6A71:
    ld l, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_00B_6AE0

    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_6AF0

    ld h, [hl]
    jr nz, jr_00B_6AF4

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    ld l, $FE
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_00B_6AFE

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00B_6AFF

    ld [hl], h
    rst $38
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_00B_6AFF

    jr nz, jr_00B_6B10

    ld h, l
    ld l, [hl]
    ld h, h

jr_00B_6AA3:
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld [hl], d

jr_00B_6AAB:
    rrca
    rst $38
    ld a, a

jr_00B_6AAE:
    ld a, d
    ld h, b
    rrca
    ld c, b

jr_00B_6AB2:
    ld c, $10
    ld b, a
    ld e, h
    dec bc
    cp d
    ld l, d
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld h, c
    halt
    ld h, l
    jr nz, jr_00B_6B10

jr_00B_6AC9:
    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00B_6B21

    ld l, a

jr_00B_6AD4:
    ld l, $FF
    jr nz, @+$5B

    ld h, l
    ld [hl], e
    ld l, $FD

jr_00B_6ADC:
    and e
    ld [bc], a
    dec bc
    adc [hl]

jr_00B_6AE0:
    ld l, e
    dec bc
    db $E4
    ld l, d
    ld c, [hl]
    ld bc, $A135
    dec bc
    ld bc, $2000
    ld l, e
    dec bc
    ld [bc], a
    nop

jr_00B_6AF0:
    ld a, [hl+]
    ld l, e
    dec bc
    inc bc

jr_00B_6AF4:
    nop
    inc [hl]
    ld l, e
    dec bc
    inc b
    nop
    ld a, $6B
    dec bc
    dec b

jr_00B_6AFE:
    nop

jr_00B_6AFF:
    ld c, b
    ld l, e
    dec bc
    ld b, $00
    ld d, d
    ld l, e
    dec bc
    rlca
    nop
    ld e, h
    ld l, e
    dec bc
    ld [$6600], sp
    ld l, e

jr_00B_6B10:
    dec bc
    add hl, bc
    nop
    ld [hl], b
    ld l, e
    dec bc
    ld a, [bc]
    nop
    ld a, d
    ld l, e
    dec bc
    dec bc
    nop
    add h
    ld l, e
    rst $38
    sbc d

jr_00B_6B21:
    rrca
    sbc b
    ld b, d
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    add hl, bc
    ld a, b
    ld c, b
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    add hl, bc
    pop bc
    ld e, c
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    rrca
    ld a, [bc]
    ld e, c
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    ld c, $E8
    ld c, l
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    add hl, bc
    ld e, a
    ld l, e
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    inc c
    xor l
    ld l, e
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    ld d, $92
    ld l, a
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    ld [$6D13], sp
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    ld c, $D9
    ld l, d
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    sbc d
    db $10
    and l
    ld b, l
    sub [hl]
    ld bc, $0B48
    adc [hl]
    ld l, e
    ld c, [hl]
    ld bc, $A135
    dec bc
    ld bc, $CA00
    ld l, e
    dec bc
    ld [bc], a
    nop
    call nc, $0B6B
    inc bc
    nop
    sbc $6B
    dec bc
    inc b
    nop
    add sp, $6B
    dec bc
    dec b
    nop
    ld a, [c]
    ld l, e
    dec bc
    ld b, $00
    db $FC
    ld l, e
    dec bc
    rlca
    nop
    ld b, $6C
    dec bc
    ld [$1000], sp
    ld l, h
    dec bc
    add hl, bc
    nop
    ld a, [de]
    ld l, h
    dec bc
    ld a, [bc]
    nop
    inc h
    ld l, h
    dec bc
    dec bc
    nop
    ld l, $6C
    rst $38
    and c
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    add hl, bc
    or b
    ld b, e
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    rrca
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    ld c, $89
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    add hl, bc
    inc c
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    ld d, $3F
    ld l, [hl]

jr_00B_6C15:
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    ld [$6BC0], sp
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    ld c, $E6
    ld l, c
    or e
    ld sp, $00C7
    ld b, l
    and c
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld c, [hl]
    ld bc, $A138
    dec bc
    ld bc, $AC00
    ld l, l
    dec bc
    ld [bc], a
    nop
    or h
    ld [hl], l
    dec bc
    inc bc
    nop
    scf
    ld [hl], a
    dec bc
    inc b
    nop
    xor l
    ld a, b
    dec bc
    dec b
    nop
    ld h, l
    ld a, d
    rst $38
    ld b, l
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld bc, $010F
    jr c, @-$5D

    dec b
    ld bc, $5A0B
    ld [hl], b
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld bc, $010F
    jr c, jr_00B_6C15

    dec b
    dec b
    dec bc
    adc d
    ld a, e
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld [bc], a
    rrca
    ld bc, $A138
    dec b
    dec b
    jr jr_00B_6CD3

    ld b, e
    ld b, l
    ld c, [hl]
    ld bc, $A139
    add hl, de
    ld bc, $4000
    ld [hl], l
    add hl, de
    ld [bc], a
    nop
    jr z, @+$73

    add hl, de
    inc bc
    nop
    ld a, a
    ld [hl], e
    add hl, de
    inc b
    nop
    sbc [hl]
    ld l, c
    add hl, de
    dec b
    nop
    adc [hl]
    ld l, e
    rst $38
    ld b, l
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld bc, $010F
    add hl, sp
    and c
    dec b
    ld bc, $BD19
    ld l, [hl]
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld bc, $010F
    add hl, sp
    and c
    dec b
    dec b
    add hl, de
    call nc, Call_00B_466F
    ld [$010F], sp
    ld [hl], $A1

jr_00B_6CD2:
    dec b

jr_00B_6CD3:
    ld [bc], a
    rrca
    ld bc, $A139
    dec b
    ld bc, $7D19
    ld h, b
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld [bc], a
    rrca
    ld bc, $A139
    dec b
    dec b
    add hl, de
    ld [bc], a
    ld h, d
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    inc bc
    rrca
    ld bc, $A139
    dec b
    ld bc, $8D18
    ld d, l
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    inc bc
    rrca
    ld bc, $A139
    dec b
    dec b
    jr jr_00B_6CD2

    ld e, e
    ld b, l
    ld c, [hl]
    ld bc, $A139
    add hl, de
    ld bc, $CD00
    ld h, h
    add hl, de
    ld [bc], a
    nop
    dec hl
    ld h, a
    add hl, de
    inc bc
    nop
    db $FD
    ld h, a
    add hl, de
    inc b
    nop
    call $1968
    dec b
    nop
    adc c
    ld e, a
    rst $38
    ld b, l
    ld c, [hl]
    ld bc, $A138
    add hl, de
    ld [bc], a
    nop
    add sp, $59
    add hl, de
    inc bc
    nop
    db $EB
    ld e, l
    add hl, de
    inc b
    nop
    ld c, l
    ld d, b
    jr jr_00B_6D4A

    nop
    nop
    ld b, b
    rst $38
    ld b, l

jr_00B_6D4A:
    ld c, [hl]
    ld bc, $A139
    jr jr_00B_6D51

    nop

jr_00B_6D51:
    or c
    ld b, h
    jr jr_00B_6D57

    nop
    or [hl]

jr_00B_6D57:
    ld c, b
    jr jr_00B_6D5D

    nop
    or h
    ld c, d

jr_00B_6D5D:
    jr @+$06

    nop
    rst $30
    ld c, h
    jr jr_00B_6D69

    nop
    ld b, l
    ld c, [hl]
    rst $38
    ld b, l

jr_00B_6D69:
    ld c, [hl]
    ld bc, $A13A
    add hl, de
    nop
    nop
    ld b, e
    ld d, d
    add hl, de
    ld bc, $4900
    ld d, e
    add hl, de
    ld [bc], a
    nop
    xor $53
    add hl, de
    inc bc
    nop
    ld b, [hl]
    ld d, h
    add hl, de
    inc b
    nop
    jp c, $FF54

    ld b, l
    ld c, [hl]
    ld bc, $A13B
    add hl, de
    nop
    nop
    or a
    ld d, l
    add hl, de
    ld bc, $8100
    ld d, [hl]
    add hl, de
    ld [bc], a
    nop
    ld a, $57
    add hl, de
    inc bc
    nop
    sbc a
    ld d, a
    add hl, de
    inc b
    nop
    rra
    ld e, b
    add hl, de
    dec b
    nop
    ld sp, hl
    ld e, b
    rst $38
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    rrca
    dec b
    ld [hl], e
    ret nc

    nop
    dec bc
    rst $38
    ld l, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    nop
    dec bc
    sbc l
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec c
    dec bc
    jp hl


    ret nc

    jr z, jr_00B_6DE9

    add b
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_00B_6DED

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    inc bc
    add hl, de
    nop

jr_00B_6DE9:
    ld b, b
    add b
    add d
    nop

jr_00B_6DED:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    add hl, bc
    ld [$0F73], sp
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    ld d, b
    dec d
    inc d
    ld a, l
    ld e, h
    ld b, b
    inc d
    ld e, l
    ld e, h
    jr nz, jr_00B_6E1F

    cp a
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $4043
    dec d
    inc d
    ld e, l
    ld e, h
    inc c
    nop
    ld d, $14
    ld e, l
    ld e, h
    inc [hl]
    nop

jr_00B_6E1F:
    ld bc, $B514
    ld e, l
    stop
    nop
    nop
    dec d
    inc d
    adc l
    ld e, h
    jr jr_00B_6E41

    ret


    ld e, l
    stop
    inc c
    inc bc
    ld e, [hl]
    dec bc
    ld d, d
    ld l, a
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld l, l
    ld e, h
    jr jr_00B_6E3F

jr_00B_6E3F:
    ld d, $14

jr_00B_6E41:
    inc sp
    ld e, h
    jr nc, jr_00B_6E45

jr_00B_6E45:
    rst $38
    inc d
    ld l, l
    ld e, h
    db $10
    rst $38
    nop
    inc d
    ld l, l
    ld e, h
    stop
    nop
    inc d
    cp a
    ld e, l
    jr nz, jr_00B_6E57

jr_00B_6E57:
    nop
    nop
    ld e, [hl]
    dec bc
    adc h
    ld l, a
    ld h, l
    inc b
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    rlca
    dec d
    inc d
    inc hl
    ld e, h
    db $10
    inc d
    adc l
    ld e, h
    jr nc, jr_00B_6E83

    inc hl
    ld e, h
    jr nz, jr_00B_6E87

    adc l
    ld e, h
    jr nc, jr_00B_6E77

jr_00B_6E77:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_6E8D

    ld c, [hl]
    ld bc, $A135
    rrca

jr_00B_6E83:
    ld bc, $8D00
    ld b, a

jr_00B_6E87:
    add hl, bc
    ld [bc], a
    nop
    ld d, d
    ld c, c
    add hl, bc

jr_00B_6E8D:
    inc bc
    nop
    sbc e
    ld e, d
    rrca
    inc b
    nop
    db $E4
    ld e, c
    ld c, $05
    nop
    cp c
    ld d, b
    rst $38
    ld b, l
    dec d
    dec d
    cp b
    ld [hl], h
    jr nz, jr_00B_6EB8

    ld c, [hl]
    ld [hl], l
    ld b, b
    dec d
    xor b
    ld [hl], h
    jr nz, jr_00B_6EC0

    ld b, h
    ld [hl], l
    ld b, b
    dec d
    cp b
    ld [hl], h
    jr nz, @+$17

    ld c, [hl]
    ld [hl], l
    ld b, b
    dec d
    xor b

jr_00B_6EB8:
    ld [hl], h
    jr nz, jr_00B_6ED0

    ld b, h
    ld [hl], l
    ld b, b
    nop
    ld e, [hl]

jr_00B_6EC0:
    dec bc
    ld de, $156F
    dec d
    xor b
    ld [hl], h
    jr nz, jr_00B_6EDE

    ld b, h
    ld [hl], l
    ld b, b
    nop
    ld h, l
    inc bc
    dec d

jr_00B_6ED0:
    dec d
    cp b
    ld [hl], h
    db $10
    dec d
    ld c, [hl]
    ld [hl], l
    jr nz, jr_00B_6ED9

jr_00B_6ED9:
    ld e, [hl]
    dec bc
    and b
    ld l, a
    dec d

jr_00B_6EDE:
    dec d
    xor b
    ld [hl], h
    db $10
    dec d
    inc e
    ld [hl], l
    nop
    nop
    ld h, l
    inc b
    dec d
    dec d
    cp b
    ld [hl], h
    jr nz, jr_00B_6F04

    sbc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    jr nz, jr_00B_6F0C

    ld c, [hl]
    ld [hl], l
    nop
    nop
    ld e, [hl]
    dec bc
    db $E3
    ld l, a
    ld h, l
    ld b, $15
    dec d
    sbc b

jr_00B_6F04:
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    ld b, [hl]
    nop
    ld e, [hl]

jr_00B_6F0C:
    dec bc
    jr c, jr_00B_6F7F

    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld [hl], l
    ld [hl], d
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld l, $2E
    ld l, $20
    rst $38
    ld d, e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    jr nz, jr_00B_6F9C

    ld [hl], h
    ld l, c
    ld h, e
    ld l, e
    ld hl, $49FE
    jr nz, jr_00B_6F9D

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_6FB0

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_6FC9

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00B_6FC3

    ld h, l
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_6FDD

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_6FE5

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    cp $67
    ld [hl], l
    ld a, c
    jr nz, jr_00B_6FE1

    ld [hl], e
    jr nz, jr_00B_6FE7

    ld l, a
    ld l, a
    ld l, e
    ld l, c

jr_00B_6F7F:
    ld l, [hl]
    ld h, a
    cp $66
    ld l, a
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld a, b
    ld h, e
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_00B_7005

    ld h, l
    ld l, $FE
    db $FD

jr_00B_6F9C:
    and c

jr_00B_6F9D:
    ld e, e
    inc bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a
    ld l, b
    ld l, a
    jr nz, @+$75

    ld h, c
    ld l, c
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, c

jr_00B_6FB0:
    ld [hl], h
    ccf
    ld hl, $49FF
    jr nz, jr_00B_7018

    ld l, l
    jr nz, jr_00B_7005

    ld l, a
    ld [hl], d
    ld h, a
    ld hl, $53FE
    ld l, b
    ld l, a
    ld [hl], a

jr_00B_6FC3:
    jr nz, jr_00B_703E

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_00B_6FC9:
    ld h, l
    ld l, h
    ld h, [hl]
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $3F

jr_00B_6FDD:
    cp $FD
    and c
    ld e, e

jr_00B_6FE1:
    inc b
    ld b, l
    and d
    ld c, b

jr_00B_6FE5:
    ld e, a
    and [hl]

jr_00B_6FE7:
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $5320
    ld [hl], h
    ld l, c
    ld h, e
    ld l, e
    ld l, $2E
    ld l, $FF
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2E
    ld l, $20
    ld l, [hl]
    ld l, a
    ld [hl], h
    cp $68
    ld h, l

jr_00B_7005:
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6F

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_00B_7071

    ld h, l

jr_00B_7018:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00B_7083

    ld h, c
    ld [hl], l
    ld l, h
    ld [hl], h
    ld hl, $49FE
    daa
    ld l, l
    jr nz, jr_00B_709B

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00B_7096

    ld [hl], h
    jr nz, jr_00B_7099

    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $45
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b

jr_00B_703E:
    ld h, c
    ld [hl], h
    jr nz, jr_00B_70A9

    ld [hl], l
    ld a, c
    jr nz, jr_00B_70B9

    ld [hl], l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, @+$79

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_70E0

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e

jr_00B_7071:
    ld [hl], h
    jr nz, jr_00B_70DC

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    cp $74
    ld l, a
    jr nz, @+$6F

    ld h, l
    jr nz, jr_00B_70EC

jr_00B_7083:
    ld l, [hl]
    jr nz, jr_00B_70FA

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_70D3

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00B_70EF

jr_00B_7096:
    ld b, c
    ld c, e
    ld c, c

jr_00B_7099:
    jr nz, jr_00B_7104

jr_00B_709B:
    ld [hl], e
    rst $38
    ld c, h
    ld c, c
    ld d, e
    ld d, h
    ld b, l
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    ld hl, $FDFE

jr_00B_70A9:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, @+$75

    ld h, c
    ld [hl], a
    jr nz, jr_00B_7128

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], a

jr_00B_70B9:
    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    jr nz, jr_00B_7126

    ld [hl], l
    ld a, c
    jr nz, jr_00B_713A

    ld l, b
    ld l, a
    cp $63
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, @+$6A

    ld l, c
    ld l, l
    ld [hl], e
    ld h, l
    ld l, h

jr_00B_70D3:
    ld h, [hl]
    rst $38
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    ld l, $20
    ld c, b

jr_00B_70DC:
    ld h, l
    jr nz, @+$75

    ld h, c

jr_00B_70E0:
    ld l, c
    ld h, h
    cp $73
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_00B_70EC:
    jr nz, jr_00B_714F

    ld h, d

jr_00B_70EF:
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_7168

    ld [hl], h

jr_00B_70FA:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00B_7166

    ld [hl], l
    ld a, c
    cp $5A
    ld h, l

jr_00B_7104:
    ld [hl], h
    inc l
    jr nz, jr_00B_7169

    ld l, [hl]
    ld h, h
    jr nz, jr_00B_7180

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, b
    ld h, l
    jr nz, jr_00B_718B

    ld h, c
    ld [hl], e
    jr nz, jr_00B_7184

    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    cp $66
    ld l, a
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_00B_7199

jr_00B_7126:
    ld [hl], h
    ld l, c

jr_00B_7128:
    ld h, e
    ld l, e
    jr nz, jr_00B_7175

    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_719D

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d

jr_00B_713A:
    ld h, l
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_7184

    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FF
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_00B_71B5

    ld l, a

jr_00B_714F:
    ld l, a
    ld h, h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6D

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00B_71D8

    ld l, b
    ld h, c

jr_00B_7166:
    ld [hl], h
    rst $38

jr_00B_7168:
    ld h, a

jr_00B_7169:
    ld [hl], l
    ld a, c
    ccf
    cp $FD
    and d
    jr z, jr_00B_71B4

    and [hl]
    ld c, a
    ld l, b
    inc l

jr_00B_7175:
    jr nz, jr_00B_71D0

    ld h, l
    ld h, c
    ld l, b
    ld l, $20
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a

jr_00B_7180:
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h

jr_00B_7184:
    jr nz, jr_00B_71E0

    ld h, l
    ld [hl], h
    jr nz, jr_00B_71EB

    ld [hl], d

jr_00B_718B:
    ld h, l
    jr nz, jr_00B_71EF

    cp $70
    ld h, c
    ld l, c
    ld [hl], d
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00B_71FD

    halt

jr_00B_7199:
    ld l, c
    ld l, h
    rst $38
    ld b, e

jr_00B_719D:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00B_71EF

    ld h, c
    ld h, a
    ld l, c
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], h
    cp $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00B_7224

    ld l, l
    ld h, c
    ld [hl], d

jr_00B_71B4:
    ld [hl], h

jr_00B_71B5:
    inc l
    jr nz, jr_00B_721A

    ld [hl], l
    ld [hl], h
    rst $38
    halt
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, @+$66

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_00B_71D0:
    ld d, e
    ld l, a
    jr nz, @+$66

    ld l, a
    jr nz, @+$7B

    ld l, a

jr_00B_71D8:
    ld [hl], l
    jr nz, jr_00B_7246

    ld l, [hl]
    ld l, a
    ld [hl], a
    rst $38
    ld h, c

jr_00B_71E0:
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_724A

    ld h, d
    ld l, a

jr_00B_71EB:
    ld [hl], l
    ld [hl], h
    cp $74

jr_00B_71EF:
    ld l, b
    ld h, l
    jr nz, @+$75

    ld [hl], h
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_00B_7242

    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l

jr_00B_71FD:
    ld l, [hl]
    ld h, h
    ccf
    cp $FD
    and d
    jr z, jr_00B_7248

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_7271

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_7272

    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_00B_7288

    ld h, [hl]

jr_00B_721A:
    jr nz, jr_00B_7290

    ld l, b
    ld h, l
    cp $53
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]

jr_00B_7224:
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00B_7271

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $FF
    ld c, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_7296

    ld h, a
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $4B
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_00B_7242:
    ld [hl], e
    jr nz, @+$6E

    ld l, a

jr_00B_7246:
    ld h, e
    ld l, e

jr_00B_7248:
    ld h, l
    ld h, h

jr_00B_724A:
    rst $38
    ld h, c
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_00B_72B2

    jr nz, jr_00B_72B5

    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, b
    jr nz, jr_00B_72C8

    ld h, [hl]
    cp $63
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6A

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_00B_72D0

    ld l, [hl]
    rst $38
    ld h, c
    jr nz, jr_00B_72DF

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c

jr_00B_7271:
    ld l, h

jr_00B_7272:
    jr nz, jr_00B_72E4

    ld h, c
    ld [hl], d
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, jr_00B_72F0

    ld l, b
    ld h, l
    jr nz, jr_00B_72C3

    ld l, a
    ld [hl], d
    ld h, l
    inc l
    rst $38
    ld [hl], l
    ld [hl], e
    ld l, c

jr_00B_7288:
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_7300

    ld l, b
    ld h, l
    jr nz, @+$55

jr_00B_7290:
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    cp $6F

jr_00B_7296:
    ld h, [hl]
    jr nz, jr_00B_72E1

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $FF
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00B_72F7

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    cp $68
    ld h, c
    ld [hl], e
    jr nz, jr_00B_7322

    ld [hl], a
    ld l, a
    jr nz, jr_00B_7322

jr_00B_72B2:
    ld h, c
    ld [hl], d
    ld [hl], h

jr_00B_72B5:
    ld [hl], e
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_7323

    ld l, [hl]

jr_00B_72C3:
    ld h, h
    cp $74
    ld l, b
    ld h, l

jr_00B_72C8:
    jr nz, jr_00B_732D

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h

jr_00B_72D0:
    ld l, $FF
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00B_733A

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    cp $70

jr_00B_72DF:
    ld h, c
    ld [hl], d

jr_00B_72E1:
    ld [hl], h
    jr nz, jr_00B_7347

jr_00B_72E4:
    ld h, c
    ld l, [hl]
    rst $38
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_00B_7358

jr_00B_72F0:
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    cp $74

jr_00B_72F7:
    ld l, b
    ld h, l
    jr nz, jr_00B_7372

    ld h, c
    ld l, [hl]
    ld h, h
    rst $38
    ld l, a

jr_00B_7300:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    jr nz, jr_00B_7367

    ld l, [hl]
    ld h, h
    cp $63
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_00B_7385

    ld l, b
    ld h, l
    jr nz, jr_00B_7388

    ld h, l
    ld h, c
    ld l, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6E

    ld l, a
    ld h, e
    ld l, e

jr_00B_7322:
    ld h, l

jr_00B_7323:
    ld h, h
    jr nz, jr_00B_739A

    ld l, b
    ld h, l
    cp $68
    ld a, c
    ld [hl], d
    ld h, l

jr_00B_732D:
    ld l, [hl]
    jr nz, jr_00B_7391

    ld [hl], a
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_00B_733A:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    rst $38

jr_00B_7347:
    ld h, c
    jr nz, jr_00B_73BD

    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_7397

    and [hl]
    ld d, a
    ld c, a
    ld c, a

jr_00B_7358:
    ld hl, $4120
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_73A8

    daa
    ld l, l
    rst $38
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h

jr_00B_7367:
    jr nz, @+$63

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $74
    ld h, l
    ld l, h
    ld l, h

jr_00B_7372:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_73E0

    ld [hl], h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld h, [hl]
    jr nz, jr_00B_73CE

    ld l, a
    ld [hl], d

jr_00B_7385:
    ld h, a
    jr nz, jr_00B_73E9

jr_00B_7388:
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_73E6

    ld h, l
    ld [hl], h
    rst $38
    ld h, c
    ld [hl], d

jr_00B_7391:
    ld h, l
    jr nz, jr_00B_7400

    ld l, a
    ld l, a
    ld l, e

jr_00B_7397:
    ld l, c
    ld l, [hl]
    ld h, a

jr_00B_739A:
    jr nz, jr_00B_7402

    ld l, a
    ld [hl], d
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00B_73F7

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]

jr_00B_73A8:
    jr nz, jr_00B_7419

    ld h, [hl]
    rst $38
    ld c, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    cp $73
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    rst $38

jr_00B_73BD:
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_00B_7439

    ld [hl], h
    ld l, a
    ld [hl], b
    cp $74
    ld l, b
    ld h, l
    ld l, l

jr_00B_73CE:
    ccf
    cp $FD
    and d
    jr z, jr_00B_7417

    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_00B_7443

    ld l, a
    ld [hl], d
    rst $38

jr_00B_73E0:
    halt
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h

jr_00B_73E6:
    ld h, l
    ld h, l
    ld [hl], d

jr_00B_73E9:
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    dec l
    ld b, d
    ld [hl], l

jr_00B_73F7:
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr z, jr_00B_7443

jr_00B_7400:
    and [hl]
    ld d, a

jr_00B_7402:
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_00B_7478

    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_00B_7471

    ld l, a
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_748B

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_00B_7417:
    jr nz, jr_00B_748D

jr_00B_7419:
    ld l, a
    jr nz, jr_00B_7483

    ld h, l
    ld [hl], h
    cp $66
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_00B_749B

    ld l, b
    ld h, l
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld h, h
    rst $38
    ld l, a
    ld [hl], d
    jr nz, jr_00B_74A7

    ld l, b
    ld h, l
    jr nz, jr_00B_749A

    ld [hl], d
    ld a, c

jr_00B_7439:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c

jr_00B_7443:
    and b
    and [hl]
    jr nz, jr_00B_748E

    ld h, l
    ld [hl], h
    jr nz, @+$59

    ld h, c
    ld l, [hl]
    ld h, h
    rst $38
    jr nz, jr_00B_7498

    ld h, l
    ld [hl], h
    jr nz, jr_00B_7498

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    db $FD
    and e
    ld [bc], a
    dec bc
    ld h, h
    ld [hl], h
    dec bc
    jr z, jr_00B_74D9

    and d
    jr z, jr_00B_74AA

    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00B_74D7

    ld h, h
    ld h, l
    ld h, c

jr_00B_7471:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    rst $38
    ld [hl], a

jr_00B_7478:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_74E6

    ld [hl], e
    jr nz, jr_00B_74E9

    ld l, [hl]
    jr nz, jr_00B_74E9

jr_00B_7483:
    ld l, c
    halt
    ld h, l
    cp $73
    ld h, l
    ld h, e
    ld [hl], h

jr_00B_748B:
    ld l, c
    ld l, a

jr_00B_748D:
    ld l, [hl]

jr_00B_748E:
    ld [hl], e
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    rst $38
    ld [hl], e
    ld h, l
    ld h, e

jr_00B_7498:
    ld [hl], h
    ld l, c

jr_00B_749A:
    ld l, a

jr_00B_749B:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_00B_7500

    ld [hl], d
    ld h, l
    cp $68
    ld l, c
    ld h, h
    ld h, h
    ld h, l

jr_00B_74A7:
    ld l, [hl]
    jr nz, jr_00B_7513

jr_00B_74AA:
    ld l, [hl]
    rst $38
    ld b, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    inc l
    jr nz, jr_00B_74FA

    ld h, c
    ld l, h
    ld h, h
    inc l
    cp $4E
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    jr nz, @+$51

    ld [hl], d
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$57

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l

jr_00B_74D7:
    ld h, c
    ld [hl], h

jr_00B_74D9:
    ld l, b
    inc l
    cp $6F
    ld l, [hl]
    ld h, l
    jr nz, jr_00B_7551

    ld h, l
    ld [hl], d
    jr nz, jr_00B_7557

    ld h, l

jr_00B_74E6:
    ld h, a
    ld l, c
    ld l, a

jr_00B_74E9:
    ld l, [hl]
    ld l, $FF
    ld b, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$6F

    ld h, c
    ld l, e
    ld h, l
    cp $73
    ld [hl], l

jr_00B_74FA:
    ld [hl], d
    ld h, l
    jr nz, jr_00B_7577

    ld l, a
    ld [hl], l

jr_00B_7500:
    jr nz, jr_00B_756E

    ld l, a
    ld l, a
    ld l, e
    rst $38
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_00B_7572

    ld l, a
    ld [hl], d
    jr nz, jr_00B_7584

    ld l, b
    ld h, l
    ld l, l

jr_00B_7513:
    ld hl, $FDFE
    and c
    sbc e
    dec bc
    or l
    ld l, d
    or e
    ld sp, $00C7
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    and d
    jr z, jr_00B_756E

    and [hl]
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ccf
    jr nz, jr_00B_7585

    ld l, a
    ld l, a
    ld h, h
    cp $63
    ld l, b
    ld l, a
    ld l, c
    ld h, e
    ld h, l
    ld hl, $5420
    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c

jr_00B_7551:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_00B_75C7

jr_00B_7557:
    ld h, c
    ld [hl], d

jr_00B_7559:
    ld [hl], h
    cp $69
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6A

    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    rst $38
    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_00B_756E:
    jr nz, jr_00B_75D8

    ld h, l
    ld [hl], d

jr_00B_7572:
    ld h, l
    inc l
    cp $62
    ld [hl], l

jr_00B_7577:
    ld [hl], h
    jr nz, jr_00B_75BF

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_00B_75EB

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld [hl], e

jr_00B_7584:
    rst $38

jr_00B_7585:
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00B_7600

    ld l, b
    ld h, l
    cp $70
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_00B_7606

    ld h, [hl]
    jr nz, jr_00B_7603

    ld [hl], h
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld b, e
    jr nc, jr_00B_7559

    ld [hl], $A1
    ld [bc], a
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_75BF

    ld c, b
    add hl, bc
    adc d
    ld l, a
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    db $10
    inc c
    nop

jr_00B_75BF:
    pop de
    nop
    dec bc
    rlca
    halt
    add hl, de
    add sp, $46

jr_00B_75C7:
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld a, [bc]
    rlca
    sub [hl]
    ret nc

    nop
    dec bc
    sub c
    halt
    add hl, de
    add sp, $46
    dec b
    inc bc

jr_00B_75D8:
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    jr z, jr_00B_75F1

    add b
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_00B_75F5

    ret nz

    ld l, e
    nop

jr_00B_75EB:
    add b
    nop
    ld l, [hl]
    inc c
    add hl, de
    nop

jr_00B_75F1:
    ld b, b
    add b
    add d
    nop

jr_00B_75F5:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld a, [bc]
    add hl, bc
    ld [hl], e
    rrca

jr_00B_7600:
    rst $38
    ld a, a
    sbc b

jr_00B_7603:
    ld a, d
    ld h, b
    rrca

jr_00B_7606:
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld a, l
    ld e, h
    jr nc, jr_00B_7623

    inc sp
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h
    jr nc, @+$16

    inc sp
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h
    db $10
    inc d
    inc sp
    ld e, h
    db $10
    inc d

jr_00B_7623:
    sub a
    ld e, l
    nop
    nop
    ld e, [hl]
    dec bc
    call nc, Call_00B_6576
    ld bc, $1415
    ld a, l
    ld e, h
    inc c
    inc d
    xor e
    ld e, l
    ld [bc], a
    nop
    inc c
    inc bc
    dec d
    inc d
    cp a
    ld e, l
    ld b, b
    inc d
    sub a
    ld e, l
    ld b, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld e, [hl]
    dec bc
    inc c
    ld [hl], a
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    db $10
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    jr nc, jr_00B_7673

    ld e, l
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    ld d, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_7681

    ld c, [hl]

jr_00B_7673:
    ld bc, $A135
    rrca
    ld bc, $1800
    ld b, l
    add hl, bc
    ld [bc], a
    nop
    ld c, e
    ld c, c
    add hl, bc

jr_00B_7681:
    inc bc
    nop
    sub h
    ld e, d
    rrca
    inc b
    nop
    db $DD
    ld e, c
    ld c, $05
    nop
    cp e
    ld c, [hl]
    rst $38
    ld b, l
    dec d
    dec d
    cp b
    ld [hl], h
    jr jr_00B_76AC

    ld a, [hl-]
    ld [hl], l
    jr nc, @+$17

    xor b
    ld [hl], h
    jr jr_00B_76B4

    jr nc, jr_00B_7716

    jr nc, jr_00B_76B8

    cp b
    ld [hl], h
    jr nz, jr_00B_76BC

    ld a, [hl-]
    ld [hl], l
    jr nc, @+$17

    xor b

jr_00B_76AC:
    ld [hl], h
    jr nz, jr_00B_76C4

    jr nc, @+$77

    jr nc, jr_00B_76C8

    xor b

jr_00B_76B4:
    ld [hl], h
    jr nz, jr_00B_76CC

    ld a, [hl-]

jr_00B_76B8:
    ld [hl], l
    jr nc, @+$17

    cp b

jr_00B_76BC:
    ld [hl], h
    jr nz, jr_00B_76D4

    jr nc, jr_00B_7736

    jr nc, jr_00B_76D8

    cp b

jr_00B_76C4:
    ld [hl], h
    jr jr_00B_76DC

    ld a, [hl-]

jr_00B_76C8:
    ld [hl], l
    jr nc, @+$17

    xor b

jr_00B_76CC:
    ld [hl], h
    jr jr_00B_76E4

    jr nc, jr_00B_7746

    jr nc, jr_00B_76D3

jr_00B_76D3:
    ld b, l

jr_00B_76D4:
    and d
    ld c, b
    ld e, a
    and [hl]

jr_00B_76D8:
    ld c, l
    ld [hl], l
    ld [hl], d
    ld h, a

jr_00B_76DC:
    ld h, a
    ld l, h
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD

jr_00B_76E4:
    and b
    and [hl]
    ld e, d
    ld h, l
    ld [hl], h
    jr nz, @+$79

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00B_7768

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00B_7776

    ld h, c
    ld l, [hl]
    daa

jr_00B_7716:
    ld [hl], h
    jr nz, jr_00B_777B

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    halt
    ld h, l
    rst $38
    ld c, c
    jr nz, jr_00B_778A

    ld l, a
    ld [hl], h
    jr nz, jr_00B_779B

    ld l, b
    ld l, c
    ld [hl], e
    cp $61
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a

jr_00B_7736:
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    inc b
    add hl, bc
    cp b
    ret nc

    nop
    dec bc
    adc d

jr_00B_7746:
    ld [hl], a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    rlca
    sub a
    ret nc

    nop
    dec bc
    ei
    ld [hl], a
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec bc
    ld a, [bc]
    db $D3
    ret nc

    jr z, jr_00B_7774

    add b
    ld [hl], c
    add hl, de
    add sp, $46

jr_00B_7768:
    ld l, [hl]
    jr z, jr_00B_7778

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    inc c
    add hl, de
    nop

jr_00B_7774:
    ld b, b
    add b

jr_00B_7776:
    add d
    nop

jr_00B_7778:
    dec bc
    nop
    dec bc

jr_00B_777B:
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld a, [bc]
    ld [$0F73], sp
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l

jr_00B_778A:
    ld b, e
    ld b, b
    dec d
    inc d
    adc l
    ld e, h
    ld b, b
    inc d
    db $DD
    ld e, l
    jr nc, jr_00B_77AA

    ret


    ld e, l
    jr nc, jr_00B_77AE

    db $DD

jr_00B_779B:
    ld e, l
    jr nc, jr_00B_779E

jr_00B_779E:
    ld e, [hl]
    dec bc
    ld c, b
    ld a, b
    ld e, a
    nop
    inc bc
    ld b, e
    ld b, b
    dec d
    inc d
    ret


jr_00B_77AA:
    ld e, l
    jr nz, jr_00B_77AD

jr_00B_77AD:
    add a

jr_00B_77AE:
    jr nz, @+$03

    ld bc, $4300
    ld d, b
    ld e, [hl]
    dec bc
    add c
    ld a, b
    dec d
    inc d
    sbc l
    ld e, h
    jr nc, jr_00B_77D2

    ld c, l
    ld e, h
    inc c
    nop
    inc c
    inc bc
    dec d
    inc d
    and c
    ld e, l
    jr nz, @+$16

    inc sp
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h
    adc h
    nop

jr_00B_77D2:
    ld e, a
    ld bc, $7202
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_77EB

    ld c, [hl]
    ld bc, $A135
    rrca
    ld bc, $1800
    ld b, l
    add hl, bc
    ld [bc], a
    nop
    ld c, e
    ld c, c
    add hl, bc

jr_00B_77EB:
    inc bc
    nop
    sub h
    ld e, d
    rrca
    inc b
    nop
    db $DD
    ld e, c
    ld c, $05
    nop
    cp e
    ld c, [hl]
    rst $38
    ld b, l
    dec d
    dec d
    adc b
    ld [hl], h
    db $10
    dec d
    ld a, [hl-]
    ld [hl], l
    jr nc, jr_00B_781A

    sbc b
    ld [hl], h
    jr jr_00B_781E

    ld c, [hl]
    ld [hl], l
    jr nc, jr_00B_7822

    adc b
    ld [hl], h
    jr jr_00B_7826

    ld a, [hl-]
    ld [hl], l
    jr nc, jr_00B_782A

    sbc b
    ld [hl], h
    jr jr_00B_782E

    ld c, [hl]

jr_00B_781A:
    ld [hl], l
    jr nc, jr_00B_7832

    adc b

jr_00B_781E:
    ld [hl], h
    jr jr_00B_7836

    ld a, [hl-]

jr_00B_7822:
    ld [hl], l
    jr nc, jr_00B_783A

    sbc b

jr_00B_7826:
    ld [hl], h
    jr jr_00B_783E

    ld c, [hl]

jr_00B_782A:
    ld [hl], l
    jr nc, jr_00B_7842

    adc b

jr_00B_782E:
    ld [hl], h
    jr jr_00B_7846

    ld a, [hl-]

jr_00B_7832:
    ld [hl], l
    jr nc, jr_00B_7835

jr_00B_7835:
    ld e, a

jr_00B_7836:
    nop
    inc bc
    dec d
    dec d

jr_00B_783A:
    cp b
    ld [hl], h
    rla
    dec d

jr_00B_783E:
    adc b
    ld [hl], h
    jr jr_00B_7857

jr_00B_7842:
    cp b
    ld [hl], h
    ld [hl-], a
    nop

jr_00B_7846:
    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld [hl], l
    ld [hl], d
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld l, $2E
    ld l, $FE

jr_00B_7857:
    db $FD
    and b
    and [hl]
    ld d, e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    jr nz, jr_00B_78D5

    ld [hl], h
    ld l, c
    ld h, e
    ld l, e
    ld [hl], e
    ld hl, $54FF
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    nop
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_00B_78FF

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$69

    ld [hl], l
    ld a, c
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_00B_7907

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    cp $70
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], h
    ld l, c
    ld h, e
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld bc, $4502
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    rrca
    dec b
    ld [hl], e
    ret nc

    nop
    dec bc
    nop
    ld a, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    nop
    dec bc
    ld l, c
    ld a, c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    add hl, bc
    add hl, bc

jr_00B_78D5:
    cp l
    ret nc

    jr z, jr_00B_78EA

    add b
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_00B_78EE

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    inc c
    add hl, de
    nop

jr_00B_78EA:
    ld b, b
    add b
    add d
    nop

jr_00B_78EE:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld [$730A], sp
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca

jr_00B_78FF:
    ld b, l
    dec d
    inc d
    ld a, l
    ld e, h
    ld b, b
    inc d
    ld e, l

jr_00B_7907:
    ld e, h
    jr nz, @+$16

    cp a
    ld e, l
    ld b, b
    nop
    ld e, [hl]
    dec bc
    rst $18
    ld a, c
    ld e, a
    nop
    inc bc
    dec d
    inc d
    ld a, l
    ld e, h
    jr nz, jr_00B_792F

    ld e, l
    ld e, h
    jr nz, jr_00B_7933

    cp a
    ld e, l
    stop
    inc c
    inc bc
    dec d
    inc d
    sbc l
    ld e, h
    jr nz, jr_00B_793F

    inc sp
    ld e, h
    jr nz, jr_00B_7943

jr_00B_792F:
    cp a
    ld e, l
    ld d, b
    nop

jr_00B_7933:
    ld e, [hl]
    dec bc
    ld b, e
    ld a, d
    ld h, l
    ld [bc], a
    dec d
    inc d
    inc sp
    ld e, h
    jr nz, jr_00B_7953

jr_00B_793F:
    sbc l
    ld e, h
    ld h, h
    nop

jr_00B_7943:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_7959

    ld c, [hl]
    ld bc, $A135
    rrca
    ld bc, $1800
    ld b, l

jr_00B_7953:
    add hl, bc
    ld [bc], a
    nop
    ld c, e
    ld c, c
    add hl, bc

jr_00B_7959:
    inc bc
    nop
    sub h
    ld e, d
    rrca
    inc b
    nop
    db $DD
    ld e, c
    ld c, $05
    nop
    cp e
    ld c, [hl]
    rst $38
    ld b, l
    dec d
    dec d
    sbc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    jr nz, jr_00B_7988

    ld c, [hl]
    ld [hl], l
    jr nc, jr_00B_798C

    xor b
    ld [hl], h
    jr nz, jr_00B_7990

    adc b
    ld [hl], h
    db $10
    dec d
    jr nc, jr_00B_79F6

    jr nc, @+$17

    sbc b
    ld [hl], h
    db $10
    dec d
    cp b

jr_00B_7988:
    ld [hl], h
    jr nz, jr_00B_79A0

    ld c, [hl]

jr_00B_798C:
    ld [hl], l
    jr nc, jr_00B_79A4

    xor b

jr_00B_7990:
    ld [hl], h
    jr nz, jr_00B_79A8

    adc b
    ld [hl], h
    db $10
    dec d
    jr nc, jr_00B_7A0E

    jr nc, jr_00B_79B0

    sbc b
    ld [hl], h
    db $10
    dec d
    cp b

jr_00B_79A0:
    ld [hl], h
    jr nz, jr_00B_79B8

    ld c, [hl]

jr_00B_79A4:
    ld [hl], l
    jr nc, jr_00B_79BC

    ld b, h

jr_00B_79A8:
    ld [hl], l
    jr nc, jr_00B_79C0

    ld c, [hl]
    ld [hl], l
    jr nc, jr_00B_79AF

jr_00B_79AF:
    ld e, a

jr_00B_79B0:
    nop
    inc bc
    ld b, e
    jr nc, jr_00B_79CA

    dec d
    adc b
    ld [hl], h

jr_00B_79B8:
    jr nz, jr_00B_79CF

    xor b
    ld [hl], h

jr_00B_79BC:
    jr nz, jr_00B_79D3

    ld b, h
    ld [hl], l

jr_00B_79C0:
    ld d, b
    dec d
    sbc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    jr nz, jr_00B_79DF

jr_00B_79CA:
    ld c, [hl]
    ld [hl], l
    jr nc, jr_00B_79E3

    xor b

jr_00B_79CF:
    ld [hl], h
    jr nz, jr_00B_79E7

    adc b

jr_00B_79D3:
    ld [hl], h
    db $10
    dec d
    jr nc, jr_00B_7A4D

    jr nc, jr_00B_79EF

    ld b, h
    ld [hl], l
    jr nc, jr_00B_79DE

jr_00B_79DE:
    ld b, l

jr_00B_79DF:
    and d
    ld c, b
    ld e, a
    and [hl]

jr_00B_79E3:
    ld c, l
    ld [hl], l
    ld [hl], d
    ld h, a

jr_00B_79E7:
    ld h, a
    ld l, h
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD

jr_00B_79EF:
    and b
    and [hl]
    ld e, d
    ld h, l
    ld [hl], h
    jr nz, jr_00B_7A6D

jr_00B_79F6:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00B_7A6B

    ld h, c
    ld a, c
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $4920
    daa
    ld l, l
    cp $77
    ld h, c

jr_00B_7A0E:
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_7A82

    ld a, c
    jr nz, jr_00B_7A8C

    ld l, c
    ld l, l
    ld h, l
    rst $38
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_7A8B

    ld l, a
    ld [hl], d
    ld l, $2E
    ld l, $FE
    ld h, l
    ld [hl], d
    ld l, $2E
    ld l, $20
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and c
    ld e, a
    nop
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    ld l, b
    ld h, l
    ld l, $2E

jr_00B_7A4D:
    ld l, $20
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00B_7ABE

    ld [hl], e
    rst $38
    ld [hl], e
    ld l, a
    jr nz, jr_00B_7AC0

    ld h, c
    ld [hl], e
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop

jr_00B_7A6B:
    ld hl, sp+$4A

jr_00B_7A6D:
    inc b
    add hl, bc
    cp b
    ret nc

    nop
    dec bc
    cp b
    ld a, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    dec bc
    rst $20
    ret nc

    nop
    dec bc

jr_00B_7A82:
    add hl, sp
    ld a, e
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A

jr_00B_7A8B:
    dec bc

jr_00B_7A8C:
    rlca
    sub a
    ret nc

    jr z, jr_00B_7AA2

    add b
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_00B_7AA6

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    inc c
    add hl, de
    nop

jr_00B_7AA2:
    ld b, b
    add b
    add d
    nop

jr_00B_7AA6:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld a, [bc]
    ld a, [bc]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    ld b, b
    dec d
    inc d
    adc l
    ld e, h

jr_00B_7ABE:
    ld b, b
    inc d

jr_00B_7AC0:
    db $DD
    ld e, l
    jr nc, jr_00B_7AD8

    ret


    ld e, l
    jr nc, jr_00B_7ADC

    db $DD
    ld e, l
    jr nc, jr_00B_7AE0

    ret


    ld e, l
    inc c
    nop
    ld e, [hl]
    dec bc
    ld b, b
    ld a, e
    ld h, l
    ld bc, $1415

jr_00B_7AD8:
    sbc l
    ld e, h
    db $10
    inc d

jr_00B_7ADC:
    inc sp
    ld e, h
    jr nz, jr_00B_7AF4

jr_00B_7AE0:
    sbc l
    ld e, h
    jr nz, jr_00B_7AF8

    cp a
    ld e, l
    inc c
    nop
    inc c
    inc bc
    dec d
    inc d
    ld a, l
    ld e, h
    jr nz, jr_00B_7B04

    ld e, l
    ld e, h
    jr nz, jr_00B_7B08

jr_00B_7AF4:
    ld a, l
    ld e, h
    db $10
    inc d

jr_00B_7AF8:
    ret


    ld e, l
    jr nz, jr_00B_7AFC

jr_00B_7AFC:
    ld e, [hl]
    dec bc
    ld l, [hl]
    ld a, e
    dec d
    inc d
    cp [hl]
    ld e, d

jr_00B_7B04:
    jr nc, jr_00B_7B1A

    cp a
    ld e, l

jr_00B_7B08:
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    dec d
    inc d
    ld a, l
    ld e, h
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00B_7B29

jr_00B_7B1A:
    ld c, [hl]
    ld bc, $A135
    rrca
    ld bc, $8D00
    ld b, a
    add hl, bc
    ld [bc], a
    nop
    ld d, d
    ld c, c
    add hl, bc

jr_00B_7B29:
    inc bc
    nop
    sbc e
    ld e, d
    rrca
    inc b
    nop
    db $E4
    ld e, c
    ld c, $05
    nop
    cp c
    ld d, b
    rst $38
    ld b, l
    dec d
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld [hl], l
    ld [hl], d
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    and b
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_7BCF

    ld h, c
    ld [hl], e
    jr nz, jr_00B_7BA5

    rst $38
    ld h, h
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00B_7BCC

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld a, c
    ld hl, $4720
    ld l, a
    ld [hl], h
    jr nz, jr_00B_7BA3

    ld h, l
    ld l, l
    rst $38
    ld h, c
    ld l, h
    ld l, h
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, a
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_00B_7C0C

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    rst $38
    db $FD
    and d
    jr z, jr_00B_7BE1

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_00B_7BA3:
    ld [hl], d
    ld h, l

jr_00B_7BA5:
    jr nz, jr_00B_7C10

    ld l, [hl]
    rst $38
    ld l, h
    ld l, a
    halt
    ld h, l
    ld l, $2E
    ld l, $FE
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_00B_7C10

    ld b, c
    ld c, e
    ld c, c
    ld hl, $2121
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld c, [hl]

jr_00B_7BCC:
    ld l, a
    ld l, $20

jr_00B_7BCF:
    ld c, c
    daa
    halt
    ld h, l
    rst $38
    ld h, a
    ld l, a
    ld [hl], h
    jr nz, jr_00B_7C3A

    jr nz, jr_00B_7C3E

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h

jr_00B_7BE1:
    ld h, l
    cp $77
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00B_7C4F

    ld l, a
    ld [hl], d
    jr nz, jr_00B_7C61

    ld l, b
    ld h, l
    rst $38
    ld d, e
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_00B_7C66

    ld h, [hl]
    jr nz, @+$4A

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    and d
    jr z, jr_00B_7C47

    and [hl]
    ld c, a
    ld l, b
    ld l, $FE
    db $FD
    and b
    and [hl]

jr_00B_7C0C:
    ld c, c
    ld l, [hl]
    jr nz, jr_00B_7C84

jr_00B_7C10:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00B_7C78

    ld h, c
    ld [hl], e
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00B_7C86

    ld h, c
    ld h, h
    jr nz, jr_00B_7C84

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $66
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_00B_7CA4

    ld l, b
    ld h, l
    rst $38
    ld b, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c

jr_00B_7C3A:
    ld l, h
    jr nz, jr_00B_7CAA

    ld h, c

jr_00B_7C3E:
    ld a, d
    ld h, l
    ld [hl], e
    cp $73
    ld l, a
    jr nz, jr_00B_7CBF

    ld l, a

jr_00B_7C47:
    ld [hl], l
    jr nz, jr_00B_7CAD

    ld h, c
    ld l, [hl]
    jr nz, jr_00B_7CB5

    ld l, a

jr_00B_7C4F:
    rst $38
    ld h, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_00B_7CCB

    ld l, b
    ld h, l
    cp $63
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h

jr_00B_7C61:
    ld hl, $FDFE
    and c
    ld e, l

jr_00B_7C66:
    add hl, de
    ldh a, [rDMA]
    sbc e
    dec bc
    or l
    ld l, d
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    rst $38
    rst $38

jr_00B_7C78:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7C84:
    rst $38
    rst $38

jr_00B_7C86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7CA4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7CAA:
    rst $38
    rst $38
    rst $38

jr_00B_7CAD:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7CB5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7CBF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00B_7CCB:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
