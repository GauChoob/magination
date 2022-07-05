; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

Call_022_4000:
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    dec b
    ld [bc], a
    add hl, bc
    ld b, $09
    ld b, $19
    ld b, $10
    nop
    jr nc, jr_022_4014

jr_022_4014:
    jr nc, jr_022_4016

jr_022_4016:
    jr z, jr_022_4028

    jr z, @+$12

    jr z, @+$12

    inc e
    ld [$0814], sp
    inc b
    nop
    inc c
    nop
    ld c, $00
    ld a, [de]
    inc b

jr_022_4028:
    ld de, $150E
    ld c, $16
    rrca
    rla
    ld c, $00
    nop
    jr nz, jr_022_4034

jr_022_4034:
    ld h, b
    nop
    ldh [rP1], a
    ret nc

    jr nz, jr_022_404B

    ldh [$50], a
    ldh [rSVBK], a
    ldh [$08], a
    nop
    jr jr_022_4044

jr_022_4044:
    inc d
    ld [$0814], sp
    inc b
    jr jr_022_4075

jr_022_404B:
    inc e
    ld a, [hl+]

jr_022_404D:
    inc e
    ld l, $1C
    nop
    nop
    ld b, b
    nop
    ret nc

    nop
    sub b
    ld b, b
    ret c

    nop
    sub b
    ld c, b
    call nc, $9408
    ld [$0002], sp
    ld b, $00
    dec c
    ld [bc], a
    add hl, bc
    ld b, $11
    ld c, $1B
    inc c
    dec de
    inc c
    ld a, [de]
    inc c
    nop
    nop
    nop
    nop
    ld [bc], a

jr_022_4075:
    nop
    ld b, $00
    ld c, $00
    inc d
    ld [$102C], sp
    jr c, jr_022_4080

jr_022_4080:
    ld b, $00
    rra
    nop
    ld [hl], $08
    ld l, h
    db $10
    call z, $9830
    ld h, b
    cp b
    ld b, b
    pop de
    ld h, b
    ld c, $00
    inc e
    nop
    inc a
    nop
    jr c, jr_022_4098

jr_022_4098:
    ld a, b
    nop
    ret nc

    jr nz, jr_022_404D

    ld b, b
    and b
    ret nz

    inc b
    nop
    jr jr_022_40A4

jr_022_40A4:
    ld sp, $1200
    ld hl, $0325
    dec bc
    ld b, $0B
    inc b
    ld d, $0C
    inc a
    nop
    ret z

    jr nc, jr_022_40E5

    ret nz

    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    inc bc
    nop
    rrca
    nop
    nop
    nop
    rlca
    nop
    ld c, $01
    ld e, $03
    jr c, jr_022_40D1

    dec [hl]
    ld c, $6B
    inc e
    ld a, e
    inc e
    db $FC

jr_022_40D1:
    nop
    cp b
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    add [hl]
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_40E5:
    nop
    nop
    nop
    jr nz, jr_022_40EA

jr_022_40EA:
    ld h, b
    nop
    ldh a, [rP1]
    or b
    ld b, b
    call nc, $B4E8
    ret z

    and h
    ret c

    ld l, h
    sbc b
    ld c, h
    sbc b
    ld d, h
    adc b
    ld d, h
    adc b
    ld b, h
    adc b
    dec d
    ld c, $15
    ld c, $15
    ld c, $17
    ld c, $16
    rrca
    inc de
    rrca
    dec de
    rlca
    dec bc
    rlca
    inc c
    nop
    inc c
    nop
    inc c
    nop
    add h
    nop
    call nz, Call_022_4000
    add b
    ld h, b
    add b
    and b
    ret nz

    dec d
    ld c, $16
    inc c
    jr jr_022_4132

    inc d
    ld [$0814], sp
    jr jr_022_412C

jr_022_412C:
    jr jr_022_412E

jr_022_412E:
    ld [$F000], sp
    ld h, b

jr_022_4132:
    or b
    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    ld h, b
    nop
    jr nz, jr_022_413C

jr_022_413C:
    nop
    nop
    nop
    nop
    ld l, $1C
    ld [hl], $1C
    ld h, $1C
    ld l, $1C
    ld a, [de]
    inc c
    inc d
    ld [$0018], sp
    ld [$3400], sp
    jr jr_022_4187

    jr jr_022_4179

    jr jr_022_417B

    jr jr_022_418D

    jr jr_022_417F

    jr jr_022_4191

    ld [$0018], sp
    ld b, $18
    inc d
    jr @+$06

    jr jr_022_417F

    db $10
    ld [$1810], sp
    nop
    stop
    nop
    nop
    ld d, b
    jr nz, jr_022_41C3

    jr nz, @+$32

    ld h, b
    db $10

jr_022_4177:
    ld h, b
    ld d, b

jr_022_4179:
    jr nz, jr_022_41EB

jr_022_417B:
    jr nz, jr_022_41DD

    nop
    ld b, b

jr_022_417F:
    nop
    ld d, c
    jr nz, @+$6B

    jr nc, @+$67

    jr c, jr_022_41CC

jr_022_4187:
    jr c, jr_022_41DE

    jr z, jr_022_41F8

    nop
    ld l, c

jr_022_418D:
    nop
    ld b, c
    nop
    and b

jr_022_4191:
    ret nz

    nop
    ret nz

    ret nz

    add b
    add b

jr_022_4197:
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    inc e
    nop

jr_022_41A2:
    jr z, jr_022_41B4

jr_022_41A4:
    jr c, jr_022_41A6

jr_022_41A6:
    jr nc, jr_022_41A8

jr_022_41A8:
    ld sp, $2100
    nop
    ld b, d
    nop
    nop
    nop
    ld d, $08
    inc a
    db $10

jr_022_41B4:
    ld e, b
    jr nz, jr_022_4197

    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld e, a
    jr c, jr_022_4219

jr_022_41C3:
    jr c, jr_022_4233

    jr nc, jr_022_4233

    jr nc, @+$5E

    jr nz, jr_022_4244

    nop

jr_022_41CC:
    ld sp, $2100
    nop
    inc e
    nop
    jr c, jr_022_41D4

jr_022_41D4:
    ld d, b
    jr nz, jr_022_4177

    ld b, b
    ret nz

    nop
    add b
    nop
    add b

jr_022_41DD:
    nop

jr_022_41DE:
    nop
    nop
    jr c, jr_022_41A2

    jr c, jr_022_41A4

    cp b
    ret nz

    ld e, b
    ldh [$D8], a
    ldh [$58], a

jr_022_41EB:
    ldh [$D8], a
    ldh [$D8], a
    ldh [$CC], a
    nop
    adc h
    nop
    adc b
    nop
    adc b
    nop

jr_022_41F8:
    ld [$0000], sp
    nop
    jr nz, jr_022_41FE

jr_022_41FE:
    jr nz, jr_022_4200

jr_022_4200:
    add hl, bc
    rlca
    dec b
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $C0B0
    ret nc

    ldh [$D8], a
    ldh [$D8], a
    ldh [$EC], a

jr_022_4219:
    ldh a, [$EC]

jr_022_421B:
    ldh a, [$EC]
    ldh a, [$D4]
    add sp, $38
    nop
    rla
    ld [$070E], sp
    add l
    inc bc
    ld a, b
    rlca
    ld e, e
    inc a
    inc l
    jr jr_022_424B

    nop
    nop
    nop
    ld e, a

jr_022_4233:
    jr nz, jr_022_421B

    inc bc
    inc bc
    nop
    nop
    nop
    ld a, h
    nop
    inc sp
    inc e
    ld c, $00
    nop
    nop
    inc bc
    nop

jr_022_4244:
    ld b, $03
    inc bc
    nop
    nop
    nop
    ld a, h

jr_022_424B:
    nop
    inc sp
    inc e
    ld c, $00
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3E

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, h
    jr nc, @-$66

    ld h, b
    ld h, b
    add b
    ret nz

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
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld b, $01
    stop
    ld d, b
    nop
    ret c

    nop
    ret c

    nop
    ret c

    nop
    call c, $CC00
    nop
    ld c, [hl]
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    sbc b
    nop
    sbc h
    nop
    sbc h
    nop
    sub h
    ld [$0000], sp
    inc b
    nop
    inc c
    nop

jr_022_42A6:
    inc c
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    jr jr_022_42BC

jr_022_42BC:
    jr jr_022_42BE

jr_022_42BE:
    inc l
    stop

jr_022_42C1:
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    inc de
    inc c
    ld [hl], $18
    inc [hl]
    jr @+$6A

    jr nc, @+$52

    jr nz, jr_022_42D1

jr_022_42D1:
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    jr jr_022_42DC

jr_022_42DC:
    jr nz, jr_022_42DE

jr_022_42DE:
    nop
    nop
    ld e, b
    ldh [$38], a
    ret nz

    jr nc, jr_022_42A6

    and b
    ld b, b
    ldh [rP1], a
    ld h, b
    nop
    jr nc, jr_022_42EE

jr_022_42EE:
    ld [$3000], sp
    nop
    jr nc, jr_022_4304

    jr z, jr_022_4306

    jr jr_022_42F8

jr_022_42F8:
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_4302

jr_022_4302:
    jr nc, jr_022_4304

jr_022_4304:
    ld [hl], b
    nop

jr_022_4306:
    ld d, b
    jr nz, jr_022_4351

    jr nc, @+$6A

    jr nc, jr_022_42C1

    ld a, b
    or h
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    jr nc, jr_022_431C

jr_022_431C:
    jr nc, jr_022_431E

jr_022_431E:
    jr z, jr_022_4330

    ld b, b
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp b
    ld b, b
    sbc b
    ld h, b
    sbc b
    ld h, b
    adc b
    ld [hl], b

jr_022_4330:
    nop
    nop
    nop
    nop
    stop
    jr nc, jr_022_4338

jr_022_4338:
    jr nc, jr_022_433A

jr_022_433A:
    jr c, jr_022_433C

jr_022_433C:
    jr z, jr_022_434E

    jr z, jr_022_4350

    nop
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    jr nc, jr_022_434C

jr_022_434C:
    jr nc, jr_022_434E

jr_022_434E:
    jr c, jr_022_4350

jr_022_4350:
    inc b

jr_022_4351:
    inc bc
    ld b, $03
    dec b
    inc bc
    dec h
    inc bc
    scf
    inc bc
    scf
    inc bc
    ld d, l
    inc hl
    ld h, d
    ld bc, $804E
    ld h, [hl]
    add b
    ld h, d
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ldh a, [$80]
    or b
    ret nz

    sub [hl]
    ld [$048A], sp
    ld a, [bc]
    inc b
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld d, $0C
    ld [hl-], a
    inc c
    inc sp
    inc c
    dec hl
    inc e
    dec l
    ld e, $00
    nop
    ld [bc], a
    nop
    ld b, $00
    dec bc
    inc b
    rla
    inc c
    rla
    ld [$192E], sp
    ld l, $19
    ld h, b
    nop
    ld h, e
    nop
    ld b, h
    inc bc
    ld c, a
    inc b
    ld d, $08
    jr jr_022_43AC

jr_022_43AC:
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $FC
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
    ld [bc], a
    nop
    inc c
    nop
    jr z, jr_022_43D6

    ld [hl-], a
    nop
    ld b, h
    jr nz, @+$4A

    nop
    add b
    nop
    nop
    nop
    ld sp, $3100
    nop
    ld [hl], c
    nop

jr_022_43D6:
    ld d, d
    ld hl, $2152
    ld d, d
    ld hl, $2152
    ld d, d
    ld hl, $0102
    ld [bc], a
    ld bc, $0102
    ld b, $01
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    sub b
    ld h, b
    ld c, b
    ldh a, [$B4]
    ld a, b
    or h
    ld a, b
    or h
    ld a, b
    ret c

    jr nc, jr_022_4451

    jr nc, jr_022_445B

    jr nz, jr_022_446D

    nop
    nop
    nop

Call_022_4410:
    jr z, jr_022_4422

    jr jr_022_4444

    jr @+$32

    ld [$2930], sp
    db $10
    add hl, sp
    nop
    inc hl
    db $10
    ld [hl-], a
    ld bc, $7088

jr_022_4422:
    xor h
    ld [hl], b
    add h
    ld a, b
    and h
    ld a, b
    and h
    ld a, b
    inc [hl]
    ld hl, sp+$34
    ld hl, sp+$74
    ld hl, sp+$28
    db $10
    inc h
    jr jr_022_4459

    jr jr_022_445B

    jr jr_022_4465

    jr jr_022_445F

    jr jr_022_4467

    inc e
    ld l, $1C
    jr z, @+$12

    ld l, h
    db $10

jr_022_4444:
    ld b, h
    jr c, jr_022_449B

    jr c, jr_022_449D

    jr c, jr_022_449F

    jr c, jr_022_44A1

    jr c, @+$26

    jr jr_022_44B3

jr_022_4451:
    ld bc, $0162
    ld d, c
    jr nz, jr_022_44A8

    jr nz, jr_022_44C2

jr_022_4459:
    jr nc, jr_022_44A4

jr_022_445B:
    jr nc, @+$6B

    jr nc, jr_022_44C9

jr_022_445F:
    ld sp, $C0B8
    xor b
    ret nc

    ld e, h

jr_022_4465:
    ldh [$0C], a

jr_022_4467:
    ldh a, [rHDMA4]
    add sp, $4C
    ldh a, [$5C]

jr_022_446D:
    ldh [$8C], a
    ldh a, [$2E]
    ld de, $132D
    dec [hl]
    inc bc
    dec h
    inc bc
    dec h
    inc bc

jr_022_447A:
    dec h
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    jp z, $DAFC

    db $FC
    or $F8
    and $F8
    db $E4
    ld hl, sp-$3C
    ld hl, sp-$34
    ld hl, sp-$34
    ld hl, sp+$2D
    ld e, $2D
    ld e, $15
    ld c, $15
    ld c, $15
    ld c, $15

jr_022_449B:
    ld c, $15

jr_022_449D:
    ld c, $17

jr_022_449F:
    inc c
    nop

jr_022_44A1:
    nop
    nop
    nop

jr_022_44A4:
    nop
    nop
    rlca
    nop

jr_022_44A8:
    inc c
    inc bc
    db $10
    rrca
    dec [hl]
    ld c, $2A
    inc e
    nop
    nop
    nop

jr_022_44B3:
    nop
    nop
    nop
    ldh [rP1], a
    jr c, jr_022_447A

    db $FC
    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_022_44C2:
    stop
    ld hl, $0200
    nop
    inc c

jr_022_44C9:
    nop
    inc d
    ld [$1028], sp
    ld l, b
    jr nc, jr_022_4523

    ld hl, $2152
    ld c, d
    ld sp, $3049
    ld e, c
    jr nc, @+$5A

    jr nc, jr_022_4521

    jr c, @+$56

    jr c, jr_022_44E5

    inc bc
    dec b
    inc bc
    inc b

jr_022_44E5:
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $00
    ld b, $00
    ld l, b
    ldh a, [rBCPS]
    ldh a, [rBCPS]
    ldh a, [$D0]
    ldh [$D0], a
    ldh [$A0], a
    ret nz

    and b
    ret nz

    and h
    ret nz

    ld b, $00
    ld e, $00
    inc [hl]
    jr jr_022_452F

    db $10
    ld d, b
    jr nz, jr_022_456B

    nop
    ld b, b
    nop
    nop
    nop
    ld [de], a
    ld bc, $0304
    inc b
    inc bc
    add hl, bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    rla
    rrca
    ld d, $0F
    ld h, h

jr_022_4521:
    ld hl, sp-$3C

jr_022_4523:
    ld hl, sp-$1C
    ld hl, sp-$18
    ldh a, [$E8]
    ldh a, [$D0]
    ldh [$D0], a
    ldh [$D0], a

jr_022_452F:
    ldh [$2E], a
    inc e
    ld l, $1C
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld [hl], $0C
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld a, [bc]
    inc b
    inc l
    jr jr_022_4597

    jr c, jr_022_4599

    jr c, @-$56

    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    adc b
    ld [hl], b
    xor b
    ld [hl], b
    ld b, d
    ld sp, $2153
    ld d, l
    inc hl
    ld d, l
    inc hl
    dec h
    inc bc
    dec h
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    sbc h
    ldh [$BC], a
    ret nz

    cp h
    ret nz

    xor h
    ret nc

    cp h
    ret nz

    xor h

jr_022_456B:
    ret nc

    xor h
    ret nc

    ld c, h
    or b
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    ld bc, $0000
    nop
    call z, $CCF8
    ld hl, sp-$14
    ld hl, sp-$04
    ld hl, sp+$7C
    ld hl, sp+$74
    ld hl, sp+$34
    ld hl, sp-$4C
    ld a, b
    rla
    inc c
    rla
    inc c
    inc sp
    inc c
    scf

jr_022_4597:
    inc c
    ld [hl-], a

jr_022_4599:
    inc c
    ld [hl], $0C
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld [hl], h
    jr c, jr_022_45FB

    jr nz, jr_022_45F5

    jr nz, @+$63

    nop
    ld b, e
    ld bc, $0205
    ld b, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    or b

jr_022_45B7:
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    sub b
    ld h, b
    and c
    ret nz

    ld b, d
    add b
    ld b, [hl]
    add b
    add [hl]
    nop
    adc d
    inc b
    adc h
    nop
    jr jr_022_45D0

jr_022_45D0:
    inc h
    jr jr_022_45F7

    jr jr_022_45F9

    jr jr_022_45EB

    ld [$0814], sp
    jr jr_022_45DC

jr_022_45DC:
    jr jr_022_45DE

jr_022_45DE:
    ld [$0600], sp
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_45EB:
    nop
    nop
    nop
    nop
    nop
    ld c, h
    add b
    ld c, d
    add h
    ld c, [hl]

jr_022_45F5:
    add h
    and [hl]

jr_022_45F7:
    ret nz

    inc h

jr_022_45F9:
    ret nz

    sub b

jr_022_45FB:
    ld h, b
    ld d, b
    jr nz, jr_022_464F

    jr nz, jr_022_45B7

    ld a, b
    or [hl]
    ld a, b
    xor [hl]

jr_022_4605:
    ld [hl], b
    ld e, [hl]
    ldh [$38], a
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
    nop
    dec l
    ld e, $2A
    inc e
    ld [hl+], a
    inc e
    inc h
    jr jr_022_4631

    nop
    stop
    nop
    nop
    nop
    nop
    ld e, b
    ldh [$A8], a
    ld [hl], b
    ld c, b
    jr nc, jr_022_464B

    jr jr_022_464F

    jr jr_022_4651

    jr jr_022_4657

    inc e
    ld a, [hl+]
    inc e
    ld a, [bc]

jr_022_4631:
    inc b
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld c, b
    jr nc, jr_022_466B

    db $10
    jr z, jr_022_4656

    jr nc, jr_022_4648

jr_022_4648:
    stop
    nop

jr_022_464B:
    nop
    nop
    nop
    nop

jr_022_464F:
    nop
    dec b

jr_022_4651:
    inc bc
    dec b
    inc bc
    ld a, [bc]
    rlca

jr_022_4656:
    add hl, bc

jr_022_4657:
    ld b, $09
    ld b, $09
    ld b, $12
    inc c
    ld l, $10
    ld c, b
    or b
    ld l, b
    or b
    sbc b
    ld h, b
    sbc b
    ld h, b
    ret c

    jr nz, jr_022_46C3

jr_022_466B:
    jr nz, jr_022_4605

    ld h, b
    sbc b
    ld h, b
    nop
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    or h
    ld a, b
    or h
    ld a, b
    ld d, h
    jr c, jr_022_46DB

    jr c, jr_022_46DD

    jr c, @+$26

    jr jr_022_46B1

    jr @+$26

    jr jr_022_46A3

    inc c
    ld [de], a
    inc c
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld a, [hl-]
    inc e
    ld d, [hl]
    jr c, @+$56

jr_022_469F:
    jr c, jr_022_46C0

    nop
    add hl, hl

jr_022_46A3:
    ld e, $56
    jr c, jr_022_46FF

    jr nz, jr_022_470B

    ld bc, $0245
    dec c
    ld [bc], a
    jr @+$09

    ret nz

jr_022_46B1:
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    cp $00
    ldh [rP1], a
    nop
    nop
    db $FC
    nop

jr_022_46C0:
    jr nc, @+$12

    ld d, b

jr_022_46C3:
    jr nz, jr_022_4725

    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ldh [$58], a
    ldh [$B8], a
    ret nz

    ld [hl], b
    add b
    ldh [rP1], a
    add b

jr_022_46DB:
    nop
    nop

jr_022_46DD:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_46E8

jr_022_46E8:
    jr nz, jr_022_46EA

jr_022_46EA:
    jr nz, jr_022_46EC

jr_022_46EC:
    jr nc, jr_022_46EE

jr_022_46EE:
    ld sp, $3000
    nop
    jr nc, jr_022_46F4

jr_022_46F4:
    jr nz, jr_022_46F6

jr_022_46F6:
    jr nz, jr_022_46F8

jr_022_46F8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_46FF:
    nop
    ld e, h
    jr nz, jr_022_469F

    ld h, b
    cp h
    ld b, b
    or h
    ld c, b
    ld l, h
    ret nc

    ld c, d

jr_022_470B:
    db $F4
    ld e, d
    db $E4
    jp nc, Jump_022_79EC

    nop
    ld bc, $0200
    ld bc, $0306
    add hl, bc
    ld b, $17
    ld [$003F], sp
    nop
    nop
    dec [hl]
    ld c, $2F
    jr @+$4E

