; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    add h
    cp $84
    ld a, d
    add a
    cp $05
    ld [bc], a
    cp $FE
    inc bc
    inc b
    add d
    cp $2A
    dec b
    cp $FE
    ld hl, $1C19
    cp $30
    ld sp, $4532
    ld b, [hl]
    ld c, e
    ld c, h
    ld b, a
    ld c, b
    ld c, l
    ld c, [hl]
    ld c, c
    ld c, d
    ld c, a
    ld d, b
    ld c, d
    ld c, c
    ld d, b
    ld c, a
    ld c, b
    ld b, a
    ld c, [hl]
    ld c, l
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, e

jr_029_4031:
    jr nc, jr_029_4031

    ld [hl-], a
    ld sp, $FE1A
    inc e
    add hl, de
    adc h
    cp $06
    ld c, d
    ld b, $50
    inc c
    rlca
    ld [$FE82], sp
    inc l
    add hl, bc
    ld b, l
    dec c
    ld c, e
    ld [hl+], a
    rla
    dec e
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $51
    ld d, d
    ld d, a
    ld e, b
    ld d, e
    ld d, h
    ld e, c
    ld e, d
    ld d, l
    ld d, [hl]
    ld e, e
    ld e, h
    ld d, [hl]
    ld d, l
    ld e, h
    ld e, e
    ld d, h
    ld d, e
    ld e, d
    ld e, c
    ld d, d
    ld d, c
    ld e, b
    ld d, a
    inc [hl]
    inc sp
    ld [hl], $35
    rla
    dec de
    jr jr_029_4087

    adc h
    cp $04
    ld d, [hl]
    ld c, $5C
    db $10
    add d
    cp $10
    ld de, $0F12
    ld d, c
    inc de
    ld d, a
    cp $21
    add hl, de
    inc e
    nop
    ld h, [hl]

jr_029_4087:
    ld bc, $605F
    ld h, c
    add d
    ld a, d
    ld [bc], a
    ld h, d
    ld h, e
    add d
    ld a, d
    ld [bc], a
    ld h, h
    ld h, l
    add d
    ld a, d
    ld [bc], a
    ld h, l
    ld h, h
    add d
    ld a, d
    ld [bc], a
    ld h, e
    ld h, d
    add d
    ld a, d
    ld [bc], a
    ld h, c
    ld h, b
    add d
    ld a, d
    ld [$3738], sp
    ld e, a
    ld bc, $FE1A
    inc e
    add hl, de
    adc h
    cp $02
    ld h, l
    ld h, h
    add d
    ld a, d
    ld [bc], a
    ld a, [bc]
    dec bc
    add d
    ld a, d
    ld [bc], a
    ld h, c
    ld h, b
    add d
    ld a, d
    dec b
    ld [hl+], a
    rla
    dec e
    rra
    ld e, [hl]
    add e
    ld a, d
    ld bc, $845F
    ld a, d
    ld a, [bc]
    ld e, a
    ld a, d
    ld a, d
    inc h
    dec h
    ld h, $27
    inc d
    ld a, d
    dec d
    add d
    ld a, d
    add hl, bc
    inc d
    ld a, d
    dec d
    dec h
    inc h
    daa
    ld h, $7A
    ld e, [hl]
    add d
    ld a, d
    inc b
    rla
    dec de
    jr jr_029_4100

    adc a
    cp $05
    dec b
    cp $FE
    inc b
    inc bc
    add d
    cp $2A
    ld [bc], a
    cp $39
    ld a, [hl-]
    ccf
    ld b, b
    dec sp
    inc a
    ld b, c
    ld b, d
    dec a

jr_029_4100:
    ld a, $43
    ld b, h
    scf
    jr c, jr_029_413F

    ld a, [hl-]
    jr z, jr_029_4132

    cp $2C
    ld a, [hl+]
    dec hl
    dec l
    ld l, $2B
    ld a, [hl+]
    ld l, $2D
    add hl, hl
    jr z, @+$2E

    cp $38
    scf
    ld e, a
    ld bc, $3738
    ld e, l
    ld bc, $FE8C
    ld b, $45
    add hl, bc
    ld c, e
    dec c
    ld [$8207], sp
    cp $1A
    ld b, $4A
    inc c
    ld d, b
    ld a, $3D
    ld b, h

jr_029_4132:
    ld b, e
    inc a
    dec sp
    ld b, d
    ld b, c
    ld a, [hl-]
    add hl, sp
    ld b, b
    ccf
    inc a
    dec sp
    ld a, $3D

jr_029_413F:
    inc [hl]
    inc sp
    ld [hl], $35
    cp $2F
    add d
    cp $01
    cpl
    add e
    cp $82
    ld h, a
    add d
    ld l, b
    ld [$6600], sp
    ld bc, $005D
    ld h, [hl]
    ld bc, $8C5F
    cp $04
    ld d, c
    rrca
    ld d, a
    inc de
    add d
    cp $2E
    ld [de], a
    ld de, $560E
    db $10
    ld e, h
    ld a, a
    nop
    ld bc, $0002
    ld a, a
    ld [bc], a
    ld bc, $3433
    dec [hl]
    ld [hl], $38
    scf
    ld a, [hl-]
    add hl, sp
    dec hl
    inc l
    dec l
    ld l, $2C
    dec hl
    ld l, $2D
    dec de
    inc e
    rra
    jr nz, @+$1F

    ld e, $21
    ld [hl+], a
    ld e, $1D
    ld [hl+], a
    ld hl, $1B1C
    jr nz, jr_029_41AF

    adc h
    cp $02
    ld h, b
    ld h, c
    add d
    ld a, d
    ld [bc], a
    dec bc
    ld a, [bc]
    add d
    ld a, d
    ld [bc], a
    ld a, c
    ld h, l
    add d
    ld a, d
    jr z, jr_029_421E

    ld a, h
    ld a, l
    ld a, [hl]
    ld a, h
    ld a, e
    ld a, [hl]
    ld a, l
    ld a, b
    ld l, a
    ld a, d
    ld a, c
    dec sp

jr_029_41AF:
    inc a
    dec a
    ld a, $2F
    jr nc, jr_029_41E6

    ld [hl-], a
    jr nc, jr_029_41E7

    ld [hl-], a
    ld sp, $2423
    daa
    jr z, jr_029_41E4

    ld h, $29
    ld a, [hl+]
    ld h, $25
    ld a, [hl+]
    add hl, hl
    inc h
    inc hl
    jr z, jr_029_41F1

    adc h
    cp $03
    ld e, a
    ld a, d
    inc d
    add d
    ld a, d
    ld b, $5F
    ld a, d
    inc d
    ld l, a
    ld a, b
    ld a, c
    add e
    ld a, d
    ld a, [bc]
    ld l, d
    ld l, c
    inc b
    inc bc
    ld b, $05
    ld [hl], c
    ld [hl], b

jr_029_41E4:
    ld [hl], e
    ld [hl], d

jr_029_41E6:
    add d

jr_029_41E7:
    ld a, d
    ld a, [de]
    ld l, c
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc bc
    inc b

jr_029_41F1:
    dec b
    ld b, $0E
    dec c
    ld [de], a
    ld de, $0B0C
    db $10
    rrca
    dec bc
    inc c
    rrca
    db $10
    dec c
    ld c, $11
    ld [de], a
    adc h
    cp $34
    ld h, l
    ld h, h
    inc d
    ld a, d
    ld h, h
    ld h, l
    ld a, d
    inc d
    ld h, d
    ld h, e
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, [hl]
    ld l, l
    ld [$0A07], sp
    add hl, bc
    ld [hl], l
    ld [hl], h
    ld [hl], a
    halt

jr_029_421E:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    rlca
    ld [$0A09], sp
    ld d, $15
    ld a, [de]
    add hl, de
    inc d
    inc de
    jr jr_029_4249

    inc de
    inc d
    rla
    jr jr_029_424C

    ld d, $19
    ld a, [de]
    adc h
    cp $03
    ld a, e
    inc d
    ld a, l
    add d
    inc d
    dec bc
    ld a, e
    inc d
    ld a, l
    inc d
    ld a, h
    inc d

jr_029_4249:
    ld a, [hl]
    ccf
    ld b, b

jr_029_424C:
    ld b, c
    ld b, d
    add d
    ld a, d
    ld a, [bc]
    ld b, e
    ld b, h
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, d
    ld c, c
    ld c, h
    ld c, e
    add d
    ld a, d
    ld b, $44
    ld b, e
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    add d

jr_029_4265:
    ld a, d
    ld a, [bc]
    ld d, l
    ld d, [hl]
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, h
    ld e, e
    ld e, [hl]
    ld e, l
    add d
    ld a, d
    ld [bc], a
    ld d, [hl]
    ld d, l
    sbc b
    cp $28
    ld b, b
    ccf
    ld b, d
    ld b, c
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_029_4285:
    ld c, [hl]
    ld c, l
    ld d, b
    ld c, a
    ld b, [hl]
    ld b, l
    ld c, b
    ld b, a
    ld d, d
    ld d, c
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, b
    ld e, a

jr_029_429B:
    ld h, d
    ld h, c
    ld e, b
    ld d, a

jr_029_429F:
    ld e, d
    ld e, c
    sbc b
    cp $01
    inc d

jr_029_42A5:
    add h
    ld a, d
    rrca
    inc d

jr_029_42A9:
    ld a, d
    ld a, d
    ld e, [hl]
    ld a, d

jr_029_42AD:
    ld l, e
    ld l, h
    dec de
    inc e

jr_029_42B1:
    rra
    jr nz, jr_029_42D1

    ld e, $21
    ld [hl+], a

jr_029_42B7:
    adc b
    cp $08
    ld h, e

jr_029_42BB:
    ld h, h
    ld h, a

jr_029_42BD:
    ld l, b
    ld h, l

jr_029_42BF:
    ld h, [hl]
    ld l, c
    ld l, d
    add d
    ld a, d
    ld [bc], a
    ld l, e
    ld l, h
    or h
    cp $0C

jr_029_42CA:
    ld l, l
    ld l, [hl]

jr_029_42CC:
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], b

jr_029_42D0:
    ld [hl], l

jr_029_42D1:
    ld [hl], h

jr_029_42D2:
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b

jr_029_42D6:
    ret nz

    add b
    cp $84
    ld l, b
    add h
    jr z, jr_029_4265

jr_029_42DE:
    ld l, b
    inc bc
    nop
    ld l, b
    ld l, b
    add d
    nop

Jump_029_42E5:
    add d
    ld l, b
    inc bc
    nop
    ld l, b
    ld l, b
    add e
    nop
    ld bc, $8F68
    nop
    adc l
    jr nz, jr_029_42F5

    ld l, b

jr_029_42F5:
    add e
    jr nz, jr_029_42FB

    ld l, b
    jr nz, @+$22

jr_029_42FB:
    adc h
    ld l, b

jr_029_42FD:
    inc bc
    jr nz, jr_029_4300

jr_029_4300:
    jr nz, jr_029_4285

jr_029_4302:
    nop
    add d
    ld l, b
    inc b
    nop
    jr nz, jr_029_4309

jr_029_4309:
    jr nz, jr_029_429F

    nop
    sub h
    jr nz, jr_029_429B

    ld l, b
    inc b
    jr nz, jr_029_4313

jr_029_4313:
    jr nz, jr_029_4315

jr_029_4315:
    add d

jr_029_4316:
    ld l, b
    add e
    nop
    inc b
    jr nz, jr_029_431C

jr_029_431C:
    jr nz, @+$6A

    add e
    nop

jr_029_4320:
    add h
    jr nz, jr_029_42A5

    nop
    add d
    jr z, jr_029_42A9

    nop
    add d
    jr z, jr_029_42AD

    nop
    add d
    jr z, jr_029_42B1

jr_029_432F:
    jr nz, @-$7C

    jr z, @-$7C

    jr nz, jr_029_42B7

    jr z, @-$7C

    jr nz, jr_029_42BB

    jr z, jr_029_42BD

    jr nz, jr_029_42BF

    nop
    ld [bc], a
    jr nz, jr_029_43A9

    add d

jr_029_4342:
    jr nz, jr_029_42D0

    ld l, b
    add d
    jr nz, jr_029_42CA

    jr z, jr_029_42CC

    nop
    add d
    jr z, jr_029_42D0

    jr nz, jr_029_42D2

jr_029_4350:
    jr z, jr_029_42D6

    nop
    ld bc, $8320
    jr z, @+$03

    jr nz, jr_029_42DE

    jr z, jr_029_435F

    nop
    jr z, @+$2A

jr_029_435F:
    add l
    nop
    ld [bc], a
    jr z, jr_029_4364

jr_029_4364:
    add d
    jr z, jr_029_4369

    jr nz, jr_029_4391

jr_029_4369:
    add l
    jr nz, jr_029_436E

    jr z, jr_029_436E

jr_029_436E:
    add d

jr_029_436F:
    jr z, jr_029_42F5

    jr nz, jr_029_4302

    ld l, b
    inc bc
    jr nz, jr_029_43DF

jr_029_4377:
    ld l, b
    add d
    jr nz, jr_029_42FD

    ld l, b
    ld [bc], a
    jr nz, @+$6A

    adc h
    nop
    add h
    dec bc
    add d
    nop
    ld bc, $8568
    nop

jr_029_4389:
    add a
    jr nz, jr_029_438F

    ld l, b

jr_029_438D:
    jr nz, @+$22

jr_029_438F:
    add d
    nop

jr_029_4391:
    add d
    jr nz, jr_029_4316

    nop

jr_029_4395:
    adc h
    ld l, b
    inc bc
    nop
    jr nz, jr_029_439B

jr_029_439B:
    add e
    jr nz, jr_029_4320

    ld l, b
    inc b
    jr nz, jr_029_43A2

jr_029_43A2:
    jr nz, jr_029_43A4

jr_029_43A4:
    adc h
    jr nz, jr_029_432F

    dec hl
    ld [bc], a

jr_029_43A9:
    ld l, b
    nop

jr_029_43AB:
    add d
    ld l, b

jr_029_43AD:
    ld bc, $8320
    ld l, b
    inc b
    ld hl, $2101
    ld bc, $2088
    adc h
    ld l, b
    inc b
    nop

jr_029_43BC:
    jr nz, jr_029_43BE

jr_029_43BE:
    jr nz, jr_029_4342

    ld l, b

jr_029_43C1:
    add e
    jr nz, @+$04

    nop
    jr nz, @-$7C

    nop
    add e
    ld [$2802], sp
    jr nz, jr_029_4350

    jr z, @-$7A

    dec bc
    add h
    dec hl
    add h
    adc e
    add h
    xor e
    adc b
    adc e
    adc b
    xor e
    adc h
    ld l, b
    add d
    nop

jr_029_43DF:
    add d
    jr z, jr_029_4364

    jr nz, @-$7C

    jr z, @+$04

    ld [$8200], sp
    jr z, jr_029_436F

    nop
    adc b
    jr nz, jr_029_4377

    dec bc
    add h
    dec hl
    adc b
    dec bc
    adc b
    dec hl
    adc h
    ld l, b
    inc bc
    jr nz, jr_029_4423

    nop
    add d
    jr z, jr_029_4402

    nop
    jr z, jr_029_4422

jr_029_4402:
    add h
    nop
    add d
    jr z, jr_029_4389

    jr nz, jr_029_438D

    jr z, jr_029_438F

    jr nz, jr_029_438F

    jr z, jr_029_4395

    nop
    add h
    ld [$2888], sp
    adc b
    ld [$688C], sp
    add d
    jr nz, @+$04

    nop
    ld [$0082], sp
    ld [bc], a
    jr z, jr_029_4442

jr_029_4422:
    add h

jr_029_4423:
    nop
    add h
    jr nz, jr_029_43AB

    jr z, jr_029_43AD

    jr nz, @-$76

    nop
    add h
    ld [$2888], sp
    adc b
    ld [$688C], sp
    add h
    jr nz, jr_029_43BC

    nop
    inc bc
    jr nz, jr_029_443B

jr_029_443B:
    jr nz, jr_029_43C1

    inc c
    add d
    xor b
    add [hl]
    adc h

jr_029_4442:
    add h
    xor h
    add d
    xor b
    add d
    xor h
    ld [bc], a
    adc h
    adc b
    add d
    adc h
    add d
    xor b
    add [hl]
    adc h
    add h
    xor h
    add d
    xor b
    add d
    xor h
    sbc b
    ld l, b
    add h
    inc l
    adc b
    inc c
    adc b
    inc l
    ld bc, $8328
    inc l
    adc b
    inc c
    adc b
    inc l
    sbc b
    ld l, b
    ld bc, $8400
    jr z, jr_029_4473

    jr nz, @+$2A

    jr z, jr_029_4492

    xor b

jr_029_4473:
    add d
    adc l
    adc b
    dec bc
    adc b
    ld l, b
    adc b
    adc l
    add d
    xor b
    add d
    adc l
    or h
    ld l, b
    adc h
    dec c
    ret nz

    add b
    ld l, b
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld a, [bc]
    nop
    dec b
    ld bc, $A91E
    dec l

