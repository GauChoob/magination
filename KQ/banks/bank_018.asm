; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld [bc], a
    add hl, bc
    or [hl]
    ret nc

    nop
    jr jr_018_407B

    ld b, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    ld a, [bc]
    db $D3
    ret nc

    nop
    db $18, $B2
    ld b, b
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    add hl, bc
    ret nz

    ret nc

    jr z, jr_018_4044

    ld b, l
    ld b, c
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld a, [bc]
    rlca
    sub [hl]
    ret nc

    ld e, b
    ld de, $7180
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4050

    ret nz

jr_018_4044:
    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_4057

    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_4050:
    ld l, [hl]
    inc c
    add hl, de
    nop
    ld b, b
    add b
    add l

jr_018_4057:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld [$730A], sp
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nc, jr_018_4084

    inc d
    sbc l
    ld e, h
    jr nc, jr_018_4088

    ld e, l
    ld e, h
    db $10
    inc d
    db $DD
    ld e, l
    nop

jr_018_407B:
    nop
    ld h, e
    ld bc, $1415
    inc sp
    ld e, h
    db $10
    inc d

jr_018_4084:
    ld a, l
    ld e, h
    ld b, b
    inc d

jr_018_4088:
    db $DD
    ld e, l
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_018_40A2

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

jr_018_40A2:
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
    ld c, [hl]
    ld [hl], l
    jr nz, @+$17

    ld [de], a
    ld [hl], l
    jr nz, jr_018_40D1

    ld c, [hl]
    ld [hl], l
    jr nz, jr_018_40D5

    ld [de], a
    ld [hl], l
    jr nz, jr_018_40D9

    ld c, [hl]
    ld [hl], l
    jr nz, jr_018_40DD

    ld [de], a
    ld [hl], l
    jr nz, jr_018_40E1

    jr nc, @+$77

    ld b, b
    nop
    ld e, a

jr_018_40D1:
    nop
    ld [bc], a
    dec d
    dec d

jr_018_40D5:
    xor b
    ld [hl], h
    db $10
    dec d

jr_018_40D9:
    adc b
    ld [hl], h
    jr z, jr_018_40F2

jr_018_40DD:
    xor b
    ld [hl], h
    db $10
    dec d

jr_018_40E1:
    sbc b
    ld [hl], h
    ld [$4E15], sp
    ld [hl], l
    ld b, $15
    ld [de], a
    ld [hl], l
    ld b, $15
    ld b, h
    ld [hl], l
    ld b, $15
    inc e

jr_018_40F2:
    ld [hl], l
    ld b, $15
    jr nc, jr_018_416C

jr_018_40F7:
    ld b, $15
    ld [$0675], sp
    dec d
    ld a, [hl-]
    ld [hl], l
    jr nz, jr_018_4101

jr_018_4101:
    ld e, [hl]
    jr jr_018_40D1

    ld b, c
    ld h, l
    ld bc, $185E
    inc a
    ld b, d
    dec d
    dec d
    ld [de], a
    ld [hl], l
    ld b, b
    dec d
    xor b
    ld [hl], h
    ld [$8815], sp
    ld [hl], h
    db $10
    dec d
    ld h, $75
    nop
    nop
    ld h, l
    inc b
    ld e, [hl]
    jr jr_018_40F7

    ld b, d
    ld b, e
    jr nz, jr_018_413B

    dec d
    cp b
    ld [hl], h
    ld [$2615], sp
    ld [hl], l
    nop
    nop
    ld h, l
    ld b, $43
    inc c
    dec d
    dec d
    cp b
    ld [hl], h
    jr nc, jr_018_414E

    adc b
    ld [hl], h

jr_018_413B:
    jr @+$17

    cp b
    ld [hl], h
    jr nc, jr_018_4141

jr_018_4141:
    ld e, c
    ld bc, $4519
    dec d
    db $10
    and $7A
    jr z, jr_018_415B

    jp nc, $207A

jr_018_414E:
    db $10
    and $7A
    jr z, jr_018_4163

    jp nc, $207A

    db $10
    and $7A
    jr z, @+$12

jr_018_415B:
    jp nc, $207A

    db $10
    ret z

    ld a, d
    ld b, b
    nop

jr_018_4163:
    ld e, a
    nop
    ld [bc], a
    dec d
    db $10
    jr nz, jr_018_41E4

    jr nz, jr_018_417C

jr_018_416C:
    ld b, b
    ld a, d
    jr jr_018_4170

jr_018_4170:
    inc c
    inc b
    dec d
    db $10
    ld d, b
    ld a, d
    ld [$DC10], sp
    ld a, d
    ld b, $10

jr_018_417C:
    xor d
    ld a, d
    ld b, $10
    and $7A
    ld b, $10
    cp [hl]
    ld a, d
    ld b, $10
    jp nc, $067A

    db $10
    and b
    ld a, d
    ld b, $10
    ret z

    ld a, d
    ld b, $10
    or h
    ld a, d
    ld b, $10
    call c, $067A
    nop
    ld h, l
    ld bc, $4643
    inc d
    db $10
    or h
    ld a, d
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    jr jr_018_4221

    ld b, d
    ld b, e
    jr nz, jr_018_41C2

jr_018_41AE:
    db $10
    call c, $657A
    dec b
    ld e, [hl]
    jr jr_018_41AE

    ld b, d
    inc d
    db $10
    or h
    ld a, d
    ld h, l
    ld b, $15
    db $10
    ld d, b
    ld a, d
    db $10

jr_018_41C2:
    db $10
    jr nz, jr_018_423F

    jr jr_018_41D7

    ld d, b
    ld a, d
    jr nc, jr_018_41CB

jr_018_41CB:
    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, b
    ld b, l
    ld e, c
    ld hl, $5720

jr_018_41D7:
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    rst $38
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_425C

    ld l, a

jr_018_41E4:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $4920
    daa
    halt
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_4275

    ld h, c
    ld l, [hl]
    ld h, h
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld c, [hl]
    ld l, a
    inc l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    daa
    halt
    ld h, l
    jr nz, jr_018_427B

    ld l, a
    ld [hl], h
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_018_428E

    ld l, b
    ld l, a
    ld h, l
    ld l, $20
    ld c, c

jr_018_4221:
    jr nz, jr_018_428B

    ld h, c
    halt
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_018_42A3

    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_42A1

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    ld c, b
    ld e, a

jr_018_423F:
    and [hl]
    ld c, a
    ld l, b
    ld l, $2E
    ld l, $20
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_018_42AF

    ld l, c
    ld h, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_42BF

    ld h, l
    ld h, c
    halt
    ld h, l
    jr nz, jr_018_42D2

    ld l, a
    ld [hl], l
    ld [hl], d

jr_018_425C:
    cp $73
    ld l, b
    ld l, a
    ld h, l
    jr nz, jr_018_42D2

    ld l, [hl]
    jr nz, jr_018_42DA

    ld l, b
    ld h, l
    rst $38
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ccf
    cp $FD
    and c
    ld e, a
    nop

jr_018_4275:
    ld [bc], a
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]

jr_018_427B:
    ld c, [hl]
    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_018_42EF

    ld l, c
    ld l, [hl]
    ld h, h
    ld hl, $5720
    ld h, l
    rst $38
    ld l, b

jr_018_428B:
    ld h, c
    halt
    ld h, l

jr_018_428E:
    jr nz, jr_018_42F1

    cp $63
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_018_4313

    ld h, c
    ld l, [hl]
    ld h, h
    inc l
    rst $38

jr_018_42A1:
    ld [hl], e
    ld l, a

jr_018_42A3:
    jr nz, jr_018_4313

    ld l, a
    ld [hl], a
    jr nz, jr_018_4320

    ld h, l
    jr nz, jr_018_430F

    ld h, c
    ld l, [hl]
    rst $38

jr_018_42AF:
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_4321

    ld a, c
    jr nz, jr_018_431B

    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    cp $70

jr_018_42BF:
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_018_432D

    ld l, [hl]
    ld [hl], h
    ld l, a
    rst $38
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and c

jr_018_42D2:
    ld e, e
    inc b
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c

jr_018_42DA:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_4343

    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ccf
    jr nz, jr_018_432F

    ld [hl], l
    ld [hl], h

jr_018_42EF:
    ld l, $2E

jr_018_42F1:
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_018_4374

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_018_4361

    ld c, a
    ld d, l
    ld d, d
    rst $38
    ld h, h
    ld h, l
    halt

jr_018_430F:
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e

jr_018_4313:
    jr nz, jr_018_4385

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, $FE
    ld b, [hl]

jr_018_431B:
    ld h, l
    ld h, l
    ld l, h
    jr nz, jr_018_4382

jr_018_4320:
    ld h, l

jr_018_4321:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ccf
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c

jr_018_432D:
    ld h, l
    ld [hl], e

jr_018_432F:
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$6E

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_43A9

    ld l, a

jr_018_4343:
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $45
    and d
    jr z, jr_018_4390

    and [hl]
    ld c, b
    ld b, l
    ld c, h
    ld c, h
    ld c, h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38
    ld d, e
    ld b, c
    ld c, h
    ld b, c
    ld b, [hl]
    ld e, c
    ld hl, $FDFE

jr_018_4361:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    jr nz, jr_018_43C3

    ld h, c
    ld l, e
    ld l, c
    ld l, $FE
    db $FD
    and d
    jr z, jr_018_43B6

    and [hl]

jr_018_4374:
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_018_43ED

    ld l, b
    ld h, l
    jr nz, jr_018_43E9

    ld l, a
    ld l, [hl]
    ld h, a
    rst $38
    ld h, [hl]

jr_018_4382:
    ld h, c
    ld h, e
    ld h, l

jr_018_4385:
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_018_4406

    ld h, c

jr_018_4390:
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_43F7

    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_018_4405

    ld h, l
    ld [hl], h
    jr nz, jr_018_4403

    ld l, [hl]
    ld a, c
    jr nz, @+$71

    ld h, [hl]
    cp $74

jr_018_43A9:
    ld l, b
    ld h, l
    jr nz, jr_018_441D

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_018_4423

    ld h, [hl]
    rst $38

jr_018_43B6:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_4432

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $20
    ld c, e
    ld l, a
    ld [hl], d

jr_018_43C3:
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_018_4424

    ld h, l
    ld [hl], h
    jr nz, jr_018_4436

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_018_4439

    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and d
    jr z, jr_018_4423

    and [hl]
    ld c, a
    ld l, a
    ld l, a
    ld l, b
    ld l, $20
    ld c, [hl]
    ld l, a

jr_018_43E9:
    ld [hl], h
    jr nz, @+$69

    ld l, a

jr_018_43ED:
    ld l, a
    ld h, h
    ld l, $FF
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_018_4458

jr_018_43F7:
    ld l, [hl]
    ld h, h
    jr nz, jr_018_4455

    ld h, l
    ld [hl], h
    cp $70
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c

jr_018_4403:
    ld h, d
    ld l, h

jr_018_4405:
    ld a, c

jr_018_4406:
    jr nz, jr_018_447F

    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_018_4487

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_448A

    ld l, b
    ld h, l
    cp $68
    ld a, c
    ld [hl], d
    ld h, l

jr_018_441D:
    ld l, [hl]
    jr nz, jr_018_4497

    ld h, l
    ld [hl], d
    ld h, l

jr_018_4423:
    rst $38

jr_018_4424:
    ld [hl], e
    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    inc l
    jr nz, jr_018_448E

    ld l, [hl]
    ld h, h
    cp $6F
    ld [hl], b

jr_018_4432:
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h

jr_018_4436:
    jr nz, @+$6B

    ld [hl], h

jr_018_4439:
    jr nz, jr_018_44B0

    ld [hl], b
    ld l, $FF
    ld d, a
    ld h, l
    jr nz, jr_018_44B0

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_018_44BB

    ld l, a
    jr nz, jr_018_44B1

    ld h, l
    ld [hl], h
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_018_44B5

    ld l, [hl]

jr_018_4455:
    ld h, h
    jr nz, @+$69

jr_018_4458:
    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_44D5

    ld l, a
    ld l, a
    inc l
    jr nz, jr_018_44C8

    ld [hl], l
    ld [hl], h
    cp $77
    ld h, l
    jr nz, jr_018_44D0

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_44D7

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$77

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h

jr_018_447F:
    jr nz, jr_018_44FA

    ld l, a
    ld [hl], l
    cp $62
    ld h, l
    ld h, c

jr_018_4487:
    ld [hl], h
    jr nz, jr_018_44CB

jr_018_448A:
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d

jr_018_448E:
    ld l, c
    ld h, c
    ld l, h
    ld l, $FF
    ld d, e
    ld l, a
    ld l, $20

jr_018_4497:
    ld b, a
    ld b, l
    ld d, h
    jr nz, jr_018_44E3

    ld c, a
    ld c, c
    ld c, [hl]
    daa
    ld hl, $FDFE
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    dec bc
    or l
    ld l, d
    ld c, b
    add hl, de
    bit 6, b

jr_018_44B0:
    ld b, l

jr_018_44B1:
    ld l, c
    ld e, b
    ld a, b
    inc d

jr_018_44B5:
    dec b
    nop
    ld hl, sp+$4A
    ld c, $04

jr_018_44BB:
    ld e, [hl]
    ret nc

    nop
    jr jr_018_44DD

    ld b, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A

jr_018_44C8:
    ld b, $09

jr_018_44CA:
    cp d

jr_018_44CB:
    ret nc

    nop
    jr jr_018_4541

    ld b, l

jr_018_44D0:
    add hl, de
    add sp, $46
    dec b
    inc bc

jr_018_44D5:
    ld hl, sp+$4A

jr_018_44D7:
    ld [$BC09], sp
    ret nc

    jr z, jr_018_44F5

jr_018_44DD:
    push hl
    ld b, l
    add hl, de
    add sp, $46
    dec b

jr_018_44E3:
    inc b
    ld hl, sp+$4A
    inc c
    ld a, [bc]
    call nc, Call_018_58D0
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4501

    ret nz

jr_018_44F5:
    ld l, e
    nop
    add b
    nop
    ld l, [hl]

jr_018_44FA:
    jr nc, jr_018_4508

    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_4501:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_4508:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    add hl, bc
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
    ld d, b
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_018_4539

    ld a, l
    ld e, h
    jr nz, jr_018_453D

    ld e, l
    ld e, h
    ld [$BF14], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    jr jr_018_44CA

    ld c, b
    ld h, l
    ld a, [bc]
    ld b, e
    ld e, d

jr_018_4539:
    ld e, [hl]
    jr jr_018_459C

    ld c, b

jr_018_453D:
    ld h, l
    dec bc
    ld e, a
    nop

jr_018_4541:
    ld [bc], a
    dec d
    inc d
    inc sp
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    jr nc, jr_018_454C

jr_018_454C:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135

jr_018_4557:
    add hl, bc
    ld b, $00
    ld d, d
    ld l, h
    inc c
    rlca

jr_018_455E:
    nop
    and b
    ld l, h
    ld d, $08
    nop
    ld a, c
    ld [hl], b
    ld [$0009], sp
    ld b, $6E
    ld c, $0A
    nop
    call z, $FF6B
    ld b, l
    dec d
    dec d
    ld c, [hl]
    ld [hl], l
    jr nz, jr_018_458D

    ld b, h
    ld [hl], l
    jr nz, jr_018_4591

    ld c, [hl]
    ld [hl], l
    jr nz, jr_018_4595

    ld b, h
    ld [hl], l
    jr nz, jr_018_4599

    ld c, [hl]
    ld [hl], l
    jr nz, jr_018_459D

    inc e
    ld [hl], l
    jr nz, jr_018_458C

jr_018_458C:
    ld e, a

jr_018_458D:
    nop
    ld [bc], a
    dec d
    dec d

jr_018_4591:
    sbc b
    ld [hl], h
    db $10
    dec d

jr_018_4595:
    cp b
    ld [hl], h
    ld d, [hl]
    nop

jr_018_4599:
    inc c
    inc b
    inc d

jr_018_459C:
    dec d

jr_018_459D:
    ld [de], a
    ld [hl], l
    ld e, [hl]
    jr jr_018_4610

    ld b, [hl]

jr_018_45A3:
    ld h, l
    inc bc
    inc d
    dec d
    inc e
    ld [hl], l
    ld e, [hl]
    jr jr_018_455E

    ld b, [hl]
    ld h, l
    inc b
    ld e, [hl]
    jr @+$15

    ld b, a
    dec d
    dec d
    ld [de], a
    ld [hl], l
    ld b, b
    dec d
    inc e
    ld [hl], l
    nop
    nop
    ld h, l
    rlca
    inc d
    dec d
    ld [de], a
    ld [hl], l
    ld e, [hl]
    jr jr_018_4557

    ld b, a
    ld h, l
    inc c
    inc d
    dec d
    inc e
    ld [hl], l
    ld h, l
    add hl, bc
    ld e, [hl]
    jr @+$49

    ld c, b
    ld b, e
    jr nz, jr_018_45EB

    dec d
    cp b
    ld [hl], h
    jr nz, @+$17

    sbc b
    ld [hl], h
    jr nz, jr_018_45F4

    cp b
    ld [hl], h
    jr nc, jr_018_45E3

jr_018_45E3:
    add hl, de
    ld b, l
    dec d
    db $10
    and $7A
    jr z, jr_018_45FB

jr_018_45EB:
    call c, $207A
    db $10
    and $7A
    jr nz, jr_018_45F3

jr_018_45F3:
    ld h, l

Jump_018_45F4:
jr_018_45F4:
    inc c
    ld b, e
    jr c, jr_018_4656

    jr jr_018_464E

    ld b, [hl]

jr_018_45FB:
    dec d
    db $10
    ld d, b
    ld a, d
    db $10
    db $10
    and $7A
    jr nz, jr_018_4605

jr_018_4605:
    ld h, l
    ld [bc], a
    dec d
    db $10
    jr nc, jr_018_4685

    db $10
    db $10
    cp [hl]
    ld a, d
    nop

jr_018_4610:
    nop
    ld e, [hl]
    jr jr_018_45A3

    ld b, [hl]
    ld h, l
    ld b, $5E
    jr jr_018_4643

    ld b, a
    dec d
    db $10
    ld b, b
    ld a, d
    jr nz, jr_018_4631

    ld d, b
    ld a, d
    jr nz, jr_018_4635

    ld b, b
    ld a, d
    jr nz, jr_018_4639

    ld d, b
    ld a, d
    jr nz, jr_018_463D

    ld b, b
    ld a, d
    jr nz, jr_018_4641

jr_018_4631:
    ld d, b
    ld a, d
    jr nz, jr_018_4645

jr_018_4635:
    ld b, b
    ld a, d
    jr nz, jr_018_4649

jr_018_4639:
    cp [hl]
    ld a, d
    jr nz, jr_018_463D

jr_018_463D:
    ld h, l
    ld a, [bc]
    ld b, e
    ld a, [bc]

jr_018_4641:
    dec d
    db $10

jr_018_4643:
    ld d, b
    ld a, d

jr_018_4645:
    ld d, b
    db $10
    jr nc, @+$7C

jr_018_4649:
    jr nz, jr_018_465B

    ld d, b
    ld a, d
    ld b, b

jr_018_464E:
    nop
    ld e, a
    nop
    ld [bc], a
    add hl, de
    ld b, l
    and d
    xor b

jr_018_4656:
    ld c, a
    and [hl]
    ld c, c
    ld [hl], h
    daa

