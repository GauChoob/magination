; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    or b
    ld h, b
    sbc b
    ld [hl], b
    ld c, h
    jr c, jr_019_4037

    inc e
    inc de
    ld c, $09
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
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

    add b
    ld h, b
    ret nz

    ld [hl], b
    ldh [$F0], a
    ld h, b
    ld h, b
    nop
    nop
    nop
    stop
    jr z, jr_019_4046

    ld d, b

jr_019_4037:
    jr nz, jr_019_4089

    jr nz, jr_019_408E

    jr nz, jr_019_4099

    inc hl
    ld e, b
    daa
    jr jr_019_4042

jr_019_4042:
    inc [hl]
    jr jr_019_405F

    inc c

jr_019_4046:
    ld a, [de]
    inc c
    ld c, $04
    adc $04
    ld a, $C4
    ld c, $F4
    ld l, b
    rla
    add h
    ld a, e
    db $DD
    inc hl
    adc l
    ld [hl], d
    ld e, c
    ld h, $28
    rlca
    inc b
    inc bc
    inc bc

jr_019_405F:
    nop
    ld c, $F0
    ld b, $F8
    ld b, $F8
    sub h
    add sp, -$74
    ldh a, [$EC]
    ld [hl], b
    ld a, b
    sub b

jr_019_406E:
    ld hl, sp+$00
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc d
    ld [$0814], sp
    inc d
    ld [$142B], sp
    dec [hl]
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc c
    nop
    ld a, [de]
    inc c
    dec c

jr_019_4089:
    ld b, $ED
    ld b, $1F
    ld [c], a

jr_019_408E:
    rrca
    db $F4
    ld [hl], l
    ld a, [bc]
    db $E3
    ld e, h
    halt
    add hl, hl
    jr c, jr_019_409F

    db $10

jr_019_4099:
    rrca
    ld [$0C07], sp
    inc bc
    rlca

jr_019_409F:
    nop
    dec sp
    call z, $BC73
    ld b, [hl]
    ld hl, sp+$0E
    ldh a, [$3C]
    ret nz

    jr @-$1E

    jr c, jr_019_406E

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    dec d
    ld [$0916], sp
    inc d
    dec bc
    nop
    nop
    nop
    nop
    inc c
    nop
    ld a, [de]
    inc c
    dec c
    ld b, $ED
    ld b, $1D
    and $0D
    or $2B
    inc d
    dec [hl]
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    inc hl
    inc e
    halt
    add hl, bc
    ld a, b
    daa
    db $FC
    ld b, e
    ld h, a
    nop
    dec b
    ld a, [$F20D]
    ld b, a
    ld hl, sp+$63
    cp h
    ld [hl-], a
    call c, $EE1D
    ccf
    jp nz, $00F2

    nop
    nop
    nop
    nop
    inc c
    nop
    ld a, [de]
    inc c
    dec c
    ld b, $ED
    ld b, $1D
    and $0F
    db $F4
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    dec d
    ld [$0916], sp
    ld d, h
    dec bc
    dec hl
    inc d
    ld [hl], l
    ld a, [bc]
    push af
    ld c, d
    ld h, e
    inc e
    ld d, $09
    jr jr_019_4123

    inc c
    inc bc
    rlca
    nop
    ccf
    ret nz

    ld e, a

jr_019_4123:
    cp [hl]
    ld b, e
    db $FC
    ld b, $F8
    inc a
    ret nz

    jr @-$1E

    jr c, @-$3E

    ldh a, [rP1]
    xor e
    ld d, h
    or l
    ld c, d
    ld [hl], l
    ld a, [bc]
    inc hl
    inc e
    ld d, $09
    jr jr_019_4143

    inc c
    inc bc
    rlca
    nop
    nop
    nop
    nop

jr_019_4143:
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_019_415A:
    ccf
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    ld c, b
    or b
    ld c, b
    or b
    inc c
    ldh a, [$0A]
    db $F4
    add hl, bc
    or $11
    and $E5
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    inc bc
    nop

jr_019_418A:
    ld b, $01
    ld a, [bc]
    dec b
    ld [de], a
    dec c
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_019_415A

    ld h, b
    add b
    ld d, b
    and b
    ld c, b
    or b
    ld c, b
    or b
    ld c, h
    or b
    ld a, [bc]
    db $F4
    add hl, bc
    or $0E
    ldh a, [rNR10]
    ldh [$E0], a
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc

jr_019_41B4:
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    ld b, $01
    ld a, [bc]
    dec b
    ld d, d
    dec c
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_019_418A

jr_019_41CA:
    ld h, b
    add b
    ld d, b
    and b
    ld c, d
    or b
    ld c, l
    or d
    ld c, c
    or [hl]
    ld a, [bc]
    db $F4
    inc c
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [$E0], a
    nop
    nop
    nop
    ld c, b
    or b
    jr z, jr_019_41B4

    ld e, h
    and b
    ld e, d
    and h
    add hl, hl
    sub $51
    and [hl]
    push hl
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    inc bc
    nop

jr_019_41FA:
    ld b, $01
    ld a, [bc]
    dec b
    ld [de], a
    dec c
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_019_41CA

    ld h, b
    add b
    ld d, b
    and b
    ld c, b
    or b
    ld c, b
    or b
    inc l
    ret nc

    ld e, d
    and h
    ld e, c
    and [hl]
    ld l, $D0

jr_019_421A:
    ld d, b
    and b
    ldh [rP1], a
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    ld b, $01
    ld a, [bc]
    dec b
    ld d, d
    dec c
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    jr nz, jr_019_41FA

    ld h, b
    add b
    ld d, b
    and b
    ld c, d
    or b
    ld c, l
    or d
    add hl, hl
    sub $5A
    and h
    ld e, h
    and b
    jr z, jr_019_421A

    ld d, b
    and b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_019_434A

    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    jr jr_019_4358

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    add c
    rst $38

jr_019_434A:
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr jr_019_436A

    inc h
    inc a
    inc h
    inc a
    inc h
    inc a

jr_019_4358:
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    add b
    rst $38
    add b
    rst $38

jr_019_436A:
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    cp [hl]
    ld a, a
    ld c, l
    ld a, $43
    inc a
    jp $837C


    ld a, [hl]
    ld b, c
    ccf
    jr nz, jr_019_43A9

    jr jr_019_4393

    rlca
    nop
    nop
    nop
    jr jr_019_4392

jr_019_4392:
    inc h

jr_019_4393:
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h

jr_019_43A9:
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    nop
    jr jr_019_43B3

jr_019_43B3:
    jr jr_019_43B5

jr_019_43B5:
    jr jr_019_43B7

jr_019_43B7:
    jr jr_019_43B9

jr_019_43B9:
    jr jr_019_43BB

jr_019_43BB:
    jr jr_019_43BD

jr_019_43BD:
    jr jr_019_43BF

jr_019_43BF:
    jr jr_019_43C1

jr_019_43C1:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_019_43C9

jr_019_43C9:
    jr jr_019_43CB

jr_019_43CB:
    jr jr_019_43CD

jr_019_43CD:
    jr jr_019_43CF

jr_019_43CF:
    jr jr_019_43D1

jr_019_43D1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_019_43DF

jr_019_43DF:
    jr jr_019_43E1

jr_019_43E1:
    nop
    inc bc
    nop
    dec c
    inc bc
    ld de, $210F
    rra
    ld hl, $431F
    ccf
    ld h, a
    ccf
    nop
    nop
    ret nz

    nop
    or b
    ld b, b

jr_019_43F6:
    adc b
    ld [hl], b
    add h
    ld a, b
    add h
    ld a, b
    jp nz, $E27C

    ld a, h
    ld a, a
    ccf
    ld a, a
    ld a, $3F
    ld e, $3E
    dec e
    inc e
    dec bc
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    ld a, [$FE7C]
    ld a, h
    db $FC
    jr c, jr_019_4453

    ret c

    ld hl, sp-$20
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr z, jr_019_4441

    ld h, $1B
    ld b, e
    dec a
    ld b, e
    dec a
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_43F6

jr_019_4436:
    ld [$04F0], sp
    ld hl, sp+$0C
    ld hl, sp-$62
    db $FC
    cp $FC
    ld h, c

jr_019_4441:
    ld a, $73
    ld a, $3F
    ld e, $3F
    ld e, $1F
    ld c, $0F
    ld [bc], a
    inc bc
    nop
    nop
    nop
    cp $E0
    ld [c], a

jr_019_4453:
    inc e
    adc h
    ld a, b
    inc e
    ld hl, sp-$08
    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_019_4489

    jr nz, jr_019_448B

    ld [hl], b
    ccf
    ld a, c
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_4436

    ld [$34F0], sp
    add sp, $64
    ret c

    ld [c], a
    call c, $BCC2
    ld a, a
    ccf
    ld a, a
    ld a, $3F
    nop
    jr nc, jr_019_44A7

    inc e

jr_019_4489:
    rrca
    rrca

jr_019_448B:
    inc bc
    inc bc
    nop
    nop
    nop
    and $BC
    cp $7C
    db $FC
    ld a, b

jr_019_4496:
    db $FC
    ld a, b
    ld a, b
    or b
    ldh a, [$80]

jr_019_449C:
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
    rlca

jr_019_44A7:
    nop
    jr c, jr_019_44B1

    ld d, c
    ld l, $B2
    ld e, l
    rst $38
    ld e, l
    nop

jr_019_44B1:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    jr jr_019_449C

    inc b
    ld hl, sp+$02
    db $FC
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld c, d
    rst $38
    nop
    rst $38
    inc l
    ld a, a
    ld [$003F], sp
    add d
    db $FC
    rst $00
    cp $FF
    cp $FF
    inc a
    ld a, [hl]
    jr jr_019_4496

    nop
    rst $38
    nop
    ld c, $00
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld c, $07
    rla
    dec bc
    inc de
    inc c
    jr nz, @+$21

    jr nz, jr_019_450F

    jr nc, jr_019_4511

    jr c, @+$21

    jr jr_019_4505

    inc e
    rrca
    ld c, $07
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b

jr_019_4505:
    inc bc
    ld [$1807], sp
    rrca
    inc e
    rrca
    ld l, $17
    daa

jr_019_450F:
    dec de
    inc sp

jr_019_4511:
    inc e
    jr c, jr_019_4533

    jr jr_019_4525

    inc e
    rrca
    ld c, $07
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b

jr_019_4525:
    inc bc
    ld [$1007], sp
    rrca
    db $10
    rrca
    jr nz, jr_019_454D

    jr nc, jr_019_454F

    jr c, jr_019_4551

    inc a

jr_019_4533:
    rrca
    ld e, $07
    rla
    dec bc
    dec bc
    inc b
    inc b
    inc bc
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
    add b
    nop
    ld b, h
    nop

jr_019_454D:
    nop
    nop

jr_019_454F:
    nop
    nop

jr_019_4551:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

    db $10
    jr nc, jr_019_461F

    jr c, jr_019_4615

    inc a
    ld a, h
    ld a, h
    ld d, h
    ld a, [hl]
    add b
    rst $38
    db $10
    db $10
    ld [$1C18], sp
    inc e
    jr c, jr_019_4634

    inc [hl]
    ld a, $7E
    ld a, [hl]
    db $E4
    rst $38
    jr z, @+$01

    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    dec bc
    rrca
    ld e, $1F
    ccf
    ccf
    ld d, c
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_019_4615:
    nop
    ld [$8888], sp
    adc b
    adc h
    call z, $FC5C
    ld [de], a

jr_019_461F:
    cp $08
    ld [$0C0C], sp
    ld b, $06
    rla
    rla
    inc hl
    inc sp
    ld d, e
    ld [hl], e
    add hl, sp
    ld a, e
    ld l, b
    rst $38
    nop
    nop
    nop
    nop

jr_019_4634:
    ld [$0808], sp
    ld [$9C94], sp
    call z, $A6DC
    cp $48
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    ld a, b
    rlca
    jr nc, @+$11

    inc e
    inc bc
    rrca
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    adc h
    ld [hl], e
    ld a, d
    ld bc, $0835
    ld e, $01
    rrca
    nop
    nop
    nop
    nop
    rst $38
    ld b, $F9
    adc e
    ld [hl], b
    ld d, l
    ld [hl+], a
    inc l
    inc de
    inc e
    inc bc
    rrca
    nop
    nop
    nop
    nop
    rst $38
    add hl, bc
    or $1B
    db $E4
    or $08
    inc c
    ldh a, [$38]
    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld sp, $01C7
    and [hl]
    dec l
    ld b, e
    ld l, h
    ld l, c
    ld h, e
    ld l, e
    ld hl, $FE2D
    db $FD
    and c
    or e
    ld sp, $00C7
    ld e, e
    ld [bc], a
    ld b, l
    or e
    ld sp, $01C7
    and [hl]
    dec l
    ld c, e
    ld h, c
    ld b, e
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, e
    ld hl, $FE2D
    db $FD
    and c
    ld e, e
    ld [bc], a
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and [hl]
    dec l
    ld d, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld b, e
    ld c, h
    ld b, c
    ld c, [hl]
    ld c, e
    ld hl, $FE2D
    db $FD
    and c
    ld e, e
    ld [bc], a
    or e
    ld sp, $00C7
    ld b, l
    and c
    ld b, l
    rlca
    nop
    inc [hl]
    ld h, e
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, l
    ld [de], a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    cp a
    ld e, l
    ld b, l
    dec b
    nop
    inc [hl]
    ld h, e
    ld a, [bc]
    ld c, $C6
    jp nc, $1400

    and c
    ld e, l
    add hl, de
    add sp, $46
    dec bc
    nop
    add c
    adc c
    pop bc
    ld [bc], a
    ld b, l
    add hl, de
    ld b, l
    sub a
    or l
    dec hl
    and b
    rst $30
    or l
    dec hl
    and b
    rst $28
    or e
    ld sp, $01C7
    adc d
    ld l, l
    ld [hl], d
    ld d, e
    ld [de], a
    add a
    ld [hl], c
    ld [de], a
    ld h, [hl]
    ld c, a
    ld [hl], d
    ld [de], a
    ld [hl], e
    rlca
    rst $38
    ld a, a
    adc b
    nop
    nop
    sbc b
    ld a, d
    and b
    rlca
    ld b, e
    ld e, d
    ld [hl], d
    rlca
    rst $38
    ld a, a
    ld a, d
    and b
    rlca
    adc d
    ld l, l
    ld [hl], d
    ld d, e
    ld [de], a
    rst $00
    ld [hl], c
    ld [de], a
    ld h, [hl]
    ld c, a
    ld [hl], a
    ld [de], a
    ld [hl], e
    rlca
    rst $38
    ld a, a
    adc b
    nop
    nop
    sbc b
    ld a, d
    and b
    rlca
    ld b, e
    ld e, d
    ld [hl], d
    rlca
    rst $38
    ld a, a
    ld a, d
    and b
    rlca
    sub a
    ld [hl+], a
    ld hl, $31B3
    rst $00
    ld bc, $6D8A
    sub b
    ld d, e
    ld [de], a
    rlca
    ld [hl], d
    ld [de], a
    ld h, [hl]
    ret nc

    ld [hl], a
    ld [de], a
    ld l, c
    add a
    ld [hl], c
    ld [de], a
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc b
    rlca
    ld c, d
    ret nc

    nop
    add hl, de
    inc c
    ld c, b
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc bc
    inc l
    ld h, a
    dec b
    dec b
    ld e, $D0
    inc c
    add hl, de
    ld [hl+], a
    ld c, b
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    rlca
    inc c
    ret nz

    ld b, b
    nop
    add b
    nop
    ld b, [hl]
    nop
    dec hl
    and b

jr_019_47A0:
    ld [$A819], sp
    ld b, a
    ld [hl], e
    rlca
    rst $38
    ld a, a
    adc b
    nop
    nop
    sbc b
    ld b, [hl]
    nop
    dec hl
    and b
    ld [$B719], sp