jr_029_4492:
    ld bc, $941E
    dec l
    ld [bc], a
    ld e, $2F
    adc e
    inc d
    ld bc, $87CE
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add h
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add [hl]
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    ld bc, $852F
    inc d
    inc b
    add hl, bc
    dec bc
    inc d
    ld a, [hl-]
    add l
    inc h
    ld bc, $853B
    inc d
    add d
    cpl
    add hl, bc
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    ld a, [hl-]
    dec sp
    add d
    inc d
    ld bc, $84DE
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc d
    add hl, hl
    dec hl
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add h
    inc d
    dec b
    add hl, hl
    dec hl
    inc d
    ld a, [hl-]
    dec sp
    add e
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add d
    inc d
    ld a, [bc]
    cpl
    inc d
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add hl, hl
    dec hl
    ld a, [hl-]
    dec h
    add l
    ld c, l
    ld b, $23
    dec sp
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add d
    cpl
    add hl, bc
    inc d
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    inc d
    ld c, d
    ld c, e
    add d
    inc d
    rlca
    xor $14
    add hl, bc
    dec bc
    inc d
    ld c, d
    ld c, e
    adc c
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add e
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add a
    inc d
    dec d
    cpl
    inc d
    inc d
    ld c, d
    ld c, e
    inc d
    ld c, $14
    ld c, d
    dec b
    ccf
    ld e, a
    rla
    ld a, l
    rla
    ld c, h
    inc de
    inc d
    ld c, d
    ld c, e
    inc d
    add d
    cpl
    add l
    inc d
    ld a, [bc]
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    ld c, $14
    add hl, hl
    dec hl
    add l
    inc d
    ld bc, $843A
    inc h
    inc b
    dec sp
    inc d
    ld c, d
    ld c, e
    add l
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add l
    inc d
    inc de
    cpl
    db $DB
    call c, $1DDD
    dec l
    ld e, $1F
    inc d
    ld c, d
    dec b
    ccf
    rla
    rst $38
    rla
    ld c, h
    inc de
    add hl, bc
    dec bc
    add d
    inc d
    add d
    cpl
    add d
    inc h
    ld a, [bc]
    dec sp
    inc d
    inc d
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    inc d
    cpl
    add l
    inc d
    inc b
    ld c, $14
    ld a, [hl-]
    dec h
    add h
    ld c, l
    ld [bc], a
    inc hl
    dec sp
    add e
    inc d
    ld bc, $830E
    inc d
    inc b
    add hl, hl
    dec hl
    inc d
    ld c, $83
    inc d
    ld bc, $852F
    inc d
    ld bc, $832F
    inc d
    dec c
    ld c, d
    dec b
    ccf
    rla
    ld e, h
    ld c, h
    inc de
    add hl, hl
    dec hl
    ld a, [hl-]
    dec sp
    cpl
    ld l, $82
    ld c, l
    ld [bc], a
    inc hl
    dec sp
    add [hl]
    inc d
    ld [bc], a
    dec e
    ld e, $85
    dec l
    ld c, $1E
    rra
    dec d
    dec a
    ld a, l
    ld a, [hl]
    ld a, a
    rla
    ld c, h
    inc de
    add hl, bc
    dec bc
    dec e
    ld e, $86
    dec l
    ld [bc], a
    ld e, $1F
    add d
    inc d
    inc b
    cpl
    inc d
    ld a, [hl-]
    dec sp
    add d
    inc d
    rlca
    cpl
    inc d
    ld a, [hl-]
    dec sp
    inc d
    ld c, d
    dec b
    add d
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add d
    inc d
    ld [$4B4A], sp
    cpl
    ld a, e
    rla
    ld e, h
    ld c, h
    inc de
    add h
    inc d
    inc b
    add hl, bc
    dec bc
    inc d
    cpl
    add e
    inc d
    ld [de], a
    add hl, bc
    dec bc
    cpl
    inc d
    dec d
    dec a
    adc l
    adc [hl]
    rst $38
    rla
    ld c, h
    inc de
    add hl, hl
    dec hl
    inc d
    ld l, $09
    dec bc
    add h
    inc d
    ld c, $2E
    db $EB
    db $EC
    db $ED
    ld l, $14
    ld c, d
    ld c, e
    ld c, $14
    cpl
    inc d
    ld c, d
    ld c, e
    add d
    inc d
    ld b, $4A
    inc b
    inc b
    ld c, e
    inc d
    inc d
    dec bc
    ld c, $14
    inc d
    cpl
    adc d
    ld l, l
    rla
    ld c, h
    inc de
    inc d
    ld c, $82
    inc d
    dec c
    add hl, hl
    dec hl
    inc d
    cpl
    inc d
    ld a, [hl-]
    dec sp
    add hl, hl
    dec hl
    cpl
    inc d
    ld c, d
    dec b
    add h
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add e
    inc d
    dec b
    rst $08
    add hl, hl
    dec hl
    inc d
    ld a, [hl-]
    add h
    inc h
    add hl, bc
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    dec e
    ld e, $2D
    ld e, $8B
    dec l
    dec bc
    ld e, $1F
    inc d
    cpl
    ld l, d
    rla
    rst $38
    ld c, h
    inc de
    dec e
    ld e, $85
    dec l
    inc b
    ld e, $1F
    ld c, d
    ld c, e
    add d
    inc d
    inc b
    cpl
    add hl, bc
    dec bc
    ld c, d
    add h
    inc b
    ld b, $4B
    inc d
    ld a, [hl-]
    dec sp
    inc d
    rst $18
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec h
    add h
    ld c, l
    inc b
    inc hl
    dec sp
    add hl, hl
    dec hl
    add d
    inc d
    dec b
    cpl
    inc d
    ld l, $3A
    dec sp
    add d
    inc d
    ld [$243A], sp
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    cpl
    add d
    inc d
    ld [$6B2F], sp
    rla
    adc a
    ld c, h
    inc de
    inc d
    cpl
    add l
    inc d
    ld bc, $852E
    inc d
    inc bc
    cpl
    add hl, hl
    dec hl
    add l
    inc d
    ld b, $0E
    inc d
    ld c, d
    ld c, e
    inc d
    rst $28
    add d
    inc d
    ld a, [bc]
    dec d
    dec a
    adc e
    adc h
    adc l
    rla
    ld c, [hl]
    inc hl
    dec sp
    ld c, $82
    inc d
    rrca
    cpl
    inc d
    inc d
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec h
    ld c, l
    inc hl
    dec sp
    add hl, hl
    dec hl
    dec e
    ld e, $82
    dec l
    ld [bc], a
    ld e, $0E
    add d
    inc a
    db $10
    inc bc
    ld c, e
    inc d
    cpl
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    ld a, [hl-]
    dec sp
    inc d
    dec e
    ld e, $87
    dec l
    ld bc, $861E
    dec l
    inc bc
    rra
    dec d
    dec a
    add d
    rla
    ld b, $7C
    rst $38
    rla
    ld c, h
    dec e
    ld e, $82
    dec l
    ld [bc], a
    ld e, $1F
    add e
    inc d
    rlca
    ld a, [hl-]
    dec h
    ld c, a
    ld l, a
    ld c, [hl]
    inc hl
    dec sp
    add d
    inc d
    inc bc
    ld l, $3A
    dec sp
    add d
    cpl
    add d
    inc b
    dec c
    ld c, e
    add hl, bc
    dec bc
    cpl
    inc d
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    inc d
    ld c, d
    ld c, e
    add d
    inc d
    ld bc, $842E
    inc d
    add hl, bc
    add hl, bc
    dec bc
    inc d
    ld l, $14
    add hl, bc
    dec bc
    inc d
    rst $08
    add d
    inc d
    inc bc
    ld c, d
    dec b
    ccf
    add e
    rla
    inc b
    ld e, h
    ld c, h
    inc de
    ld l, $82
    inc d
    ld bc, $842E
    inc d
    ld [bc], a
    dec d
    dec a
    add e
    rla
    rlca
    ld c, h
    inc de
    ld a, [hl-]
    dec sp
    inc d
    ld c, d
    ld c, e
    add d
    cpl
    add e
    inc d
    inc bc
    add hl, hl
    dec hl
    cpl
    add d
    inc d
    ld bc, $853A
    inc h
    ld a, [bc]
    dec sp
    inc d
    inc d
    rst $08
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add hl, hl
    dec hl
    add e
    inc d
    inc b
    add hl, hl
    dec hl
    inc d
    rst $18
    add e
    inc d
    ld [bc], a
    ld c, d
    dec b
    add h
    inc a
    ld b, $03
    ld c, e
    inc d
    add hl, bc
    dec bc
    rst $08
    add h
    inc d
    add hl, bc
    dec d
    dec a
    ld e, h
    ld e, l
    ld e, [hl]
    ld c, h
    inc de
    ld c, d
    ld c, e
    add e
    inc d
    add d
    cpl
    inc bc
    inc d
    add hl, bc
    dec bc
    add d
    inc d
    inc b
    ld l, $14
    ld a, [hl-]
    dec h
    add l
    ld c, l
    ld a, [bc]
    inc hl
    dec sp
    inc d
    rst $18
    inc d
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec sp
    add [hl]
    inc d
    ld b, $EF
    inc d
    inc d
    ld a, [hl-]
    dec sp
    ld c, d
    add h
    inc b
    ld d, $4B
    inc d
    inc d
    add hl, hl
    dec hl
    rst $18
    inc d
    ld a, [hl-]
    dec sp
    inc d
    dec d
    dec a
    rla
    rst $38
    rla
    ld c, [hl]
    inc hl
    dec sp
    inc d
    add hl, bc
    dec bc
    inc d
    add d
    cpl
    inc bc
    inc d
    add hl, hl
    dec hl
    add d
    inc d
    dec c
    adc $14
    dec d
    dec a
    ld l, l
    ld l, [hl]
    rla
    ld a, h
    rla
    ld c, h
    inc de
    inc d
    rst $28
    add h
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add e
    inc d
    inc b
    add hl, bc
    dec bc
    inc d
    ld c, $82
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    add hl, bc
    dec bc
    add e
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    rlca
    rst $28
    inc d
    ld c, d
    ld c, e
    inc d
    dec d
    dec a
    add d
    rla
    ld [$178B], sp
    ld c, [hl]
    inc hl
    dec sp
    add hl, hl
    dec hl
    inc d
    add d
    cpl
    ld [bc], a
    ld a, [hl-]
    dec sp
    add e
    inc d
    ld b, $DE
    inc d
    dec d
    dec a
    ld a, l
    ld a, [hl]
    add d
    rla
    ld [$4CFF], sp
    inc de
    inc d
    ld c, $14
    add hl, bc
    dec bc
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    inc b
    add hl, hl
    dec hl
    inc d
    cpl
    add l
    inc d
    rlca
    add hl, hl
    dec hl
    inc d
    add hl, bc
    dec bc
    ld c, d
    ld c, e
    add d
    inc d
    ld bc, $840E
    inc d
    inc bc
    ld c, d
    dec b
    ccf
    add d
    rla
    inc b
    ld l, [hl]
    rla
    ld c, h
    inc de
    add e
    inc d
    add d
    cpl
    add hl, bc
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec sp
    xor $14
    ld c, d
    dec b
    add l
    inc a
    rlca
    inc bc
    ld c, e
    inc d
    cpl
    inc d
    add hl, hl
    dec hl
    add d
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    add hl, bc
    dec bc
    add d
    inc d
    inc b
    cpl
    inc d
    add hl, bc
    dec bc
    add d
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc d
    add hl, hl
    dec hl
    add h
    inc d
    ld [$3A2F], sp
    dec sp
    add hl, bc
    dec bc
    inc d
    ld c, d
    dec b
    add h
    inc a
    dec b
    inc bc
    ld c, e
    ld a, [hl-]
    dec sp
    inc d
    add d
    cpl
    add e
    inc d
    inc bc
    ld c, d
    ld c, e
    ld c, $82
    inc d
    ld bc, $854A
    inc b
    inc b
    ld c, e
    inc d
    inc d
    cpl
    adc b
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    inc d
    inc b
    cpl
    inc d
    add hl, hl
    dec hl
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add a
    inc d
    dec b
    cpl
    ld c, d
    ld c, e
    add hl, hl
    dec hl
    add d
    inc d
    ld bc, $844A
    inc b
    rlca
    ld c, e
    inc d
    ld c, d
    ld c, e
    inc d
    cpl
    ld e, $85
    dec l
    ld bc, $8B1E
    dec l
    ld bc, $8C1E
    dec l
    ld bc, $8E1E
    dec l
    ld bc, $901E
    dec l
    ld bc, $001E
    dec l
    adc h
    ld a, [bc]
    xor l
    nop
    ld bc, $A608
    nop
    ld bc, $8508
    nop
    ld bc, $A608
    nop
    ld bc, $8508
    nop
    ld bc, $8708
    nop
    ld bc, $8508
    nop
    inc bc
    ld [$C2C1], sp
    add h
    nop
    add e
    ld [$0083], sp
    ld bc, $8308
    nop
    ld bc, $8408
    nop
    inc b
    ld [$0000], sp
    ld [$0088], sp
    add h
    ld [$0001], sp
    add l
    ld [$0083], sp
    add h
    ld [$0004], sp
    ld [$08D6], sp
    add l
    nop
    dec b
    ld [$C300], sp
    call nz, $8208
    nop
    ld bc, $8908
    nop
    inc bc
    ld [$08D6], sp
    add e
    nop
    ld [bc], a
    ret nz

    pop bc
    add e
    nop
    add e
    ld [$C10B], sp
    jp nz, $D600

    ld [$0800], sp
    nop
    jp nz, $00C3

    adc c
    ld [$0004], sp
    ld [$0800], sp
    add a
    nop
    add [hl]
    ld [$0007], sp
    ld [$0800], sp
    sub $08
    nop
    add [hl]
    ld [$0001], sp
    add h
    ld [$0002], sp
    ld [$0084], sp
    ld [$C4C3], sp
    nop
    ld [$0800], sp
    nop
    ld [$0088], sp
    ld bc, $8508
    nop
    ld bc, $8308
    nop
    dec b
    ld [$0000], sp
    pop bc
    jp nz, $0087

    ld [bc], a
    ld [$8400], sp
    ld [$0009], sp
    ld [$0008], sp
    ld [$0800], sp
    sub $08
    add a
    nop
    add d
    ld [$0005], sp
    ld [$0800], sp
    nop
    add l
    ld [$D601], sp
    adc c
    ld [$0002], sp
    ld [$0084], sp
    rlca
    ld [$0000], sp
    ld [$0800], sp
    nop
    add e
    ld [$0087], sp
    ld bc, $83D6
    ld [$0004], sp
    ld [$0800], sp
    add e
    nop
    add e
    ld [$0003], sp
    ld [$8208], sp
    nop
    inc b
    ld [$0800], sp
    nop
    add d
    ld [$0003], sp
    ld [$8200], sp
    ld [$0004], sp
    ld [$0800], sp
    adc d
    nop
    inc de
    ret nz

    ld [$C008], sp
    ld [$08C0], sp
    ret nz

    ld [$08C1], sp
    pop bc
    ld [$00C1], sp
    pop bc
    jp nz, $C208

    add e
    nop
    inc bc
    ld [$C3C2], sp
    add d
    nop
    rlca
    ld [$C300], sp
    ld [$08C3], sp
    call nz, $0886
    add l
    nop
    ld [$00C5], sp
    nop
    push bc
    nop
    push bc
    nop
    push bc
    add d
    add $04
    ld [$00C6], sp
    add $82
    ld [$C703], sp
    ld [$84C7], sp
    ld [$C701], sp
    add l
    ld [$C805], sp
    ld [$08C8], sp
    ret


    adc h
    nop
    adc e
    ld [$0008], sp
    ld [$C608], sp
    rst $00
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [$0800], sp
    add e
    nop
    ld bc, $8308
    nop
    add a
    ld [$0087], sp
    ld bc, $8508
    nop
    ld [bc], a
    push bc
    add $85
    nop
    add h
    ld [$000A], sp
    ld [$0008], sp
    ld [$0800], sp
    sub $08
    nop
    add l
    ld [$0084], sp
    ld bc, $8808
    nop
    inc bc
    ld [$0000], sp
    add e
    ld [$0001], sp
    add l
    ld [$0082], sp
    ld [bc], a
    add $C7
    add e
    nop
    inc b
    ld [$0800], sp
    nop
    add e
    ld [$0002], sp
    ld [$0083], sp
    ld [bc], a
    ld [$8200], sp
    ld [$0002], sp
    ld [$0088], sp
    ld [$0008], sp
    nop
    ld [$08D6], sp
    nop
    ld [$0083], sp
    ld [bc], a
    ld [$8200], sp
    ld [$0003], sp
    ld [$8200], sp
    ld [$0004], sp
    ld [$C8C7], sp
    add e
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0082], sp
    ld [bc], a
    ld [$8200], sp
    ld [$0087], sp
    inc b
    ld [$0000], sp
    ld [$0083], sp
    dec b
    ld [$0800], sp
    nop
    ld [$0082], sp
    inc bc
    ld [$0800], sp
    add h
    nop
    inc bc
    ld [$C8C7], sp
    add h
    ld [$0003], sp
    ld [$8200], sp
    ld [$0002], sp
    ld [$008A], sp
    inc bc
    ld [$0000], sp
    add d
    ld [$0006], sp
    ld [$0008], sp
    ld [$8400], sp
    ld [$0001], sp
    add e
    ld [$0001], sp
    add e
    ld [$0002], sp
    ld [$0084], sp
    inc bc
    ld [$C9C8], sp
    add d
    nop
    ld bc, $8908
    nop
    inc bc
    push bc
    ld [$82C5], sp
    nop
    dec c
    ld [$C5C5], sp
    add $00
    ld [$08C6], sp
    sub $00
    add $C7
    ld [$C782], sp
    inc c
    nop
    rst $00
    rst $00
    ld [$08C8], sp
    ret z

    ld [$00C8], sp
    ld [$8200], sp
    ld [$C901], sp
    add l
    ld [$0085], sp
    inc bc
    jp z, $CA08

    add e
    ld [$CA82], sp
    add e
    ld [$CB01], sp
    add a
    ld [$CC02], sp
    ld [$CC82], sp
    ld b, $08
    call $CD08
    ld [$84CD], sp
    ld [$0002], sp
    adc $8B
    nop
    ld bc, $8308
    nop
    ld b, $08
    nop
    jp z, $00CB

    ld [$0084], sp
    dec b
    set 1, h
    sub $08
    nop
    add h
    ld [$0083], sp
    dec b
    ld [$0000], sp
    sub $08
    add d
    nop
    add l
    ld [$0087], sp
    adc b
    ld [$0001], sp
    adc c
    ld [$0002], sp
    ld [$0082], sp
    adc c
    ld [$0083], sp
    ld bc, $8A08
    nop
    ld bc, $8308
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    ld bc, $8308
    nop
    ld [bc], a
    set 1, h
    add e
    nop
    dec b
    ld [$0000], sp
    call z, $86CD
    nop
    add e
    ld [$0001], sp
    add h
    ld [$0087], sp
    inc b
    ld [$0800], sp
    nop
    add d
    ld [$CA02], sp
    res 0, h
    nop
    add [hl]
    ld [$0001], sp
    adc d
    ld [$0006], sp
    call $08CE
    nop
    ld [$008A], sp
    inc bc
    ld [$0800], sp
    add d
    nop
    add [hl]
    ld [$0007], sp
    ld [$00D6], sp
    ld [$0800], sp
    add h
    nop
    ld b, $CC
    call $0800
    nop
    sub $83
    ld [$0003], sp
    ld [$8400], sp
    ld [$0087], sp
    inc bc
    ld [$0800], sp
    add e
    nop
    ld [bc], a
    jp z, $82CB

    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0006], sp
    ld [$0800], sp
    nop
    ld [$0082], sp
    ld bc, $8508
    nop
    dec b
    ld [$CD00], sp
    adc $08
    add d
    nop
    inc bc
    ld [$0800], sp
    add [hl]
    nop
    inc bc
    jp z, $CA08

    add h
    ld [$CA06], sp
    rrc b
    sub $08
    res 0, d
    nop
    inc bc
    set 1, h
    call z, $0082
    add [hl]
    ld [$CD01], sp
    add e
    ld [$CD01], sp
    add h
    ld [$CE02], sp
    ld [$0082], sp
    ld bc, $85CE
    nop
    ld [$08CF], sp
    rst $08
    ld [$00D6], sp
    ld [$84CF], sp
    ld [$D001], sp
    add e
    ld [$D182], sp
    add e
    ld [$0082], sp
    add hl, bc
    pop de
    jp nc, $D208

    nop
    ld [$D200], sp
    ld [$0082], sp
    ld [bc], a
    ld [$83D3], sp
    ld [$D301], sp
    add [hl]
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0082], sp
    ld [bc], a
    rst $08
    ret nc

    add h
    nop
    ld [$0008], sp
    ld [$D600], sp
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [$0800], sp
    add l
    nop
    inc b
    jp nc, $D6D3

    ld [$0082], sp
    ld [bc], a
    ld [$87D6], sp
    nop
    inc bc
    ld [$0000], sp
    add l
    ld [$0001], sp
    add h
    ld [$0001], sp
    add h
    ld [$0006], sp
    ld [$0008], sp
    ld [$8B00], sp
    ld [$0001], sp
    add e
    ld [$0086], sp
    add d
    ld [$0085], sp
    inc b
    ld [$0800], sp
    sub $83
    nop
    ld [bc], a
    ret nc

    pop de
    add [hl]
    nop
    ld bc, $8708
    nop
    ld [bc], a
    jp nc, $82D3

    nop
    ld bc, $8B08
    nop
    add a
    ld [$0001], sp
    add h
    ld [$0001], sp
    add l
    ld [$0007], sp
    ld [$0800], sp
    nop
    ld [$8700], sp
    ld [$0003], sp
    ld [$8300], sp
    ld [$008C], sp
    ld [bc], a
    sub $08
    add d
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0085], sp
    add e
    ld [$0005], sp
    ld [$0800], sp
    sub $82
    nop
    ld [bc], a
    jp nc, $82D3

    nop
    inc bc
    ld [$0800], sp
    adc c
    nop
    add a
    ld [$0082], sp
    ld bc, $8308
    nop
    inc bc
    ld [$0800], sp
    add l
    nop
    inc b
    pop de
    jp nc, RST_08

    add a
    ld [$0004], sp
    ld [$0800], sp
    add a
    nop
    ld bc, $8708
    nop
    ld bc, $8608
    nop
    ld [bc], a
    ld [$8900], sp
    ld [$0085], sp
    inc bc
    jp nc, $08D3

    add l
    nop
    ld bc, $8508
    nop
    ld bc, $C408
    ld h, a
    nop
    nop
    add h
    add b
    sbc l
    ld a, [de]
    inc bc
    ld b, $07
    ld [$1A8C], sp
    db $10
    ld b, $1A
    ld [$0007], sp
    ld bc, $1110
    dec b
    inc bc
    ld [de], a