jr_018_465B:
    ld [hl], e
    jr nz, jr_018_46CD

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_018_46CB

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    inc l
    jr nz, jr_018_46C1

    ld l, a
    ld [hl], d
    ld h, a
    inc l
    jr nz, jr_018_46E4

    ld h, c
    halt
    ld h, l
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_018_4685:
    jr nz, jr_018_46F0

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_018_46FC

    ld [hl], l
    ld [hl], h
    jr nz, jr_018_46E7

    jr nz, jr_018_4713

    ld h, c
    ld [hl], a
    rst $38
    ld l, c
    ld [hl], h
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, e
    ld l, b
    ld h, c
    ld h, h
    ld h, h
    ld [hl], l
    ld [hl], b
    jr nz, jr_018_4719

    ld h, l
    ld [hl], h

jr_018_46C1:
    ld hl, $54FF
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$79

    ld h, c
    ld [hl], e

jr_018_46CB:
    jr nz, jr_018_473A

jr_018_46CD:
    ld a, c
    cp $70
    ld l, h
    ld h, c
    ld l, [hl]
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_4756

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]

jr_018_46E4:
    daa
    ld [hl], h
    rst $38

jr_018_46E7:
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$63

    jr nz, jr_018_475F

    ld l, h

jr_018_46F0:
    ld h, c
    ld l, [hl]
    jr nz, jr_018_475D

    ld h, [hl]
    cp $69
    ld [hl], h
    jr nz, jr_018_4762

    ld l, c
    ld [hl], h

jr_018_46FC:
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_018_476B

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_4771

    ld h, l
    ld h, c
    ld h, h
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l

jr_018_4713:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, l
    ld [hl], d

jr_018_4719:
    ld [hl], d
    ld l, $2E
    ld l, $20
    ld a, c
    ld h, l
    ld h, c
    ld l, b
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $45
    and d
    xor b
    ld c, a
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_479B

    ld h, [hl]
    jr nz, jr_018_47AC

    ld h, l
    jr nz, jr_018_479B

    ld h, c
    ld l, [hl]

jr_018_473A:
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_47A7

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_47BA

    ld l, b
    ld h, l
    cp $72
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_47BE

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld d, e

jr_018_4756:
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_018_47CB

    ld h, [hl]

jr_018_475D:
    jr nz, jr_018_47A7

jr_018_475F:
    ld a, c
    ld [hl], d
    ld h, l

jr_018_4762:
    ld l, [hl]
    cp $77
    ld h, l
    jr nz, jr_018_47DF

    ld l, c
    ld l, h
    ld l, h

jr_018_476B:
    jr nz, jr_018_47CF

    ld h, l
    jr nz, @+$63

    ld h, d

jr_018_4771:
    ld l, h
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_018_47DE

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $63
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_47EE

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    rlca
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld a, c
    jr nz, jr_018_4807

    ld h, c
    ld l, l

jr_018_479B:
    ld h, l
    jr nz, jr_018_4815

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_4805

    ld h, l
    rst $38
    ld [hl], a
    ld [hl], d

jr_018_47A7:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]

jr_018_47AC:
    jr nz, @+$6B

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $68
    ld l, c
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_018_47BA:
    ld a, c
    jr nz, jr_018_481F

    ld l, a

jr_018_47BE:
    ld l, a
    ld l, e
    ld [hl], e
    inc l
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_018_483A

    ld l, b
    ld h, c
    ld l, h
    ld l, h

jr_018_47CB:
    jr nz, jr_018_4840

    ld h, c
    ld a, c

jr_018_47CF:
    inc l
    cp $27
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    inc l
    jr nz, jr_018_484E

    ld l, l
    ld l, $2E
    ld l, $FF

jr_018_47DE:
    ld l, h

jr_018_47DF:
    ld h, l
    ld [hl], h
    jr nz, @+$6E

    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $2E
    ld l, $FE
    ld h, [hl]
    ld [hl], d
    ld h, l

jr_018_47EE:
    ld h, l
    ld h, h
    ld l, $2E
    ld l, $FF
    ld [hl], d
    ld h, c
    halt
    ld h, c
    ld h, a
    ld h, l
    ld h, h
    ld l, $2E
    ld l, $27
    cp $FD
    ld e, e
    inc c
    and [hl]
    ld [hl], a

jr_018_4805:
    ld l, b
    ld h, c

jr_018_4807:
    ld [hl], h
    jr nz, jr_018_4881

    ld h, c
    ld [hl], e
    jr nz, @+$4B

    rst $38
    ld [hl], e
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_4815:
    ccf
    cp $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_018_481F:
    jr nz, jr_018_4898

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_4899

    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_48A9

    ld h, l
    jr nz, jr_018_48AC

    ld h, l
    ld [hl], d
    ld h, l
    cp $6C

jr_018_483A:
    ld h, l
    ld h, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_4840:
    ld hl, $FDFE
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e

jr_018_484E:
    ld hl, $4620
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_018_48C5

    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_018_48BB

    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_48E8

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_4881:
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_018_48FC

    ld l, a
    jr nz, jr_018_48D0

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    sbc b

jr_018_4898:
    ld b, c

jr_018_4899:
    and [hl]
    ccf
    ccf
    jr nz, @+$59

    ld l, b
    ld l, a
    jr nz, jr_018_4903

    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e

jr_018_48A9:
    ld h, l
    jr nz, jr_018_4913

jr_018_48AC:
    ld [hl], l
    ld a, c
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    inc c
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b

jr_018_48BB:
    nop
    ld hl, sp+$4A
    dec bc
    ld c, $23
    pop de
    nop
    jr jr_018_48E7

jr_018_48C5:
    ld c, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc c
    rlca
    sbc b

jr_018_48D0:
    ret nc

    nop
    jr @+$57

    ld c, c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    rlca
    ld [$D0A7], sp
    jr z, jr_018_48FA

    db $EC
    ld c, c
    add hl, de
    add sp, $46

jr_018_48E7:
    dec b

jr_018_48E8:
    inc b
    ld hl, sp+$4A
    ld b, $0A
    adc $D0
    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4906

    ret nz

jr_018_48FA:
    ld l, e
    nop

jr_018_48FC:
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_490D

    ldh a, [rLYC]

jr_018_4903:
    add b
    add d
    nop

jr_018_4906:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_490D:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc

jr_018_4913:
    inc bc
    dec bc
    inc b
    adc b
    ld [$7309], sp
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    inc sp
    ld e, h
    jr nc, jr_018_493E

    db $D3
    ld e, l
    nop
    nop
    ld h, e
    ld bc, $1414
    cp a
    ld e, l
    ld e, [hl]
    jr jr_018_495D

    ld c, d
    ld h, l
    ld bc, $1415
    ld a, l
    ld e, h

jr_018_493E:
    jr nz, jr_018_4954

    xor e
    ld e, l
    jr nz, jr_018_4958

    adc l
    ld e, h
    jr nz, @+$16

    ld e, l
    ld e, h
    db $10
    inc d
    adc l
    ld e, h
    ld b, b
    inc d
    and c
    ld e, l
    nop
    nop

jr_018_4954:
    ld b, l
    dec d
    dec d
    ld a, [hl-]

jr_018_4958:
    ld [hl], l
    jr nz, jr_018_4970

    jr nc, jr_018_49D2

jr_018_495D:
    jr nz, @+$17

    ld a, [hl-]
    ld [hl], l
    jr nz, jr_018_4978

    jr nc, jr_018_49DA

    jr nz, jr_018_497C

    ld a, [hl-]
    ld [hl], l
    jr nz, jr_018_4980

    xor b
    ld [hl], h
    ld b, b
    dec d
    ld a, [hl-]

jr_018_4970:
    ld [hl], l
    jr nz, @+$17

    jr nc, jr_018_49EA

    jr nz, @+$17

    ld a, [hl-]

jr_018_4978:
    ld [hl], l
    jr nz, jr_018_497B

jr_018_497B:
    ld e, c

jr_018_497C:
    ld bc, $0165
    dec d

jr_018_4980:
    dec d
    xor b
    ld [hl], h
    ld e, $15
    sbc b
    ld [hl], h
    jr z, @+$17

    ld b, h
    ld [hl], l
    ld [$0C00], sp
    inc b
    inc d
    dec d
    ld a, [hl-]
    ld [hl], l
    ld e, [hl]
    jr jr_018_49D6

    ld c, d
    ld h, l
    ld [bc], a
    dec d
    dec d
    cp b
    ld [hl], h
    jr nz, jr_018_49B4

    ld h, $75
    jr nc, jr_018_49B8

    ld c, [hl]
    ld [hl], l
    jr nc, jr_018_49BC

    ld a, [hl-]
    ld [hl], l
    jr jr_018_49AB

jr_018_49AB:
    ld e, [hl]
    jr @+$6B

    ld c, d
    ld h, l
    inc bc
    dec d
    dec d
    cp b

jr_018_49B4:
    ld [hl], h
    jr nz, @+$17

    adc b

jr_018_49B8:
    ld [hl], h
    inc a
    dec d
    cp b

jr_018_49BC:
    ld [hl], h
    ld d, b
    dec d
    ld a, [hl-]
    ld [hl], l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc

jr_018_49D2:
    ld b, $00
    ld c, e
    ld l, h

jr_018_49D6:
    inc c
    rlca
    nop
    sbc c

jr_018_49DA:
    ld l, h
    ld d, $08
    nop
    ld [hl], d
    ld [hl], b
    ld [$0009], sp
    rst $38
    ld l, l
    ld c, $0A
    nop
    push bc
    ld l, e

jr_018_49EA:
    rst $38
    ld b, l
    dec d
    db $10
    jp nc, $287A

    db $10
    ret z

    ld a, d
    jr nz, jr_018_4A06

    jp nc, $207A

    db $10
    jp nc, $207A

    db $10
    jp nc, $287A

    db $10
    ld d, b
    ld a, d
    ld b, b
    db $10

jr_018_4A06:
    jp nc, $207A

    db $10
    ret z

    ld a, d
    jr nz, jr_018_4A1E

    jp nc, $207A

    nop
    ld h, l
    ld bc, $1014
    call c, $657A
    inc bc
    dec d
    db $10
    jr nz, jr_018_4A98

jr_018_4A1E:
    jr nz, @+$12

    ld d, b
    ld a, d
    ld d, b
    nop
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    daa
    ld [hl], e
    jr nz, jr_018_4A9E

    ld a, c
    rst $38
    ld h, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    ld c, b
    ld e, a
    and [hl]
    ld b, h
    ld l, c
    ld h, h
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_018_4AC0

    ld h, l
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    cp $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld c, [hl]
    ld c, a
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, @+$4B

    jr nz, jr_018_4AE9

    ld h, c
    ld [hl], a
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    ld e, e
    inc bc
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_018_4AF2

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc l
    rst $38
    ld c, e
    ld l, a

jr_018_4A98:
    ld [hl], d
    ld h, a
    ld l, $20
    ld d, a
    ld l, b

jr_018_4A9E:
    ld h, c
    ld [hl], h
    ld h, l
    halt
    ld h, l
    ld [hl], d
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_018_4B1D

    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld b, $08
    and [hl]
    ret nc

jr_018_4AC0:
    nop
    jr jr_018_4AE3

    ld c, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec c
    dec b
    ld [hl], c
    ret nc

    nop
    jr jr_018_4B4A

    ld c, e
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    rrca
    dec b
    ld [hl], e
    ret nc

    jr z, jr_018_4AF8

    xor a
    ld c, e
    add hl, de

jr_018_4AE3:
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A

jr_018_4AE9:
    ld c, $04
    ld e, [hl]
    ret nc

    ld e, b
    ld de, $728D
    add hl, de

jr_018_4AF2:
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4B04

    ret nz

jr_018_4AF8:
    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_4B0B

    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_4B04:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_4B0B:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    inc c
    rlca
    ld [hl], e
    rrca

jr_018_4B19:
    rst $38
    ld a, a
    sbc b
    ld a, d

jr_018_4B1D:
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nc, @+$17

    inc d
    sbc l
    ld e, h
    add hl, de
    nop
    dec d
    inc d
    db $DD
    ld e, l
    ld b, b
    nop
    inc c
    inc b
    dec d
    inc d
    db $DD
    ld e, l
    ld c, b
    nop
    ld e, [hl]
    jr jr_018_4B19

    ld c, e
    ld h, l
    ld bc, $2843
    inc d
    inc d
    or l
    ld e, l
    ld h, l

jr_018_4B43:
    ld [bc], a
    dec d
    inc d
    ret


    ld e, l
    ld a, b
    inc d

jr_018_4B4A:
    ld c, l
    ld e, h
    db $10
    inc d
    ld l, l
    ld e, h
    ld [hl], $00
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc
    ld b, $00
    ld c, e
    ld l, h
    inc c
    rlca
    nop
    sbc c
    ld l, h
    ld d, $08
    nop
    ld [hl], d
    ld [hl], b
    ld [$0009], sp
    rst $38
    ld l, l
    ld c, $0A
    nop
    push bc
    ld l, e
    rst $38
    ld b, l
    dec d
    dec d
    ld a, [hl-]
    ld [hl], l
    add b
    dec d
    adc b
    ld [hl], h
    dec b
    dec d
    ld a, [hl-]
    ld [hl], l
    ld [$4E15], sp
    ld [hl], l
    nop
    nop
    ld h, l
    ld bc, $1515
    xor b
    ld [hl], h
    inc d
    dec d
    sbc b
    ld [hl], h
    ld h, l
    dec d
    cp b
    ld [hl], h
    jr z, jr_018_4BAF

    inc e
    ld [hl], l
    nop
    nop
    ld e, [hl]
    jr jr_018_4B43

    ld c, h
    ld h, l
    ld [bc], a
    dec d
    dec d
    sbc b
    ld [hl], h
    ld h, b
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld b, l

jr_018_4BAF:
    dec d
    db $10
    ret z

    ld a, d
    and b
    db $10
    or h
    ld a, d
    nop
    nop
    ld h, l
    ld bc, $1015
    ld b, b
    ld a, d
    inc [hl]
    db $10
    jr nc, jr_018_4C3D

    jr nc, jr_018_4BC5

jr_018_4BC5:
    ld d, $10
    jr nc, @+$7C

    jr nc, jr_018_4BCB

jr_018_4BCB:
    ld bc, $1500
    db $10
    cp [hl]
    ld a, d
    nop
    nop
    ld h, l
    ld [bc], a
    dec d
    db $10
    ld d, b
    ld a, d
    jr nz, jr_018_4BEB

    jr nc, jr_018_4C57

    ld h, b
    nop
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_018_4C53

    ld [hl], e

jr_018_4BEB:
    jr nz, jr_018_4C61

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], e
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    jr nz, jr_018_4C66

    ld l, a
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_4C71

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_4C82

    ld l, a
    jr nz, jr_018_4C73

    ld h, l
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], h
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld c, c
    ld [hl], h
    cp $74
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_018_4C9A

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_018_4C9F

    ld l, a
    rst $38
    halt
    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h
    jr nz, jr_018_4C99

    halt
    ld h, l
    ld [hl], d
    ld a, c
    cp $72
    ld h, l
    ld h, a
    ld l, c

jr_018_4C3D:
    ld l, a
    ld l, [hl]
    jr nz, @+$6B

    ld l, [hl]
    jr nz, jr_018_4CB8

    ld l, b
    ld h, l
    rst $38
    ld c, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $FE
    db $FD

jr_018_4C53:
    and d
    ld c, b
    ld e, a
    and [hl]

jr_018_4C57:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_4CD5

    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld h, c

jr_018_4C61:
    ld l, c
    ld h, h
    jr nz, @+$79

    ld h, l

jr_018_4C66:
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_4CD0

    ld h, l
    jr nz, jr_018_4CD5

jr_018_4C71:
    ld l, a
    ld l, [hl]

jr_018_4C73:
    ld h, l
    cp $72
    ld h, l
    ld h, c
    ld l, h
    jr nz, @+$75

    ld l, a
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and d

jr_018_4C82:
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld h, l
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_4CF0

    ld h, l
    ld l, $FF
    ld b, d
    ld h, l
    jr nz, @+$72

    ld h, c
    ld [hl], h
    ld l, c
    ld h, l

jr_018_4C99:
    ld l, [hl]

jr_018_4C9A:
    ld [hl], h
    ld l, $FE
    db $FD
    and c

jr_018_4C9F:
    ld e, e
    ld bc, $A245
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, @+$6B

    ld l, [hl]
    jr nz, @+$65

    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_018_4CB8:
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_018_4D08

    jr nz, jr_018_4D34

    ld h, c
    ld a, c
    cp $77
    ld h, l
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_018_4D3D

    ld l, a

jr_018_4CD0:
    ld [hl], a
    ld hl, $FDFE
    and d

jr_018_4CD5:
    xor b
    ld c, a
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_018_4D54

    ld h, l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_018_4D47

    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $FF
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_4D56

    ld l, a

jr_018_4CF0:
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
    ld hl, sp+$4A
    ld c, $05
    ld [hl], d
    ret nc

    nop
    jr jr_018_4D69

    ld c, l
    add hl, de

jr_018_4D08:
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec b
    ld a, [bc]
    call $00D0
    jr @-$53

    ld c, l
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec b
    ld [$D0A5], sp
    jr z, jr_018_4D3B

    db $DB
    ld c, l
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld [$D00A], sp
    ret nc

    ld e, b
    ld de, $728D

jr_018_4D34:
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4D47

    ret nz

jr_018_4D3B:
    ld l, e
    nop

jr_018_4D3D:
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_4D4E

    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_4D47:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_4D4E:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc

jr_018_4D54:
    inc bc
    dec bc

jr_018_4D56:
    inc b
    adc b
    ld [$730A], sp
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    ld a, l
    ld e, h
    jr z, jr_018_4D7D

jr_018_4D69:
    ld e, l
    ld e, h
    inc d
    inc d
    cp a
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $5043
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    ld [bc], a
    dec d
    inc d

jr_018_4D7D:
    inc sp
    ld e, h
    jr nz, jr_018_4D95

    sbc l
    ld e, h
    jr nc, jr_018_4D85

jr_018_4D85:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc
    ld b, $00
    ld c, e
    ld l, h

jr_018_4D95:
    inc c
    rlca
    nop
    sbc c
    ld l, h
    ld d, $08
    nop
    ld [hl], d
    ld [hl], b
    ld [$0009], sp
    rst $38
    ld l, l
    ld c, $0A
    nop
    push bc
    ld l, e
    rst $38
    ld b, l
    dec d
    dec d
    ld [de], a
    ld [hl], l
    rra
    dec d
    cp b
    ld [hl], h
    dec h
    dec d
    ld h, $75
    ld b, $00
    inc c
    inc b
    ld b, e
    ld b, $15
    dec d
    inc e
    ld [hl], l
    ld [$5E00], sp
    jr jr_018_4DC7

    ld c, [hl]

jr_018_4DC7:
    ld h, l
    ld bc, $3043
    dec d
    dec d
    cp b
    ld [hl], h
    ld b, b
    dec d
    sbc b
    ld [hl], h
    jr jr_018_4DEA

    cp b
    ld [hl], h
    ld b, b
    nop
    add hl, de
    ld b, l
    dec d
    db $10
    xor d
    ld a, d
    inc e
    db $10
    jr nc, @+$7C

    jr nz, jr_018_4DF5

    cp [hl]
    ld a, d
    nop
    nop
    ld h, l

jr_018_4DEA:
    ld bc, $3343
    dec d
    db $10
    ld d, b
    ld a, d
    ld h, b
    db $10
    jr nc, jr_018_4E6F

jr_018_4DF5:
    ld a, [de]
    db $10
    ld d, b
    ld a, d
    ld b, b
    nop
    ld e, [hl]
    jr jr_018_4E10

    ld c, [hl]
    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, jr_018_4E73

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e

jr_018_4E10:
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, @+$6C