jr_022_4725:
    jr nc, jr_022_477F

    jr nz, @+$52

    jr nz, jr_022_478B

    nop
    ld b, c
    nop
    ld bc, $F800
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld e, b
    jr nz, jr_022_46DB

    ld b, b
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld a, [bc]
    inc b
    ld d, $0C
    inc d
    ld [$182C], sp
    inc l
    jr jr_022_4751

jr_022_4751:
    nop
    nop
    nop
    rrca
    nop
    add hl, sp
    ld c, $13
    inc a
    ld c, [hl]
    jr nc, jr_022_4795

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_022_4782

    jr z, jr_022_4784

    jr nc, jr_022_4776

jr_022_4776:
    jr nz, jr_022_4778

jr_022_4778:
    jr nz, jr_022_477A

jr_022_477A:
    jr nz, jr_022_477C

jr_022_477C:
    nop
    nop
    nop

jr_022_477F:
    nop
    nop
    nop

jr_022_4782:
    inc a
    nop

jr_022_4784:
    ld d, e
    inc a
    ld a, [hl]
    nop
    nop
    nop
    nop

jr_022_478B:
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rra
    rra
    rrca

jr_022_4795:
    rrca
    adc a
    rrca
    rst $00
    rlca
    jp $C103


    ld bc, $0000
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    sbc a
    rra
    sbc a
    rra
    rst $08
    rrca
    rst $08
    rrca
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rla
    add c
    ld bc, $0787
    sbc a
    rra
    sbc a
    rra
    cp a
    ccf
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    rst $08
    rrca
    ld l, a
    rrca
    cpl
    rrca
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    cpl
    rrca
    cpl
    rrca
    daa
    rlca
    ld [hl], e
    inc bc
    ld e, c
    ld bc, $007C
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc b
    rlca
    jr jr_022_4835

    jr nc, jr_022_4857

    ld h, c
    ld a, [hl]
    add e
    db $FC
    ld b, l
    ld a, [$F00F]
    db $10
    db $10
    xor a
    cp a
    ld b, b
    rst $38
    and e
    call c, $F38C
    halt
    adc c
    scf
    ret z

    cp a
    ld b, b
    reti


    reti


    daa
    rst $38
    inc c

jr_022_4835:
    rst $38
    ld c, b
    cp a
    and $19
    ld d, h
    xor e
    push af
    ld a, [bc]
    ld [hl], a
    adc b
    ld [bc], a
    inc bc
    inc e
    rra
    ld de, $281E
    ccf
    ld hl, $433E
    ld a, h
    add h
    ei
    adc a
    ldh a, [$27]
    ret c

    rra
    ldh [$67], a
    sbc b
    dec sp

jr_022_4857:
    call nz, $20DF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop de
    cpl
    ld hl, $F2DF
    ld c, $EA
    ld d, $02
    cp $C2
    ld a, $F4
    inc c
    call nz, $F63C
    ld c, $A2
    ld e, [hl]
    call nz, $E43C
    inc e
    ld a, [c]
    ld c, $F2
    ld c, $EA
    ld d, $82
    ld a, [hl]
    cp $01

jr_022_4882:
    db $FD
    ld [bc], a
    rst $38
    nop
    db $FC
    inc bc
    cp $01
    ld a, [$EC05]
    inc de
    ret nz

    ccf
    ld [hl], e
    adc a
    add a
    ld a, a
    push bc
    dec a
    adc l
    ld a, l
    ld a, [de]
    ei
    dec a
    cp $15
    rst $30
    ld a, [hl+]
    xor $FF
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_022_4882

    inc h
    sbc b
    ld h, a
    inc d
    db $EB
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ei
    inc b
    cp a
    ld b, b
    or d
    ld c, l
    ld e, d
    and l
    ret nz

    ccf
    ld [bc], a
    db $FD
    nop
    rst $38
    call nc, Call_022_742B
    adc a
    sub e
    ld l, a
    ld b, c
    cp a
    ld b, $F9
    dec l
    di
    inc sp
    rst $38
    sbc a
    ld e, a
    ld l, $EE
    ld l, l
    db $ED
    rst $08
    rst $08
    jr jr_022_48F0

    or b
    or b
    and b
    and b
    or b
    or b
    jr nz, jr_022_4900

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_48F0:
    ld [hl], d
    ld [hl], e
    rlca
    rlca
    dec b
    rlca
    ld h, [hl]
    ld h, l
    or l
    or [hl]
    ld d, [hl]
    ld d, a
    dec de
    dec de
    cp c
    cp c

jr_022_4900:
    ret nz

    ccf
    ld l, h
    sub e
    sub e
    db $FC
    ret z

    rst $28
    ld e, h
    rst $18
    rst $10
    rst $10
    cp e
    cp e
    ld a, h
    ld a, h
    dec de
    db $E4
    and [hl]
    ld a, c
    ld e, l
    rst $38
    ld c, a
    rst $38
    push hl
    cp $BE
    cp a
    ld l, a
    ld l, a
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_4931:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0D11
    dec c
    and [hl]
    and [hl]
    sub h
    sub [hl]
    ld b, b
    ld e, d
    jr nz, jr_022_4931

    nop
    cp a
    ld [bc], a
    db $DD
    ld [de], a
    ld [de], a
    xor e
    xor e
    xor l

jr_022_4985:
    xor a
    sub b
    or l
    adc [hl]
    jp c, $F503

    ld h, $C8
    and [hl]
    ld c, b
    ld c, b
    ld c, b
    inc h
    inc h
    dec [hl]
    or l
    adc l
    db $DD
    jr z, jr_022_4985

    inc b
    ld l, [hl]
    ld b, d
    xor l
    adc e
    ld d, h
    ld e, $1E
    ld [bc], a
    rlca
    xor b
    xor e
    ld b, b
    ld b, c
    dec sp
    dec sp
    inc c
    dec e
    ld h, d
    ld l, l
    pop af
    cp $03
    nop
    ld bc, $0100
    nop
    jr nc, jr_022_49B8

jr_022_49B8:
    dec de
    nop
    xor a
    nop
    ld a, a
    nop
    rst $18
    nop
    xor [hl]
    ld d, c
    rst $18
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
    adc [hl]
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $FC
    nop
    ldh a, [rP1]
    cp $00
    inc d
    call c, $30C0
    ld b, $EE
    ret


    add hl, sp
    inc c
    adc h
    ld b, $76
    ld sp, $4CF9
    call c, $03FC
    ei
    inc b
    cp $01
    rst $38
    nop
    cp $01
    db $FD
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld b, $2E
    inc sp
    di
    sbc h
    ld a, h
    sub [hl]
    ld d, [hl]
    add hl, hl
    add hl, sp
    and $2E
    db $10
    ldh a, [$AE]
    ld a, [hl]
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
    jr nc, jr_022_4A3B

    ld l, e
    rla
    db $F4
    dec bc
    nop
    nop
    nop

Call_022_4A33:
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, b

jr_022_4A3B:
    add b
    adc [hl]
    ldh a, [rIE]
    nop
    ld bc, $0700
    nop
    dec c
    inc bc
    ld [de], a
    rrca
    dec l
    ld e, $6A
    dec e
    push de
    ld a, [hl-]
    ld l, c
    or $8F
    ld [hl], b
    ld b, e
    rst $38
    cp b
    rst $00
    ld h, a
    sbc b
    ret z

    ccf
    or a
    ld c, [hl]
    ret nz

    ccf
    ld a, a
    nop
    pop de
    ld l, $2E
    rst $38
    pop af
    rst $38
    adc [hl]
    ld [hl], c
    di
    inc c
    dec h
    sbc $D2
    rrca
    adc h
    inc bc
    ret nz

    nop
    ld h, b
    add b
    cp b
    ret nz

    call nc, $6CE0
    ldh a, [rPCM12]
    ld hl, sp-$65
    ld a, h
    and $1F
    sbc e
    db $E4
    scf
    call z, $3CCA
    ld a, [hl-]
    db $FC
    or $F8
    push af
    ld hl, sp-$5B
    ld hl, sp-$36
    ldh a, [$03]
    nop
    ld [bc], a
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
    ld [hl], c
    adc a
    sbc $21
    ld a, e
    inc b
    db $E4
    dec de

jr_022_4AA8:
    ld d, e
    inc a
    inc l
    rra
    daa
    rra
    inc sp
    rrca
    inc e
    ldh [$F8], a
    nop
    jr @-$1E

    jr z, jr_022_4AA8

    ld c, b
    ldh a, [$90]
    ldh [$E8], a
    db $10
    ld c, b
    ldh a, [rNR32]
    inc bc
    ld [hl], $09
    add hl, de
    ld b, $14
    rrca
    dec de
    rlca
    dec l
    inc bc
    ld l, $01
    dec de
    inc b
    call c, $90E0
    ldh [$30], a
    ret nz

    add sp, $10
    inc d
    ld hl, sp-$1E
    ld hl, sp+$34
    ld hl, sp+$6E
    ldh a, [rNR14]
    rrca
    rla
    rrca
    rla
    rrca
    inc sp
    rrca
    ld e, b
    rlca
    cpl
    db $10
    ld b, d
    dec a
    cp e
    ld a, h
    call nz, $0CF8
    ldh a, [$38]
    ret nz

    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    dec hl
    dec hl
    xor l
    xor a
    jr nc, jr_022_4B3D

    ld c, [hl]
    ld e, d
    inc hl
    scf
    call nc, $14FA
    ld a, d
    ld b, b
    ld b, b
    inc h
    inc h
    dec [hl]
    or l
    adc h
    call c, $EA22
    inc b
    ld l, h
    ld c, e
    xor a
    adc b
    ld e, [hl]
    sbc l
    ld a, [hl]
    adc $3F
    ld h, b
    rra
    scf
    ld [$001C], sp
    nop
    nop
    nop
    nop
    nop
    nop
    set 4, l
    xor d
    push de
    sbc a
    ldh a, [$2D]
    jp nc, $906F

    cp a
    ret nz

    rst $18

jr_022_4B3D:
    jr nz, @+$01

    nop
    ld d, e
    rst $20
    dec h
    sbc e
    xor c
    ld e, a
    ld [hl], h
    res 6, [hl]
    ld c, c
    cp l
    ld b, e
    ei
    inc b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld l, b
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $00
    nop
    add hl, sp
    add $85
    cp $FB
    db $FC
    ld b, $F9
    db $FD
    inc bc
    jp $2F3F


    rst $30
    nop
    nop
    ld a, b
    nop
    rst $00
    jr c, jr_022_4BAF

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
    nop
    dec bc
    nop
    sbc a
    ld bc, $07DF
    ld d, a
    adc a
    scf
    rst $08
    or a
    rst $08

jr_022_4B8E:
    scf
    rst $08
    nop
    nop
    ldh [rP1], a
    ld e, $E0
    db $E3
    db $FC
    ld sp, hl
    cp $FD
    cp $F9
    cp $F5
    cp $00
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    ccf
    ld d, a
    ccf
    xor a
    ld a, a
    cp a
    ld a, a
    sbc a

jr_022_4BAF:
    ld a, a
    rst $38
    nop
    and $1F
    ld sp, hl
    rst $00
    cp $F1
    cp $FD
    db $FD
    cp $FF
    rst $38

jr_022_4BBE:
    or $FF
    nop
    nop
    rst $38
    nop
    cp h
    rst $38
    dec bc
    rst $38
    ld hl, sp+$07
    rrca
    nop
    jr nc, jr_022_4B8E

    rrca
    ldh a, [rNR41]
    rst $18
    rst $08
    ldh a, [$F0]
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    ld b, b
    rst $38
    sub a
    add sp, -$29
    rst $28
    dec hl
    rst $18
    rst $20
    rra
    inc hl
    rst $18
    ret nc

    cpl
    ld a, a
    add b
    and b
    ret nz

    ld e, a
    add b
    ld l, $FF
    rst $38
    rst $38
    adc $FF
    ld de, $FFEE
    nop
    jr c, jr_022_4BFC

jr_022_4BFC:
    rlca
    nop
    adc b
    rlca
    or l
    rst $08
    ld d, b
    adc a
    ld e, d
    add l
    rst $08
    nop
    add a
    nop
    ld h, c
    nop
    jr jr_022_4C0E

jr_022_4C0E:
    ld a, [hl]
    add b
    ld sp, hl
    cp $01
    cp $83
    ld a, h
    sub $28
    db $FC
    nop
    add b
    nop
    ld a, [hl]
    nop
    cp l
    ld a, [hl]
    adc a
    ld a, a
    add h
    ld a, a
    jp $A03F


    ld e, a
    ret nc

    cpl
    rst $38
    nop
    and b
    nop
    rrca
    nop
    jp hl


    cp $03
    db $FC
    adc a
    ld [hl], b
    cp $04
    db $FD
    jr jr_022_4BBE

    nop
    ld a, [hl]
    ld bc, $7B85
    ldh a, [rP1]
    inc c
    inc bc
    di
    ld e, $03
    nop
    nop
    nop
    rra
    nop
    ld [c], a
    dec e
    dec bc
    rst $38
    add sp, $00
    nop
    nop
    push af
    ld a, [bc]
    rrca
    ldh a, [$F0]
    nop
    rrca
    nop
    ld a, [c]
    rrca
    dec l
    cp $A3
    rra
    ld e, [hl]
    ccf
    ret nz

    ccf
    ld b, b
    cp a
    db $F4
    dec bc
    ld l, a
    add b
    sbc b
    ldh [$E7], a
    ld hl, sp-$2D
    rrca
    ld d, a
    adc a
    ld d, e
    adc a
    ld d, c
    adc a
    ret nc

    rrca
    sbc h
    inc bc
    ld c, $01
    db $E3
    nop
    ld a, [$E6FC]
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$59
    and b
    or b
    ld b, b
    db $E3
    nop
    ld a, [hl]
    rst $38
    dec a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    sub l
    ld l, d
    db $EB
    inc d
    ld a, [hl]
    nop
    nop
    nop
    jr nc, jr_022_4CB1

    ld e, [hl]
    ccf
    ld c, a
    ccf
    ld b, d
    ccf
    or h
    dec bc
    ld c, a
    nop
    nop
    nop
    ld d, a
    nop
    rst $08

jr_022_4CB1:
    scf
    sub e

Call_022_4CB3:
    ld l, h
    call z, $8033
    ld a, a
    push de
    ld a, [hl+]
    db $EB
    inc d
    ld a, [hl]
    ld bc, $0F33
    cpl
    ret nc

    nop
    nop
    ld hl, sp+$00
    inc hl
    ret nz

    db $FC
    inc bc
    ld b, b
    nop
    sbc a
    nop
    ld d, d
    xor a
    ccf
    rst $38
    ld hl, sp+$07
    rla
    ld hl, sp-$40
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    rst $38
    ld a, [hl+]
    push af
    ret nc

    cpl
    ld l, d
    sub l
    rst $10
    jr z, @+$41

    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ret nc

    inc e
    ldh [$08], a
    ldh a, [$99]
    ld h, b
    db $EB
    nop
    push de
    nop
    ld [bc], a
    nop
    nop
    nop
    add h
    inc bc
    jr z, jr_022_4D0B

    ldh a, [rIF]
    add b
    ld a, a
    jp nz, Jump_022_7D3D

jr_022_4D0B:
    ld [bc], a
    ccf
    nop
    nop
    nop
    sbc h
    nop
    db $E3
    nop
    ld d, $E1
    inc [hl]
    jp $00EB


    pop hl
    nop
    adc $00
    nop
    nop
    cp a
    nop
    add b
    ld a, a
    nop
    rst $38
    ld l, d
    sub l
    rst $10
    jr z, @+$01

    nop
    nop
    nop
    nop
    nop
    sbc h
    inc bc
    ld l, a
    add b
    ld [de], a
    push hl
    inc d
    db $E3
    xor e
    ld b, b
    ld h, c
    add b
    adc $00
    nop
    nop
    rra
    rst $38
    ldh [$1F], a
    rra
    ldh [rBGP], a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    nop
    or $09
    pop bc
    ccf
    sbc [hl]
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    nop
    nop
    ret nz

    nop
    inc a
    ret nz

    add $F8
    ld a, [$FAFC]
    db $FC
    ld a, [$F4FC]
    ld hl, sp-$61
    ld a, a
    or a
    ld a, a
    xor c
    ld a, a
    add b
    ld a, a
    ret nc

    cpl
    ld a, b
    rlca
    ccf
    nop
    nop
    nop
    db $FC
    ld hl, sp-$4A
    ld hl, sp+$72
    db $FC
    ld [hl+], a
    db $FC
    ld [bc], a
    db $FC
    adc [hl]
    ld [hl], b
    db $FC
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld a, $01
    ld h, b
    rra
    ld c, a
    ccf
    ld e, a
    ccf
    ld c, [hl]
    ccf
    inc l
    rra
    nop
    nop
    ret c

    nop
    ld l, [hl]
    sub b
    inc bc
    db $FC
    ld a, c
    cp $ED
    cp $1D
    cp $FD
    cp $29
    rra
    ld h, h
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ld h, d
    dec e
    ld a, c
    ld b, $3F
    nop
    nop
    nop
    ld sp, hl
    cp $B1
    cp $03
    db $FC
    rlca
    ld hl, sp+$2B
    call nc, $A05E
    db $FC
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_022_4DDD

    ld h, $1F
    dec hl
    rra
    cpl
    rra
    cpl

jr_022_4DDD:
    rra
    cpl
    rra
    nop
    nop
    ld hl, sp+$00
    inc c
    ldh a, [rTMA]
    ld hl, sp-$35
    db $F4
    db $E3
    db $FC
    pop hl
    cp $E1
    cp $4F
    ccf
    ld c, a
    ccf
    ld d, a
    ccf
    ld c, a
    ccf
    ld e, a
    ccf
    cpl
    rra
    cpl
    rra
    ld l, a
    rra
    jp nz, $C2FC

    db $FC
    db $E3
    db $FC
    push de
    ld a, [$F8E7]
    and $F8
    ld [c], a
    db $FC
    pop bc
    cp $4F
    ccf
    ld c, a
    ccf
    ld d, a
    ccf
    ld c, a
    ccf
    ld e, a
    ccf
    cpl
    rra
    cpl
    rra
    ld l, a
    rra
    ret nz

    cp $D1
    cp $D3
    db $FC
    db $D3
    db $FC
    db $E3
    db $FC
    ld a, [c]
    db $FC
    ld a, [c]
    db $FC
    db $E3
    db $FC
    ld b, a
    ccf
    ld c, a
    ccf
    daa
    rra
    jr nz, jr_022_4E57

    jr nc, @+$11

    ccf
    nop
    rra
    nop
    nop
    nop
    push de
    ld a, [$FAA5]
    dec b
    ld a, [$F40B]
    ld a, $C0
    cp $00
    db $FC
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    jr nz, jr_022_4E75

    cpl

jr_022_4E57:
    rra
    ld d, a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    ld sp, hl
    nop
    rlca
    ld hl, sp+$28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    rlca
    ld hl, sp+$28

jr_022_4E75:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    inc a
    ret nz

    ld b, [hl]
    ld hl, sp-$0E
    db $FC
    ld a, [$FAFC]
    db $FC
    ld a, [$FAFC]
    db $FC
    ld c, a
    ccf
    ld b, a
    ccf
    ld b, b
    ccf
    ld l, b
    rla
    jr nc, jr_022_4EA9

    inc e
    inc bc
    rrca
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, $FF
    db $10
    rst $38
    nop
    rst $38
    inc e

jr_022_4EA9:
    db $E3
    xor $11
    add hl, sp
    nop
    nop
    nop
    rst $38
    rst $38
    ld c, $FF
    halt
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, c
    nop
    nop
    nop
    ld a, [c]
    db $FC
    ld h, d
    db $FC
    ld a, [bc]
    db $FC
    ld b, d
    db $FC
    xor $10
    inc e
    ldh [$F0], a
    nop
    nop
    nop
    ld h, c
    nop
    ld e, h
    jr nz, @+$65

    inc e
    ld d, l
    ld a, $2E
    rra
    ld sp, $1F0E
    nop
    nop
    nop
    sbc [hl]
    nop
    inc sp
    inc c
    dec [hl]
    ld c, $9B
    inc b
    sub $00
    adc h
    nop
    ld b, b
    nop
    nop
    nop
    ccf
    nop
    ld a, b
    rlca
    ld [hl], e
    rrca
    ld [hl], l
    rrca
    jr nc, jr_022_4F09

    ld a, [de]
    dec b
    dec c
    ld [bc], a
    ld b, a
    nop
    or $00
    dec de
    ldh [$CB], a
    ldh a, [$EB]
    ldh a, [$8B]

jr_022_4F09:
    ldh a, [$3A]
    ret nz

    ld [hl], b
    add b

jr_022_4F0E:
    call nz, RST_00
    nop
    ld [$5F00], sp
    nop
    jr nc, jr_022_4F27

    ld l, [hl]
    rra
    ld h, a
    rra
    ld l, a
    rra
    ld l, a
    rra
    nop
    nop
    ld a, b
    nop
    rst $00
    jr c, jr_022_4F5F

jr_022_4F27:
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
    nop
    ld [$9C00], sp
    nop
    jp c, Jump_022_5204

    adc h
    ld [hl-], a
    call z, $CEB0
    jr nc, jr_022_4F0E

    ld l, [hl]
    rra
    ld h, a
    rra
    ld [hl], d
    rrca
    add hl, sp
    ld b, $1F
    nop
    ld [$0700], sp
    nop
    xor b
    rlca
    ld l, $FF
    rst $38
    rst $38
    adc $FF
    ld de, $FFEE
    nop
    jr c, jr_022_4F5C

jr_022_4F5C:
    rlca
    nop
    adc b