jr_019_47B3:
    ld b, a
    ld a, d
    ld h, b
    rlca
    dec bc
    ld [bc], a
    dec bc
    inc bc
    or e
    set 1, c
    nop
    sbc e
    add hl, de
    rst $20
    ld b, a
    or e
    ld sp, $00C7
    sbc h
    add hl, bc
    dec b
    ld bc, $0500
    ld b, $04
    inc bc
    inc b
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    db $10
    ld a, [bc]
    xor e
    ld [hl], c
    ld c, b
    ld a, [bc]
    inc c
    ld l, a
    or e
    inc [hl]
    rst $00
    nop
    ld b, [hl]
    ld bc, $C747
    add hl, de
    ld sp, hl
    ld b, a
    ld bc, $1306
    ld c, b
    jr jr_019_47A0

    ld e, l
    or e
    ld sp, $01C7
    or e
    set 1, c
    ld bc, $0222
    ld b, e
    ld h, b
    ld bc, $1306
    ld c, b
    jr jr_019_47B3

    ld e, l
    ld b, e
    jr nz, jr_019_4823

    ld de, $718A
    ld b, e
    jr nz, jr_019_4829

    add hl, de
    rst $20
    ld b, [hl]
    ld b, e
    jr nz, jr_019_482F

    ld de, $718A
    ld c, b
    add hl, de
    ld [de], a
    ld c, b
    ld b, e

jr_019_4823:
    rst $38
    ld b, e
    ld h, h
    ld b, l
    ld b, l
    ld b, l

jr_019_4829:
    inc d
    ld de, $7564
    ld b, [hl]
    nop

jr_019_482F:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FA], sp
    inc de
    ld hl, sp+$4A
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    and c
    ld c, b
    add hl, de
    inc bc
    nop
    ld h, [hl]
    ld c, b
    add hl, de
    ld [bc], a
    nop
    rla
    ld c, c
    add hl, de
    ld bc, $DC00
    ld c, b
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $7564
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FA], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $7564
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FA], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $750C
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FA], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $74D9
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FA], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc d
    ld de, $7564
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FC], sp
    inc de
    ld hl, sp+$4A
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    jp z, $1949

    inc bc
    nop
    adc a
    ld c, c
    add hl, de
    ld [bc], a
    nop
    ld b, b
    ld c, d
    add hl, de
    ld bc, $0500
    ld c, d
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $7564
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FC], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $7564
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FC], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $750C
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FC], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    ld de, $74D9
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$13FC], sp
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc d
    ld de, $7564
    or l
    dec hl
    and b
    rst $18
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FA], sp
    inc de
    ld hl, sp+$4A
    or [hl]
    dec hl
    and b
    jr nz, jr_019_4AE1

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    inc bc
    ld c, e
    add hl, de
    inc bc
    nop
    cp c
    ld c, d
    add hl, de
    ld [bc], a
    nop
    sub a
    ld c, e
    add hl, de
    ld bc, $4D00
    ld c, e
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7542
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]

jr_019_4AE1:
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    rst $18
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7578
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    rst $18
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $751D
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    rst $18
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    inc d
    inc d
    xor e
    ld e, l
    inc d
    ld de, $74EA
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FB], sp
    dec hl
    and b
    rst $18
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc d
    ld de, $7564
    or l
    dec hl
    and b
    cp a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FA], sp
    inc de
    ld hl, sp+$4A
    or [hl]
    dec hl
    and b
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    ld l, l
    ld c, h
    add hl, de
    inc bc
    nop
    inc hl
    ld c, h
    add hl, de
    ld [bc], a
    nop
    ld bc, $194D
    ld bc, $B700
    ld c, h
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7542
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    cp a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7578
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    cp a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $751D
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    cp a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    inc d
    inc d
    xor e
    ld e, l
    inc d
    ld de, $74EA
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FB], sp
    dec hl
    and b
    cp a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc d
    ld de, $7564
    or l
    dec hl
    and b
    ld a, a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FA], sp
    inc de
    ld hl, sp+$4A
    or [hl]
    dec hl
    and b
    add b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    rst $10
    ld c, l
    add hl, de
    inc bc
    nop
    adc l
    ld c, l
    add hl, de
    ld [bc], a
    nop
    ld l, e
    ld c, [hl]
    add hl, de
    ld bc, $2100
    ld c, [hl]
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7542
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    ld a, a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7578
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    ld a, a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $751D
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    dec hl
    and b
    ld a, a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    inc d
    inc d
    xor e
    ld e, l
    inc d
    ld de, $74EA
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FB], sp
    dec hl
    and b
    ld a, a
    inc de
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc d
    ld de, $7564
    or l
    inc l
    and b
    cp $46
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$45FA], sp
    inc de
    ld hl, sp+$4A
    or [hl]
    inc l
    and b
    ld bc, $0046
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    ld b, c
    ld c, a
    add hl, de
    inc bc
    nop
    rst $30
    ld c, [hl]
    add hl, de
    ld [bc], a
    nop
    push de
    ld c, a
    add hl, de
    ld bc, $8B00
    ld c, a
    rst $38
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7542
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7542
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    sub a
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    inc l
    and b
    cp $13
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld h, a
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $7578
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $7578
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    inc l
    and b
    cp $13
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    dec de
    ld h, c
    ld b, e
    ld a, [bc]
    inc d
    ld de, $751D
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $751D
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    or l
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FC], sp
    inc l
    and b
    cp $13
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push af
    ld h, b
    ld b, e
    ld a, [bc]
    inc d
    inc d
    xor e
    ld e, l
    inc d
    ld de, $74EA
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    dec d
    ld de, $74EA
    ld b, $00
    ld b, e
    dec b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    xor e
    ld e, l
    ld a, [de]
    db $FD
    ld b, e
    inc bc
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$B5FB], sp
    inc l
    and b
    cp $13
    or d
    ld l, [hl]
    or e
    adc b
    pop bc
    nop
    ld b, l
    inc de
    ld hl, sp+$4A
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    add c
    db $FD
    ld c, [hl]
    inc bc
    add hl, de
    nop
    nop
    and c
    ld c, b
    add hl, de
    inc bc
    nop
    ld h, [hl]
    ld c, b
    add hl, de
    ld [bc], a
    nop
    rla
    ld c, c
    add hl, de
    ld bc, $DC00
    ld c, b
    rst $38
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld c, $04
    ld e, [hl]
    ret nc

    nop
    add hl, de
    cp c
    ld d, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld b, $09
    cp d
    ret nc

    nop
    add hl, de
    dec b
    ld d, c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    jr z, jr_019_5092

    ld d, [hl]
    ld d, c
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld a, [bc]
    dec bc
    and $D0
    ld e, b
    ld de, $7180
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_509D

    ret nz

    ld l, e

jr_019_5092:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_50A4

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_509D:
    ld l, [hl]
    inc c
    add hl, de
    nop
    ld b, b
    add b
    add l

jr_019_50A4:
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
    jr nz, jr_019_50D5

    ld a, l
    ld e, h
    jr nz, jr_019_50D9

    ld e, l
    ld e, h
    ld [$BF14], sp
    ld e, l
    nop
    nop
    ld h, e
    ld bc, $195E
    ld sp, hl
    ld d, c
    ld h, l
    dec b

jr_019_50D5:
    dec d
    inc d
    inc sp
    ld e, h

jr_019_50D9:
    jr nz, jr_019_50EF

    sbc l
    ld e, h
    jr nz, jr_019_50DF

jr_019_50DF:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_019_50F5

    ld c, [hl]
    ld bc, $A135
    rrca
    ld bc, $1800
    ld b, l

jr_019_50EF:
    add hl, bc
    ld [bc], a
    nop
    ld c, e
    ld c, c
    add hl, bc

jr_019_50F5:
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
    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5120

    ld b, h
    ld [hl], l
    jr nz, jr_019_5124

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5128

    ld b, h
    ld [hl], l
    jr nz, jr_019_512C

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5130

    ld b, h
    ld [hl], l
    jr nz, jr_019_511F

jr_019_511F:
    ld h, l

jr_019_5120:
    ld bc, $1515
    cp b

jr_019_5124:
    ld [hl], h
    db $10
    dec d
    ld c, [hl]

jr_019_5128:
    ld [hl], l
    nop
    nop
    ld e, [hl]

jr_019_512C:
    add hl, de
    cp e
    ld d, c
    ld h, l

jr_019_5130:
    ld [bc], a
    ld e, [hl]
    add hl, de
    add sp, $51
    ld b, e
    ld [$1515], sp
    cp b
    ld [hl], h
    db $10
    dec d
    ld c, [hl]
    ld [hl], l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    dec d
    dec d
    cp b
    ld [hl], h
    jr nz, jr_019_515F

    sbc b
    ld [hl], h
    jr nz, @+$17

    cp b
    ld [hl], h
    ld h, h
    nop
    ld e, c
    ld bc, $4519
    dec d
    db $10
    and $7A
    jr z, jr_019_516C

    call c, $207A

jr_019_515F:
    db $10
    and $7A
    jr z, jr_019_5174

    call c, $207A
    db $10
    and $7A
    jr z, jr_019_517C

jr_019_516C:
    call c, $207A
    db $10
    cp [hl]
    ld a, d
    jr nz, jr_019_5184

jr_019_5174:
    ld d, b
    ld a, d
    jr nz, @+$12

    jr nc, jr_019_51F4

    jr jr_019_518C

jr_019_517C:
    xor d
    ld a, d
    nop
    nop
    inc c
    inc b
    ld e, [hl]
    add hl, de

jr_019_5184:
    and l
    ld d, c
    ld h, l
    ld bc, $1014
    ret z

    ld a, d

jr_019_518C:
    ld h, l
    ld [bc], a
    ld b, e
    db $10
    dec d
    db $10
    ld d, b
    ld a, d
    db $10
    db $10
    ret z

    ld a, d
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    dec d
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
    ld b, c
    ld l, b
    ld h, c
    ld hl, $4720
    ld l, a
    ld [hl], h
    jr nz, jr_019_521C

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    ld c, b
    ld e, a
    and [hl]
    ld b, a
    ld l, c
    halt
    ld h, l
    jr nz, jr_019_522E

    ld [hl], h
    jr nz, jr_019_523C

    ld l, a
    jr nz, @+$6F

    ld h, l
    inc l
    rst $38
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_5241

    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ccf
    ccf
    ccf
    ccf
    cp $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, l
    ld hl, $FE21
    db $FD

jr_019_51F4:
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    halt
    ld h, l
    jr nz, jr_019_526A

    ld l, a
    ld [hl], h
    jr nz, jr_019_527B

    ld l, a
    jr nz, @+$64

    ld h, l
    rst $38
    ld h, [hl]
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_019_5289

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    cp $69
    ld [hl], e

jr_019_521C:
    jr nz, jr_019_528D

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_019_5292

    ld l, [hl]
    ld h, l
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_529C

    ld h, [hl]

jr_019_522E:
    jr nz, jr_019_52A4

    ld l, b
    ld h, l
    cp $77
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_52A5

    ld h, l
    ld h, [hl]
    ld [hl], h

jr_019_523C:
    ld hl, $FDFE
    and c
    ld e, e

jr_019_5241:
    dec b
    ld b, l
    xor l
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b
    ld bc, $28A2
    ld b, e
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $4720
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_52DD

    ld l, a
    ld [hl], l
    jr nz, jr_019_52D2

    ld [hl], l
    ld [hl], e

jr_019_526A:
    ld [hl], h
    cp $64
    ld l, c
    ld h, h
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, b
    jr nz, @+$71

    ld l, b

jr_019_527B:
    ld l, $20
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_019_52CB

    rst $38
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    jr nz, jr_019_52F2

jr_019_5289:
    ld l, [hl]
    cp $73
    ld l, a

jr_019_528D:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_019_5292:
    ld l, [hl]
    ld h, a
    ccf
    cp $FD
    and d
    jr z, jr_019_52DD

    and [hl]
    ld c, [hl]

jr_019_529C:
    ld l, a
    ld [hl], b
    ld h, l
    inc l
    jr nz, jr_019_5307

    halt
    ld h, l

jr_019_52A4:
    ld l, [hl]

jr_019_52A5:
    rst $38
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $5420
    ld l, b
    ld h, l
    cp $65
    ld a, b
    ld l, c
    ld [hl], h
    jr nz, jr_019_5331

    ld l, a
    ld [hl], l
    jr nz, jr_019_5326

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l

jr_019_52CB:
    ld h, h
    jr nz, @+$77

    ld [hl], b
    cp $54
    ld d, a

jr_019_52D2:
    ld c, a
    jr nz, jr_019_5345

    ld h, c
    ld [hl], h
    ld l, b
    ld [hl], e
    rst $38
    ld l, c
    ld l, [hl]
    ld [hl], e

jr_019_52DD:
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_019_5355

    ld l, [hl]
    ld h, l
    ld hl, $FDFE
    ld e, c
    ld bc, $54A6
    ld l, b
    ld l, c
    ld [hl], e

jr_019_52F2:
    jr nz, jr_019_5363

    ld l, [hl]
    ld h, l
    jr nz, jr_019_5364

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    inc l
    jr nz, @+$76

    ld l, b

jr_019_5307:
    ld h, l
    cp $6F
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_019_537C

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_538A

    ld h, [hl]
    jr nz, jr_019_5384

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    inc l
    cp $73
    ld l, a

jr_019_5326:
    jr nz, jr_019_5381

    ld c, a
    ld d, l
    jr nz, @+$44

    ld b, l
    rst $38
    ld b, e
    ld b, c
    ld d, d

jr_019_5331:
    ld b, l
    ld b, [hl]
    ld d, l
    ld c, h
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b

jr_019_5345:
    add hl, de
    bit 6, b
    ld b, l
    xor l
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b
    ld bc, $28A2
    ld b, e

jr_019_5355:
    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5920
    ld l, a
    ld [hl], l
    rst $38
    ld l, a
    ld [hl], b
    ld h, l

jr_019_5363:
    ld l, [hl]

jr_019_5364:
    ld h, l
    ld h, h
    jr nz, jr_019_53DD

    ld [hl], b
    cp $74
    ld [hl], a
    ld l, a
    jr nz, @+$6F

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    rst $38
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $FDFE

jr_019_537C:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, d

jr_019_5381:
    ld h, l
    ld h, c
    ld l, h

jr_019_5384:
    ld l, h
    ld a, c
    ccf
    jr nz, jr_019_53D2

    rst $38

jr_019_538A:
    ld [hl], a
    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, @+$79

    ld l, b
    ld a, c
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    cp $FD
    ld e, c
    ld bc, $61A6
    ld [hl], d
    ld h, l
    jr nz, jr_019_5416

    ld l, a
    rst $38
    ld l, b
    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr z, jr_019_53F6

    and [hl]
    ld d, b
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    rst $38
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_019_543A

    ld l, b
    ld h, l
    ld a, c
    cp $61
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $FE
    ld b, h

jr_019_53D2:
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    ld d, d
    ld c, a
    ld d, l
    ld d, e
    ld hl, $FDFE

jr_019_53DD:
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    xor l
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b

jr_019_53F6:
    ld bc, $28A2
    ld b, e
    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    jr nz, jr_019_545A

    ld b, l
    ld b, c
    ld b, c
    ld hl, $FDFF
    ld e, c
    ld bc, $48A6
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_019_5473

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_019_5488

    ld l, a

jr_019_5416:
    ld l, l
    ld h, l
    cp $65
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_019_548D

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_019_54A3

    ld l, a
    ld [hl], l
    jr nz, jr_019_548F

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l

jr_019_543A:
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    xor l
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b
    ld bc, $98A2
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

jr_019_545A:
    ld [hl], e
    jr nz, jr_019_54C6

    ld [hl], h
    ccf
    cp $FD
    and b
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_019_54D9

    ld a, c
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c

jr_019_5473:
    jr nz, jr_019_54E2

    ld h, c
    ld a, d
    ld h, l
    ccf
    ccf
    cp $FD
    and d
    jr z, jr_019_54C2

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $5420
    ld l, b
    ld h, c

jr_019_5488:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_5501

jr_019_548D:
    ld l, b
    ld h, l

jr_019_548F:
    rst $38
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld e, c
    ld bc, $41A6
    ld l, [hl]
    ld h, h
    jr nz, @+$7B

    ld l, a
    ld [hl], l

jr_019_54A3:
    jr nz, jr_019_5517

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, jr_019_552B

    ld l, a
    cp $6C
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_5533

    ld l, b
    ld h, c
    ld [hl], h