jr_018_4E19:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_4E82

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_018_4E2C:
    ld h, h
    cp $74
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_018_4EA9

    ld [hl], a
    ld l, a
    jr nz, jr_018_4E9A

    ld [hl], h
    rst $38
    ld h, c
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld de, $3801
    and c
    dec b
    nop
    jr jr_018_4E2C

    ld d, b
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    db $10
    dec bc
    db $EC
    ret nc

    nop
    jr jr_018_4E19

    ld c, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_018_4E64:
    ld hl, sp+$4A
    db $10
    ld b, $88
    ret nc

    nop
    jr jr_018_4E64

    ld c, [hl]
    add hl, de

jr_018_4E6F:
    add sp, $46
    dec b
    inc bc

jr_018_4E73:
    ld hl, sp+$4A
    ld c, $06
    add [hl]
    ret nc

    jr z, jr_018_4E93

    dec de
    ld c, a
    add hl, de
    add sp, $46
    dec b
    inc b

jr_018_4E82:
    ld hl, sp+$4A
    ld [$9407], sp
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_4E9F

    ret nz

jr_018_4E93:
    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_4EA6

jr_018_4E9A:
    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_4E9F:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_4EA6:
    nop
    dec bc
    nop

jr_018_4EA9:
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld [$730A], sp
    rrca
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
    ld l, l
    ld e, h
    ld b, b
    inc d
    db $D3
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $5043
    dec d
    inc d
    adc l
    ld e, h
    jr nc, jr_018_4ED1

jr_018_4ED1:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc
    ld b, $00
    ld d, d
    ld l, h
    inc c
    rlca
    nop
    and b
    ld l, h
    ld d, $08
    nop
    ld a, c
    ld [hl], b
    ld [$0009], sp
    ld b, $6E
    ld c, $0A
    nop
    call z, $FF6B
    ld b, l
    dec d
    dec d
    xor b
    ld [hl], h
    ld b, l
    dec d
    sbc b
    ld [hl], h
    db $10
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
    ld bc, $1515
    cp b
    ld [hl], h
    db $10
    dec d
    adc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    ld d, b
    nop
    add hl, de
    ld b, l
    dec d
    db $10
    ld b, b
    ld a, d
    jr nc, @+$12

    jr nc, jr_018_4F9D

    db $10
    db $10
    ld b, b
    ld a, d
    ld a, [hl+]
    db $10
    or h
    ld a, d
    ld [$0C00], sp
    inc b
    ld b, e
    ld b, $14
    db $10
    cp [hl]
    ld a, d
    ld e, [hl]
    jr jr_018_4F83

    ld c, a
    ld h, l
    ld bc, $1015
    ld d, b
    ld a, d
    ld a, [hl+]
    db $10
    jr nz, @+$7C

    db $10
    db $10
    ld d, b
    ld a, d
    ld d, b
    nop
    add hl, de
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld h, l
    jr nz, jr_018_4FBB

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_4FC1

    ld [hl], h
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_4FDC

    ld h, l
    jr nz, jr_018_4FDF

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_4FCF

    ld h, l
    rst $38
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_018_4FE9

    ld l, a
    jr nz, @+$65

    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    cp $73
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_018_4FF5

jr_018_4F83:
    ld h, l
    ld h, c
    ld l, h
    rst $38
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld b, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l

jr_018_4F9D:
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ccf
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_5019

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    rst $38
    ld l, l
    ld h, l

jr_018_4FBB:
    ld hl, $FDFE
    and d
    xor b
    ld c, a

jr_018_4FC1:
    and [hl]
    ld b, a
    ld l, a
    jr nz, jr_018_5035

    ld l, [hl]
    ld l, $2E
    ld l, $20
    ld a, c
    ld l, a
    ld [hl], l
    rst $38

jr_018_4FCF:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_5048

    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2E

jr_018_4FDC:
    ld l, $FE
    db $FD

jr_018_4FDF:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$63

    ld [hl], d

jr_018_4FE9:
    ld h, l
    jr nz, jr_018_505B

    ld l, [hl]
    jr nz, jr_018_5063

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld h, c
    ld a, c

jr_018_4FF5:
    jr nz, jr_018_506B

    ld l, a
    cp $64
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld b, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_5081

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_018_5019:
    ld l, $FF
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_5094

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_509C

    ld h, l
    cp $68
    ld h, c
    halt
    ld h, l
    jr nz, jr_018_50A1

    ld l, b
    ld h, l
    jr nz, @+$55

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]

jr_018_5035:
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_018_5082

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_018_50B0

    ld [hl], l
    ld [hl], d
    cp $70
    ld l, h
    ld h, c
    ld l, [hl]

jr_018_5048:
    jr nz, jr_018_50B3

    ld [hl], e
    jr nz, jr_018_50AE

    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l

jr_018_505B:
    ld l, $20
    ld d, a
    ld h, l
    cp $6A
    ld [hl], l
    ld [hl], e

jr_018_5063:
    ld [hl], h
    jr nz, @+$70

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_018_50DF

jr_018_506B:
    ld l, a
    jr nz, jr_018_50D5

    ld l, a
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_018_50E8

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$75

    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    cp $43
    ld l, a

jr_018_5081:
    ld [hl], d

jr_018_5082:
    ld h, l
    jr nz, jr_018_50EA

    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l

jr_018_5094:
    ld a, c
    jr nz, jr_018_5107

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, $20

jr_018_509C:
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_50EA

jr_018_50A1:
    rst $38
    ld [hl], e
    ld h, c
    ld a, c
    jr nz, jr_018_511E

    ld h, l
    jr nz, jr_018_5111

    ld l, a
    jr nz, @+$76

    ld l, a

jr_018_50AE:
    cp $74

jr_018_50B0:
    ld l, b
    ld h, c
    ld [hl], h

jr_018_50B3:
    jr nz, @+$75

    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    rst $38
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_5126

    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E

jr_018_50D5:
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $6945

jr_018_50DF:
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    db $10
    dec bc

jr_018_50E8:
    db $EC
    ret nc

jr_018_50EA:
    nop
    jr jr_018_514E

    ld d, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    db $10
    ld b, $88
    ret nc

    nop
    jr @-$15

    ld d, c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld c, $06
    add [hl]

jr_018_5107:
    ret nc

    jr z, jr_018_5122

    ld e, l
    ld d, d
    add hl, de
    add sp, $46
    dec b
    inc b

jr_018_5111:
    ld hl, sp+$4A
    ld [$9407], sp
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46

jr_018_511E:
    dec b
    dec b
    ld hl, sp+$4A

jr_018_5122:
    ld a, [bc]
    rlca
    sub [hl]
    ret nc

jr_018_5126:
    ld h, h
    ld de, $7180
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_018_513D

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_018_5144

    ldh a, [rLYC]
    add b
    add d
    nop

jr_018_513D:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_018_5144:
    nop
    ld l, [hl]
    inc c
    add hl, de
    nop
    ld b, b
    ld b, b
    add [hl]
    nop
    dec bc

jr_018_514E:
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld [$730A], sp
    rrca
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
    ld l, l
    ld e, h
    ld b, b
    inc d
    db $D3
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1414
    cp a
    ld e, l
    ld h, l
    add hl, bc
    inc d
    inc d
    db $D3
    ld e, l
    ld h, l
    inc bc
    ld b, e
    db $10
    dec d
    inc d
    ld a, l
    ld e, h
    jr nc, jr_018_5197

    inc sp
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h
    jr nc, jr_018_519F

    inc sp
    ld e, h
    jr nc, jr_018_51A3

    sbc l
    ld e, h
    ld d, b
    inc d
    ld e, l
    ld e, h
    jr nc, jr_018_51AB

jr_018_5197:
    ld a, l
    ld e, h
    ld d, b
    inc d
    inc sp
    ld e, h
    jr nc, jr_018_51B3

jr_018_519F:
    sbc l
    ld e, h
    inc a
    nop

jr_018_51A3:
    dec bc
    dec b
    dec d
    inc d
    sbc l
    ld e, h
    inc d
    inc d

jr_018_51AB:
    ld e, l
    ld e, h
    jr nc, jr_018_51C3

    db $D3
    ld e, l
    nop
    nop

jr_018_51B3:
    ld e, c
    ld bc, $0665
    inc d
    inc d
    cp a
    ld e, l
    ld h, l
    ld [$1415], sp
    adc l
    ld e, h

jr_018_51C1:
    jr nc, jr_018_51C3

jr_018_51C3:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc
    ld b, $00
    ld d, d
    ld l, h
    inc c
    rlca
    nop
    and b
    ld l, h
    ld d, $08
    nop
    ld a, c
    ld [hl], b
    ld [$0009], sp
    ld b, $6E
    ld c, $0A
    nop
    call z, $FF6B
    ld b, l
    dec d
    dec d
    xor b
    ld [hl], h
    ld b, b
    dec d
    sbc b
    ld [hl], h
    db $10
    dec d
    xor b
    ld [hl], h
    db $10
    dec d
    inc e
    ld [hl], l
    nop
    nop
    ld e, [hl]
    jr jr_018_51C1

    ld d, d
    ld h, l
    ld [bc], a
    inc d
    dec d
    ld [de], a
    ld [hl], l
    ld h, l
    inc bc
    dec d
    dec d
    cp b
    ld [hl], h
    db $10
    dec d
    sbc b
    ld [hl], h
    jr nc, jr_018_5226

    xor b
    ld [hl], h
    ld h, b
    dec d
    adc b
    ld [hl], h
    jr nc, jr_018_522E

    cp b
    ld [hl], h
    ld d, b
    dec d
    sbc b
    ld [hl], h
    jr nc, @+$17

    xor b
    ld [hl], h
    ld d, b
    dec d
    adc b

jr_018_5226:
    ld [hl], h
    jr nc, @+$17

    cp b
    ld [hl], h
    inc [hl]
    dec d
    ld [de], a

jr_018_522E:
    ld [hl], l
    nop
    nop
    ld h, l
    inc b
    dec d
    dec d
    ld h, $75
    stop
    inc c
    dec b
    ld b, e
    ld [$1515], sp
    ld [de], a
    ld [hl], l
    ld [$5900], sp
    ld [bc], a
    ld h, l
    ld a, [bc]
    inc d
    dec d
    inc e
    ld [hl], l
    ld h, l
    dec b
    dec d
    dec d
    cp b
    ld [hl], h
    db $10
    dec d
    adc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    ld d, b
    nop
    add hl, de
    ld b, l
    dec d
    db $10
    ld b, b
    ld a, d
    jr nc, @+$12

    jr nc, @+$7C

    db $10
    db $10
    ld b, b
    ld a, d
    ld a, [hl+]
    db $10
    or h
    ld a, d
    ld [$0C00], sp
    inc b
    ld b, e
    ld b, $14
    db $10
    cp [hl]
    ld a, d
    ld h, l
    ld [bc], a
    inc d
    db $10
    and $7A
    ld h, l
    inc bc
    ld b, e
    inc c
    dec d
    db $10
    ld d, b
    ld a, d
    jr nc, jr_018_5297

    jr nc, jr_018_5303

    jr nc, jr_018_529B

    ld b, b
    ld a, d
    ld d, b
    db $10
    jr nz, jr_018_530B

    jr nc, jr_018_52A3

    ld d, b
    ld a, d
    ld d, b
    db $10

jr_018_5297:
    jr nc, jr_018_5313

    jr nc, jr_018_52AB

jr_018_529B:
    ld b, b
    ld a, d
    ld d, b
    db $10
    jr nz, jr_018_531B

    jr nc, jr_018_52B3

jr_018_52A3:
    ld d, b
    ld a, d
    db $10
    db $10
    and $7A
    nop
    nop

jr_018_52AB:
    ld h, l
    rlca
    inc d
    db $10
    cp [hl]
    ld a, d
    ld h, l
    dec b

jr_018_52B3:
    dec d
    db $10
    ld d, b
    ld a, d
    ld a, [hl+]
    db $10
    jr nz, @+$7C

    db $10
    db $10
    ld d, b
    ld a, d
    ld d, b
    nop
    add hl, de
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld h, l
    jr nz, jr_018_5333

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_5339

    ld [hl], h
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_5354

    ld h, l
    jr nz, jr_018_5357

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_5347

    ld h, l
    rst $38
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_018_5361

    ld l, a
    jr nz, @+$65

    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    cp $73
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_018_536D

    ld h, l
    ld h, c
    ld l, h
    rst $38
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h

jr_018_5303:
    ld [hl], d
    ld [hl], l
    ld h, e
    ld l, $2E
    ld l, $FE
    db $FD

jr_018_530B:
    and d
    xor b
    ld c, a
    and [hl]
    ld b, h
    ld h, l
    ld [hl], e
    ld [hl], h

jr_018_5313:
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ccf

jr_018_531B:
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_5391

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    rst $38
    ld l, l
    ld h, l

jr_018_5333:
    ld hl, $FDFE
    and d
    xor b
    ld c, a

jr_018_5339:
    and [hl]
    ld b, a
    ld l, a
    jr nz, jr_018_53AD

    ld l, [hl]
    ld l, $2E
    ld l, $20
    ld a, c
    ld l, a
    ld [hl], l
    rst $38

jr_018_5347:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_53C0

    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2E

jr_018_5354:
    ld l, $FE
    db $FD

jr_018_5357:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$63

    ld [hl], d

jr_018_5361:
    ld h, l
    jr nz, jr_018_53D3

    ld l, [hl]
    jr nz, jr_018_53DB

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld h, c
    ld a, c

jr_018_536D:
    jr nz, jr_018_53E3

    ld l, a
    cp $64
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld b, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_53F9

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_018_5391:
    ld l, $FF
    ld d, a
    ld h, l
    jr nz, jr_018_540A

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_5401

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $68
    ld h, c
    halt
    ld h, l
    jr nz, jr_018_5409

    ld l, h
    ld l, h
    jr nz, jr_018_541B

    ld h, [hl]

jr_018_53AD:
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld d, e
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_018_5428

    ld h, [hl]
    jr nz, jr_018_5404

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_018_53C0:
    ld l, $FE
    ld c, c
    ld h, [hl]
    jr nz, jr_018_5435

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_018_5442

    ld h, l
    jr nz, jr_018_5439

    ld l, [hl]
    ld h, l
    ld [hl], a
    rst $38
    ld [hl], a

jr_018_53D3:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, a

jr_018_53DB:
    ld [hl], e
    ld h, l

jr_018_53DD:
    jr nz, jr_018_53DD

    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], h

jr_018_53E3:
    jr nz, @+$72

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $98A2

jr_018_53F9:
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    ld l, $2E

jr_018_5401:
    ld l, $20
    ld l, c

jr_018_5404:
    ld [hl], h
    rst $38
    ld [hl], e
    ld h, l
    ld h, l

jr_018_5409:
    ld l, l

jr_018_540A:
    ld [hl], e
    jr nz, @+$6E

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_018_545B

    daa
    halt
    ld h, l
    cp $73
    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b

jr_018_541B:
    ld h, l
    ld h, h
    jr nz, jr_018_5493

    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    ld e, e
    ld [bc], a
    and d

jr_018_5428:
    xor b
    ld c, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5720
    ld l, b
    ld l, a
    daa
    ld [hl], e

jr_018_5435:
    rst $38
    ld [hl], h
    ld l, b
    ld h, c

jr_018_5439:
    ld [hl], h
    ccf
    cp $FD
    ld e, e
    add hl, bc
    and d
    ld c, b
    ld e, a

jr_018_5442:
    and [hl]
    ld b, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_018_54B2

    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld h, e
    ld bc, $98A2
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]

jr_018_545B:
    daa
    ld [hl], h
    jr nz, jr_018_54D3

    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_54DE

    ld l, a
    ld [hl], h
    cp $79
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld h, e
    ld [bc], a
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_018_54F9

    ld l, a
    ld [hl], a
    ld hl, $4DFF
    ld [hl], l
    ld l, b
    ld h, c

jr_018_5493:
    ld l, b
    ld h, c
    ld l, b
    ld h, c
    ld l, b
    ld h, c
    ld l, b
    ld h, c
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    ld e, e
    rlca
    and [hl]
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    inc l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_5527

    ld h, c
    ld [hl], e

jr_018_54B2:
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_5524

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_018_5534

    ld l, b
    ld h, l
    cp $70
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld d, e
    ld [hl], h

jr_018_54D3:
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$4A

    ld a, c
    ld [hl], d
    ld h, l

jr_018_54DE:
    ld l, [hl]
    ld hl, $49FE
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_018_5560

    ld l, a
    rst $38
    ld h, a
    ld l, a
    jr nz, jr_018_5566

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_553C

jr_018_54F9:
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    ld e, e
    ld a, [bc]
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_018_556C

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$4B

    jr nz, jr_018_5597

    ld h, c
    ld [hl], e
    cp $67

jr_018_5524:
    ld l, a
    ld l, c
    ld l, [hl]

jr_018_5527:
    ld h, a
    jr nz, jr_018_559E

    ld l, a
    jr nz, jr_018_55A0

    ld h, c
    ld a, c
    ld hl, $48FF
    ld [hl], l
    ld [hl], d

jr_018_5534:
    ld [hl], d
    ld a, c
    jr nz, jr_018_55AD

    ld [hl], b
    jr nz, @+$5C

    ld h, l

jr_018_553C:
    ld [hl], h
    inc l
    cp $77
    ld h, l
    jr nz, jr_018_55AB

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_55BC

    ld l, a
    jr nz, jr_018_55B2

    ld h, l
    ld [hl], h
    rst $38
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_55C2

    ld h, [hl]
    jr nz, jr_018_55BE

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld e, e
    dec b
    and d
    xor b

jr_018_5560:
    ld c, a
    and [hl]

jr_018_5562:
    ld l, $2E
    ld l, $2E

jr_018_5566:
    ld l, $2E
    ld l, $2E
    ld l, $FE

jr_018_556C:
    db $FD
    and c
    ld e, e
    ld b, $A2
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_55C2

    daa
    ld l, l
    jr nz, jr_018_55E6

    ld l, [hl]
    rst $38
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld [$4645], sp
    ld de, $3801
    and c
    dec b
    nop
    jr jr_018_5562

    ld e, c

jr_018_5597:
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h

jr_018_559E:
    ld h, c
    ld h, [hl]

jr_018_55A0:
    ld a, c
    ld hl, $41FF
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_55AB:
    cp $69

jr_018_55AD:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l

jr_018_55B2:
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b

jr_018_55BC:
    ld h, l
    ld l, [hl]

jr_018_55BE:
    ccf
    cp $FD
    and d

jr_018_55C2:
    sbc b
    ld b, c
    and [hl]
    ld b, [hl]
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    jr nz, jr_018_5645

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$63

    ld [hl], e
    ld l, e
    ld l, $20
    ld c, c
    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$6F

    ld h, c
    ld a, d
    ld h, l

jr_018_55E6:
    jr nz, jr_018_5631

    jr nz, jr_018_565D

    ld h, c
    ld [hl], a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_018_5668

    ld [hl], a
    ld l, a
    jr nz, @+$79

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    cp $67
    ld [hl], l
    ld a, c
    ld [hl], e
    jr nz, jr_018_5671

    ld h, c
    ld l, l
    ld h, l
    ld h, h
    rst $38
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_018_566C

    ld h, l
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    jr nz, jr_018_568F

    ld l, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5699

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_018_5631:
    jr nz, jr_018_56A7

    ld l, b
    ld h, l
    ld l, l
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_018_56B7

    ld h, l
    ld l, h

jr_018_5645:
    ld l, h
    jr nz, jr_018_56C1

    ld l, a
    ld [hl], l
    inc l
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_56B7

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $2E
    ld l, $FE
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h

jr_018_565D:
    jr nz, jr_018_56D6

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_56D8

    ld l, b
    ld h, l
    ld a, c
    rst $38

jr_018_5668:
    ld h, h
    ld l, a
    ld l, c
    ld l, [hl]