jr_029_4D5E:
    ld c, $01
    nop
    ld b, c
    db $10
    and h
    ld a, [de]
    inc c
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld h, c
    ld h, b
    ld [hl], c
    ld [hl], b
    add h
    ld a, [de]
    inc c
    inc h
    inc c
    jr nc, jr_029_4DAA

    ld [hl+], a
    rrca
    rlca
    inc sp
    dec h
    jr nz, jr_029_4DB1

    jr nc, @-$5A

    ld a, [de]
    inc b
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    add h
    ld a, [de]
    inc b
    ld b, l
    ld b, h
    ld d, l
    inc d
    add h
    ld a, [de]
    inc c
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld [$5213], sp
    dec [hl]
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    and h
    ld a, [de]
    inc e
    ld d, $17
    ld a, [de]
    jr jr_029_4E0A

    ld h, l
    ld [hl], h
    ld a, [de]
    rla

jr_029_4DAA:
    ld d, $18
    ld a, [de]
    ld de, $0C13
    add hl, bc

jr_029_4DB1:
    ld c, $41
    rrca
    dec h
    inc b
    dec b
    jr nc, jr_029_4DCA

    dec b
    inc b
    ld b, c
    jr nc, jr_029_4D5E

    ld a, [de]
    jr nz, jr_029_4E0E

    ld a, [hl]
    ld e, l
    ld h, $41
    daa
    ld [hl], $37
    jr z, jr_029_4DF3

jr_029_4DCA:
    jr c, jr_029_4E05

    daa
    ld b, c
    scf
    ld [hl], $1A
    rlca
    ld b, c
    ld [$0633], sp
    dec c
    ld b, c
    inc h
    inc c
    inc [hl]
    dec [hl]
    dec h
    jr nz, jr_029_4E14

    inc [hl]
    and b
    ld a, [de]
    ld [$6D6C], sp
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add h
    ld a, [de]
    ld [de], a
    ld b, a
    ld b, [hl]
    ld c, c
    ld c, b
    inc c

jr_029_4DF3:
    add hl, bc
    ld sp, $0C0A
    dec c
    inc e
    dec e
    dec c
    inc c
    dec e
    inc e
    ld c, $0F
    add d
    rra
    and h
    ld a, [de]
    inc e

jr_029_4E05:
    ld [hl], $37
    ld b, c
    daa
    ld d, [hl]

jr_029_4E0A:
    ld d, a
    ld e, b
    ld e, c
    scf

jr_029_4E0E:
    ld [hl], $27
    ld de, $250F
    inc sp

jr_029_4E14:
    ld sp, $2D2C
    inc a
    dec a
    dec l
    inc l
    dec a
    inc a
    ld l, $2F
    inc a
    dec a
    and h
    ld a, [de]
    ld [bc], a
    ld l, [hl]
    ld l, a
    add d
    ld a, a
    jr jr_029_4E90

    ld h, a
    halt
    ld [hl], a
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld [de], a
    ld c, $0B
    ld a, [bc]
    ld h, b
    ld h, c
    nop
    ld bc, $6362
    ld [bc], a
    inc bc
    ld h, c
    ld h, b
    ld bc, $A400
    ld a, [de]
    inc d
    ld l, e
    ld l, d
    ld a, e
    ld a, d
    ld h, a
    ld h, [hl]
    ld [hl], a
    halt
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    rrca
    inc sp
    ld [$4413], sp
    ld de, $1554
    add h
    ld a, [de]
    inc b
    ld de, $1544
    inc d
    xor e
    ld a, [de]
    dec b
    ld hl, $1A1F
    ld [hl+], a
    inc hl
    add d
    ld a, [de]
    dec b
    ld hl, $161A
    rla
    ld a, [de]
    add d
    jr jr_029_4E78

    add hl, de
    inc e
    dec e
    rla
    ld d, $18

jr_029_4E78:
    xor c
    ld a, [de]
    ld b, $11
    inc de
    inc c
    ld sp, $250C
    add d
    ld sp, $1A84
    inc b
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    add h
    ld a, [de]
    inc b
    ld b, c
    ld b, b
    ld d, c

jr_029_4E90:
    ld d, b
    xor h
    ld a, [de]
    inc b
    ld [de], a
    ld c, $08
    inc de
    add l
    ld a, [de]
    inc bc
    ld a, [hl+]
    ld a, [de]
    ld a, [hl-]
    add d
    dec hl
    add d
    dec sp
    inc bc
    ld a, [hl+]
    ld a, [de]
    ld a, [hl-]
    or [hl]
    ld a, [de]
    inc bc
    ld a, [hl+]
    ld a, [de]
    ld c, e
    add d
    dec hl
    add d
    ld c, h
    inc bc
    ld a, [hl+]
    ld a, [de]
    ld c, e
    or l
    ld a, [de]
    inc b
    ld e, d
    ld e, e
    ld a, $3F
    add d
    ld e, h
    add d
    ld a, [de]
    inc b
    ld e, e
    ld e, d
    ccf
    ld a, $B4
    ld a, [de]
    inc b
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    add h
    ld a, [de]
    db $10
    ld c, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    ret nc

    pop de
    jp nc, $D4D3

    push de
    sub $D7
    and $E5
    add sp, -$19
    add d

jr_029_4EDF:
    pop af
    add d
    ld a, [c]
    inc b
    ld sp, hl
    ld a, [$FCFB]
    add d
    ld [$EB02], a
    db $EC
    add d
    ldh [$82], a
    ldh a, [$82]
    db $ED
    add d
    db $FD
    ld [$F6F5], sp
    rst $30
    ld hl, sp-$0A
    push af
    ld hl, sp-$09
    add d
    pop hl
    add d
    ld [c], a
    add d
    db $E3
    add d
    db $E4
    ld [$E6E5], sp
    rst $20
    add sp, $22
    rrca
    rlca
    inc sp
    add d
    ldh [$82], a
    ldh a, [$82]
    di
    add d
    db $F4
    add [hl]
    nop
    ld bc, $9301
    nop
    add d
    ld bc, $0082
    add e
    ld bc, $0883
    adc h
    nop
    ld [bc], a
    jr z, jr_029_4F2A

    add d

jr_029_4F2A:
    jr z, jr_029_4F38

    ld [$0A0A], sp
    add hl, bc
    ld a, [hl+]
    ld a, [bc]
    add hl, bc
    ld bc, $282A
    ld l, c
    ld a, [hl+]

jr_029_4F38:
    and h
    nop
    adc b
    ld [$2884], sp
    add d
    nop
    add d
    ld bc, $0A03
    ld hl, $820A
    add hl, bc
    rlca
    ld b, c
    ld bc, $2909
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    and h
    nop
    add h
    ld [$0184], sp
    add e
    jr z, @+$03

    jr nz, jr_029_4EDF

    nop
    ld b, $0A
    add hl, bc
    ld [$010A], sp
    ld c, c
    add d
    ld a, [bc]
    ld b, $29
    ld a, [hl+]
    ld a, [hl+]
    jr z, @+$03

    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0084
    ld [bc], a
    ld bc, $8328
    ld [$0002], sp
    jr nz, @-$7C

    jr z, @+$06

    ld bc, $2909
    ld hl, $0182
    inc bc
    ld l, c
    ld b, c
    add hl, hl
    add e
    ld a, [bc]
    dec b
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    ld l, c
    ld a, [hl+]
    and b
    nop
    add h
    add hl, bc
    ld bc, $8729
    dec bc
    ld [bc], a
    dec hl
    add hl, bc
    add d
    dec hl
    ld a, [bc]
    add hl, bc
    ld bc, $0109
    add hl, bc
    ld hl, $2961
    ld a, [bc]
    ld hl, $0A82
    ld bc, $8329
    ld a, [hl+]
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add h
    add hl, bc
    add h
    dec bc
    add h
    inc bc
    add h
    dec hl
    inc b
    ld hl, $0901
    ld bc, $0B84
    add h
    dec hl
    add d
    dec bc
    ld [bc], a
    dec hl
    dec bc
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    ld bc, $0382
    add d
    dec bc
    ld bc, $8569
    dec bc
    add e
    dec hl
    dec b
    add hl, bc
    ld b, c
    add hl, hl
    add hl, bc
    add hl, hl
    add h
    dec bc
    add h
    dec hl
    add h
    dec bc
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop

jr_029_5047:
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc

jr_029_5051:
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    inc bc
    add d
    nop
    add d
    ld c, $02
    ld l, $0E
    adc b
    ld [$0904], sp
    ld bc, $6141
    add d
    ld [$0082], sp
    add d
    ld [$0082], sp
    add d
    jr z, @-$7C

    jr nz, @-$7C

    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    adc h
    jr z, @+$09

    ld b, c
    add hl, bc
    ld bc, $0849
    nop
    ld [$0085], sp
    ld [bc], a
    jr nz, @+$2A

    add d
    jr nz, jr_029_5051

    nop
    ld b, $01
    nop
    ld bc, $0626
    nop
    add d

jr_029_50B2:
    ld b, $04
    nop
    ld bc, $0106
    add d
    nop
    ld [bc], a
    ld bc, $8428
    nop
    inc bc
    jr nz, @+$2A

    jr z, jr_029_5047

    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    ld [$2909], sp
    ld hl, $2129
    add hl, hl
    add hl, bc
    add hl, hl
    add e
    ld bc, $0005
    ld a, [bc]
    add hl, bc
    ld [$820A], sp
    ld bc, $0082
    inc b
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_029_50B2

    ld bc, $0904
    ld bc, $4901
    add l
    ld bc, $0E02
    ld bc, $0E82
    ld [bc], a
    ld l, $0E
    add d
    ld l, $02
    ld bc, $B62E
    ld bc, $0E02
    nop
    add d
    ld c, $02
    ld l, $0E
    add d
    ld l, $03
    ld bc, $002E
    or h
    ld b, $85
    ld c, $03
    ld l, $01
    ld bc, $2E84
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add d
    ld bc, $0682
    add h
    ld c, $84
    ld bc, $2E84
    adc b
    inc c
    add h
    inc l
    inc b
    inc c
    inc l
    inc c
    inc l
    add h
    dec c
    ld bc, $832D
    dec c
    ld [$2B0B], sp
    dec bc
    dec hl
    inc c
    inc l
    inc c
    inc l
    add h
    dec c
    add h
    dec l
    ld [$2D0D], sp
    dec c
    dec l
    dec c
    dec l
    dec c
    dec l
    add h
    inc c
    inc c
    add hl, bc
    ld b, c
    ld bc, $0B09
    dec hl
    dec bc
    dec hl
    inc c
    inc l
    inc c
    inc l
    nop
    dec l
    sub l
    ld bc, $2322
    jp hl


    rlca
    ret nz

    ld e, d
    ld b, $82
    or l
    xor d
    dec b
    inc bc
    ld b, $B5
    or l
    add e
    dec b
    db $10
    ld [$4205], sp
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add l
    dec b
    ld bc, $8309
    dec b
    rrca
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    ld b, $82
    or l
    add e
    dec b
    db $10
    ld [$5205], sp
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add l
    dec b
    ld bc, $8309
    dec b
    rrca
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    ld b, $82
    or l
    add e
    dec b
    db $10
    ld [$6205], sp
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    ld b, $82
    or l
    add e
    dec b
    ld [bc], a
    ld [$8E05], sp
    ld [hl], h
    add l
    dec b
    inc b
    add hl, bc
    dec b
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    inc bc
    dec b
    or l
    or l
    add e
    dec b
    ld bc, $8408
    dec b
    adc l
    ld [hl], h
    add e
    dec b
    add e
    add hl, bc
    add h
    dec b
    adc h
    ld [hl], h
    add d
    or l
    adc e
    dec b
    adc h
    ld [hl], h
    adc e
    dec b
    adc c
    ld [hl], h
    add d
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    ld b, $82
    or l
    add e
    dec b
    db $10
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add a
    dec b
    ld de, $0509
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    ld b, $82
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add a
    dec b
    ld de, $0509
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    ld b, $82
    or l
    ld [bc], a
    dec b
    add hl, bc
    add e
    dec b
    adc [hl]
    ld [hl], h
    add a
    dec b
    ld [bc], a
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    inc b
    dec b
    or l
    or l
    dec b
    add e
    add hl, bc
    add h
    dec b
    adc l
    ld [hl], h
    add l
    dec b
    ld bc, $8409
    dec b
    adc h
    ld [hl], h
    add d
    or l
    adc e
    dec b
    adc h
    ld [hl], h
    adc e
    dec b
    adc c
    ld [hl], h
    add d
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    ld b, $82
    or l
    add e
    dec b
    db $10
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add l
    dec b
    inc de
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    ld b, $82
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    ld b, $82
    or l
    add e
    dec b
    ld [bc], a
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    add l
    dec b
    inc b
    add hl, bc
    dec b
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    inc b
    dec b
    or l
    or l
    dec b
    add e
    add hl, bc
    add h
    dec b
    adc l
    ld [hl], h
    add e
    dec b
    add e
    add hl, bc
    add h
    dec b
    adc h
    ld [hl], h
    add d
    or l
    adc e
    dec b
    adc h
    ld [hl], h
    adc e
    dec b
    adc c
    ld [hl], h
    add d
    or l
    inc de
    dec b
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    ld b, $82
    or l
    inc de
    dec b
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add l
    dec b
    inc de
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    ld b, $82
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add l
    dec b
    add e
    add hl, bc
    db $10
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    ld b, $82
    or l
    add e
    dec b
    ld [bc], a
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    add a
    dec b
    ld [bc], a
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    inc bc
    dec b
    or l
    or l
    add e
    dec b
    ld bc, $8409
    dec b
    adc l
    ld [hl], h
    add l
    dec b
    ld bc, $8409
    dec b
    adc h
    ld [hl], h
    add d
    or l
    adc e
    dec b
    adc h
    ld [hl], h
    adc e
    dec b
    adc c
    ld [hl], h
    add d
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add e
    dec b
    ld [bc], a
    ld [$8305], sp
    add hl, bc
    db $10
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    ld b, $82
    or l
    ld [bc], a
    dec b
    add hl, bc
    add e
    dec b
    ld c, $52
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add e
    dec b
    dec d
    ld [$0905], sp
    dec b
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    ld b, $82
    or l
    ld bc, $8305
    add hl, bc
    rrca
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add e
    dec b
    dec d
    ld [$0905], sp
    dec b
    add hl, bc
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    ld b, $82
    or l
    add e
    dec b
    ld [bc], a
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    add e
    dec b
    ld b, $08
    dec b
    add hl, bc
    dec b
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    inc b
    dec b
    or l
    or l
    dec b
    add e
    add hl, bc
    add h
    dec b
    adc l
    ld [hl], h
    inc bc
    dec b
    ld [$8305], sp
    add hl, bc
    add h
    dec b
    adc h
    ld [hl], h
    add d
    or l
    adc e
    dec b
    adc h
    ld [hl], h
    adc e
    dec b
    adc c
    ld [hl], h
    add d
    or l
    and l
    dec b
    inc bc
    ld b, d
    ld a, e
    ld b, e
    add d
    dec b
    inc bc
    ld b, $B5
    or l
    and l
    dec b
    inc bc
    ld d, d
    ld a, e
    ld d, e
    add d
    dec b
    inc bc
    ld b, $B5
    or l
    sub c
    dec b
    ld [de], a
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    dec b
    ld b, d
    ld b, e
    add d
    dec b
    inc bc
    ld d, d
    ld a, e
    ld d, e
    add d
    dec b
    inc bc
    ld b, $B5
    or l
    sub c
    dec b
    ld [de], a
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    dec b
    ld d, d
    ld d, e
    add d
    dec b
    inc bc
    ld d, d
    ld a, e
    ld d, e
    add d
    dec b
    inc bc
    ld b, $B5
    or l
    sub c
    dec b
    ld [de], a
    add hl, bc
    dec b
    add hl, bc
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    dec b
    ld h, d
    ld h, e
    add d
    dec b
    inc bc
    ld h, d
    ld a, e
    ld h, e
    add d
    dec b
    inc bc
    ld b, $B5
    or l
    sub c
    dec b
    inc b
    add hl, bc
    dec b
    add hl, bc
    dec b
    adc [hl]
    ld [hl], h
    add a
    dec b
    inc bc
    ld b, $B5
    or l
    sub c
    dec b
    inc bc
    add hl, bc
    dec b
    add hl, bc
    add h
    dec b
    adc l
    ld [hl], h
    add l
    dec b
    inc bc
    ld b, $B5
    or l
    sbc e
    dec b
    adc h
    ld [hl], h
    add e
    dec b
    ld bc, $8706
    or l
    ld bc, $A405
    or l
    ld bc, $AC06
    or l
    ld bc, $AC06
    or l
    ld bc, $AC06
    or l
    ld bc, $0006
    jr z, jr_029_5627

    ld b, $83
    nop
    and h
    ld [$0083], sp
    adc h
    ld [$C001], sp
    sbc c
    ld [$0001], sp
    add e
    ld [$0083], sp
    ld bc, $8408
    nop
    ld bc, $8608
    nop
    ld bc, $8308
    nop
    ld bc, $8A08
    nop
    ld bc, $8308
    nop
    add l
    ld [$0083], sp
    add l
    ld [$0002], sp
    ld [$0085], sp
    add d
    ld [$0002], sp
    ld [$0083], sp
    add d
    ld [$0003], sp
    ld [$8500], sp