jr_022_4F5F:
    rlca
    or d
    call z, $8E50
    ld e, d
    add h
    call z, $8000
    nop
    ld h, b
    nop
    jr jr_022_4F6E

jr_022_4F6E:
    ld a, h
    add b
    db $D3
    rrca
    rst $10
    rrca
    db $D3
    rrca
    pop de
    rrca
    ld d, b
    rrca
    inc e
    inc bc
    ld c, $01
    inc bc
    nop
    db $D3
    rrca
    ld d, a
    adc a
    ld d, e
    adc a
    ld d, c
    adc a
    ret nc

    rrca
    sbc h
    inc bc
    ld c, $01
    db $E3
    nop
    or $E8
    xor $F0
    inc c
    ldh a, [$0C]
    ldh a, [$0C]
    ldh a, [$58]
    and b
    or b
    ld b, b
    ld [c], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ret nc

    inc e
    ldh [$08], a
    ldh a, [$99]
    ld h, b
    db $EB
    nop
    push de
    nop
    ld [bc], a
    nop
    nop
    nop
    add [hl]
    nop
    ld a, [hl+]
    inc b
    db $F4
    ld [$7C82], sp
    call nz, Call_022_7C38
    nop
    jr c, jr_022_4FCE

jr_022_4FCE:
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
    ld a, [$DC05]
    inc hl
    ldh [$1F], a
    ldh a, [rIF]
    inc b
    inc bc
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
    nop
    nop
    stop
    jr z, jr_022_5006

    daa
    jr jr_022_5019

    rra
    jr nz, jr_022_501B

    ld hl, $321E
    dec c
    inc c
    nop
    ld c, e
    inc b
    ld a, a
    nop

jr_022_5006:
    ld e, [hl]
    ld hl, $3847
    ld c, [hl]
    ld sp, $037C
    ldh a, [rIF]
    ld a, a
    nop
    ldh [$1F], a
    ld b, h
    cp e
    adc e
    ld [hl], h
    rra

jr_022_5019:
    ldh [$5C], a

jr_022_501B:
    and b
    cp b
    ld b, b
    ld h, b
    add b
    rra

jr_022_5021:
    nop
    ldh a, [rIF]
    nop
    rst $38
    and h
    ld e, e
    ld a, [$0705]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    adc $01
    ld [hl], h

jr_022_5035:
    adc e
    cpl
    ret nc

    inc e
    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    and c
    ld e, [hl]
    and d
    ld e, l
    swap h
    add a

jr_022_5047:
    ld a, b
    sbc h
    ld h, b
    xor b
    ld d, b
    sbc b
    ld h, b
    sub b
    ld h, b
    ld b, b
    add b
    ret nz

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
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sbc b
    ld h, b
    call z, $9430
    ld l, b

jr_022_506C:
    call z, $C430
    jr c, jr_022_5035

    jr c, jr_022_5047

    jr z, jr_022_5021

    ld d, b
    sbc b
    ld h, b
    or b
    ld b, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    ret nc

    ld h, b
    or b
    ld h, b
    ld l, b
    jr nc, jr_022_50FB

    jr nc, @+$58

    jr c, @-$24

    inc a
    xor e
    ld e, h
    xor l
    ld e, [hl]
    sub h
    ld l, a
    sub $2F
    ld l, e
    rla
    cp h
    ld b, e
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
    jr c, jr_022_506C

    add $F8
    ld sp, hl
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
    ld bc, $0E00
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
    ld hl, sp+$00
    rlca
    ld hl, sp+$70
    nop
    ld b, h
    jr c, jr_022_511F

    inc a
    dec [hl]
    ld c, $4A
    rlca
    ld h, a
    inc bc
    ld d, l
    inc hl
    ld c, d
    ld sp, $7CB3
    sbc h
    ld a, a
    ld h, e
    rra

jr_022_50E6:
    jr c, jr_022_50EF

    add a
    nop
    ld h, b
    add b
    sbc h
    ldh [rHDMA3], a

jr_022_50EF:
    db $FC
    inc c
    inc bc
    jp $2000


    ret nz

    ret c

    ldh [rNR52], a
    ld hl, sp-$3F

jr_022_50FB:
    ld a, $3A
    dec b
    inc c
    inc bc
    inc bc
    db $FC
    ld d, h
    cp a
    ld [$1E17], a
    ld bc, $0001
    add b
    nop
    ldh [rP1], a
    ld l, a
    ldh a, [rRP]

jr_022_5111:
    add hl, sp
    dec sp
    inc e
    ld l, h
    rra
    ld l, a
    rra
    ld [hl], a
    rrca
    halt
    rrca
    dec sp
    rlca
    dec e

jr_022_511F:
    inc bc
    db $ED
    ld e, $1C
    inc bc
    jp $3800


    ret nz

    ld l, [hl]
    ldh a, [$ED]
    ld e, $1A
    rlca
    ld h, [hl]
    ld bc, $0043
    call nc, $8A00
    nop
    inc l
    db $10
    ld d, l
    jr z, jr_022_50E6

    ld [hl], b
    ret nc

    ldh [$6F], a
    add b
    sbc d
    ld a, a
    ldh [$1F], a
    ccf
    nop
    nop
    nop
    ret nz

    nop
    ld sp, $8EC0
    ld [hl], c
    ld sp, $360F
    add hl, bc
    dec hl
    inc e
    add hl, hl
    ld e, $2D
    ld e, $17
    ld c, $1A
    rlca
    dec c
    inc bc
    dec b
    inc bc
    ld d, c
    jr nz, jr_022_5111

    db $10
    sub l
    ld c, $CA
    rlca
    ld h, a
    nop
    jr nc, jr_022_516C

jr_022_516C:
    adc c
    nop
    ld b, e
    add b
    sub b
    rrca
    dec bc
    rlca
    ld b, [hl]
    ld bc, $8061
    adc [hl]
    nop
    dec sp
    inc b
    call nz, $EB3A
    db $F4
    adc a
    nop
    ld h, b
    add b
    rst $18
    ldh [$A9], a
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    add l
    ld [bc], a
    ld [hl-], a
    ld bc, $0601
    nop
    inc bc
    nop
    ld bc, $2020
    ld b, b
    ld b, b
    add b
    add b
    or h
    or h
    ret nz

    ret nz

    ld h, e
    rst $38
    inc a
    rst $38
    jp Jump_022_7C3C


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $EB
    db $FC
    ld e, $E1
    rst $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or [hl]
    ld a, c
    ld e, e
    db $FC
    ld bc, $FFFE

jr_022_51C7:
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
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    or b
    ret nz

    ld e, b
    ldh [rBCPS], a
    ldh a, [$AC]
    ld [hl], b
    or h
    ld a, b
    ld d, [hl]
    cp b
    ld e, e
    cp h
    dec l
    sbc $F2
    rrca
    dec e
    db $E3
    and $F9
    or $F9
    call nz, $2A38
    inc e
    sbc d
    inc c
    ld d, l
    adc [hl]
    ld a, [hl+]
    rst $00
    xor e
    ld b, a
    dec h
    ld b, e
    ld d, d
    ld hl, $2059
    inc l
    db $10

Jump_022_5204:
    dec hl
    inc e
    dec d
    rrca
    ld c, l
    ld [bc], a
    ld h, a
    nop
    ld d, b
    jr nz, jr_022_525F

    jr nz, jr_022_51C7

    ld a, c
    ld e, a
    jr c, jr_022_5280

    inc e
    scf
    inc c
    dec d
    ld c, $0A
    rlca
    dec bc
    rlca
    inc b
    inc bc
    ld bc, $0006
    inc bc
    nop
    ld bc, $2020
    ld b, b
    ld b, b
    add b
    add b
    or h
    or h
    ret nz

    ret nz

    or [hl]
    ld a, c
    ld e, a
    jr c, jr_022_52A0

    inc e
    scf
    inc c
    dec d
    ld c, $0A
    rlca
    dec bc
    rlca
    inc b
    inc bc
    ld d, c
    jr nz, @-$50

    db $10
    sub l
    ld c, $CA
    rlca
    ld h, a
    nop
    jr nc, jr_022_524C

jr_022_524C:
    adc c
    nop
    ld b, e
    add b
    pop af
    nop
    ld b, $01
    ei
    rlca
    dec d
    cp $FE
    nop
    nop
    nop
    and c
    ld b, b
    ld c, h

jr_022_525F:
    add b
    add hl, bc
    ldh a, [$D0]
    ldh [$62], a
    add b
    add [hl]
    ld bc, $0071
    call c, $2320
    ld e, h
    ret nc

    cpl
    ld bc, $0006
    inc bc
    nop
    ld bc, $2020
    ld b, b
    ld b, b
    add b
    add b
    or h
    or h
    ret nz

    ret nz

jr_022_5280:
    ld h, e
    rst $38
    inc a
    rst $38
    jp Jump_022_7C3C


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    sbc [hl]
    jp c, $803F

    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_529E:
    nop
    nop

jr_022_52A0:
    rst $10
    ccf
    ld a, b
    add a
    sbc a
    ld h, b
    ret nz

    ccf
    ld h, c
    ld e, $1F
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $01
    dec bc
    rlca
    rra
    rlca
    scf
    rrca
    ld l, $1F
    dec l
    ld e, $2B
    inc e
    ld a, [hl+]
    dec e
    ld a, [hl+]
    dec e
    dec [hl]
    ld c, $1D
    ld b, $0D
    ld b, $0D
    ld b, $0B
    ld b, $09
    ld b, $FB
    nop
    cp $00
    push af
    nop
    ret c

    nop
    inc c
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    adc a

jr_022_52E1:
    ld a, a
    ld b, [hl]
    or [hl]
    jr nc, jr_022_529E

    call c, $02DC
    add d
    dec d
    push de
    ld b, b
    ldh [$78], a
    ld a, b
    ld b, b
    cp e
    nop
    db $FD
    inc b
    xor l
    ld [bc], a
    ld e, d
    add hl, hl
    ld l, c
    ld h, l
    ld h, l
    or b
    or b

jr_022_52FE:
    adc b
    adc b
    nop
    nop
    add b
    nop
    ld b, b
    add b
    add $00
    ld a, [$0404]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$7F], a
    add b
    ld a, e

jr_022_5313:
    add h
    add a
    ld hl, sp+$77
    ld a, b
    rla
    jr @+$19

    jr jr_022_534C

    jr nc, jr_022_52FE

    ldh [rNR11], a
    ld de, $0D0D
    and [hl]
    and [hl]
    sub h
    sub [hl]
    ld b, b
    ld e, d
    jr nz, jr_022_52E1

    nop
    cp a
    ld [bc], a
    db $DD
    call nz, $1238
    inc c
    add d
    inc b
    ld b, c
    adc d
    ld e, b
    adc h
    sbc $0F
    ld e, a
    rrca
    rra
    rrca
    sbc b
    ld h, b
    add [hl]
    ld a, b
    ld d, e
    inc a
    inc l
    rra
    inc bc
    rra
    jr jr_022_5313

jr_022_534C:
    ret z

    ldh [$AF], a
    ldh [$80], a
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    cp b
    ret nz

    ld e, [hl]
    ldh [$6E], a
    ldh a, [$AE]
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    add b
    ld e, a
    ret nz

    rst $18
    ret nz

    ld e, a
    ret nz

    sbc a
    and b
    cp a
    add b
    ccf
    ld b, b
    ld a, a
    nop
    jp hl


    rrca
    push hl
    rla
    call nz, $8427
    ld b, a
    adc d
    rrca
    sub b
    rra
    adc a
    ld c, a
    ret nz

    jr nz, jr_022_53D0

    ld b, b
    rra
    jr nz, @-$77

    sbc b
    ld h, e
    db $E4
    ld de, $09F2
    ld a, [$F0F1]
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0718
    inc hl
    rra
    cpl
    rra
    ld e, a
    ccf
    rst $18
    ccf
    ld [hl], b
    nop
    cp b
    ld [hl], b
    ld l, b
    ldh a, [$F0]
    ldh [$D0], a
    ldh [$D0], a
    ldh [$A0], a
    ret nz

    and b
    ret nz

jr_022_53D0:
    inc bc
    nop
    inc b
    inc bc
    ld [$0907], sp
    rlca
    inc de
    rrca
    inc de
    rrca
    rla
    rrca
    ld d, $0F
    nop
    nop
    add b
    nop
    ld b, b
    add b
    inc b
    ret nz

    xor d
    call nz, $CCB2
    cp d
    call z, $DEAD
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc b
    ld [hl], b
    jr nc, @-$3E

    db $FC
    nop
    ld [$30F0], sp
    ret nz

    ldh [rP1], a
    nop
    nop
    sbc a
    ldh [rVBK], a
    ld [hl], b
    cp a
    ret nz

    ld e, a
    ld h, b
    daa
    jr c, jr_022_5476

    ld h, h
    ld e, a
    ld h, b
    cp a
    ret nz

    xor [hl]
    pop de
    ld e, a
    ld h, b
    ld l, a
    ld [hl], b
    rra
    db $10
    cpl
    jr nc, jr_022_548A

    ld h, b

jr_022_542C:
    cp a

jr_022_542D:
    ret nz

    ld e, a
    ld h, b
    rla
    rrca
    dec bc
    rlca
    rlca
    nop
    ld [$0600], sp
    nop
    jr nz, jr_022_543C

jr_022_543C:
    ld d, b
    jr nz, @+$52

    jr nz, @-$36

    db $E3
    adc e
    ldh [$DA], a
    nop
    stop
    and $00
    add hl, bc
    ld b, $18
    rlca
    ld h, [hl]
    ld bc, $0448
    xor b
    inc e
    jr jr_022_5492

    jr @+$3E

    ld de, $833C
    jr jr_022_54A4

    add b
    ld a, $C1
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    jr c, jr_022_542C

    add $F8
    ld sp, hl
    cp $01
    nop
    ld [bc], a
    ld bc, $0102

jr_022_5476:
    dec b
    inc bc
    dec bc
    rlca
    ld [de], a
    rrca
    rla
    rrca
    rla
    rrca
    ret nz

    nop
    jr nz, @-$3E

    and b
    ret nz

    and b
    ret nz

    ld h, c
    add b

jr_022_548A:
    ld h, d
    add c
    and h
    jp $C1BE


    jr nc, jr_022_5492

jr_022_5492:
    ld e, b
    jr nz, @+$4A

    jr nc, jr_022_54FF

    jr nc, jr_022_542D

    ld a, b
    ld [hl], d
    db $FC
    ei
    db $FC
    cp l
    cp $40
    nop
    and b
    ld b, b

jr_022_54A4:
    ret nc

    ld h, b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    and h
    ld a, b
    or h
    ld a, b
    inc h
    rra
    ld a, [bc]
    ccf
    ld e, [hl]
    ccf
    ld e, h
    ccf
    ld d, l
    ld a, $5A
    dec a
    ld d, d
    dec a
    ld d, [hl]
    add hl, sp
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld h, $1B
    ld l, l
    ld e, $DE
    ccf
    adc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    ld b, a
    ccf
    ld hl, sp+$07
    ld e, a
    nop
    xor l
    sbc $6D
    sbc $6F
    sbc $91
    ld l, [hl]
    adc e
    ld [hl], h
    ld e, a
    and b
    ld a, $C0
    add sp, $00

jr_022_54F0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_54FF:
    nop
    sbc h
    nop
    inc de
    nop
    ld h, l
    inc bc
    xor e
    rlca
    inc hl
    rrca
    add hl, hl
    rlca
    db $F4
    inc bc
    jr jr_022_54F0

    xor a
    ld b, b
    ld h, b
    ret nz

    rst $28
    ret nz

    xor c
    add $DF
    add b
    ld d, b
    add b
    add l
    ld [bc], a
    ld [hl-], a
    ld bc, $001C
    ld h, d
    inc e
    or l
    ld c, [hl]
    sbc d
    ld h, a
    xor d
    ld [hl], a
    or h
    ld a, e
    ld e, e
    inc a
    ld h, $19
    ldh a, [rP1]
    jr nz, jr_022_5534

jr_022_5534:
    add hl, bc
    rlca
    ld c, a
    rra

jr_022_5538:
    ld d, [hl]
    rra
    ld c, a
    rra
    ld b, [hl]
    rra
    ld l, a
    nop
    db $ED
    ld e, [hl]
    ld e, d
    db $EC
    sub $E8
    call c, $DCE0
    ldh [$D8], a
    ldh [$B8], a
    ret nz

    ld [hl], b
    add b
    inc c
    inc bc
    jp $2000


    ret nz

    jr jr_022_5538

    inc b
    ld hl, sp-$3F
    jr c, @+$14

    ld hl, $206B
    ld e, a
    add b
    ld c, $A1
    ld h, h
    inc sp
    ld h, [hl]
    ld sp, $70A1
    ld d, b
    ldh [$27], a
    ret nz

    call nc, $2E0B
    rra
    dec l
    rra
    cpl
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    rst $18
    ccf
    xor [hl]
    ld e, a
    xor [hl]
    ld e, a
    or b
    ld b, b
    ld l, h
    ldh a, [$AA]
    call c, $CC16
    call $8A06
    rlca
    and l
    inc bc
    halt
    ld bc, $5CAA
    or [hl]
    ld e, b
    ld c, h
    jr nc, @+$3B

    nop
    ld bc, $8200
    nop
    ld [hl+], a
    ret nz

    halt
    add b
    or h
    ld a, b
    or h
    ld a, b
    inc [hl]
    ld hl, sp-$4C
    ld a, b
    or h
    ld a, b
    ld [hl], h
    ld hl, sp+$74
    ld hl, sp-$1C
    ld hl, sp-$47
    ld a, a
    sbc e
    ld a, a
    or e
    ld a, a
    and e
    ld a, a
    and e
    ld a, a
    or e
    ld a, a
    or l
    ld a, e
    or l
    ld a, e
    ld b, b
    add b
    jr nz, @-$3E

    jr nc, @-$3E

    sub b
    ldh [$98], a
    ldh [$D4], a
    ldh [$DC], a
    ldh [$CC], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    cp $01
    rst $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or [hl]
    ld a, c
    ld e, e
    db $FC
    ld bc, $FFFE
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rrca
    ld h, $1F
    ld e, h
    ccf
    sbc e
    ld a, l
    or [hl]
    ld a, c
    xor a
    ld [hl], b
    sub a
    ld h, b
    and a
    ld b, b
    rst $18
    jr nz, @-$1C

    dec e
    rst $38
    nop
    rst $38
    nop

jr_022_5638:
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld h, b
    nop
    ret nz

    nop
    add b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $2D01
    dec l
    inc bc
    inc bc
    inc l
    ld [hl], b
    ld [hl], $78
    ld a, [hl-]
    ld a, h
    ld e, d
    inc a

jr_022_5658:
    and h
    jr jr_022_56B3

    nop
    ld hl, $4F80
    add b
    ld [$C003], sp
    dec b
    dec d
    inc c
    ld e, d
    inc a
    db $F4
    ld a, b
    sbc c
    ld h, b
    ld h, [hl]
    ld bc, $0FB0
    sbc l
    ld a, [hl]
    adc l
    ld a, [hl]
    jp nc, Jump_022_663D

    add hl, de
    ld a, [hl]
    ld bc, $0B34
    ld l, l
    inc de
    ld a, e
    rlca
    db $D3
    jr nz, jr_022_5658

    jr nz, jr_022_5638

    ld h, b
    or b
    ld h, b
    ld hl, sp+$60
    call nc, $ACE0
    ret nz

    xor h
    ret nz

    ld b, c
    add h
    sub l
    ld [$1922], sp
    ld e, d
    ld sp, $73AD
    xor e
    halt
    xor e
    halt
    sub l
    ld l, [hl]
    call z, $ACF0
    ldh a, [$AB]
    ldh a, [$66]
    ld hl, sp+$77
    ld hl, sp+$73
    db $FC
    dec sp
    db $FC
    dec a
    cp $B5
    ld a, e
    or l

jr_022_56B3:
    ld a, e
    cp e
    ld a, l
    sbc d
    ld a, l
    sbc l
    ld a, [hl]
    ld c, h
    ccf
    ld [hl], b
    rrca
    rra
    nop
    and $F8
    ld [c], a
    db $FC
    ld [c], a
    db $FC
    ld a, [c]
    db $FC
    ld b, [hl]
    ld hl, sp-$72
    ld [hl], b
    db $FC
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $E3
    nop
    sbc l
    inc e
    ld c, d
    ld c, [hl]
    ld h, l
    ld h, a
    ld d, l
    ld [hl], a
    ld c, e
    ld a, e
    and h
    inc a
    reti


    add hl, de
    db $FD
    nop
    ld a, [de]
    ld [bc], a
    and $E6
    ld e, d
    sbc $A5
    cp h
    ld b, l
    ld a, h
    adc e
    ld hl, sp-$09
    ldh a, [$EF]
    rrca
    reti


    rra
    and e
    ccf
    ld h, h
    ld a, l
    ld c, c
    ld a, c
    ld d, b
    ld [hl], b
    ld l, b
    ld h, b
    ld e, b
    ld b, b
    ld e, e
    ld a, b
    push bc
    db $FC
    ld [hl+], a
    cp [hl]
    ld d, d
    sbc $2A
    xor $A6
    and $52
    ld [hl], d
    dec [hl]
    jr nc, jr_022_5743

    nop
    push hl