jr_019_54C2:
    jr nz, jr_019_552A

    ld h, c
    ld [hl], d

jr_019_54C6:
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b

jr_019_54D9:
    ld b, l
    xor l
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b

jr_019_54E2:
    ld bc, $28A2
    ld b, e
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_019_555E

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    rst $38
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $4C20
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    cp $6C

jr_019_5501:
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_019_557F

    ld l, a
    ld [hl], l
    daa
    halt
    ld h, l
    rst $38
    ld l, a
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_019_5589

    ld [hl], b
    jr nz, @+$63

jr_019_5517:
    ld l, h
    ld l, h
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$67

    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_019_5592

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    rst $38

jr_019_552A:
    ld [hl], h

jr_019_552B:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d

jr_019_5533:
    ld h, l
    jr nz, jr_019_5597

    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_019_55B6

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $5420
    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    jr nz, jr_019_55BE

    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld [hl], a
    cp $6D
    ld l, c
    ld l, [hl]

jr_019_555E:
    ld h, l
    jr nz, jr_019_55C7

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and d
    jr z, jr_019_55B7

    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $3F

jr_019_557F:
    cp $FD
    ld e, c
    ld bc, $98A2
    ld b, c
    and [hl]
    ld d, a
    ld h, l

jr_019_5589:
    ld l, h
    ld l, h
    inc l
    jr nz, jr_019_55EF

    ld [hl], h
    jr nz, jr_019_55FD

    ld h, l

jr_019_5592:
    ld h, c
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], h

jr_019_5597:
    ld l, b
    ld h, l
    jr nz, jr_019_5608

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    jr nz, jr_019_5602

    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b

jr_019_55B6:
    ld b, l

jr_019_55B7:
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B

jr_019_55BE:
    dec b
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_019_563A

jr_019_55C7:
    ld h, l
    ld h, l
    jr nz, jr_019_5644

    ld l, a
    ld [hl], l
    jr nz, jr_019_5637

    ld h, c
    halt
    ld h, l
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_019_563B

    ld l, [hl]
    jr nz, jr_019_5642

    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    cp $65
    ld a, b
    ld l, c
    ld [hl], h
    jr nz, jr_019_564E

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_019_5661

    ld l, b
    ld l, c

jr_019_55EF:
    ld [hl], e
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $20
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_566C

jr_019_55FD:
    ld l, [hl]
    ld h, l
    cp $6F
    ld [hl], b

jr_019_5602:
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_019_567D

jr_019_5608:
    ld [hl], b
    jr nz, @+$76

    ld [hl], a
    ld l, a
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    jr nz, jr_019_567E

    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    cp $6F
    ld h, [hl]
    jr nz, jr_019_568F

    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD
    ld e, c
    ld bc, $98A2
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_019_56A2

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $4DFF

jr_019_5637:
    ld h, c
    ld a, c
    ld h, d

jr_019_563A:
    ld h, l

jr_019_563B:
    jr nz, @+$4B

    daa
    ld l, h
    ld l, h
    jr nz, jr_019_56A8

jr_019_5642:
    ld l, c
    ld l, [hl]

jr_019_5644:
    ld h, h
    cp $73
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_019_564E:
    ld h, a
    cp $72
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_019_56BB

    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_019_56C6

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b

jr_019_5661:
    ld h, c
    ld [hl], h
    jr nz, jr_019_56CA

    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_019_56DA

    ld l, [hl]

jr_019_566C:
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b

jr_019_567D:
    add hl, de

jr_019_567E:
    bit 6, b
    ld b, l
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B
    dec b
    ld bc, $98A2
    ld b, c
    and [hl]
    ld c, c

jr_019_568F:
    jr nz, jr_019_56F7

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], e
    ld h, l
    ld h, e
    ld [hl], d

jr_019_56A2:
    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and d

jr_019_56A8:
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_019_572E

    ld l, a
    ld [hl], l
    ld l, $FF
    db $FD
    ld e, c

jr_019_56BB:
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_5730

    ld l, [hl]

jr_019_56C6:
    ld l, a
    ld [hl], a
    jr nz, jr_019_573E

jr_019_56CA:
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    cp $65
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, @+$6F

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e

jr_019_56DA:
    jr nz, jr_019_573D

    ld [hl], d
    ld h, l
    rst $38
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, jr_019_574F

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $FE
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_019_5753

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h

jr_019_56F7:
    jr nz, @+$76

    ld l, a
    ld l, a
    rst $38
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_019_5769

    ld l, a
    ld [hl], d
    jr nz, jr_019_5780

    ld l, a
    ld [hl], l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld l, a
    jr nz, jr_019_578A

    ld h, c
    ld h, h
    ld l, $FE
    db $FD
    and c

jr_019_572E:
    ld e, a
    nop

jr_019_5730:
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b

jr_019_573D:
    ld b, l

jr_019_573E:
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B
    dec b
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld b, a
    ld [hl], l
    ld h, l
    ld [hl], e

jr_019_574F:
    ld [hl], e
    jr nz, jr_019_57C9

    ld l, b

jr_019_5753:
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_019_57D3

    ld h, l
    ld [hl], a
    rst $38
    ld [hl], b

jr_019_5769:
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_019_57D6

    ld h, c
    ld [hl], e
    cp $6F
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    cp $FD
    ld e, c
    ld bc, $B8A2
    ld e, l
    and [hl]

jr_019_5780:
    ld c, c
    ld [hl], h
    jr nz, @+$75

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_019_57F1

    ld h, c

jr_019_578A:
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B
    dec b
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_019_581C

    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    rst $38
    ld h, l
    ld a, b
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    cp $68
    ld h, c
    ld [hl], d

jr_019_57C9:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_019_5842

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_019_5847

jr_019_57D3:
    ld l, b
    ld h, l
    rst $38

jr_019_57D6:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_5849

    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    cp $6F
    ld l, [hl]
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    ld e, c
    ld bc, $98A2
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e

jr_019_57F1:
    inc l
    jr nz, jr_019_5856

    ld [hl], l
    ld [hl], h
    jr nz, @+$4B

    jr nz, jr_019_5866

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_5866

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de

jr_019_581C:
    bit 6, b
    ld b, l
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B
    dec b
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld b, a
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_019_58AA

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$64

jr_019_5842:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_019_5847:
    ld [hl], h
    rst $38

jr_019_5849:
    ld h, e
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    and d
    cp b
    ld e, l

jr_019_5856:
    and [hl]
    ld c, [hl]
    ld l, a
    inc l
    jr nz, jr_019_58BE

    ld [hl], l
    ld [hl], h
    jr nz, jr_019_58D9

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], e
    ld l, b
    ld l, a

jr_019_5866:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$6D

    ld l, [hl]
    ld l, a
    ld [hl], a
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_58EE

    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_019_58E9

    halt
    ld h, l
    ld [hl], d
    ld a, c
    cp $73
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    jr nz, jr_019_58F6

    ld a, b
    ld l, c
    ld [hl], h
    jr nz, @+$6B

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_590F

    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_019_58EE

    cp $68
    ld h, c
    halt
    ld h, l

jr_019_58AA:
    jr nz, jr_019_5920

    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_019_592B

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld l, a
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_019_58BE:
    ld b, c
    ld l, [hl]
    ld h, h
    ld l, $2E
    ld l, $FE
    db $FD
    ld e, c
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_5941

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, h
    ld hl, $FDFE
    and d

jr_019_58D9:
    sbc b
    ld b, c
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $3F
    cp $FD
    and c

jr_019_58E9:
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de

jr_019_58EE:
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de

jr_019_58F6:
    bit 6, b
    ld b, l
    xor l
    dec sp
    and c
    dec bc
    ld bc, $A13B
    dec b
    ld bc, $B8A2
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_019_5970

jr_019_590F:
    ld l, [hl]
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_019_597D

    ld a, b
    ld l, c
    ld [hl], h
    jr nz, jr_019_5991

    ld l, a
    cp $6F

jr_019_5920:
    ld l, [hl]
    ld h, l
    jr nz, jr_019_5993

    ld h, [hl]
    jr nz, jr_019_599B

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l

jr_019_592B:
    rst $38
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_019_599F

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d

jr_019_5941:
    ld h, l
    jr nz, jr_019_59BB

    ld h, c
    ld [hl], e
    inc l
    jr nz, jr_019_59AA

    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_59C1

    ld l, [hl]
    ld h, l
    jr nz, jr_019_59CD

    ld h, c
    ld [hl], e
    cp $6E
    ld l, a
    ld [hl], h
    jr nz, jr_019_59C3

    ld h, c
    ld [hl], e
    ld a, c
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    ld e, c
    ld bc, $54A6
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_019_5970:
    jr nz, jr_019_59D8

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    inc l
    rst $38
    ld c, c
    jr nz, jr_019_59DF

    ld l, a
    ld l, [hl]

jr_019_597D:
    daa
    ld [hl], h
    jr nz, jr_019_59F4

    ld h, l
    ld h, l
    ld l, l
    jr nz, @+$76

    ld l, a
    cp $73
    ld h, l
    ld h, l
    jr nz, jr_019_5A04

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_019_5991:
    jr nz, jr_019_5A07

jr_019_5993:
    ld l, b
    ld h, l
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c

jr_019_599B:
    jr nz, @+$72

    ld h, c
    ld [hl], h

jr_019_599F:
    ld l, b
    jr nz, jr_019_5A0B

    ld [hl], e
    ld l, $FE
    ld c, a
    ld l, b
    inc l
    jr nz, @+$79

jr_019_59AA:
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_019_59F9

    daa
    ld l, l
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_019_5A22

    ld [hl], h
    daa

jr_019_59BB:
    ld [hl], e
    cp $61
    ld [hl], d
    ld l, a
    ld [hl], l

jr_019_59C1:
    ld l, [hl]
    ld h, h

jr_019_59C3:
    jr nz, jr_019_5A2D

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l

jr_019_59CD:
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    and c

jr_019_59D8:
    ld e, a
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]

jr_019_59DF:
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld c, $04
    ld e, [hl]
    ret nc

jr_019_59F4:
    nop
    add hl, de
    ld d, h
    ld e, d
    add hl, de

jr_019_59F9:
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld b, $09
    cp d
    ret nc

    nop

jr_019_5A04:
    add hl, de
    and d
    ld e, d

jr_019_5A07:
    add hl, de
    add sp, $46
    dec b

jr_019_5A0B:
    inc bc
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    jr z, jr_019_5A2D

    dec d
    ld e, e
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    inc c
    ld a, [bc]
    call nc, $58D0

jr_019_5A22:
    ld de, $7180
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_5A38

    ret nz

    ld l, e

jr_019_5A2D:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_5A3F

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_5A38:
    ld l, [hl]
    inc c
    add hl, de
    nop
    ld b, b
    add b
    add l

jr_019_5A3F:
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
    jr nz, jr_019_5A70

    ld a, l
    ld e, h
    jr nz, jr_019_5A74

    ld e, l
    ld e, h
    ld [$BF14], sp
    ld e, l
    nop
    nop
    ld h, l
    ld a, [bc]
    ld b, e
    ld e, d
    ld e, [hl]
    add hl, de
    adc a
    ld e, l

jr_019_5A70:
    ld h, l
    dec bc
    dec d
    inc d

jr_019_5A74:
    inc sp
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    jr nc, jr_019_5A7C

jr_019_5A7C:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_019_5A92

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

jr_019_5A92:
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
    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5ABD

    ld b, h
    ld [hl], l
    jr nz, jr_019_5AC1

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5AC5

    ld b, h
    ld [hl], l
    jr nz, jr_019_5AC9

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_5ACD

    inc e
    ld [hl], l
    jr nz, jr_019_5ABC

jr_019_5ABC:
    ld e, a

jr_019_5ABD:
    nop
    ld [bc], a
    dec d
    dec d

jr_019_5AC1:
    sbc b
    ld [hl], h
    db $10
    dec d

jr_019_5AC5:
    cp b
    ld [hl], h
    ld d, [hl]
    nop

jr_019_5AC9:
    inc c
    inc b
    inc d
    dec d

jr_019_5ACD:
    ld [de], a
    ld [hl], l
    ld e, [hl]
    add hl, de
    sub a
    ld e, e
    ld h, l
    inc bc
    inc d
    dec d
    inc e
    ld [hl], l
    ld e, [hl]
    add hl, de
    rst $08
    ld e, e
    ld h, l
    inc b
    ld e, [hl]
    add hl, de
    daa
    ld e, h
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
    add hl, de
    ret nz

    ld e, h
    ld h, l
    inc c
    inc d
    dec d
    inc e
    ld [hl], l
    ld h, l
    add hl, bc
    ld e, [hl]
    add hl, de
    halt
    ld e, l
    ld b, e
    jr nz, jr_019_5B1B

    dec d
    cp b
    ld [hl], h
    jr nz, @+$17

    sbc b
    ld [hl], h
    jr nz, jr_019_5B24

    cp b
    ld [hl], h
    jr nc, jr_019_5B13

jr_019_5B13:
    add hl, de
    ld b, l
    dec d
    db $10
    and $7A
    jr z, jr_019_5B2B

jr_019_5B1B:
    call c, $207A
    db $10
    and $7A
    jr nz, jr_019_5B23

jr_019_5B23:
    ld e, [hl]

jr_019_5B24:
    add hl, de
    ld a, l
    ld e, e
    dec d
    db $10
    ld d, b
    ld a, d

jr_019_5B2B:
    db $10
    db $10
    and $7A
    jr nz, jr_019_5B31

jr_019_5B31:
    ld h, l
    ld [bc], a
    dec d
    db $10
    jr nc, jr_019_5BB1

    db $10
    db $10
    cp [hl]
    ld a, d
    nop
    nop
    ld e, [hl]
    add hl, de
    xor h
    ld e, e
    ld h, l
    ld b, $5E
    add hl, de
    dec a
    ld e, h
    dec d
    db $10
    ld b, b
    ld a, d
    jr nz, jr_019_5B5D

    ld d, b
    ld a, d
    jr nz, jr_019_5B61

    ld b, b
    ld a, d
    jr nz, jr_019_5B65

    ld d, b
    ld a, d
    jr nz, jr_019_5B69

    ld b, b
    ld a, d
    jr nz, @+$12

jr_019_5B5D:
    ld d, b
    ld a, d
    jr nz, jr_019_5B71

jr_019_5B61:
    ld b, b
    ld a, d
    jr nz, jr_019_5B75

jr_019_5B65:
    cp [hl]
    ld a, d
    jr nz, jr_019_5B69

jr_019_5B69:
    ld h, l
    ld a, [bc]
    ld b, e
    jr z, jr_019_5B83

    db $10
    ld d, b
    ld a, d

jr_019_5B71:
    ld d, b
    db $10
    jr nc, jr_019_5BEF

jr_019_5B75:
    jr nz, jr_019_5B87

    ld d, b
    ld a, d
    ld b, b
    nop
    add hl, de
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld c, c
    ld [hl], h

jr_019_5B83:
    daa
    ld [hl], e
    jr nz, jr_019_5BF6

jr_019_5B87:
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_019_5BF4

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
    jr nz, jr_019_5C04

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

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

jr_019_5BB1:
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_019_5C19

    ld [hl], l
    ld [hl], h
    jr nz, jr_019_5C04

    jr nz, jr_019_5C30

    ld h, c
    ld [hl], a
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_019_5C2A

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
    ld l, a
    ccf
    jr nz, jr_019_5C2C

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_019_5C4E

    ld a, c
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c

jr_019_5BEF:
    ld l, a
    ld [hl], l
    jr nz, jr_019_5C6A

    ld l, a

jr_019_5BF4:
    ld [hl], l
    ld l, h

jr_019_5BF6:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$63

    jr nz, jr_019_5C73

    ld l, h

jr_019_5C04:
    ld h, c
    ld l, [hl]
    jr nz, jr_019_5C71

    ld h, [hl]
    cp $69
    ld [hl], h
    jr nz, jr_019_5C76

    ld l, c
    ld [hl], h
    jr nz, jr_019_5C8B

    ld l, a
    ld [hl], l
    jr nz, jr_019_5C7F

    ld l, [hl]
    rst $38
    ld [hl], h