jr_029_5627:
    ld [$0002], sp
    ld [$0082], sp
    add e
    ld [$0084], sp
    ld bc, $8308
    nop
    inc bc
    ld [$0800], sp
    add l
    nop
    inc bc
    ld [$0000], sp
    add e
    ld [$C202], sp
    ld [$0082], sp
    inc bc
    ld [$0800], sp
    add l
    nop
    add d
    ld [$0003], sp
    ld [$8208], sp
    nop
    add h
    ld [$0005], sp
    ld [$0800], sp
    nop
    add l
    ld [$0001], sp
    add h
    ld [$C301], sp
    add h
    ld [$0005], sp
    ld [$0800], sp
    ld b, c
    add e
    ld [$0002], sp
    ld [$0082], sp
    add d
    ld [$0082], sp
    ld [bc], a
    ld [$83C1], sp
    nop
    inc bc
    ld [$0800], sp
    add l
    nop
    ld bc, $8608
    nop
    ld bc, $8408
    nop
    ld [bc], a
    ld [$8300], sp
    ld [$0005], sp
    ld [$0800], sp
    nop
    adc e
    ld [$0001], sp
    add l
    ld [$0003], sp
    ld [$8600], sp
    ld [$0001], sp
    add h
    ld [$0082], sp
    ld bc, $8408
    nop
    inc bc
    ld [$0000], sp
    add d
    ld [$0084], sp
    ld [bc], a
    ld [$85C3], sp
    nop
    ld bc, $8308
    nop
    inc bc
    ld [$0800], sp
    add a
    nop
    inc b
    ld [$08C3], sp
    nop
    add d
    ld [$0001], sp
    add l
    ld [$0003], sp
    ld [$8208], sp
    nop
    ld [bc], a
    ld [$8300], sp
    ld [$0082], sp
    inc bc
    ld [$0800], sp
    add e
    nop
    inc b
    ld [$0800], sp
    nop
    add h
    ld [$0007], sp
    ld [$0008], sp
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$84C3], sp
    nop
    add e
    ld [$0006], sp
    ld [$0800], sp
    ld b, b
    ld [$0082], sp
    inc b
    ld [$0800], sp
    nop
    add e
    ld [$0009], sp
    ld [$0800], sp
    nop
    pop bc
    ld [$0800], sp
    add d
    nop
    ld bc, $8308
    nop
    add [hl]
    ld [$0003], sp
    ld [$8208], sp
    nop
    ld bc, $8308
    nop
    ld b, $08
    nop
    nop
    ld [$0800], sp
    add e
    nop
    ld b, $08
    nop
    ld [$0800], sp
    nop
    add d
    ld [$0003], sp
    ld [$8400], sp
    ld [$0002], sp
    ld [$0086], sp
    add d
    ld [$0001], sp
    adc c
    ld [$0002], sp
    ld [$0083], sp
    dec b
    ld [$0800], sp
    nop
    ld [$008B], sp
    ld [bc], a
    ld [$8300], sp
    ld [$0082], sp
    add d
    ld [$0082], sp
    ld bc, $8508
    nop
    inc bc
    jp RST_08


    add e
    ld [$0005], sp
    ld [$0800], sp
    nop
    adc e
    ld [$0005], sp
    ld [$0800], sp
    pop bc
    add d
    ld [$0001], sp
    add e
    ld [$0003], sp
    ld [$8200], sp
    ld [$0001], sp
    add e
    ld [$0008], sp
    ld [$0800], sp
    nop
    ld [$0800], sp
    adc e
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0084], sp
    add d
    ld [$0082], sp
    ld b, $08
    nop
    jp nz, RST_08

    ld [$0085], sp
    inc b
    ld [$0800], sp
    nop
    adc e
    ld [$0005], sp
    ld [$0800], sp
    nop
    add a
    ld [$0001], sp
    add l
    ld [$0003], sp
    ld [$8300], sp
    ld [$0001], sp
    add e
    ld [$0002], sp
    ld [$008B], sp
    ld bc, $8308
    nop
    dec b
    ld [$0000], sp
    ld [$8200], sp
    ld [$0087], sp
    inc bc
    ld [$0800], sp
    add l
    nop
    ld bc, $8308
    nop
    sub b
    ld [$0003], sp
    ld [$8400], sp
    ld [$0001], sp
    add l
    ld [$0001], sp
    add l
    ld [$0001], sp
    add l
    ld [$0082], sp
    inc bc
    ld [$08C3], sp
    add e
    nop
    ld bc, $8308
    nop
    ld bc, $8308
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$4202], sp
    ld [$0083], sp
    ld bc, $8F08
    nop
    add d
    ld [$0083], sp
    ld bc, $8308
    nop
    ld bc, $8408
    nop
    add d
    ld [$0004], sp
    ld [$0008], sp
    add e
    ld [$0003], sp
    ld [$8300], sp
    ld [$0001], sp
    add l
    ld [$0004], sp
    ld [$0800], sp
    add d
    nop
    ld [bc], a
    ld [$8C00], sp
    ld [$C302], sp
    nop
    add d
    ld [$0002], sp
    ld [$0083], sp
    inc bc
    ld [$0800], sp
    add e
    nop
    ld bc, $8708
    nop
    add d
    ld [$0002], sp
    ld [$008C], sp
    inc bc
    ld [$0000], sp
    add d
    ld [$0003], sp
    ld [$8300], sp
    ld [$0003], sp
    ld [$8300], sp
    ld [$0001], sp
    add a
    ld [$0082], sp
    ld [bc], a
    ld [$8A00], sp
    ld [$C202], sp
    ld [$0082], sp
    add d
    ld [$0002], sp
    ld [$0085], sp
    ld bc, $8308
    nop
    inc bc
    ld [$0800], sp
    add l
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$008A], sp
    add e
    ld [$0082], sp
    add d
    ld [$0001], sp
    add h
    ld [$0082], sp
    inc bc
    ld [$08C3], sp
    add e
    nop
    rlca
    ld [$0800], sp
    nop
    ld [$0800], sp
    add d
    nop
    inc bc
    ld [$0000], sp
    add a
    ld [$0086], sp
    add d
    ld [$0004], sp
    ld [$C200], sp
    adc b
    ld [$0007], sp
    ld [$0800], sp
    nop
    ld [$8200], sp
    ld [$0003], sp
    ld [$8200], sp
    ld [$0085], sp
    add h
    ld [$0001], sp
    add h
    ld [$0003], sp
    ld [$8200], sp
    ld [$0088], sp
    dec b
    ld [$0800], sp
    nop
    ld [$0084], sp
    inc b
    ld [$0800], sp
    nop
    add h
    ld [$0088], sp
    add d
    ld [$0002], sp
    ld [$0084], sp
    add l
    ld [$0082], sp
    inc b
    ld [$0800], sp
    nop
    add [hl]
    ld [$0004], sp
    ld [$0800], sp
    add e
    nop
    add h
    ld [$0082], sp
    ld [bc], a
    ld [$8200], sp
    ld [$0003], sp
    ld [$8400], sp
    ld [$0083], sp
    add h
    ld [$0004], sp
    ld [$0800], sp
    add [hl]
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0086], sp
    add d
    ld [$0005], sp
    ld [$0008], sp
    ld [$0083], sp
    inc b
    ld [$0000], sp
    ld [$0086], sp
    inc b
    ld [$0800], sp
    nop
    add [hl]
    ld [$0003], sp
    ld [$8800], sp
    ld [$0082], sp
    add d
    ld [$0083], sp
    inc b
    ld [$0800], sp
    nop
    adc c
    ld [$0004], sp
    ld [$0800], sp
    add [hl]
    nop
    ld bc, $8308
    nop
    inc b
    pop bc
    ld [$0800], sp
    add e
    nop
    add l
    ld [$0009], sp
    ld [$0800], sp
    nop
    ld [$C100], sp
    ld [$0083], sp
    rlca
    ld [$0000], sp
    ld [$0800], sp
    nop
    add h
    ld [$0003], sp
    ld [$8400], sp
    ld [$0002], sp
    ld [$0082], sp
    add d
    ld [$0082], sp
    add d
    ld [$C304], sp
    ld [$0800], sp
    add h
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0082], sp
    inc bc
    ld [$0800], sp

jr_029_59A5:
    add h
    nop
    add l
    ld [$0086], sp
    add d
    ld [$0084], sp
    add e
    ld [$0001], sp
    add [hl]
    ld [$0002], sp
    ld [$0084], sp
    ld [bc], a
    ld [$8400], sp
    ld [$0002], sp
    ld [$0085], sp
    add d

jr_029_59C5:
    ld [$0082], sp
    add d
    ld [$0086], sp
    add d
    ld [$0088], sp
    add h
    ld [$0002], sp
    ld [$0086], sp
    ld [bc], a
    ld [$8543], sp
    ld [$0082], sp

jr_029_59DE:
    add d
    ld [$0088], sp
    adc d
    ld [$0084], sp
    ld bc, $8508
    nop
    adc e
    ld [$0091], sp
    add d
    ld [$008A], sp
    add d
    ld [$009B], sp
    add d
    ld [$0088], sp
    add d
    ld [$009D], sp
    add d
    ld [$0086], sp
    add d
    ld [$009F], sp
    adc b
    ld [$0094], sp
    nop
    jr z, @-$5E

    dec b
    add h
    ld [$20A0], sp
    add l

jr_029_5A13:
    ld [$0083], sp
    add d
    ld bc, $A289
    ld bc, $8AA3
    jr nz, jr_029_59A5

    and d
    add e
    jr nz, @+$03

    ld bc, $0083
    add d
    ld [$0002], sp
    ld b, b
    add e
    ld bc, $A284
    ld bc, $85A3
    and d
    inc bc
    and e
    jr nz, @+$22

    add d
    and d
    ld bc, $83A3

jr_029_5A3C:
    jr nz, jr_029_59C5

    and d
    inc bc
    and e
    jr nz, jr_029_5A63

    add d
    ld bc, $4102
    nop
    add d
    ld [$0001], sp
    add e
    ld bc, $A182
    add e
    jr nz, @-$74

    and d
    inc b
    jp $A3A3


    jr nz, jr_029_59DE

    and d
    ld [bc], a
    and c
    and d
    add e
    and e
    ld [bc], a
    jr nz, @-$5D

jr_029_5A63:
    add e
    ld bc, $0003
    ld [$8320], sp
    ld bc, $A182
    inc b
    and b
    jr nz, jr_029_5A91

    and c
    adc b

jr_029_5A73:
    and d
    ld bc, $83A3
    and d

jr_029_5A78:
    ld bc, $85A3
    and d
    inc bc
    and c
    jr nz, @-$5A

    add e
    and e
    ld [bc], a
    and d
    and c
    add e
    ld bc, $2083
    ld [bc], a
    ld bc, $82A0
    and c
    add d
    jr nz, jr_029_5A13

jr_029_5A91:
    and c
    add h

jr_029_5A93:
    and d
    dec b
    and c
    and d
    and c
    jr nz, jr_029_5A3C

    add e
    and e
    add l
    and d
    inc bc
    and c
    jr nz, jr_029_5AC2

    add e
    and e
    add d
    and d
    ld [bc], a
    and b
    and h
    add d
    ld bc, $2083
    inc bc

jr_029_5AAE:
    and b
    and c
    and c
    add h
    jr nz, jr_029_5AB5

    and c

jr_029_5AB5:
    add e
    and d
    add d
    and c
    add e
    jr nz, jr_029_5ABD

    and d

jr_029_5ABD:
    add e

jr_029_5ABE:
    and e
    add d
    and c
    add a

jr_029_5AC2:
    jr nz, jr_029_5AC5

    and h

jr_029_5AC5:
    add e

jr_029_5AC6:
    and e
    add e
    and h
    add h

jr_029_5ACA:
    jr nz, jr_029_5ACF

    and b
    and c
    and b

jr_029_5ACF:
    add d
    jr nz, jr_029_5AD5

jr_029_5AD2:
    and e
    jr nz, jr_029_5AF5

jr_029_5AD5:
    add d
    and d
    add d
    and c
    add e
    jr nz, @-$75

    ld [$2085], sp
    ld [bc], a
    and h
    and e
    add h
    and h
    ld bc, $83A5
    jr nz, jr_029_5AEC

    and c

jr_029_5AEA:
    and b
    and b

jr_029_5AEC:
    add d
    jr nz, jr_029_5A73

    and d
    add e
    and c
    add d
    jr nz, jr_029_5A78

jr_029_5AF5:
    ld [$0101], sp
    adc b
    ld [$2084], sp
    add d
    and e
    add d
    and h
    add d
    and l
    add h
    jr nz, @-$7B

    and b
    add d
    jr nz, jr_029_5B0A

jr_029_5B09:
    and c

jr_029_5B0A:
    add e
    and d
    add d

jr_029_5B0D:
    and c
    add d

jr_029_5B0F:
    jr nz, jr_029_5A93

    ld [$0187], sp
    add d
    ld [$0101], sp
    add e
    ld [$2083], sp
    ld bc, $83A3
    and h
    add l
    jr nz, @+$06

    and b
    and c
    and b
    jr nz, jr_029_5AAE

jr_029_5B28:
    and c
    add d

jr_029_5B2A:
    jr nz, @+$03

    ld [$0183], sp
    add d
    nop
    add e
    ld bc, $0883
    add e
    ld bc, $0882
    add e
    jr nz, jr_029_5ABE

    and h
    inc bc
    and e
    and h
    and h
    add e
    jr nz, jr_029_5AC6

    and b
    add d
    jr nz, jr_029_5ACA

    and b
    add d
    and c
    ld [bc], a
    and b
    jr nz, jr_029_5AD2

    ld [$0182], sp
    add e
    nop
    add e
    ld bc, $0802
    jp nz, $0082

    add e
    ld bc, $0882
    add d
    jr nz, @-$7B

    and e
    add e
    and h
    add d
    jr nz, jr_029_5AEA

    and b
    ld [bc], a
    jr nz, jr_029_5B0D

    add d
    and b
    add d
    and c

jr_029_5B70:
    inc b
    and b
    jr nz, jr_029_5B94

    ld [$0183], sp
    add h
    nop
    add d
    ld bc, $0802
    ld b, l
    add e
    nop
    add d
    ld bc, $0882
    add e
    jr nz, jr_029_5B09

    and e

jr_029_5B88:
    add e
    and h
    add d
    jr nz, jr_029_5B0F

    and b
    add e
    and c
    inc bc
    and b
    and c

jr_029_5B93:
    and b

jr_029_5B94:
    add e
    jr nz, @+$04

    ld [$8301], sp
    ld [$0083], sp
    add d
    ld bc, $0888
    add l
    jr nz, jr_029_5B28

    and h

jr_029_5BA5:
    add d
    jr nz, jr_029_5B2A

    and b
    add e
    and c
    inc bc
    and b
    and c
    and b
    add e
    jr nz, @+$04

    ld [$8201], sp
    nop
    add d
    ld [$0083], sp
    adc b
    ld bc, $0801
    add e
    jr nz, jr_029_5BC4

    and l
    and [hl]
    and l