jr_022_5743:
    ld [bc], a
    add hl, de
    and $A5
    sbc $5A
    cp h
    cp d
    ld a, h
    ld [hl], h
    ld hl, sp+$08
    ldh a, [$A4]
    ld a, b
    ld a, [hl-]
    db $FC
    db $DD
    cp [hl]
    xor l
    sbc $D5
    xor $59
    and $AD
    ld [hl], d
    jp z, $BA30

    ld [bc], a
    di
    dec bc
    or $07
    db $F4
    rlca
    db $F4
    rlca
    db $E4
    rla
    add sp, $0F
    jp hl


    rrca
    ld [hl], c
    rrca
    dec hl
    rla
    daa
    rra
    inc sp
    rrca
    add hl, sp
    rlca
    inc e
    inc bc
    ld c, $01
    inc bc
    nop
    and a
    ret c

    and l
    ld a, [$F728]
    call nz, $F9FF
    cp $F3
    db $FC
    ld c, $F0
    ld hl, sp+$00
    ld a, h
    rst $38
    cp [hl]
    ld a, a
    sbc a
    ld a, a
    add $3F
    ldh [$1F], a
    ld [hl], b
    rrca
    cp a
    nop
    rst $08
    nop
    dec e
    cp $1B
    db $FC
    ld b, e
    cp h
    scf
    ret z

    ld e, $E0
    ld a, b
    add b
    db $F4
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $12FE
    db $FC
    dec c
    cp $2E
    rst $18
    rla
    rst $28
    ld a, [de]
    rst $20
    rrca
    ldh a, [$03]
    db $FC
    ld c, a
    or b
    rla
    ld hl, sp+$38
    rst $38
    ld c, l
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    inc bc
    ld hl, sp+$07
    inc b
    ei
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
    pop af
    ccf
    rst $18
    ld h, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    and a
    ld a, a
    rst $28
    db $10
    ld a, a
    add b
    rst $38
    add b
    cp $41
    sbc h
    ld h, e
    sub e
    ld a, a
    cpl
    ldh a, [$F7]
    ret z

jr_022_584E:
    ld [hl], a
    adc b
    rst $30
    add hl, bc
    xor $1F
    rst $38
    ld [hl-], a
    db $DD
    ld [c], a
    ccf
    pop bc
    sbc a
    ld h, b
    rst $38
    jr nz, jr_022_584E

    db $10
    rrca
    ldh a, [$EF]
    db $10
    ld [hl], a
    adc b
    sbc c
    ld a, a
    ld e, [hl]
    pop hl
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    nop
    nop
    nop
    nop
    add e
    nop
    ld [c], a
    nop
    add [hl]
    nop
    jp $FC00


    nop
    rst $38
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    jr nc, jr_022_588A

jr_022_588A:
    db $FC
    nop
    db $E4
    ld hl, sp-$08
    nop
    ldh a, [rIF]
    rst $30
    ld [$11EE], sp
    sbc c
    cp $7A
    add a
    db $FD
    ld [bc], a
    cp $01
    cp $01
    add sp, -$70
    ld a, b
    ldh a, [$FC]
    ld c, b
    or h
    ld b, b
    ld a, [c]
    add b
    ld a, [c]
    nop
    ld a, [c]
    nop
    ldh a, [$08]
    rrca
    db $10
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    ld bc, $022D
    ccf
    ld [de], a
    ld e, $0F
    rla
    add hl, bc
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ld e, [hl]
    pop hl
    sbc c
    ld a, a
    ld [hl], a
    adc b
    rst $28
    db $10
    rrca
    ldh a, [$1F]
    nop
    daa
    rra
    ccf
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    jp Jump_022_6100


    nop
    ld b, a
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ccf
    nop
    daa
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    ld b, a
    nop
    ld h, c
    nop
    jp $3F00


    nop
    rst $38
    nop
    rla
    add hl, bc
    ld e, $0F
    ccf
    ld [de], a
    dec l
    ld [bc], a
    ld c, a
    ld bc, $004F
    ld c, a
    nop
    rrca
    db $10
    ld a, a
    add b
    rst $38
    add b
    db $FC
    ld b, e
    sub e
    ld l, h
    sbc [hl]
    ld [hl], b
    dec l
    ldh a, [$F5]
    ret z

    halt
    adc b
    rst $38
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    add $00
    adc b
    nop
    stop
    nop
    nop
    inc c
    ldh a, [$E8]
    db $10
    ld [hl], b
    adc b
    sbc h
    ld [hl], b
    ld e, b
    ldh [$B4], a
    ld b, b
    ld [hl], h
    add b
    ld a, b
    add b
    nop
    db $FC
    ld bc, $01F1
    pop bc
    ccf
    cp a
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    ld a, a
    ld h, b
    rst $30
    add hl, bc
    xor $1F
    rst $38
    ld [hl-], a
    call c, $31E3
    ret nz

    add sp, $00
    jr nz, jr_022_596E

jr_022_596E:
    nop
    nop
    rrca
    ldh a, [$EF]
    db $10
    ld [hl], a
    adc b
    sbc c
    ld a, a
    ld a, [c]
    ld bc, $00C1
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $FC
    nop
    ldh a, [$03]
    db $E3
    rrca
    push bc
    rra
    ret nz

    rra
    pop bc
    rlca
    ldh a, [rSB]
    rst $38
    nop
    ld a, a
    nop
    rra
    add b
    adc a
    ldh [$E7], a
    ldh a, [$67]
    ldh a, [rNR13]
    ld hl, sp+$03
    ld hl, sp-$04
    nop
    db $FC
    nop
    ld hl, sp+$02
    ld hl, sp+$03
    ld a, [c]
    rlca
    ld a, [c]
    ld b, $F4
    ld b, $F4
    inc b
    inc bc
    jr c, jr_022_59BA

    nop
    rra
    nop
    ccf
    add b
    ccf
    nop

jr_022_59BA:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ldh [$0D], a
    db $E4
    dec c
    ldh [rIF], a
    ld [c], a
    rlca
    pop hl
    rrca
    jp nz, $C007

    inc bc
    ldh a, [rP1]
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    rra
    add b
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $FC
    inc bc
    rst $00
    nop
    add e
    jr c, jr_022_5A0E

    ld a, h
    add hl, sp
    ld a, h
    add hl, hl
    db $FC
    ld de, $21F8
    ld a, b
    ld bc, $F030
    nop
    ldh [rIF], a
    rst $00
    rra
    jp z, $C51F

    rrca
    add b
    rlca
    ret nz

    nop

jr_022_5A0E:
    ldh a, [rP1]
    inc bc
    nop
    rlca
    add b
    adc a
    ret nz

    adc a
    ret nz

    rrca
    add b
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    db $FC
    nop
    ld hl, sp+$03
    pop af
    rlca
    db $E3
    rrca
    add $1F
    rr a
    adc c
    ccf
    rst $38
    nop
    rra
    nop
    rlca
    ldh [$E3], a
    ld hl, sp-$07
    db $FC
    ld sp, hl
    db $FC
    db $FC
    cp $7C
    cp $92
    ccf
    inc bc
    ld a, a
    inc d
    ld a, a
    ld bc, $003F
    ld c, a
    add b
    inc [hl]
    ret nz

    dec bc
    ldh a, [rP1]
    call c, $28FE
    cp $81
    db $FC
    ld b, e
    ld hl, sp+$27
    ldh a, [rTAC]
    ldh [rTAC], a
    nop
    rlca
    nop
    ld hl, sp+$00
    db $FC
    ld bc, $00FC
    ld hl, sp+$02
    ld hl, sp+$01
    pop af
    inc bc
    ldh a, [rSB]
    ld hl, sp+$00
    rlca
    ld h, b
    rlca
    jr nc, jr_022_5A78

    sbc b
    inc bc
    ret c

jr_022_5A78:
    ld d, e
    ld hl, sp-$7F
    ret nc

    ld bc, $0380
    nop
    db $FC
    nop
    ldh a, [$03]
    pop bc
    rrca
    add a
    ccf
    sbc e
    ccf
    cpl
    ld a, a
    dec d
    ld a, a
    ld a, [bc]
    ld a, a
    ccf
    nop
    rrca
    ret nz

    rst $00
    ldh a, [$F3]
    ld hl, sp-$0D
    ld hl, sp+$79
    db $FC
    ld sp, hl
    db $FC
    reti


    db $FC
    ld hl, $047F
    ccf
    add b
    rra
    ret nz

jr_022_5AA7:
    rrca
    ldh [$03], a
    ldh a, [rP1]
    ldh a, [$03]
    ldh a, [rP1]
    ld h, c
    db $FC
    pop bc
    db $FC
    ld bc, $43F8
    ld hl, sp+$03
    ldh [rTAC], a
    nop
    rlca
    add b
    rrca
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$18
    rst $20
    rla
    rst $28
    ld l, $DF
    dec h
    rst $18
    jr @-$17

    ld h, a
    sbc b
    nop
    rst $38
    add h
    ld a, e
    ldh [$1F], a
    jr nc, jr_022_5AA7

    sbc b
    rst $20

Call_022_5ADA:
    inc a
    jp $07F8


    db $E4
    dec de
    db $10
    rst $28
    nop
    rst $38
    inc e

jr_022_5AE5:
    db $E3
    ld a, [hl+]
    db $DD
    ld e, l
    cp [hl]
    ld b, e
    cp h
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld a, $C1
    ld e, e
    cp h
    ld h, a
    cp b
    ld a, $C1
    add b
    ld a, a
    jr jr_022_5AE5

    nop
    rst $38
    nop
    rst $38
    db $F4
    rrca
    jp z, $9737

    ld a, a
    adc $3F
    db $ED
    rra
    sub $2F
    adc a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    ccf
    call z, $A303
    rra
    ld b, [hl]
    ccf
    ld c, l
    ccf
    ld e, d
    ccf
    ld d, h
    ccf
    ld e, c
    ccf
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
    nop
    rst $38
    nop
    rst $38
    ld c, b
    ccf
    jr nz, jr_022_5B63

    ld a, [bc]
    dec b
    jr nc, jr_022_5B57

    inc l
    rra
    ld l, d
    rra
    ld b, b
    ccf
    ld c, h
    inc bc
    inc sp
    rrca
    cpl
    rra
    ld l, d
    rra
    ld e, l

jr_022_5B57:
    ccf
    ld e, d
    ccf
    ld d, b
    ccf
    sub b
    ld a, a
    ret nz

    ccf
    add b
    rst $38
    ld b, b

jr_022_5B63:
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
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    scf
    nop
    ld bc, $3300
    nop
    ld a, [hl+]
    ld de, $19B6
    ld [$6D1D], a
    sbc a
    sub a
    rst $28
    ld l, a
    rst $30
    cpl
    db $10
    scf
    jr jr_022_5C03

    rra
    pop af
    rrca
    call c, $BB63
    ld a, h
    rst $08
    ccf
    ldh a, [rIF]
    cp e
    ld [hl], a
    or l
    ld a, e
    sbc $39
    ld l, d
    sbc l
    ld e, c
    and [hl]
    push af
    ld a, [hl-]
    xor d
    db $DD
    dec e
    ld [c], a
    cp a
    ld h, b
    ld e, e
    inc a
    dec l
    ld e, [hl]
    db $FD
    ld c, [hl]
    or [hl]
    ld l, l
    sub $2D
    ld a, e
    inc b
    ld a, a
    nop
    ld d, l
    xor $D5
    ld l, $ED
    ld e, $6D
    sbc [hl]
    xor l
    sbc $AB
    call c, $E856
    db $FC
    nop
    adc b
    nop
    jp z, $E504

    ld [bc], a
    or d
    ld b, c
    sub l
    ld h, e
    cp l
    ld h, e
    xor l
    ld [hl], d
    xor e
    ld [hl], h
    stop
    jr nc, jr_022_5BE4

jr_022_5BE4:
    add hl, hl
    db $10
    xor d
    ld de, $31DE
    db $DD
    inc sp
    cp l
    ld [hl], e
    ld l, d
    rst $30
    sub $39
    jp c, $AA3D

    ld e, l
    or [hl]
    ld c, l
    jp c, $B665

    ld a, c
    srl h
    inc a
    nop
    jp z, $D5F7

jr_022_5C03:
    xor $AD
    sbc $A3
    call c, $E2DD
    ld [hl], c
    cp $07
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    nop
    ld bc, $0701
    nop
    dec bc
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    dec bc
    dec de
    daa
    dec l
    ld e, a
    ld e, d
    cp l
    xor a
    ld [hl], b
    nop
    nop
    nop
    nop
    ldh [rNR10], a
    jr @-$1A

    db $E4
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp+$72
    db $FD
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld a, [hl]
    add c
    db $FD
    inc bc
    inc sp
    rst $08
    ld l, [hl]
    sbc a
    nop
    nop
    nop
    nop
    ld hl, sp+$04
    inc b
    ld a, [$E5DA]
    and l
    jp nz, $8043

    add c
    nop
    ld h, a
    ld hl, sp+$6C
    di
    ld d, e
    rst $28
    ld l, a
    rst $18
    xor $DF
    ld e, l
    rst $38
    dec a
    rst $38
    db $DB
    ccf
    sbc $3F
    dec a
    cp $73
    db $FC
    ld l, a
    ldh a, [$DE]
    ldh [$DC], a
    ldh [$BE], a
    ret nz

    or d
    ret nz

    nop
    ld a, $00
    ld e, $00
    dec c
    nop
    rlca
    nop
    rst $00
    nop
    rst $20
    nop
    rst $30
    nop
    rst $30
    nop
    and a
    nop
    ld h, a
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    ld bc, $06FE
    ld hl, sp+$19
    and $EB
    rra
    ld [hl], l
    rrca
    dec [hl]
    rrca
    add hl, sp
    rlca
    dec a
    jp $11EE


    and $19
    ld [hl], d
    dec c
    ld b, b
    sbc [hl]
    ld e, b
    add a
    ld b, h
    add e
    ld d, e
    add b
    ld e, b
    add b
    inc c
    ret nz

    ld l, $C0

jr_022_5CBE:
    ld [hl], $C0
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld [$B407], sp
    ld b, e
    ld d, d
    dec a
    inc l
    rra
    nop
    rst $38
    ccf
    ret nz

    ld b, h
    add b
    ld d, e
    ldh [$64], a
    di
    sub e
    rst $20
    cpl
    rst $00
    db $DD
    ccf
    xor l
    nop
    ld c, c
    nop
    nop
    nop
    ld a, [c]
    nop
    jr @-$1E

    add sp, -$10
    push af
    ld hl, sp+$00
    rst $38
    inc a
    jp nz, $8074

    add sp, $00
    nop
    nop
    ccf
    nop
    adc $3F
    rla
    rst $38
    ld c, $FF
    sub d
    rrca
    add h
    inc bc
    jp nc, $4C0D

    rrca
    ld b, $0F
    ld a, [c]
    rlca
    add h
    ei
    nop
    rst $38
    nop
    nop
    add hl, de
    nop
    scf
    ld [$0679], sp
    ld h, a
    ld a, [de]
    ld b, h
    inc hl
    ld b, d
    ld bc, HeaderCGBFlag
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    sbc $20
    rst $38
    nop
    or e
    ld b, b
    and c
    ld b, b
    and c
    ld b, b
    nop
    ld sp, hl
    ld [bc], a
    pop af
    ld de, $26E0
    ret nz

    adc c
    ld b, $57
    adc b
    jr nz, jr_022_5CBE

    rra
    ldh [$A0], a
    rlca
    ld e, b
    add e
    inc l
    pop bc
    sub c
    ld h, b
    ld l, d
    sub b
    add hl, de
    nop
    db $E4
    inc bc
    nop
    rst $38
    ld b, e
    ld bc, HeaderCGBFlag
    ld b, d
    ld bc, $0106
    ld b, $01
    ld b, $09
    ld e, $21
    ld l, l
    inc bc
    pop hl
    ld b, b
    ld h, b
    ret nz

    and b
    ret nz

    or b
    ret nz

    cp b
    ret nz

    cp h
    ret nz

    xor h
    ret nz

    and h
    ret nz

    ld c, l
    inc bc
    ld c, l
    inc bc
    ld c, d
    dec b
    ld c, d
    dec b
    ld a, [bc]
    dec b
    dec bc
    ld b, $0D
    ld [bc], a
    ld b, $01
    ld b, h
    add b
    ld b, h
    add b
    add h
    ld b, b
    add h
    ld b, b
    add b
    ld b, b
    ld b, b
    add b
    ret nz

    and b
    ld h, b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    dec bc
    rlca

jr_022_5DA0:
    rlca
    nop
    jr jr_022_5DAB

    ld l, a
    rra
    reti


    ccf
    adc d
    ld [hl], l
    ld [hl], a

jr_022_5DAB:
    ld hl, sp-$1D
    db $FC
    rst $10
    ld hl, sp-$1D
    nop
    dec d
    db $E3
    db $EB
    rst $30
    ld [hl], a
    rst $38
    and h
    ld e, e

jr_022_5DBA:
    db $DB
    inc h
    rst $38
    nop
    rst $38
    nop
    call z, $B300
    call z, $FFCC
    ld [hl], d
    db $FD
    or l
    ld c, d
    ld e, e
    and h
    rst $38
    nop
    rst $38
    nop
    rrca
    rlca
    db $10
    rrca
    ld [hl-], a
    dec c
    inc l
    rra
    ld e, a
    ccf
    ld a, [hl]
    ccf
    cp l
    ld a, a
    add c
    ld a, [hl]
    xor e
    db $F4
    rla
    add sp, -$15
    inc d
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [$C705]
    jr c, jr_022_5DA0

    ld [hl], h
    or a
    ld a, b
    xor e
    ld [hl], h
    or a
    ld a, b
    adc e
    ld a, h
    or a
    ld c, b
    rst $08
    jr nc, jr_022_5DBA

    ld a, b
    xor e
    ld [hl], h
    rst $30
    ld a, b
    db $EB
    ld [hl], h
    rst $30
    ld a, b
    and a
    ld a, b
    rst $08
    jr nc, @+$01

    nop
    swap h
    or l
    ld a, d
    ld h, e
    db $FC
    ld e, a
    ldh [rNR51], a
    jp c, $BC4B

    or [hl]
    ld a, c
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
    ld a, a
    add b
    cp a
    ld b, b
    ld l, l
    ld a, [c]
    add sp, -$09
    db $EB
    rst $30
    rst $10
    rst $28
    rst $10
    rst $28
    sub $EF
    or l
    adc $D3
    xor h
    ld e, a
    and b
    dec hl
    call nc, $A956
    ld [hl], e
    cp h
    ld [hl], d
    cp l
    call c, $ED3B
    dec de
    dec [hl]
    set 7, a
    nop
    db $EB
    inc d
    pop de
    ld l, $8A
    ld a, l
    ld d, l
    cp a
    ld l, d
    sbc a
    ld l, l
    sbc [hl]
    dec l
    sbc $FF
    nop
    db $FD
    ld [bc], a
    ld l, d
    sub l
    sub l
    ld l, d
    ld l, e
    db $FC
    cp [hl]
    ld a, c
    or h
    ld a, e
    call Call_022_4A33
    or l
    ld d, [hl]
    cp c
    db $F4
    dec sp
    ld l, d
    or a
    swap a
    db $EB
    rla
    ld a, [$7D07]
    ld [bc], a
    ld e, e
    rst $20
    and [hl]
    ld a, a
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    ld d, l
    cp [hl]
    ld d, l
    cp [hl]
    or l
    ld a, [hl]
    ld l, [hl]
    rst $30
    xor e
    call c, $CDB2
    call c, $E1E3
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc e
    rst $38
    db $DD
    rst $38
    ld a, e
    add a
    add a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, $FF
    ld a, h
    cp a
    ret nz

    nop
    db $FC
    nop
    ld b, $F8
    cp d
    ld a, h
    ld a, d
    db $FC
    ld [hl], d
    db $FC
    and a
    ld hl, sp+$0C
    di
    ld d, [hl]

jr_022_5EC1:
    rst $28
    ld d, $EF
    sub [hl]
    ld l, a
    jp nc, $FA2F

    rlca
    ld hl, sp+$07
    db $FC
    inc bc
    ld a, a
    nop
    push de
    rst $28
    db $EB
    rst $30
    db $EB
    rst $30
    ld [hl], a
    ei
    ld d, a
    ei
    add l
    ld a, e
    xor l
    ld d, d
    sub $29
    reti


    cp a
    ld d, c
    cp a
    jp z, $E5BD

    sbc e
    daa
    db $DB
    dec l
    db $D3
    ld [hl], h
    adc e
    rst $38
    nop
    jr nc, jr_022_5EC1

    ld bc, $1EFE
    pop hl
    ld h, e
    sbc a
    dec b
    rst $38
    dec bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld hl, sp+$00
    add h
    ld a, b
    ld l, h
    ldh a, [$F6]
    ld hl, sp-$06
    db $FC
    rst $30
    ld hl, sp-$55
    db $FC
    ld bc, $00FE
    nop
    ld h, b
    nop
    cp c
    ld b, b
    rst $18
    ld h, b
    or d
    call $936D
    sub e
    ld l, a
    add hl, bc
    rst $38
    nop
    nop
    ld a, b
    nop
    adc h
    ld [hl], b
    halt
    add sp, -$0A
    ld sp, hl
    di
    db $FC
    xor c
    cp $52
    db $FD
    inc bc
    db $FC
    ld c, a
    or b
    rla
    ld hl, sp+$38
    rst $38
    ld c, h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    ldh [$1F], a
    sub [hl]
    ld l, c
    add hl, bc
    rst $30
    inc hl
    rst $38
    rst $38
    nop
    ld e, e
    and h
    xor h
    ld d, e
    ld de, $65EE
    cp $BD
    cp $D8
    rst $38
    and d
    db $DD
    rst $38
    nop
    ld e, e
    and h
    add l
    ld a, d
    jr nz, @+$01

    ld [hl], h
    rst $38
    ld [hl], d
    rst $38
    xor e
    ld [hl], a
    dec e
    db $E3
    ld d, c
    rst $38
    jr c, @+$01

    ld a, d
    db $FD
    cp e
    ld a, h
    or l
    ld a, [hl]
    cp l
    ld a, [hl]
    dec [hl]
    cp $75
    cp $57
    add sp, $1F
    ldh [$3F], a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    cp c
    ld b, a
    ld b, [hl]
    cp c
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld l, d
    rst $30
    ld [$CAF7], a
    rst $30
    sub l
    xor $8B
    db $FC
    sub a
    ld hl, sp+$3B
    call c, $BE59
    ld e, l
    cp [hl]
    ld e, l
    cp [hl]
    ld c, c
    cp [hl]
    and [hl]
    db $DD
    jp nc, $2CED

    di
    ld h, c
    sbc [hl]
    db $D3
    inc l
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
    inc sp
    nop
    ld l, h
    nop
    db $D3
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    or h
    nop
    sbc $00
    dec hl
    call nz, RST_00
    rlca
    nop
    sbc l
    ld [bc], a
    ei
    inc b
    ld c, h
    or e
    or b
    rst $08
    ret z

    rst $30
    sub b
    rst $38
    nop