jr_018_566C:
    ld h, a
    ccf
    cp $FD
    and d

jr_018_5671:
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_56F1

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], b
    ld l, c
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_56FC

    ld [hl], b
    jr nz, @+$63

    cp $70
    ld l, c
    ld h, l
    ld h, e

jr_018_568F:
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h

jr_018_5699:
    ld h, c
    ld l, h
    inc l
    jr nz, jr_018_56E7

    cp $74
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, $FE
    db $FD

jr_018_56A7:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_018_5712

    ld l, a
    ld a, c
    ld l, $20
    ld c, a
    ld c, e
    inc l

jr_018_56B7:
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_018_5734

    ld l, b

jr_018_56C1:
    ld h, l
    cp $73
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $20
    ld c, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5731

    ld h, a
    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_018_56D6:
    jr nz, jr_018_5723

jr_018_56D8:
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], e
    cp $6C
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_5748

jr_018_56E7:
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_018_574D

    rst $38
    ld h, d
    ld [hl], l
    ld l, [hl]
    ld h, e

jr_018_56F1:
    ld l, b
    jr nz, jr_018_5763

    ld h, [hl]
    jr nz, jr_018_575A

    ld l, a
    ld [hl], d
    ld h, l
    cp $68

jr_018_56FC:
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_018_5766

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_018_5770

    ld l, [hl]
    rst $38
    ld h, c
    jr nz, jr_018_577F

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h

jr_018_5712:
    jr nz, jr_018_5784

    ld h, c
    ld [hl], d
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, jr_018_5790

    ld l, b
    ld h, l
    jr nz, jr_018_5763

    ld l, a
    ld [hl], d
    ld h, l

jr_018_5723:
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_579E

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_57A4

    ld [hl], e
    ld h, l

jr_018_5731:
    ld h, h
    cp $74

jr_018_5734:
    ld l, b
    ld h, l
    jr nz, jr_018_578B

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$71

    ld h, [hl]
    rst $38
    ld c, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_018_57BB

    ld l, a

jr_018_5748:
    jr nz, jr_018_57AE

    ld l, a
    cp $69

jr_018_574D:
    ld [hl], h
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_57BE

    ld [hl], h
    rst $38
    ld l, h
    ld l, a
    ld l, a

jr_018_575A:
    ld l, e
    ld [hl], e
    jr nz, @+$6E

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

jr_018_5763:
    ld l, b
    ld h, l
    ld a, c

jr_018_5766:
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_018_57D3

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_5770:
    jr nz, jr_018_57E6

    ld l, a
    rst $38
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, jr_018_57ED

    ld l, a
    jr nz, jr_018_57E2

    ld [hl], d
    ld h, l
    ld h, l

jr_018_577F:
    cp $74
    ld l, b
    ld l, a
    ld [hl], e

jr_018_5784:
    ld h, l
    jr nz, jr_018_57EF

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_018_578B:
    ld l, $FE
    db $FD
    and d
    sbc b

jr_018_5790:
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_5808

    ld l, a
    ld [hl], h
    rst $38
    ld h, a

jr_018_579E:
    ld l, a
    ld l, a
    ld h, h
    ld l, $FE
    db $FD

jr_018_57A4:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    ld l, $FE

jr_018_57AE:
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_582C

    ld l, b
    ld l, a

jr_018_57BB:
    ld [hl], l
    ld l, h
    ld h, h

jr_018_57BE:
    jr nz, jr_018_5822

    ld h, l
    rst $38
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, c

jr_018_57D3:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_583E

    ld l, a
    ld [hl], d
    rst $38
    halt
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_018_57E2:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]

jr_018_57E6:
    ld h, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c

jr_018_57ED:
    and [hl]
    ld d, a

jr_018_57EF:
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_5862

    ld [hl], d
    ld h, l
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e

jr_018_5808:
    ld h, l
    ld [hl], e
    jr nz, jr_018_587B

    ld h, [hl]
    jr nz, jr_018_5883

    ld l, b
    ld h, l
    cp $53
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_018_5888

    ld h, [hl]
    jr nz, @+$4A

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    rst $38
    ld l, b

jr_018_5822:
    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    jr nz, jr_018_5892

    ld l, [hl]
    jr nz, @+$76

jr_018_582C:
    ld l, b
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_018_58A6

    ld l, [hl]
    ld h, l
    jr nz, jr_018_58A4

    ld l, [hl]
    rst $38
    ld h, l

jr_018_583E:
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_018_58B2

    ld h, [hl]
    jr nz, jr_018_58BA

    ld l, b
    ld h, l
    cp $72
    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_018_589B

    jr nz, @+$63

    ld l, l
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_58D7

    ld l, a
    ld [hl], l
    jr nz, jr_018_58D6

jr_018_5862:
    ld l, a
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, @+$4B

    jr nz, jr_018_58D9

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_58EA

    ld l, a
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]

jr_018_587B:
    ld h, h
    jr nz, jr_018_58F2

    ld l, b
    ld h, l
    ld l, l
    ld l, $FE

jr_018_5883:
    db $FD
    and d
    cp b
    ld e, l
    and [hl]

jr_018_5888:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_58EE

    ld [hl], d
    ld h, l
    jr nz, jr_018_58F5

    ld l, a

jr_018_5892:
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_5908

jr_018_589B:
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], a

jr_018_58A4:
    ld h, c
    ld a, c

jr_018_58A6:
    inc l
    jr nz, @+$75

    ld l, a
    jr nz, jr_018_5925

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, c
    ld h, a

jr_018_58B2:
    ld l, b
    ld [hl], h
    jr nz, jr_018_5917

    ld [hl], e
    jr nz, @+$79

    ld h, l

jr_018_58BA:
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_018_5917

    ld c, e
    inc l
    jr nz, jr_018_5915

    daa
    ld l, h
    ld l, h
    rst $38

Call_018_58D0:
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $FE
    db $FD

jr_018_58D6:
    and d

jr_018_58D7:
    cp b
    ld e, l

jr_018_58D9:
    and [hl]
    ld c, c
    ld h, [hl]
    jr nz, jr_018_5957

    ld l, a
    ld [hl], l
    jr nz, jr_018_5948

    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h

jr_018_58EA:
    jr nz, jr_018_5937

    ld l, a
    ld [hl], d

jr_018_58EE:
    ld h, a
    jr nz, jr_018_5952

    ld l, [hl]

jr_018_58F2:
    ld h, h
    cp $5A

jr_018_58F5:
    ld h, l
    ld [hl], h
    jr nz, jr_018_5961

    ld h, c
    halt
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_018_5908:
    ld h, l
    jr nz, jr_018_596D

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    inc l

jr_018_5915:
    jr nz, jr_018_597E

jr_018_5917:
    ld l, a
    jr nz, jr_018_5989

    ld l, [hl]
    jr nz, jr_018_5991

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_5992

    ld h, l

jr_018_5925:
    ld a, b
    ld [hl], h
    jr nz, jr_018_5998

    ld l, [hl]
    ld h, l
    ld l, $FE
    ld c, c
    ld h, [hl]
    jr nz, jr_018_59AA

    ld l, a
    ld [hl], l
    jr nz, jr_018_5998

    ld h, c
    ld l, [hl]

jr_018_5937:
    jr nz, jr_018_59A0

    ld h, l
    ld [hl], h
    rst $38
    ld h, l
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_018_59B1

    ld l, [hl]
    ld h, l
    jr nz, @+$72

    ld l, c
    ld h, l

jr_018_5948:
    ld h, e
    ld h, l
    cp $69
    ld [hl], h
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h

jr_018_5952:
    jr nz, jr_018_59C1

    ld h, c
    ld l, e
    ld h, l

jr_018_5957:
    jr nz, jr_018_59BA

    rst $38
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l

jr_018_5961:
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, [hl]

jr_018_596D:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_018_59D4

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld hl, $49FF
    jr nz, jr_018_59F1

jr_018_597E:
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_018_59CC

    daa
    ld h, h
    jr nz, jr_018_59FB

    ld [hl], d
    ld a, c

jr_018_5989:
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h

jr_018_5991:
    ld l, b

jr_018_5992:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e

jr_018_5998:
    jr nz, jr_018_5A08

    ld l, a
    rst $38
    ld [hl], h
    ld [hl], d
    ld a, c
    inc l

jr_018_59A0:
    jr nz, jr_018_5A11

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, @+$66

    ld l, a
    ld l, $FE

jr_018_59AA:
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E

jr_018_59B1:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD

jr_018_59BA:
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    dec bc

jr_018_59C1:
    or l
    ld l, d
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l

jr_018_59CC:
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_018_59D4:
    ld h, [hl]
    ld a, c
    ld hl, $41FF
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    cp $69
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b

jr_018_59F1:
    ld h, l
    ld l, [hl]
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, [hl]

jr_018_59FB:
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    jr nz, jr_018_5A7A

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l

jr_018_5A08:
    ld l, h
    ld h, h
    jr nz, jr_018_5A6D

    ld [hl], e
    ld l, e
    ld l, $20
    ld c, c

jr_018_5A11:
    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_018_5A85

    ld h, c
    ld a, d
    ld h, l
    jr nz, jr_018_5A66

    jr nz, jr_018_5A92

    ld h, c
    ld [hl], a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_018_5A9D

    ld [hl], a
    ld l, a
    jr nz, jr_018_5AA4

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    cp $67
    ld [hl], l
    ld a, c
    ld [hl], e
    jr nz, jr_018_5AA6

    ld h, c
    ld l, l
    ld h, l
    ld h, h
    rst $38
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_018_5AA4

    ld l, [hl]
    ld h, h
    jr nz, jr_018_5AA1

    ld h, l
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    jr nz, @+$70

    ld l, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5ACE

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_018_5A66:
    jr nz, jr_018_5ADC

    ld l, b
    ld h, l
    ld l, l
    inc l
    rst $38

jr_018_5A6D:
    ld [hl], h
    ld l, a
    ld l, a
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l

jr_018_5A7A:
    ld a, c
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, jr_018_5AE4

    ld h, l
    ld h, l
    ld l, [hl]

jr_018_5A85:
    rst $38
    ld h, c
    jr nz, jr_018_5AFD

    ld l, b
    ld l, a
    ld [hl], d
    ld l, [hl]
    jr nz, jr_018_5AF8

    ld l, [hl]
    jr nz, jr_018_5B06

jr_018_5A92:
    ld l, b
    ld h, l
    cp $4B
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], e
    daa

jr_018_5A9D:
    jr nz, jr_018_5B12

    ld l, c
    ld h, h

jr_018_5AA1:
    ld h, l
    ld [hl], e
    rst $38

jr_018_5AA4:
    ld h, [hl]
    ld l, a

jr_018_5AA6:
    ld [hl], d
    jr nz, jr_018_5B1A

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_018_5B10

    cp $6C
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5B2A

    ld l, c
    ld l, l
    ld h, l
    ld l, $FF
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_018_5B34

    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$69

    ld h, l
    ld [hl], h
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_018_5B30

    ld [hl], d

jr_018_5ACE:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l

jr_018_5ADC:
    ld h, c
    ld l, b
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c

jr_018_5AE4:
    jr nz, jr_018_5B4A

    ld l, c
    ld h, h
    ld l, $FF
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_5B5E

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_018_5B69

    ld l, a
    jr nz, jr_018_5B5A

jr_018_5AF8:
    ld h, l
    cp $73
    ld [hl], h
    ld l, a

jr_018_5AFD:
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    ld hl, $FDFE
    and d
    cp b

jr_018_5B06:
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_5B76

jr_018_5B10:
    ld l, a
    ld [hl], d

jr_018_5B12:
    rst $38
    halt
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_018_5B1A:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_018_5B2A:
    ccf
    ld hl, $FDFE
    and d
    cp b

jr_018_5B30:
    ld e, l
    and d
    cp b
    ld e, l

jr_018_5B34:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5B9B

    ld [hl], d
    ld h, l
    jr nz, jr_018_5BA2

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$6F

    ld h, c
    ld a, d

jr_018_5B4A:
    ld h, l
    ld [hl], e
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    jr nz, jr_018_5BC9

    ld l, a
    jr nz, jr_018_5BD2

    ld l, a

jr_018_5B5A:
    ld [hl], l
    rst $38
    ld l, l
    ld l, c

jr_018_5B5E:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_018_5BC4

    ld [hl], e
    jr nz, jr_018_5BDD

    ld h, l
    ld l, h
    ld l, h

jr_018_5B69:
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_018_5BC4

    ld c, e

jr_018_5B76:
    inc l
    jr nz, jr_018_5BC2

    daa
    ld l, h
    ld l, h
    rst $38
    ld [hl], h
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
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_5BF7

    ld [hl], e
    jr nz, @+$70

    ld l, a
    rst $38
    ld [hl], h
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_018_5C08

    ld l, [hl]
    ld l, h

jr_018_5B9B:
    ld a, c
    jr nz, @+$66

    ld l, a
    ld l, $FE
    db $FD

jr_018_5BA2:
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, l
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

jr_018_5BC2:
    ld b, l
    and d

jr_018_5BC4:
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld h, c

jr_018_5BC9:
    ld h, h
    jr nz, jr_018_5C3A

    ld h, l
    ld [hl], a
    ld [hl], e
    ld l, $FE
    db $FD

jr_018_5BD2:
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6A

    ld h, c

jr_018_5BDD:
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_018_5C51

    ld l, [hl]
    ld h, h
    jr nz, jr_018_5C4E

    ld h, l
    ld [hl], h
    rst $38

jr_018_5BF7:
    ld l, l
    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld h, h
    jr nz, jr_018_5C74

    ld l, a
    jr nz, @+$69

    ld h, l
    ld [hl], h
    cp $61
    ld l, h

jr_018_5C08:
    ld l, h
    jr nz, jr_018_5C7F

    ld l, b
    ld h, l
    jr nz, jr_018_5C7F

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_018_5C8D

    ld l, b
    ld h, l
    jr nz, @+$55

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_018_5C92

    ld h, [hl]
    cp $48
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld h, l
    ld [hl], b
    inc l
    jr nz, jr_018_5CAB

    ld l, b
    ld h, c
    ld [hl], h

jr_018_5C3A:
    daa
    ld [hl], e
    jr nz, jr_018_5CAC

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, a
    jr nz, jr_018_5CAC

    ld l, a
    ld l, a
    ld h, h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c

jr_018_5C4E:
    and [hl]
    ld d, a
    ld l, b

jr_018_5C51:
    ld h, c
    ld [hl], h
    jr nz, jr_018_5CB9

    ld l, a
    jr nz, jr_018_5CD1

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_018_5CD6

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_5CC8

    ld [hl], d
    ld h, l
    cp $64
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5CDF

    ld l, a
    ld [hl], a
    ccf

jr_018_5C74:
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_018_5CC8

jr_018_5C7F:
    daa
    ld l, l
    jr nz, jr_018_5CF6

    ld [hl], l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_5D04

jr_018_5C8D:
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_018_5D06

jr_018_5C92:
    ld l, a
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_018_5D0C

    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    rst $38
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$67

    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e

jr_018_5CAB:
    ld h, l

jr_018_5CAC:
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_5D21

    ld [hl], e

jr_018_5CB9:
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld l, a
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5D3A

    ld l, b
    ld h, l

jr_018_5CC8:
    cp $43
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_5D33

    ld h, c
    ld l, [hl]

jr_018_5CD1:
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l

jr_018_5CD6:
    ld [hl], e
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld b, h

jr_018_5CDF:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_5D5C

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    rst $38
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_5D60

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, @+$76

jr_018_5CF6:
    ld l, a
    cp $70
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_5D6D

    ld h, [hl]
    jr nz, jr_018_5D75

    ld l, b
    ld h, l
    rst $38

jr_018_5D04:
    ld b, e
    ld l, a

jr_018_5D06:
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_018_5D74

    ld [hl], h

jr_018_5D0C:
    daa
    ld [hl], e
    jr nz, jr_018_5D7E

    ld l, a
    ld [hl], h
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$6F

    ld h, c
    ld l, c
    ld l, [hl]
    rst $38
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c

jr_018_5D21:
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

jr_018_5D33:
    ld l, a
    ld l, a
    ld h, h
    ld l, $20
    ld c, c
    rst $38

jr_018_5D3A:
    ld h, a
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$4B

    jr nz, jr_018_5DAB

    ld h, c
    ld h, h
    cp $62
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_018_5DB6

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_018_5DC9

    ld [hl], b
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$68

    ld l, c

jr_018_5D5C:
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b

jr_018_5D60:
    jr nz, jr_018_5DD6

    ld l, b
    ld h, l
    cp $6C
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_5DBB

    ld h, c
    ld [hl], d

jr_018_5D6D:
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    rst $38
    ld l, l

jr_018_5D74:
    ld h, c

jr_018_5D75:
    ld a, d
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    cp b

jr_018_5D7E:
    ld e, l
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_018_5DEF

    ld h, h
    ld h, l
    ld h, c
    ld l, $20
    ld c, b

jr_018_5D8C:
    ld h, c
    halt
    ld h, l
    rst $38
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld hl, $FDFE
    and c

jr_018_5D97:
    ld e, l
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
    ld [hl+], a
    rlca
    sub a

jr_018_5DAB:
    or e
    ld sp, $01C7
    or e
    inc sp
    rst $00
    nop
    or l
    dec hl
    and b

jr_018_5DB6:
    ei
    or e
    ld sp, $01C7

jr_018_5DBB:
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld b, $4F
    inc de
    ld h, a
    inc a
    ld b, c
    ld l, h
    ld c, c
    ld b, c

jr_018_5DC9:
    dec b
    nop
    inc [hl]
    ld h, e
    ld [$D00A], sp
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de

jr_018_5DD6:
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    inc c
    ld [$D0AC], sp
    dec sp
    ld de, $75F4
    jr jr_018_5D8C

    ld e, [hl]
    dec b
    inc bc
    or d
    ld l, [hl]
    add hl, bc
    ld b, $81
    ret nc

jr_018_5DEF:
    nop
    add hl, de
    ld d, d
    ld c, c
    add hl, de
    ld h, [hl]
    ld c, c
    dec b
    inc b
    pop hl
    ld [hl], b
    ld c, $0E
    ld h, $D1
    jr nc, jr_018_5E11

    adc d
    ld [hl], a
    jr jr_018_5D97

    ld e, [hl]
    dec b
    dec b
    ld hl, sp+$4A
    inc c
    dec b
    ld [hl], b
    ret nc

    jr nc, jr_018_5E27

jr_018_5E0F:
    rlca
    ld e, a

jr_018_5E11:
    add hl, de
    rst $20

jr_018_5E13:
    ld b, [hl]
    dec b
    ld b, $F8

jr_018_5E17:
    ld c, d
    ld c, $08

jr_018_5E1A:
    xor [hl]

jr_018_5E1B:
    ret nc

    jr nc, @+$1A

    rlca
    ld e, a
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    rlca
    ld hl, sp+$4A

jr_018_5E27:
    inc c
    ld c, $24
    pop de
    jr nc, jr_018_5E45

    rlca
    ld e, a
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, @+$1B

    jr nc, jr_018_5E77

    nop
    add b
    nop
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add e
    nop
    ld l, [hl]
    jr nz, jr_018_5E5E

jr_018_5E45:
    ldh [rSCX], a
    or b
    add e
    nop
    dec bc
    nop
    ld b, [hl]
    ld de, $CB01
    ret


    dec b
    nop
    jr jr_018_5EB1

    ld e, [hl]
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b

jr_018_5E5E:
    dec bc
    ld b, $0B
    rlca
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    or l
    jr z, jr_018_5E0F

    cp $B5
    jr z, jr_018_5E13

    db $FD
    or l
    jr z, jr_018_5E17