jr_029_5BC4:
    add e

jr_029_5BC5:
    and [hl]
    add d
    jr nz, jr_029_5BCC

jr_029_5BC9:
    and b
    and c
    and c

jr_029_5BCC:
    add h
    and b
    add h
    jr nz, @+$08

    ld [$0001], sp

jr_029_5BD4:
    ld b, h
    nop
    ld [$0084], sp
    add [hl]
    ld [$0102], sp
    ld [$2082], sp
    ld bc, $85A4

jr_029_5BE3:
    and [hl]
    add e
    jr nz, jr_029_5BE9

    and b
    and c

jr_029_5BE9:
    add h
    and b

jr_029_5BEB:
    add h
    jr nz, jr_029_5B70

    ld [$0101], sp
    add e
    nop
    ld [bc], a
    ld [$8801], sp
    nop
    inc bc
    ld [$0801], sp
    add d
    jr nz, jr_029_5C01

    and h
    and l

jr_029_5C01:
    add d
    and [hl]
    add l
    jr nz, jr_029_5B88

    and b
    ld bc, $8320
    and b
    ld bc, $83A7
    jr nz, jr_029_5B93

    ld [$0183], sp
    inc bc
    ld [$0101], sp

jr_029_5C17:
    adc b
    nop
    ld b, $01
    ld [$2008], sp
    and h
    and h
    add a
    jr nz, jr_029_5BA5

    and b
    add d
    jr nz, jr_029_5C2A

    and b
    and a
    and b

jr_029_5C2A:
    add e
    jr nz, @-$7A

    ld [$0101], sp
    add e
    ld [$0103], sp
    nop
    nop
    add a
    ld bc, $0882

jr_029_5C3A:
    ld bc, $8520
    and e
    ld bc, $83A4
    jr nz, jr_029_5BC5

    and b
    add e
    jr nz, jr_029_5BC9

    and b
    ld bc, $83A7
    jr nz, jr_029_5BD4

    ld [$0184], sp
    adc b
    ld [$2082], sp
    add e
    and d
    inc bc
    and e
    and h
    and h
    add d
    jr nz, @-$7C

jr_029_5C5D:
    and b
    add d
    jr nz, jr_029_5BE3

    and c
    inc bc

jr_029_5C63:
    and b
    and a
    and a
    add d
    jr nz, jr_029_5BEB

    ld [$0183], sp
    adc l
    ld [$2086], sp
    add e
    and h
    add d
    jr nz, jr_029_5C79

    and b
    and a
    and [hl]
    and d

jr_029_5C79:
    add e
    and c
    add d
    and b
    add d
    jr nz, @+$03

jr_029_5C80:
    ld [$0185], sp
    add d
    ld [$0188], sp
    add d
    ld [$2084], sp
    dec b

jr_029_5C8C:
    and l
    and [hl]
    and l
    and h
    and l
    add d
    jr nz, jr_029_5C17

    and b
    ld [bc], a
    and c
    call nz, $A182

jr_029_5C9A:
    add d
    and b

jr_029_5C9C:
    add d
    jr nz, @+$04

    ld [$8301], sp
    nop

jr_029_5CA3:
    ld [bc], a
    ld bc, $8208
    ld bc, $0086
    add d
    ld bc, $0801

jr_029_5CAE:
    add e
    jr nz, jr_029_5CB3

    and h
    and l

jr_029_5CB3:
    add e
    and [hl]
    add e
    jr nz, jr_029_5C3A

    and b
    add h
    and c
    ld b, $20
    and b
    and b
    jr nz, @+$0A

    ld [$0107], sp
    nop
    ret nz

jr_029_5CC6:
    nop
    ld bc, $0108
    add d
    nop
    ld bc, $84C1
    nop
    add d
    ld bc, $0882
    ld bc, $8320
    and h
    add [hl]

jr_029_5CD9:
    jr nz, jr_029_5C5D

    and b
    add e
    and c
    add d
    jr nz, jr_029_5C63

    and b

jr_029_5CE2:
    inc bc
    jr nz, @+$0A

    ld [$0182], sp
    add d

jr_029_5CE9:
    nop
    inc bc
    ld bc, $0108
    add a
    nop
    add d
    ld bc, $0882
    inc b
    jr nz, jr_029_5C9A

    and h
    and e
    add d
    and h
    add h
    jr nz, jr_029_5C80

    and b
    ld bc, $83A1
    jr nz, jr_029_5D07

    and c
    and b
    and b

jr_029_5D07:
    add d
    jr nz, jr_029_5C8C

    ld [$0184], sp
    ld bc, $8308
    ld bc, $0084
    add d
    ld bc, $0882
    add e
    jr nz, jr_029_5C9C

jr_029_5D1A:
    and d
    ld [bc], a
    and e
    and h
    add h
    jr nz, jr_029_5CA3

    and b
    add e

jr_029_5D23:
    jr nz, @-$7B

    and c
    ld bc, $83A0
    jr nz, jr_029_5CAE

    ld [$0182], sp
    add d
    ld [$0187], sp
    add [hl]
    ld [$2082], sp
    inc bc
    and h
    and l
    and l
    add e
    jr nz, @+$06

    and b
    and a
    and a
    jr nz, jr_029_5CC6

    and c
    add d
    jr nz, @+$06

    ld [$0842], sp
    jr nz, jr_029_5CD9

    ld [$0083], sp
    add d
    jr nz, @-$79

    and l
    add d
    jr nz, jr_029_5D56

    and b

jr_029_5D56:
    add e
    and a
    add d
    and c
    ld bc, $83A0
    jr nz, jr_029_5CE2

    nop
    add d
    jr nz, jr_029_5CE9

    ld [$2084], sp
    dec b
    ld [$0820], sp
    nop
    ld b, e
    add e
    ld bc, $A585
    add e
    jr nz, jr_029_5D76

    and b
    and a
    and a

jr_029_5D76:
    add e
    and b

jr_029_5D78:
    add d
    jr nz, @-$79

    ld bc, $208D
    ld [bc], a
    ld [$8320], sp
    ld bc, $A601
    add l
    ld bc, $0804
    jr nz, jr_029_5DAB

    and b
    add l
    and a
    ld bc, $87A6
    ld bc, $A688
    add [hl]
    jr nz, jr_029_5D1A

    ld bc, $A501
    add h
    ld bc, $0882
    add d
    jr nz, jr_029_5D23

    and a
    add l
    and [hl]
    add d
    and l
    add d
    jr nz, jr_029_5DAA

    and a

jr_029_5DAA:
    add h

jr_029_5DAB:
    and [hl]
    ld bc, $84A5
    and [hl]
    ld bc, $83A7
    and [hl]
    add d
    jr nz, jr_029_5DB8

    and l

jr_029_5DB8:
    add h
    and [hl]
    add d
    ld bc, $0083
    ld bc, $8308
    jr nz, @-$7C

    and a
    add h
    and [hl]
    ld bc, $84A5
    jr nz, jr_029_5DCC

    and l

jr_029_5DCC:
    add h
    and [hl]
    inc bc
    jr nz, jr_029_5D78

    and [hl]
    add d
    and a
    inc bc
    push bc
    and [hl]
    and a
    add a
    and [hl]
    add d
    ld bc, $0082
    ld [bc], a
    add $08
    add h
    jr nz, jr_029_5DE5

    and a

jr_029_5DE5:
    add h
    and [hl]
    ld bc, $83A7
    and [hl]
    ld bc, $85A5
    and [hl]
    add d
    jr nz, jr_029_5DF6

    and a
    and [hl]
    and [hl]
    and a

jr_029_5DF6:
    adc c
    and [hl]
    add d
    ld bc, $0083
    ld bc, $8708
    jr nz, jr_029_5E02

    and a

jr_029_5E02:
    adc e
    and [hl]
    add l
    jr nz, jr_029_5E08

    and a

jr_029_5E08:
    adc c
    and [hl]
    ld bc, $8501
    ld [$20A2], sp
    add [hl]
    ld [$0000], sp
    nop
    nop
    nop
    rlca
    nop
    inc e
    nop
    ld sp, $2300
    nop
    ld h, a
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_029_5E29

jr_029_5E29:
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    sbc h
    nop
    inc e
    nop
    nop
    nop
    inc hl
    inc e
    ld b, d
    add hl, sp
    dec d
    ld h, e
    xor d
    ld b, a
    ld b, c
    adc [hl]
    inc de
    adc h
    add h
    add hl, de
    ld b, h
    jr c, jr_029_5E78

    db $FC
    ret z

    ldh a, [$A0]
    ret nz

    ldh [rP1], a
    sub b

jr_029_5E4E:
    ld h, b
    nop
    ldh a, [rNR10]
    ldh [rSC], a
    ld bc, $0708
    ld [bc], a
    inc c
    inc d
    ld [$030D], sp
    ld d, $0F
    jr z, jr_029_5E80

    ld [bc], a
    inc a
    ld l, b
    ldh a, [$34]
    ei
    ld c, d
    dec a
    dec h
    jr jr_029_5E4E

    db $FC
    ld bc, $7EFE
    add c
    ld l, $1F
    nop
    nop
    ld d, b
    jr nz, jr_029_5EA0

jr_029_5E78:
    sub b
    db $10
    add b
    adc [hl]
    nop
    ld sp, $C00E

jr_029_5E80:
    ccf
    jr c, @+$01

jr_029_5E83:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$10
    db $EC
    or d
    ld l, h
    inc b
    xor b
    inc c
    xor b
    db $FC
    ld a, b
    ld c, [hl]
    ld l, b
    dec l
    ld l, [hl]
    ld l, h
    dec sp
    dec de

jr_029_5EA0:
    dec a
    inc l
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    inc [hl]
    jp $3C42


    ld [bc], a
    ld bc, $0304
    dec bc
    ld b, $32
    inc e
    ld c, b
    inc [hl]
    jr nc, jr_029_5E83

    add h
    ld b, $01
    inc bc
    add b
    add hl, bc
    ld [$0209], sp
    add hl, bc
    ld c, $0B

jr_029_5ECB:
    ld b, $0E
    inc c
    ld c, $18
    inc e
    jr nc, jr_029_5ECB

    add b
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    jr jr_029_5EE1

jr_029_5EE1:
    nop
    nop
    ld bc, $0000
    nop
    ret nz

    ld c, $08
    ld c, $08
    ld c, $28
    adc $28
    adc $28
    adc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jr c, jr_029_5F27

jr_029_5F27:
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nz, jr_029_5F2F

jr_029_5F2F:
    stop
    nop
    nop
    ld b, $19
    ld [$0813], sp
    inc de
    ld [$1013], sp
    dec bc
    ld b, $01
    nop
    ld bc, $0000
    inc h
    ret nz

    inc c
    ret nz

    ld e, b
    add b
    sub b
    nop
    stop

jr_029_5F4D:
    sub b
    nop
    ld c, b
    add b
    and b
    ld b, b
    ld b, h
    jr c, jr_029_5F6B

    ld h, b
    jr z, @+$43

    ld a, [hl+]
    ld b, c
    nop
    inc hl
    db $10
    inc bc
    ld bc, $0002
    ld [bc], a
    cp b
    ld a, a
    ld h, e
    db $FC
    inc de
    ldh [$2A], a
    pop bc

jr_029_5F6B:
    ld c, d
    add c
    sbc b
    ld bc, $0110
    ld hl, $E100
    ld a, [hl]
    ld b, l
    ld hl, sp+$10
    pop hl
    ld [hl+], a
    pop bc
    nop
    jp $8344


    adc c
    ld b, $1C
    nop
    ld a, b
    and $50
    and $94
    ld [c], a
    jr nz, jr_029_5F4D

    ld b, h
    add d
    add b
    ld b, $02
    inc b
    ld [$1400], sp
    ld c, $0B
    rlca
    dec b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ldh [$F0], a
    sbc h
    ld a, [hl]
    inc de
    rrca
    nop
    nop
    nop
    nop

jr_029_5FB3:
    nop
    ld bc, $0000
    ld bc, $0203
    rlca
    dec e
    ld a, $E4
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, b
    ldh a, [$F0]
    ldh [$A0], a
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $08
    ld b, $08
    ld b, $08
    ld h, [hl]
    ld [$0866], sp
    ld h, [hl]
    ld [$0866], sp
    add b
    nop
    jr z, jr_029_5FB3

    xor b
    adc $A8
    adc $A8
    adc $A8
    adc $28
    adc $20
    adc $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rla
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    cp $00
    cp $00
    db $FC
    nop
    cp $00
    nop
    nop
    nop
    nop
    db $10
    rrca
    jr nz, jr_029_6068

    ld e, a
    ccf
    nop
    nop
    db $10
    rrca
    jr nz, @+$21

    ld e, a
    ccf
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38

jr_029_6068:
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    nop
    ld hl, sp+$77
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$00
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$00
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    nop
    nop
    ld e, e
    nop
    ld h, d
    add hl, de
    ld d, h
    dec hl
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ld b, d
    dec a
    ld d, b
    dec l
    ld b, d
    dec a
    ld d, h
    add hl, hl
    ld l, l
    nop
    nop
    nop
    rst $38
    nop
    add c
    nop
    add c
    nop
    and c
    ld d, h
    add c
    ld a, [hl]
    and e
    ld e, h
    xor e
    ld d, h
    ld l, h
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ccf
    inc d
    inc bc
    ld h, b
    rra
    ld b, b
    ccf
    jr z, jr_029_6134

    ld b, b
    ccf
    ld a, [hl]
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    nop
    ld [bc], a

jr_029_6134:
    db $FC
    ld b, $F8
    ld [$02F0], sp
    db $FC
    ld a, [bc]
    db $F4
    inc b
    ld hl, sp+$7E
    add b
    nop
    nop
    nop
    nop
    db $10
    rrca
    jr nz, jr_029_6168

    ld e, a
    ccf
    nop
    nop
    rra
    nop
    ccf
    nop
    ld e, a
    ccf
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38

jr_029_6168:
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    nop
    nop
    rst $38
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$00
    nop
    ld hl, sp+$08
    nop
    ld [$F800], sp
    ld [hl], b
    db $FC
    ld [hl], b
    ld a, [$F974]
    halt
    ld hl, sp+$77
    ld hl, sp+$70
    cp $71
    ld hl, sp+$70
    nop
    ld [hl], b
    inc b
    ld [hl], b
    ld [bc], a
    ld [hl], h
    ld bc, $0076
    ld [hl], a
    ld [hl], b
    nop
    ld d, $E9
    nop
    nop
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld [hl], b
    nop
    ld [de], a
    db $EC
    nop
    nop
    nop
    db $10
    inc b
    db $10
    ld [bc], a
    inc d
    ld bc, $0016
    rla
    stop
    ld d, $09
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld [hl], b
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_61F3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_620A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$10
    db $F4
    add sp, $3E
    db $EC
    ld a, $C4
    adc $B4
    xor h
    ld d, b
    jr z, jr_029_61F3

    adc b
    ld [hl], b
    ldh a, [rP1]
    ret nc

    jr nz, jr_029_620A

    add b
    sub b
    ld h, b
    sub b
    ld h, b
    ldh [rP1], a
    nop
    nop
    ld [$F0F0], sp
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$F0F0], sp
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    rrca
    jr nz, jr_029_6278

    jr c, @+$21

    ld a, [hl]
    ccf
    ccf
    rrca
    ld a, a
    ld bc, $00FF
    rrca
    nop
    rra
    rrca
    jr nz, jr_029_6288

    ld a, b
    ccf
    ld a, $1F
    ccf
    rrca
    ld a, a
    ld bc, $00FF
    rrca
    nop
    ccf
    rrca
    ld h, b

jr_029_6278:
    ccf
    jr c, jr_029_629A

    ld a, $1F
    ccf
    rrca
    ld a, a
    ld bc, $00FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_029_6288:
    cp $FF
    rst $38
    rst $38
    rst $20
    rst $30
    ld bc, $0001
    nop
    nop

jr_029_6293:
    rst $38
    cp $FF
    rst $30
    rst $38
    rst $30
    rst $38

jr_029_629A:
    ld hl, sp-$04
    di
    db $F4
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    cp $FF
    rst $30
    rst $38
    xor $FF
    db $E4
    and $D8
    db $E4
    jr jr_029_62C8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nz, @-$3E

    ld [hl], b
    add b
    nop
    nop
    nop
    nop
    nop

jr_029_62C8:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_029_6293

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rst $28
    db $10
    jp $1F3C


    ld [c], a
    ld a, a
    add h
    rst $38
    ld b, $FF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    ld c, $3F
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    ld bc, $183F
    rra
    nop
    rrca
    ld b, $1F
    ld c, $3E
    dec e
    ld a, l
    ld a, [hl-]
    ld a, a
    jr c, jr_029_636A

    nop
    ccf
    db $10
    ccf
    ld b, $1F
    ld c, $3E
    dec e
    ld a, l
    ld a, [hl-]
    ld a, a
    jr c, jr_029_6378

    nop
    nop
    nop
    rra
    ld b, $3F
    ld c, $3F
    inc e
    ld a, a
    jr c, jr_029_63CB

    jr c, jr_029_638A

    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    ld b, $17
    rrca
    dec sp
    rra
    dec sp
    rra
    ccf
    dec e
    dec e
    ld a, [bc]
    ld a, [hl+]
    dec d
    ld hl, sp-$80
    sbc b
    ldh a, [$8C]
    ld hl, sp-$32

jr_029_636A:
    db $FC
    sbc $FC
    call c, $3C38
    ret nc

    ld d, h
    xor b
    ld a, [de]
    dec b
    inc e
    inc bc
    ccf

jr_029_6378:
    inc c
    inc a
    jr jr_029_63B4

    nop
    ld c, b
    jr nc, jr_029_63C8

    jr nc, jr_029_63B2

    nop
    nop
    nop
    nop
    nop
    jr nc, jr_029_6389

jr_029_6389:
    ld a, b