jr_022_6001:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    ld bc, $1300
    inc c
    ld hl, $211E
    ld e, $0B
    inc b
    rst $30
    nop
    dec c
    ldh a, [rTMA]
    ld hl, sp+$12
    call z, Call_022_4CB3
    ld [hl], a
    ld [$002C], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_6001

    add hl, sp
    add $AE
    ld b, b
    db $E4
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $3E00
    ld bc, $0000
    nop
    nop
    jr jr_022_6056

jr_022_6056:
    scf
    jr jr_022_6059

jr_022_6059:
    ld hl, $00C0
    nop
    add b
    add b
    add b
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
    ld b, b
    add b
    jr nz, jr_022_60AE

    jr jr_022_6090

    ccf
    rrca
    ld h, c
    ld h, b
    add b
    nop
    add b
    nop
    add b
    ld bc, $C3C0

Jump_022_607C:
    ld a, b
    ccf
    db $10
    rrca
    ld [bc], a
    cp $C8
    jr c, @+$22

    ldh [rLCDC], a
    ret nz

    add c
    add b
    ld [bc], a
    ld bc, $0204
    jr jr_022_6094

jr_022_6090:
    nop
    nop
    nop
    nop

jr_022_6094:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $3E00
    ld bc, $0000
    nop
    nop
    jr jr_022_60A6

jr_022_60A6:
    scf
    jr jr_022_60A9

jr_022_60A9:
    ld hl, $00C0
    nop
    add b

jr_022_60AE:
    add b
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
    add b
    nop
    add b
    add b
    ld b, c

jr_022_60C5:
    ld b, b
    ld h, e
    ld h, b
    ld a, a
    cp [hl]
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$F0]
    ld h, b
    stop
    adc b
    nop
    ld a, a
    ld l, l
    pop hl
    add b
    ld b, b
    nop
    add b
    nop
    add b
    nop
    inc b
    ld [hl], e
    ld [$3007], sp

jr_022_60E5:
    inc hl
    ld [c], a
    ld b, b
    pop bc
    add b
    ld h, b
    ld h, b
    jr nz, jr_022_60EE

jr_022_60EE:
    stop
    nop
    db $EC
    jr nz, @-$26

    ld [$7F80], sp
    ld l, l
    pop hl
    add b
    ld b, b
    nop
    add b
    nop
    add b
    nop

Jump_022_6100:
    nop
    rlca
    inc bc
    inc b
    inc bc
    nop
    ccf
    nop
    ld b, c
    ld a, $80
    ld a, a
    adc h
    ld [hl], e
    ld a, [hl]
    nop
    ld a, h
    add b
    cp $00
    add a
    nop
    ld b, b
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    inc a
    rst $38
    ld e, [hl]
    rst $38
    halt
    ld a, [hl]
    jr c, jr_022_6163

    nop
    nop
    ld [$0800], sp
    inc a
    nop
    ld h, [hl]
    inc a
    rst $18
    ld e, [hl]
    cp $60
    db $F4
    ld c, b
    ld h, b
    ld [$0800], sp
    nop
    ld [$3F1F], sp
    ld b, b
    jr nz, jr_022_60C5

    ld b, b
    nop
    add b
    add c
    add b
    inc bc
    add c
    ld b, h
    ld [bc], a
    ld a, [hl-]
    ld b, [hl]
    nop
    add b
    nop
    add b
    ld b, b
    nop
    ld hl, $DE40
    ld h, c
    jr nc, jr_022_6194

    nop
    stop
    stop
    jr nc, jr_022_61A3

jr_022_6163:
    jr nz, jr_022_60E5

    ld b, b
    nop
    add b
    add c
    add b
    ld [bc], a
    add c
    ld b, h
    ld [bc], a
    jr c, jr_022_61B6

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0204
    jr jr_022_6194

    nop
    nop
    nop
    nop

jr_022_6194:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $3E00
    ld bc, $0000
    nop

jr_022_61A3:
    nop
    jr jr_022_61A6

jr_022_61A6:
    scf
    jr jr_022_61A9

jr_022_61A9:
    ld hl, $00C0
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_61B6:
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_022_61FE

    jr jr_022_61E0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld h, c
    ld h, b
    add b
    nop
    add b
    nop
    add b
    ld bc, $C3C0
    ld a, b
    ccf
    db $10
    rrca

jr_022_61E0:
    ld [bc], a
    cp $C8
    jr c, jr_022_6205

    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    db $10
    rra
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_022_61FE:
    nop
    nop
    db $10
    ld h, b
    nop
    ld b, b
    ld d, b

jr_022_6205:
    ld l, b
    cp h
    ld b, b
    ret nz

    nop
    ld c, d
    ldh a, [$A0]
    ret nz

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
    ld [bc], a
    nop
    inc c
    nop
    jr jr_022_621E

jr_022_621E:
    db $10
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_6242

    ret nz

    jr nc, jr_022_625D

    ld [hl], b
    scf
    jr c, jr_022_6239

jr_022_6239:
    ld hl, $0040
    add b
    nop
    add b
    add b
    jr c, jr_022_6281

jr_022_6242:
    nop
    jr nz, jr_022_6285

    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    jr nz, jr_022_628E

    rra
    jr nz, jr_022_6271

    db $10
    ret nz

    jr nc, jr_022_627D

    ld [hl], b
    scf
    jr c, jr_022_6259

jr_022_6259:
    ld hl, $0040
    add b

jr_022_625D:
    nop
    add b
    add b
    jr c, jr_022_62A1

    nop
    jr nz, @+$42

    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    jr nz, jr_022_62AE

    rra
    jr nz, jr_022_6271

jr_022_6271:
    nop
    ldh a, [rP1]
    jr z, @+$72

    scf
    jr c, jr_022_6279

jr_022_6279:
    ld hl, $0040
    add b

jr_022_627D:
    nop
    add b
    add b
    nop

jr_022_6281:
    nop
    nop
    nop
    nop

jr_022_6285:
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_022_628E:
    nop
    nop
    nop
    ccf
    nop
    ccf
    ret nz

    jr nz, jr_022_6297

jr_022_6297:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_62A1:
    add b
    ld b, c
    add b
    ld a, $40
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_62AE:
    nop
    nop
    add b
    ld b, b
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
    nop
    nop
    nop
    ldh a, [rP1]

jr_022_62C4:
    jr z, jr_022_6336

    scf
    jr c, jr_022_62C9

jr_022_62C9:
    ld hl, $0040
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    ld b, c
    ld b, b
    ld h, e
    ld h, b
    ld a, a
    cp [hl]
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$3F]
    rst $08
    jr nz, jr_022_62C4

    nop

jr_022_62E5:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$1F], a
    ei
    db $10
    ldh [$80], a
    nop
    add b
    add b
    ld b, c
    ld b, b
    ld h, e
    ld h, b
    ld a, a
    ld a, $F0
    ld b, b
    ret z

    nop
    adc b
    nop
    nop
    nop
    ld [hl], h
    jr jr_022_636D

    ldh a, [$A0]
    ret nz

    ldh [$80], a
    jp c, $A404

    jr jr_022_6327

    jr nc, jr_022_6319

    db $10
    jr z, @+$12

    jr z, @+$12

    ld a, [hl+]
    db $10
    ld [hl-], a

jr_022_6319:
    jr nz, @+$14

    jr nz, jr_022_638F

    jr nz, jr_022_634F

    ld h, d
    inc c
    ld b, $2C
    ld b, $0F
    ld b, $96

jr_022_6327:
    rrca
    ld c, $9F
    adc l
    ld e, [hl]
    jp nc, $000C

    nop
    nop
    add b
    nop
    add b
    ld b, b
    nop

jr_022_6336:
    jr nz, jr_022_6378

    rst $18
    ld h, b
    jr nc, jr_022_6374

    nop
    stop
    db $10
    rra
    ccf
    ld b, b
    jr nz, @-$7E

    ld b, b
    nop
    add b
    add c
    add b
    inc bc
    add c
    ld b, h
    ld [bc], a
    ld a, [hl-]

jr_022_634F:
    ld b, [hl]
    nop
    add b
    nop
    add b
    ld b, b
    nop
    jr nz, jr_022_6398

    rst $18
    ld h, b
    jr nc, jr_022_6394

    nop
    stop
    db $10
    rra
    ccf
    ld b, b
    jr nz, jr_022_62E5

    ld b, b
    nop
    add b
    add c
    add b
    inc bc
    add c
    ld b, h

jr_022_636D:
    ld [bc], a
    ld a, [hl-]
    ld b, [hl]
    nop
    add b
    nop
    add b

jr_022_6374:
    ld b, c
    nop
    ld [hl+], a
    ld b, c

jr_022_6378:
    call c, $3063
    add hl, sp
    nop
    stop
    stop
    nop
    rrca
    nop
    inc d
    ld c, $EC
    inc e
    nop
    add h
    ld [bc], a
    nop
    ld bc, $0100

jr_022_638F:
    ld bc, $0004
    inc bc
    nop

jr_022_6394:
    nop
    nop
    nop
    nop

jr_022_6398:
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    ld bc, $0002
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
    ld a, e
    inc e
    ld d, a
    cpl
    ld c, b
    scf
    and a
    ld a, b
    jp c, Jump_022_7D67

    inc bc
    ld b, $01
    inc bc
    nop
    nop
    add b
    nop
    add b
    ld b, c
    nop
    ld [hl+], a
    ld b, c
    call c, $3063
    add hl, sp
    nop
    stop
    db $10
    inc e
    db $FC
    db $10
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [rP1], a
    ret nz

    ld b, b
    ret nz

    nop
    add b
    add b
    add b
    add hl, bc
    ret


    rra
    cp $12

jr_022_63E5:
    ldh [rSC], a
    ldh [rSB], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    db $10
    add b
    ccf
    rrca
    ld h, b
    ld h, b
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    ld a, a
    dec sp
    stop
    jr nc, jr_022_6422

    ld sp, $1021
    inc hl
    ld [de], a
    inc hl
    ld [de], a
    inc hl
    ld sp, $3122
    ld [hl+], a
    ld de, $0022
    nop
    ld b, b
    add b
    ld bc, $2606
    inc c
    inc l
    ld c, b
    inc c
    ld e, b
    ld d, h
    jr jr_022_6473

    jr jr_022_6421

jr_022_6421:
    nop

jr_022_6422:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    nop
    jr jr_022_642E

jr_022_642E:
    db $10
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld de, $0900

Call_022_643F:
    nop
    jr c, jr_022_6481

    nop

jr_022_6443:
    jr nz, jr_022_6485

    nop
    add b

jr_022_6447:
    nop
    nop
    add b
    ld b, b
    add b
    jr nz, @+$42

    rra
    jr nz, @+$22

    db $10
    ret nz

    jr nc, jr_022_647D

    ld [hl], b
    scf
    jr c, jr_022_6459

jr_022_6459:
    ld hl, $0040
    add b
    nop
    add b
    add b
    rra

jr_022_6461:
    ld a, $40
    jr nz, jr_022_63E5

    ld b, b
    nop
    add b
    add c
    add b
    ld [bc], a
    add c
    ld b, h
    inc bc
    jr c, jr_022_64B4

    jr nz, jr_022_6472

jr_022_6472:
    ret nz

jr_022_6473:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    nop

jr_022_647D:
    nop
    nop
    nop
    nop

jr_022_6481:
    ld bc, $0100
    add d

jr_022_6485:
    nop
    ld b, h
    add d
    dec sp
    add $0C
    sbc h
    nop
    ld [$0800], sp
    rlca
    nop
    jr nc, @+$11

    ld c, a
    jr nc, jr_022_6447

    ld h, b
    xor $40
    db $ED
    ld b, b
    or [hl]
    ld h, b
    ld l, b
    jr nc, jr_022_6461

    nop
    jr nc, @-$3E

    ret z

    jr nc, jr_022_64CB

    jr jr_022_6443

    inc c
    dec c
    ld b, $0B
    ld b, $17
    ld c, $ED
    ld e, $FA
    db $FC

jr_022_64B4:
    inc c
    ldh a, [$F0]
    ld [$F884], sp
    db $EC
    ldh a, [rNR10]
    ldh [$E0], a
    nop
    nop
    jr nz, @+$05

    pop bc
    ld bc, $0503
    inc bc
    rlca
    add e
    dec bc

jr_022_64CB:
    add a
    dec e
    rlca
    ld e, $2F
    ld [bc], a
    ld a, c
    ld bc, $603C
    ld c, [hl]
    ld e, $39
    nop
    ld a, $01
    dec e
    ld [bc], a
    ld b, $02
    ld bc, $0000
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    cp b
    ld h, b
    call c, $EEF8
    call c, RST_00
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $071D
    dec sp
    dec e
    ld [hl], a
    dec sp
    inc de
    ld [hl+], a
    ld [hl], c
    ld [hl+], a
    ld [hl], c
    ld [hl+], a
    ld a, c
    ld [hl+], a
    add hl, hl
    ld [hl], d
    db $EB
    ld [hl], d
    ld l, e
    ld a, [c]
    db $EB
    ld a, [c]
    ld d, h
    jr jr_022_6567

    ld [$0814], sp
    inc d
    ld [$0815], sp
    dec c
    ld de, $133A
    add hl, sp
    ld [de], a
    ld [$2810], sp
    db $10
    jr z, jr_022_6536

    xor d
    db $10
    or d
    jr nz, jr_022_653D

    jr nz, jr_022_659F

    jr nz, jr_022_655F

    ld h, d
    ld c, c
    nop
    ld b, b
    ld [$0849], sp

jr_022_6536:
    ld d, b
    add hl, bc
    sbc b
    ld c, c
    sbc l
    ld c, b
    ret c

jr_022_653D:
    inc c
    call nc, $000C
    ccf
    nop
    ccf
    ret nz

    jr nz, jr_022_6547

jr_022_6547:
    ret nz

    nop
    add b
    nop
    nop

jr_022_654C:
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, c
    add b
    ld a, $40
    nop
    inc e
    nop
    nop
    nop
    nop

jr_022_655C:
    nop
    nop
    nop

jr_022_655F:
    nop
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop

jr_022_6567:
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
    ld a, c
    ld bc, $603C
    ld c, [hl]
    ld e, $39
    nop
    ld a, $01
    dec e
    ld [bc], a
    ld b, $02
    ld bc, $0201
    nop
    ld bc, $0000
    add b
    nop
    ld h, b
    add b
    cp b
    ld h, b
    call c, $EEF8
    call c, $3F00
    nop
    ccf
    ret nz

    jr nz, jr_022_6597

jr_022_6597:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_022_659F:
    nop
    nop
    add b
    ld b, c
    add b
    ld a, $40
    nop
    inc e
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
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $071D
    dec sp
    dec e
    ld [hl], a
    dec sp
    ld hl, $429F
    inc a
    adc h
    ld [hl], d
    jr nc, jr_022_654C

    add b

jr_022_65C9:
    ld a, h
    add b
    ld hl, sp+$5F
    sbc e
    db $10
    add b
    ld hl, $429F
    inc a
    adc h
    ld [hl], d
    jr nc, jr_022_655C

    add b
    ld a, h
    add b
    ld hl, sp+$5F
    sbc e
    db $10
    add b
    add hl, bc
    add hl, bc
    rra
    ld e, $32
    jr nz, jr_022_65C9

    ld b, b
    pop bc
    add b
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh a, [$60]
    stop
    adc b
    nop
    ld a, a
    ld l, l
    pop hl
    add b
    nop
    ld a, b
    nop
    cp $00
    rst $38
    set 6, d
    rla
    ld [c], a
    call $1D06
    ld c, $1A
    dec a
    ld a, [de]
    dec a
    ld h, $19
    inc e
    nop
    ld e, e
    ld [hl-], a
    ld a, [hl-]
    ld [hl], d
    and l
    ld [hl], d
    ld h, h
    rst $30
    or $E5
    rst $10
    db $E4
    ld l, $C4
    call z, Call_022_7006
    ld h, d
    ld d, d
    ld h, d
    ld d, d
    ld [c], a
    ld d, h
    ld [c], a
    call nc, $94E2
    and $34
    add $E4
    ld b, $9E
    ld b, h
    call $CE46
    ld b, a
    bit 0, a
    xor e
    ld b, a
    call nz, $D363

Jump_022_663D:
    ld h, b
    db $F4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    rlca
    ccf
    rlca
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    inc a
    dec c
    ld h, b
    ld h, c
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    ld a, a
    dec sp
    stop
    add a
    ld a, h
    ei
    or a
    db $FC
    ei
    ld a, a
    db $FC
    ld e, l
    cp e
    db $E3
    ld a, a
    ld a, $FF
    add hl, de
    rst $38
    add b
    nop
    ret c

    add b
    rst $38
    ret c

    rst $38
    ld a, a
    ld a, a
    rst $38
    sbc l
    ld l, [hl]
    di
    ld a, a
    db $FC
    rst $38
    ld bc, $3300
    ld bc, $33FF
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $28
    db $DD
    sbc a
    ld l, a
    ccf
    rst $18
    ldh [$3F], a
    sbc $ED
    ld a, $DF
    cp $3F
    cp b
    rst $18
    call nz, $FCFF
    rst $38
    jr @+$01

    add b
    nop
    add b
    add b
    ld b, c
    ld b, b
    ld h, e
    ld h, b
    ld a, a

jr_022_66C9:
    ld a, $F0
    ld b, b
    ret z

    nop
    adc b
    nop
    add b
    inc bc
    add b
    add e
    ld b, b
    ld b, a
    ld h, b
    ld h, a
    ld a, b
    ccf
    ldh a, [rBGP]
    ret z

    rlca
    adc b
    rlca
    add hl, bc
    add hl, bc
    rra
    ld e, $32
    jr nz, jr_022_66C9

    ld b, b
    pop bc
    add b
    ld h, b
    ld h, b
    jr nz, jr_022_66EE

jr_022_66EE:
    stop
    ldh a, [$63]
    db $10
    rlca
    adc b
    rlca
    ld a, b
    ld l, a
    ldh [$87], a
    ld b, b
    inc bc
    add b
    inc bc
    add b
    ld bc, $1003
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    ld c, $AC
    ld e, $5A
    inc a
    ld a, d
    inc a
    ld [hl], l
    jr c, jr_022_6754

    nop
    ld bc, $0000
    nop
    inc c
    ld b, $2C
    ld b, $0F
    ld b, $96
    rrca
    ld c, $9F
    adc l
    ld e, [hl]
    jp nc, $000C

    nop
    xor e
    ld [hl], b
    inc [hl]
    ld a, b
    ld e, d
    inc a
    ld e, l
    ld a, $6E
    rra
    ld [hl], $0F
    add hl, de
    ld b, $0F
    nop
    ld c, c
    nop
    ld b, b
    ld [$0849], sp
    ld d, b
    add hl, bc
    sbc b
    ld c, c
    sbc l
    ld c, b
    ret c

    inc c
    call nc, $AB0C
    ld [hl], b
    inc [hl]
    ld a, b

jr_022_6754:
    ld e, d
    inc a
    ld e, l
    ld a, $6E
    rra
    ld [hl], $0F
    add hl, de
    ld b, $0F
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, [bc]
    dec b
    dec d
    dec bc
    dec de
    rlca
    rla
    rrca
    ld [de], a

jr_022_676F:
    rrca
    nop
    nop
    nop
    nop
    db $FC
    nop
    ld b, $F8
    di
    inc c
    ld hl, sp-$09
    db $FC
    ei
    ei
    inc b
    add hl, hl
    rla
    inc [hl]
    dec bc
    ld [hl], a
    ld [$13ED], sp
    swap a
    sub h
    ld l, a
    or e
    ld c, h
    db $FC
    inc bc
    rst $30
    ei
    ret nz

    dec a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    ld a, e
    rlca
    dec sp
    rlca
    ld a, e
    rlca
    ld a, l
    inc bc
    ld [hl], $09
    ld a, [hl-]
    inc b
    ld a, [de]
    inc b
    ld e, $00
    add b
    ret nz

    add b
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
    nop
    nop
    nop
    ld [$0C04], sp
    nop
    inc c
    nop
    inc e
    nop
    jr @+$06

    inc a
    nop
    inc [hl]
    ld [$1068], sp
    ld c, b
    jr nc, jr_022_682B

    jr nz, @+$5A

    jr nz, jr_022_676F

    ld h, b
    sbc b
    ld h, b
    sbc h
    ld h, b
    or [hl]
    ld c, b
    xor $18
    xor d
    ld e, h
    db $ED
    ld e, $ED
    ld e, $6E
    rra
    ld h, [hl]
    rra
    jr nc, jr_022_67FB

    ld sp, $0E0E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_67FB:
    nop
    nop
    nop
    nop
    nop
    rst $30
    rrca
    rst $28
    rra
    ld e, a
    cp a
    ld e, a
    cp a
    rst $18
    cp a
    rst $28
    sbc a
    xor a
    rst $18