jr_019_5C19:
    ld l, b
    ld h, l
    jr nz, jr_019_5C85

    ld h, l
    ld h, c
    ld h, h
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    and d
    ld c, b
    ld e, a

jr_019_5C2A:
    and [hl]
    ld b, l

jr_019_5C2C:
    ld [hl], d
    ld [hl], d
    ld l, $2E

jr_019_5C30:
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
    jr nz, @+$6B

    ld h, [hl]
    jr nz, jr_019_5CC0

    ld h, l
    jr nz, @+$65

    ld h, c
    ld l, [hl]

jr_019_5C4E:
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_5CCE

    ld l, b
    ld h, l
    cp $72
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_5CD2

    ld h, [hl]
    jr nz, jr_019_5CDA

    ld l, b
    ld h, l
    rst $38
    ld [hl], a

jr_019_5C6A:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$64

    ld h, l
    ld h, [hl]

jr_019_5C71:
    ld l, a
    ld [hl], d

jr_019_5C73:
    ld h, l
    cp $74

jr_019_5C76:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_5CE8

    ld h, l
    ld h, h
    ld h, h
    ld l, h

jr_019_5C7F:
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, e
    ld l, c

jr_019_5C85:
    ld h, h
    jr nz, @+$65

    ld l, a
    ld l, l
    ld h, l

jr_019_5C8B:
    ld [hl], e
    jr nz, jr_019_5CF0

    ld h, c
    ld h, e
    ld l, e
    inc l
    cp $77
    ld h, l
    jr nz, jr_019_5D0E

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_5CFE

    ld h, l
    rst $38
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_019_5D18

    ld l, a
    jr nz, jr_019_5D0D

    ld [hl], d
    ld h, l
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_019_5D13

    ld l, a
    ld [hl], d
    ld h, l
    rst $38
    ld l, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    rlca
    ld b, l

jr_019_5CC0:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld a, c
    jr nz, jr_019_5D36

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_019_5D44

    ld l, c

jr_019_5CCE:
    ld l, h
    ld l, h
    jr nz, jr_019_5D34

jr_019_5CD2:
    ld h, l
    rst $38
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l

jr_019_5CDA:
    ld l, [hl]
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

jr_019_5CE8:
    ld [hl], d
    ld a, c
    jr nz, jr_019_5D4E

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e

jr_019_5CF0:
    inc l
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_019_5D69

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_019_5D6F

    ld h, c
    ld a, c

jr_019_5CFE:
    inc l
    cp $27
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    inc l
    jr nz, jr_019_5D7D

    ld l, l
    ld l, $2E
    ld l, $FF

jr_019_5D0D:
    ld l, h

jr_019_5D0E:
    ld h, l
    ld [hl], h
    jr nz, @+$6E

    ld l, a

jr_019_5D13:
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $2E

jr_019_5D18:
    ld l, $FE
    ld h, [hl]
    ld [hl], d
    ld h, l
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

jr_019_5D34:
    ld l, b
    ld h, c

jr_019_5D36:
    ld [hl], h
    jr nz, jr_019_5DB0

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

jr_019_5D44:
    ccf
    cp $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_019_5D4E:
    jr nz, jr_019_5DC7

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_019_5DC8

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
    jr nz, jr_019_5DD8

    ld h, l
    jr nz, jr_019_5DDB

    ld h, l
    ld [hl], d
    ld h, l
    cp $6C

jr_019_5D69:
    ld h, l
    ld h, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_5D6F:
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

jr_019_5D7D:
    ld hl, $4620
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_019_5DF4

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
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_019_5E1C

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_5E1C

    ld l, [hl]
    ld h, l
    inc l

jr_019_5DB0:
    cp $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_5DFF

    jr nz, jr_019_5E20

    ld h, c
    ld h, h
    rst $38
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_019_5E28

jr_019_5DC7:
    ld l, [hl]

jr_019_5DC8:
    ld h, h
    cp $67
    ld h, l
    ld [hl], h
    jr nz, jr_019_5E43

    ld l, b
    ld h, l
    jr nz, jr_019_5E42

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    rst $38

jr_019_5DD8:
    ld [hl], h
    ld l, b
    ld [hl], d

jr_019_5DDB:
    ld h, l
    ld h, l
    jr nz, @+$72

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    dec bc
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    dec c

jr_019_5DF4:
    inc c
    db $FD
    ret nc

    nop
    add hl, de
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b

jr_019_5DFF:
    ld [bc], a
    ld hl, sp+$4A
    ld c, $05
    ld [hl], d
    ret nc

    nop
    add hl, de
    or e
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld c, $05
    ld [hl], d
    ret nc

    jr z, jr_019_5E30

    push af
    ld e, [hl]
    add hl, de
    add sp, $46

jr_019_5E1C:
    dec b
    inc b
    ld hl, sp+$4A

jr_019_5E20:
    rlca
    rlca
    sub e
    ret nc

    ld e, b
    ld de, $7180

jr_019_5E28:
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_5E3B

    ret nz

    ld l, e

jr_019_5E30:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_5E42

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_5E3B:
    ld l, [hl]
    inc c
    add hl, de
    nop
    ld b, b
    add b
    add l

jr_019_5E42:
    nop

jr_019_5E43:
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
    ld [$0F73], sp
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nc, jr_019_5E6F

    inc d
    inc sp
    ld e, h
    jr jr_019_5E73

    db $D3
    ld e, l
    jr nc, jr_019_5E77

    sub a
    ld e, l
    jr nc, jr_019_5E7B

    db $D3
    ld e, l
    jr nc, jr_019_5E6B

jr_019_5E6B:
    ld e, c
    ld bc, $0263

jr_019_5E6F:
    dec d
    inc d
    ld a, l
    ld e, h

jr_019_5E73:
    db $10
    inc d
    inc sp
    ld e, h

jr_019_5E77:
    jr nz, jr_019_5E8D

    and c
    ld e, l

jr_019_5E7B:
    inc c
    nop
    ld e, [hl]
    add hl, de
    ld d, e
    ld e, a
    ld h, l
    inc bc
    dec d
    inc d
    sbc l
    ld e, h
    db $10
    inc d
    ld e, l
    ld e, h
    ld b, b
    nop

jr_019_5E8D:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_019_5EA3

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

jr_019_5EA3:
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
    ld h, e
    ld bc, $1515
    xor b
    ld [hl], h
    jr nc, jr_019_5ED0

    sbc b
    ld [hl], h
    jr nz, jr_019_5ED4

    xor b
    ld [hl], h
    ld [hl], $00
    inc c
    inc b
    dec d
    dec d
    xor b
    ld [hl], h
    inc b
    dec d
    inc e
    ld [hl], l
    ld b, $15
    ld b, h

jr_019_5ED0:
    ld [hl], l
    inc b
    nop
    ld e, [hl]

jr_019_5ED4:
    add hl, de
    dec e
    ld e, a
    dec d
    dec d
    ld [de], a
    ld [hl], l
    ld b, b
    dec d
    ld h, $75
    nop
    nop
    ld h, l
    ld [bc], a
    dec d
    dec d
    cp b
    ld [hl], h
    ld b, b
    dec d
    adc b
    ld [hl], h
    jr nz, @+$17

    cp b
    ld [hl], h
    ld b, b
    nop
    ld e, c
    ld [bc], a
    add hl, de
    ld b, l
    ld h, e
    ld bc, $1843
    dec d
    db $10
    ld b, b
    ld a, d
    ld e, $10
    jr nc, jr_019_5F7B

    jr nz, jr_019_5F13

    ld b, b
    ld a, d
    jr z, jr_019_5F17

    or h
    ld a, d
    nop
    nop
    ld h, l
    ld bc, $1015
    ld d, b
    ld a, d
    jr z, @+$12

jr_019_5F13:
    jr nz, jr_019_5F8F

    jr nz, jr_019_5F27

jr_019_5F17:
    ld d, b
    ld a, d
    ld b, b
    nop
    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    jr nz, jr_019_5F8A

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_019_5F27:
    ld h, h
    jr nz, @+$6B

    ld [hl], h
    ld hl, $4120
    ld l, h
    ld l, h
    rst $38
    ld l, l
    ld h, l
    ld hl, $4E20
    ld l, a
    ld [hl], h
    jr nz, @+$5B

    ld l, a
    ld [hl], l
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A8A2
    ld c, a
    and [hl]
    ld b, c
    ld b, c
    ld b, c
    ld d, d
    ld b, a
    ld b, a
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_5FBE

    jr nz, @+$79

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$69

    ld h, l
    ld [hl], h
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_5FDC

    ld l, a
    ld l, [hl]
    ld h, l

jr_019_5F7B:
    rst $38
    ld h, c
    ld [hl], h
    jr nz, jr_019_5FE1

    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc bc
    ld b, l
    ld l, c

jr_019_5F8A:
    ld e, b
    ld a, b
    inc d
    dec b
    nop

jr_019_5F8F:
    ld hl, sp+$4A
    ld a, [bc]
    ld b, $82
    ret nc

    nop
    add hl, de
    jp $195F


    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld a, [bc]
    dec bc
    and $D0
    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l
    nop
    dec bc
    nop
    dec bc
    inc b
    adc b
    ld a, [bc]
    inc c
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_019_5FBE:
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    ld e, l
    ld e, h
    ld b, [hl]
    inc d
    and c
    ld e, l
    ld b, $00
    inc c
    inc b
    ld b, e
    ld [$1415], sp
    db $D3
    ld e, l
    jr nc, jr_019_5FEB

    db $DD
    ld e, l
    jr nc, jr_019_5FEF

    db $D3

jr_019_5FDC:
    ld e, l
    jr nc, jr_019_5FF3

    and c
    ld e, l

jr_019_5FE1:
    jr nz, jr_019_5FE3

jr_019_5FE3:
    ld e, [hl]
    add hl, de
    jr nz, jr_019_6047

    dec d
    inc d
    cp [hl]
    ld e, d

jr_019_5FEB:
    jr nc, jr_019_6001

    and c
    ld e, l

jr_019_5FEF:
    nop
    nop
    ld e, a
    nop

jr_019_5FF3:
    ld [bc], a
    dec d
    inc d
    inc sp
    ld e, h
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

jr_019_6001:
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
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_608F

    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld hl, $FDFE
    and b
    and [hl]
    ld c, c
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_019_60AF

    ld l, a
    jr nz, jr_019_60B3

    ld l, [hl]
    ld h, l
    rst $38

jr_019_6047:
    ld l, c
    ld [hl], e
    jr nz, jr_019_60B2

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_60C5

    ld l, a
    jr nz, jr_019_60C8

    ld [hl], d
    ld a, c
    cp $74
    ld l, a
    jr nz, jr_019_60CE

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_60CD

    ld h, l
    ld l, $20
    ld c, c
    rst $38
    ld l, b
    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_019_60DF

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    cp $67
    ld l, a
    ld l, a
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, b
    ld l, b
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld l, a

jr_019_608F:
    ld l, a
    ld h, h
    jr nz, jr_019_6101

    ld h, l
    ld [hl], a
    ld [hl], e
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    ld l, $20
    ld c, c
    jr nz, @+$6F

    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld h, h
    rst $38
    ld [hl], h
    ld l, a

jr_019_60AF:
    jr nz, @+$74

    ld h, l

jr_019_60B2:
    ld h, e

jr_019_60B3:
    ld l, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_019_611A

    cp $70
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_6130

    ld h, [hl]
    jr nz, jr_019_6138

    ld l, b

jr_019_60C5:
    ld h, l
    rst $38
    ld h, e

jr_019_60C8:
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_019_60CD:
    ld l, h

jr_019_60CE:
    inc l
    jr nz, jr_019_6133

    ld [hl], l
    ld [hl], h
    cp $6A
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$63

    ld [hl], e
    jr nz, jr_019_6126

    jr nz, @+$79

jr_019_60DF:
    ld h, c
    ld [hl], e
    rst $38
    ld l, h
    ld h, l
    ld h, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_615F

    ld l, b
    ld l, c
    ld [hl], e
    cp $6C
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_615E

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld h, a
    ld [hl], l
    ld a, c
    jr nz, jr_019_6174

jr_019_6101:
    ld l, [hl]
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_019_617C

    ld [hl], b
    cp $62
    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_617E

    ld h, l
    jr nz, jr_019_6175

    ld l, [hl]
    ld h, h
    rst $38
    ld h, a
    ld [hl], d
    ld h, c

jr_019_611A:
    ld h, d
    ld h, d
    ld h, l
    ld h, h
    jr nz, jr_019_6194

    ld l, b
    ld h, l
    cp $70
    ld l, c
    ld h, l

jr_019_6126:
    ld h, e
    ld h, l
    jr nz, jr_019_6199

    ld h, [hl]
    jr nz, jr_019_61A1

    ld l, b
    ld h, l
    rst $38

jr_019_6130:
    ld [hl], a
    ld h, c
    ld l, [hl]

jr_019_6133:
    ld h, h
    jr nz, jr_019_617F

    jr nz, jr_019_61A0

jr_019_6138:
    ld h, c
    ld h, h
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_019_61B5

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_019_61C2

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_019_61C6

    ld h, [hl]
    jr nz, jr_019_61B4

    ld h, l
    ld [hl], h
    ld l, $FE

jr_019_615E:
    db $FD

jr_019_615F:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_019_61E6

    ld l, b
    ld l, c

jr_019_6174:
    ld l, [hl]

jr_019_6175:
    ld l, e
    jr nz, jr_019_61EC

    ld l, b
    ld h, l
    rst $38
    ld h, d

jr_019_617C:
    ld h, l
    ld [hl], e

jr_019_617E:
    ld [hl], h

jr_019_617F:
    jr nz, jr_019_61F5

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, a
    cp $64
    ld l, a
    jr nz, jr_019_61F6

    ld [hl], e
    jr nz, jr_019_6204

    ld l, a
    rst $38
    ld h, e
    ld l, a

jr_019_6194:
    ld l, h
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h

jr_019_6199:
    jr nz, jr_019_620F

    ld l, b
    ld h, l
    cp $72
    ld h, l

jr_019_61A0:
    ld [hl], e

jr_019_61A1:
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_019_621B

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
    ld l, $20
    ld b, c

jr_019_61B4:
    ld [hl], h

jr_019_61B5:
    rst $38
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_6231

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_623B

jr_019_61C2:
    ld l, a
    ld [hl], l
    cp $77

jr_019_61C6:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_6233

    ld h, c
    halt
    ld h, l
    jr nz, jr_019_6231

    rst $38
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    jr nz, jr_019_623A

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    cp $4B
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_019_6247

jr_019_61E6:
    ld l, [hl]
    ld h, h
    jr nz, jr_019_6244

    ld h, l
    ld [hl], h

jr_019_61EC:
    ld l, $FE
    db $FD
    and c
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]

jr_019_61F5:
    sbc e

jr_019_61F6:
    dec bc
    or l
    ld l, d
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    and d
    sbc b

jr_019_6204:
    ld b, c
    and [hl]
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, jr_019_627F

    ld l, b
    ld h, l
    jr nz, @+$74

jr_019_620F:
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_6283

    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_627E

jr_019_621B:
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_6297

    ld [hl], d

jr_019_6231:
    ld h, l
    ld h, c

jr_019_6233:
    ld [hl], h
    ld hl, $FDFE
    and d
    sbc b
    ld b, c

jr_019_623A:
    and [hl]

jr_019_623B:
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_62AF

    ld l, a
    ld [hl], a
    ccf

jr_019_6244:
    cp $FD
    and d

jr_019_6247:
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_019_62B9

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_62D0

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_62D2

    ld h, [hl]
    jr nz, jr_019_62DA

    ld l, b
    ld h, l
    cp $50
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    jr nz, jr_019_62E0

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], e
    ld l, a
    jr nz, @+$4B

    jr nz, jr_019_62E1

jr_019_627E:
    ld h, c

jr_019_627F:
    ld l, [hl]
    jr nz, jr_019_62E9

    ld l, c

jr_019_6283:
    halt
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_019_62ED

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_019_62F9

    ld l, [hl]
    ld [hl], h
    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_019_6297:
    ld l, $2E
    ld l, $20
    ld h, l
    ld [hl], d
    ld l, $2E
    ld l, $FE
    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_019_6316

    ld h, [hl]
    jr nz, jr_019_6303

    ld h, c
    ld l, e
    ld l, c
    ld l, $FF