jr_029_638A:
    jr nc, @-$02

    ld [hl], b
    or $48
    ld [hl], a
    ld [$021D], sp
    ld hl, sp+$40
    ret c

    ldh a, [$8C]
    ld hl, sp-$32
    db $FC
    sbc $FC
    call c, $3C38
    ret nc

    ld d, h
    xor b
    ld a, [hl-]
    dec b
    ld a, h
    inc bc
    sbc a
    ld l, b
    sbc b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_63B2:
    nop
    nop

jr_029_63B4:
    nop
    inc c
    nop
    ld e, $0C
    ld a, $1C
    ld a, $10
    inc sp
    inc c
    dec e
    ld [bc], a
    rra
    nop
    rrca
    nop
    rrca
    ld b, $17

jr_029_63C8:
    rrca
    dec sp
    rra

jr_029_63CB:
    dec sp
    rra
    ccf
    dec e
    ld a, l
    ld a, [bc]
    xor d
    ld d, l
    ld hl, sp+$20
    ret c

    ldh a, [$8C]
    ld hl, sp-$32
    db $FC
    sbc $FC
    call c, $3E38
    ret nc

    ld d, l
    xor d
    cp d
    ld b, l
    ld a, h
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    ld b, $1F
    ld c, $1F
    ld [$041B], sp
    dec bc
    inc b
    dec c
    ld [bc], a
    inc c
    inc bc
    ld b, $00
    dec bc
    ld b, $1D
    rrca
    ccf
    ld e, $3F
    rra
    ccf
    rra
    rra
    rrca
    cpl
    rla
    ldh a, [rP1]
    sbc b
    ldh a, [rNR32]
    ld hl, sp-$02
    db $FC
    cp $FC
    db $FC
    ld hl, sp-$08
    ldh a, [$F4]
    add sp, $5F
    jr nz, jr_029_64A5

    scf
    ccf
    add hl, de
    rra
    ld c, $1F
    rrca
    rrca
    inc b
    rrca
    nop
    rra
    nop
    dec a
    ld [bc], a
    inc sp

jr_029_6436:
    inc c
    ld a, [hl]
    jr nc, jr_029_6436

    ld [hl], b
    ld hl, sp+$70
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    rra
    nop
    ld a, a
    rla
    cp a
    ld e, c
    sbc a
    ld l, [hl]
    ld a, a
    rrca
    rrca
    inc b
    rrca
    nop
    rra
    nop
    ld sp, $3B0E
    inc b
    ccf
    jr @+$40

    inc e
    ld a, $1C
    ld e, $0C
    inc c
    nop

jr_029_6461:
    nop
    nop

jr_029_6463:
    rra
    nop
    ccf
    inc d
    ld a, a
    dec sp
    ld a, a
    inc a
    ccf
    rrca
    ld c, a
    jr nc, jr_029_64BF

    jr nc, jr_029_64B1

    nop
    ld c, $01
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    rra
    inc c
    rra
    ld c, $1F
    ld c, $0F
    ld b, $06
    nop
    rra
    nop
    ccf
    rra
    ld b, c
    ccf
    ld a, b
    ccf
    ld a, l
    ld a, $3E
    dec b
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $E0
    nop
    ldh a, [$A0]
    add sp, -$30
    db $FC
    ret c

    db $FC
    sbc b
    sbc h
    ld l, b
    jr c, jr_029_6461

    jr nc, jr_029_6463

    inc a
    inc bc

jr_029_64A5:
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    dec sp
    ld a, a
    inc sp
    ld [hl], e
    dec l

jr_029_64B1:
    inc sp
    dec c
    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$C0]
    add sp, -$30

jr_029_64BF:
    add sp, -$30
    ldh a, [$80]
    inc a
    inc bc
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld b, a
    ld c, a
    scf
    ld c, a
    scf
    db $10
    ldh [$E0], a
    nop

jr_029_64D7:
    ldh a, [$E0]
    ldh a, [$E0]

jr_029_64DB:
    ldh a, [$E0]
    db $F4
    ret z

    db $E4
    ret c

    ld hl, sp-$80
    inc a
    inc bc
    ld a, a
    inc c
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec de
    sbc a
    ld h, a
    sbc a
    ld l, a
    ld a, a
    rrca
    db $10
    ldh [$E0], a
    nop
    ldh a, [$E0]
    ldh a, [$E0]
    db $FC
    ldh a, [$FA]
    db $E4
    ld a, [c]
    call z, $80FC
    rra
    nop
    ld a, h
    rrca

jr_029_6507:
    ldh [$5F], a
    pop hl
    ld e, [hl]
    rst $20
    ld e, b
    rst $38
    ld b, e
    di
    ld h, b
    ld h, b
    nop
    ldh [rP1], a
    jr nz, jr_029_64D7

jr_029_6517:
    and b
    ld b, b
    jr nz, jr_029_64DB

    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    ld b, $17
    rrca
    dec sp
    rra
    add hl, sp
    rra
    dec sp
    dec e
    dec e
    ld a, [bc]
    ld a, [hl+]
    dec d
    ldh a, [rP1]
    sbc b
    ldh a, [$8C]
    ld hl, sp-$32
    db $FC
    sbc $FC
    db $FC
    jr c, jr_029_6578

    ret nc

    ld d, h
    xor b
    ld e, b
    and b
    jr nc, jr_029_6507

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    add sp, -$04
    ldh [$E4], a
    ret c

    db $E4
    ret c

    ld e, b
    and b
    jr nc, jr_029_6517

    ld hl, sp+$30
    db $FC
    ld hl, sp-$04
    add sp, -$02
    ldh a, [$F2]
    db $EC
    ld a, [c]
    db $EC
    ld e, b
    and b
    jr nc, @-$3E

    ld hl, sp+$30
    db $FC
    ld hl, sp-$02
    add sp, -$07
    and $F9
    and $FE
    ldh [rTAC], a
    nop
    ld [$0807], sp

jr_029_6578:
    rlca
    ld [$0807], sp
    rlca
    rlca
    nop
    rlca
    inc bc
    rlca
    nop
    ldh a, [rP1]
    db $10
    ldh [$50], a
    and b
    and b
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ld b, $00
    dec bc
    ld b, $1D
    rrca
    ccf
    ld e, $3F
    rra
    ccf
    rra
    rra
    rrca
    cpl
    rla
    ldh a, [rP1]
    sbc b
    ldh a, [rNR32]
    ld hl, sp-$02
    db $FC
    cp $FC
    db $FC
    ld hl, sp-$08
    ldh a, [$F4]
    add sp, -$08
    nop
    ld hl, sp+$30
    db $FC

jr_029_65B8:
    ret z

    db $FC
    jr c, jr_029_65B8

    ld hl, sp-$04
    add sp, -$04
    add sp, -$08
    ldh a, [$F8]
    nop
    ld hl, sp+$30
    db $FC
    ret z

    db $FC

jr_029_65CA:
    jr c, jr_029_65CA

    db $FC
    cp $F8
    ld a, [$FCF4]
    ldh a, [$F8]
    nop
    ld hl, sp+$30
    db $FC
    ret z

    cp $3C
    cp $FC
    db $FD
    ld a, [c]
    ld sp, hl
    or $FE
    ldh a, [rTAC]
    nop
    add hl, bc
    ld b, $0B
    dec b
    dec bc
    dec b
    rlca
    ld bc, $0007
    rlca
    inc bc
    inc bc
    nop
    ldh a, [rP1]
    sub b
    ld h, b
    ret z

    or b
    add sp, -$30
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ret nc

    cpl
    xor l
    ld d, d
    ld d, b
    xor a
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, $00
    and $F8
    ld c, e
    db $F4
    dec d
    ld a, [$FE01]
    ld bc, $01FE
    cp $01
    cp $FC
    nop
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    nop
    inc l
    inc de
    ret nc

    cpl
    and b
    rra
    ret nz

    ccf
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret z

    scf
    ldh a, [rIF]
    cp d
    ld b, l
    push de
    ld a, [hl+]
    ld a, [hl-]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $EB
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_029_669C:
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    rst $38
    nop
    ld d, $FF
    ld a, [bc]
    rst $38
    dec b
    cp $06
    rst $38
    add hl, bc
    cp $05
    ld a, [$A45B]
    db $EC
    nop
    ei
    nop
    ld l, [hl]
    pop af
    jr jr_029_669C

    push af
    nop
    nop
    nop
    db $FD
    ld [bc], a
    xor a
    nop
    nop
    nop
    rst $38
    nop
    ld d, h
    rst $38
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    ld l, c
    add b
    db $F4
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$00FF], a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    ret nz

    ccf
    or b
    rrca
    rra
    nop
    ld b, $F8
    ld b, $F8
    dec b
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$0E
    ldh a, [$0E]
    ldh a, [$0E]
    ldh a, [$7F]
    nop
    ld a, c
    nop
    ld d, b
    nop
    jr c, jr_029_670B

jr_029_670B:
    ld b, h
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    cp a
    ld a, a
    ld e, a
    rst $38
    and d
    ld a, a
    rst $18
    jr nz, jr_029_6724

jr_029_6724:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [bc], a
    rst $38
    ld d, $EB
    ld c, d
    or a
    ld d, $FF
    rst $38
    cp $FC
    rst $38
    dec d
    cp $90
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $FF
    sub c
    cp $FF
    nop
    ld b, b
    cp a
    nop
    cp a
    ret nz

    cp a
    sub b
    cp a
    ld e, a
    cp a
    adc a

jr_029_676E:
    ccf
    and b
    rra
    cp a
    nop
    rst $20
    nop
    nop

jr_029_6776:
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rla
    nop
    and b
    rra
    rrca
    cp a
    or b
    sbc a
    and b
    sbc a
    ld d, b
    adc a
    adc a
    nop
    nop
    nop
    jp nc, RST_00

    rst $38
    rst $38
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $FD
    nop
    nop
    nop
    add e
    nop
    jr z, jr_029_676E

    sub e
    rst $28
    call nc, $50EF
    rst $28
    jr z, jr_029_6776

    ld c, a
    nop
    nop
    nop
    xor e
    nop
    call z, $06F3
    ld sp, hl
    db $FD
    nop
    nop
    nop
    push de
    ld a, [hl+]
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    or h
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld h, l
    add b
    rlc b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $F9
    ld l, a
    sub b
    db $DB
    nop
    jr nc, jr_029_67E3

jr_029_67E3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $9EFE
    ld h, c
    ld a, l
    nop
    add $00
    dec b
    ld hl, sp+$03
    db $FC
    ld [bc], a
    db $FC
    ld b, $F8
    ld b, $F8
    rlca
    ld hl, sp+$07
    ld hl, sp+$0A
    db $F4
    sbc $00
    ld b, $00
    ld [$2400], sp
    nop

jr_029_680B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_6815:
    ld a, a
    nop
    add b
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_029_681F:
    cp a
    ld a, a
    ld a, a
    nop
    nop
    nop
    cp $00

jr_029_6827:
    ld bc, $01FE
    cp $FE
    rst $38
    cp $FF
    db $FD
    cp $FF
    nop
    xor d
    ld d, c
    ld a, [hl+]
    ld de, $304B
    ld l, e
    db $10
    ld c, d
    ld sp, $1269
    ld l, d
    ld de, $11EA
    jr nz, jr_029_680B

    ld h, b
    add [hl]
    jr nz, jr_029_681F

    add b
    ld d, [hl]
    and b
    ld b, [hl]
    jr nz, jr_029_6815

    jr nz, jr_029_6827

    nop
    sub $FF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3F00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $FF00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    inc bc
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_029_68DF

jr_029_68DF:
    add b
    nop
    jr jr_029_68E3

jr_029_68E3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld c, $00
    jr jr_029_68FD

jr_029_68FD:
    nop
    nop
    ld hl, $0300
    nop
    cp $00
    db $FC
    nop
    add b
    nop

jr_029_6909:
    ld c, $00

jr_029_690B:
    ld a, h
    nop
    pop af
    nop
    ld [c], a
    nop
    add $00
    ld b, b
    ccf
    ld h, b
    rra
    ld c, a
    jr nc, jr_029_6982

    db $10
    ld c, c
    jr nc, jr_029_6909

    db $10
    xor e
    ld d, b
    db $EB
    ld d, b
    ld bc, $01FE
    cp $F8
    ld b, $01
    ld b, $F0
    ld b, $E0
    ld b, $A0
    ld d, [hl]
    nop
    sub $AB
    ld d, b
    db $EB
    ld d, b
    xor c
    ld d, b
    jr z, @+$12

    ld h, b
    rra
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    jr nz, jr_029_690B

    ldh a, [rTMA]
    ldh a, [rTMA]
    ld [$0206], sp
    db $FC
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38

jr_029_6982:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $FF00
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld b, $00
    jp $F900


    nop
    ld a, $00
    ld b, $00
    ld bc, $7800
    nop
    ccf
    nop
    ld h, b
    nop
    nop
    nop
    rrca
    nop
    ld a, $00
    ld a, b
    nop
    ld b, b
    nop
    inc e
    nop
    ret nz

    nop
    ld [hl], b
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_029_69ED

jr_029_69ED:
    inc b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    inc c
    nop
    jr jr_029_6A09

jr_029_6A09:
    jr jr_029_6A0B

jr_029_6A0B:
    stop
    stop
    stop
    nop
    nop
    inc b
    nop
    rrca
    nop
    ld e, $01
    inc a
    inc bc
    ld a, h
    scf
    ld [hl], e
    cpl
    di
    ld l, [hl]
    db $E3
    ld e, l
    nop
    nop
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$02
    db $FC
    jp nc, $FA2C

    call nc, $68FC
    di
    ld c, l
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld d, e
    rst $38
    ld [hl], e
    ei
    ld d, b
    db $FC
    ld l, b
    ld hl, sp-$10
    ld hl, sp+$00
    ld hl, sp+$60
    ld hl, sp+$00
    db $FC
    ld [$60F8], sp
    ldh a, [rP1]
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0003
    inc b
    inc bc
    inc bc
    nop
    db $10
    ldh [$F0], a
    ldh [$F0], a
    ldh [$FC], a
    ldh [$F2], a
    adc h
    sub d
    ld l, h
    inc e
    ldh [$F0], a
    nop
    ld c, $00
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    jr c, @+$81

    jr nz, @+$01

    ld b, c
    db $FC
    nop
    add d
    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    sbc l
    ld a, d
    db $FD
    or d
    cp $A8
    adc $B4
    rst $38
    ld d, c
    rst $38
    ld e, c
    rst $38
    ld a, e
    rst $38
    ld e, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $30
    ld h, e
    call nz, $F8B8
    ret nz

    ldh a, [$80]
    ld hl, sp+$00
    ld hl, sp-$80
    ld hl, sp+$30
    ld hl, sp+$30
    ldh a, [rP1]
    rst $30
    ld b, e
    rst $20
    ld b, d
    ld b, a
    ld [bc], a
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$E0]
    ldh a, [$E0]
    db $FC
    ld h, b
    ld [hl], d
    adc h
    add $38
    ld a, h
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    ld [$3907], sp
    ld c, $74
    cpl
    ld [hl], d
    dec l
    ld [hl], a
    ld a, [hl+]
    ld l, a
    dec d
    ld c, a
    dec [hl]
    ld h, a
    dec de
    ld a, a
    jr nz, jr_029_6B7B

    ld sp, $307F
    ld a, a
    jr nc, jr_029_6B81

    dec [hl]
    rst $30
    xor d
    di
    xor h
    rst $20
    jp c, $02FF

    rst $38
    adc d
    rst $38
    ld c, $FF
    ld l, d
    rst $38
    ld l, [hl]
    ld c, a
    nop
    ld c, h
    inc bc
    ld d, a
    inc bc
    daa
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    pop af
    nop
    ld [hl], d
    add b
    ld [$E4C0], a
    ret nz

    ldh [rLCDC], a
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    jr nc, jr_029_6B65

    jr nc, jr_029_6B67

    jr nz, @+$22

    nop
    nop
    nop
    nop

Jump_029_6B3D:
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0E
    inc c
    inc c
    inc b
    inc b

jr_029_6B49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    ld [$3907], sp
    ld c, $74
    cpl
    ld a, [c]
    ld l, l
    rst $30
    ld l, d
    rst $28
    ld d, l
    ret nz

    nop

jr_029_6B65:
    ldh [rP1], a

jr_029_6B67:
    jr nc, jr_029_6B49

    inc a
    ldh a, [$EE]
    ld [hl], h
    rst $28
    ld [hl], $EF
    sub $F7
    xor d
    di
    xor h
    rst $20
    jp c, $06FF

    rst $38
    adc [hl]

jr_029_6B7B:
    rst $38
    ld c, $FF
    ld c, $FF
    or [hl]

jr_029_6B81:
    rst $38
    ld [hl], $79
    add b
    pop hl
    ret nz

    ldh [$C0], a
    ldh a, [$C0]

jr_029_6B8B:
    ret z

    or b
    add h
    ld a, b
    call nz, $F838
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_6BA0:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_029_6B8B

    inc a
    ldh a, [$EE]
    ld [hl], h
    xor $34
    xor $D4
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rla
    ld [$041B], sp
    inc a
    dec de
    ld a, a
    inc [hl]
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $10
    ret c

    jr nz, jr_029_6C0C

    ret c

    ld a, h
    cp b
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld l, d
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld e, b
    rst $38
    ld d, b
    ld a, [$FC54]
    ld d, b
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$10
    db $FC

jr_029_6BEE:
    jr @-$02

    jr jr_029_6BEE

    jr jr_029_6BA0

    inc bc
    cp a
    ld bc, $01B3
    ld d, e
    nop
    ld [hl+], a
    ld bc, $0304
    inc b
    inc bc
    rlca
    nop
    ld [hl], d
    add b
    ld a, [c]
    ret nz

    ld [$EAC0], a
    ld b, b
    ld b, h

jr_029_6C0C:
    add b
    ld b, b
    add b
    and b
    ld b, b
    ret nz

    nop
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_029_6C3B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $10