jr_022_680E:
    ld d, e
    rst $28
    or $F9
    ei
    db $FC
    db $FD
    cp $FD
    cp $FD
    cp $FA
    db $FD
    push af
    ei
    jp hl


    or $9B
    ldh [$B0], a
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    or h

jr_022_682B:
    ret nz

    jr jr_022_680E

    rst $38
    nop
    inc a
    inc bc
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    jr nc, jr_022_6849

    ld h, c
    rra
    adc $3F
    sub e
    ld a, h
    rrca
    nop
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    inc bc

jr_022_6849:
    ld h, a
    ld bc, $0861
    ld h, [hl]
    rrca
    ld h, a
    ld h, b
    rra
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    dec e
    ccf
    inc bc
    dec de
    ld h, a
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    nop
    ld b, $F8
    nop
    nop
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    nop
    rrca
    nop
    rst $28
    rlca
    ld c, a
    and a
    rrca
    and a
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    ldh [rP1], a
    rst $28
    ret nz

    db $E4
    set 4, b
    set 4, b
    rst $08
    ldh [$CF], a
    ldh [$CF], a
    ldh [$CF], a
    rlca
    nop
    inc c
    inc bc
    jr c, jr_022_68A6

jr_022_68A6:
    ld b, l
    ccf
    jr nz, jr_022_68EA

    rst $10
    rrca
    xor a
    rra
    ret nc

    ld a, a
    cp $00
    inc sp
    db $FC
    add hl, bc
    ld b, $C6
    pop af
    inc de
    inc c
    and h
    jp nz, $F8E3

    dec e
    cp $00
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    and b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    ld a, [bc]
    add $55
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    db $EC
    inc b
    jp c, $00C0

    ld b, b
    jr nc, jr_022_68E5

jr_022_68E5:
    ld [$3070], sp
    add b
    ld a, b

jr_022_68EA:
    ld [$F4F0], sp
    nop
    ld c, $00
    rl h
    cp [hl]
    nop
    ld b, b
    nop
    ld l, [hl]
    inc c
    nop
    sbc [hl]
    sub b
    ld c, a
    xor $00
    ld b, b
    nop
    sbc b
    ld h, a
    rst $20
    jr jr_022_6976

    rrca
    inc c
    inc bc
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    jr c, jr_022_690E

jr_022_690E:
    ret nc

    jr nz, @+$14

    db $ED
    push hl
    dec de
    set 6, a
    dec de
    rst $20
    db $EB
    rla
    ld [hl], l
    dec bc
    ld e, $21
    ld h, e
    inc e
    inc c
    di
    or $F9
    ei
    db $FC
    ei
    db $FC
    db $F4
    ei
    rst $08
    ldh a, [$78]
    add a
    adc $3F
    ld b, [hl]
    ld hl, sp+$1C
    ldh [rSVBK], a
    add b
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ld d, b
    and b
    ld b, $F8
    nop
    nop
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    db $FC
    inc bc
    db $FC
    rst $38
    nop
    nop
    nop
    rst $08
    nop
    nop
    nop
    rrca
    nop
    ld h, d
    ld bc, $0078
    ld h, e
    inc e
    ld h, b
    rrca
    ld [hl], b
    rrca
    rst $38
    nop
    ld [bc], a
    nop
    cp $00
    ld b, $F0
    ld l, $10
    adc $00
    ld b, $F0
    ld c, $F0
    rst $38
    nop
    ld [bc], a
    nop
    cp $00

jr_022_6976:
    ld b, $F0
    ld c, $F0
    ld b, $F8
    ld b, $F0
    ld c, $F0
    rrca
    rst $20
    rrca
    rst $20
    ld c, a
    and a
    rrca
    and a
    rrca
    rst $20
    add sp, $07
    rst $28
    nop
    rrca
    nop
    ldh [$CF], a
    ldh [$CF], a
    db $E4
    set 4, b
    set 4, b
    rst $08
    cpl
    ret nz

    rst $28
    nop
    ldh [rP1], a
    ld bc, $0100
    nop
    nop
    nop
    rra
    nop
    ld a, a
    rra
    add e
    ld a, a

jr_022_69AC:
    ret nz

    ccf
    dec a
    ld [bc], a
    cp a
    ld a, a
    ld h, b
    ldh [$4C], a
    call z, $0080
    ld b, b
    ret nz

    jr nc, jr_022_69AC

    daa
    rst $20
    ret z

    rst $08
    add b
    nop

jr_022_69C2:
    add d
    ld a, h
    ld a, l
    nop
    dec bc
    nop
    dec c
    ld [bc], a
    ld b, $03
    ld h, $03
    dec h
    inc bc
    jp z, $BC14

    nop
    ld b, b
    nop
    ld l, [hl]
    inc c
    ld bc, $909E
    ld c, a
    cpl
    nop
    ld b, $00
    dec [hl]
    add b
    ld a, [bc]
    add $55
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    xor $04
    db $DB
    dec [hl]
    add b
    ld a, [bc]
    add $55
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    xor $04
    db $DB
    jr nz, jr_022_69C2

    ld h, e
    add b
    ld b, [hl]
    add c
    push bc
    inc bc
    ld l, [hl]
    add e
    ld a, [$C407]
    cp a
    ld a, e
    rst $38
    adc a
    ld [hl], b
    or c
    ld c, [hl]
    ld l, [hl]
    sbc a
    rst $18
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    ld l, a
    sbc a
    dec e
    cp $B6
    ld a, c
    call $7A32
    add l
    or l
    set 3, e
    rst $20
    db $D3
    rst $28
    sbc c
    rst $20
    ld sp, hl
    nop
    rra
    ldh [$F6], a
    add hl, bc
    add hl, bc
    or $F4
    ei
    ld a, [$F9FD]
    cp $F2
    db $FD
    rrca
    rst $20
    rrca
    rst $20
    ld c, a
    and a
    ld c, $A6
    ld c, $E6
    ld [$E904], a
    nop
    rlca
    nop
    ldh [$CF], a
    and b
    rst $08
    ld h, h
    ld c, e
    ld h, b
    bit 4, b
    rst $08
    xor a
    ld b, b
    rst $28
    nop
    ldh [rP1], a
    rrca
    nop
    ld l, a
    rlca
    ld c, a
    daa
    rrca
    daa
    rrca
    ld h, a
    rrca
    ld h, a
    rrca
    ld h, a
    rrca
    ld h, a
    ldh [rP1], a
    xor $C0
    db $E4
    jp z, $CAE0

    ldh [$CE], a
    ldh [$CE], a
    ldh [$CE], a
    ldh [$CE], a
    nop
    nop
    ld b, b
    ld b, b
    jr @+$1A

    ld h, b
    ld h, b
    xor d
    xor d
    ld a, b
    ld [hl], b
    ld a, h
    add sp, -$06
    add b
    ldh [$08], a
    ld l, b
    adc h
    ret nc

    inc [hl]
    and b
    ld l, b
    ld l, b
    db $E4
    ld d, b
    ldh [rHDMA4], a
    ldh [$A0], a
    ret nz

    dec bc
    rla
    sub a
    ld [$170B], sp
    and a
    ld [$07B3], sp
    cp b
    nop

jr_022_6AAC:
    cp a
    nop
    cp a
    nop
    halt
    ld bc, $205B
    ld c, h
    jr nc, jr_022_6B0E

    jr c, jr_022_6AE5

    rra
    cpl
    rra
    scf
    rrca
    dec de
    rlca
    sbc a
    nop
    sbc b
    rlca
    sub e
    rrca
    rrca
    nop
    pop hl
    inc bc
    jr jr_022_6AAC

    db $EC
    ldh a, [$F4]
    ld hl, sp-$54
    ld bc, $6350
    xor d
    ld e, c
    db $DB
    jr nz, jr_022_6B4A

    nop
    adc d
    nop
    ld sp, $2077
    db $DB
    dec [hl]

jr_022_6AE1:
    add b
    ld a, [bc]
    add $55

jr_022_6AE5:
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    xor $04
    db $DB
    ld [hl+], a

jr_022_6AF1:
    ld e, b
    ld e, b
    jr nz, jr_022_6AF1

    nop
    nop
    nop
    ld d, b
    inc e
    adc b
    ld [hl], $7C
    nop
    nop
    ldh [$0C], a
    di
    ld a, $C1
    rst $38
    ld a, b
    adc a
    adc h
    rrca
    add hl, bc
    ld e, $1E
    ld h, a
    ld h, h

jr_022_6B0E:
    add e
    add e
    jr nc, jr_022_6AE1

    ld a, a
    sub b
    ldh a, [$2F]
    call z, $8743
    add b
    inc e
    dec de
    rst $38
    di
    inc c
    inc c
    inc a
    jp $14EB


    db $F4
    dec bc
    dec de
    db $E4
    inc a
    di
    rst $08
    ld c, h
    inc bc
    ld [bc], a
    ld d, a
    ld d, l
    rlca
    ld hl, sp-$01
    inc bc
    ld d, $EA
    xor $16
    inc e
    db $EC
    cp $1C
    db $E3
    ld [c], a
    ld [$0F08], sp
    ld h, a
    rrca
    ld h, a
    ld c, a
    daa
    rrca
    daa
    rrca
    ld h, a

jr_022_6B4A:
    ld l, b
    rlca
    ld l, a
    nop
    rrca
    nop
    ldh [$CE], a
    ldh [$CE], a
    db $E4
    jp z, $CAE0

jr_022_6B58:
    ldh [$CE], a
    ld l, $C0
    xor $00
    ldh [rP1], a

jr_022_6B60:
    nop
    nop
    nop
    nop
    ld [$0F00], sp
    nop
    dec bc
    inc b
    inc c
    inc bc
    rlca
    nop
    jr jr_022_6B70

jr_022_6B70:
    nop
    nop
    nop
    nop
    jr nz, jr_022_6B76

jr_022_6B76:
    ldh [rP1], a

jr_022_6B78:
    and b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    jr nc, jr_022_6B80

jr_022_6B80:
    rra
    nop
    ld d, a
    rrca
    ld d, b
    rrca
    jr @+$09

    rrca
    nop
    nop
    nop
    rrca
    nop
    ld [$F007], sp
    nop
    sub $E0
    ld d, $E0
    jr nc, jr_022_6B58

    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    jr nz, jr_022_6B60

    rra
    nop
    rst $10
    rrca
    ld d, b
    adc a
    jr @+$09

    rrca
    nop
    nop
    nop
    rrca
    nop
    ld [$F007], sp
    nop
    rst $10
    ldh [rNR14], a
    db $E3
    jr nc, jr_022_6B78

    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    jr nz, jr_022_6B80

    dec de
    rlca
    dec c
    inc bc
    ld c, $01
    rlca
    nop
    ld bc, $6000
    nop
    ld l, h
    nop
    ld l, b
    ld b, $23
    ld e, b
    ld d, c
    jr nz, jr_022_6BD9

    nop
    xor e
    inc b
    ld l, b

jr_022_6BD9:
    sub d
    sub h
    ld c, b

jr_022_6BDC:
    ld c, d
    inc h
    add c
    db $10
    ret z

    inc d
    cp d
    nop
    ld bc, $5504
    ld [bc], a
    xor b
    ld b, e
    ld d, $A0
    jr nz, jr_022_6C3E

    ld a, [de]
    nop
    ld [hl], b
    ld [$A408], sp
    ret nz

    jr nz, @+$32

    nop
    add b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_6C03:
    nop
    ld b, b
    ld a, [hl+]
    ld hl, $C618
    nop
    db $10
    rst $20
    xor d
    pop af
    ld h, h
    add e
    nop
    nop
    ld b, b
    nop

jr_022_6C14:
    nop
    ld h, b
    ld d, b
    ld a, [hl-]
    add b
    inc e
    jr nz, jr_022_6BDC

    inc d
    ld [c], a
    xor b
    add $00
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_6C28

jr_022_6C28:
    ret nz

    nop
    nop
    ld b, b
    ld [$4410], sp
    nop
    sbc b
    nop
    ld b, c
    ld a, $50
    ccf
    ld hl, $C618
    nop
    db $10
    rst $20
    xor d
    pop af

jr_022_6C3E:
    ld h, h
    add e
    sbc b
    nop
    ld b, c
    ld a, $50
    ccf
    ld hl, $C618
    nop
    db $10
    rst $20
    xor d
    pop af
    ld h, h
    add e
    db $10
    ld [c], a
    jr z, jr_022_6C14

    add b
    nop
    ld b, h
    jr nc, jr_022_6C03

    ld a, b
    add b
    ld a, b

jr_022_6C5C:
    ld b, b
    inc [hl]
    add b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec e
    inc e
    ld a, $2A
    rst $18
    ld b, e
    ld a, a
    jr jr_022_6C5C

    ld d, b
    ret c

    daa
    nop
    nop
    inc b
    inc b
    dec d
    ld de, $4878
    call c, $E724
    db $DB
    ld sp, hl
    ld b, $0C
    di
    inc b
    inc bc
    ld [$6B00], sp
    inc b
    ld l, b
    rlca
    ld l, b
    rlca
    ld l, h
    inc bc
    ld h, a
    nop
    ld l, b
    nop
    ld b, b
    add b
    jr nz, jr_022_6C94

jr_022_6C94:
    xor [hl]
    ld b, b
    ld l, $C0
    ld l, $C0
    ld l, [hl]
    add b
    adc $00
    ld a, [hl+]
    inc b
    inc b
    inc bc
    ld c, b
    nop
    db $EB
    inc b
    add sp, $07
    add sp, $07
    db $EC

jr_022_6CAB:
    inc bc
    rst $20
    nop
    xor b
    ld b, b
    ld b, b
    add b
    dec h
    nop
    xor a
    ld b, b
    cpl
    ret nz

    cpl
    ret nz

    ld l, a
    add b
    rst $08
    nop
    ld a, [hl+]
    dec b
    db $F4
    ld hl, sp-$0B
    ld hl, sp-$0B
    ld hl, sp+$69
    ldh a, [$93]
    ld h, b
    rst $20
    nop
    rrca
    nop
    inc a
    inc bc
    ld l, a
    inc b
    ld c, h
    daa
    ld l, e
    rlca
    ld e, a
    jr nz, jr_022_6D31

    daa
    ld d, a
    cpl
    ld d, b
    cpl
    ld c, a
    jr nc, jr_022_6CE1

jr_022_6CE1:
    nop
    nop

jr_022_6CE3:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc

jr_022_6CED:
    inc bc

jr_022_6CEE:
    db $10
    dec c
    nop
    nop
    nop
    nop
    rra
    nop
    rst $20
    rra
    rra
    ccf
    nop

jr_022_6CFB:
    rst $18
    rst $08
    ldh [rNR41], a
    ret nz

    ld [$4010], sp
    ccf
    ld b, d
    ccf

jr_022_6D06:
    sub c
    nop
    ld a, [hl+]
    call nz, $E609
    inc d
    db $E3
    inc hl
    pop af
    ld sp, $CE00
    nop
    ld [bc], a
    db $FC
    ld e, d
    inc a
    ld hl, $5800
    add a
    jr nz, jr_022_6CED

    ld a, [hl+]
    rst $00
    add b
    nop
    ld b, b
    inc [hl]
    add b
    ld a, b
    xor d
    ld a, b
    ld b, h
    jr nc, jr_022_6CAB

    nop
    jr z, jr_022_6CEE

    db $10
    ld [c], a
    dec d

jr_022_6D31:
    db $E3
    jr z, jr_022_6CFB

    add h
    inc bc
    ld b, c
    jr c, jr_022_6CE3

    ld a, h
    nop
    ld b, [hl]
    add b
    stop
    nop
    xor b
    add $14
    ld [c], a
    jr nz, jr_022_6D06

    add b
    inc e
    ld d, b
    ld a, [hl-]
    nop
    ld h, b
    ld b, b
    nop
    nop
    nop
    ld b, h
    nop
    ld [$0010], sp
    ld b, b
    ret nz

    nop
    jr nz, jr_022_6D5A

jr_022_6D5A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop

jr_022_6D6E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    rra
    jr @+$6D

    inc b
    ld l, h
    inc bc
    ld d, a
    jr nz, jr_022_6DCF

    jr nc, jr_022_6DE9

    rra
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    xor [hl]
    ld b, b
    ld l, d
    add h
    jp nc, $220C

    inc e
    ld b, $F8
    nop
    nop
    cp $00
    cp $00
    ld l, e
    add h
    inc l
    jp $E017


    ld [$00F0], sp
    rst $38
    nop

jr_022_6DAB:
    nop
    rst $38
    nop
    rst $38
    nop
    xor l
    ld b, d
    ld l, b
    add a
    ret nc

    rrca
    jr nz, jr_022_6DD7

    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b

jr_022_6DC2:
    ld a, [bc]
    add $55
    sbc d
    db $DB
    inc b
    adc [hl]
    nop
    ld d, c
    nop
    adc h
    db $EC
    inc b

jr_022_6DCF:
    jp c, $3F40

    ld a, a
    nop
    ld b, b
    ccf
    ld e, a

jr_022_6DD7:
    ccf
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    inc l
    ld e, $2C
    ld e, $5A
    inc a
    ld b, h
    jr c, jr_022_6D6E

jr_022_6DE9:
    ld b, b
    add c
    jr c, @+$16

    ld a, b

jr_022_6DEE:
    or l
    ld a, b
    adc a
    nop
    ld h, b
    rra
    ret nz

    ccf
    adc a
    ld [hl], b
    cp b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    jr z, jr_022_6DC2

    and h
    ld b, b
    sub h
    ld h, b
    ld c, b
    jr nz, jr_022_6E59

    jr nz, jr_022_6E63

    jr nz, jr_022_6E5D

    jr nz, jr_022_6E57

    nop
    add hl, de
    nop
    add d
    ld a, h
    ld a, [bc]
    db $FC
    add h
    jr jr_022_6E7C

    nop
    ld [$55E7], sp
    adc a
    ld h, $C1
    add b
    nop
    ld b, b
    inc [hl]
    add b
    ld a, b
    xor d
    ld a, b
    ld b, h
    jr nc, jr_022_6DAB

    nop
    jr z, jr_022_6DEE

    db $10
    ld [c], a
    add hl, hl
    ld b, b
    ld b, b
    add b
    sbc a
    rrca
    db $10
    rrca
    sbc a
    nop
    nop
    ld bc, HeaderNewLicenseeCode
    dec b
    nop
    ld l, [hl]
    nop
    ld [bc], a
    ld bc, $F0F9
    ld a, [bc]
    ldh a, [$F8]
    nop
    ld bc, $2280
    add b
    and e
    nop
    add hl, hl
    ld b, b
    ld b, b
    add b
    add a
    nop
    inc b

jr_022_6E57:
    nop
    add h

jr_022_6E59:
    nop
    inc b
    nop
    ld b, h

jr_022_6E5D:
    nop
    inc b
    nop
    ld l, [hl]
    nop
    ld [bc], a

jr_022_6E63:
    ld bc, $00E1
    ld [hl+], a
    nop
    jr nz, jr_022_6E6A

jr_022_6E6A:
    ld hl, $2200
    nop
    inc hl
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    ld bc, $0181

jr_022_6E7C:
    add c
    ld bc, $018F
    rst $38
    nop
    ld bc, $1100
    inc e
    ld de, $F11C
    inc e
    ld sp, $31DC
    call c, $DC31
    nop
    nop
    nop
    ld a, a
    rra
    ld a, a
    ld [hl], $7F
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld [hl], $7F
    nop
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

jr_022_6EAB:
    rrca
    ld e, a
    ld d, b
    jr c, jr_022_6ED7

    nop
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
    add sp, $28
    ld [hl], d
    sub d
    jp z, $BC14

    nop
    ld b, b
    nop
    ld l, [hl]
    inc c
    ld bc, $909E
    ld c, a
    cpl
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_6ED7:
    nop
    nop
    nop
    and b
    and b
    reti


    reti


    cp e
    cp e
    sub h
    ld a, b
    cp l
    ld a, b
    sbc d
    ld a, h
    ld d, c
    cp b
    ld b, d
    scf
    daa
    rrca
    rlca
    ld c, a

jr_022_6EEE:
    ld [$0027], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    add b
    ldh [rTAC], a
    sbc b
    jr nz, jr_022_6F7F

    adc h
    nop
    ld [hl], e
    nop
    ld b, b
    ccf
    ld e, d
    inc a
    add h
    nop
    ld a, [de]
    pop hl
    inc b
    di
    ld d, h
    db $E3
    add hl, de
    nop
    add d
    ld a, h
    ld a, [bc]
    db $FC
    add h
    jr jr_022_6F7C

    nop
    ld [$55E7], sp
    adc a
    ld h, $C1
    add b
    nop
    ld b, b
    inc [hl]
    add b
    ld a, b
    xor d
    ld a, b
    ld b, h
    jr nc, jr_022_6EAB

    nop
    jr z, jr_022_6EEE

    db $10
    ld [c], a
    call nz, $8400
    nop
    add h
    nop
    ld b, h
    nop