jr_018_5E77:
    ei
    or l
    jr z, jr_018_5E1B

    rst $30
    or e
    ld [hl-], a
    and c
    nop
    ld b, [hl]
    ld a, [bc]
    nop
    dec hl
    and b
    ld [bc], a
    jr jr_018_5E1A

    ld e, [hl]
    ld b, e
    inc bc
    add h
    dec c
    ld [$D10C], sp
    jp nz, Jump_018_45F4

    inc d
    ld de, $778A
    inc de
    ld hl, sp+$4A
    dec c
    nop
    nop
    nop
    nop
    ld [$07FC], sp
    nop
    inc [hl]
    ld h, e
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$F418], sp
    ld e, [hl]
    ld c, e
    inc de
    pop hl

jr_018_5EB1:
    ld [hl], b
    or [hl]
    ld a, [hl+]
    and b
    ld [HeaderGlobalChecksum], sp
    ret c

    ret


    jr jr_018_5EBC

jr_018_5EBC:
    nop
    ret nc

    ld e, [hl]
    jr jr_018_5EC2

    nop

jr_018_5EC2:
    db $E4
    ld e, [hl]
    jr @+$04

    nop
    jp c, $185E

    inc bc
    nop
    xor $5E
    rst $38
    ld b, l
    dec d
    ld de, $76C3
    jr nc, jr_018_5ED6

jr_018_5ED6:
    ld c, b

jr_018_5ED7:
    jr @-$0A

    ld e, [hl]
    dec d
    ld de, $769C
    jr jr_018_5EE0

jr_018_5EE0:
    ld c, b

jr_018_5EE1:
    jr jr_018_5ED7

    ld e, [hl]
    dec d
    ld de, $764E
    stop
    ld c, b
    jr jr_018_5EE1

    ld e, [hl]
    dec d
    ld de, $7675
    jr jr_018_5EF4

jr_018_5EF4:
    inc d
    ld de, $75F4
    inc de
    ld hl, sp+$4A
    dec c
    nop
    nop
    nop
    nop
    ld [$07FC], sp
    nop
    inc [hl]
    ld h, e
    ld b, l
    ld a, [de]
    db $FC
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F46
    ld bc, $A132
    dec b
    inc bc
    jr jr_018_5F38

    ld e, a
    add hl, de
    ld e, [hl]
    jr jr_018_5F42

    ld e, a
    add hl, de
    ld b, [hl]
    nop
    dec hl
    and b
    ld [bc], a
    add hl, de
    rst $20
    ld b, [hl]
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5F96

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_018_5F8B

jr_018_5F38:
    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    ld hl, $FE21
    db $FD

jr_018_5F41:
    and c

jr_018_5F42:
    rlca
    nop
    ld hl, sp+$4A
    or [hl]
    dec hl

jr_018_5F48:
    and b
    ld [bc], a
    add d
    nop
    ret nc

    ld bc, $0C01
    pop de
    dec c
    ld [$5D4B], sp
    jr @+$67

    ld e, a
    ld b, e
    db $10

jr_018_5F5A:
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $10
    rlca
    nop
    inc [hl]
    ld h, e

jr_018_5F64:
    ld b, l
    ld e, $0F
    add a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    add a
    ld [bc], a
    cp $FE
    nop
    ld c, b
    jr jr_018_5FDB

    ld e, a
    ld c, b
    ld c, $AC
    ld b, a
    dec d
    ld de, $7808
    db $10
    ld de, $778A
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld [$45FC], sp

jr_018_5F8B:
    dec d
    ld de, $781E
    jr nc, @+$13

    adc d
    ld [hl], a
    nop
    nop
    dec c

jr_018_5F96:
    nop
    nop
    nop
    nop
    ld [$45FC], sp
    ld b, [hl]

jr_018_5F9E:
    nop
    jr z, jr_018_5F41

    ld bc, $AE18
    ld e, a
    or [hl]
    jr z, jr_018_5F48

    ld bc, $0409
    jr jr_018_5F38

    ld e, a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $C018
    ld e, a
    or [hl]
    jr z, jr_018_5F5A

    ld bc, $0409
    jr @+$7B

    ld e, a
    ld b, l
    xor d
    jr z, jr_018_5F64

    ld [bc], a
    add hl, de
    rst $20
    ld b, [hl]
    ld a, [$D092]
    ld e, $09
    ld e, [hl]
    jr @-$2C

    ld e, a
    ld b, l
    and [hl]
    ld c, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_018_601F

    ld h, c
    ld l, l
    ld h, l

jr_018_5FDB:
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_018_6030

jr_018_5FE2:
    ld l, a
    ld l, $FF
    jr nz, jr_018_6040

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    jr jr_018_5FE2

    ld e, a
    jr jr_018_5FF2

jr_018_5FF2:
    ld h, b
    and c
    add h
    rlca
    ld b, $92
    ret nc

    ld b, b
    ld sp, hl
    or l
    jr z, jr_018_5F9E

    db $FD
    ld b, l
    ld c, [hl]
    ld bc, $A017
    jr jr_018_6006

jr_018_6006:
    nop
    ld b, c
    ld h, b
    jr jr_018_600C

    nop

jr_018_600C:
    ld b, c
    ld h, b
    jr jr_018_6012

    nop
    ld l, a

jr_018_6012:
    ld h, b
    jr jr_018_6018

    nop
    and c
    ld h, b

jr_018_6018:
    jr jr_018_601E

    nop
    inc l
    ld h, b
    rst $38

jr_018_601E:
    and [hl]

jr_018_601F:
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_018_6070

    ld c, a
    ld d, e
    ld b, l
    ld hl, $FDFE
    and c
    ld b, l
    and [hl]
    ld e, c
    ld c, a
    ld d, l

jr_018_6030:
    jr nz, jr_018_6084

    ld b, l
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    jr nz, jr_018_6085

    ld c, a
    ld d, e
    ld b, l
    ld hl, $FDFE
    and c

jr_018_6040:
    ld b, l
    and b
    and [hl]
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_60B4

    ld h, c
    ld l, l
    ld h, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_018_60A8

    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_018_608B

    ld l, $FE
    db $FD
    or e
    ld c, d
    rst $00
    nop
    or e
    rla
    and b
    ld [bc], a
    sub [hl]
    ld bc, $00B0
    nop
    and c
    ld c, b
    rrca
    inc [hl]
    ld d, c
    and b

jr_018_6070:
    and [hl]
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_60E2

    ld h, c
    ld l, l
    ld h, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_018_60D6

    ld l, h

jr_018_6084:
    ld l, a

jr_018_6085:
    ld [hl], h
    jr nz, jr_018_60BA

    ld l, $FE
    db $FD

jr_018_608B:
    or e
    rla
    and b
    inc bc
    or e
    ld c, d
    rst $00
    nop
    sub [hl]
    ld bc, $00B0
    nop
    or e
    ld c, d
    rst $00
    ld bc, $48A1
    rrca
    inc [hl]
    ld d, c
    and b
    and [hl]
    ld d, a
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld l, c

jr_018_60A8:
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    rst $38
    ld b, d
    ld l, a
    ld [hl], h
    ld l, b
    jr nz, jr_018_6119

    ld h, c
    ld l, l

jr_018_60B4:
    ld h, l
    jr nz, jr_018_612A

    ld l, h
    ld l, a
    ld [hl], h

jr_018_60BA:
    ld [hl], e
    cp $61
    ld [hl], d
    ld h, l
    jr nz, jr_018_612A

    ld l, [hl]
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld hl, $53FE
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6133

    jr nz, jr_018_6142

    ld h, l
    ld [hl], a

jr_018_60D6:
    rst $38
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_6154

    ld l, c
    ld l, h
    ld l, h
    cp $6F

jr_018_60E2:
    halt
    ld h, l
    ld [hl], d
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_018_6160

    ld l, b
    ld h, l
    rst $38
    ld [hl], b
    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_018_6160

    ld h, c
    ld l, l
    ld h, l
    cp $69
    ld l, [hl]
    jr nz, jr_018_6175

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_6179

    ld l, h
    ld l, a
    ld [hl], h
    ld hl, $FDFE
    and b
    and [hl]
    ld b, h
    ld l, a
    jr nz, jr_018_618B

    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld [hl], h
    ld l, c
    ld l, h

jr_018_6119:
    ld l, h
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_018_6195

    ld l, a

jr_018_6122:
    jr nz, jr_018_6197

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    cp $61

jr_018_612A:
    jr nz, jr_018_619A

    ld h, l
    ld [hl], a
    jr nz, jr_018_6197

jr_018_6130:
    ld h, c
    ld l, l
    ld h, l

jr_018_6133:
    ccf
    cp $FD
    and b
    and [hl]

jr_018_6138:
    jr nz, jr_018_6188

    ld l, a
    rst $38
    jr nz, jr_018_6197

    ld h, l
    ld [hl], e
    db $FD
    and e

jr_018_6142:
    ld [bc], a
    jr jr_018_6138

    ld e, a

jr_018_6146:
    jr @+$4B

    ld h, c
    and b
    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_018_61C5

    ld l, h
    ld l, a

jr_018_6154:
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_61D7

    ld l, a
    ld [hl], l

jr_018_6160:
    cp $73
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_61DA

    ld h, l
    ld [hl], a
    rst $38
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_61DE

jr_018_6175:
    ld l, [hl]
    ccf
    cp $FD

jr_018_6179:
    and b
    and [hl]
    jr nz, jr_018_61D0

    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_018_61B3

    rst $38
    jr nz, jr_018_61D8

    ld l, h
    ld l, a
    ld [hl], h

jr_018_6188:
    jr nz, @+$34

    db $FD

jr_018_618B:
    and e
    ld [bc], a
    jr jr_018_6122

    ld h, c
    jr jr_018_6130

    ld h, c
    or b
    nop

jr_018_6195:
    nop
    or e

jr_018_6197:
    ld c, d
    rst $00
    nop

jr_018_619A:
    ld c, b
    jr jr_018_6146

    ld h, c
    or b
    nop
    nop
    or e
    ld c, d
    rst $00
    ld bc, $1848
    xor c
    ld h, c
    and b
    ld c, b
    rrca
    inc [hl]
    ld d, c
    xor d
    jr z, @-$5E

    inc b

jr_018_61B2:
    add hl, de

jr_018_61B3:
    rst $20
    ld b, [hl]
    ld a, [$D0BA]
    ld e, $09
    ld e, [hl]
    jr @-$3F

    ld h, c
    ld b, l
    ld c, [hl]
    ld bc, $A017
    jr jr_018_61C5

jr_018_61C5:
    nop
    db $EB
    ld h, c
    jr jr_018_61CB

    nop

jr_018_61CB:
    db $EB
    ld h, c
    jr jr_018_61D1

    nop

jr_018_61D0:
    inc d

jr_018_61D1:
    ld h, d
    jr jr_018_61D7

    nop
    dec l
    ld h, d

jr_018_61D7:
    rst $38

jr_018_61D8:
    and [hl]
    ld c, [hl]

jr_018_61DA:
    ld l, a
    ld l, $FE
    db $FD

jr_018_61DE:
    and c
    add h
    add hl, bc
    ld b, $BA
    ret nc

    ld b, c
    ld sp, hl
    or l
    jr z, @-$5E

    db $FD
    ld b, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_018_6254

    ld [hl], d
    ld h, l
    jr nz, jr_018_6265

    ld l, a
    rst $38
    ld [hl], e
    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_018_6267

    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    add h
    add hl, bc
    ld b, $BA
    ret nc

    ld b, c
    ld sp, hl
    or l
    jr z, jr_018_61B2

    ei
    ld b, l

jr_018_6214:
    and [hl]
    ld c, h
    ld l, a
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6285

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_6254

    ld l, $FF
    db $FD
    and c
    or e
    ld c, d
    rst $00
    nop
    adc [hl]
    ld b, l
    and [hl]
    ld c, h
    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_018_62AB

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    rst $38
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_018_628B

    ld h, c
    ld l, l
    ld h, l
    ld sp, $2020
    ld b, e
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    rst $38
    jr nz, jr_018_629A

    ld h, c

jr_018_6254:
    ld l, l
    ld h, l
    ld [hl-], a
    db $FD
    and e
    inc bc
    jr jr_018_62BF

    ld h, d
    jr jr_018_62C9

    ld h, d
    jr jr_018_6269

    ld h, d
    or e
    ld c, d

jr_018_6265:
    rst $00
    nop

jr_018_6267:
    adc [hl]
    and c

jr_018_6269:
    ld b, l
    or e
    ld c, d
    rst $00
    ld bc, $A18E
    ld b, l
    xor d
    jr z, jr_018_6214

    ld [$E719], sp
    ld b, [hl]
    ld a, [$D0E2]

jr_018_627B:
    ld e, $09
    and [hl]
    ld d, a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_62FE

jr_018_6285:
    ld l, a

jr_018_6286:
    ld [hl], l
    jr nz, jr_018_62F5

    ld l, c
    ld l, e

jr_018_628B:
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_018_6307

    ld l, c
    ld h, l
    ld [hl], a
    jr nz, jr_018_630A

    ld l, b
    ld h, l
    cp $43

jr_018_629A:
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c

jr_018_629E:
    ld [hl], h
    ld [hl], e
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_018_62EA

    ld [hl], d
    ld h, l
    ld h, h
    ld l, c

jr_018_62AB:
    ld [hl], h
    ld [hl], e
    rst $38
    jr nz, jr_018_62F3

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    db $FD
    and e
    ld [bc], a
    jr jr_018_6285

    ld h, d
    jr jr_018_627B

    ld h, d
    and c

jr_018_62BF:
    add h
    dec bc
    ld b, $E2
    ret nc

    ld b, d
    ld sp, hl
    or l
    jr z, jr_018_6269

jr_018_62C9:
    rst $30
    ld b, l
    ld e, [hl]
    jr jr_018_629E

    ld h, d
    ld b, l
    ld [hl+], a
    jr nz, jr_018_6286

    ld b, a
    rst $00
    nop
    or e
    ld sp, $00C7
    sub a
    dec b
    ld [bc], a
    inc l
    ld h, a
    dec b
    dec b
    ld e, $D0
    inc c
    add hl, de
    rst $20
    ld b, [hl]
    add hl, de
    rst $20
    ld b, [hl]

jr_018_62EA:
    sbc h

jr_018_62EB:
    dec b
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc b
    add hl, bc
    add hl, bc

jr_018_62F3:
    add hl, bc
    add hl, bc

jr_018_62F5:
    add hl, bc
    add hl, bc
    add hl, bc
    or e
    ld sp, $00C7
    or e
    inc sp

jr_018_62FE:
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld d, c
    ld c, a

jr_018_6307:
    inc de

jr_018_6308:
    dec bc
    ld [bc], a

jr_018_630A:
    adc b
    inc b
    inc bc
    sbc b
    ld e, l
    jr jr_018_6355

    ld h, e
    sbc e
    jr jr_018_6367

    ld h, e
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e

jr_018_631B:
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, b
    jr jr_018_62EB

    ld e, l
    add a
    ld bc, $0100
    nop
    add a
    ld [bc], a
    nop
    nop
    nop
    ld c, b
    jr jr_018_6395

    ld h, e
    or e
    inc [hl]
    rst $00

jr_018_6355:
    nop
    ld b, [hl]
    ld bc, $C747
    jr jr_018_63BD

    ld h, e
    ld c, b
    jr jr_018_6308

    ld e, l
    or e
    ld sp, $01C7
    ld [hl+], a
    ld [bc], a

jr_018_6367:
    ld b, e
    ld h, b
    ld [hl+], a
    daa
    or e
    ld sp, $00C7
    ld b, l
    and c
    add h
    dec bc
    ld b, $E2
    ret nc

    ld b, d
    ld sp, hl
    or l
    jr z, jr_018_631B

    ei
    ld b, l
    and b
    and [hl]
    ld b, [hl]

jr_018_6380:
    ld l, a
    ld l, l
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E

jr_018_6395:
    ld l, $FF
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E

jr_018_63BD:
    ld l, $2E
    ld l, $FF
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    db $FD
    ld b, e
    inc h
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    db $FD
    xor l
    ld [bc], a
    and b
    dec bc
    ld bc, $A002
    dec b
    ld bc, $44A6
    ld c, a
    ld c, [hl]
    ld b, l
    ld hl, $FDFF
    ld b, e
    jr nz, jr_018_6380

    and c
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    dec b
    ld d, b
    inc de
    ld h, a
    add l
    ld b, h
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    rla
    ld b, h
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc b
    pop hl
    ld [hl], b
    inc bc
    ld d, $37
    pop de
    nop
    ld de, $778A
    jr jr_018_6441

    ld h, [hl]
    dec b
    dec b
    pop hl
    ld [hl], b
    ld [$E810], sp
    ret nc

    nop
    ld de, $778A
    jr jr_018_6450

    ld h, [hl]
    dec b
    ld b, $E1
    ld [hl], b
    ld b, $0D
    cp h
    ret nc

jr_018_6441:
    nop
    ld de, $778A
    jr jr_018_645F

    ld h, [hl]
    dec b
    rlca
    pop hl
    ld [hl], b
    ld bc, $7F09
    ret nc

jr_018_6450:
    nop
    ld de, $778A
    jr jr_018_646E

    ld h, [hl]
    dec b
    ld [$70E1], sp
    ld bc, $6307

jr_018_645E:
    ret nc

jr_018_645F:
    nop
    ld de, $778A
    jr @+$1A

    ld h, [hl]

jr_018_6466:
    dec b
    add hl, bc
    pop hl
    ld [hl], b

jr_018_646A:
    add hl, bc
    ld bc, $D017

jr_018_646E:
    nop
    ld de, $778A

jr_018_6472:
    jr jr_018_648C

    ld h, [hl]
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    inc c
    dec c
    jp nz, $00D0

    ld de, $778A
    jr @+$1A

    ld h, [hl]
    dec b
    dec bc
    pop hl
    ld [hl], b
    add hl, bc
    ld [$D079], sp

jr_018_648C:
    nop
    ld de, $778A
    jr jr_018_64AA

    ld h, [hl]
    dec bc
    nop
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a

jr_018_64AA:
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2BB5
    and b

jr_018_64B6:
    ei
    or l
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_018_645E

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_018_6466

    rst $28
    or l
    jr z, jr_018_646A

    rst $18
    or l
    jr z, jr_018_646E

    cp a
    or l
    jr z, jr_018_6472

    ld a, a
    or l
    add hl, hl
    and b
    cp $9B
    jr jr_018_64B6

    ld h, h
    ld b, l
    sbc [hl]

jr_018_64DD:
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_018_653D

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c

jr_018_64EF:
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, @+$47

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    jr jr_018_64EF

    ld h, l
    jr @+$09

    ld l, c
    ld b, l
    ld e, $15
    dec d
    ld de, $784A
    jr nz, jr_018_651A

    ld [hl], d
    ld a, b
    jr nz, @+$13

    ld e, [hl]
    ld a, b
    jr nz, jr_018_6522

    add [hl]
    ld a, b
    jr nz, jr_018_6515

jr_018_6515:
    ld c, b
    jr @+$05

    ld h, l
    dec d

jr_018_651A:
    ld de, $7808
    jr c, jr_018_6530

    adc d
    ld [hl], a
    db $10

jr_018_6522:
    ld de, $77A2
    ld [hl], b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6530:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [de], a
    inc bc
    rst $38
    ret nc

    jp nz, $B5FA

    jr z, jr_018_64DD

jr_018_653D:
    ei
    ld b, l
    ld e, $15
    dec d
    ld de, $785E
    jr z, @+$13

    ld [hl], d
    ld a, b
    db $10
    ld de, $784A
    jr z, jr_018_6560

    add [hl]
    ld a, b
    stop
    ld c, b
    jr jr_018_6597

    ld h, l
    ld e, $15
    dec d
    ld de, $784A
    jr z, jr_018_6570

    add [hl]