jr_029_6C3B:
    ret z

    jr nc, @+$1E

    add sp, $3E
    call c, $AC7E
    cp $2C
    cp $2C
    cp $2C
    cp $24
    cp $0C
    cp $0C
    cp $04
    cp $04
    ld e, [hl]
    ld bc, $015B
    dec hl
    ld bc, $0113
    rrca
    ld bc, $0C13
    jr jr_029_6C68

    rrca
    nop
    ld a, [hl-]
    ret nz

    ld a, [$F4C0]

jr_029_6C68:
    ret nz

    add sp, -$40
    ld hl, sp-$40
    db $E4
    sbc b
    adc h
    ld [hl], b
    ld hl, sp+$00
    jr nz, jr_029_6C95

    jr nz, jr_029_6C97

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec c
    nop

jr_029_6C95:
    rra
    nop

jr_029_6C97:
    rra
    ld bc, $030F
    jr @+$09

    ccf
    nop
    ld a, a
    add hl, sp
    ld a, a
    dec h
    ld hl, sp+$00

jr_029_6CA5:
    inc b
    ld hl, sp+$44
    ld hl, sp-$7E
    db $FC
    ld a, [hl+]
    call nc, $A07C
    ld hl, sp+$50
    ld hl, sp-$30
    ld a, a
    dec h
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld e, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [$F8]
    ret nc

    ld hl, sp-$10
    ldh a, [rP1]
    ldh [rP1], a
    ld hl, sp+$00
    db $FC
    jr @-$02

    ret c

    ld hl, sp+$00
    sbc c
    nop
    jr nc, jr_029_6CD7

jr_029_6CD7:
    db $E3
    nop
    rrca
    ld bc, $0A17
    ld [de], a
    dec c
    jr jr_029_6CE8

    rra
    nop
    jr nz, jr_029_6CA5

    ldh [rLCDC], a
    db $FC

jr_029_6CE8:
    ldh [$F2], a
    db $EC
    ld [c], a
    inc e
    ld b, h
    cp b
    ld c, h
    or b
    ld hl, sp+$00
    ld h, b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld e, b
    rst $38
    ld [hl], c
    rst $38
    pop af
    ei
    ld h, b
    ld hl, sp-$10
    ldh a, [rP1]
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ret nz

jr_029_6D22:
    nop
    sub b
    ld h, b
    ld [hl], b
    jr nz, jr_029_6D98

    jr nz, jr_029_6D22

    ld h, b
    db $FC
    nop
    add [hl]
    ld a, b
    add d
    ld a, h
    cp $00
    ldh a, [$C0]

jr_029_6D35:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    dec h
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld a, b
    rst $38
    ld d, [hl]
    rst $38
    halt
    rst $38
    ldh a, [$F8]
    ret nc

    ld hl, sp-$10
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$10
    ld hl, sp-$30
    ldh a, [rP1]
    sbc c
    nop
    jr nc, jr_029_6D67

jr_029_6D67:
    pop hl
    nop
    inc bc
    ld bc, $0207
    ld a, [bc]
    dec b
    inc c
    inc bc
    rlca
    nop
    jr nz, jr_029_6D35

    ldh a, [rLCDC]
    cp $F0
    ld sp, hl
    or $F1
    ld c, $22
    call c, $D826
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_6D98:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    add [hl]
    nop
    rrca
    nop
    ld d, h
    dec bc
    cp c
    ld d, $76
    dec l
    ld e, a
    add hl, hl
    ld e, a
    add hl, hl
    ld b, c
    nop
    db $EC
    nop
    ld a, d
    add h
    or $08
    ld c, l
    or [hl]
    ld c, a
    cp d
    ld a, a
    sbc d
    db $FD
    sbc d
    ld [hl], $09
    ld d, l
    ld [$0855], sp
    ld d, l
    ld [$046B], sp
    dec h
    nop
    stop
    add b
    nop
    db $DD
    adc d
    ld d, l
    adc d
    ld d, l
    adc d
    ld d, l
    adc d
    ld d, d
    adc h
    ld l, h
    sub b
    or b
    ld b, b
    ld b, b
    nop
    nop
    nop
    inc b
    ld [$0010], sp
    ld bc, $0B00
    db $10
    jr jr_029_6E7F

    ld de, $2320
    ld b, b
    inc e
    ld [bc], a
    ld [bc], a
    ld bc, $00F9
    db $FC
    nop
    cp $00
    ld sp, hl
    ld b, $92
    ld l, l
    ld [hl+], a
    db $DD
    jr jr_029_6E7B

    ld c, $00
    nop
    nop
    ld [hl], b
    nop

jr_029_6E7B:
    ld hl, sp+$00
    db $FC
    nop

jr_029_6E7F:
    ldh a, [rP1]
    ld a, b
    add b
    ld h, $41
    ld h, $43
    ld l, l
    ld [bc], a
    ld c, e
    inc b
    ld e, d
    inc b
    ld d, $08
    inc d
    ld [$0814], sp
    and $99
    db $FC
    ld de, $30F9
    ld l, d
    jr nc, jr_029_6F12

    jr nz, jr_029_6EF5

    jr nz, jr_029_6EF5

    ld [hl+], a
    sub h
    ld h, d
    ld c, h
    or b
    ld h, $D8
    cp e
    call nz, $C2ED
    ld h, l
    jp nz, Jump_029_42E5

    add d
    ld h, b
    ret nz

    jr nz, jr_029_6F08

    ld [$004C], sp
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nz, jr_029_6EBF

jr_029_6EBF:
    jr nz, jr_029_6EC1

jr_029_6EC1:
    nop
    nop
    or [hl]
    ld b, b
    and h
    ld b, d
    and [hl]
    ld b, b
    and h
    ld b, b
    xor b
    ld b, b
    ld d, c
    jr nz, jr_029_6EF1

    nop
    ld bc, $5000
    jr nz, @+$6A

    db $10
    jr z, jr_029_6EE9

    jr z, jr_029_6EEB

    or b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    db $10

jr_029_6EE9:
    add hl, de
    ld [hl+], a

jr_029_6EEB:
    ld sp, $6342
    nop
    ld b, d
    nop

jr_029_6EF1:
    ld [bc], a
    nop
    jr nc, jr_029_6EF5

jr_029_6EF5:
    jr jr_029_6EF7

jr_029_6EF7:
    jr jr_029_6EF9

jr_029_6EF9:
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_029_6F05

jr_029_6F05:
    ld h, b
    nop
    ld e, b

jr_029_6F08:
    nop
    jr nc, jr_029_6F0B

jr_029_6F0B:
    ld h, b
    nop
    ld h, b
    nop
    ld h, c
    nop
    inc hl

jr_029_6F12:
    nop
    jr nz, @+$1A

    ld a, b
    inc b
    nop
    nop
    jr z, jr_029_6F31

    inc c
    inc bc
    ld b, $01
    inc bc
    nop
    add c
    nop
    ld bc, $6020
    db $10
    jr nc, jr_029_6F29

jr_029_6F29:
    sub b
    ld b, b
    ret nz

    jr nz, @+$62

    db $10
    jr nz, jr_029_6EC1

jr_029_6F31:
    sub b
    ld b, b
    jr nz, jr_029_6F35

jr_029_6F35:
    nop
    nop
    nop
    nop
    ld bc, $0E0E
    ld de, $2118
    ld sp, $2302
    inc b
    nop
    nop
    nop
    nop
    or b
    ld [$4498], sp
    adc h
    ld b, d
    add $00
    ld b, d
    nop
    ld b, b
    nop
    dec e
    ld [hl+], a
    ld sp, $2202
    nop
    ld [hl+], a
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    rlca
    jr jr_029_6F7C

    inc b
    ld c, b
    ld b, $44
    ld [bc], a
    ld b, h
    ld [hl+], a
    ld b, [hl]

jr_029_6F7C:
    jr nz, jr_029_6FE2

    ld [bc], a
    ld b, [hl]
    add b
    call nz, $8600
    nop
    add [hl]
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    jr nz, jr_029_6F9F

    db $10
    ld [$0418], sp
    dec d
    ld [hl+], a
    inc hl
    nop
    inc bc
    inc b
    ld b, $08
    dec c
    db $10
    dec bc
    db $10

jr_029_6F9F:
    dec de
    nop
    inc de
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    jr c, jr_029_6FAB

jr_029_6FAB:
    inc e
    nop
    inc b
    nop
    pop hl
    ld [bc], a
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc b
    jr @+$21

    jr nz, @+$32

    ld b, b
    ld h, b
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    rrca
    db $10
    ld [hl+], a
    inc c
    inc h
    ld [$0804], sp
    inc b
    ld [$000D], sp
    ld [$0901], sp
    nop
    add hl, bc

jr_029_6FE2:
    nop
    rra
    nop
    jr c, jr_029_6FE7

jr_029_6FE7:
    ld h, d
    nop
    ld b, d
    inc b
    inc b
    ld [$100E], sp
    ld a, [de]
    inc h
    ld [hl-], a
    inc b
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0009
    dec l
    ld b, b
    rst $30
    nop
    add hl, de
    nop
    add c
    nop
    and e
    nop
    or e
    nop
    or d
    nop
    or b
    nop
    jr nz, jr_029_702F

jr_029_702F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    dec b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1E06], sp
    ld bc, $8031
    nop
    nop
    ld bc, $0202
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    ld hl, $F0C0
    nop
    jr nz, jr_029_7075

    inc h
    db $10
    ld [hl], $00
    ld d, $00
    ld d, $00
    ld b, h
    nop
    db $E4
    nop
    ldh [rP1], a
    sub b
    nop

jr_029_7075:
    jr jr_029_7077

jr_029_7077:
    inc c
    nop
    inc c
    nop
    inc b
    nop
    inc b
    add b
    nop
    ret nz

    add b
    ld b, b
    add [hl]
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc e
    inc bc
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr z, jr_029_70A9

    ld [$1C04], sp
    nop

jr_029_70A9:
    jr jr_029_70AB

jr_029_70AB:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr jr_029_70D7

jr_029_70D7:
    jr nc, jr_029_70D9

jr_029_70D9:
    inc sp
    nop
    daa
    nop
    ld c, $00
    call z, $E800
    nop
    nop
    nop
    inc c
    nop
    ld b, $00
    ld [bc], a
    nop
    jr nc, jr_029_70ED

jr_029_70ED:
    jr jr_029_70EF

jr_029_70EF:
    inc e
    nop
    ld c, $80
    inc [hl]
    inc bc
    ld sp, $1D02
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$08]
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    ld [$1880], sp
    add b
    sbc b
    nop
    sbc h
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_029_713F

    inc c
    ld [bc], a
    db $E4
    ld [bc], a

jr_029_713F:
    add d
    nop
    ld a, [c]
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $1000
    nop
    ld sp, $7300
    nop
    ld h, e
    nop
    ld b, d
    nop
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0202
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    sub b
    nop
    or h
    ld [bc], a
    rst $28
    nop
    sbc b
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, [bc]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld b, b
    jr nz, @+$42

    jr nz, jr_029_71C8

    nop
    jr nz, jr_029_71AB

jr_029_71AB:
    jr nz, jr_029_71AD

jr_029_71AD:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_029_71B9

jr_029_71B9:
    jr jr_029_71BB

jr_029_71BB:
    inc e
    nop
    inc c
    nop
    inc h
    ret nz

    ldh a, [rP1]
    ld c, b
    nop
    ld b, b
    nop
    nop

jr_029_71C8:
    nop
    nop
    nop
    ld b, b
    nop
    ld e, b
    nop
    call z, $CE00
    nop
    nop
    nop
    ld a, l
    ld [bc], a
    nop
    rst $38
    xor $06
    jr nc, jr_029_723D

    rrca
    ldh a, [$F7]
    add hl, de
    inc sp
    nop
    ld d, $F0
    ld [$23C7], sp
    inc [hl]
    sub b
    rst $20
    ld h, b
    inc bc
    inc d
    add hl, de
    nop
    jp $018E


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07FF
    db $FD
    dec e
    db $FD
    push af

jr_029_723D:
    ei
    ld a, [bc]
    rst $30
    inc d
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $02
    db $FC
    ld bc, $00FF
    rst $38
    inc c
    rst $38
    add h
    rst $38
    ld [hl+], a
    rst $38
    rrca
    rst $38
    rst $08
    cp $3E
    ld hl, sp+$18
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sbc c
    rst $38
    db $DB
    sbc e
    sbc e
    inc sp
    inc sp
    ld h, e
    ld h, d
    rst $00
    add $FF
    dec sp
    rst $28
    dec hl
    rst $38
    dec sp
    rst $28
    dec hl
    rst $28
    dec hl
    rst $38
    dec sp
    rst $18
    ld e, e
    rst $18
    ld d, e
    rst $38
    ld bc, $02FE
    db $FC
    inc b
    ld hl, sp+$00
    db $FC
    nop
    cp $02
    cp $00
    rst $38
    ld bc, $0000
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    ldh [$E0], a
    add a
    add a
    ccf
    jr c, @+$01

    add b
    rst $38
    ld bc, $03FF
    rst $38
    rrca
    rst $38
    ld a, [hl]
    db $FC
    db $E4
    ld sp, hl
    add hl, bc
    di
    ld [de], a
    rst $20
    ld h, h
    sbc a
    sbc c
    db $FC
    db $E4
    di
    di
    rst $38
    ld a, a
    rst $28
    add hl, hl
    rst $28
    inc hl
    rst $18
    ld d, d
    cp a
    and [hl]
    ld a, a
    ld c, h
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld c, $F7
    ld b, $FF
    ld c, $F7
    ld d, $F7
    inc d
    rst $28
    inc l
    rst $08
    ld c, c
    sbc a
    sub d
    ldh [rNR42], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    add b
    add b
    rst $38
    inc e
    rst $38
    ld c, $FF
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    cp $02
    cp $02
    cp $06
    add b
    add b
    ret nz

    ld b, b
    ldh a, [rNR10]
    ld a, b
    ld c, b
    cp h
    and h
    cp $F2
    xor $AA
    rst $30
    sub l
    rst $38
    nop
    rst $38
    nop
    cp $06
    ld hl, sp+$08
    di
    inc de
    rst $30
    inc d
    rst $38
    add hl, sp
    cp $3A
    rst $38
    rrca
    rst $38
    ld e, $3F
    add hl, sp
    rst $38
    db $E3
    rst $38
    adc [hl]
    rst $38
    inc a
    ccf
    jr nc, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04FC
    ldh a, [rNR10]
    db $FC
    dec b
    ld hl, sp+$0B
    ldh a, [rNR13]
    ldh [rNR44], a
    ret nz

    ld b, a
    nop
    rrca
    nop
    rra
    nop
    ccf
    di
    add e
    adc $8E
    ld hl, sp-$08
    pop hl
    pop hl
    add a
    add a
    ccf
    scf
    rst $38
    adc a
    ld hl, sp+$38
    adc a
    adc h
    rra
    add hl, de
    ld a, [hl]
    ld h, [hl]
    ld hl, sp-$38
    pop hl
    ld h, c
    jp $0EC3


    ld c, $3C
    inc [hl]
    cp a
    or e
    ccf
    inc sp
    ld e, a
    ld d, d
    rst $38
    and $BF
    add [hl]
    ld a, a
    ld c, h
    ld a, a
    dec c
    rst $30
    sub l
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    inc e
    rst $38
    inc c
    nop
    rlca
    nop
    inc bc
    add b
    add e
    add b
    inc bc
    ret nz

    ld b, c
    ret nz

    ld bc, $01C0
    ldh [rNR42], a
    ld a, a
    ld [hl], c
    rst $38
    rst $08
    rst $38
    cp a
    rst $28
    rst $28
    ccf
    jr c, jr_029_742D

    ld h, c
    rst $38
    rst $00
    rst $38
    ld e, $FF
    rst $38
    rst $38
    db $FC
    rst $38
    pop hl
    rst $38
    ld b, $FF
    jr @+$01

    pop hl
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld bc, $04FC
    rst $30
    ld d, $FF
    add hl, sp
    rst $38
    ld h, [hl]
    rst $38
    sbc b
    rst $38
    jr nz, @+$01

    rlca
    ccf
    inc h
    rst $38
    adc c
    rst $38
    inc sp
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    cp $FE
    db $FC
    db $FC
    db $FC
    db $FC
    ld hl, sp-$08
    ldh a, [$F0]
    ret nz

    ret nz

    db $FD
    dec [hl]
    db $FD
    ld c, l
    ei
    ld a, [de]
    rst $30
    inc [hl]
    rst $38
    ld [hl], c
    cp $C2
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $30
    dec [hl]
    rst $20
    ld h, h
    jp $9342


    sub d
    inc sp
    ld [hl-], a
    ei
    jp c, $32FB

    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    daa
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    adc h
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    rst $38

jr_029_742D:
    rst $38
    rst $38
    rst $38
    jp $3EFF


    rst $38
    inc bc
    db $FD
    dec c
    di
    inc sp
    rst $20
    and $8F
    adc l
    inc e
    inc e
    add hl, sp
    add hl, sp
    inc bc
    inc bc
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rra
    rst $38
    ld bc, $04FC
    rst $30
    ld d, $FF
    add hl, sp
    rst $38
    ld h, [hl]
    rst $38