jr_022_6F38:
    add h
    nop
    ld b, a
    nop
    add b
    nop
    ld d, [hl]
    add b
    dec h
    nop
    ld hl, $2300
    nop
    ld hl, $2100
    nop
    pop hl
    nop
    ld [bc], a
    nop
    sub [hl]
    ld bc, $00C5
    add h
    ld bc, $0180
    ld e, a
    nop
    sbc a
    rrca
    ld d, b
    rrca
    add b
    nop
    ld d, [hl]
    add b
    and l
    nop
    ld hl, $0380
    add b
    ld sp, hl
    nop
    ld sp, hl
    ldh a, [$09]
    ldh a, [rSC]
    nop
    sub [hl]
    ld bc, $058B
    adc e
    dec b
    xor e
    dec b
    xor e
    dec h
    xor e
    dec h
    xor e
    dec h

jr_022_6F7C:
    add b
    nop
    rst $38

jr_022_6F7F:
    nop
    ld sp, $31DC
    call c, $DC31
    ld sp, $31DC
    call c, $DC31
    ld bc, $FF00
    nop
    rra
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    ld h, b
    rra
    ld b, b
    ccf
    ld h, b
    rra
    ld a, a
    nop
    nop
    nop
    inc e
    inc de
    ld a, [hl-]
    dec h
    ld [hl], b
    ld c, a
    ld a, a
    jr z, jr_022_6F38

    add a
    jr c, jr_022_6FD4

    ld b, b
    ld b, b
    nop
    nop
    jr z, @-$26

    inc e
    db $E4
    ld a, [hl]
    sub d
    db $FC
    ld c, h
    or b
    or b
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    nop
    nop
    db $D3
    jr z, @+$7F

    nop
    ld [bc], a
    nop
    ld [hl], $30
    nop
    ld a, c
    add hl, bc
    ld [hl], d
    jr nc, jr_022_6FCE

jr_022_6FCE:
    nop
    nop
    cp a
    cp a
    ld a, a
    ld a, b

jr_022_6FD4:
    rst $38
    ldh [$FE], a
    ld bc, $A758
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    ld [hl-], a
    ld [de], a
    ld e, b
    ld [$0C0C], sp
    ld e, $06
    ld b, a
    ld bc, $0003
    inc c
    nop
    nop
    ld a, a
    rst $38
    rra
    rst $38
    add b
    ld a, a
    jr c, jr_022_6FFF

    nop
    ret nz

    ret nz

    rst $38
    inc e
    ld a, a
    nop

jr_022_6FFF:
    nop
    add sp, $00
    add sp, $00
    xor b
    ld b, b

Call_022_7006:
    db $10
    db $EC
    db $10
    db $EC
    db $10
    xor $D7
    add sp, -$08
    nop
    ld [$1800], sp
    nop
    jr z, jr_022_7026

    inc l
    db $10
    inc bc
    dec a
    ld hl, $391F
    ld h, $1F
    nop
    sbc a
    sbc d
    xor a
    xor l
    ld d, a
    ld d, a

jr_022_7026:
    inc bc
    inc bc
    or e
    ld [$8449], sp
    ld sp, $11C4
    db $E4
    push de
    xor d
    rst $38
    ld a, a
    ldh [$DF], a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    xor d
    ld d, l
    rst $30
    ld [$A060], sp
    ldh a, [$F0]
    inc b
    ld hl, sp+$01
    cp $02
    db $FD
    ld bc, $55FE
    xor d
    rst $28
    db $10
    dec e
    dec e
    inc c
    inc c
    ld [$0008], sp
    nop
    call $9210
    ld hl, $238C
    adc b
    daa
    ld [$0601], sp
    add b
    ld bc, $20C0
    ret nz

    ld bc, $C2E1
    ld [hl-], a
    pop af
    ld bc, $02A2
    ld b, a
    inc sp
    adc a
    ld b, a
    ccf
    ccf
    rst $38
    cp $FF
    ld sp, hl
    sbc $D6
    cp b
    xor b
    ld a, b
    ld l, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    ldh [$DF], a
    jr nz, jr_022_70CB

    jr nz, jr_022_70CD

    db $10
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    db $FC
    ld [bc], a
    db $FD
    ld bc, $02FE
    db $FD
    ld bc, $E2FE
    call z, $E2F1
    db $FC
    db $FC
    rst $38
    ld a, a
    rst $38
    rra
    ei
    dec bc
    db $FD
    dec e
    cp $2E
    rst $00
    ld a, $E3
    ld e, $E2
    ld e, $E1
    ld e, $21
    ld c, $01
    inc d
    nop
    ld [bc], a
    ld bc, $2000
    jr nz, jr_022_7113

    ld d, b
    ldh [$A0], a
    ldh [$80], a
    add sp, $28
    ld h, h

jr_022_70CB:
    ld b, h
    cp b

jr_022_70CD:
    jr z, jr_022_713F

    jr nc, jr_022_70D1

jr_022_70D1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $0A
    inc c
    inc d
    jr jr_022_7109

    jr nc, jr_022_7133

    ld h, b
    jr nz, @+$42

    ld b, b
    nop
    add b
    nop
    nop
    nop
    db $10
    jr nz, jr_022_7101

    inc h
    ret nc

    ret nz

    or h
    or h
    ld a, [c]
    ld h, d
    db $EC
    call z, Call_022_5ADA
    call nc, $FA44
    ld c, d
    ret nc

    ld b, b
    nop

jr_022_7101:
    nop
    nop
    nop
    or e
    or e
    inc l
    inc l
    rst $38

jr_022_7109:
    db $DB
    dec d
    rst $28
    ei
    dec b
    ld a, h
    add e
    ld b, $0F
    nop

jr_022_7113:
    rlca
    nop
    ld bc, $0002
    inc bc
    nop
    add c
    nop
    inc h
    jr nz, @+$34

    ld sp, $E805
    dec bc
    sub b
    ld d, a
    ld hl, $438F
    ld a, $06
    db $FC
    inc e
    ld [hl], c
    ld [hl], c
    and e
    inc hl
    rst $38
    xor d
    rst $38

jr_022_7133:
    ld e, a
    rst $38
    rst $38
    add b
    add b
    rra
    rra
    rst $38
    ret nz

    db $F4
    xor e
    xor b

jr_022_713F:
    ld d, a
    rst $38
    ld d, l
    rst $38
    ld a, [$FFFF]
    ld bc, $7801
    ld a, b
    ld a, a
    inc bc
    xor a
    push de
    sub l
    ld [$ADFD], a
    ld e, d
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_7160:
    ld b, c
    ld b, c
    and b
    and b
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [hl], b
    ld d, b
    ldh a, [$D0]
    ld [hl], b
    ld d, b
    ld hl, sp-$18
    ld a, h
    ld [hl], h
    rst $18
    db $D3
    cp a
    xor b
    ld a, a
    ld [hl], h
    db $10
    rrca
    rra
    nop
    db $10
    rrca
    jr nz, jr_022_71A7

    ld b, b
    ccf
    add b
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    ld [bc], a
    db $FD
    db $FD
    ld [bc], a
    inc bc
    rst $38
    inc bc
    db $FC
    rrca
    rst $30
    db $10
    ldh [rNR41], a
    ret nz

    jr nz, jr_022_7160

    cp $16
    rst $38
    cpl
    rst $38
    sub a
    rst $38

jr_022_71A7:
    ld l, a
    rst $38
    rra
    ei
    srl l
    dec l
    ld a, $2E
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
    rlca
    inc bc
    ld b, $03
    rlca
    ld bc, $0013
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $3A
    inc a
    ld [hl], h
    jr c, jr_022_71F9

    jr nc, jr_022_7223

    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add h
    ld [$0904], sp
    inc b
    add hl, bc
    inc b
    add hl, bc
    ld d, $20
    ld [de], a
    inc h
    ld d, $20
    ld [de], a
    inc h
    ld [de], a
    inc h
    sub d
    inc h
    sub d
    inc h
    sub l
    inc h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b

jr_022_71F9:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    jp hl


    dec c
    ld a, [c]
    inc d
    db $EB
    ld de, $29EE
    add $25
    jp nz, $8374

    push bc
    ld [bc], a
    dec a
    inc a
    cp [hl]
    ld a, $1E
    ld e, $8D
    inc c
    sub c
    ld [bc], a
    adc d
    inc b
    nop
    nop
    add a
    nop
    daa
    and [hl]
    daa

jr_022_7223:
    and l
    ld l, $AB
    cpl
    xor h
    ld c, [hl]
    ld c, e
    ld c, a
    ld c, h
    adc $49
    sbc l
    sbc d
    ret nz

    dec a
    ld b, d
    cp l
    add b
    ld a, a
    nop
    rst $38
    nop
    db $FD
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    add e
    db $FC
    add d
    ld a, l
    add c
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop

jr_022_7252:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1800], sp
    nop
    jr z, jr_022_7270

    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a

jr_022_7270:
    ld a, a
    ld l, b
    rst $38
    ldh a, [$7F]
    ld l, c
    rst $38
    or $7F
    ld a, c
    sbc $D6
    cp b
    xor b
    ld a, b
    ld l, b
    ret nz

    ccf
    cp a
    ld b, b
    ret nz

    rst $38
    ld b, b
    cp a
    ldh [$DF], a
    jr nz, @+$41

    jr nz, jr_022_72CD

jr_022_728E:
    db $10
    rrca
    jr nz, jr_022_7252

    ldh a, [rNR10]
    jr jr_022_728E

    inc c
    db $FC
    ld b, $FE
    rlca
    ld sp, hl
    inc bc
    db $FC
    rlca
    ld hl, sp+$1E
    ld d, $0F
    dec bc
    rrca
    dec bc
    rra
    rla
    ld [hl], $26
    ei
    ei
    db $FC
    inc l
    ld a, [$F852]
    ld [$10F0], sp
    ldh [rNR41], a
    pop bc
    ld b, b
    add b
    add h
    inc hl
    ld [$1046], sp
    add e
    ld a, h
    add sp, $30
    ld d, b
    ldh [$A1], a
    ld [bc], a
    ld de, $3192
    jp nc, $C221

    ld h, c

jr_022_72CD:
    and d
    pop bc
    ld b, d
    nop
    add hl, bc
    nop
    ld bc, $0904
    inc h
    ld c, c
    inc h
    ld c, c
    dec h
    ld c, c
    inc h
    ld c, b
    inc h
    ld c, c
    sub d
    ld hl, $2691
    and e
    inc l
    add a
    jr @-$6F

    jr nc, jr_022_730A

    ld h, c
    ld a, $C2
    ld a, h
    add h
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    ret nz

    ret nz

    adc c
    ld b, $13
    dec c
    ld [de], a
    inc c
    inc hl
    dec e
    daa
    dec de

jr_022_730A:
    ld h, $1A
    cpl
    rla
    ld h, a
    dec de
    adc a
    adc b
    dec c
    ld a, [bc]
    adc a
    adc b
    dec c
    dec bc
    adc c
    adc a
    adc e
    adc l
    set 1, l
    sbc d
    sub [hl]
    sbc [hl]
    sub c
    sbc l
    sbc d
    sbc [hl]
    sub c
    dec e
    ld [de], a
    inc e
    jr jr_022_7344

    jr jr_022_736F

    ld bc, $4318
    nop
    db $FD
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    ld b, d
    dec a
    nop
    nop
    ld a, a
    nop
    add c
    ld a, [hl]
    add h
    ld a, e

jr_022_7344:
    add b
    ld [hl], b
    rrca
    ld h, b
    inc hl
    ld c, a
    inc h
    ld c, a
    dec bc
    inc c
    ld l, [hl]
    ld [$A058], sp
    xor h
    ld d, b
    inc e
    nop
    add sp, $00
    add b
    ldh [rOBP0], a
    ldh [$A2], a
    ld h, b
    add sp, $22
    nop
    nop
    nop
    nop
    scf
    adc b
    add b
    call $F4C1
    pop bc
    db $F4
    add e
    db $EC
    rrca

jr_022_736F:
    sbc b
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    ld a, [$FFFF]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld l, c
    dec e
    dec e
    adc l
    dec c
    sub h
    ld b, h
    sbc b
    ld b, b
    sub b
    ld b, b
    sub h
    ld b, b
    sub b
    ld b, h
    jr z, jr_022_73D2

    ld d, b
    ld h, b
    and c
    jp nz, $8241

    pop af
    ld [hl], d
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    ld c, b
    db $10
    ld b, [hl]
    sub [hl]
    ld c, l
    adc a
    ld [de], a
    inc h
    ld [de], a
    inc h
    ld [de], a
    inc h
    ld [de], a
    inc h
    ld [de], a
    inc h
    sub d
    inc h
    sub d
    inc h
    add b
    ld hl, $845F

jr_022_73D2:
    dec sp
    adc h
    ld a, [hl]
    jr jr_022_742B

    jr c, @+$56

    jr c, jr_022_7403

    inc e
    ld a, [hl-]
    adc h
    sub a
    inc c
    ld l, b
    jr z, @+$72

    jr nc, jr_022_7405

    jr nz, jr_022_73E7

jr_022_73E7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4F00
    inc sp
    adc [hl]

jr_022_7403:
    halt
    dec e

jr_022_7405:
    push hl
    ld l, $D6
    rlca
    ei
    inc bc
    db $FD
    ld d, c
    xor [hl]
    ei
    inc b
    inc d
    inc e
    inc a
    inc h
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld h, $3A
    ld [hl], $2A
    or [hl]
    xor d
    or [hl]
    xor d
    nop
    ld e, e
    jr jr_022_7467

    ld e, b
    dec de
    ld b, e
    ld b, b
    inc bc
    inc bc
    db $10

Call_022_742B:
jr_022_742B:
    db $10
    ld sp, $3F31
    dec sp
    nop
    ld a, a
    ld d, h
    dec hl
    ld l, a
    ld [$1010], sp
    ccf
    ccf
    ld b, b
    ccf
    add b
    db $FD
    add d
    ld a, l
    adc [hl]
    ld l, b
    adc $28
    ld l, e
    ld [$0C04], sp
    ld c, b
    rlca
    daa
    ld b, b
    db $10
    ld h, b
    adc h
    ld [hl], b
    ldh [$2A], a

jr_022_7452:
    ldh [$2A], a
    xor b
    ld [hl+], a
    ld b, d
    ld h, b
    nop
    ldh [$E0], a
    nop
    nop
    nop
    jr jr_022_7460

jr_022_7460:
    daa
    and a
    daa
    and a
    cpl
    xor l
    cpl

jr_022_7467:
    xor l
    ld c, a
    ld c, c
    ld e, l
    ld e, e
    db $DD
    ld e, e
    sbc e
    sub l
    ld bc, $012C
    jr z, jr_022_749A

    dec b
    inc l
    inc l
    ld e, $1E
    ccf
    add hl, sp
    dec a
    inc sp
    inc sp
    dec l
    and b
    rla
    ret nc

    add hl, bc
    ld [$F184], a
    jp nz, Jump_022_607C

    ccf
    jr c, @-$70

    adc [hl]
    push bc
    call nz, $4490
    db $10
    call nz, Call_022_4410
    inc d
    nop
    sbc b
    add b

jr_022_749A:
    ret nz

    ret nz

    cp h
    call c, $B4CC
    jr z, jr_022_74ED

    ld hl, $2346
    ld c, h
    ld b, a
    ld e, b
    cpl
    db $10
    ccf
    ld hl, $929E
    cp h
    and h
    adc c
    ld [de], a
    sub h
    jr c, jr_022_7452

    ld a, $A7
    rra
    sbc c
    rlca
    ld c, $41
    daa
    ret nz

    ld [hl], b
    add b
    sub l
    ld a, [bc]
    dec sp
    ld b, $FE
    dec c
    di
    db $FC
    rst $20
    ld hl, sp+$0E
    ldh a, [$E0]
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    ld hl, sp+$38
    db $F4
    ld d, h
    ld hl, sp+$38
    db $F4
    db $F4
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ld a, [c]
    ld [de], a
    pop hl
    ld hl, $40C0
    add l
    add l
    rlca
    rlca
    dec bc

jr_022_74ED:
    ld a, [bc]
    ld b, $05
    ld a, c
    ld a, c
    db $FC
    adc h
    xor $D6
    sbc $A6
    call c, $98A4
    ld l, b
    inc c
    db $F4
    ld b, $FE
    rst $28
    xor h
    rst $08
    jp z, $8487

    inc de
    ld [de], a
    dec sp
    dec de
    ld a, e
    ld a, [bc]
    ld [hl], a
    ld d, l
    inc bc
    inc bc
    sub d
    sbc [hl]
    jp z, $EB46

    dec l
    bit 1, l
    sbc c
    sub [hl]
    jr c, jr_022_7553

    ld [hl], c
    ld c, [hl]
    ld l, a
    ld d, b
    ccf
    jr z, jr_022_7561

    dec [hl]
    rra
    inc d
    ld e, $1B
    adc a
    adc h
    rst $08
    ld c, [hl]
    rst $00
    ld b, l
    ld [c], a
    ld h, d
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp l
    and d
    ld e, l
    ld d, b
    xor a
    rst $38
    ret nc

    rst $38
    xor l
    rst $38
    rst $38
    add d
    ld a, l
    add l
    ld a, d
    adc d
    ld [hl], l
    add c
    cp $8A
    push af
    ld a, a
    ld [bc], a
    ld a, a
    dec [hl]
    ld a, a
    ld a, a
    inc l
    db $10
    ld [bc], a

jr_022_7553:
    inc a
    inc hl
    inc e
    ld hl, $391E
    ld h, $1F
    db $10
    rrca
    ld [$0707], sp
    cp e

jr_022_7561:
    and l
    or e
    xor l
    or e
    xor l
    ld [hl], $2A
    dec a
    inc a
    nop
    ld bc, $0124
    ld [$3B25], sp
    dec [hl]
    inc sp
    dec a
    dec de
    rla
    ld e, $1E
    adc h
    adc h
    ret z

    ld c, b
    ret nz

    ld b, b
    ldh [$60], a
    db $E4
    push hl
    db $E4
    push hl
    db $F4
    or l
    db $F4
    or l
    ld a, [c]
    sub d
    cp d
    jp c, $DABB

    reti


    xor c
    ld bc, $0302
    dec b
    ld [bc], a
    inc c
    rlca
    add hl, de
    ld c, $32
    ld e, $62
    inc a
    ld b, h
    ld a, h
    ld a, h
    cp b
    xor b
    ld [hl], b
    ld d, b
    pop hl
    and c
    ld b, d
    ld b, d
    dec bc
    dec bc
    rra
    rra
    ccf
    ccf
    nop
    nop
    inc l
    dec hl
    ld e, e
    ld d, h
    rst $30
    db $EB
    cp $C2
    cp $96
    rst $38
    ei
    rst $38
    rst $38
    nop
    nop
    rst $00
    dec sp
    db $E3
    call c, $2C33
    dec e
    ld [de], a
    rrca
    ld [$191F], sp
    rst $38
    rst $38
    nop
    nop
    cp b
    ld c, b
    ldh [rNR41], a
    ret nc

    ld d, b
    and b
    and b
    ret nz

    ret nz

    ldh a, [$F0]
    ld hl, sp-$08
    nop
    nop
    ldh a, [$F0]
    ld hl, sp-$18
    ld a, h
    ld l, h
    ld a, h
    ld b, h
    ld l, h
    ld d, h
    ld c, h
    ld [hl], h
    ld c, h
    ld [hl], h
    call c, $E3A4
    ld a, h
    rst $00
    ld a, b
    rst $00
    ld a, b
    add a
    ld a, b
    ld hl, sp+$00
    add a
    ld a, b
    jp $C77C


    ld a, b
    jp $BF3F


    ld a, a
    rst $38
    sbc a
    rst $28
    nop
    ld a, [bc]
    pop af
    ld hl, sp-$04
    ld bc, $F8FE
    nop
    db $D3
    db $EC
    sbc $EF
    rst $08
    sbc a
    cp a
    nop
    add b
    ccf
    sbc a
    ccf
    jr nz, jr_022_763D

    ld b, e
    nop
    add a
    ld a, b
    ld b, e
    ld a, h
    ld h, e
    ld a, h
    ld b, a
    ld a, b
    ld c, e
    ld [hl], h
    ld c, a
    ld [hl], b
    rrca
    ld [hl], b
    rra
    ld h, b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_022_767B

jr_022_763D:
    ld b, c
    db $FD
    inc bc
    ccf
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    adc a
    ld a, a
    ld [hl], b
    ldh a, [$80]
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    ccf
    call c, $F0FF
    ccf
    jr nz, jr_022_76DE

    ld h, b
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    ccf
    rst $38
    ld a, a
    nop
    nop
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38

jr_022_767B:
    ccf
    rst $38
    set 7, a
    cp a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    di
    rst $38
    add sp, -$01
    ld b, $3F
    ld c, b
    ld a, a
    jr nc, @+$01

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    stop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld e, $1F
    inc a
    ccf
    ld a, b
    ld a, [hl]
    pop af
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    rlca
    rst $38
    jr @-$46

    ld h, a
    ld h, b
    sbc a
    nop
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    ldh [$F7], a
    add hl, bc
    adc a
    ld [hl], c
    ld e, $E3
    dec b
    ld a, [$C503]
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    ld sp, hl
    or $FC
    adc e
    db $FC
    inc bc
    ld hl, sp+$07

jr_022_76DE:
    ldh [$1F], a
    rst $38
    nop
    jp nz, $833D

    ld a, h
    ld bc, $81FE
    ld a, [hl]
    sbc h
    ld a, a
    halt
    rst $30
    jp Jump_022_7FC2


    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$31
    ld [hl], b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $20
    ld a, b
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $18
    ldh [rVBK], a
    ld [hl], b
    daa
    jr c, jr_022_7739

    inc a
    ld [de], a
    inc e
    ld [de], a
    inc e
    inc d
    jr jr_022_7747

    jr nc, jr_022_7721