jr_019_62AF:
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_631D

    ld h, l
    jr nz, jr_019_632F

    ld l, c

jr_019_62B9:
    ld l, h
    ld l, h
    cp $74
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_633B

    ld l, a
    ld [hl], l
    jr nz, jr_019_633A

    ld l, a
    jr nz, jr_019_633D

    ld l, b
    ld h, l
    rst $38
    ld [hl], d
    ld h, l
    ld l, l
    ld h, c

jr_019_62D0:
    ld l, c
    ld l, [hl]

jr_019_62D2:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_019_6346

    ld h, [hl]
    cp $74

jr_019_62DA:
    ld l, b
    ld h, l
    jr nz, jr_019_634E

    ld [hl], l
    ld a, d

jr_019_62E0:
    ld a, d

jr_019_62E1:
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    sbc b

jr_019_62E9:
    ld b, c
    and [hl]
    ld d, a
    ld l, b

jr_019_62ED:
    ld a, c
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_636F

    ld l, a
    ld [hl], l
    rst $38

jr_019_62F9:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_636C

    ld h, l
    ccf
    cp $FD

jr_019_6303:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    daa
    halt
    ld h, l
    jr nz, jr_019_6374

    ld l, a
    ld [hl], h
    jr nz, jr_019_6385

    ld l, a
    jr nz, jr_019_637B

    ld l, a
    rst $38

jr_019_6316:
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_019_6390

    ld l, a

jr_019_631D:
    jr nz, jr_019_6383

    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    inc l
    cp $77
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_019_639B

    ld l, [hl]
    jr nz, jr_019_639C

jr_019_632F:
    ld a, c
    jr nz, jr_019_63A6

    ld h, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c

jr_019_633A:
    and [hl]

jr_019_633B:
    ld d, h
    ld l, b

jr_019_633D:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_63A4

    rst $38
    ld l, b
    ld l, a

jr_019_6346:
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    cp $65

jr_019_634E:
    ld a, b
    ld h, e
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    ld l, $FF
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_019_63CE

    ld [hl], h
    jr nz, jr_019_63D1

    ld [hl], e
    ld l, $FE
    db $FD

jr_019_636C:
    and c
    ld e, l
    add hl, de

jr_019_636F:
    ldh a, [rDMA]
    sbc e
    dec bc
    or l

jr_019_6374:
    ld l, d
    or e
    ld sp, $00C7
    ld c, b
    add hl, de

jr_019_637B:
    bit 6, b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b

jr_019_6383:
    ld l, c
    inc l

jr_019_6385:
    jr nz, jr_019_63E0

    ld h, c
    ld l, e
    ld l, c
    ld hl, $FDFE
    and d
    jr z, jr_019_63D3

jr_019_6390:
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $5420
    ld l, b

jr_019_639B:
    ld h, l

jr_019_639C:
    rst $38
    ld e, c
    ld b, c
    ld c, e
    ld c, c
    jr nz, jr_019_640C

    ld [hl], e

jr_019_63A4:
    jr nz, jr_019_640D

jr_019_63A6:
    ld l, h
    ld h, c
    ld h, h
    jr nz, @+$76

    ld l, a
    cp $73
    ld h, l
    ld h, l
    jr nz, jr_019_642B

    ld l, a
    ld [hl], l
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
    ld hl, $FDFE
    and d
    jr z, jr_019_640A

    and [hl]
    ld c, c
    jr nz, jr_019_643F

    ld l, b
    ld l, c
    ld l, [hl]

jr_019_63CE:
    ld l, e
    jr nz, @+$4B

jr_019_63D1:
    jr nz, jr_019_6446

jr_019_63D3:
    ld h, c
    ld [hl], a
    rst $38
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_019_644F

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h

jr_019_63E0:
    cp $73
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_644C

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_019_645D

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $20
    ld b, c
    ld l, [hl]
    ld h, h
    cp $72
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_019_6472

    ld h, [hl]

jr_019_640A:
    rst $38
    ld a, c

jr_019_640C:
    ld l, a

jr_019_640D:
    ld [hl], l
    jr nz, jr_019_6473

    ld h, c
    ld l, [hl]
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_019_648C

    ld l, a
    cp $65
    halt
    ld h, l
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    ld h, l
    jr nz, jr_019_6494

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    rst $38
    ld l, a
    ld h, [hl]

jr_019_642B:
    jr nz, jr_019_64A1

    ld l, b
    ld h, l
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld h, h
    cp $62
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$4D

    ld l, a
    ld [hl], d

jr_019_643F:
    ld h, a
    jr nz, jr_019_64A3

    ld l, [hl]
    ld h, h
    rst $38
    ld e, d

jr_019_6446:
    ld h, l
    ld [hl], h
    jr nz, @+$66

    ld l, a
    inc l

jr_019_644C:
    jr nz, jr_019_64B7

    ld [hl], h

jr_019_644F:
    cp $6D
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_019_64B9

    ld h, l
    jr nz, jr_019_64BF

    ld l, [hl]
    ld l, a
    ld [hl], l

jr_019_645D:
    ld h, a
    ld l, b
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$75

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_64DD

    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c

jr_019_6472:
    and [hl]

jr_019_6473:
    ld c, c
    jr nz, jr_019_64E1

    ld l, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, @+$4B

    jr nz, @+$6D

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $FF
    ld b, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_019_64F8

    ld h, [hl]
    jr nz, @+$76

jr_019_648C:
    ld l, b
    ld h, l
    cp $4D
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h

jr_019_6494:
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_019_64FB

    ld l, [hl]
    ld h, h
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d

jr_019_64A1:
    ld a, c
    ld [hl], h

jr_019_64A3:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, [hl]
    ld c, a
    ld d, a
    ld d, a
    ld d, a
    jr nz, jr_019_6530

jr_019_64B7:
    ld l, a
    ld [hl], l

jr_019_64B9:
    jr nz, @+$69

    ld l, a
    ld [hl], h
    rst $38
    ld l, c

jr_019_64BF:
    ld [hl], h
    ld hl, $4720
    ld c, a
    ld hl, $2121
    cp $FD
    and c
    ld e, e
    ld bc, $6945
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    inc b
    ld [$D0A4], sp
    nop
    add hl, de
    jr nz, jr_019_6542

jr_019_64DD:
    add hl, de
    add sp, $46
    dec b

jr_019_64E1:
    inc bc
    ld hl, sp+$4A
    rrca
    dec b
    ld [hl], e
    ret nc

    jr z, jr_019_6503

    ret nz

    ld h, l
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    add hl, bc
    ld a, [bc]
    pop de
    ret nc

    ld e, b

jr_019_64F8:
    ld de, $728D

jr_019_64FB:
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_019_650D

    ldh a, [rLYC]

jr_019_6503:
    add b
    add d
    nop
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_650D:
    nop
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld a, [bc]
    add hl, bc
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
    jr nz, jr_019_6538

    inc d
    sbc l
    ld e, h
    jr nc, jr_019_653C

    ld e, l
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    nop
    nop

jr_019_6530:
    ld e, [hl]
    add hl, de
    ld bc, $6566
    ld bc, $1415

jr_019_6538:
    sbc l
    ld e, h
    jr nz, @+$16

jr_019_653C:
    ld e, l
    ld e, h
    inc c
    inc d
    and c
    ld e, l

jr_019_6542:
    ld [$5E00], sp
    add hl, de
    ld c, $66
    ld b, e
    jr jr_019_6557

    inc b
    ld h, l
    ld [bc], a
    ld b, e
    jr nz, jr_019_6566

    inc d
    cp a
    ld e, l
    inc c
    nop
    ld e, [hl]

jr_019_6557:
    add hl, de
    ld l, b
    ld h, [hl]
    ld b, e
    inc h
    dec d
    inc d
    ret


    ld e, l
    jr nc, jr_019_6576

    cp a
    ld e, l
    jr nc, @+$16

jr_019_6566:
    ret


    ld e, l
    jr nc, jr_019_657E

    cp a
    ld e, l
    jr nc, jr_019_6582

    and c
    ld e, l
    nop
    nop
    ld e, a
    nop
    inc bc
    ld b, e

jr_019_6576:
    ld b, b
    dec d
    inc d
    adc $5A
    jr nz, jr_019_657D

jr_019_657D:
    ld e, [hl]

jr_019_657E:
    add hl, de
    sbc h
    ld h, [hl]
    ld b, e

jr_019_6582:
    jr nz, jr_019_6599

    inc d
    db $D3
    ld e, l
    ld h, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld e, a
    ld bc, $1502
    inc d
    inc hl
    ld e, h
    jr jr_019_65AA

    ld l, l
    ld e, h
    ld h, h

jr_019_6599:
    nop
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

jr_019_65AA:
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
    ld h, l
    ld bc, $1043
    dec d
    db $10
    ld b, b
    ld a, d
    jr nc, jr_019_65DA

    jr nc, jr_019_6646

    jr nz, jr_019_65DE

    xor d
    ld a, d
    nop
    nop
    ld h, l
    ld [bc], a
    dec d
    db $10
    ld b, b
    ld a, d
    jr nc, @+$12

jr_019_65DA:
    xor d
    ld a, d
    nop
    nop

jr_019_65DE:
    ld e, a
    nop
    inc bc
    dec d
    db $10
    ld b, b
    ld a, d
    db $10
    db $10
    jr nc, jr_019_6663

    jr nz, jr_019_65FB

    ld d, b
    ld a, d
    jr jr_019_65FF

    jr nz, jr_019_666B

    jr nc, jr_019_6603

    ld d, b
    ld a, d
    jr nc, jr_019_6607

    jr nz, jr_019_6673

    jr nz, jr_019_660B

jr_019_65FB:
    ld d, b
    ld a, d
    ld b, b
    nop

jr_019_65FF:
    add hl, de
    ld b, l
    and d
    sbc b

jr_019_6603:
    ld b, c
    and [hl]
    ccf
    ccf

jr_019_6607:
    ccf
    cp $FD
    and c

jr_019_660B:
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, b
    ld h, c
    ld hl, $5420
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_668A

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_019_6686

    jr nz, jr_019_6697

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_669C

    ld h, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_019_6697

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_669A

    ld h, c
    ld l, e
    ld l, c
    jr nz, jr_019_66A7

jr_019_6646:
    ld l, [hl]
    ld h, h
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_019_66C7

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_66BE

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, $FE

jr_019_6663:
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c

jr_019_666B:
    and [hl]
    ld d, a
    ld l, b
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_019_66E7

jr_019_6673:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    ld c, c
    jr nz, jr_019_66EA

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_66CD

    jr nz, jr_019_66EE

jr_019_6686:
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h

jr_019_668A:
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

jr_019_6697:
    and c
    ld e, a
    nop

jr_019_669A:
    inc bc
    ld b, l

jr_019_669C:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld [hl], a
    ld hl, $FDFE
    and d
    sbc b

jr_019_66A7:
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_672B

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    rst $38
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h

jr_019_66BE:
    ld h, l
    jr nz, jr_019_6728

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    cp $67

jr_019_66C7:
    ld [hl], l
    ld a, c
    jr nz, jr_019_6735

    ld [hl], l
    ld [hl], e

jr_019_66CD:
    ld [hl], h
    jr nz, @+$75

    ld [hl], h
    ld l, a
    ld l, h
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_019_674A

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_674F

    ld h, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_019_675E

jr_019_66E7:
    ld h, c
    ld l, [hl]
    ld h, h

jr_019_66EA:
    jr nz, jr_019_6735

    rst $38
    ld h, [hl]

jr_019_66EE:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld [hl], h
    jr nz, jr_019_6769

    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$4B

    rst $38
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_6773

    ld h, c
    halt
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $70
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_6789

    ld h, [hl]
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, a

jr_019_6728:
    ld bc, $4502

jr_019_672B:
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    rlca
    rlca

jr_019_6735:
    sub e
    ret nc

    nop
    add hl, de
    ld h, l
    ld h, a
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld c, $05
    ld [hl], d
    ret nc

    ld e, b
    ld de, $728D

jr_019_674A:
    add hl, de
    add sp, $46
    ld l, [hl]
    inc c

jr_019_674F:
    dec c
    ld h, b
    ld b, a
    add b
    add l
    nop
    dec bc
    nop
    dec bc
    inc b
    adc b
    inc c
    ld b, $73
    rrca

jr_019_675E:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, jr_019_677D

    inc d

jr_019_6769:
    sbc l
    ld e, h
    ld b, b
    inc d
    inc sp
    ld e, h
    jr nz, jr_019_6785

    sbc l
    ld e, h

jr_019_6773:
    db $10
    inc d
    or l
    ld e, l
    jr nc, jr_019_678D

    cp a
    ld e, l
    jr nc, jr_019_6791

jr_019_677D:
    xor e
    ld e, l
    inc b
    inc d
    db $D3
    ld e, l
    jr nc, jr_019_6799

jr_019_6785:
    db $DD
    ld e, l
    inc b
    inc d

jr_019_6789:
    or l
    ld e, l
    jr jr_019_67A1

jr_019_678D:
    sbc l
    ld e, h
    jr jr_019_6791

jr_019_6791:
    inc c
    inc b
    dec d
    inc d
    and c
    ld e, l
    stop

jr_019_6799:
    ld e, [hl]
    add hl, de
    db $D3
    ld h, a
    ld h, l
    ld bc, $1415

jr_019_67A1:
    ld a, l
    ld e, h
    jr nz, jr_019_67B9

    ld e, l
    ld e, h
    jr z, jr_019_67BD

    ld a, l
    ld e, h
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc

jr_019_67B9:
    ld b, $00
    ld c, e
    ld l, h

jr_019_67BD:
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
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_019_684A

    ld l, [hl]
    ld h, l
    jr nz, jr_019_6847

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_6835

    daa
    ld l, l
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $6945
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    ld c, $0F
    ld a, [hl-]
    pop de
    nop
    add hl, de
    scf
    ld l, b
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    inc c
    add hl, bc
    ret nz

    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l
    nop
    dec bc
    nop
    dec bc
    inc b
    adc b
    inc c
    ld a, [bc]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b

jr_019_6835:
    rrca
    ld b, l
    ld b, e
    jr nz, @+$17

    inc d
    inc sp
    ld e, h
    ld b, b
    inc d
    ld a, l
    ld e, h
    jr nc, jr_019_6857

    inc sp
    ld e, h
    jr jr_019_685B

jr_019_6847:
    sbc l
    ld e, h
    inc c

jr_019_684A:
    inc d
    db $D3
    ld e, l
    ld [$0C00], sp
    inc b
    dec d
    inc d
    and c
    ld e, l
    jr jr_019_6857

jr_019_6857:
    ld e, [hl]
    add hl, de
    sub c
    ld l, b

jr_019_685B:
    ld h, l
    ld bc, $1415
    ld e, l
    ld e, h
    jr nz, jr_019_6877

    sbc l
    ld e, h
    jr z, jr_019_687B

    ld e, l
    ld e, h
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc

jr_019_6877:
    ld b, $00
    ld c, e
    ld l, h

jr_019_687B:
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
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FE
    db $FD
    and b
    and [hl]
    ld c, c
    jr nz, jr_019_690A

    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_019_6901

    ld h, l
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_6915

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6934

    ld l, a
    ld l, a
    rst $38
    ld h, d
    ld h, c
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $6945
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    inc c
    rlca
    sbc b
    ret nc

    nop
    add hl, de
    rlca
    ld l, c
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec b
    add hl, bc
    cp c
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l
    nop
    dec bc
    nop
    dec bc
    inc b
    adc b
    ld b, $09
    ld [hl], e
    rrca
    rst $38

jr_019_6901:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, jr_019_691F

jr_019_690A:
    inc d
    ld a, l
    ld e, h
    ld b, b
    inc d
    ld e, l
    ld e, h
    jr nz, jr_019_6927

    ld a, l
    ld e, h

jr_019_6915:
    jr z, jr_019_692B

    cp a
    ld e, l
    ld b, $00
    inc c
    inc b
    dec d
    inc d

jr_019_691F:
    and c
    ld e, l
    db $10
    inc d
    db $DD
    ld e, l
    ld b, b
    inc d