jr_018_6560:
    ld a, b
    db $10
    ld de, $785E
    jr z, jr_018_6578

    ld [hl], d
    ld a, b
    stop
    ld c, b
    jr jr_018_65C7

    ld h, l
    dec d

jr_018_6570:
    ld de, $781E
    jr nc, jr_018_6586

    adc d
    ld [hl], a
    db $10

jr_018_6578:
    ld de, $77DE
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6586:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld bc, $D0B7
    push bc
    ld a, [$28B5]
    and b
    rst $18
    ld b, l
    ld e, $15

jr_018_6597:
    dec d
    ld de, $7886
    jr nc, jr_018_65AE

    ld c, d
    ld a, b
    jr @+$13

    ld [hl], d
    ld a, b
    jr nc, jr_018_65B6

    ld e, [hl]
    ld a, b
    jr jr_018_65A9

jr_018_65A9:
    ld c, b
    jr @-$67

    ld h, l
    dec d

jr_018_65AE:
    ld de, $781E
    jr nc, jr_018_65C4

    adc d
    ld [hl], a
    db $10

jr_018_65B6:
    ld de, $77DE
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_65C3:
    inc b

jr_018_65C4:
    add hl, de
    rst $20
    ld b, [hl]

jr_018_65C7:
    add h
    rlca
    inc c
    ld l, [hl]
    ret nc

    rst $00
    ld a, [$28B5]
    and b
    ld a, a
    ld b, l
    ld e, $15
    dec d

jr_018_65D6:
    ld de, $7872
    ld [$4A11], sp
    ld a, b
    jr jr_018_65F0

    add [hl]
    ld a, b
    jr z, jr_018_65F4

    ld e, [hl]
    ld a, b
    jr jr_018_65F8

    ld [hl], d
    ld a, b
    jr nz, jr_018_65EB

jr_018_65EB:
    ld c, b
    jr jr_018_65C3

    ld h, l
    inc d

jr_018_65F0:
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]

jr_018_65F4:
    ld de, $3201
    and c

jr_018_65F8:
    dec b
    cp $18
    ld b, $66
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d

jr_018_660F:
    jr nz, jr_018_6617

    ld a, d
    jr nz, jr_018_668C

    ld c, b
    jr jr_018_660F

jr_018_6617:
    ld h, e

jr_018_6618:
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    jr jr_018_6618

    ld h, l
    ld [hl+], a
    ld [bc], a
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_669E

    ld l, a
    ld [hl], l

jr_018_663A:
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_66A7

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr jr_018_65D6

    ld h, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_66CE

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_66D8

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_018_66C6

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    db $10
    dec b

jr_018_6676:
    nop
    jr jr_018_663A

    ld h, [hl]
    and c

jr_018_667B:
    xor l
    ld h, a
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_667B

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_66FE

    ld l, a
    ld l, a

jr_018_668C:
    ld l, e
    jr nz, jr_018_6708

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_670C

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_018_66CF

    dec [hl]

jr_018_669E:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_66A7:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    db $10
    dec b
    nop
    jr jr_018_6676

    ld h, [hl]
    and c

jr_018_66B7:
    xor l
    ld h, a
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_66B7

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_66C6:
    ld bc, $A167
    jr @+$42

    ld h, a
    sbc a
    ld h, a

jr_018_66CE:
    and c

jr_018_66CF:
    ld b, [hl]
    rrca
    ld bc, $A167
    dec b
    ld bc, $0618

jr_018_66D8:
    ld h, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_6742

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_673F

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_675B

    ld [hl], e
    cp $FC
    jr nz, jr_018_6758

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_66FC:
    ld [hl], h
    ld [hl], e

jr_018_66FE:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr jr_018_66FC

    ld l, b
    and [hl]
    ld d, h

jr_018_6708:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_670C:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_676C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_679A

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l

jr_018_6736:
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    jr jr_018_6736

jr_018_673F:
    ld l, b
    sbc a
    ld h, a

jr_018_6742:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_018_6749:
    jr nz, jr_018_67AF

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_67BE

    ld h, c
    halt

jr_018_6758:
    ld h, l
    jr nz, jr_018_67CE

jr_018_675B:
    ld h, l

jr_018_675C:
    ld [hl], h
    jr nz, jr_018_67C0

    cp $6E
    ld h, l

jr_018_6762:
    ld [hl], a
    jr nz, jr_018_67AD

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_67BD

    ld h, e
    ld l, a

jr_018_676C:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_018_67E5

jr_018_6775:
    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l

jr_018_677B:
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_67D6

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_6800

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_6794:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_018_679A:
    xor l

jr_018_679B:
    ld h, a
    and c
    ld bc, $A132
    and c
    ld c, b
    jr jr_018_679B

    ld l, b
    ld b, [hl]
    nop

jr_018_67A7:
    jr z, jr_018_6749

    ld [bc], a
    jr @-$41

    ld h, a

jr_018_67AD:
    add h
    rla

jr_018_67AF:
    ld bc, $D143
    pop bc
    ei
    add hl, bc
    inc b
    jr jr_018_67B9

    ld h, l

jr_018_67B9:
    or [hl]
    jr z, jr_018_675C

    ld [bc], a

jr_018_67BD:
    ld b, l

jr_018_67BE:
    ld b, [hl]
    nop

jr_018_67C0:
    jr z, jr_018_6762

    inc b
    jr jr_018_679B

    ld h, a

jr_018_67C6:
    add h
    ld [de], a
    inc bc
    rst $38

jr_018_67CA:
    ret nc

    jp nz, $09FB

jr_018_67CE:
    dec b
    jr jr_018_67EA

    ld h, l
    or [hl]
    jr z, jr_018_6775

    inc b

jr_018_67D6:
    ld b, l
    ld b, [hl]
    nop

jr_018_67D9:
    jr z, jr_018_677B

    ld [$EF18], sp
    ld h, a

jr_018_67DF:
    add h
    ld c, $06
    jp z, $C3D0

jr_018_67E5:
    ei
    add hl, bc
    ld b, $18
    ccf

jr_018_67EA:
    ld h, l
    or [hl]
    jr z, @-$5E

    ld [$4645], sp
    nop

jr_018_67F2:
    jr z, jr_018_6794

    db $10
    jr @+$0A

    ld l, b
    add h
    dec bc
    dec b

jr_018_67FB:
    sbc a
    ret nc

    call nz, $09FB

jr_018_6800:
    rlca
    jr @+$59

    ld h, l
    or [hl]
    jr z, jr_018_67A7

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_67AD

    jr nz, jr_018_6827

    ld hl, $8468
    dec c
    ld bc, $D0B7
    push bc
    ei
    add hl, bc
    ld [$6F18], sp
    ld h, l
    or [hl]
    jr z, jr_018_67C0

    jr nz, jr_018_6867

    ld b, [hl]
    nop
    jr z, jr_018_67C6

    ld b, b

jr_018_6827:
    jr jr_018_6863

    ld l, b
    add h
    rlca
    ld [$D06A], sp
    add $FB
    add hl, bc
    add hl, bc
    jr jr_018_67CA

    ld h, l
    or [hl]
    jr z, jr_018_67D9

    ld b, b

jr_018_683A:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_67DF

    add b

jr_018_6840:
    jr jr_018_6895

    ld l, b
    add h
    rlca
    inc c
    ld l, [hl]
    ret nc

    rst $00
    ei
    add hl, bc
    ld a, [bc]
    jr jr_018_67FB

    ld h, l
    or [hl]
    jr z, jr_018_67F2

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $6C18
    ld l, b
    add h
    inc b
    add hl, bc

jr_018_685F:
    ld b, c
    ret nc

    ret z

    ei

jr_018_6863:
    add hl, bc
    dec bc
    jr jr_018_683A

jr_018_6867:
    ld h, l

jr_018_6868:
    or [hl]
    add hl, hl
    and b

jr_018_686B:
    ld bc, $2245
    dec e
    ld c, b
    jr jr_018_6880

    ld l, c
    ld [hl+], a
    dec e
    ld c, b
    jr @-$35

    ld l, l
    ld [hl+], a
    dec e
    ld c, b
    jr @+$5B

jr_018_687E:
    ld [hl], h
    ld [hl+], a

jr_018_6880:
    dec e
    ld c, b
    jr jr_018_6840

    ld a, c
    ld [hl+], a
    dec e
    ld c, b
    jr jr_018_687E

    ld h, e
    or [hl]
    ld [hl], $A0
    ld bc, $0D01
    inc d
    ld c, b
    add hl, bc
    ld c, c

jr_018_6895:
    ld e, c
    or [hl]
    ld [hl], $A0
    ld [bc], a
    ld bc, $1416
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    ld b, [hl]
    nop
    ld c, d
    and b
    inc b
    jr jr_018_686B

    ld l, b
    or [hl]
    ld [hl], $A0
    ld [bc], a
    or [hl]
    ld [hl], $A0
    jr nz, jr_018_6868

    ld c, d
    and b
    inc b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    jr jr_018_685F

    ld l, b
    ld c, b
    add hl, bc
    ld h, l
    ld e, e
    or [hl]
    ld [hl], $A0
    ld [bc], a
    or [hl]
    ld [hl], $A0
    jr nz, @+$03

    ld d, $14
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    or [hl]
    ld [hl], $A0
    inc b
    ld bc, $091A
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    ld b, [hl]
    nop
    ld [hl], $A0
    ld [$F018], sp
    ld l, b
    or [hl]
    ld [hl], $A0
    ld [$1001], sp
    ld [bc], a
    ld c, b
    add hl, bc
    ld d, b
    ld e, h
    ld bc, $0210
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    ld b, [hl]
    nop
    ld [hl], $A0
    db $10
    jr jr_018_6905

    ld l, c
    or [hl]
    ld [hl], $A0
    db $10
    ld c, b
    add hl, bc

jr_018_6905:
    jr nc, jr_018_6961

    ld bc, $0903
    ld c, b
    add hl, bc
    ld c, c
    ld e, c
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret


    ld c, a
    inc de
    ld h, a
    db $DD
    ld b, e
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    dec de
    dec l
    db $D3
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    add hl, bc
    inc de
    ld b, e
    jp nc, $1100

    adc d
    ld [hl], a
    jr @+$76

    ld l, e
    dec b
    inc b
    pop hl
    ld [hl], b
    rlca
    add hl, de
    push af
    jp nc, $1100

    adc d
    ld [hl], a
    jr jr_018_69C6

    ld l, e
    dec b
    dec b
    pop hl
    ld [hl], b
    dec b
    dec bc
    ld c, a
    pop de
    nop
    ld de, $778A
    jr @+$76

jr_018_6961:
    ld l, e
    dec b
    ld b, $E1
    ld [hl], b
    dec b
    dec c
    adc e
    pop de
    nop
    ld de, $778A
    jr jr_018_69E4

    ld l, e
    dec b
    rlca
    pop hl

jr_018_6974:
    ld [hl], b
    dec b
    rrca
    rst $00

jr_018_6978:
    pop de
    nop
    ld de, $778A
    jr @+$76

    ld l, e

jr_018_6980:
    dec b
    ld [$70E1], sp

jr_018_6984:
    inc b
    ld b, $B8
    ret nc

jr_018_6988:
    nop
    ld de, $778A

jr_018_698C:
    jr jr_018_6A02

    ld l, e
    dec b

jr_018_6990:
    add hl, bc
    pop hl
    ld [hl], b
    inc bc
    ld b, $B7
    ret nc

    nop
    ld de, $778A
    jr jr_018_6A11

    ld l, e
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    ld [$BC06], sp
    ret nc

    nop
    ld de, $778A
    jr jr_018_6A20

    ld l, e
    dec bc
    nop
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
    dec bc
    ld a, [bc]
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add b

jr_018_69C6:
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2BB5
    and b
    ei
    or l
    jr z, jr_018_6974

    cp $B5
    jr z, jr_018_6978

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_018_6980

    rst $30
    or l
    jr z, jr_018_6984

jr_018_69E4:
    rst $28
    or l
    jr z, jr_018_6988

    rst $18
    or l

jr_018_69EA:
    jr z, jr_018_698C

    cp a
    or l
    jr z, jr_018_6990

    ld a, a
    sbc e
    jr jr_018_69EA

    ld l, c
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c

jr_018_6A02:
    and [hl]
    jr nz, jr_018_6A57

jr_018_6A05:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_018_6A53

    ld a, b
    ld l, c
    ld [hl], h

jr_018_6A11:
    db $FD
    and e
    ld [bc], a
    jr jr_018_6A65

    ld l, e
    jr @-$6F

    ld l, b
    ld b, l
    dec d
    ld de, $7808
    ld b, b

jr_018_6A20:
    ld de, $778A
    db $10
    ld de, $77A2
    add b
    ld de, $778A

jr_018_6A2B:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_018_6A39

    pop de

jr_018_6A39:
    jp nc, $FAC0

    or l
    jr z, @-$5E

    cp $45
    dec d
    ld de, $7808
    jr nz, jr_018_6A58

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A

jr_018_6A51:
    nop
    nop

jr_018_6A53:
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_6A57:
    inc b

jr_018_6A58:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    rlca
    ret


    pop de
    jp nz, $B5FA

    jr z, jr_018_6A05

jr_018_6A65:
    db $FD
    ld b, l
    dec d
    ld de, $7808
    jr nz, jr_018_6A7E

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6A7E:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    rlca
    adc l
    pop de
    jp $B5FA


    jr z, jr_018_6A2B

    ei
    ld b, l
    dec d
    ld de, $7808
    jr nz, jr_018_6AA4

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A

jr_018_6A9D:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6AA4:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    rlca
    ld d, c
    pop de
    call nz, $B5FA
    jr z, jr_018_6A51

    rst $30
    ld b, l
    dec d
    ld de, $781E
    jr z, jr_018_6ACA

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld d, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6ACA:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$F303], sp
    ret nc

    push bc
    ld a, [$28B5]
    and b
    rst $28
    ld b, l
    dec d
    ld de, $781E
    jr nz, jr_018_6AF0

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b
    ld de, $778A

jr_018_6AE9:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6AF0:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $05
    cp c
    ret nc

    add $FA
    or l
    jr z, jr_018_6A9D

    rst $18
    ld b, l
    dec d
    ld de, $781E
    jr jr_018_6B16

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    jr nc, jr_018_6B1E

    adc d
    ld [hl], a
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6B16:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $02
    or [hl]
    ret nc

jr_018_6B1E:
    rst $00
    ld a, [$28B5]
    and b
    cp a
    ld b, l
    dec d

jr_018_6B26:
    ld de, $781E
    jr nz, jr_018_6B3C

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop

jr_018_6B39:
    dec hl
    and b
    inc b

jr_018_6B3C:
    add hl, de
    rst $20
    ld b, [hl]

jr_018_6B3F:
    add h
    rla
    dec b
    or a
    jp nc, $FAC1

    or l
    jr z, jr_018_6AE9

    ld a, a
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b

jr_018_6B55:
    cp $18
    ld h, d

jr_018_6B58:
    ld l, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d

jr_018_6B6B:
    jr nz, jr_018_6B73

    ld a, d
    jr nz, jr_018_6BE8

    ld c, b

jr_018_6B71:
    jr @+$14

jr_018_6B73:
    ld l, c
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    jr @+$51

    ld l, e
    ld b, [hl]
    nop

jr_018_6B84:
    jr z, jr_018_6B26

jr_018_6B86:
    ld bc, $9A18
    ld l, e

jr_018_6B8A:
    add h
    jr jr_018_6B8E

    pop de

jr_018_6B8E:
    jp nc, $FBC0

    add hl, bc
    inc bc
    jr jr_018_6BB0

    ld l, d
    or [hl]
    jr z, jr_018_6B39

    ld bc, $4645
    nop

jr_018_6B9D:
    jr z, jr_018_6B3F

    add b
    jr jr_018_6B55

    ld l, e

jr_018_6BA3:
    add h
    rla
    dec b
    or a
    jp nc, $FBC1

    add hl, bc
    inc b
    jr @+$27

    ld l, e
    or [hl]

jr_018_6BB0:
    jr z, @-$5E

    add b
    ld b, l
    ld b, [hl]
    nop

jr_018_6BB6:
    jr z, jr_018_6B58

    ld [bc], a

jr_018_6BB9:
    jr @-$32

    ld l, e

jr_018_6BBC:
    add h
    rrca
    rlca
    ret


    pop de
    jp nz, $09FB

    dec b
    jr jr_018_6C08

    ld l, d
    or [hl]
    jr z, jr_018_6B6B

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop

jr_018_6BCF:
    jr z, jr_018_6B71

    inc b
    jr jr_018_6BB9

    ld l, e

jr_018_6BD5:
    add h
    dec c
    rlca
    adc l
    pop de
    jp $09FB


    ld b, $18
    ld h, a
    ld l, d
    or [hl]
    jr z, jr_018_6B84

    inc b
    ld b, l
    ld b, [hl]
    nop

jr_018_6BE8:
    jr z, jr_018_6B8A

    ld [$FE18], sp
    ld l, e
    add h
    dec bc
    rlca
    ld d, c
    pop de
    call nz, $09FB
    rlca
    jr jr_018_6B86

    ld l, d
    or [hl]
    jr z, jr_018_6B9D

    ld [$4645], sp
    nop
    jr z, jr_018_6BA3

    db $10

jr_018_6C04:
    jr @+$19

    ld l, h
    add h

jr_018_6C08:
    ld [$F303], sp
    ret nc

    push bc
    ei
    add hl, bc
    ld [$B318], sp
    ld l, d
    or [hl]
    jr z, jr_018_6BB6

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_6BBC

    jr nz, jr_018_6C36

jr_018_6C1E:
    jr nc, jr_018_6C8C

    add h
    ld b, $05
    cp c
    ret nc

    add $FB
    add hl, bc
    add hl, bc
    jr jr_018_6C04

    ld l, d
    or [hl]
    jr z, jr_018_6BCF

    jr nz, jr_018_6C76

    ld b, [hl]
    nop

jr_018_6C33:
    jr z, jr_018_6BD5

    ld b, b

jr_018_6C36:
    jr jr_018_6C81

    ld l, h
    add h
    ld b, $02
    or [hl]
    ret nc

    rst $00
    ei
    add hl, bc
    ld a, [bc]
    jr @+$01

    ld l, d
    or [hl]
    jr z, jr_018_6BE8

    ld b, b
    ld b, l
    ld [hl+], a
    ld [bc], a
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_6CC2

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_6CCB

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr jr_018_6C1E

    ld l, h

jr_018_6C76:
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_6CF2

    ld l, a
    ld l, a
    ld l, e

jr_018_6C81:
    jr nz, jr_018_6CFC

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_018_6CEA

    ld [hl], h
    ld [hl], h
    ld h, l

jr_018_6C8C:
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld bc, $0005
    jr @-$19

    ld l, h
    and c
    xor l
    ld h, e
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_6C33

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_6D22

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_6D2C

    ld l, a

jr_018_6CB4:
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_6D30

    ld l, b
    ld h, c

jr_018_6CBE:
    ld l, [hl]
    jr nz, jr_018_6CF3

    dec [hl]

jr_018_6CC2:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_6CCB:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld bc, $0005
    jr jr_018_6CBE

    ld l, h
    and c
    xor l
    ld h, e
    and c
    ld bc, $A132
    ld c, b
    jr @-$73

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_6CEA:
    ld bc, $A163
    jr jr_018_6D53

    ld l, l
    sbc a
    ld h, e

jr_018_6CF2:
    and c

jr_018_6CF3:
    ld b, [hl]
    rrca
    ld bc, $A163
    dec b
    ld bc, $2A18