jr_022_7721:
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1F
    inc a
    ld e, $31
    inc a
    ld [hl], e
    db $FC
    db $E3
    ldh a, [$CF]
    ldh [$9F], a
    ret nz

    ld a, $80

jr_022_7739:
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [$0C], a
    cp $F0
    ld hl, sp+$00
    nop
    nop

jr_022_7747:
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc bc
    inc b
    rlca
    inc c
    rrca
    inc e
    rra
    inc a
    inc a
    ld a, e

jr_022_7758:
    ld a, b
    rst $20
    ret nz

    ld a, a
    ld hl, sp-$09

jr_022_775E:
    ld hl, sp-$74
    jp $843F


    ld a, h
    jr jr_022_775E

    jr nc, jr_022_7758

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    jr c, jr_022_77E9

    jr c, jr_022_77DB

    jr c, jr_022_77DD

    jr c, jr_022_77DF

    ld [hl], b
    rst $08
    ld b, b
    rst $38
    ld [hl], b
    adc a
    add b
    ld a, a
    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_022_778C:
    nop
    nop

jr_022_778E:
    nop
    nop

jr_022_7790:
    inc bc
    inc b
    inc bc
    inc b
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c

jr_022_779A:
    rlca
    inc c
    rlca
    inc c
    ld b, $0D
    ret z

    jr c, @-$6E

    ld [hl], b
    sub b
    ld [hl], b
    or b
    ld [hl], b
    jr nc, jr_022_779A

    jr nz, jr_022_778C

jr_022_77AC:
    jr nz, jr_022_778E

    jr nz, jr_022_7790

    sbc [hl]
    ld a, [hl]
    inc a
    ld a, [hl]
    jr c, jr_022_7832

    jr nc, jr_022_7830

    jr nc, jr_022_77EA

    db $10
    stop
    nop
    nop
    nop
    dec bc
    inc b
    nop
    rlca
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0000
    ld h, b
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    add b
    add b

jr_022_77DB:
    add b
    add b

jr_022_77DD:
    add b
    add b

jr_022_77DF:
    add b
    ld l, d
    db $10
    ld b, b
    ld [$10C0], sp
    and b
    ld b, b
    or h

jr_022_77E9:
    ld b, b

jr_022_77EA:
    jr z, jr_022_77AC

    ld [$58C0], sp
    sbc b
    and d
    ld d, b
    db $10
    add sp, $50
    xor b
    ld l, b
    sub h
    ld a, [$7C12]
    ld l, b
    sub b
    ld [de], a
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    dec sp
    ld e, $67
    inc a
    nop
    nop
    rrca
    nop
    dec a
    ld c, $FF
    nop
    rst $38
    jp $1FFC


    db $E3
    ld a, a
    adc a
    ei
    nop
    nop
    ld a, [hl]
    nop
    pop de
    ld a, [hl]
    cp $3D
    db $FD
    jp $FDBB


    ld a, a
    call nc, $80FF

jr_022_7830:
    nop
    nop

jr_022_7832:
    nop
    nop
    ldh [rP1], a
    dec de
    ldh [$87], a
    ld hl, sp-$08
    rst $20
    db $FC
    adc a
    rst $38
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc b
    ldh [$E4], a
    jr c, jr_022_788C

    ret nz

    ld c, h
    rst $30
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0306
    ld b, $03
    rst $08
    ld a, c
    sbc [hl]
    db $E3
    cp l
    rst $10
    ld a, $C7
    ld a, c
    rst $28
    ld a, e
    xor a
    ld a, e
    call $DEF7
    rra
    db $FC
    ccf
    ldh a, [$7F]
    add b
    rst $38
    ld b, b
    rst $38
    add c
    cp $03

jr_022_788C:
    cp $03
    db $FC
    rlca
    rst $38
    inc bc
    db $FC
    rra
    pop hl
    ld a, a
    add a
    rst $38
    ld e, a
    or $3F
    ld hl, sp-$01
    ret nc

    ld a, a
    ldh [$FE], a
    push bc
    ccf
    di
    rra
    ld a, [$90FF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    pop af
    ld c, [hl]
    add sp, -$41
    db $F4
    ld e, a
    db $FC
    rst $38
    rst $38
    cp a
    rst $38
    ld d, b
    ei
    daa
    ld h, b
    add b
    ret nc

    ld h, b
    ld a, b
    and b
    inc a
    ret nc

    sbc $E0
    rst $38
    nop
    rst $38
    rlca
    ld c, $F3
    nop
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
    db $FC
    ret nz

    ld a, a
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
    add b
    nop
    ld b, $03
    ld b, $03
    inc c
    rlca

jr_022_78F6:
    dec c
    rlca
    inc c
    rlca
    dec c

jr_022_78FB:
    rlca
    dec c
    rlca
    dec c
    ld b, $73
    sbc $F5
    sbc h

jr_022_7904:
    rst $28
    inc a
    rst $20
    cp h
    di
    cp b
    db $EB
    jr c, jr_022_78FB

jr_022_790D:
    jr c, jr_022_78F6

    jr nc, jr_022_790D

    rlca
    ei
    ld c, $B9
    rrca
    or $1C
    ld [hl], e
    ld e, $75
    jr jr_022_7904

    inc a
    ld l, e
    jr c, @-$3F

    add b
    ld a, a
    nop
    cp $00
    ei
    nop
    push af
    nop
    ld hl, sp+$00
    jp nc, $EA00

    ld [bc], a

jr_022_7930:
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop

jr_022_7936:
    cp a
    nop
    ld l, a
    nop
    adc a
    nop
    ld d, a

jr_022_793D:
    nop

jr_022_793E:
    cpl
    jr nz, jr_022_793D

    rrca
    ei
    rra
    xor $3E
    ld sp, hl
    jr c, jr_022_7930

    ld h, b
    rst $18
    ld b, b
    rst $10
    ret nz

    rst $28
    ret nz

    rlca
    ld sp, hl
    ld b, e
    db $FD

jr_022_7954:
    ld sp, $D93F
    rra
    ld l, l
    rrca
    ld [hl], a
    add a
    ei
    add d
    ld a, e
    ld [bc], a

jr_022_7960:
    inc e
    rst $38
    add a
    rst $38
    jp $A1FF


    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ldh a, [$9F]
    ld [hl], h
    rst $18
    ld h, b
    add b
    jr nc, jr_022_7954

    sub b
    ldh [$D0], a
    ld h, b
    ldh a, [$A0]
    ld [hl], b
    ret nz

    jr nc, jr_022_793E

    jr nc, jr_022_7960

    dec c
    ld b, $0D
    rlca
    rrca
    ld b, $0D
    rlca
    rrca
    ld b, $0F
    ld b, $1F
    rlca

jr_022_798E:
    ld l, a
    ld [de], a
    and $30
    rst $20
    ld sp, $31F5
    xor $38
    push af
    ld sp, $39ED
    or $30
    cp $38
    rst $30
    jr c, jr_022_798E

    jr nc, @-$0F

    jr c, jr_022_798E

    jr nc, @+$01

    jr nc, @-$0F

    jr nc, @-$07

jr_022_79AD:
    jr nc, jr_022_79AD

    jr c, jr_022_7936

    dec b
    jp nc, $AF12

    rrca
    push bc
    dec b
    scf
    rla
    xor [hl]
    ld l, $17
    rla
    sbc a
    rra
    ld c, a
    nop
    sub a
    add b
    ld c, a
    ld b, b
    add a
    add b
    or a
    and b
    rst $08
    ret nz

    adc a
    add b
    rla
    nop
    ld hl, sp-$31
    xor $C0
    and [hl]
    pop de
    db $E3
    reti


    or b
    db $EC
    ld e, a
    ld [hl], b
    rst $08
    ld a, a
    and b
    ccf
    ei

jr_022_79E1:
    inc bc
    dec de
    jp $0FFF


    rst $38
    rrca
    rst $30
    rra
    rst $38
    ccf

Jump_022_79EC:
    rst $18
    rst $38
    ccf
    rst $38
    jr jr_022_79E1

jr_022_79F2:
    ld c, $FF
    ld c, $FB
    add d
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    jr jr_022_79F2

    ld [$0CF0], sp
    ld hl, sp+$0C

jr_022_7A07:
    ld hl, sp+$04
    ld hl, sp+$06
    db $FC
    ld b, $FC
    ld b, $FC
    jr c, jr_022_7A12

jr_022_7A12:
    ld h, a
    jr @+$5E

    inc sp
    ld a, c
    scf
    ld a, a
    dec d
    ccf
    inc bc
    rst $38
    nop
    ld a, a
    nop
    rst $08
    inc sp
    sbc a
    ld [hl], e
    sbc a
    ld l, c
    cp a
    ld a, e
    rst $38
    ld l, c
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    ld c, $FF
    adc [hl]
    rst $38
    rst $00
    rst $38
    jp $38FF


    rst $38
    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $2F
    cpl
    adc e
    dec bc
    ld d, a
    rla
    dec b
    dec b
    ld a, [de]
    ld a, [bc]
    add e
    ld bc, $0424
    ret


    nop
    adc a
    add b
    ld c, a
    ld b, b
    xor a
    add b
    rrca
    nop
    rra
    nop
    rrca
    nop
    cp a
    nop
    ld e, a
    nop
    ld hl, sp+$3F
    push de
    rrca
    add sp, $09
    db $F4
    nop
    rst $08
    jr nc, jr_022_7A07

    ld [hl], e
    ret z

    ld [hl], a
    call c, Call_022_7F67
    rst $38
    sbc a
    db $DB
    cpl
    rrca
    ld e, e
    ld de, $03B7
    ld e, l
    add b
    ld [hl+], a
    call c, $DE21
    ld hl, sp-$01
    db $FC
    rst $38
    ld a, [$FEFF]
    cp a
    cp $FF
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    dec bc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $83
    cp $43
    cp $C3
    cp $D7
    ld a, [hl]
    ld a, a
    nop
    rlca
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
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $30
    nop
    db $E3
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    jp $C3FF


    rst $38
    ld bc, $01CF
    rlca
    nop
    ld bc, $B400
    nop
    jp hl


    nop
    db $FC
    nop
    db $EB
    add b
    rst $38
    add b
    db $FD
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [c]
    ld l, a
    call nc, $BB6F
    cpl
    sub $07
    rst $38
    rlca
    ld sp, hl
    inc bc
    db $FD
    ld bc, $00FF
    add hl, hl
    sbc $73
    sbc [hl]
    ld l, c
    sbc [hl]
    ld [hl], l
    sbc h
    ei
    jr @-$07

    db $10
    rst $28
    nop
    rst $38
    nop
    adc a
    ld [hl], l
    rlca
    ld hl, sp-$79
    ld sp, hl
    rst $10
    ld hl, sp+$6F
    ld hl, sp-$41
    ld [hl], b
    rst $38
    ld h, b
    rst $30
    nop
    rst $28
    db $FC
    rst $38
    db $FC
    rst $30
    ld a, h
    cp $58
    rst $38

jr_022_7B39:
    jr c, jr_022_7B39

    inc d
    db $FC
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
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
    rst $38
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
    cp $01
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
    nop
    nop
    ldh [$1F], a
    ret nz

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
    rlca
    ld hl, sp-$61
    ld h, e
    db $FC
    inc c
    ldh a, [rNR10]
    ld a, [c]
    ld [de], a
    db $EC
    inc l
    or $36
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    ldh [$1F], a
    jr jr_022_7BBE

    inc b
    ld c, a
    ld c, h
    inc sp
    ld [hl-], a
    xor a
    xor [hl]

jr_022_7BBE:
    rst $18
    jp c, $F00F

    rst $38
    rlca
    ld hl, sp+$18
    ld [$F72A], a
    scf
    bit 1, d
    rst $38
    ld a, h
    rst $38
    inc l
    add b
    ld a, a
    db $FD
    ld [bc], a
    rst $38
    sbc b
    rst $20
    and h
    rst $20
    inc h
    db $D3
    ld d, d
    db $EB
    ld l, d
    rst $30
    or $01
    cp $FB
    inc b
    rst $38
    ld sp, $4CCF
    jp $EB42


    ld l, e
    push af
    dec [hl]
    rst $38
    ccf
    ld hl, sp+$07
    rst $38
    ldh a, [rIF]
    inc c
    sub a
    sub [hl]
    ei
    ld a, d
    rst $38
    cp [hl]
    rst $28
    db $EC
    ld a, a
    ld c, h
    ei
    dec hl
    cp $16
    rst $38
    ld c, a
    rst $38
    inc bc
    rst $18
    ld b, b
    rst $28
    ld b, b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    db $EC
    rst $38
    ret c

    rst $38
    ld h, b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    jr nc, @+$01

    db $10
    rst $38
    ld b, $FF
    inc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $28
    xor $F7
    halt
    rst $38
    ld e, h
    rst $38
    ld [hl-], a

Call_022_7C38:
    rst $38
    inc c
    rst $38
    nop

Jump_022_7C3C:
    rst $38
    nop
    rst $38
    nop
    rst $30
    rla
    rst $38
    ccf
    ei
    dec de
    rst $38
    rla
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    nop
    cp a
    cp b
    ld a, a
    inc h
    rst $38
    ret z

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add d

jr_022_7C5C:
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1F], a
    db $FC
    inc bc
    rst $38
    jr c, jr_022_7C5C

    ld l, $F9
    add hl, sp
    nop
    nop
    nop
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
    db $EC
    ld c, h
    ld a, [$FF1A]
    dec bc

jr_022_7C86:
    cp $44
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    ldh [$9F], a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ldh [$DF], a
    ldh a, [rVBK]
    db $FC
    inc bc
    rst $38
    jr c, jr_022_7C86

    and $FF
    ld bc, $00FF
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    push de
    push de
    ld a, [$FFBA]
    ld d, a
    rst $38
    nop
    ld sp, hl
    adc b
    rst $30
    ld d, $FF
    ld [$00FF], sp
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ldh [$1F], a
    ld hl, sp+$47
    db $FC
    inc sp
    rst $08
    ld c, b
    rst $20
    and $FF
    inc b
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    inc b
    rst $38
    ld bc, $00FF
    rst $38
    nop
    pop bc
    pop bc
    ld l, e
    ld l, e
    rst $10
    ld d, [hl]
    rst $28
    xor h
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    db $FC
    inc bc
    cp $31
    xor $69
    rst $00
    ld b, h
    db $D3
    ld d, d
    db $EB
    ld l, d
    db $FD
    ld e, l
    ei
    inc sp
    rst $38
    ld a, [bc]
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
    db $10
    rst $38
    inc e
    di
    inc l
    rst $28
    ld e, h
    rst $38
    jr nc, @+$01

    nop
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09FE
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $20
    sbc $D3
    ld a, $E3
    ld a, [hl+]
    di
    sub d
    ld a, a
    call z, Call_022_643F
    rst $38

Jump_022_7D3D:
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    cp b
    ld e, a
    db $FC
    xor a
    db $FC
    rst $00
    cp $E7
    or [hl]
    db $E3
    ld c, d
    di
    ld [hl-], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_022_7D67:
    nop
    rst $38
    ld bc, $03FF
    rst $38
    nop
    rst $38
    nop
    ei
    ld a, [de]
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    ld h, b
    rst $38
    or b
    sbc a
    ld e, b
    rst $08
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc e
    di
    inc l
    rst $28
    ld e, h
    rst $38
    jr nc, @+$01

    nop
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09FE
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $20
    sbc $D3
    ld a, $E3
    ld a, [hl+]
    di
    sub d
    ld a, a
    call z, Call_022_643F
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    cp b
    ld e, a
    db $FC
    xor a
    db $FC
    rst $00
    cp $E7
    or [hl]
    db $E3
    ld c, d
    di
    ld [hl-], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03FF
    rst $38
    nop
    rst $38
    nop
    ei
    ld a, [de]
    rst $38
    ld b, $FF
    ld [bc], a
    rst $38
    ld h, b
    rst $38
    or b
    sbc a
    ld e, b
    rst $08
    add sp, -$01
    nop
    add b
    rst $38
    and b
    ld a, a
    ret nz

    ld a, a
    and b
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    and b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    and b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld b, a
    cp $2B
    ld a, [$F09F]
    cpl
    db $E4
    ld a, a
    ret nc

    ccf
    ret nz

    rst $38
    and b
    rst $38
    db $FC
    ld b, a
    db $F4
    cpl
    ld hl, sp-$61
    ldh a, [$2F]
    db $E4
    ld a, a
    ret nc

    ccf
    ret nz

    rst $38
    and b
    rst $38
    rst $38
    ld b, a
    cp $2B
    ld hl, sp-$61
    ldh a, [$2F]
    ld h, h
    rst $38

jr_022_7E3A:
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    sbc $77
    xor $73
    rst $38
    inc sp
    rst $38
    add hl, sp
    rst $28
    jr c, jr_022_7E3A

    inc a
    rst $28
    inc l
    rst $08
    ld a, h
    rra
    ld a, h
    rrca
    jr jr_022_7E64

    db $DD
    rst $10
    db $FD
    rst $38
    cp $FF
    ld d, $FF
    ld bc, $2BFE
    rst $00
    ld l, [hl]
    rst $00
    ld h, [hl]

jr_022_7E64:
    db $E3
    ld h, [hl]
    db $E3
    ld [hl], $F7
    ld a, $FF
    ld e, $FF
    inc c
    rst $38
    ld bc, $30FF
    rst $38
    add d
    rst $38
    push hl
    rst $38
    cp a
    sub $FB
    dec l
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    rst $38
    ld b, $FF
    sub h
    rst $38
    pop hl
    rst $38
    cp [hl]
    ld a, e
    rst $30
    ld c, h
    rst $38
    ld de, $00FF
    rst $38
    ei
    rrca
    rst $38
    xor a
    rst $38
    add $FF
    or d
    rst $28
    ld hl, sp+$5F
    rst $38
    dec h
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    ld a, $F7
    ld e, a
    ld hl, sp-$01
    push hl
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $FD
    rrca
    rst $38
    ld h, a
    rst $38
    or d
    rst $18
    ld hl, sp+$7F
    db $ED
    rra
    rst $38
    ld c, l
    rst $38
    ld [bc], a
    rst $38
    rst $38
    adc h
    rst $38
    ld bc, $05FF
    cp $5B
    rst $30
    rst $28
    ld hl, sp+$7F
    ld b, h
    rst $38
    ld de, $FFFF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$40FF], sp
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    ld [$11FF], sp
    rst $38
    jr z, @+$01

    ld sp, $52FF
    cp a
    ld l, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    sub h
    rst $38
    ld a, [de]
    rst $30
    adc $F7
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $02FF
    rst $38
    inc hl
    cp $53
    cp $23
    rst $38
    ld c, c
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    rst $38
    add h
    rst $38
    adc b
    rst $38
    add h
    rst $38
    ld bc, $41FF
    rst $38
    ld h, d
    rst $38
    ld [hl], c
    rst $38
    ld [hl], d
    rst $18
    ld [hl], e
    rst $18
    ld [hl], l
    rst $18
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    ei
    ld b, [hl]
    rst $38
    jp nz, $82FD

    rst $38
    inc [hl]
    rst $38
    ld c, [hl]
    rst $38
    inc bc
    rst $38
    ld d, $FF
    rlca
    rst $38
    inc bc
    db $FD
    rlca
    db $FD
    rlca
    rst $38
    inc d
    rst $38
    adc h
    rst $38
    ld a, [bc]
    rst $38
    ld e, $F7
    inc e
    ei
    sbc h
    di
    ld e, [hl]
    rst $30
    sbc h
    sbc a
    inc sp
    sbc a
    inc sp
    cp a
    ld h, [hl]
    db $FD

Call_022_7F67:
    ld h, a
    rst $38
    ld c, a
    ei
    rrca
    ld a, [$F90F]
    rra
    ei
    ld b, [hl]
    ei
    and d
    db $FD
    jp nz, $90FF

    rst $38
    ldh [$7F], a
    ret nc

    rst $38
    ld hl, sp+$7F
    add sp, -$01
    ld de, $6DFF
    rst $38
    jr c, @+$01

    ld d, $EF
    ld a, $FF
    dec de
    rst $28
    ccf
    rst $30
    ld a, $FF
    ld a, [bc]
    rst $38
    ld c, $FF
    sbc h
    rst $30
    ld a, [de]
    rst $30
    inc e
    di
    ld e, $F7
    inc e
    di
    sub h
    rst $38
    daa
    rst $38
    rrca
    db $FD
    rrca
    rst $38
    rrca
    db $FD
    rrca
    ei
    rrca
    rst $30
    ld e, $F3
    rra
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    ld d, h
    rst $38
    sbc b
    rst $38
    sbc h
    rst $30
    inc e
    db $FD
    rlca

Jump_022_7FC2:
    cp $07
    db $FD
    rlca
    db $FD
    daa
    db $FC
    cpl
    ld hl, sp+$4D
    ld hl, sp+$4D
    ld hl, sp+$2C
    ld [hl], a
    sbc [hl]
    di
    sbc $FB
    adc [hl]
    rst $30
    adc $F7
    call z, $EC7F
    rst $30
    call z, $AE7F
    ld a, [c]
    rra
    pop af
    dec de
    ld a, [c]
    dec sp
    pop hl
    scf
    pop hl
    inc sp
    db $E3
    scf
    pop hl
    scf
    db $E3
    scf
    rst $38
    ldh a, [$DF]
    ld hl, sp-$01
    or h
    rst $28
    ld hl, sp-$11
    cp b
    rst $20
    inc l
    rst $28
    xor h
    rst $30
    ld a, [de]