jr_019_6927:
    ret


    ld e, l
    ld b, b
    inc d

jr_019_692B:
    db $DD
    ld e, l
    ld b, b
    nop
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]

jr_019_6934:
    add hl, de
    ld l, l
    ld l, c
    ld h, l
    ld bc, $1415
    sbc l
    ld e, h
    jr nc, jr_019_6953

    inc sp
    ld e, h
    jr nz, jr_019_6957

    sbc l
    ld e, h
    ld d, b
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, [hl]
    ld bc, $A135
    add hl, bc

jr_019_6953:
    ld b, $00
    ld c, e
    ld l, h

jr_019_6957:
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
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_019_69E4

    ld l, [hl]
    ld h, l
    jr nz, jr_019_69E1

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_69CF

    daa
    ld l, l
    jr nz, jr_019_69DC

    ld b, l
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $6945
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    dec bc
    dec c
    rrca
    pop de
    nop
    add hl, de
    ld a, [bc]
    ld l, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld c, $04
    ld e, [hl]
    ret nc

    nop
    add hl, de
    ld [hl], e
    ld l, d
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld c, $06
    add [hl]
    ret nc

    jr z, jr_019_69E3

    sub d
    ld l, d
    add hl, de
    add sp, $46

jr_019_69CF:
    dec b
    inc b
    ld hl, sp+$4A
    add hl, bc
    ld b, $81
    ret nc

    ld e, b
    ld de, $728D
    add hl, de

jr_019_69DC:
    add sp, $46
    ld l, [hl]
    jr z, jr_019_69EE

jr_019_69E1:
    ret nz

    ld l, e

jr_019_69E3:
    nop

jr_019_69E4:
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_69F5

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_69EE:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_69F5:
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
    dec c
    ld [$0F73], sp
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    inc sp
    ld e, h
    ld d, b
    inc d
    sub a
    ld e, l
    jr nc, jr_019_6A28

    db $D3
    ld e, l
    jr nc, jr_019_6A2C

    sub a
    ld e, l
    jr nc, jr_019_6A1C

jr_019_6A1C:
    ld h, l
    ld bc, $195E
    dec c
    ld l, e
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    ld [bc], a

jr_019_6A28:
    ld e, [hl]
    add hl, de
    ld c, e
    ld l, e

jr_019_6A2C:
    dec d
    inc d
    ld a, l
    ld e, h
    jr nz, jr_019_6A46

    inc sp
    ld e, h
    jr jr_019_6A36

jr_019_6A36:
    inc c
    inc b
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_019_6A52

    sbc l
    ld e, h
    jr nz, @+$16

    ld e, l
    ld e, h
    ld h, h
    inc d

jr_019_6A46:
    and c
    ld e, l
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

jr_019_6A52:
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
    jr nz, jr_019_6A8E

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_6A92

    ld a, [hl-]
    ld [hl], l
    jr nz, jr_019_6A96

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_6A9A

    ld a, [hl-]
    ld [hl], l
    jr nz, @+$17

    ld [de], a
    ld [hl], l
    jr nz, jr_019_6A8D

jr_019_6A8D:
    ld e, [hl]

jr_019_6A8E:
    add hl, de
    or l
    ld l, d
    ld b, l

jr_019_6A92:
    dec d
    db $10
    jr nz, jr_019_6B10

jr_019_6A96:
    inc b
    db $10
    and $7A

jr_019_6A9A:
    jr z, jr_019_6AAC

    jp nc, $207A

    db $10
    and $7A
    jr nz, jr_019_6AB4

    jp nc, $207A

    db $10
    and $7A
    jr nz, jr_019_6ABC

jr_019_6AAC:
    jp nc, $207A

    db $10
    and b
    ld a, d
    jr nz, jr_019_6AB4

jr_019_6AB4:
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, d
    ld h, l
    ld [hl], h

jr_019_6ABC:
    inc l
    jr nz, jr_019_6B33

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_6B2D

    ld [hl], e
    rst $38
    ld l, c
    ld [hl], h
    ld hl, $4120
    jr nz, jr_019_6B41

    ld [hl], d
    ld [hl], l
    ld l, h
    ld a, c
    cp $67
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_6B49

    ld l, h
    ld h, c
    ld l, [hl]
    ld hl, $4120
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_019_6B59

    ld l, a
    jr nz, jr_019_6B4C

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    cp $69
    ld [hl], h
    jr nz, jr_019_6B57

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_019_6B6A

    ld h, l
    ld h, l
    ld l, h
    rst $38
    ld h, c
    jr nz, jr_019_6B63

    ld h, c
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld h, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c

jr_019_6B10:
    and [hl]
    ld c, c
    ld [hl], e
    jr nz, jr_019_6B89

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_6B91

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, l
    halt
    ld l, c
    ld l, h
    jr nz, jr_019_6B9A

    ld l, c
    ld l, h
    ld l, h
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], e
    cp $61

jr_019_6B2D:
    ld [hl], d
    ld h, l
    jr nz, jr_019_6B94

    ld l, a
    ld l, l

jr_019_6B33:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6BAC

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_019_6BA5

jr_019_6B41:
    ld h, c
    ld a, c
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e

jr_019_6B49:
    ld [bc], a
    ld b, l
    and d

jr_019_6B4C:
    xor b
    ld c, a
    and [hl]
    dec l
    ld b, a
    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    ld h, l

jr_019_6B57:
    dec l
    rst $38

jr_019_6B59:
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_019_6B63:
    ld h, l
    halt
    ld h, l
    ld [hl], d
    cp $79
    ld l, a

jr_019_6B6A:
    ld [hl], l
    jr nz, jr_019_6BE0

    ld h, c
    ld a, c
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_019_6BDF

    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, jr_019_6BEB

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD

jr_019_6B89:
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    ld l, c
    ld e, b
    ld a, b

jr_019_6B91:
    inc d
    dec b
    nop

jr_019_6B94:
    ld hl, sp+$4A
    ld c, $07
    sbc d
    ret nc

jr_019_6B9A:
    nop
    add hl, de
    ld a, [$196B]
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A

jr_019_6BA5:
    dec b
    ld [$D0A5], sp
    nop
    add hl, de
    ld c, b

jr_019_6BAC:
    ld l, h
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec b
    ld a, [bc]
    call $28D0
    add hl, de
    cp [hl]
    ld l, h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    add hl, bc
    ld a, [bc]
    pop de
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_6BDE

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_6BE5

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_6BDE:
    ld l, [hl]

jr_019_6BDF:
    inc c

jr_019_6BE0:
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_6BE5:
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc

jr_019_6BEB:
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
    dec d
    inc d
    ld a, l
    ld e, h
    jr nc, jr_019_6C14

    ld e, l
    ld e, h
    db $10
    inc d
    cp a
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1415
    ld a, l
    ld e, h
    jr nz, jr_019_6C24

    ld e, l
    ld e, h
    jr nz, jr_019_6C28

jr_019_6C14:
    and c
    ld e, l
    nop
    nop
    inc c
    inc b
    ld e, [hl]
    add hl, de
    add d
    ld l, [hl]
    dec d
    inc d
    cp [hl]
    ld e, d
    jr nc, jr_019_6C38

jr_019_6C24:
    and c
    ld e, l
    nop
    nop

jr_019_6C28:
    ld e, a
    nop
    inc bc
    inc d
    inc d
    xor e
    ld e, l
    ld h, l
    ld [bc], a
    dec d
    inc d
    inc sp
    ld e, h
    jr nz, @+$16

    sbc l

jr_019_6C38:
    ld e, h
    jr nz, jr_019_6C4F

    inc sp
    ld e, h
    jr nz, @+$16

    sbc l
    ld e, h
    ld d, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld b, l
    dec d
    dec d
    jr nc, @+$77

    jr nz, jr_019_6C63

    ld b, h

jr_019_6C4F:
    ld [hl], l
    jr nz, jr_019_6C67

    jr nc, @+$77

    jr nz, @+$17

    ld b, h
    ld [hl], l
    jr nz, jr_019_6C6F

    jr nc, @+$77

    jr nz, jr_019_6C73

    ld [de], a
    ld [hl], l
    jr nz, jr_019_6C62

jr_019_6C62:
    ld e, [hl]

jr_019_6C63:
    add hl, de
    ld d, $6D
    ld h, l

jr_019_6C67:
    ld [bc], a
    dec d
    dec d
    ld h, $75
    jr nc, jr_019_6C83

    ld [de], a

jr_019_6C6F:
    ld [hl], l
    jr nc, @+$17

    ld c, [hl]

jr_019_6C73:
    ld [hl], l
    nop
    nop
    ld e, [hl]
    add hl, de
    add a
    ld l, l
    ld h, l
    inc b
    ld b, e
    db $10
    inc d
    dec d
    ld c, [hl]
    ld [hl], l
    ld h, l

jr_019_6C83:
    dec b
    ld b, e
    ld [$1515], sp
    cp b
    ld [hl], h
    ld b, b
    dec d
    sbc b
    ld [hl], h
    jr nc, @+$17

    cp b
    ld [hl], h
    ld d, b
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
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
    db $10
    call c, $287A
    db $10
    ret z

    ld a, d
    jr nz, jr_019_6CD8

    call c, $207A
    db $10
    ret z

    ld a, d
    jr nz, jr_019_6CE0

    call c, $207A
    db $10
    ret z

    ld a, d
    jr nz, jr_019_6CE8

jr_019_6CD8:
    and b
    ld a, d
    jr nz, jr_019_6CDC

jr_019_6CDC:
    ld e, a
    nop
    inc bc
    inc d

jr_019_6CE0:
    db $10
    cp [hl]
    ld a, d
    ld e, [hl]
    add hl, de
    ld d, d
    ld l, l
    ld h, l

jr_019_6CE8:
    inc bc
    inc d
    db $10
    and b
    ld a, d
    ld e, [hl]
    add hl, de
    or a
    ld l, l
    ld h, l
    inc b
    dec d
    db $10
    ld d, b
    ld a, d
    jr nc, jr_019_6D09

    ret z

    ld a, d
    nop
    nop
    ld e, [hl]
    add hl, de
    dec [hl]
    ld l, [hl]
    ld h, l
    dec b
    dec d
    db $10
    ld d, b
    ld a, d
    jr nz, jr_019_6D19

jr_019_6D09:
    jr nc, jr_019_6D85

    jr nz, jr_019_6D1D

    ld d, b
    ld a, d
    ld d, b
    db $10
    xor d
    ld a, d
    nop
    nop
    ld b, l
    and d
    ld c, b
    ld e, a

jr_019_6D19:
    and [hl]
    ld c, c
    daa
    halt

jr_019_6D1D:
    ld h, l
    jr nz, jr_019_6D87

    ld l, a
    ld [hl], h
    jr nz, jr_019_6D8D

    ld [hl], h
    ld hl, $4120
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_019_6DA2

    ld l, a
    jr nz, jr_019_6D95

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_019_6DA1

    ld h, c
    ld l, [hl]
    jr nz, jr_019_6DB5

    ld [hl], a
    ld l, c
    ld l, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_019_6DB3

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    xor b
    ld c, a
    and [hl]
    ld c, c
    ld [hl], e
    jr nz, jr_019_6DD3

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6DCF

    ld l, h
    ld h, c
    ld l, [hl]
    rst $38
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_6DCE

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_019_6DE4

    ld l, a
    cp $73
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_6DEC

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_6DE4

    ld l, c
    ld [hl], d
    ld l, h
    ccf
    cp $FD
    and c
    ld e, e

jr_019_6D85:
    ld [bc], a
    ld b, l

jr_019_6D87:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a
    ld l, b

jr_019_6D8D:
    ld a, c
    jr nz, jr_019_6DF4

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h

jr_019_6D95:
    jr nz, jr_019_6E10

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], b
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$6A

jr_019_6DA1:
    ld h, l

jr_019_6DA2:
    ld [hl], d
    jr nz, jr_019_6E14

    ld [hl], l
    ld [hl], h
    cp $65
    ld h, c
    ld [hl], d
    ld l, h
    ld l, c
    ld h, l
    ld [hl], d
    ccf
    ld hl, $FDFE

jr_019_6DB3:
    and c
    ld e, e

jr_019_6DB5:
    inc bc
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld d, e
    ld l, b
    ld h, l
    jr nz, jr_019_6E37

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE

jr_019_6DCE:
    and d

jr_019_6DCF:
    ld c, b
    ld e, a
    and [hl]
    ld d, a

jr_019_6DD3:
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_019_6E4C

    ld l, b
    ld h, l
    daa
    ld [hl], e
    rst $38
    ld h, a
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_019_6E52

jr_019_6DE4:
    ld l, a
    ld [hl], a
    ld hl, $5A20
    ld h, l
    ld [hl], h
    inc l

jr_019_6DEC:
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_6E5C

    ld [hl], e

jr_019_6DF4:
    jr nz, jr_019_6E57

    ld l, h
    ld l, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6E65

    ld h, c
    ld [hl], l
    ld l, h
    ld [hl], h
    inc l
    jr nz, jr_019_6E74

    ld l, a
    ld [hl], a
    cp $77
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_6E7E

jr_019_6E10:
    ld h, l
    halt
    ld h, l
    ld [hl], d

jr_019_6E14:
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_019_6E91

    ld l, b
    ld h, l
    cp $53
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_019_6E96

    ld h, [hl]
    jr nz, jr_019_6E72

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    and d
    ld c, b

jr_019_6E37:
    ld e, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, @+$70

    ld h, l
    halt
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_019_6EC3

jr_019_6E4C:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_019_6EBE

    ld h, l

jr_019_6E52:
    cp $61
    ld h, a
    ld h, c
    ld l, c

jr_019_6E57:
    ld l, [hl]
    ld hl, $FDFE
    and d

jr_019_6E5C:
    xor b
    ld c, a
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_019_6ECD

    ld h, [hl]

jr_019_6E65:
    jr nz, jr_019_6ED6

    ld l, [hl]
    ld l, h
    ld a, c
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$79

    ld h, l

jr_019_6E72:
    ld [hl], d
    ld h, l

jr_019_6E74:
    cp $74
    ld [hl], d
    ld [hl], l
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD

jr_019_6E7E:
    and c
    ld e, e
    dec b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, h
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_6EFB

    ld l, [hl]
    ld h, l
    ld hl, $4120

jr_019_6E91:
    ld l, [hl]
    ld h, h
    rst $38
    ld l, [hl]
    ld l, a

jr_019_6E96:
    ld [hl], h
    jr nz, jr_019_6EFE

    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_019_6EFF

    cp $73
    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$76

    ld l, a
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_019_6F16

    ld l, a
    ld [hl], d
    jr nz, jr_019_6F1D

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    inc bc
    ld b, l
    and d

jr_019_6EBE:
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, c

jr_019_6EC3:
    ld h, h
    ld l, a
    ld l, [hl]
    ld hl, $4720
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e

jr_019_6ECD:
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_6F1D

    jr nz, @+$68

jr_019_6ED6:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    jr nz, @+$72

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    jr nz, jr_019_6F68

    ld h, [hl]
    rst $38

jr_019_6EFB:
    ld h, e
    ld [hl], d
    ld a, c

jr_019_6EFE:
    ld [hl], e

jr_019_6EFF:
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_019_6F6A

    ld [hl], d
    ld l, a
    ld l, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_019_6F60

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_019_6F5E

jr_019_6F16:
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE

jr_019_6F1D:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_019_6F95

    ld h, [hl]
    jr nz, jr_019_6F8C

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $FE
    db $FD
    and b
    and [hl]
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_019_6F83

    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_019_6F9E

    ld l, [hl]
    ld h, h
    rst $38
    ld e, d
    ld h, l
    ld [hl], h
    jr nz, jr_019_6FB8

    ld h, l
    ld h, l
    jr nz, jr_019_6FC2

    ld l, a
    ld [hl], l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_019_6FCB

    ld h, c
    ld [hl], a
    jr nz, jr_019_6FC9

    ld h, l
    inc l

jr_019_6F5E:
    rst $38
    ld h, d

jr_019_6F60:
    ld [hl], l
    ld [hl], h
    jr nz, @+$4B

    jr nz, @+$69

    ld l, a
    ld [hl], h

jr_019_6F68:
    jr nz, jr_019_6FCB