jr_029_74AE:
    sbc b
    rst $38
    jr nz, jr_029_74AE

    inc b
    ccf
    inc h
    rst $38
    adc c
    cp $32
    db $FC
    call nz, $08F8
    ldh [rNR41], a
    add b
    add b
    nop
    nop
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    rst $38
    ld h, c
    rst $38
    add a
    rst $38
    inc a
    rst $38
    ld h, c
    rst $38
    add a
    rst $38
    ld e, $FF
    jr nc, @+$01

    ret nz

    rst $38
    ldh [rIE], a
    inc bc
    cp $3E
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07FF
    cp $0E
    db $FC
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rP1], a
    ldh [rLCDC], a
    ldh a, [rP1]
    ld hl, sp+$20
    cp $10
    rst $38
    jr @+$01

    ld c, $FF
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $FC
    add b
    rst $38
    ld sp, $0FFF
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld c, b
    rst $38
    ld h, c
    rst $38
    inc sp
    rst $38
    ld a, [hl-]
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    rst $38
    nop
    rst $38
    nop
    reti


    rlca
    sub b
    rrca
    xor a
    db $10
    rst $38
    nop
    or [hl]
    ld c, a
    add sp, $1F
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $18
    ldh [$1F], a
    ldh [$9F], a
    ld h, b
    rst $18
    jr nz, jr_029_76B1

    add b
    ld h, c
    ld e, $C0
    cpl
    adc l
    ld d, d
    sbc [hl]
    ld hl, $43BD
    sbc $23
    or e
    ld a, [bc]
    dec l
    ld e, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$7F], a
    add b
    rst $38
    nop
    sub e
    ld l, h
    ld hl, $FFDE
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $9C3C


    ld a, l
    ld h, $DF
    ld a, e
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    ret nc

    add a
    ld a, b
    jp nz, Jump_029_6B3D

    sub h
    ld a, a
    add b
    rlca
    ld hl, sp+$1F
    ldh [$30], a
    ret nz

    ld h, e
    add b
    ld c, h
    add b
    reti


    nop
    db $DB
    nop
    rst $18
    nop
    ldh [$1F], a
    ld hl, sp+$07
    db $FC
    inc bc
    or $01
    ld a, e
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    rra
    nop
    jr nc, jr_029_76A8

    ld h, e
    inc e
    ld c, h
    inc sp
    reti


    ld h, $DB
    inc h
    rst $18
    jr nz, @-$1E

    nop
    ld hl, sp+$00
    db $FC

jr_029_76A8:
    nop
    or $08
    ld a, e
    add h
    cp a
    ld b, b
    rst $38
    nop

jr_029_76B1:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$09], a
    ldh [$03], a
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld h, e
    nop
    ld b, a
    db $10
    inc c
    and b
    add hl, de
    ret nz

    inc de
    ret nz

    ld bc, $07EC
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_029_76F0:
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    ret nz

    inc sp
    add b
    ccf
    ret nz

    ld c, $E0
    ld sp, $CD80
    nop
    db $FC
    nop
    ld [hl], a
    nop
    ld bc, $0088
    db $FC
    nop
    rst $08
    nop
    inc sp
    nop
    inc bc
    nop
    rst $08
    nop
    rst $38
    db $E3
    inc e
    rst $08
    jr nc, jr_029_76F0

    daa
    ldh a, [$09]
    ld a, [c]
    dec b
    or a
    ld c, b
    rst $28
    db $10
    ccf
    nop
    ld l, a
    sub b
    and a
    ld e, b
    ld [hl], a
    adc b
    scf
    ret z

    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop

jr_029_7733:
    ld e, e
    inc a
    ld c, [hl]
    ld sp, $23DD
    db $EB
    rla
    ld a, [$F907]
    ld b, $FC
    inc bc
    rst $38
    nop
    ld b, b

jr_029_7744:
    and a
    ld [hl], b
    adc e
    cp c
    call nz, $F20D
    rst $00
    jr c, jr_029_7733

    jr jr_029_7744

    ld [$10E9], sp
    db $FD
    ld [bc], a
    adc a
    ld [hl], b
    ld [hl-], a
    cp l

jr_029_7759:
    ld e, b
    rst $38
    ld a, [hl+]
    db $DD
    xor d
    ld e, l
    rst $20
    jr jr_029_7759

    ld [$00FF], sp
    add hl, sp
    add $04
    rlc d
    add l
    inc sp
    ld c, b
    ld a, e
    inc b
    ld e, e
    add h
    ld l, e
    add h
    ld e, [hl]
    ld d, c
    ld a, a
    pop hl
    ccf
    and b
    rra
    rst $18
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $90
    ld a, [hl]
    and e
    ld e, h
    xor l
    ld d, b
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, [hl]
    ld d, b
    ld a, a
    ld h, c
    ccf
    jr nz, jr_029_77B9

    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $90
    ld a, [hl]
    ld [hl+], a
    ld e, h
    inc c
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ldh [$1F], a
    ret nz

    ccf
    add b

jr_029_77B9:
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $20
    jr @+$01

    nop
    pop bc
    ld [hl-], a
    add b
    ld h, a
    add a
    ld a, b
    ld a, a
    add b
    ldh a, [rIF]
    db $E3
    inc e
    rrca
    ldh [$0E], a
    ldh [$0D], a
    ldh [$09], a
    ldh [rP1], a
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $DB
    nop
    sub e
    nop
    rrca
    ld h, b
    rra
    ret nz

    ld de, $31C6
    add b
    ld b, $E0
    rlca
    ld hl, sp+$01
    ld hl, sp+$00
    and $00
    ldh [rP1], a
    ld sp, hl
    nop
    rst $38
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    sbc a
    nop
    inc sp
    nop
    ccf
    ld b, b
    rrca
    ldh [rSB], a
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    nop
    rlca
    nop
    ld sp, $0100
    nop
    rrca
    nop
    inc sp
    nop
    ccf
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_029_7834:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$06
    ldh a, [rTAC]
    ret nz

    ld sp, $0100
    ldh a, [rIF]
    ret nz

    inc sp
    add b
    ccf
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    add hl, bc
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [hl-], a
    add b
    nop
    adc c
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc c
    nop
    inc sp
    nop
    ccf
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld [de], a
    inc c
    ld b, b
    inc sp
    ld b, b
    ccf
    nop
    nop
    jr nc, jr_029_7897

jr_029_7897:
    call z, $FC00
    nop
    jr nc, jr_029_789D

jr_029_789D:
    nop
    nop
    or b
    nop
    ret z

    jr nc, jr_029_7834

    nop
    sub b
    nop
    ret nc

    nop
    ld a, a
    nop
    ld bc, $1100
    nop
    or b
    nop
    ld h, b
    nop
    and b
    nop
    and d
    nop
    ld h, d
    nop
    call nz, $8000
    nop
    nop
    nop
    ldh [rP1], a
    inc a
    nop
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld [$3F00], sp
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    add h
    nop
    adc h

jr_029_78FB:
    nop
    sbc $00
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld c, l
    halt
    halt
    jr nz, jr_029_792D

    nop
    nop
    nop
    nop
    nop
    nop
    call z, $FD00
    nop
    ld sp, $0C00
    nop
    inc sp
    nop
    ccf
    nop
    ld c, a
    nop
    rst $38
    nop
    xor $00
    add b
    ld bc, $6700
    nop
    sbc c

jr_029_792B:
    nop
    add c

jr_029_792D:
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    call z, $FD00
    nop
    ld sp, $0C00
    ret nz

    inc sp
    add b
    ccf
    nop
    ld c, a
    nop
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    ld b, b
    dec a
    ld b, b
    jr jr_029_792B

    nop
    db $E3
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    jr jr_029_7977

jr_029_7977:
    inc h
    jr jr_029_78FB

    ld h, [hl]
    jp $3E7E


    jr jr_029_7998

    nop
    nop
    nop
    inc de
    inc c
    dec c
    nop
    nop
    nop
    jr nc, jr_029_798B

jr_029_798B:
    call z, $FC00
    nop
    jr nc, jr_029_7991

jr_029_7991:
    nop
    nop
    ld [bc], a
    call z, $FC86
    ld a, b

jr_029_7998:
    jr nc, jr_029_79CA

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_029_79A5

jr_029_79A5:
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    cp $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop

jr_029_79CA:
    inc bc
    nop
    add c
    nop
    pop hl
    nop
    di
    nop
    rst $30
    nop
    inc e
    nop
    dec c
    nop
    rlca
    nop
    rlca
    nop
    jp $FF00


    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld bc, $1100
    nop
    jr jr_029_79FE

jr_029_79FE:
    ccf
    nop
    ccf
    nop
    ld a, a
    cp a
    nop
    cp a
    add d
    dec a
    dec h
    inc e
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ret nz

    ld b, c
    inc h
    add d
    ld a, $01
    inc h
    adc h
    nop
    ld bc, $AE24
    nop
    add d
    inc h
    add d
    ld a, $01
    inc h
    adc h
    nop
    ld bc, $AE24
    nop
    add d
    inc h
    add d
    nop
    ld bc, $8C24
    nop
    ld bc, $AE24
    nop
    add d
    inc h
    add d
    nop
    ld bc, $8C24
    nop
    ld bc, $AE24
    nop
    add d
    inc h
    add d
    nop
    ld bc, $8324
    nop
    add l
    inc h
    add h
    nop
    ld bc, $AE24
    nop
    add d
    inc h
    adc d
    nop
    add e
    inc h
    add d
    nop
    ld bc, $8424
    nop
    and h
    inc h
    add [hl]
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8424
    nop
    ld bc, $8424
    nop
    ld bc, $9424
    nop
    ld bc, $8D24
    nop
    ld bc, $8624
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8424
    nop
    ld bc, $8424
    nop
    ld bc, $9424
    nop
    ld bc, $8D24
    nop
    ld bc, $8624
    nop
    adc b
    inc h
    add h
    nop
    ld bc, $8424
    nop
    ld bc, $8424
    nop
    ld bc, $9424
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    add l
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8424
    nop
    ld bc, $8424
    nop
    ld bc, $9424
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8424
    nop
    ld bc, $8424
    nop
    ld bc, $8624
    nop
    add a
    inc h
    add a
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8924
    nop
    ld bc, $8624
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8924
    nop
    ld bc, $8624
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8924
    nop
    ld bc, $8624
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    add h
    nop
    sub c
    inc h
    add [hl]
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    adc a
    inc h
    sbc e
    nop
    ld bc, $8D24
    nop
    ld bc, $9424
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8D24
    nop
    ld bc, $9424
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8D24
    nop
    ld bc, $9424
    nop
    adc e
    inc h
    add h
    nop
    adc a
    inc h
    adc l
    nop
    ld bc, $9424
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $9B24
    nop
    ld bc, $8624
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $9924
    nop
    add e
    inc h
    add [hl]
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $9924
    nop
    ld bc, $8824
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $9924
    nop
    ld bc, $8824
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8624
    nop
    adc b
    inc h
    adc e
    nop
    ld bc, $8824
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8624
    nop
    ld bc, $9224
    nop
    ld bc, $8824
    nop
    ld bc, $8524
    ld a, $88
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8624
    nop
    ld bc, $9224
    nop
    ld bc, $8824
    nop
    ld bc, $8524
    ld a, $88
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8624
    nop
    ld bc, $9224
    nop
    ld bc, $8824
    nop
    ld [bc], a
    inc h
    rst $30
    add h
    ld a, $8A
    inc h
    adc l
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sub c
    nop
    add d
    inc h
    adc b
    nop
    ld bc, $8524
    ld a, $88
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8524
    nop
    ld bc, $9224
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    ld a, $88
    nop
    add d
    inc h
    add h
    nop
    adc d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    add l
    inc h
    add [hl]
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    ld a, $88
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8824
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8824
    nop
    ld bc, $8B24
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8824
    nop
    ld bc, $8B24
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8F24
    nop
    ld bc, $8724
    nop
    adc l
    inc h
    add [hl]
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $8F24
    nop
    ld bc, $9324
    nop
    ld bc, $8624
    nop
    sub [hl]
    inc h
    adc a
    nop
    ld bc, $9324
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and e
    nop
    ld bc, $9324
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and e
    nop
    ld bc, $9324
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and e
    nop
    ld bc, $9324
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and d
    nop
    adc [hl]
    inc h
    add a
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and d
    nop
    ld bc, $8C24
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and d
    nop
    ld bc, $8C24
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sbc a
    nop
    add h
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add [hl]
    nop
    add d
    inc h
    add l
    nop
    sbc e
    inc h
    adc a
    nop
    ld bc, $8624
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8624
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8624
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8624
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8624
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add [hl]
    nop
    add d
    inc h
    xor a
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and e
    nop
    adc l
    inc h
    add a
    nop
    ld bc, $8624
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    ret nz

    ld b, c
    inc h
    nop
    ld e, $0E
    ld bc, $0B13
    halt
    ld [bc], a
    ld bc, $8619
    ld a, [hl]
    inc bc
    ld a, e
    ld a, [hl]
    ld a, e
    add h
    ld a, [hl]
    add hl, bc
    ld a, e
    adc c
    ld a, [hl]
    adc d
    adc c
    db $DD
    sbc $DF
    inc c
    add a
    add d
    ld [bc], a
    ld a, e
    inc a
    adc d
    db $FD
    inc bc
    dec a
    ld l, d
    inc a
    add e
    db $FD
    ld b, $6C
    db $ED
    xor $EF
    inc c
    adc d
    add [hl]
    add d
    ld bc, $8C8D
    db $FD
    ld bc, $835D
    db $FD
    add d
    ld e, $82
    ld a, h
    ld [bc], a
    adc a
    ld a, e
    add a
    add d
    ld bc, $858D
    db $FD
    ld bc, $86FE
    db $FD
    ld bc, $856D
    db $FD
    inc b
    dec de
    sbc [hl]
    sbc a
    adc d
    add a
    add d
    ld bc, $848A
    db $FD
    add e
    cp $85
    db $FD
    ld bc, $856A
    db $FD
    inc bc
    adc a
    dec sp
    adc e
    adc b
    add d
    ld bc, $848D
    db $FD
    dec b
    cp $1E
    ld c, d
    ld l, d
    pop af
    add e
    db $FD
    ld bc, $844A
    db $FD
    inc bc
    pop af
    adc a
    adc d
    adc c
    add d
    ld bc, $858D
    db $FD
    inc b
    ld e, l
    ld l, d
    ld l, e
    inc a
    add e
    db $FD
    ld bc, $8559
    db $FD
    ld [bc], a
    adc a
    adc c
    adc c
    add d
    ld [bc], a
    ld a, e
    ld c, h
    add h
    db $FD
    inc bc
    ld l, l
    ld a, d
    ld e, e
    add h
    db $FD
    ld b, $F1
    db $FD
    db $FD
    cp $FD
    db $FD
    ld bc, $838B
    add d
    ld bc, $868A
    add d
    ld [bc], a
    ld a, e
    pop af
    add h
    db $FD
    inc bc
    ld e, e
    ld a, e
    ld a, e
    add [hl]
    db $FD
    ld b, $FE
    ld e, b
    cp $FD
    adc a
    adc c
    adc c
    add d
    ld [bc], a
    adc l
    inc a
    add h
    db $FD
    inc b
    ld c, c
    ld l, d
    ld c, d
    ld c, h
    add [hl]
    db $FD
    inc b
    cp $FD
    ld c, l
    adc a
    adc d
    add d
    ld bc, $858A
    db $FD
    ld b, $3D
    ld l, d
    ld l, d
    ld e, e
    ld l, d
    sbc a
    add a
    sbc [hl]
    ld [bc], a
    sbc a
    inc c
    add [hl]
    add d
    inc b
    sbc d
    sbc e
    sbc h
    adc l
    add a
    db $FD
    add hl, bc
    cp $FD
    dec a
    dec hl
    adc d
    ld a, e
    add d
    adc c
    ld a, e
    add d
    add d
    ld b, $89
    add d
    add d
    adc d
    add d
    add d
    ld b, $0C
    cp h
    cp l
    cp [hl]
    cp a
    adc l
    add a
    db $FD
    dec bc
    cp $FD
    ld c, l
    dec hl
    ld a, e
    add d
    ld a, e
    add d
    adc d
    add d
    adc d
    add l
    add d
    ld [$7B89], sp
    ld a, e
    call $CFCE
    adc d
    ld c, h
    add d
    db $FD
    ld bc, $84FE
    db $FD
    ld [bc], a
    sbc a
    sbc [hl]
    add d
    ld a, e
    inc b
    adc d
    add d
    adc d
    add d
    add d
    adc c
    ld de, $828A
    adc c
    ld a, e
    adc c
    add d
    adc e
    ld [$DEDD], sp
    rst $18
    adc l
    ld e, c
    ld l, e
    ld c, d
    ld c, e
    pop af
    add e
    db $FD
    inc b
    dec hl
    ld a, e
    ld [$8319], sp
    ld a, [hl]
    inc bc
    ld e, a
    ld a, [de]
    ld a, [de]
    adc b
    ld a, [hl]
    add hl, bc
    db $ED
    xor $EF
    ld a, e
    inc a
    db $FD
    dec a
    ld c, d
    inc a
    add d
    db $FD
    dec bc
    ld c, l
    dec hl
    ld [$F119], sp
    inc a
    db $FD
    dec a
    ld l, a
    adc c
    inc a
    add e
    ld e, $03
    dec a
    ld c, c
    inc a
    add e
    ld e, $03
    dec a
    dec de
    adc l
    add d
    db $FD
    ld [bc], a
    cp $58
    add e
    db $FD
    dec b
    pop af
    ld a, a
    ld a, [hl]
    ld a, l
    inc a
    add e
    db $FD
    db $10
    pop af
    ld a, e
    ld e, $5B
    ld e, $4A
    ld e, $FD
    ld e, $5F
    ld e, $4A
    ld e, $0F
    adc l
    db $FD
    add d
    cp $02
    db $FD
    cp $8A
    db $FD
    inc bc
    dec a
    adc c
    db $FD
    add h
    ld e, $0C
    ld e, e
    ld e, $6F
    ld e, $4A
    ld e, $2B
    adc l
    ld c, h
    db $FD
    cp $58
    sub c
    db $FD
    ld [bc], a
    ld e, $4A
    add l
    ld e, $03
    dec hl
    adc d
    ld a, [hl-]
    add d
    ld a, e
    inc bc
    ld a, [hl-]
    adc d
    ld a, [hl-]
    add d
    adc c
    ld bc, $884C
    db $FD
    add h
    ld e, $03
    ld c, l
    ld e, e
    ld c, h
    add e
    ld e, $04
    ld c, l
    cpl
    adc d
    ld a, e
    add d
    adc c
    inc bc
    ld a, e
    adc d
    adc d
    add d
    sbc [hl]
    add d
    adc d
    ld [bc], a
    sbc [hl]
    ld a, e
    add d
    sbc [hl]
    inc bc
    ld a, e
    sbc [hl]
    ld a, e
    add d
    sbc [hl]
    inc bc
    adc d
    ld a, e
    adc d
    add d
    sbc [hl]
    add d
    ld a, e
    add d
    sbc [hl]
    ld bc, $003B
    rst $38