jr_018_6CFC:
    ld l, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_6D66

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_6D63

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_6D7F

    ld [hl], e
    cp $FC
    jr nz, jr_018_6D7C

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_018_6D22:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr jr_018_6CB4

    ld l, b
    and [hl]
    ld d, h

jr_018_6D2C:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_6D30:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_6D90

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_6DBE

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38

jr_018_6D53:
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    jr @-$73

jr_018_6D63:
    ld l, b
    sbc a
    ld h, e

jr_018_6D66:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_018_6DD3

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_6DE2

    ld h, c
    halt

jr_018_6D7C:
    ld h, l
    jr nz, jr_018_6DF2

jr_018_6D7F:
    ld h, l
    ld [hl], h
    jr nz, jr_018_6DE4

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_6DE1

    ld h, e
    ld l, a

jr_018_6D90:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_6E24

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_018_6DBE:
    xor l
    ld h, e
    and c
    ld bc, $A132
    and c
    ld c, b
    jr jr_018_6D53

    ld l, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_018_6DD3:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret c

    ld c, a
    inc de
    ld h, a
    ld [bc], a
    ld b, h

jr_018_6DE1:
    dec b

jr_018_6DE2:
    nop
    inc [hl]

jr_018_6DE4:
    ld h, e
    ld bc, $5511
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    dec b

jr_018_6DF2:
    pop hl
    ld [hl], b
    rlca
    ld de, $D15B
    nop
    ld de, $778A
    jr jr_018_6E6C

    ld [hl], b
    dec b
    ld b, $E1
    ld [hl], b
    ld [$5C11], sp
    pop de
    nop
    ld de, $778A
    jr jr_018_6E7B

    ld [hl], b
    dec b
    rlca
    pop hl
    ld [hl], b
    ld [de], a
    ld c, $2A
    pop de
    nop
    ld de, $778A
    jr jr_018_6E8A

    ld [hl], b
    dec b
    ld [$70E1], sp
    inc c
    dec c
    db $10

jr_018_6E24:
    pop de
    nop
    ld de, $778A
    jr @+$70

    ld [hl], b
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    inc c
    dec bc
    add sp, -$30
    nop
    ld de, $778A
    jr jr_018_6EA8

    ld [hl], b
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    ld de, $C509
    ret nc

    nop

jr_018_6E44:
    ld de, $778A
    jr jr_018_6EB7

    ld [hl], b
    dec b
    dec bc

jr_018_6E4C:
    pop hl
    ld [hl], b
    inc b
    add hl, bc

jr_018_6E50:
    cp b
    ret nc

    nop
    ld de, $778A
    jr jr_018_6EC6

    ld [hl], b
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    ld bc, $B509
    ret nc

    nop
    ld de, $778A
    jr jr_018_6ED5

    ld [hl], b
    dec b
    inc de
    pop hl
    ld [hl], b

jr_018_6E6C:
    ld b, $03
    ld b, d
    ret nc

    nop
    ld de, $778A
    jr jr_018_6EE4

    ld [hl], b
    dec bc
    nop
    dec bc
    dec b

jr_018_6E7B:
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp

jr_018_6E83:
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc

jr_018_6E8A:
    inc de
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2BB5
    and b
    ei
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_018_6E44

    rst $30
    or l
    jr z, @-$5E

jr_018_6EA8:
    rst $28
    or l
    jr z, jr_018_6E4C

    rst $18
    or l
    jr z, jr_018_6E50

    cp a
    or l
    jr z, @-$5E

    ld a, a
    or l
    add hl, hl

jr_018_6EB7:
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    or l
    add hl, hl
    and b
    ei
    sbc e
    jr jr_018_6E8A

    ld l, [hl]
    ld b, l

jr_018_6EC6:
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    or e
    ld sp, $01C7
    ld e, $1F
    and d
    sbc b

jr_018_6ED5:
    ld b, c
    and [hl]
    jr nz, jr_018_6F2B

jr_018_6ED9:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_018_6F27

    ld a, b
    ld l, c

jr_018_6EE4:
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    jr jr_018_6F60

    ld [hl], b
    jr jr_018_6E83

    ld l, b
    ld b, l
    dec d
    ld de, $781E
    jr nc, jr_018_6F06

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld h, b
    ld de, $778A

jr_018_6EFF:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6F06:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    ld [bc], a
    ld b, d
    pop de
    jp nz, $B5FA

    jr z, @-$5E

    ei
    ld b, l
    dec d
    ld de, $781E
    jr nc, jr_018_6F2C

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld h, b
    ld de, $778A
    nop
    nop

jr_018_6F27:
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_6F2B:
    inc b

jr_018_6F2C:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $5703
    pop de
    jp $B5FA


    jr z, jr_018_6ED9

    rst $30
    ld b, l
    dec d
    ld de, $7808
    jr c, jr_018_6F52

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld [hl], b
    ld de, $778A

jr_018_6F4B:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6F52:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    inc c
    ld c, h
    pop de
    call nz, $B5FA
    jr z, jr_018_6EFF

    rst $28

jr_018_6F60:
    ld b, l
    dec d
    ld de, $77F2
    jr nc, jr_018_6F78

    adc d
    ld [hl], a
    db $10
    ld de, $77B6
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6F78:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    ld [de], a
    ld d, d
    pop de
    push bc
    ld a, [$28B5]
    and b
    rst $18
    ld b, l
    dec d
    ld de, $77F2
    jr nc, jr_018_6F9E

    adc d
    ld [hl], a
    db $10
    ld de, $77B6
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6F9E:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld [de], a
    ld d, $D1
    add $FA
    or l
    jr z, jr_018_6F4B

    cp a
    ld b, l
    dec d
    ld de, $7808
    jr nc, jr_018_6FC4

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6FC4:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    ld c, $C2
    ret nc

    rst $00
    ld a, [$28B5]
    and b
    ld a, a
    ld b, l
    dec d
    ld de, $781E
    jr nz, jr_018_6FEA

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_6FEA:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    dec b
    cp c
    ret nc

    ret z

    ld a, [$29B5]
    and b
    cp $45
    dec d
    ld de, $781E
    ld b, b
    ld de, $778A
    db $10
    ld de, $77DE
    add b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rlca
    dec b
    sub c
    ret nc

    ret


    ld a, [$29B5]
    and b
    db $FD
    ld b, l
    dec d
    ld de, $7808
    jr z, jr_018_7036

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld d, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7036:
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_018_703A:
    inc bc
    inc bc
    ccf
    ret nc

    jp z, $B5FA

    add hl, hl
    and b
    ei
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $18
    ld e, h
    ld [hl], b
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_018_706D

    ld a, d
    jr nz, jr_018_70E2

    ld c, b
    jr jr_018_703A

jr_018_706D:
    ld l, l
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    jr jr_018_70C4

    ld [hl], b
    ld [hl+], a
    ld [bc], a
    or [hl]
    dec hl
    and b
    inc b

jr_018_7082:
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_70F4

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_70FD

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr jr_018_7082

    ld [hl], b
    sbc a
    ld [hl-], a
    and c
    and [hl]

jr_018_70AC:
    ld c, c
    ld [hl], h
    jr nz, jr_018_7124

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_712E

    ld l, a
    ld [hl], l

jr_018_70B7:
    rst $38
    db $FC
    jr nz, jr_018_711C

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE

jr_018_70C4:
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [bc], a
    dec b
    nop
    jr jr_018_70E6

    ld [hl], c
    and c
    xor l
    ld h, h
    and c
    ld bc, $A132
    ld c, b
    jr @-$68

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_7154

    ld l, a
    ld l, a

jr_018_70E2:
    ld l, e
    jr nz, jr_018_715E

    ld l, a

jr_018_70E6:
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7162

    ld l, b
    ld h, c
    ld l, [hl]

jr_018_70F1:
    jr nz, jr_018_7125

    dec [hl]

jr_018_70F4:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_70FD:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [bc], a
    dec b
    nop
    jr jr_018_7122

    ld [hl], c
    and c
    xor l
    ld h, h
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_70AC

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_711C:
    ld bc, $A164
    jr jr_018_70B7

    ld [hl], c

jr_018_7122:
    sbc a
    ld h, h

jr_018_7124:
    and c

jr_018_7125:
    ld b, [hl]
    rrca
    ld bc, $A164
    dec b

jr_018_712B:
    ld bc, $5C18

jr_018_712E:
    ld [hl], c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7198

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7195

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_71B1

    ld [hl], e
    cp $FC
    jr nz, jr_018_71AE

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_018_7154:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr jr_018_70F1

    ld l, b
    and [hl]
    ld d, h

jr_018_715E:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_7162:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_71C2

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_71F0

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    jr jr_018_712B

jr_018_7195:
    ld l, b
    sbc a
    ld h, h

jr_018_7198:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_018_7205

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_7214

    ld h, c
    halt

jr_018_71AE:
    ld h, l
    jr nz, jr_018_7224

jr_018_71B1:
    ld h, l
    ld [hl], h
    jr nz, jr_018_7216

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7213

    ld h, e
    ld l, a

jr_018_71C2:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_018_723B

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c

jr_018_71E0:
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_018_71F0:
    xor l
    ld h, h
    and c
    ld bc, $A132
    and c
    ld c, b

jr_018_71F8:
    jr @-$68

    ld l, b
    ld [hl+], a
    ld [bc], a
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7

jr_018_7205:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_7271

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_7272

    rst $38
    ld d, e

jr_018_7213:
    ld b, l

jr_018_7214:
    ld b, e
    ld d, d

jr_018_7216:
    ld b, l
    ld d, h
    ld hl, $FDFE
    ld b, [hl]

jr_018_721C:
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr @+$5A

jr_018_7224:
    ld [hl], d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_72A1

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_72AB

    ld l, a
    ld [hl], l

jr_018_7234:
    rst $38
    db $FC
    jr nz, jr_018_7299

    ld [hl], h
    ld [hl], h
    ld h, l

jr_018_723B:
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [bc], a
    dec b
    nop
    jr jr_018_71E0

    ld [hl], d
    and c
    xor l
    ld h, h
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_71F8

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_72D1

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_72DB

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_72DF

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_018_72A2

    dec [hl]

jr_018_7271:
    dec [hl]

jr_018_7272:
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_7279:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [bc], a
    dec b
    nop
    jr jr_018_721C

    ld [hl], d
    and c
    xor l
    ld h, h
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_7234

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_7299:
    ld bc, $A164
    jr @+$15

    ld [hl], e
    sbc a
    ld h, h

jr_018_72A1:
    and c

jr_018_72A2:
    ld b, [hl]
    rrca
    ld bc, $A164
    dec b
    ld bc, $D918

jr_018_72AB:
    ld [hl], d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7315

    ld [hl], l

jr_018_72B3:
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7312

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_732E

    ld [hl], e
    cp $FC
    jr nz, jr_018_732B

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_018_72D1:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr jr_018_7279

    ld l, b
    and [hl]
    ld d, h

jr_018_72DB:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_72DF:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_733F

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_736D

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c

jr_018_730F:
    ld c, b
    jr jr_018_72B3

jr_018_7312:
    ld l, b
    sbc a
    ld h, h

jr_018_7315:
    and c
    and [hl]
    rst $38

jr_018_7318:
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_018_731C:
    jr nz, jr_018_7382

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_7391

    ld h, c
    halt

jr_018_732B:
    ld h, l
    jr nz, jr_018_73A1

jr_018_732E:
    ld h, l

jr_018_732F:
    ld [hl], h
    jr nz, jr_018_7393

    cp $6E
    ld h, l

jr_018_7335:
    ld [hl], a
    jr nz, jr_018_7380

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7390

    ld h, e
    ld l, a

jr_018_733F:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

jr_018_7348:
    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l

jr_018_734E:
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_73D3

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_018_73C3

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_7367:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_018_736D:
    xor l
    ld h, h
    and c
    ld bc, $A132

jr_018_7373:
    and c
    ld c, b
    jr jr_018_7318

    ld l, b
    ld b, [hl]
    nop

jr_018_737A:
    jr z, jr_018_731C

    inc b
    jr jr_018_730F

    ld [hl], e

jr_018_7380:
    add h
    db $10

jr_018_7382:
    ld [bc], a
    ld b, d
    pop de
    jp nz, $09FB

    dec b
    jr jr_018_737A

    ld l, [hl]
    or [hl]
    jr z, jr_018_732F

    inc b

jr_018_7390:
    ld b, l

jr_018_7391:
    ld b, [hl]
    nop

jr_018_7393:
    jr z, jr_018_7335

    ld [$A918], sp
    ld [hl], e

jr_018_7399:
    add h
    ld de, $5703
    pop de
    jp $09FB


jr_018_73A1:
    ld b, $18
    dec d
    ld l, a
    or [hl]
    jr z, jr_018_7348

    ld [$4645], sp
    nop

jr_018_73AC:
    jr z, jr_018_734E

    db $10
    jr jr_018_7373

    ld [hl], e
    add h
    db $10
    inc c

jr_018_73B5:
    ld c, h
    pop de
    call nz, $09FB
    rlca
    jr @+$3D

    ld l, a
    or [hl]
    jr z, @-$5E

    db $10
    ld b, l

jr_018_73C3:
    ld b, [hl]
    nop
    jr z, jr_018_7367

    jr nz, jr_018_73E1

    db $DB
    ld [hl], e
    add h
    db $10
    ld [de], a
    ld d, d
    pop de
    push bc
    ei
    add hl, bc

jr_018_73D3:
    ld [$6118], sp
    ld l, a

jr_018_73D7:
    or [hl]
    jr z, jr_018_737A

    jr nz, jr_018_7421

    ld b, [hl]
    nop
    jr z, jr_018_7380

    ld b, b

jr_018_73E1:
    jr jr_018_73D7

    ld [hl], e
    add h
    dec c
    ld [de], a
    ld d, $D1
    add $FB
    add hl, bc
    add hl, bc
    jr @-$77

    ld l, a
    or [hl]
    jr z, jr_018_7393

    ld b, b

jr_018_73F4:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_7399

    add b
    jr jr_018_7409

    ld [hl], h
    add h
    add hl, bc
    ld c, $C2
    ret nc

    rst $00
    ei
    add hl, bc
    ld a, [bc]
    jr jr_018_73B5

    ld l, a

jr_018_7409:
    or [hl]
    jr z, jr_018_73AC

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $2618
    ld [hl], h
    add h
    add hl, bc
    dec b
    cp c
    ret nc

    ret z

    ei
    add hl, bc
    dec bc
    jr jr_018_73F4

jr_018_7421:
    ld l, a
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [bc], a
    jr jr_018_746D

    ld [hl], h
    add h
    rlca
    dec b
    sub c

jr_018_7433:
    ret nc

    ret


    ei
    add hl, bc
    ld [de], a
    jr jr_018_7433

    ld l, a
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    jr jr_018_749F

    ld [hl], h
    add h
    inc bc
    inc bc
    ccf
    ret nc

    jp z, $09FB

    inc de
    jr jr_018_7472

    ld [hl], b
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    rst $20
    ld c, a

jr_018_746D:
    inc de
    ld h, a
    cpl
    ld b, h
    dec b

jr_018_7472:
    nop
    inc [hl]
    ld h, e
    ld bc, $5115
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc b
    pop hl
    ld [hl], b
    inc b
    inc de
    inc [hl]
    pop de
    nop
    ld de, $778A
    jr @+$37

    ld [hl], a
    dec b
    dec b
    pop hl
    ld [hl], b
    dec b
    inc de
    dec [hl]
    pop de
    nop
    ld de, $778A
    jr jr_018_74D2

    ld [hl], a
    dec b

jr_018_749F:
    ld b, $E1
    ld [hl], b
    inc c
    ld [de], a
    inc l
    pop de
    nop
    ld de, $778A
    jr @+$37

    ld [hl], a
    dec b
    rlca
    pop hl
    ld [hl], b
    rlca
    rrca
    rst $30
    ret nc

    nop
    ld de, $778A
    jr jr_018_74F0

    ld [hl], a
    dec b
    ld [$70E1], sp
    add hl, bc
    ld [$D089], sp
    nop
    ld de, $778A
    jr jr_018_74FF

    ld [hl], a
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld c, $08
    adc [hl]

jr_018_74D2:
    ret nc

    nop
    ld de, $778A
    jr jr_018_750E

    ld [hl], a
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    dec b
    ld [$D085], sp
    nop
    ld de, $778A
    jr jr_018_751D

    ld [hl], a

jr_018_74E9:
    dec b
    dec bc
    pop hl
    ld [hl], b

jr_018_74ED:
    ld [bc], a
    inc bc
    ld [hl-], a

jr_018_74F0:
    ret nc

jr_018_74F1:
    nop
    ld de, $778A

jr_018_74F5:
    jr jr_018_752C

    ld [hl], a
    dec b

jr_018_74F9:
    ld [de], a
    pop hl
    ld [hl], b
    ld [bc], a
    inc b
    ld b, d

jr_018_74FF:
    ret nc

    nop
    ld de, $778A
    jr @+$37

    ld [hl], a
    dec b
    inc de
    pop hl
    ld [hl], b
    ld [bc], a
    dec b
    ld d, d

jr_018_750E:
    ret nc

    nop
    ld de, $778A
    jr jr_018_754A

    ld [hl], a
    dec bc
    nop
    dec bc
    inc b
    dec bc
    dec b
    dec bc

jr_018_751D:
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de

jr_018_752C:
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2BB5
    and b
    ei
    or l
    jr z, @-$5E

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_018_74E9

    rst $30

jr_018_754A:
    or l
    jr z, jr_018_74ED

    rst $28
    or l
    jr z, jr_018_74F1

    rst $18
    or l
    jr z, jr_018_74F5

    cp a
    or l
    jr z, jr_018_74F9

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    or l
    add hl, hl

jr_018_7564:
    and b
    ei
    sbc e
    jr jr_018_75D4

    ld [hl], l
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_018_75CC

jr_018_757A:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_018_75C8

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    jr @+$12

    ld [hl], a
    jr jr_018_7564

    ld l, b
    ld b, l
    dec d
    ld de, $781E
    jr z, jr_018_75A7

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld d, b
    ld de, $778A

jr_018_75A0:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_75A7:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc de
    ld [bc], a
    ld [hl-], a
    pop de
    pop bc
    ld a, [$28B5]
    and b
    db $FD
    ld b, l
    dec d
    ld de, $781E
    jr z, jr_018_75CD

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld d, b
    ld de, $778A

jr_018_75C6:
    nop
    nop

jr_018_75C8:
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_75CC:
    inc b

jr_018_75CD:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $1505

jr_018_75D4:
    pop de
    jp nz, $B5FA

    jr z, jr_018_757A

    ei
    ld b, l
    dec d
    ld de, $7808
    jr nz, jr_018_75F3

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_75F3:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc de
    inc c
    inc a
    pop de
    jp $B5FA


    jr z, jr_018_75A0

    rst $30
    ld b, l
    dec d
    ld de, $77F2
    jr z, jr_018_7619

    adc d
    ld [hl], a
    db $10
    ld de, $77B6
    ld d, b
    ld de, $778A