jr_019_6F6A:
    ld [hl], a
    ld h, c
    ld a, c
    cp $62
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_019_6FEA

    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_019_6FE4

    ld h, c
    ld [hl], h

jr_019_6F83:
    ld h, e
    ld l, b
    jr nz, jr_019_6FF4

    ld h, l
    ld l, $FE
    db $FD
    and d

jr_019_6F8C:
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_6FFB

jr_019_6F95:
    ld l, a
    ld [hl], d
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld l, $FF
    ld c, [hl]

jr_019_6F9E:
    ld l, a
    ld [hl], a
    jr nz, jr_019_7009

    ld l, a
    jr nz, jr_019_700B

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_701E

    ld l, b
    ld h, l
    cp $72
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_7022

    ld h, [hl]
    jr nz, jr_019_702A

    ld l, b
    ld h, c

jr_019_6FB8:
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $FDFE

jr_019_6FC2:
    and c
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    dec bc

jr_019_6FC9:
    or l
    ld l, d

jr_019_6FCB:
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$6E

    ld h, c
    ld [hl], e
    ld [hl], h

jr_019_6FE4:
    jr nz, jr_019_7055

    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b

jr_019_6FEA:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_019_705F

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld [hl], e

jr_019_6FF4:
    cp $6F
    ld h, [hl]
    jr nz, jr_019_706D

    ld l, b
    ld h, l

jr_019_6FFB:
    jr nz, jr_019_7060

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld hl, $FDFE
    and d
    cp b
    ld e, l

jr_019_7009:
    and [hl]
    ld b, h

jr_019_700B:
    ld l, c
    ld h, h
    jr nz, jr_019_7088

    ld l, a
    ld [hl], l
    jr nz, jr_019_7086

    ld h, l
    ld h, l
    rst $38
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6A

    ld h, c
    ld [hl], b

jr_019_701E:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l

jr_019_7022:
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_019_7073

    ld l, a
    ld [hl], d

jr_019_702A:
    ld h, a
    jr nz, jr_019_708E

    ld l, [hl]
    ld h, h
    rst $38
    ld e, d
    ld h, l
    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_019_70B3

    ld h, c
    ld [hl], a
    jr nz, jr_019_70B1

    ld h, l
    inc l
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_7095

    jr nz, jr_019_70B5

    ld l, a
    ld [hl], h
    cp $61
    ld [hl], a
    ld h, c
    ld a, c

jr_019_7055:
    jr nz, jr_019_70B9

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, b

jr_019_705F:
    ld h, l

jr_019_7060:
    ld a, c
    jr nz, jr_019_70C6

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    cp $63
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_019_706D:
    jr nz, jr_019_70DC

    ld h, l
    ld l, $FE
    db $FD

jr_019_7073:
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_70E3

    ld l, a
    ld [hl], d
    jr nz, jr_019_70FA

    ld l, a
    ld [hl], l
    ld hl, $4EFE

jr_019_7086:
    ld l, a
    ld [hl], a

jr_019_7088:
    jr nz, jr_019_70F0

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e

jr_019_708E:
    ld l, b
    jr nz, jr_019_7105

    ld l, b
    ld h, l
    rst $38
    ld d, b

jr_019_7095:
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    cp $70
    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, @+$75

    ld l, a
    jr nz, jr_019_7120

    ld h, l
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_019_711D

    ld l, a

jr_019_70B1:
    halt
    ld h, l

jr_019_70B3:
    jr nz, jr_019_7124

jr_019_70B5:
    ld l, [hl]
    ld hl, $FDFE

jr_019_70B9:
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

jr_019_70C6:
    ld c, b
    add hl, de
    bit 6, b
    ld b, l
    ld c, [hl]
    ld bc, $A135
    add hl, de
    ld bc, $0700
    ld [hl], c
    add hl, de
    ld [bc], a
    nop
    ld a, [bc]
    ld [hl], c
    add hl, de
    inc bc
    nop

jr_019_70DC:
    dec c
    ld [hl], c
    add hl, de
    inc b
    nop
    db $10
    ld [hl], c

jr_019_70E3:
    add hl, de
    dec b
    nop
    inc de
    ld [hl], c
    add hl, de
    ld b, $00
    ld d, $71
    add hl, de
    rlca
    nop

jr_019_70F0:
    add hl, de
    ld [hl], c
    add hl, de
    ld [$1C00], sp
    ld [hl], c
    add hl, de
    add hl, bc
    nop

jr_019_70FA:
    rra
    ld [hl], c
    add hl, de
    ld a, [bc]
    nop
    ld [hl+], a
    ld [hl], c
    add hl, de
    dec bc
    nop
    dec h

jr_019_7105:
    ld [hl], c
    rst $38
    ld [hl+], a
    rrca
    ld b, l
    ld [hl+], a
    rra
    ld b, l
    ld [hl+], a
    ld d, $45
    ld [hl+], a
    dec bc
    ld b, l
    ld [hl+], a
    daa
    ld b, l
    ld [hl+], a
    ld de, $2245
    ld c, $45
    ld [hl+], a

jr_019_711D:
    ld [hl+], a
    ld b, l
    ld [hl+], a

jr_019_7120:
    ld a, [bc]
    ld b, l
    ld [hl+], a
    dec bc

jr_019_7124:
    ld b, l
    ld [hl+], a
    inc de
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    rlca
    add hl, bc
    cp e
    ret nc

    nop
    add hl, de
    sub h
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    rrca
    ld c, $27
    pop de
    nop
    add hl, de
    or $71
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec c
    ld c, $25
    pop de
    jr z, jr_019_716D

    ld d, c
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec c
    ld a, [bc]
    push de
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_7178

    ret nz

    ld l, e

jr_019_716D:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_717F

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_7178:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_717F:
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
    dec c
    dec c
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
    jr nc, jr_019_71AC

    inc d
    sbc l
    ld e, h
    ld b, b
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1414

jr_019_71AC:
    and c
    ld e, l
    ld e, [hl]
    add hl, de
    di
    ld [hl], d
    ld h, l
    ld [bc], a
    dec d
    inc d
    sbc l
    ld e, h
    stop
    inc c
    inc b
    dec d
    inc d
    ld a, l
    ld e, h
    db $10
    inc d
    inc sp
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h
    ld d, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld h, l
    inc b
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
    ld [de], a
    ld [hl], l
    jr nz, jr_019_7211

    ld b, h
    ld [hl], l
    jr nz, jr_019_7215

    ld c, [hl]
    ld [hl], l
    jr nz, @+$17

    ld b, h
    ld [hl], l
    jr nz, jr_019_721D

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_7221

    inc e
    ld [hl], l
    jr nz, jr_019_7210

jr_019_7210:
    ld e, [hl]

jr_019_7211:
    add hl, de
    xor d
    ld [hl], d
    ld h, l

jr_019_7215:
    inc bc
    inc d
    dec d
    jr nc, jr_019_728F

    ld e, [hl]
    add hl, de
    ld e, c

jr_019_721D:
    ld [hl], e
    dec d
    dec d
    xor b

jr_019_7221:
    ld [hl], h
    jr nz, jr_019_7239

    adc b
    ld [hl], h
    jr nz, jr_019_723D

    cp b
    ld [hl], h
    jr nz, jr_019_7241

    sbc b
    ld [hl], h
    jr nz, jr_019_7245

    xor b
    ld [hl], h
    jr nz, jr_019_7249

    adc b
    ld [hl], h
    jr nz, jr_019_724D

    xor b

jr_019_7239:
    ld [hl], h
    jr nz, jr_019_7251

    adc b

jr_019_723D:
    ld [hl], h
    jr nz, jr_019_7255

    xor b

jr_019_7241:
    ld [hl], h
    jr nz, jr_019_7259

    adc b

jr_019_7245:
    ld [hl], h
    jr nz, @+$17

    xor b

jr_019_7249:
    ld [hl], h
    jr nz, jr_019_7261

    ld [de], a

jr_019_724D:
    ld [hl], l
    nop
    nop
    ld b, l

jr_019_7251:
    dec d
    db $10
    xor d
    ld a, d

jr_019_7255:
    jr z, jr_019_7267

    and $7A

jr_019_7259:
    jr nz, jr_019_726B

    call c, $207A
    db $10
    and $7A

jr_019_7261:
    jr nz, jr_019_7273

    call c, $207A
    db $10

jr_019_7267:
    and $7A
    jr nz, jr_019_727B

jr_019_726B:
    cp [hl]
    ld a, d
    jr nz, jr_019_726F

jr_019_726F:
    ld h, l
    ld [bc], a
    inc d
    db $10

jr_019_7273:
    ret z

    ld a, d
    ld e, [hl]
    add hl, de
    inc d
    ld [hl], e
    ld h, l
    inc bc

jr_019_727B:
    dec d
    db $10
    jr nz, jr_019_72F9

    jr nz, jr_019_7291

    ld d, b
    ld a, d
    jr nz, jr_019_7295

    jr nc, jr_019_7301

    jr nz, jr_019_7299

    ld b, b
    ld a, d
    jr nz, jr_019_729D

    jr nz, @+$7C

jr_019_728F:
    jr nz, jr_019_72A1

jr_019_7291:
    ld b, b
    ld a, d
    jr nz, jr_019_72A5

jr_019_7295:
    jr nz, jr_019_7311

    jr nz, jr_019_72A9

jr_019_7299:
    ld b, b
    ld a, d
    jr nz, jr_019_72AD

jr_019_729D:
    jr nz, jr_019_7319

    jr nz, jr_019_72B1

jr_019_72A1:
    ld b, b
    ld a, d
    jr nz, jr_019_72B5

jr_019_72A5:
    xor d
    ld a, d
    nop
    nop

jr_019_72A9:
    ld b, l
    and d
    ld c, b
    ld e, a

jr_019_72AD:
    and [hl]
    ld c, c
    daa
    halt

jr_019_72B1:
    ld h, l
    jr nz, jr_019_731B

    ld l, a

jr_019_72B5:
    ld [hl], h
    jr nz, jr_019_7321

    ld [hl], h
    ld hl, $4120
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_019_7336

    ld l, a
    jr nz, jr_019_7329

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_019_7335

    ld h, c
    ld l, [hl]
    jr nz, jr_019_7349

    ld l, l
    ld h, l
    ld l, h
    ld l, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7343

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    cp $6F
    ld l, [hl]
    jr nz, @+$6B

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b

jr_019_72F9:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_7376

    ld l, c
    ld [hl], h

jr_019_7301:
    ld l, b
    rst $38
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_019_7371

    ld [hl], l
    ld a, c
    ld [hl], e
    ccf
    cp $FD
    and c

jr_019_7311:
    ld e, e
    ld [bc], a
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a

jr_019_7319:
    ld h, l
    ld l, h

jr_019_731B:
    ld l, h
    inc l
    jr nz, jr_019_7396

    ld l, b
    ld l, c

jr_019_7321:
    ld l, h
    ld h, l
    jr nz, jr_019_739E

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_019_7329:
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_019_739E

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], e
    inc l
    jr nz, jr_019_73A9

jr_019_7335:
    ld l, b

jr_019_7336:
    ld h, l
    cp $67
    ld l, c
    ld [hl], d
    ld l, h
    jr nz, jr_019_73A5

    ld l, a
    ld [hl], h
    jr nz, jr_019_73B6

    ld l, b

jr_019_7343:
    ld h, l
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e

jr_019_7349:
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, d
    ld h, l
    ld [hl], h
    inc l
    jr nz, jr_019_73D7

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_73D1

    ld [hl], e
    rst $38
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_019_73E8

    ld l, a
    ld [hl], l

jr_019_7371:
    ld [hl], d
    jr nz, jr_019_73DA

    ld h, c
    ld [hl], l

jr_019_7376:
    ld l, h
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    ld l, c
    ld e, b
    ld a, b
    inc d
    dec b
    nop
    ld hl, sp+$4A
    dec c
    ld a, [bc]
    push de
    ret nc

    nop
    add hl, de
    db $EB
    ld [hl], e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A

jr_019_7396:
    ld [$9407], sp
    ret nc

    nop
    add hl, de
    ld c, d
    ld [hl], h

jr_019_739E:
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A

jr_019_73A5:
    ld a, [bc]
    rlca
    sub [hl]
    ret nc

jr_019_73A9:
    jr z, jr_019_73C4

    ld l, c
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec b
    ld a, [bc]

jr_019_73B6:
    call $58D0
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_73CF

    ret nz

    ld l, e

jr_019_73C4:
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_019_73D6

    ldh a, [rLYC]
    add b
    add d
    nop

jr_019_73CF:
    ld l, [hl]
    inc c

jr_019_73D1:
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_73D6:
    nop

jr_019_73D7:
    dec bc
    nop
    dec bc

jr_019_73DA:
    ld [bc], a
    dec bc
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

jr_019_73E8:
    ld h, b
    rrca
    ld b, l
    ld b, e
    ld b, b
    dec d
    inc d
    ld a, l
    ld e, h
    ld b, b
    inc d
    sub a
    ld e, l
    jr nc, jr_019_740B

    xor e
    ld e, l
    jr nc, jr_019_740F

    sub a
    ld e, l
    nop
    nop
    ld h, l
    ld bc, $1414
    and c
    ld e, l
    ld e, [hl]
    add hl, de
    pop hl
    ld [hl], h
    ld h, l
    ld [bc], a

jr_019_740B:
    ld e, [hl]
    add hl, de
    inc b
    ld [hl], l

jr_019_740F:
    dec d
    inc d
    ld l, l
    ld e, h
    inc a
    nop
    inc c
    inc b
    dec d
    inc d
    adc l
    ld e, h
    add b
    inc d
    and c
    ld e, l
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
    ld [$2075], sp
    dec d
    jr nc, @+$77

    jr nz, jr_019_7469

    ld a, [hl-]
    ld [hl], l
    jr nz, jr_019_746D

    jr nc, jr_019_74CF

    jr nz, @+$17

    ld a, [hl-]
    ld [hl], l
    jr nz, jr_019_7475

    ld h, $75
    jr nz, jr_019_7464

jr_019_7464:
    ld e, [hl]
    add hl, de
    adc b
    ld [hl], h
    ld b, l

jr_019_7469:
    dec d
    db $10
    and b
    ld a, d

jr_019_746D:
    jr z, jr_019_747F

    jp nc, $207A

    db $10
    ret z

    ld a, d

jr_019_7475:
    jr nz, jr_019_7487

    jp nc, $207A

    db $10
    ret z

    ld a, d
    jr nz, jr_019_748F

jr_019_747F:
    jp nc, $207A

    db $10
    or h
    ld a, d
    jr nz, jr_019_7487

jr_019_7487:
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, c
    ld l, b
    ld h, c

jr_019_748F:
    ld hl, $5420
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_750B

    ld l, c
    ld l, l
    ld h, l
    rst $38
    ld c, c
    daa
    halt
    ld h, l
    jr nz, jr_019_7508

    ld l, a
    ld [hl], h
    jr nz, @+$6B

    ld [hl], h
    ld hl, $4120
    cp $70
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_019_7523

    ld l, a
    jr nz, jr_019_7516

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_7522

    ld h, c
    ld l, [hl]
    jr nz, jr_019_7526

    ld l, h
    ld l, c
    ld [hl], b
    cp $79
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7541

    ld l, a
    ld h, l

jr_019_74CF:
    ld l, [hl]
    ld h, c
    ld l, c
    ld l, h
    ld [hl], e
    rst $38
    ld l, a
    ld l, [hl]
    jr nz, jr_019_7542

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, b
    ld h, l
    ld h, l
    ld [hl], e
    ld l, b
    inc l
    jr nz, jr_019_7562

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_019_756A

    ld l, a
    ld l, a
    jr nz, jr_019_755F

    ld h, c
    ld [hl], e
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]

jr_019_7508:
    daa
    ld b, e
    ld l, h

jr_019_750B:
    ld l, c
    ld [hl], b
    jr nz, jr_019_7588

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, a
    ld h, l

jr_019_7516:
    ld l, [hl]
    ld h, c
    ld l, c
    ld l, h
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    cp $69
    ld [hl], h
    ccf

jr_019_7522:
    daa

jr_019_7523:
    jr nz, @+$59

    ld l, b