jr_018_7612:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7619:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $1C0C
    pop de
    call nz, $B5FA
    jr z, jr_018_75C6

    rst $28
    ld b, l
    dec d
    ld de, $7834
    jr z, jr_018_763F

    adc d
    ld [hl], a
    db $10
    ld de, $77CA
    ld d, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_763F:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld a, [bc]
    jp c, $C5D0

    ld a, [$28B5]
    and b
    rst $18
    ld b, l
    dec d
    ld de, $7808
    jr nc, jr_018_7665

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7665:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$8808], sp
    ret nc

    add $FA
    or l
    jr z, jr_018_7612

    cp a
    ld b, l
    dec d
    ld de, $7808
    jr nz, jr_018_768B

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_768B:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $06
    ld h, [hl]
    ret nc

    rst $00
    ld a, [$28B5]
    and b
    ld a, a
    ld b, l
    dec d
    ld de, $77F2
    ld c, b
    ld de, $778A
    db $10
    ld de, $77B6
    sub b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    dec b
    sub l
    ret nc

    ret z

    ld a, [$29B5]
    and b
    cp $45
    dec d
    ld de, $77F2
    ld c, b
    ld de, $778A
    db $10
    ld de, $77B6
    sub b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $04
    ld h, h
    ret nc

    ret


    ld a, [$29B5]
    and b
    db $FD
    ld b, l
    dec d
    ld de, $7834
    ld c, b
    ld de, $778A
    db $10
    ld de, $77CA
    sub b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [bc]
    ld [bc], a
    and d
    ret nc

    jp z, $B5FA

    add hl, hl
    and b
    ei
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_018_7710:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $18
    inc hl
    ld [hl], a
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_018_7734

    ld a, d
    jr nz, jr_018_77A9

    ld c, b
    jr jr_018_7791

jr_018_7734:
    ld [hl], h
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    jr jr_018_7752

    ld [hl], a
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    or [hl]
    dec hl
    and b
    inc b
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a

jr_018_7752:
    ld [hl], l
    jr nz, jr_018_77BB

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_77C4

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr jr_018_7710

    ld [hl], a
    sbc a
    ld [hl-], a
    and c
    and [hl]

jr_018_7773:
    ld c, c

jr_018_7774:
    ld [hl], h
    jr nz, jr_018_77EB

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_018_77F5

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_018_77E3

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0

jr_018_7791:
    inc b
    dec b
    nop
    jr jr_018_7774

    ld [hl], a
    and c
    xor l
    ld h, l
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_7773

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_781B

    ld l, a
    ld l, a

jr_018_77A9:
    ld l, e
    jr nz, jr_018_7825

    ld l, a
    ld [hl], l
    rst $38

jr_018_77AF:
    ld l, l

jr_018_77B0:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7829

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_018_77EC

    dec [hl]

jr_018_77BB:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_77C4:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    inc b
    dec b
    nop
    jr jr_018_77B0

    ld [hl], a
    and c
    xor l
    ld h, l
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_77AF

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_77E3:
    ld bc, $A165
    jr jr_018_7845

    ld a, b
    sbc a
    ld h, l

jr_018_77EB:
    and c

jr_018_77EC:
    ld b, [hl]
    rrca
    ld bc, $A165
    dec b
    ld bc, $2318

jr_018_77F5:
    ld a, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_785F

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_785C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7878

    ld [hl], e
    cp $FC
    jr nz, jr_018_7875

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_018_781B:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr @-$2C

    ld l, b
    and [hl]
    ld d, h

jr_018_7825:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_7829:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_018_782E:
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7889

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_78B7

    ld l, [hl]
    ld h, d
    ld h, l

jr_018_7845:
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    jr jr_018_782E

jr_018_785C:
    ld l, b
    sbc a
    ld h, l

jr_018_785F:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_018_7865:
    ld l, h

jr_018_7866:
    jr nz, jr_018_78CC

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_78DB

    ld h, c
    halt

jr_018_7875:
    ld h, l
    jr nz, jr_018_78EB

jr_018_7878:
    ld h, l

jr_018_7879:
    ld [hl], h
    jr nz, jr_018_78DD

    cp $6E
    ld h, l

jr_018_787F:
    ld [hl], a
    jr nz, jr_018_78CA

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_78DA

    ld h, e
    ld l, a

jr_018_7889:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

jr_018_7892:
    ld [hl], d

jr_018_7893:
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l

jr_018_7898:
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_78F3

    ld h, e
    ld l, a
    ld [hl], d

jr_018_78A3:
    ld h, l

jr_018_78A4:
    jr nz, jr_018_791D

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_78B1:
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_018_78B7:
    xor l
    ld h, l
    and c
    ld bc, $A132
    and c
    ld c, b
    jr jr_018_7893

    ld l, b
    ld b, [hl]
    nop

jr_018_78C4:
    jr z, jr_018_7866

    ld [bc], a
    jr jr_018_78A3

    ld a, b

jr_018_78CA:
    add h
    inc de

jr_018_78CC:
    ld [bc], a
    ld [hl-], a
    pop de
    pop bc
    ei
    add hl, bc
    inc b
    jr jr_018_7865

jr_018_78D5:
    ld [hl], l
    or [hl]
    jr z, jr_018_7879

    ld [bc], a

jr_018_78DA:
    ld b, l

jr_018_78DB:
    ld b, [hl]
    nop

jr_018_78DD:
    jr z, jr_018_787F

    inc b
    jr jr_018_78D5

    ld a, b

jr_018_78E3:
    add h
    ld de, $1505
    pop de
    jp nz, $09FB

jr_018_78EB:
    dec b
    jr jr_018_78A4

    ld [hl], l
    or [hl]
    jr z, jr_018_7892

    inc b

jr_018_78F3:
    ld b, l
    ld b, [hl]
    nop

jr_018_78F6:
    jr z, jr_018_7898

    ld [$0C18], sp
    ld a, c

jr_018_78FC:
    add h
    inc de
    inc c
    inc a
    pop de
    jp $09FB


    ld b, $18
    call c, $B675
    jr z, @-$5E

    ld [$4645], sp
    nop

jr_018_790F:
    jr z, jr_018_78B1

    db $10
    jr jr_018_7939

    ld a, c
    add h
    ld de, $1C0C
    pop de
    call nz, $09FB

jr_018_791D:
    rlca

jr_018_791E:
    jr jr_018_7922

    halt
    or [hl]

jr_018_7922:
    jr z, jr_018_78C4

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_78CA

    jr nz, jr_018_7944

    ld a, $79
    add h
    dec c
    ld a, [bc]
    jp c, $C5D0

    ei
    add hl, bc
    ld [$2818], sp

jr_018_7939:
    halt
    or [hl]
    jr z, jr_018_78DD

    jr nz, jr_018_7984

    ld b, [hl]
    nop
    jr z, jr_018_78E3

    ld b, b

jr_018_7944:
    jr jr_018_799D

    ld a, c
    add h
    ld [$8808], sp
    ret nc

    add $FB
    add hl, bc
    add hl, bc
    jr jr_018_79A0

    halt
    or [hl]
    jr z, jr_018_78F6

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_78FC

    add b

jr_018_795D:
    jr @+$72

    ld a, c
    add h
    ld b, $06
    ld h, [hl]
    ret nc

jr_018_7965:
    rst $00
    ei
    add hl, bc
    ld a, [bc]
    jr jr_018_79DF

    halt
    or [hl]
    jr z, jr_018_790F

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $8918
    ld a, c
    add h
    add hl, bc
    dec b
    sub l
    ret nc

    ret z

    ei
    add hl, bc
    dec bc
    jr jr_018_791E

jr_018_7984:
    halt
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [bc], a
    jr @-$5C

    ld a, c
    add h
    ld b, $04
    ld h, h
    ret nc

    ret


    ei
    add hl, bc
    ld [de], a
    jr jr_018_795D

jr_018_799D:
    halt
    or [hl]
    add hl, hl

jr_018_79A0:
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    jr jr_018_7965

    ld a, c
    add h
    ld a, [bc]
    ld [bc], a
    and d
    ret nc

    jp z, $09FB

    inc de
    jr @-$18

    halt
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    or $4F
    inc de
    ld h, a
    ld e, h
    ld b, h
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $4017
    jp nc, $1400

    ld d, a

jr_018_79DF:
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc b
    pop hl
    ld [hl], b
    inc b
    rla
    ld b, e
    jp nc, $1100

    adc d
    ld [hl], a
    jr jr_018_7A4E

    ld a, h
    dec b
    dec b
    pop hl
    ld [hl], b
    dec b
    rla
    ld b, h
    jp nc, $1100

    adc d
    ld [hl], a
    jr jr_018_7A5D

    ld a, h
    dec b
    ld b, $E1
    ld [hl], b
    add hl, bc
    db $10
    sbc c
    pop de
    nop
    ld de, $778A
    jr jr_018_7A6C

    ld a, h
    dec b
    rlca
    pop hl
    ld [hl], b
    add hl, bc
    ld [de], a
    set 2, c
    nop
    ld de, $778A
    jr jr_018_7A7B

    ld a, h
    dec b
    ld [$70E1], sp
    ld [bc], a
    ld c, $60
    pop de
    nop
    ld de, $778A
    jr jr_018_7A8A

    ld a, h
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld a, [bc]

jr_018_7A33:
    ld c, $68
    pop de
    nop

jr_018_7A37:
    ld de, $778A
    jr jr_018_7A99

    ld a, h
    dec b
    ld a, [bc]

jr_018_7A3F:
    pop hl
    ld [hl], b
    rlca
    dec bc

jr_018_7A43:
    ld a, [de]
    pop de
    nop
    ld de, $778A
    jr jr_018_7AA8

jr_018_7A4B:
    ld a, h
    dec b
    dec bc

jr_018_7A4E:
    pop hl
    ld [hl], b
    inc b
    ld [$D0CC], sp
    nop
    ld de, $778A
    jr jr_018_7AB7

    ld a, h
    dec b
    ld [de], a

jr_018_7A5D:
    pop hl
    ld [hl], b
    dec b
    add hl, bc
    and $D0
    nop
    ld de, $778A
    jr jr_018_7AC6

    ld a, h
    dec bc
    nop

jr_018_7A6C:
    dec bc
    inc b
    dec bc
    dec b

jr_018_7A70:
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc

jr_018_7A7B:
    dec bc
    dec bc
    ld [de], a
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa

jr_018_7A8A:
    and d
    ld bc, $2BB5
    and b
    ei
    or l
    jr z, jr_018_7A33

    db $FD
    or l
    jr z, jr_018_7A37

    ei
    or l

jr_018_7A99:
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_018_7A3F

    rst $28
    or l
    jr z, jr_018_7A43

    rst $18
    or l
    jr z, @-$5E

    cp a

jr_018_7AA8:
    or l
    jr z, jr_018_7A4B

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    sbc e
    jr jr_018_7A70

jr_018_7AB7:
    ld a, d
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]

jr_018_7AC6:
    jr nz, jr_018_7B1A

jr_018_7AC8:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c

jr_018_7ACC:
    ld [hl], d
    ld [hl], h
    rst $38

jr_018_7ACF:
    jr nz, jr_018_7B16

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    jr jr_018_7B11

    ld a, h
    jr jr_018_7ACC

    ld l, b
    ld b, l
    dec d
    ld de, $781E
    jr nz, jr_018_7AF5

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b
    ld de, $778A

jr_018_7AEE:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7AF5:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld d, $02
    jr z, jr_018_7ACF

    pop bc
    ld a, [$28B5]
    and b
    db $FD
    ld b, l
    dec d
    ld de, $781E
    jr nz, jr_018_7B1B

    adc d
    ld [hl], a
    db $10
    ld de, $77DE
    ld b, b

jr_018_7B11:
    ld de, $778A

jr_018_7B14:
    nop
    nop

jr_018_7B16:
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_7B1A:
    inc b

jr_018_7B1B:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc d
    inc bc
    rst $30
    pop de
    jp nz, $B5FA

    jr z, jr_018_7AC8

    ei
    ld b, l
    dec d
    ld de, $7808
    jr z, jr_018_7B41

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld d, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7B41:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rla
    add hl, bc
    ld c, b
    jp nc, $FAC3

    or l
    jr z, jr_018_7AEE

    rst $30
    ld b, l
    dec d
    ld de, $7808
    jr jr_018_7B67

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    jr nc, jr_018_7B6F

    adc d
    ld [hl], a

jr_018_7B60:
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7B67:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc d
    ld [$D1FC], sp

jr_018_7B6F:
    call nz, $B5FA
    jr z, jr_018_7B14

    rst $28
    ld b, l
    dec d
    ld de, $77F2
    ld b, b
    ld de, $778A
    db $10
    ld de, $77B6
    add b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $07
    ld h, l
    pop de
    push bc
    ld a, [$28B5]
    and b
    rst $18
    ld b, l
    dec d
    ld de, $781E
    ld b, b
    ld de, $778A
    db $10
    ld de, $77DE
    add b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $06
    ld h, h
    pop de
    add $FA
    or l
    jr z, jr_018_7B60

    cp a
    ld b, l
    dec d
    ld de, $7808
    jr z, jr_018_7BD9

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld d, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7BD9:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    ld b, $32
    pop de
    rst $00
    ld a, [$28B5]
    and b
    ld a, a
    ld b, l
    dec d
    ld de, $77F2
    ld b, b
    ld de, $778A
    db $10
    ld de, $77B6
    add b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b

jr_018_7BFE:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [bc]
    ld [$D102], sp
    ret z

    ld a, [$29B5]
    and b
    cp $45
    dec d
    ld de, $7808
    jr nz, jr_018_7C25

    adc d
    ld [hl], a
    db $10
    ld de, $77A2
    ld b, b
    ld de, $778A
    nop
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_018_7C25:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    dec b
    jr jr_018_7BFE

    ret


    ld a, [$29B5]
    and b
    db $FD
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $18
    ld c, e
    ld a, h
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_018_7C5C

    ld a, d
    jr nz, jr_018_7CD1

    ld c, b
    jr @-$3E

jr_018_7C5C:
    ld a, c
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    jr jr_018_7CA2

    ld a, h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    or [hl]
    dec hl
    and b
    inc b
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_7CE3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_018_7CEC

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    jr @-$34

    ld a, h
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_7D13

    ld l, a
    ld l, a
    ld l, e

jr_018_7CA2:
    jr nz, jr_018_7D1D

    ld l, a
    ld [hl], l

jr_018_7CA6:
    rst $38
    db $FC
    jr nz, jr_018_7D0B

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [$0005], sp
    jr @+$08

    ld a, l
    and c
    xor l
    ld h, [hl]
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_7CA6

    ld l, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_018_7D43

    ld l, a
    ld l, a

jr_018_7CD1:
    ld l, e
    jr nz, jr_018_7D4D

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7D51

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_018_7D14

jr_018_7CE2:
    dec [hl]

jr_018_7CE3:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_7CEC:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld [hl], $A0
    ld [$0005], sp
    jr @+$08

    ld a, l
    and c
    xor l
    ld h, [hl]
    and c
    ld bc, $A132
    ld c, b
    jr jr_018_7CE2

    ld l, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_018_7D0B:
    ld bc, $A166
    jr @-$79

    ld a, l
    sbc a
    ld h, [hl]

jr_018_7D13:
    and c

jr_018_7D14:
    ld b, [hl]
    rrca
    ld bc, $A166
    dec b
    ld bc, $4B18

jr_018_7D1D:
    ld a, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7D87

    ld [hl], l
    ld [hl], d
    ld [hl], d

jr_018_7D27:
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7D84

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7DA0

    ld [hl], e
    cp $FC
    jr nz, jr_018_7D9D

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_018_7D43:
    ld l, $FE
    db $FD
    and c
    ld c, b
    jr jr_018_7D27

    ld l, b
    and [hl]
    ld d, h

jr_018_7D4D:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_018_7D51:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7DB1

    ld h, e
    ld l, a
    ld [hl], d

jr_018_7D61:
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_018_7DDF

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    jr jr_018_7D61

jr_018_7D84:
    ld l, b
    sbc a
    ld h, [hl]

jr_018_7D87:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_018_7D8E:
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_7E03

    ld h, c
    halt

jr_018_7D9D:
    ld h, l
    jr nz, jr_018_7E13

jr_018_7DA0:
    ld h, l

jr_018_7DA1:
    ld [hl], h
    jr nz, jr_018_7E05

    cp $6E
    ld h, l

jr_018_7DA7:
    ld [hl], a
    jr nz, jr_018_7DF2

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_018_7E02

    ld h, e
    ld l, a

jr_018_7DB1:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

jr_018_7DBA:
    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l

jr_018_7DC0:
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b

jr_018_7DC6:
    jr nz, jr_018_7E1B

    ld h, e

jr_018_7DC9:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_7E45

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b

jr_018_7DD9:
    ld [hl], h
    ld [hl], e

jr_018_7DDB:
    ld l, $FE
    db $FD
    and c

jr_018_7DDF:
    xor l
    ld h, [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    jr jr_018_7DC6

    ld l, b
    ld b, [hl]
    nop

jr_018_7DEC:
    jr z, jr_018_7D8E

jr_018_7DEE:
    ld [bc], a
    jr jr_018_7DF3

    ld a, [hl]

jr_018_7DF2:
    add h

jr_018_7DF3:
    ld d, $02
    jr z, jr_018_7DC9

    pop bc
    ei
    add hl, bc
    inc b
    jr jr_018_7DDB

    ld a, d
    or [hl]
    jr z, jr_018_7DA1

    ld [bc], a

jr_018_7E02:
    ld b, l

jr_018_7E03:
    ld b, [hl]
    nop

jr_018_7E05:
    jr z, jr_018_7DA7

    inc b
    jr jr_018_7E25

    ld a, [hl]

jr_018_7E0B:
    add h
    inc d
    inc bc
    rst $30

jr_018_7E0F:
    pop de
    jp nz, $09FB

jr_018_7E13:
    dec b
    jr jr_018_7E1A

    ld a, e

jr_018_7E17:
    or [hl]
    jr z, jr_018_7DBA

jr_018_7E1A:
    inc b

jr_018_7E1B:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_7DC0

    ld [$3418], sp
    ld a, [hl]
    add h

jr_018_7E25:
    rla
    add hl, bc
    ld c, b
    jp nc, $FBC3

    add hl, bc
    ld b, $18
    ld a, [hl+]
    ld a, e
    or [hl]
    jr z, @-$5E

    ld [$4645], sp
    nop
    jr z, jr_018_7DD9

    db $10
    jr jr_018_7E89

    ld a, [hl]
    add h
    inc d
    ld [$D1FC], sp
    call nz, $09FB

jr_018_7E45:
    rlca
    jr jr_018_7E98

    ld a, e
    or [hl]
    jr z, jr_018_7DEC

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_7DF2

    jr nz, jr_018_7E6C

    ld h, [hl]
    ld a, [hl]

jr_018_7E56:
    add h
    ld c, $07
    ld h, l
    pop de
    push bc
    ei
    add hl, bc
    ld [$7618], sp
    ld a, e
    or [hl]
    jr z, jr_018_7E05

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, jr_018_7E0B

    ld b, b

jr_018_7E6C:
    jr jr_018_7DEE

    ld a, [hl]
    add hl, bc
    add hl, bc
    jr jr_018_7E0F

    ld a, e
    or [hl]
    jr z, jr_018_7E17

    ld b, b
    ld c, e
    add h
    ld c, $06
    ld h, h
    pop de
    add $FB
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_018_7E25

jr_018_7E85:
    add b
    jr @-$65

    ld a, [hl]

jr_018_7E89:
    add h
    inc c
    ld b, $32
    pop de
    rst $00
    ei
    add hl, bc

jr_018_7E91:
    ld a, [bc]
    jr jr_018_7E56

    ld a, e

jr_018_7E95:
    or [hl]
    jr z, @-$5E

jr_018_7E98:
    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $B218
    ld a, [hl]
    add h
    ld a, [bc]
    ld [$D102], sp
    ret z

    ei
    add hl, bc
    dec bc
    jr jr_018_7E95

    ld a, e
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [bc], a
    jr jr_018_7E85

    ld a, [hl]
    add h
    dec bc
    dec b
    jr jr_018_7E91

    ret


    ei
    add hl, bc
    ld [de], a
    jr jr_018_7ED4

    ld a, h
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7ED4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