jr_019_7526:
    ld h, c
    ld [hl], h
    jr nz, jr_019_758E

    ld l, a
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_75A1

    ld h, l
    ld h, c
    ld l, [hl]
    ld hl, $FE3F
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    ld l, c

jr_019_7541:
    ld e, b

jr_019_7542:
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
    add hl, de
    xor h
    ld [hl], l
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
    add hl, de
    inc d
    halt

jr_019_755F:
    add hl, de
    add sp, $46

jr_019_7562:
    dec b
    inc bc
    ld hl, sp+$4A
    add hl, bc
    ld a, [bc]
    pop de
    ret nc

jr_019_756A:
    jr z, jr_019_7585

    add h
    ld [hl], a
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec bc
    rlca
    sub a
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_019_7590

    ret nz

    ld l, e

jr_019_7585:
    nop
    add b
    nop

jr_019_7588:
    ld l, [hl]
    jr nc, jr_019_7597

    ldh a, [rLYC]
    add b

jr_019_758E:
    add d
    nop

jr_019_7590:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_019_7597:
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

jr_019_75A1:
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
    sbc l
    ld e, h
    jr nz, jr_019_75C8

    ret


    ld e, l
    jr nc, jr_019_75CC

    inc sp
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    db $10
    inc d
    inc sp
    ld e, h
    db $10
    inc d
    ret


    ld e, l
    jr nc, jr_019_75DC

jr_019_75C8:
    or l
    ld e, l
    jr nc, jr_019_75E0

jr_019_75CC:
    ret


    ld e, l
    jr nc, jr_019_75D0

jr_019_75D0:
    ld h, l
    inc b
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]
    add hl, de
    ld c, c
    ld a, c
    ld h, l
    dec b

jr_019_75DC:
    dec d
    inc d
    sbc l
    ld e, h

jr_019_75E0:
    ld b, b
    nop
    inc c
    inc b
    ld e, c
    ld bc, $1415
    and c
    ld e, l
    jr nz, jr_019_7600

    ld a, l
    ld e, h
    jr nz, jr_019_7604

    ret


    ld e, l
    nop
    nop
    ld h, l
    add hl, bc
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]
    add hl, de
    ld hl, sp+$79
    ld h, l
    dec bc

jr_019_7600:
    dec d
    inc d
    ld a, l
    ld e, h

jr_019_7604:
    jr nc, jr_019_761A

    ld e, l
    ld e, h
    jr nz, jr_019_760A

jr_019_760A:
    ld e, c
    ld [bc], a
    dec d
    inc d
    ld a, l
    ld e, h
    inc a
    nop
    add hl, de
    ld b, l
    dec d
    dec d
    ld [de], a
    ld [hl], l
    jr nz, jr_019_762F

jr_019_761A:
    ld b, h
    ld [hl], l
    jr nz, jr_019_7633

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_7637

    ld b, h
    ld [hl], l
    jr nz, jr_019_763B

    ld c, [hl]
    ld [hl], l
    jr nz, jr_019_763F

    inc e
    ld [hl], l
    jr nz, jr_019_762E

jr_019_762E:
    ld e, [hl]

jr_019_762F:
    add hl, de
    adc a
    ld a, b
    ld h, l

jr_019_7633:
    ld bc, $1515
    cp b

jr_019_7637:
    ld [hl], h
    jr nz, jr_019_764F

    ld c, [hl]

jr_019_763B:
    ld [hl], l
    jr nc, jr_019_7653

    ld b, h

jr_019_763F:
    ld [hl], l
    jr nc, jr_019_7657

    ld c, [hl]
    ld [hl], l
    jr nc, jr_019_7646

jr_019_7646:
    ld e, a
    nop
    ld [bc], a
    inc d
    dec d
    inc e
    ld [hl], l
    ld e, [hl]
    add hl, de

jr_019_764F:
    ld sp, hl
    ld a, b
    ld h, l
    inc bc

jr_019_7653:
    dec d
    dec d
    sbc b
    ld [hl], h

jr_019_7657:
    db $10
    dec d
    ld c, [hl]
    ld [hl], l
    jr nc, jr_019_7672

    ld b, h
    ld [hl], l
    jr nc, jr_019_7676

    ld c, [hl]
    ld [hl], l
    jr nc, jr_019_7665

jr_019_7665:
    ld h, e
    ld bc, $1514
    jr nc, jr_019_76E0

    ld e, [hl]
    add hl, de
    ld h, a
    ld a, c
    ld h, l
    rlca
    ld e, [hl]

jr_019_7672:
    add hl, de
    or c
    ld a, c
    dec d

jr_019_7676:
    dec d
    xor b
    ld [hl], h
    db $10
    dec d
    adc b
    ld [hl], h
    jr nz, @+$17

    jr nc, jr_019_76F6

    nop
    nop
    ld e, a
    ld bc, $4303
    db $10
    dec d
    dec d
    xor b
    ld [hl], h
    jr nc, jr_019_76A3

    ld a, [hl-]
    ld [hl], l
    ld b, $15
    ld [$0675], sp
    dec d
    jr nc, @+$77

    ld b, $15
    inc e
    ld [hl], l
    ld b, $15
    ld b, h
    ld [hl], l
    ld b, $15
    ld [de], a

jr_019_76A3:
    ld [hl], l
    ld b, $15
    ld c, [hl]
    ld [hl], l
    ld b, $15
    ld h, $75
    ld b, $15
    xor b
    ld [hl], h
    db $10
    dec d
    ld a, [hl-]
    ld [hl], l
    ld b, $15
    ld [$0675], sp
    dec d
    jr nc, jr_019_7731

    ld b, $15
    inc e
    ld [hl], l
    ld b, $15
    ld b, h
    ld [hl], l
    ld b, $15
    ld [de], a
    ld [hl], l
    ld b, $15
    ld c, [hl]
    ld [hl], l
    ld b, $15
    ld h, $75
    ld b, $00
    ld h, e
    ld [bc], a
    inc d
    dec d
    jr nc, jr_019_774D

    ld e, [hl]
    add hl, de
    jr nz, jr_019_7756

    ld h, l
    inc c
    ld b, e
    db $10

jr_019_76E0:
    ld e, [hl]
    add hl, de
    inc sp
    ld a, d
    dec d
    dec d
    ld a, [hl-]
    ld [hl], l
    ld b, $15
    ld [$0675], sp
    dec d
    jr nc, jr_019_7765

    ld b, $15
    inc e
    ld [hl], l
    ld b, $15

jr_019_76F6:
    ld b, h
    ld [hl], l
    ld b, $15
    ld [de], a
    ld [hl], l
    ld b, $15
    ld c, [hl]
    ld [hl], l
    ld b, $15
    ld h, $75
    ld b, $15
    xor b
    ld [hl], h
    db $10
    dec d
    ld a, [hl-]
    ld [hl], l
    ld b, $15
    ld [$0675], sp
    dec d
    jr nc, @+$77

    ld b, $15
    inc e
    ld [hl], l
    ld b, $15
    ld b, h
    ld [hl], l
    ld b, $15
    ld [de], a
    ld [hl], l
    ld b, $15
    ld c, [hl]
    ld [hl], l
    ld b, $15
    ld h, $75
    ld b, $00
    ld e, a
    ld [bc], a
    ld [bc], a
    ld b, e
    jr nc, jr_019_7745

    dec d

jr_019_7731:
    jr nc, jr_019_77A8

    jr nc, @+$17

    ld a, [hl-]
    ld [hl], l
    jr nc, jr_019_7739

jr_019_7739:
    ld e, [hl]
    add hl, de
    ld c, l
    ld a, d
    ld h, l
    ld c, $43
    jr nz, jr_019_7757

    dec d
    cp b
    ld [hl], h

jr_019_7745:
    jr nc, jr_019_775C

    adc b
    ld [hl], h
    jr nc, jr_019_7760

    cp b
    ld [hl], h

jr_019_774D:
    jr nz, @+$17

    adc b
    ld [hl], h
    db $10
    dec d
    ld [de], a
    ld [hl], l
    nop

jr_019_7756:
    dec d

jr_019_7757:
    cp b
    ld [hl], h
    ld b, b
    nop
    ld e, a

jr_019_775C:
    inc bc
    ld [bc], a
    ld [hl], d
    rrca

jr_019_7760:
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

jr_019_7765:
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
    db $10
    xor d
    ld a, d
    jr z, jr_019_779A

    and $7A
    jr nz, jr_019_779E

    call c, $207A
    db $10
    and $7A
    jr nz, jr_019_77A6

    call c, $207A
    db $10

jr_019_779A:
    and $7A
    jr nz, jr_019_77AE

jr_019_779E:
    cp [hl]
    ld a, d
    jr nz, jr_019_77A2

jr_019_77A2:
    ld h, l
    ld bc, $195E

jr_019_77A6:
    pop de
    ld a, b

jr_019_77A8:
    dec d
    db $10
    ld b, b
    ld a, d
    db $10
    db $10

jr_019_77AE:
    cp [hl]
    ld a, d
    jr nc, jr_019_77C2

    call c, $207A
    db $10
    or h
    ld a, d
    nop
    nop
    ld h, l
    inc bc
    inc d
    db $10
    cp [hl]
    ld a, d
    ld e, [hl]
    add hl, de

jr_019_77C2:
    dec l
    ld a, c
    ld h, l
    inc b
    inc d
    db $10
    call c, $657A
    ld b, $14
    db $10
    cp [hl]
    ld a, d
    ld e, [hl]
    add hl, de
    and c
    ld a, c
    ld e, a
    ld bc, $1503
    db $10
    ld d, b
    ld a, d
    jr nz, jr_019_77ED

    jr nz, jr_019_7859

    db $10
    db $10
    jp nc, $067A

    db $10
    and b
    ld a, d
    ld b, $10
    ret z

    ld a, d
    ld b, $10

jr_019_77ED:
    or h
    ld a, d
    ld b, $10
    call c, $067A
    db $10
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
    db $10
    xor d
    ld a, d
    ld b, $10
    and $7A
    jr nz, jr_019_782D

    or h
    ld a, d
    nop
    nop
    ld e, [hl]
    add hl, de
    rst $00
    ld a, c
    ld h, l
    inc c
    dec d
    db $10
    ld b, b
    ld a, d
    jr jr_019_783D

jr_019_782D:
    ld d, b
    ld a, d
    db $10
    db $10
    jp nc, $067A

    db $10
    and b
    ld a, d
    ld b, $10
    ret z

    ld a, d
    ld b, $10

jr_019_783D:
    or h
    ld a, d
    ld b, $10
    call c, $067A
    db $10
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

jr_019_7859:
    ret z

    ld a, d
    ld b, $10
    or h
    ld a, d
    ld b, $10
    call c, $067A
    db $10
    xor d
    ld a, d
    ld b, $10
    and $7A
    jr nz, jr_019_787D

    or h
    ld a, d
    nop
    nop
    ld h, l
    ld c, $5E
    add hl, de
    ld l, h
    ld a, d
    dec d
    db $10
    ld d, b
    ld a, d
    jr nz, jr_019_788D

jr_019_787D:
    jr nz, jr_019_78F9

    jr nc, jr_019_7891

    ld d, b
    ld a, d
    db $10
    db $10
    jr nz, jr_019_7901

    db $10
    db $10
    ld d, b
    ld a, d
    inc a
    nop

jr_019_788D:
    add hl, de
    ld b, l
    and d
    ld c, b

jr_019_7891:
    ld e, a
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_7901

    ld l, [hl]
    jr nz, jr_019_78FE

    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_78F0

    jr nz, jr_019_791C

    ld h, c
    ld a, c
    jr nz, jr_019_7921

    ld l, b
    ld h, l
    cp $63
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_019_7929

    ld l, c
    ld h, l
    ld h, e
    ld h, l
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_019_7931

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_019_792F

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    xor b
    ld c, a
    and [hl]
    ld c, [hl]
    ld l, a
    inc l
    jr nz, jr_019_7925

    ld l, a
    ld [hl], d
    ld h, a
    ld hl, $4920
    jr nz, jr_019_7955

    ld h, c
    ld [hl], a
    rst $38
    ld l, c
    ld [hl], h
    jr nz, @+$71

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_019_7956

    ld h, l
    ld [hl], d

jr_019_78F0:
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l

jr_019_78F9:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c

jr_019_78FE:
    jr nz, jr_019_7961

    ld l, h

jr_019_7901:
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    rst $38
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_019_7983

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    cp $69
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$70

    ld l, a

jr_019_791C:
    ld [hl], h
    ld l, $2E
    ld l, $FF

jr_019_7921:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_019_7925:
    ld h, l
    ld hl, $FDFE

jr_019_7929:
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    xor b

jr_019_792F:
    ld c, a
    and [hl]

jr_019_7931:
    ld b, c
    ld b, c
    ld b, c
    ld d, d
    ld d, d
    ld b, a
    inc l
    jr nz, jr_019_799D

    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_019_79BB

    ld [hl], l

jr_019_7955:
    ld a, c

jr_019_7956:
    ld [hl], e
    jr nz, @+$63

    ld [hl], d
    ld h, l
    rst $38
    ld h, l
    halt
    ld l, c
    ld l, h
    ccf

jr_019_7961:
    cp $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_019_79E5

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_79DD

    ld l, c
    ld [hl], d
    ld l, h
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_79F0

    ld l, c
    ld h, e
    ld l, e

jr_019_7983:
    ld h, l
    ld h, h
    jr nz, jr_019_79FC

    ld [hl], b
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_019_79F1

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    rst $38
    ld [hl], b
    ld l, c
    ld h, l
    ld h, e
    ld h, l
    ld hl, $FDFE

jr_019_799D:
    and c
    ld e, e
    ld b, $45
    and d
    xor b
    ld c, a
    and [hl]
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_019_7A2F

jr_019_79BB:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4503
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_7A39

    ld h, h
    ld l, c
    ld l, a
    ld [hl], h
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, h
    ld l, b

jr_019_79DD:
    ld l, c
    ld [hl], e
    jr nz, jr_019_7A4A

    ld [hl], e
    jr nz, jr_019_7A45

    ld l, h

jr_019_79E5:
    ld l, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7A53

    ld h, c
    ld [hl], l
    ld l, h

jr_019_79F0:
    ld [hl], h

jr_019_79F1:
    ld hl, $FDFE
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]

jr_019_79FC:
    ld d, h
    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_019_7A68

    ld l, a
    ld [hl], d
    jr nz, jr_019_7A73

    ld h, l
    jr nz, jr_019_7A7D

    ld l, a
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_019_7A7F

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld h, c
    jr nz, jr_019_7A7E

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, e
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_7A92

    ld h, l
    ld [hl], d
    ld hl, $FDFE

jr_019_7A2F:
    and c
    ld e, e
    inc c
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, d
    ld h, l

jr_019_7A39:
    ld [hl], h
    inc l
    jr nz, jr_019_7AB6

    ld l, a
    ld [hl], l
    jr nz, jr_019_7AAA

    ld h, h
    ld l, c
    ld l, a
    ld [hl], h

jr_019_7A45:
    ld hl, $FDFE
    and c
    ld e, a

jr_019_7A4A:
    ld [bc], a
    ld [bc], a
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a
    ld l, b

jr_019_7A53:
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_019_7ACF

    ld h, c
    ld a, c
    jr nz, jr_019_7AC0

    ld l, c
    ld h, h
    rst $38
    ld [hl], e
    ld l, b
    ld h, l
    jr nz, jr_019_7ACB

    ld l, a
    ccf
    cp $FD

jr_019_7A68:
    and c
    ld e, e
    ld c, $45
    and d
    xor b
    ld c, a
    and [hl]
    ld c, c
    jr nz, jr_019_7AE7

jr_019_7A73:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_019_7AEC

    ld l, b
    ld h, l
    rst $38
    ld [hl], a

jr_019_7A7D:
    ld h, l

jr_019_7A7E:
    ld l, [hl]

jr_019_7A7F:
    ld [hl], h
    jr nz, jr_019_7AF6

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_7AFE

    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, a
    inc bc
    ld [bc], a
    ld b, l
    rst $38

jr_019_7A92:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AAA:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AB6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AC0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7ACB:
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7ACF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AE7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AEC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AF6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7AFE:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
