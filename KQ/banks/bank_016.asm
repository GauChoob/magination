; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld [hl+], a
    inc d
    ld c, b
    ld d, $28
    ld d, a
    ld [hl+], a
    inc d
    ld c, b
    ld d, $59
    ld b, a
    ld [hl+], a
    inc d
    ld c, b
    ld d, $F1
    ld d, b
    ld [hl+], a
    inc d
    ld c, b
    ld d, $9D
    ld h, b
    ld [hl+], a
    inc d
    ld c, b
    ld d, $9D
    ld b, b
    or [hl]
    inc a
    and b
    ld bc, $0E01
    rla
    ld c, b
    db $10
    rra
    ld b, h
    or [hl]
    inc a
    and b
    ld [bc], a
    ld bc, $0F18
    ld c, b
    db $10
    rra
    ld b, h
    ld b, [hl]
    nop
    ld c, e
    and b
    inc b
    ld d, $56
    ld b, b
    or [hl]
    inc a
    and b
    ld [bc], a
    or [hl]
    inc a
    and b
    db $20, $B6
    ld c, e
    and b
    inc b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld d, $34
    ld b, b
    ld c, b
    db $10
    xor d
    ld b, h
    or [hl]
    inc a
    and b
    jr nz, @+$03

    jr jr_016_406C

    ld c, b
    db $10
    rra
    ld b, h
    or [hl]
    inc a
    and b
    inc b
    ld bc, $0716
    ld c, b
    db $10
    rra
    ld b, h

jr_016_406C:
    ld b, [hl]
    nop
    inc a
    and b
    ld [$7F16], sp
    ld b, b
    or [hl]
    inc a
    and b
    ld [$0701], sp
    ld b, $48
    db $10
    dec l
    ld b, [hl]
    ld bc, $0607
    ld c, b
    db $10
    rra
    ld b, h
    ld b, [hl]
    nop
    inc a
    and b
    db $10
    ld d, $96
    ld b, b
    or [hl]
    inc a
    and b
    db $10
    ld c, b
    db $10
    inc bc
    ld e, b
    ld bc, $1006
    ld c, b
    db $10
    rra
    ld b, h
    or e
    ld [hl-], a
    and c
    ld bc, $33B3
    and c
    nop
    or l
    ld a, [hl+]
    and b
    rst $30
    sub a
    or e
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
    ld [hl-], a
    ld d, b
    inc de
    ld h, a
    add sp, $44
    ld l, h
    db $ED
    ld b, h
    dec b
    nop
    inc [hl]
    ld h, e
    inc b
    ld de, $D158
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    rlca
    inc b
    ld d, a
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    dec b
    inc bc
    add a
    ld h, a
    dec b
    dec b
    ld l, c
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    dec b
    inc b
    add a

jr_016_40F0:
    ld h, a
    inc c
    ld b, $84

jr_016_40F4:
    ret nc

    nop
    ld d, $49

jr_016_40F8:
    ld b, a
    ld d, $87
    ld b, c
    dec b
    dec b
    add a
    ld h, a
    inc c
    ld [$D0AC], sp
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    dec b
    ld b, $87
    ld h, a
    rlca
    dec bc
    db $E3
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    dec b
    rlca
    add a
    ld h, a
    ld c, $0F
    ld a, [hl-]
    pop de
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_016_4171

    nop
    add b
    nop
    or l
    dec hl
    and b
    ei
    dec bc
    nop
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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_016_40F0

    db $FD
    or l
    jr z, jr_016_40F4

    ei
    or l
    jr z, jr_016_40F8

    rst $30
    sbc e
    ld d, $5E
    ld b, c
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    or [hl]
    dec hl
    and b
    inc b
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_016_41C3

jr_016_4171:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_016_41BF

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld d, $EA
    ld b, c
    ld d, $96
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$D016], sp
    ld b, c
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    dec d
    ld [hl], c
    add hl, bc
    nop
    ld d, $C6
    ld b, c
    inc de
    pop hl
    ld [hl], b
    or [hl]
    ld a, [hl+]
    and b
    ld [HeaderGlobalChecksum], sp
    ret c

    ret


    ld d, $00
    nop
    sub $41
    ld d, $01
    nop
    db $DB
    ld b, c
    ld d, $02
    nop
    ldh [rSTAT], a

jr_016_41BF:
    ld d, $03
    nop
    push hl

jr_016_41C3:
    ld b, c
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_016_41CC

jr_016_41CC:
    ld c, b
    ld d, $EA
    ld b, c
    inc c
    nop
    ld c, b
    ld d, $EA
    ld b, c
    inc d
    ld de, $74CF
    ld b, l
    inc d
    ld de, $7498
    ld b, l
    inc d
    ld de, $74A2
    ld b, l
    inc d
    ld de, $748E
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_016_4274

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $16
    rrca
    ld b, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    and c
    ld b, b
    ld [hl+], a
    ld [bc], a
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_4288

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_4291

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $6F
    ld b, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_42B8

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_42C2

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_016_42B0

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
    inc a
    and b
    db $10
    dec b
    nop
    ld d, $AB
    ld b, d
    and c
    xor l
    adc h
    and c
    ld bc, $A132
    ld c, b
    ld d, $86
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_42E8

jr_016_4274:
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_42F2

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_42F6

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_42B9

    dec [hl]

jr_016_4288:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_016_4291:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b
    db $10
    dec b
    nop
    ld d, $AB
    ld b, d
    and c
    xor l
    adc h
    and c
    ld bc, $A132
    ld c, b
    ld d, $86
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_42B0:
    ld bc, $A18C
    ld d, $2A
    ld b, e
    sbc a
    adc h

jr_016_42B8:
    and c

jr_016_42B9:
    ld b, [hl]
    rrca
    ld bc, $A18C
    dec b
    ld bc, $F016

jr_016_42C2:
    ld b, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_432C

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
    jr nz, jr_016_4329

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_4345

    ld [hl], e
    cp $FC
    jr nz, jr_016_4342

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_42E8:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $86
    ld b, b
    and [hl]
    ld d, h

jr_016_42F2:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_42F6:
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
    jr nz, jr_016_4356

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_4384

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
    ld d, $86

jr_016_4329:
    ld b, b
    sbc a
    adc h

jr_016_432C:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_016_4332:
    ld l, h
    jr nz, jr_016_4399

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_43A8

    ld h, c
    halt

jr_016_4342:
    ld h, l
    jr nz, jr_016_43B8

jr_016_4345:
    ld h, l
    ld [hl], h
    jr nz, jr_016_43AA

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b

jr_016_4352:
    jr nz, jr_016_43A7

    ld h, e
    ld l, a

jr_016_4356:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_016_43CF

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
    jr nz, jr_016_43EA

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

jr_016_4384:
    xor l
    adc h
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $86
    ld b, b
    xor d
    jr z, jr_016_4332

jr_016_4392:
    ld bc, $A816
    ld b, e
    cp $16
    ret nc

jr_016_4399:
    ld e, $09
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $165D
    inc c

jr_016_43A7:
    ld b, h

jr_016_43A8:
    ld c, b
    add hl, de

jr_016_43AA:
    call c, Call_016_4746
    ret z

    ld b, e
    xor d
    jr z, jr_016_4352

    ld [bc], a
    ld d, $C8
    ld b, e
    cp $26

jr_016_43B8:
    ret nc

    ld e, $09
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $165D
    inc c
    ld b, h
    ld c, b
    add hl, de
    call c, Call_016_4746
    add sp, $43

jr_016_43CF:
    xor d
    jr z, @-$5E

    inc b
    ld d, $E8
    ld b, e
    cp $DE
    ret nc

    ld e, $09
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $165D
    inc c
    ld b, h
    ld c, b
    add hl, de

jr_016_43EA:
    call c, Call_016_4746
    ld [$AA44], sp
    jr z, jr_016_4392

    ld [$0816], sp
    ld b, h
    cp $16
    pop de
    ld e, $09
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $165D
    inc c
    ld b, h
    ld c, b
    add hl, de
    call c, Call_016_5E46
    ld d, $2C
    ld b, h
    ld h, l
    ld bc, HeaderGlobalChecksum
    inc sp
    and c
    ld d, $01
    nop
    ld b, c
    ld b, h
    ld d, $02
    nop
    ld [$1645], sp
    inc bc
    nop
    xor [hl]
    ld b, l
    ld d, $04
    nop
    ld h, l
    ld b, [hl]
    rst $38
    ld b, l
    or e
    ld sp, $01C7
    and [hl]
    ld b, e
    ld l, h
    ld l, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $31B3
    rst $00
    nop
    ld b, l
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    dec b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    ld b, $00
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld [$05FB], sp
    ld [bc], a
    add a
    ld h, a
    dec bc
    ld [bc], a
    inc sp
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0305
    add a
    ld h, a
    ld bc, $6505
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0405
    add a
    ld h, a
    dec c
    ld b, $85
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0505
    add a
    ld h, a
    rlca
    add hl, bc
    cp e
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0605
    add a
    ld h, a
    add hl, bc
    dec bc
    push hl
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0705
    add a
    ld h, a
    db $10
    rrca
    inc a
    pop de
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $4645
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    dec b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    ld b, $00
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld [$05FB], sp
    inc bc
    add a
    ld h, a
    inc c
    ld b, $84
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0405
    add a
    ld h, a
    ld c, $07
    sbc d
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0505
    add a
    ld h, a
    ld [$D00A], sp
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0605
    add a
    ld h, a
    rlca
    dec bc
    db $E3
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0705
    add a
    ld h, a
    ld c, $0F
    ld a, [hl-]
    pop de
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $4645
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    dec b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    ld b, $00
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld [$05FB], sp
    ld [bc], a
    add a
    ld h, a
    ld bc, $6505
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0305
    add a
    ld h, a
    inc c
    ld b, $84
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0405
    add a
    ld h, a
    dec c
    ld b, $85
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0505
    add a
    ld h, a
    inc c
    ld [$D0AC], sp
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0605
    add a
    ld h, a

Call_016_4646:
    rlca
    add hl, bc
    cp e
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0705
    add a
    ld h, a
    add hl, bc
    dec bc
    push hl

Jump_016_465A:
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $4645
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    dec b
    nop
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    ld b, $00
    nop
    nop
    nop
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld [$05FB], sp
    ld [bc], a
    add a
    ld h, a
    dec bc
    ld [bc], a
    inc sp
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0305
    add a
    ld h, a
    rlca
    inc b
    ld d, a
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0405
    add a
    ld h, a
    ld bc, $6505
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0505
    add a
    ld h, a
    dec b
    dec b
    ld l, c
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0605
    add a
    ld h, a
    rlca
    dec bc
    db $E3
    ret nc

    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0705
    add a
    ld h, a
    ld c, $0F
    ld a, [hl-]
    pop de
    nop
    ld d, $49
    ld b, a
    ld d, $87
    ld b, c
    ld b, e
    ld bc, $0046
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $11
    adc c
    ret nc

    nop
    ld d, $46
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rlca
    ld de, $D09D
    nop
    ld d, $46
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [$B111], sp
    ret nc

Call_016_4746:
    nop
    ld d, $45
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
    or e
    ld [hl-], a
    and c
    ld bc, $2AB5
    and b
    rst $30
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or l
    dec hl
    and b
    ei
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld b, c
    ld d, b
    inc de
    ld h, a
    cp $44
    ld l, h
    dec bc
    ld b, l
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    inc bc
    ld a, $D0

jr_016_4784:
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b

jr_016_478C:
    ld [bc], a
    add sp, $6D
    rlca

jr_016_4790:
    rlca
    sub e
    ret nc

    nop

jr_016_4794:
    ld d, $B3
    ld c, a
    add hl, de

jr_016_4798:
    add sp, $46
    dec b
    inc bc

jr_016_479C:
    add sp, $6D
    dec c
    inc b

jr_016_47A0:
    ld e, l
    ret nc

    nop
    ld d, $FB
    ld c, a
    add hl, de
    add sp, $46
    dec b
    inc b
    add sp, $6D
    rlca
    dec c
    dec bc
    pop de
    nop
    ld d, $43
    ld d, b
    add hl, de
    add sp, $46
    dec b
    dec b
    add sp, $6D
    ld c, $0D
    ld [de], a
    pop de
    nop
    ld d, $8B
    ld d, b
    add hl, de
    add sp, $46
    ld l, [hl]
    inc b
    add hl, bc
    nop
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    cp $B6
    jr z, jr_016_4784

    ld bc, $28B5
    and b
    db $FD
    or [hl]
    jr z, jr_016_478C

    inc b
    or l
    jr z, jr_016_4790

    rst $30
    or [hl]
    jr z, jr_016_4794

    db $10
    or l
    jr z, jr_016_4798

    rst $18
    or [hl]
    jr z, jr_016_479C

    ld b, b
    or l
    jr z, jr_016_47A0

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    ld a, [hl+]
    and b
    rst $28
    or l
    ld a, [hl+]
    and b
    rst $18
    or l
    ld a, [hl+]
    and b
    cp a
    or l
    ld a, [hl+]
    and b
    ld a, a
    or l
    dec hl
    and b
    cp $86
    sbc b
    sbc e
    ld d, $20
    ld c, b
    ld b, l
    sbc [hl]
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_016_4885

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_016_4881

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld d, $49
    ld c, b
    ld d, $2D
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push hl
    ld h, b
    ld e, $08
    ld b, e
    db $10
    ld [hl], d

Jump_016_485B:
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_016_4867

    ld a, d
    jr nz, jr_016_48DC

    xor l
    ld [hl-], a
    and c

jr_016_4867:
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    ld e, l
    ld b, a
    ld [hl+], a
    ld [bc], a
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_48E6

    ld l, a

jr_016_4881:
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38

jr_016_4885:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_48EF

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $CD
    ld c, b
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_4916

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_4920

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_016_490E

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
    inc a
    and b
    ld [bc], a
    dec b
    nop
    ld d, $09
    ld c, c
    and c
    xor l
    adc l
    and c
    ld bc, $A132
    ld c, b
    ld d, $29
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_4946

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_4950

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a

jr_016_48DC:
    ld [hl], d
    ld h, l
    jr nz, jr_016_4954

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_4917

    dec [hl]

jr_016_48E6:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_016_48EF:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b
    ld [bc], a
    dec b
    nop
    ld d, $09
    ld c, c
    and c
    xor l
    adc l
    and c
    ld bc, $A132
    ld c, b
    ld d, $29
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_490E:
    ld bc, $A18D
    ld d, $88
    ld c, c
    sbc a
    adc l

jr_016_4916:
    and c

jr_016_4917:
    ld b, [hl]
    rrca
    ld bc, $A18D
    dec b
    ld bc, $4E16

jr_016_4920:
    ld c, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_498A

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
    jr nz, jr_016_4987

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_49A3

    ld [hl], e
    cp $FC
    jr nz, jr_016_49A0

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_4946:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $29
    ld b, b
    and [hl]
    ld d, h

jr_016_4950:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_4954:
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
    jr nz, jr_016_49B4

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_49E2

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
    ld d, $29

jr_016_4987:
    ld b, b
    sbc a
    adc l

jr_016_498A:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_016_49F7

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_4A06

    ld h, c
    halt

jr_016_49A0:
    ld h, l
    jr nz, jr_016_4A16

jr_016_49A3:
    ld h, l
    ld [hl], h
    jr nz, jr_016_4A08

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_016_49F5

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_016_4A05

    ld h, e
    ld l, a

jr_016_49B4:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_016_4A2D

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
    jr nz, jr_016_4A1E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_4A48

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_016_4A38

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

jr_016_49E2:
    xor l
    adc l
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $29
    ld b, b
    ld [hl+], a
    ld [bc], a
    sbc [hl]
    or e
    ld sp, $01C7
    inc c

jr_016_49F5:
    nop
    and [hl]

jr_016_49F7:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_4A62

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_016_4A57

    ld b, l

jr_016_4A05:
    ld b, e

jr_016_4A06:
    ld d, d
    ld b, l

jr_016_4A08:
    ld d, h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $49
    ld c, d

jr_016_4A16:
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_4A92

jr_016_4A1E:
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_4A9C

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_016_4A8A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l

jr_016_4A2D:
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b

jr_016_4A38:
    ld [bc], a
    dec b
    nop
    ld d, $85
    ld c, d
    and c
    xor l
    adc l
    and c
    ld bc, $A132
    ld c, b
    ld d, $34

jr_016_4A48:
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_4AC2

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_4ACC

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_016_4A57:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_4AD0

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_4A93

    dec [hl]

jr_016_4A62:
    dec [hl]
    cp $61
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
    inc a
    and b
    ld [bc], a
    dec b
    nop
    ld d, $85
    ld c, d
    and c
    xor l
    adc l
    and c
    ld bc, $A132
    ld c, b
    ld d, $34
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_4A8A:
    ld bc, $A18D
    ld d, $04
    ld c, e
    sbc a
    adc l

jr_016_4A92:
    and c

jr_016_4A93:
    ld b, [hl]
    rrca
    ld bc, $A18D
    dec b
    ld bc, $CA16

jr_016_4A9C:
    ld c, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_4B06

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
    jr nz, jr_016_4B03

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_4B1F

    ld [hl], e
    cp $FC
    jr nz, jr_016_4B1C

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_4AC2:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $34
    ld b, b
    and [hl]
    ld d, h

jr_016_4ACC:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_4AD0:
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
    jr nz, jr_016_4B30

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_4B5E

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
    ld d, $34

jr_016_4B03:
    ld b, b
    sbc a
    adc l

jr_016_4B06:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_016_4B0C:
    ld l, h
    jr nz, jr_016_4B73

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_4B82

    ld h, c
    halt

jr_016_4B1C:
    ld h, l
    jr nz, jr_016_4B92

jr_016_4B1F:
    ld h, l
    ld [hl], h
    jr nz, jr_016_4B84

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_016_4B81

    ld h, e
    ld l, a

jr_016_4B30:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_016_4BA9

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
    jr nz, jr_016_4B9A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_4BC4

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

jr_016_4B5E:
    xor l
    adc l
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $34
    ld b, b
    xor d
    jr z, jr_016_4B0C

    ld bc, $AB16
    ld c, e
    cp $2C
    ret nc

jr_016_4B73:
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    inc b
    ld b, b

jr_016_4B81:
    ret nc

jr_016_4B82:
    ld b, c
    rst $38

jr_016_4B84:
    xor l
    daa
    and c
    inc c
    ld bc, $A127
    dec b
    ld bc, $28B5
    and b
    db $FD
    ld b, [hl]

jr_016_4B92:
    rrca

jr_016_4B93:
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de

jr_016_4B9A:
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [bc]
    nop
    ret z

    ret nc

jr_016_4BA9:
    ld [$486E], sp
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld [bc], a
    ld d, $EC
    ld c, e
    cp $40
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

Jump_016_4BC2:
    ld b, [hl]
    add h

jr_016_4BC4:
    ld [bc], a
    inc b
    inc l
    ret nc

    ld b, b
    rst $38
    or l
    jr z, @-$5E

    cp $46
    rrca
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [bc]
    nop
    ret z

    ret nc

    ld [$486F], sp
    ld d, $29
    ld c, a
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_4B93

    inc b
    ld d, $2D
    ld c, h
    cp $39
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    ld de, $D04D
    ld b, e
    rst $38
    or l
    jr z, @-$5E

    rst $30
    ld b, [hl]
    rrca

jr_016_4C11:
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    nop
    call c, $08D0
    ld l, a
    ld c, b
    ld d, $29

jr_016_4C2C:
    ld c, a
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld [$6A16], sp
    ld c, h
    cp $4D
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    ld de, $D039
    ld b, d
    rst $38
    or l
    jr z, @-$5E

    ei
    ld b, [hl]
    rrca

jr_016_4C52:
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    nop
    call c, $08D0
    ld l, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_4C11

    db $10
    ld d, $AB
    ld c, h
    cp $42
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $5602
    pop de
    ld b, l
    rst $38
    or l
    jr z, jr_016_4C2C

    rst $18
    ld b, [hl]
    rrca

jr_016_4C8F:
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    nop
    ldh a, [$D0]
    ld [$486F], sp
    ld d, $29
    ld c, a
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_4C52

    jr nz, jr_016_4CCA

    add sp, $4C
    cp $56
    pop de

jr_016_4CB9:
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    ld [bc], a
    ld b, d
    pop de
    ld b, h
    rst $38

jr_016_4CCA:
    or l
    jr z, @-$5E

    rst $28
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_016_4CDF:
    rst $20
    ld b, [hl]
    add h
    inc c
    nop
    ldh a, [$D0]
    ld [$486E], sp
    add hl, de
    call c, $AA46
    jr z, jr_016_4C8F

    ld b, b
    ld d, $38
    ld c, l
    cp $3C
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    db $10
    ld d, b
    pop de
    ld b, a
    rst $38
    ld b, [hl]
    nop

jr_016_4D09:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $6410
    pop de
    ld c, b
    rst $38
    or l
    jr z, jr_016_4CB9

    ld a, a
    or l
    add hl, hl
    and b
    cp $46
    rrca
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    nop
    inc b
    pop de
    ld [$486E], sp
    add hl, de
    call c, $AA46
    jr z, jr_016_4CDF

    add b
    ld d, $8C
    ld c, l
    cp $50
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    db $10
    inc a
    pop de
    ld b, [hl]
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_016_4D5D:
    rst $20
    ld b, [hl]
    add h
    ld de, $6410
    pop de
    ld c, b
    rst $38
    or l
    jr z, jr_016_4D09

    cp a
    or l
    add hl, hl
    and b
    cp $46
    rrca
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    nop
    inc b
    pop de
    ld [$486F], sp
    ld d, $29
    ld c, a
    ld c, b
    add hl, de
    call c, $AA46
    add hl, hl
    and b
    ld bc, $DC16
    ld c, l
    cp $64
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    db $10
    inc a
    pop de
    ld b, [hl]
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    db $10
    ld d, b
    pop de
    ld b, a
    rst $38
    or l
    jr z, jr_016_4D5D

    cp a
    or l
    jr z, @-$5E

    ld a, a
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    ld bc, $0005
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    nop
    inc b
    pop de
    ld [$486E], sp
    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    db $10
    ld d, $06
    ld c, [hl]
    cp $BD
    ret nc

    ld e, $09
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    jr nz, jr_016_4DF8

    nop
    ld d, $06
    ld c, [hl]
    ld b, [hl]

jr_016_4DF8:
    rrca
    nop
    ld a, [hl+]
    and b
    ld b, b
    dec b
    nop
    ld d, $06
    ld c, [hl]
    ld c, b
    ld d, $B0
    ld c, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    jr nz, jr_016_4E25

    jr nc, jr_016_4E5F

    cp $D1
    ret nc

    ld e, $09
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    db $10
    dec b
    nop
    ld d, $30
    ld c, [hl]
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]

jr_016_4E25:
    and b
    ld b, b
    dec b
    nop
    ld d, $30
    ld c, [hl]
    ld c, b
    ld d, $B0
    ld c, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    ld b, b
    ld d, $5A
    ld c, [hl]
    cp $D2
    ret nc

    ld e, $09
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    db $10
    dec b
    nop
    ld d, $5A
    ld c, [hl]
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    jr nz, jr_016_4E57

    nop
    ld d, $5A
    ld c, [hl]
    ld c, b

jr_016_4E57:
    ld d, $B0
    ld c, [hl]
    ld c, b
    add hl, de
    call c, $AA46

jr_016_4E5F:
    ld a, [hl+]
    and b
    add b

jr_016_4E62:
    ld d, $79
    ld c, [hl]
    cp $D6
    ret nc

    ld e, $09
    ld b, [hl]
    rrca
    nop
    dec hl
    and b
    ld bc, $0005
    ld d, $79
    ld c, [hl]
    ld c, b
    ld d, $9C
    ld c, [hl]
    ld c, b
    add hl, de
    call c, $AA46
    dec hl
    and b
    ld bc, $9816
    ld c, [hl]
    cp $0F
    pop de
    ld e, $09
    ld b, [hl]
    rrca
    nop
    ld a, [hl+]
    and b
    add b
    dec b
    nop
    ld d, $98
    ld c, [hl]
    ld c, b
    ld d, $9C
    ld c, [hl]
    ld c, b
    add hl, de
    call c, Call_016_6B46
    rst $10
    ld l, l
    ld l, $D8
    ld l, c
    cpl
    add e
    and b
    ret nc

    ld bc, $AB03
    ret nc

    ld [$480B], sp
    add hl, de
    call c, $8246
    ld b, a
    pop de
    inc bc
    ld bc, $D15B
    ld de, $B607
    ld a, [hl+]
    and b
    ld bc, $0F46
    nop
    jr z, jr_016_4E62

    ld [bc], a
    dec b
    nop
    ld d, $D7
    ld c, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_016_4ECE:
    rst $20
    ld b, [hl]
    add h
    ld a, [bc]
    nop
    ret z

    ret nc

    ld [$466F], sp
    rrca

jr_016_4ED9:
    nop
    jr z, @-$5E

    inc b
    dec b
    nop
    ld d, $F1
    ld c, [hl]
    ld b, [hl]
    nop

jr_016_4EE4:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    nop
    call c, $08D0
    ld l, a
    ld b, [hl]
    rrca
    nop
    jr z, @-$5E

    db $10
    dec b
    nop
    ld d, $0B
    ld c, a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    nop
    ldh a, [$D0]
    ld [$466F], sp
    rrca
    nop
    jr z, @-$5E

    add b
    dec b
    nop
    ld d, $25
    ld c, a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    nop
    inc b
    pop de
    ld [$486F], sp
    add hl, de
    call c, Call_016_4646
    rrca
    nop
    jr z, jr_016_4ECE

    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    rrca
    nop
    jr z, jr_016_4ED9

    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    rrca
    nop
    jr z, jr_016_4EE4

    db $10
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    rrca
    nop
    jr z, @-$5E

    add b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    nop

jr_016_4F57:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, bc
    ld bc, $D0B5
    nop
    ld b, l
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
    ld [bc], a
    or [hl]
    ret nc

    nop
    ld [hl+], a
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
    ld bc, $D0C9
    nop
    add h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    ld bc, $D0DD
    nop
    add h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    ld bc, $D0F1
    nop

jr_016_4F9F:
    add h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld bc, $D105
    pop bc
    ld sp, hl
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    jr z, jr_016_4F57

    ld [bc], a
    ld d, $DD
    ld c, a
    dec d
    ld de, $5635
    jr nc, jr_016_4FD2

    ld sp, $3055
    ld de, $5739
    jr nc, jr_016_4FDA

    dec l
    ld d, h
    jr nz, jr_016_4FDE

    nop
    ld d, h
    jr nz, jr_016_4FE2

    dec l

jr_016_4FD2:
    ld d, h
    db $10
    ld de, $5400
    jr nz, jr_016_4FD9

jr_016_4FD9:
    ld c, b

jr_016_4FDA:
    ld d, $B3
    ld c, a
    dec d

jr_016_4FDE:
    ld de, $542D
    ld b, b

jr_016_4FE2:
    ld de, $5635
    jr nc, jr_016_4FF8

jr_016_4FE7:
    nop
    ld d, h
    jr nc, jr_016_4FFC

    ld sp, $4055
    ld de, $5739
    jr nc, jr_016_5004

    nop
    ld d, h
    inc b
    nop
    ld c, b

jr_016_4FF8:
    ld d, $B3
    ld c, a
    ld b, [hl]

jr_016_4FFC:
    nop
    jr z, jr_016_4F9F

    ld [$1D16], sp
    ld d, b
    dec d

jr_016_5004:
    ld de, $542D
    jr nc, jr_016_501A

    add hl, sp
    ld d, a
    ld b, b
    ld de, $5531
    jr nc, @+$13

    dec [hl]
    ld d, [hl]
    ld b, b
    ld de, $5400
    inc b
    nop
    ld c, b

jr_016_501A:
    ld d, $FB
    ld c, a
    dec d
    ld de, $542D
    jr nc, @+$13

    add hl, sp
    ld d, a
    db $10
    ld de, $5531
    ld b, b
    ld de, $5400
    jr jr_016_5040

jr_016_502F:
    dec [hl]
    ld d, [hl]
    db $10
    ld de, $5400
    jr @+$13

    dec l
    ld d, h
    db $10
    ld de, $5400
    inc b
    nop
    ld c, b

jr_016_5040:
    ld d, $FB
    ld c, a
    ld b, [hl]
    nop
    jr z, jr_016_4FE7

    jr nz, jr_016_505F

    ld l, c
    ld d, b
    dec d
    ld de, $542D
    jr nz, jr_016_5062

    add hl, sp
    ld d, a
    jr nz, jr_016_5066

    ld sp, $4055
    ld de, $5635
    jr nz, jr_016_506E

    dec l
    ld d, h

jr_016_505F:
    jr nz, @+$13

    nop

jr_016_5062:
    ld d, h
    inc b
    nop
    ld c, b

jr_016_5066:
    ld d, $43
    ld d, b
    dec d
    ld de, $5635
    ld d, b

jr_016_506E:
    ld de, $5400
    jr @+$13

    ld sp, $1055
    ld de, $5400
    jr jr_016_508C

    add hl, sp
    ld d, a
    ld d, b
    ld de, $542D
    db $10
    ld de, $5400
    inc b
    nop
    ld c, b
    ld d, $43
    ld d, b
    ld b, [hl]

jr_016_508C:
    nop
    jr z, jr_016_502F

    add b
    ld d, $B5
    ld d, b
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $D316
    ld d, b
    dec d
    ld de, $5739
    db $10
    ld de, $542D
    db $10
    ld de, $5635
    db $10
    ld de, $5531
    db $10
    ld de, $5400
    inc b
    nop
    ld c, b
    ld d, $8B
    ld d, b
    dec d
    ld de, $5635
    jr nz, @+$13

    dec l
    ld d, h
    db $10
    ld de, $5739
    jr nc, jr_016_50D4

    ld sp, $1055
    ld de, $5635
    db $10
    ld de, $5400
    inc b
    nop
    ld c, b
    ld d, $8B
    ld d, b
    dec d

jr_016_50D4:
    ld de, $5531
    jr nz, @+$13

    add hl, sp
    ld d, a
    db $10
    ld de, $542D
    jr nc, jr_016_50F2

    dec [hl]
    ld d, [hl]
    db $10
    ld de, $5531
    db $10
    ld de, $5400
    inc b
    nop
    ld c, b
    ld d, $8B
    ld d, b
    or e

jr_016_50F2:
    ld [hl-], a
    and c
    ld bc, $2AB5
    and b
    rst $30
    or l
    ld a, [hl+]
    and b
    cp $B5
    dec hl
    and b
    ei
    sub a
    or e
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
    ld d, b
    ld d, b
    inc de
    ld h, a
    ld b, h
    ld b, l
    ld l, h
    ld d, c
    ld b, l
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    inc bc
    ld a, $D0
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    ld [bc], a
    ld [$D0A2], sp
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $19
    ld d, d
    dec b
    inc bc
    add a
    ld h, a
    ld a, [bc]
    add hl, bc
    cp [hl]
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $19
    ld d, d
    dec b
    inc b
    add sp, $6D
    ld bc, $050D
    pop de
    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    dec b
    dec b
    add sp, $6D
    ld c, $04
    ld e, [hl]
    ret nc

    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    dec b
    ld b, $E8
    ld l, l
    ld de, $ED0B
    ret nc

    inc b
    ld de, $5400
    add hl, de
    add sp, $46

jr_016_5172:
    dec b
    rlca
    add sp, $6D

jr_016_5176:
    add hl, bc
    inc c
    ld sp, hl
    ret nc

jr_016_517A:
    inc b
    ld de, $5400

jr_016_517E:
    add hl, de
    add sp, $46
    dec b

jr_016_5182:
    ld [$6DE8], sp
    inc c

jr_016_5186:
    db $10
    ld c, h
    pop de
    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    add sp, $6D
    ld [de], a
    db $10
    ld d, d
    pop de
    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_016_51E7

    nop
    add b
    nop
    ld l, [hl]
    inc b
    add hl, bc
    nop
    ld b, b
    ld b, b
    add b
    nop
    dec bc
    nop
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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_016_5172

    ei
    or l
    jr z, jr_016_5176

    rst $30
    or l
    jr z, jr_016_517A

    rst $28
    or l
    jr z, jr_016_517E

    rst $18
    or l
    jr z, jr_016_5182

    cp a
    or l
    jr z, jr_016_5186

    ld a, a

jr_016_51E7:
    or l
    add hl, hl
    and b
    cp $9B
    ld d, $F0
    ld d, c
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    or [hl]
    dec hl
    and b
    inc b
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_016_5255

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_016_5251

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld d, $A5
    ld d, d
    ld d, $65
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$6216], sp
    ld d, d
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    dec d
    ld [hl], c
    add hl, bc
    nop
    ld d, $58
    ld d, d
    inc de
    pop hl
    ld [hl], b
    or [hl]
    ld a, [hl+]
    and b
    ld [HeaderGlobalChecksum], sp
    ret c

    ret


    ld d, $00
    nop
    ld l, b
    ld d, d
    ld d, $01
    nop
    ld l, l
    ld d, d
    ld d, $02
    nop
    ld [hl], d
    ld d, d

jr_016_5251:
    ld d, $03
    nop
    ld [hl], a

jr_016_5255:
    ld d, d
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_016_525E

jr_016_525E:
    ld c, b
    ld d, $7C
    ld d, d
    inc c
    nop
    ld c, b
    ld d, $7C
    ld d, d
    inc d
    ld de, $74CF
    ld b, l
    inc d
    ld de, $7498
    ld b, l
    inc d
    ld de, $74A2
    ld b, l
    inc d
    ld de, $748E
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_016_5306

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $16
    and c
    ld d, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    push af
    ld d, b
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push hl
    ld h, b
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_016_52C3

    ld a, d
    jr nz, jr_016_5338

    xor l
    ld [hl-], a
    and c

jr_016_52C3:
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    push af
    ld d, b
    ld [hl+], a
    ld [bc], a
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_5342

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_534B

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $29
    ld d, e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_5372

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_537C

    ld l, a
    ld [hl], l
    rst $38

jr_016_5306:
    db $FC
    jr nz, jr_016_536A

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
    inc a
    and b
    inc b
    dec b
    nop
    ld d, $65
    ld d, e
    and c
    xor l
    adc [hl]
    and c
    ld bc, $A132
    ld c, b
    ld d, $61
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_53A2

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_53AC

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a

jr_016_5338:
    ld [hl], d
    ld h, l
    jr nz, jr_016_53B0

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_5373

    dec [hl]

jr_016_5342:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_016_534B:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b
    inc b
    dec b
    nop
    ld d, $65
    ld d, e
    and c
    xor l
    adc [hl]
    and c
    ld bc, $A132
    ld c, b
    ld d, $61
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_536A:
    ld bc, $A18E
    ld d, $E4
    ld d, e
    sbc a
    adc [hl]

jr_016_5372:
    and c

jr_016_5373:
    ld b, [hl]
    rrca
    ld bc, $A18E
    dec b
    ld bc, $AA16

jr_016_537C:
    ld d, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_53E6

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
    jr nz, jr_016_53E3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_53FF

    ld [hl], e
    cp $FC
    jr nz, jr_016_53FC

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_53A2:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $61
    ld b, b
    and [hl]
    ld d, h

jr_016_53AC:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_53B0:
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
    jr nz, jr_016_5410

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_543E

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
    ld d, $61

jr_016_53E3:
    ld b, b
    sbc a
    adc [hl]

jr_016_53E6:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_016_5453

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_5462

    ld h, c
    halt

jr_016_53FC:
    ld h, l
    jr nz, jr_016_5472

jr_016_53FF:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_016_5451

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_016_5461

    ld h, e
    ld l, a

jr_016_5410:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_016_5489

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
    jr nz, jr_016_547A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_54A4

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_016_5494

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

jr_016_543E:
    xor l
    adc [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $61
    ld b, b
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]

jr_016_5451:
    or [hl]
    ld a, [hl+]

jr_016_5453:
    and b
    ld bc, $28AA
    and b
    ld bc, $DC19
    ld b, [hl]
    cp $3D
    ret nc

    ld e, $09

jr_016_5461:
    add hl, bc

jr_016_5462:
    inc b
    ld d, $72
    ld d, l
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]

jr_016_5472:
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    ld [bc], a

jr_016_547A:
    add hl, de
    call c, $FE46
    inc l
    ret nc

    ld e, $09
    add hl, bc
    dec b
    ld d, $9C
    ld d, l
    ld c, b
    add hl, de

jr_016_5489:
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]

jr_016_5494:
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    inc b
    add hl, de
    call c, $FE46
    inc h
    ret nc

    ld e, $09
    add hl, bc

jr_016_54A4:
    dec b
    ld d, $C6
    ld d, l
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    ld [$DC19], sp
    ld b, [hl]
    cp $4C
    ret nc

    ld e, $09
    add hl, bc
    ld b, $16
    ld hl, sp+$55
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]

jr_016_54D5:
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    db $10
    add hl, de
    call c, $FE46
    ld d, b
    pop de
    ld e, $09
    add hl, bc
    add hl, bc
    ld d, $1A
    ld d, [hl]
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    jr nz, jr_016_5518

    call c, $FE46
    jr z, jr_016_54D5

    ld e, $09
    add hl, bc
    rlca
    ld d, $58
    ld d, [hl]
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]

jr_016_5518:
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    ld b, b
    add hl, de
    call c, $FE46
    ld h, c
    pop de
    ld e, $09
    add hl, bc
    ld [$8216], sp
    ld d, [hl]
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $28AA
    and b
    add b
    add hl, de
    call c, $FE46
    ld e, $D1
    ld e, $09
    add hl, bc
    inc b
    ld d, $BC
    ld d, [hl]
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    ld a, [hl+]
    and b
    ld bc, $DC19
    ld b, [hl]
    or [hl]
    ld a, [hl+]
    and b
    ld bc, $29AA
    and b

jr_016_5560:
    ld bc, $DC19
    ld b, [hl]
    cp $58
    pop de
    ld e, $09
    add hl, bc
    inc b
    ld d, $F6
    ld d, [hl]
    ld c, b
    add hl, de
    call c, $1546
    ld de, $5635
    sub b
    ld de, $5400
    jr nz, jr_016_558D

    ld h, [hl]
    ld d, a
    ld c, b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_558D:
    inc bc
    ld bc, $D03D
    ld b, b

jr_016_5592:
    rst $38
    or l
    jr z, @-$5E

    cp $B5
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5531
    sub b
    ld de, $5400
    jr nz, jr_016_55B7

    ld e, d
    ld d, h
    ld c, b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_55B7:
    ld [bc], a
    inc b
    inc l
    ret nc

    ld b, c
    rst $38
    or l
    jr z, jr_016_5560

    db $FD
    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $542D
    db $10
    ld de, $5635
    ld b, b
    ld de, $5531
    and b
    ld de, $5739
    ld b, b
    ld de, $542D
    sub b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld b, d
    rst $38
    or l
    jr z, jr_016_5592

    ei
    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5635
    ld [hl], b
    ld de, $5400
    jr nz, jr_016_5613

    ld h, [hl]
    ld d, a
    jr c, jr_016_5606

jr_016_5606:
    inc d
    ld de, $5400
    xor b
    jr z, @-$5E

    ld [$1516], sp
    ld d, [hl]
    cp $FF

jr_016_5613:
    ld c, h
    ret nc

    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5400
    jr z, @+$13

    dec [hl]
    ld d, [hl]
    ld h, b
    ld de, $5531
    ld b, b
    ld de, $5739
    jr nz, @+$13

    ld sp, $2055
    ld de, $5635
    ld [hl], b
    ld de, $5531
    ld [hl], b
    ld de, $5739
    ld d, b
    ld de, $545A
    ld l, b
    ld de, $5766
    jr nc, jr_016_5644

jr_016_5644:
    inc d
    ld de, $5400

jr_016_5648:
    xor b
    jr z, @-$5E

    db $10
    ld d, $53
    ld d, [hl]
    cp $FF
    ld d, b
    pop de
    or l
    ld a, [hl+]
    and b

jr_016_5656:
    cp $45
    dec d
    ld de, $542D
    ld [hl], b
    ld de, $5400
    jr nz, jr_016_5673

    ld e, [hl]
    ld d, l
    jr c, jr_016_5666

jr_016_5666:
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_5673:
    ld c, $10
    jr z, jr_016_5648

    ld b, l
    rst $38
    or l
    jr z, @-$5E

    rst $18
    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5635
    db $10
    ld de, $542D
    db $10
    ld de, $5635
    or b
    ld de, $5531
    and b
    ld de, $5400
    jr nz, jr_016_56A9

    ld e, d
    ld d, h
    ld c, b
    ld de, $5766
    ld h, b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_56A9:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld de, $610D
    pop de
    ld b, [hl]
    rst $38
    or l
    jr z, jr_016_5656

    cp a
    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5739
    db $10
    ld de, $542D
    ld b, b
    ld de, $5635
    ld b, b
    ld de, $5531
    ld b, b
    ld de, $5635
    ld d, b
    ld de, $5400
    jr nz, jr_016_56E7

    ld h, [hl]
    ld d, a
    ld b, b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_56E7:
    ld c, $06
    ld e, $D1
    ld b, a
    rst $38
    or l
    jr z, @-$5E

    ld a, a
    or l
    ld a, [hl+]
    and b
    cp $45
    dec d
    ld de, $5739
    ld b, b
    ld de, $542D
    jr nz, jr_016_5711

    dec [hl]
    ld d, [hl]
    ld d, b
    ld de, $5531
    jr nz, jr_016_5719

    add hl, sp
    ld d, a
    stop
    inc d
    ld de, $5400
    ld b, [hl]

jr_016_5711:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_5719:
    ld de, $5804
    pop de
    ld c, b
    rst $38
    or l
    add hl, hl
    and b
    cp $B5
    ld a, [hl+]
    and b
    cp $45
    or e
    ld [hl-], a
    and c
    ld bc, $2AB5
    and b
    rst $30
    or l
    ld a, [hl+]
    and b
    cp $B3
    inc sp
    and c
    nop
    or e
    jr z, @-$5D

    nop
    or l
    dec hl
    and b
    ei
    sub a
    or e
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
    ld e, a
    ld d, b
    inc de
    ld h, a
    halt
    ld b, l
    ld l, h
    add e
    ld b, l
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    inc b
    ld d, e
    ret nc

    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    ld [bc], a
    ld a, [bc]
    jp z, $00D0

    add hl, de
    rst $20
    ld b, [hl]
    ld d, $B4
    ld e, c
    dec b
    inc bc
    add a
    ld h, a
    ld [bc], a
    inc c
    ld a, [c]
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $B4
    ld e, c
    dec b
    inc b
    add a
    ld h, a
    ld [bc], a
    rrca
    ld l, $D1
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $B4
    ld e, c
    dec b
    ld [$6787], sp
    ld c, $09
    jp nz, $00D0

jr_016_579C:
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $B4
    ld e, c
    dec b
    add hl, bc

jr_016_57A4:
    add a
    ld h, a
    ld [de], a
    add hl, bc

jr_016_57A8:
    add $D0
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $B4
    ld e, c
    dec b
    ld a, [bc]
    add sp, $6D
    rrca
    inc b
    ld e, a
    ret nc

    inc c
    ld de, $5400
    add hl, de
    add sp, $46
    dec b
    dec bc
    add sp, $6D
    rrca
    dec c
    inc de
    pop de
    inc c
    ld de, $5400
    add hl, de
    add sp, $46
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_016_5817

    nop
    add b
    nop
    ld l, [hl]
    inc b
    add hl, bc
    nop
    ld b, b
    ret nz

    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_016_579C

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_016_57A4

    rst $30
    or l
    jr z, jr_016_57A8

    rst $28
    sbc e
    ld d, $8B
    ld e, c
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

jr_016_5817:
    ld [bc], a
    jp z, $08D0

    db $FC
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    ld [bc], a
    ld a, [c]
    ret nc

    ld [$46FC], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $02
    ld a, [de]
    pop de
    ld [$43FC], sp
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld [bc], a
    ld b, $D1
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    ld [bc], a
    ld a, [c]
    ret nc

    ld [$08FC], sp
    inc bc
    nop
    nop
    ld [bc], a
    inc c
    ld a, [c]
    ret nc

    ld b, e
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc c
    ld [bc], a
    ld a, [c]
    ret nc

    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $02
    ld a, [de]
    pop de
    ld [$08FC], sp
    inc bc
    nop
    nop
    ld [bc], a
    ld c, $1A
    pop de
    ld b, e
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    ld [bc], a
    ld l, $D1
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    ld [bc], a
    sbc $D0
    ld [$08FC], sp
    inc b
    nop
    nop
    ld [bc], a
    dec bc
    sbc $D0
    ld b, e
    ld b, b
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
    jp z, $08D0

    ei
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    ld [bc], a
    sbc $D0
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec c
    ld [bc], a
    ld b, $D1
    ld [$46FC], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    ld [bc], a
    ld l, $D1
    ld [$08FC], sp
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec c
    ld b, $D1
    ld [$0004], sp
    nop
    ld [bc], a
    rrca
    ld l, $D1
    ld b, e
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $02
    ld a, [de]
    pop de
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    ld [bc], a
    ld l, $D1
    ld [$46FB], sp
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
    jp z, $08D0

    db $FC
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    ld [bc], a
    sbc $D0
    ld [$08FC], sp
    inc bc
    nop
    nop
    ld [bc], a
    ld a, [bc]
    jp z, $08D0

    inc b
    nop
    nop
    ld [bc], a
    dec bc
    sbc $D0
    ld b, e
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec bc
    ld [bc], a
    sbc $D0
    ld [$46FB], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    ld [bc], a
    ld l, $D1
    ld [$08FC], sp
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld a, [bc]
    jp z, $08D0

    inc bc
    nop
    nop
    ld [bc], a
    dec c
    ld b, $D1
    ld [$0004], sp
    nop
    ld [bc], a
    rrca
    ld l, $D1
    ld c, b
    ld d, $3A
    ld e, b
    ld b, l
    sbc [hl]
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_016_59F0

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_016_59EC

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld d, $40
    ld e, d
    ld d, $22
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$FD16], sp
    ld e, c
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    rlca
    nop
    dec d
    ld [hl], c
    add hl, bc
    nop
    ld d, $F3
    ld e, c
    inc de
    pop hl
    ld [hl], b
    or [hl]
    ld a, [hl+]
    and b
    ld [HeaderGlobalChecksum], sp
    ret c

    ret


    ld d, $00
    nop
    inc bc
    ld e, d
    ld d, $01
    nop
    ld [$165A], sp
    ld [bc], a
    nop
    dec c
    ld e, d

jr_016_59EC:
    ld d, $03
    nop
    ld [de], a

jr_016_59F0:
    ld e, d
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_016_59F9

jr_016_59F9:
    ld c, b
    ld d, $17
    ld e, d
    inc c
    nop
    ld c, b
    ld d, $17
    ld e, d
    inc d
    ld de, $74CF
    ld b, l
    inc d
    ld de, $7498
    ld b, l
    inc d
    ld de, $74A2
    ld b, l
    inc d
    ld de, $748E
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, @+$7A

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $16
    inc a
    ld e, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    inc l
    ld d, a
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push hl
    ld h, b
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_016_5A5E

    ld a, d
    jr nz, jr_016_5AD3

    xor l
    ld [hl-], a
    and c

jr_016_5A5E:
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    inc l
    ld d, a
    ld [hl+], a
    ld [bc], a
    ld e, h
    add hl, de
    rst $20
    ld b, [hl]
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_5AE1

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_5AEA

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $C8
    ld e, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_5B11

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_5B1B

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_016_5B09

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
    inc a
    and b
    ld bc, $0005
    ld d, $04
    ld e, e
    and c
    xor l
    adc a
    and c
    ld bc, $A132
    ld c, b
    ld d, $1E
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_5B41

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_5B4B

    ld l, a

jr_016_5AD3:
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_5B4F

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_5B12

    dec [hl]

jr_016_5AE1:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_016_5AEA:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b
    ld bc, $0005
    ld d, $04
    ld e, e
    and c
    xor l
    adc a
    and c
    ld bc, $A132
    ld c, b
    ld d, $1E
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_5B09:
    ld bc, $A18F
    ld d, $83
    ld e, e
    sbc a
    adc a

jr_016_5B11:
    and c

jr_016_5B12:
    ld b, [hl]
    rrca
    ld bc, $A18F
    dec b
    ld bc, $4916

jr_016_5B1B:
    ld e, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_5B85

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
    jr nz, jr_016_5B82

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_5B9E

    ld [hl], e
    cp $FC
    jr nz, jr_016_5B9B

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_5B41:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $1E
    ld b, b
    and [hl]
    ld d, h

jr_016_5B4B:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_5B4F:
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
    jr nz, jr_016_5BAF

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_5BDD

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
    ld d, $1E

jr_016_5B82:
    ld b, b
    sbc a
    adc a

jr_016_5B85:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_016_5BF2

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_5C01

    ld h, c
    halt

jr_016_5B9B:
    ld h, l
    jr nz, jr_016_5C11

jr_016_5B9E:
    ld h, l
    ld [hl], h
    jr nz, jr_016_5C03

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_016_5BF0

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_016_5C00

    ld h, e
    ld l, a

jr_016_5BAF:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_016_5C28

jr_016_5BB8:
    ld [hl], d
    ld h, l
    halt
    ld l, c

jr_016_5BBC:
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38

jr_016_5BC0:
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_5C43

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_016_5C33

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

jr_016_5BDD:
    xor l
    adc a
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $1E
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]

jr_016_5BF0:
    add h
    ld [bc], a

jr_016_5BF2:
    inc bc
    dec hl
    ret nc

    ld b, b

jr_016_5BF6:
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_016_5BFD:
    rst $20
    ld b, [hl]
    add h

jr_016_5C00:
    ld [bc], a

jr_016_5C01:
    inc b
    inc l

jr_016_5C03:
    ret nc

    ld b, c
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec b

jr_016_5C11:
    dec l
    ret nc

    ld b, d
    rst $38
    or l
    jr z, jr_016_5BB8

    cp $B5
    jr z, jr_016_5BBC

    db $FD
    or l
    jr z, jr_016_5BC0

    ei
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

jr_016_5C28:
    ld b, [hl]
    add h
    ld bc, $1703
    ret nc

    ld [$466E], sp
    nop
    dec hl

jr_016_5C33:
    and b

jr_016_5C34:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1804
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b

jr_016_5C43:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1905
    ret nc

    ld [$B36E], sp
    inc sp
    and c
    nop
    or e
    jr z, jr_016_5BF6

    nop
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_5BFD

    ld bc, $AD16

jr_016_5C60:
    ld e, h
    cp $2B
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1703
    ret nc

    ld [$466F], sp
    nop
    ld a, [hl+]
    and b
    ld bc, $B116
    ld e, h
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld bc, $33AD
    and c
    dec bc
    ld bc, $A133
    ld bc, $A128
    xor l
    jr z, jr_016_5C34

    dec bc
    ld bc, $A128
    dec b
    ld bc, $0F46
    ld bc, $A128
    dec b
    inc bc
    ld d, $E8
    ld e, e
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    rlca
    ld d, $03
    ld e, a
    ld c, b
    add hl, de
    call c, $B346
    inc sp
    and c
    ld bc, $28B6
    and b
    ld bc, $28B5
    and b
    db $FD
    or l
    jr z, jr_016_5C60

    ei
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    inc b
    inc l
    ret nc

    ld b, c
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec b
    dec l
    ret nc

    ld b, d
    rst $38
    ld b, [hl]

jr_016_5CE0:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $230F
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1804
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1905
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $220E
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1703
    ret nc

    ld [$486F], sp
    add hl, de

jr_016_5D3B:
    call c, $AA46
    jr z, jr_016_5CE0

    ld [bc], a
    ld d, $90

jr_016_5D43:
    ld e, l
    cp $2C
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1804
    ret nc

    ld [$466F], sp
    nop
    ld a, [hl+]
    and b
    ld bc, $9416
    ld e, l
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    inc bc
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    ld bc, $A128
    xor l
    jr z, @-$5D

    dec bc
    ld bc, $A128
    dec b
    ld bc, $0F46
    ld bc, $A128
    dec b
    inc bc
    ld d, $E8
    ld e, e
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    rlca
    ld d, $03
    ld e, a
    ld c, b
    add hl, de
    call c, $B346
    inc sp
    and c
    ld [bc], a
    or [hl]
    jr z, jr_016_5D3B

    ld [bc], a
    or l
    jr z, @-$5E

    cp $B5
    jr z, jr_016_5D43

    ei
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    inc bc
    dec hl
    ret nc

    ld b, b
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec b
    dec l
    ret nc

    ld b, d
    rst $38
    ld b, [hl]

jr_016_5DC3:
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $220E
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1703
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1905
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $230F
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1804
    ret nc

    ld [$486F], sp
    add hl, de

jr_016_5E1E:
    call c, $AA46
    jr z, jr_016_5DC3

    inc b
    ld d, $73

jr_016_5E26:
    ld e, [hl]
    cp $2D
    ret nc

    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1905
    ret nc

    ld [$466F], sp
    nop
    ld a, [hl+]
    and b
    ld bc, $7716
    ld e, [hl]
    xor l
    inc sp
    and c

Call_016_5E46:
    dec bc
    ld bc, $A133
    dec b
    dec b
    xor l
    inc sp
    and c
    dec bc
    ld bc, $A133
    ld bc, $A128
    xor l
    jr z, @-$5D

    dec bc
    ld bc, $A128
    dec b
    ld bc, $0F46
    ld bc, $A128
    dec b
    inc bc
    ld d, $E8
    ld e, e
    ld b, [hl]
    rrca
    ld bc, $A133
    dec b
    rlca
    ld d, $03
    ld e, a
    ld c, b
    add hl, de
    call c, $B346
    inc sp
    and c
    inc bc
    or [hl]
    jr z, jr_016_5E1E

    inc b
    or l
    jr z, @-$5E

    cp $B5
    jr z, jr_016_5E26

    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    inc bc
    dec hl
    ret nc

    ld b, b
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    inc b
    inc l
    ret nc

    ld b, c
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $220E
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $230F
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1703
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1804
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $1905
    ret nc

    ld [$486F], sp
    add hl, de
    call c, $B646
    ld a, [hl+]
    and b
    ld bc, $D76B
    ld l, l
    ld l, $D8
    ld l, c
    cpl
    add e
    ld b, d
    ret nc

    ld [$4205], sp
    ret nc

    inc bc
    ld b, $48
    ld d, $E8
    ld e, e
    or [hl]
    jr z, @-$5E

    ld [$0046], sp
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld c, e
    ret nc

    ld b, e
    cp $4E
    ld bc, $A133
    ld d, $00
    nop
    ld b, a
    ld e, a
    ld d, $01
    nop
    cp d
    ld e, a
    ld d, $02
    nop
    jp $165F


    inc bc
    nop
    call z, $FF5F
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $220E
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $230F
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld [$436F], sp
    ld [$0046], sp
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $220E
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_5F8E:
    ld bc, $230F
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2410
    ret nc

    ld [$B56E], sp
    jr z, @-$5E

    rst $30
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld c, e
    ret nc

    ld b, e
    rst $38
    ld c, b
    add hl, de

jr_016_5FB8:
    call c, $0946
    ld a, [bc]
    ld d, $D5
    ld e, a
    ld c, b
    add hl, de
    call c, $0946
    ld a, [bc]
    ld d, $FF
    ld e, a
    ld c, b
    add hl, de
    call c, $0946
    ld a, [bc]
    ld d, $29
    ld h, b
    ld c, b
    add hl, de
    call c, $1546
    ld de, $5531
    jr nc, jr_016_5FEC

    add hl, sp
    ld d, a
    ld h, b
    ld de, $5662
    jr nc, jr_016_5FF4

    ld e, d
    ld d, h
    jr jr_016_5FE7

jr_016_5FE7:
    inc d
    ld de, $5400
    or l

jr_016_5FEC:
    jr z, jr_016_5F8E

    rst $30
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_5FF4:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca

jr_016_5FFA:
    ld c, e
    ret nc

    ld b, e
    rst $38
    ld b, l
    dec d
    ld de, $5739
    jr nc, jr_016_6016

    dec l
    ld d, h
    ld b, b
    ld de, $555E
    jr nz, jr_016_601E

    ld h, d
    ld d, [hl]
    jr jr_016_6011

jr_016_6011:
    inc d
    ld de, $5400
    or l

jr_016_6016:
    jr z, jr_016_5FB8

    rst $30
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_601E:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld c, e
    ret nc

    ld b, e
    rst $38
    ld b, l
    dec d
    ld de, $542D
    db $10
    ld de, $5739
    add b
    ld de, $5400
    jr nz, jr_016_6048

    ld h, d
    ld d, [hl]
    ld b, b
    ld de, $555E
    ld [$1400], sp
    ld de, $5400
    or l
    jr z, @-$5E

    rst $30
    ld b, [hl]

jr_016_6048:
    nop

jr_016_6049:
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld c, e
    ret nc

    ld b, e
    rst $38
    ld b, l
    or [hl]
    jr z, jr_016_5FFA

    db $10
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $11
    add hl, hl
    pop de
    ld b, e
    cp $09
    dec bc
    ld d, $73
    ld h, b
    ld c, b
    add hl, de
    call c, $1546
    ld de, $5400
    inc a
    ld de, $555E
    ld b, b
    ld de, $5400
    jr nz, jr_016_6092

    ld e, d
    ld d, h
    ld b, b
    nop
    inc d
    ld de, $5400
    or l
    jr z, @-$5E

    rst $28
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_6092:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $11
    add hl, hl
    pop de
    ld b, h
    rst $38
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $2AB5
    and b
    rst $30
    or e
    jr z, jr_016_6049

    nop
    or e
    inc sp
    and c
    nop
    or l
    dec hl
    and b
    ei
    sub a
    or e
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
    ld l, [hl]
    ld d, b
    inc de
    ld h, a
    sbc b
    ld b, l
    ld l, h
    ret


    ld b, l

jr_016_60C8:
    dec b
    nop
    inc [hl]
    ld h, e
    ld c, $0D
    sub h
    pop de
    nop
    inc d
    ld [hl], h
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    ld b, $18
    sub $D2
    ld [$E719], sp
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    inc bc
    add a
    ld h, a
    dec bc
    jr jr_016_60C8

    jp nc, $1908

    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    inc b
    add a
    ld h, a
    add hl, bc
    add hl, de
    rst $30
    jp nc, $1908

    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    dec b
    add a
    ld h, a
    ld c, $19
    db $FC
    jp nc, $1908

    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    ld b, $87
    ld h, a
    inc b
    ld a, [de]
    db $10
    db $D3
    ld [$E719], sp
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    rlca
    add a
    ld h, a
    inc c
    dec de
    ld [hl], $D3
    ld [$E719], sp
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    ld [$6787], sp
    ld [$501C], sp
    db $D3
    ld [$E719], sp
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    ld a, [bc]
    add sp, $6D
    rlca
    inc b
    ld a, a
    ret nc

jr_016_6148:
    inc b
    ld d, $43
    ld l, l
    add hl, de
    add sp, $46
    dec b
    dec bc
    add sp, $6D
    ld d, $0D
    sbc h
    pop de
    inc b
    ld de, $5400
    add hl, de
    add sp, $46

jr_016_615E:
    dec b
    ld [de], a
    add sp, $6D

jr_016_6162:
    ld [bc], a
    ld de, $D200

jr_016_6166:
    inc b
    ld d, $77
    ld l, l

jr_016_616A:
    add hl, de
    add sp, $46
    dec b

jr_016_616E:
    inc de
    add sp, $6D
    inc d

jr_016_6172:
    ld a, [de]
    jr nz, jr_016_6148

    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    dec b
    inc d
    add sp, $6D
    inc d
    inc e
    ld e, h
    db $D3
    inc b
    ld de, $5400
    add hl, de
    add sp, $46
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_016_61D3

    nop
    add b
    nop
    ld l, [hl]
    inc b
    add hl, bc
    nop
    ld b, b
    ld b, b
    add b
    nop
    dec bc
    nop
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de
    dec bc
    inc d
    dec bc
    inc bc
    dec bc
    dec b
    dec bc
    ld b, $0B
    ld [$27B3], sp
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, @-$5E

    db $FD
    or l
    jr z, jr_016_615E

    ei
    or l
    jr z, jr_016_6162

    rst $30
    or l
    jr z, jr_016_6166

    rst $28
    or l
    jr z, jr_016_616A

    rst $18
    or l
    jr z, jr_016_616E

    cp a
    or l
    jr z, jr_016_6172

    ld a, a

jr_016_61D3:
    or l
    add hl, hl
    and b
    cp $B5
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or l
    ld a, [hl+]
    and b
    ei
    or l
    add hl, hl
    and b
    cp a
    or l
    add hl, hl
    and b
    ld a, a
    or l
    ld a, [hl+]
    and b
    rst $28
    or l
    ld a, [hl+]
    and b
    rst $18
    or l
    ld a, [hl+]
    and b
    cp a
    or l
    ld a, [hl+]
    and b
    ld a, a
    or l
    dec hl
    and b
    cp $B3
    inc a
    and c
    nop
    or e
    dec a
    and c
    nop
    sbc e
    ld d, $0E
    ld h, d
    add [hl]
    sbc b
    ld b, l
    sbc [hl]
    or [hl]
    dec hl
    and b
    inc b
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, @+$54

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_016_626F

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld d, $D6
    ld h, e
    ld d, $7F
    ld b, b
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A13C
    dec b
    ld bc, $3B16
    ld h, e
    inc c
    inc bc
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6259

    db $DB
    jp nc, $FB08

    inc c
    dec b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_6259:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    ld c, $FC
    jp nc, $FB08

    inc c
    ld b, $46
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [de]

jr_016_626F:
    inc b
    db $10
    db $D3
    ld [$0CFB], sp
    ld [$0046], sp
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    ld [$D350], sp
    ld [$43FB], sp
    rrca
    dec bc
    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_629A

    sub $D2
    ld [$0BFC], sp
    inc b

jr_016_629A:
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    add hl, bc
    rst $30
    jp nc, $FC08

    dec bc
    rlca
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec de
    inc c
    ld [hl], $D3
    ld [$43FC], sp
    ld [hl-], a
    inc c
    ld [bc], a
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_62CF

    sub $D2
    ld [$0CFB], sp
    inc b

jr_016_62CF:
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    add hl, bc
    rst $30
    jp nc, $FB08

    inc c
    rlca
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec de
    inc c
    ld [hl], $D3
    ld [$43FB], sp
    rrca
    dec bc
    inc bc
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6309

    db $DB
    jp nc, $FC08

    dec bc
    dec b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_6309:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    ld c, $FC
    jp nc, $FC08

    dec bc
    ld b, $46
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld a, [de]
    inc b
    db $10
    db $D3
    ld [$0BFC], sp
    ld [$0046], sp
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc e
    ld [$D350], sp
    ld [$43FC], sp
    ld [hl-], a
    ld c, b
    ld d, $37
    ld h, d
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    inc c
    dec b
    inc c
    ld b, $0C
    rlca
    inc c
    ld [$B345], sp
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$9316], sp
    ld h, e
    ld c, e
    ld e, $1D
    ld l, c
    sbc b
    ld a, b
    inc d
    ld a, l
    rrca
    inc de
    pop hl
    ld [hl], b
    rlca
    nop
    dec d
    ld [hl], c
    add hl, bc
    nop
    ld d, $89
    ld h, e
    or [hl]
    ld a, [hl+]
    and b
    ld [HeaderGlobalChecksum], sp
    ret c

    ret


    ld d, $00
    nop
    sbc c
    ld h, e
    ld d, $01
    nop
    sbc [hl]
    ld h, e
    ld d, $02
    nop
    and e
    ld h, e
    ld d, $03
    nop
    xor b
    ld h, e
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_016_638F

jr_016_638F:
    ld c, b
    ld d, $AD
    ld h, e
    inc c
    nop
    ld c, b
    ld d, $AD
    ld h, e
    inc d
    ld de, $74CF
    ld b, l
    inc d
    ld de, $7498
    ld b, l
    inc d
    ld de, $74A2
    ld b, l
    inc d
    ld de, $748E
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_016_6437

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $16
    jp nc, $AD63

    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    and c
    ld h, b
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    push hl
    ld h, b
    ld e, $08
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_016_63F4

    ld a, d
    jr nz, jr_016_6469

    xor l
    ld [hl-], a
    and c

jr_016_63F4:
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    and c
    ld h, b
    sbc [hl]
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_6473

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_647C

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld d, $5A
    ld h, h
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_64A3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_64AD

    ld l, a
    ld [hl], l
    rst $38

jr_016_6437:
    db $FC
    jr nz, jr_016_649B

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
    inc a
    and b
    ld [$0005], sp
    ld d, $96
    ld h, h
    and c
    xor l
    adc a
    and c
    ld bc, $A132
    ld c, b
    ld d, $6C
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_016_64D3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_016_64DD

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a

jr_016_6469:
    ld [hl], d
    ld h, l
    jr nz, jr_016_64E1

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_64A4

    dec [hl]

jr_016_6473:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_016_647C:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc a
    and b
    ld [$0005], sp
    ld d, $96
    ld h, h
    and c
    xor l
    adc a
    and c
    ld bc, $A132
    ld c, b
    ld d, $6C
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_016_649B:
    ld bc, $A190
    ld d, $15
    ld h, l
    sbc a
    sub b

jr_016_64A3:
    and c

jr_016_64A4:
    ld b, [hl]
    rrca
    ld bc, $A190
    dec b
    ld bc, $DB16

jr_016_64AD:
    ld h, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_6517

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
    jr nz, jr_016_6514

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_6530

    ld [hl], e
    cp $FC
    jr nz, jr_016_652D

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_016_64D3:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld d, $6C
    ld b, b
    and [hl]
    ld d, h

jr_016_64DD:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_016_64E1:
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
    jr nz, jr_016_6541

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_016_656F

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
    ld d, $6C

jr_016_6514:
    ld b, b
    sbc a
    sub b

jr_016_6517:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_016_6584

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_016_6593

    ld h, c
    halt

jr_016_652D:
    ld h, l
    jr nz, jr_016_65A3

jr_016_6530:
    ld h, l
    ld [hl], h
    jr nz, jr_016_6595

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_016_6582

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_016_6592

    ld h, e
    ld l, a

jr_016_6541:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

jr_016_654A:
    ld [hl], d
    ld h, l
    halt
    ld l, c

jr_016_654E:
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38

jr_016_6552:
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_65D5

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_016_65C5

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

jr_016_656F:
    xor l
    sub b
    and c
    ld bc, $A132
    and c
    ld c, b
    ld d, $6C
    ld b, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]

jr_016_6582:
    add h
    inc b

jr_016_6584:
    add hl, de
    sub c
    ret nc

    ld b, b
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_6592:
    inc b

jr_016_6593:
    ld a, [de]
    sub d

jr_016_6595:
    ret nc

    ld b, c
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    dec de

jr_016_65A3:
    sub e
    ret nc

    ld b, d
    rst $38
    or l
    jr z, jr_016_654A

    cp $B5
    jr z, jr_016_654E

    db $FD
    or l
    jr z, jr_016_6552

    ei
    or e
    jr z, @-$5D

    nop
    ld c, [hl]
    ld bc, $A133
    ld d, $15
    nop
    dec l
    ld h, [hl]
    ld d, $1F
    nop
    ld [hl], c
    ld h, [hl]

jr_016_65C5:
    ld d, $0C
    nop
    adc h
    ld h, [hl]
    rst $38
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a

jr_016_65D5:
    add hl, de
    ld d, l
    ret nc

    ld b, b
    db $FC
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    ld a, [de]
    ld d, [hl]
    ret nc

    ld b, c
    db $FC
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec de
    ld d, a
    ret nc

    ld b, d
    db $FC
    dec b
    ld a, [bc]
    add a
    ld h, a
    add hl, de
    ld [bc], a
    ld d, l
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    dec bc
    add a
    ld h, a
    ld a, [de]
    ld [bc], a
    ld d, [hl]
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec b
    ld [de], a
    add a
    ld h, a
    dec de
    ld [bc], a
    ld d, a
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    or e
    inc sp
    and c
    nop
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    inc e
    or d
    ret nc

    nop
    ld h, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $1C
    ret nc

    ret nc

    nop

jr_016_664A:
    add h
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
    inc e
    xor $D0
    nop
    rla
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

jr_016_6661:
    ld b, [hl]
    add h
    ld [bc], a
    dec de
    ld d, a
    ret nc

    ld [$B36F], sp
    inc sp
    and c
    nop
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    add hl, de
    ld d, l
    ret nc

    ld [$B66F], sp
    add hl, hl
    and b
    ld b, b
    or e
    inc sp
    and c
    nop
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b

jr_016_6690:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    ld a, [de]
    ld d, [hl]
    ret nc

    ld [$B66F], sp
    add hl, hl

jr_016_669D:
    and b
    add b
    or e
    inc sp
    and c
    nop
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_664A

    ld bc, $CF16
    ld h, [hl]
    cp $91
    ret nc

    ld e, $09
    xor l
    jr z, @-$5D

    dec bc
    ld bc, $A128
    dec b
    ld bc, HeaderGlobalChecksum
    jr z, jr_016_6661

    ld d, $01
    nop
    db $D3
    ld h, [hl]
    ld d, $02
    nop
    ldh [$66], a
    rst $38
    ld c, b
    ld d, $7A
    ld h, l
    ld c, b
    add hl, de
    call c, $AD46
    inc sp
    and c

jr_016_66D6:
    dec bc
    ld bc, $A133
    dec b
    ld bc, $1948
    call c, $AD46
    inc sp
    and c

jr_016_66E3:
    dec bc
    ld bc, $A133
    dec b
    ld a, [bc]
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_6690

    ld [bc], a
    ld d, $15
    ld h, a
    cp $92
    ret nc

    ld e, $09
    xor l
    jr z, jr_016_669D

    dec bc
    ld bc, $A128
    dec b
    ld bc, HeaderGlobalChecksum
    jr z, @-$5D

    ld d, $01
    nop
    add hl, de
    ld h, a
    ld d, $02
    nop
    ld h, $67
    rst $38
    ld c, b
    ld d, $7A
    ld h, l
    ld c, b
    add hl, de
    call c, $AD46
    inc sp
    and c

jr_016_671C:
    dec bc
    ld bc, $A133
    dec b
    ld [bc], a
    ld c, b
    add hl, de
    call c, $AD46
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    inc d
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_66D6

    inc b
    ld d, $5B
    ld h, a
    cp $93
    ret nc

    ld e, $09
    xor l
    jr z, jr_016_66E3

    dec bc
    ld bc, $A128
    dec b
    ld bc, HeaderGlobalChecksum
    jr z, @-$5D

    ld d, $01
    nop
    ld e, a
    ld h, a
    ld d, $02
    nop
    ld l, h
    ld h, a
    rst $38
    ld c, b
    ld d, $7A
    ld h, l
    ld c, b
    add hl, de
    call c, $AD46
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    inc bc
    ld c, b

jr_016_6769:
    add hl, de
    call c, $AD46
    inc sp
    and c
    dec bc
    ld bc, $A133
    dec b
    ld e, $48
    add hl, de
    call c, $AA46
    jr z, jr_016_671C

    ld [$8516], sp
    ld h, a
    cp $8B
    pop de
    ld e, $09
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    db $10
    ld d, $C2
    ld h, a
    cp $99
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc d
    inc d
    ld l, h
    jp nc, $8A00

    ld b, [hl]
    nop
    dec hl
    and b
    inc b

jr_016_67A9:
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec d
    inc d
    adc d
    jp nc, $8400

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld d, $14
    xor b
    jp nc, $A500

    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_6769

    jr nz, @+$18

    jp nc, $FE67

    pop hl
    pop de
    ld e, $09
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld b, b
    ld d, $02
    ld l, b
    cp $E9
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    dec b
    push hl
    pop de
    ld [$05FB], sp
    ld [bc], a
    add a
    ld h, a
    dec b
    db $10
    push hl
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    ld d, $4A
    ld h, e
    dec bc
    ld [bc], a
    ld c, b
    add hl, de
    call c, $AA46
    jr z, jr_016_67A9

    add b
    ld d, $3F
    ld l, b
    cp $EC
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld c, $14
    cp b
    pop de
    nop
    ld h, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rrca
    inc d
    sub $D1
    nop
    add h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    db $10
    inc d
    db $F4
    pop de
    nop
    and l
    ld c, b
    add hl, de
    call c, $AA46
    add hl, hl
    and b
    ld bc, $7C16
    ld l, b
    cp $FB
    pop de
    ld e, $09
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    inc e
    or d
    ret nc

    pop bc
    ld h, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $1C
    ret nc

    ret nc

    nop
    add h
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
    inc e
    xor $D0
    nop
    ld d, h
    ld c, b
    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    ld bc, $CF16
    ld l, b
    cp $AF
    jp nc, $091E

    ld l, e
    rst $10
    ld l, l
    ld l, $D8
    ld l, c
    cpl
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [de], a
    dec de
    scf
    jp nc, $3400

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc de
    dec de
    ld d, l
    jp nc, $8400

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc d
    dec de
    ld [hl], e
    jp nc, $8400

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec d
    dec de
    sub c
    jp nc, $A500

    ld c, b
    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    ld [bc], a
    ld d, $B5
    ld l, c
    cp $EB
    jp nc, $091E

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6903

    jp hl


    jp nc, Jump_016_6F08

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6916

    db $ED
    jp nc, Jump_016_6F08

    ld b, e
    dec b
    ld b, [hl]
    nop
    dec hl
    and b

jr_016_6903:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6923

    jp hl


    jp nc, $6E08

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]

jr_016_6916:
    add h
    jr jr_016_6936

    db $ED
    jp nc, $6E08

    ld b, e
    dec b
    ld b, [hl]
    nop
    dec hl
    and b

jr_016_6923:
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_6943

    jp hl


    jp nc, Jump_016_6F08

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]

jr_016_6936:
    add h
    jr jr_016_6956

    db $ED
    jp nc, Jump_016_6F08

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de

jr_016_6943:
    rst $20
    ld b, [hl]
    add h
    rla
    ld a, [de]
    call z, $C2D2
    add hl, sp
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rla

jr_016_6956:
    dec de
    call $C2D2
    ld a, [hl-]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rla
    inc e
    adc $D2
    jp nz, $463B

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_698F

    ld [$C2D2], a
    ld c, c
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    jr jr_016_69A0

    db $EC
    jp nc, Jump_016_4BC2

    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20

jr_016_698F:
    ld b, [hl]
    add h
    add hl, de
    ld a, [de]
    ld [$C2D3], sp
    ld e, c
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_69A0:
    add hl, de
    dec de
    add hl, bc
    db $D3
    jp nz, Jump_016_465A

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    inc e
    ld a, [bc]
    db $D3
    jp nz, Jump_016_485B

    add hl, de
    call c, $AA46
    ld a, [hl+]
    and b
    inc b
    ld d, $D4
    ld l, c
    cp $27
    db $D3
    ld e, $09
    dec b
    dec bc
    add sp, $6D
    ld d, $0D
    sbc h
    pop de
    inc b
    ld d, $55
    ld l, l
    add hl, de
    add sp, $46
    ld c, b
    add hl, de
    call c, Call_016_4646
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    inc e
    or d
    ret nc

    nop
    daa
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld b, $1C
    ret nc

    ret nc

    jp nz, $4637

    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    rlca
    inc e
    xor $D0
    nop
    rlca
    ld b, l
    or [hl]
    ld a, [hl+]
    and b
    db $10
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $42
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $290B
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2D0F
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $3012
    ret nc

    ld [$156F], sp
    ld de, $748E
    jr c, jr_016_6A48

jr_016_6A48:
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $80
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $290B
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $2D0F
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld bc, $3012
    ret nc

    ld [$B56E], sp
    ld a, [hl+]
    and b
    rst $28
    add hl, de
    ld b, l
    or [hl]
    ld a, [hl+]
    and b
    jr nz, @+$48

    rrca
    nop
    add hl, hl
    and b
    ld b, b
    dec b
    nop
    ld d, $C2
    ld l, d
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    add hl, bc
    ld b, l
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec c
    ld c, c
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    ld de, $D04D
    ld [$156F], sp
    ld de, $748E
    jr c, jr_016_6AC8

jr_016_6AC8:
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    ld b, b
    dec b
    nop
    ld d, $00
    ld l, e
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    add hl, bc
    ld b, l
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    dec c
    ld c, c
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    ld [bc], a
    ld de, $D04D
    ld [$B56E], sp
    ld a, [hl+]
    and b
    rst $18
    add hl, de
    ld b, l
    or [hl]
    ld a, [hl+]
    and b
    ld b, b
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $42
    ld l, e
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    dec bc
    ld h, l
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld l, c
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    inc de
    ld l, l
    ret nc

    ld [$156F], sp
    ld de, $748E

Call_016_6B46:
    jr c, jr_016_6B48

jr_016_6B48:
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $80
    ld l, e
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    dec bc
    ld h, l
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    rrca
    ld l, c
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc bc
    inc de
    ld l, l
    ret nc

    ld [$B56E], sp
    ld a, [hl+]
    and b
    cp a
    add hl, de
    ld b, l
    or [hl]
    ld a, [hl+]
    and b
    add b
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    ld b, b
    dec b
    nop
    ld d, $C2
    ld l, e
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    add hl, bc
    add c
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    dec c
    add l
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    ld de, $D089
    ld [$156F], sp
    ld de, $748E
    jr c, jr_016_6BC8

jr_016_6BC8:
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    ld b, b
    dec b
    nop
    ld d, $00
    ld l, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    add hl, bc
    add c
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    dec c
    add l
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    inc b
    ld de, $D089
    ld [$B56E], sp
    ld a, [hl+]
    and b
    ld a, a
    add hl, de
    ld b, l
    or [hl]
    dec hl
    and b
    ld bc, $0F46
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $42
    ld l, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    dec bc
    and c
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    rrca
    and l
    ret nc

    ld [$466F], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    ld [de], a
    xor b
    ret nc

    ld [$156F], sp
    ld de, $748E
    jr c, jr_016_6C48

jr_016_6C48:
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    add b
    dec b
    nop
    ld d, $80
    ld l, h
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    dec bc
    and c
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    rrca
    and l
    ret nc

    ld [$466E], sp
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec b
    ld [de], a
    xor b
    ret nc

    ld [$B56E], sp
    dec hl
    and b
    cp $19
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    db $10
    ld d, $9F
    ld l, h
    dec b
    ld [bc], a
    pop hl
    ld [hl], b
    dec d
    ld bc, $D033
    nop
    ld d, $06
    ld l, d
    ld d, $08
    ld l, l
    dec bc
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    jr nz, jr_016_6CBC

    cp c
    ld l, h
    dec b
    inc bc
    pop hl
    ld [hl], b
    dec d
    ld [bc], a
    ld d, c
    ret nc

    nop
    ld d, $86
    ld l, d
    ld d, $08
    ld l, l
    dec bc
    inc bc
    ld b, l
    ld b, [hl]
    nop

jr_016_6CBC:
    ld a, [hl+]
    and b
    ld b, b
    ld d, $D3
    ld l, h
    dec b
    inc b
    pop hl
    ld [hl], b
    dec d
    inc bc
    ld l, a
    ret nc

    nop
    ld d, $06
    ld l, e
    ld d, $08
    ld l, l
    dec bc
    inc b
    ld b, l
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    add b
    ld d, $ED
    ld l, h
    dec b
    dec b
    pop hl
    ld [hl], b
    dec d
    inc b
    adc l
    ret nc

    nop
    ld d, $86
    ld l, e
    ld d, $08
    ld l, l
    dec bc
    dec b
    ld b, l
    ld b, [hl]
    nop
    dec hl
    and b
    ld bc, $0716
    ld l, l
    dec b
    ld b, $E1
    ld [hl], b
    dec d
    dec b
    xor e
    ret nc

    nop
    ld d, $06
    ld l, h
    ld d, $08
    ld l, l
    dec bc
    ld b, $45
    or e
    ld sp, $01C7
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1648
    and c
    ld h, b
    add hl, bc
    inc de

jr_016_6D1B:
    ld d, $DB
    ld l, l
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    add hl, de
    inc de
    ld bc, $00D3
    ld hl, sp+$45
    add hl, bc
    inc d
    ld d, $01
    ld l, [hl]
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h
    dec de

jr_016_6D3D:
    inc de
    dec a
    db $D3
    nop
    ld hl, sp+$45
    dec d
    ld de, $5739
    ld h, b
    ld de, $5400
    ld b, b
    ld de, $5635
    ld h, b
    nop
    ld c, b
    ld d, $43
    ld l, l
    dec d
    ld de, $5635
    jr nc, @+$13

    dec l
    ld d, h
    ld b, b
    ld de, $5739
    ld b, b
    ld de, $5531
    db $10
    ld de, $5739
    jr nz, @+$13

    ld sp, $3055
    ld de, $5635
    jr nc, jr_016_6D73

jr_016_6D73:
    ld c, b
    ld d, $55
    ld l, l
    ld b, [hl]
    nop
    jr z, jr_016_6D1B

    jr nz, jr_016_6D93

    sbc c
    ld l, l
    dec d
    ld de, $5739
    ld h, b
    ld de, $5531
    db $10
    ld de, $5635
    ld h, b
    ld de, $542D
    db $10
    ld de, $5400

jr_016_6D93:
    ld [$4800], sp
    ld d, $77
    ld l, l
    ld b, [hl]
    nop
    jr z, jr_016_6D3D

    ld [$BB16], sp
    ld l, l
    dec d
    ld de, $542D
    ld h, b
    ld de, $5635
    jr nz, jr_016_6DBC

    ld sp, $6055
    ld de, $5739
    jr nz, @+$13

    nop
    ld d, h
    ld [$4800], sp
    ld d, $99
    ld l, l
    dec d

jr_016_6DBC:
    ld de, $5635
    ld d, b
    ld de, $542D
    stop
    dec d
    ld de, $542D
    jr nc, jr_016_6DDC

    dec [hl]
    ld d, [hl]
    ld b, b
    ld de, $5531
    jr nc, jr_016_6DE4

    add hl, sp
    ld d, a
    ld b, b
    nop
    ld c, b
    ld d, $C5
    ld l, l
    dec d

jr_016_6DDC:
    ld de, $5400
    inc a
    ld de, $542D
    ld h, b

jr_016_6DE4:
    ld de, $5400
    jr nc, jr_016_6DFA

    ld sp, $6055
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_6DFA:
    add hl, de
    inc de
    ld bc, $C8D3
    ld hl, sp+$45
    dec d
    ld de, $5400
    inc a
    ld de, $5531
    ld b, b
    ld de, $5400
    jr nc, jr_016_6E20

    dec l
    ld d, h
    ld b, b
    nop
    inc d
    ld de, $5400
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    add h

jr_016_6E20:
    dec de
    inc de
    dec a
    db $D3
    ret


    ld hl, sp+$45
    ld b, [hl]
    rrca
    ld bc, $A13D
    dec b
    ld bc, $E719
    ld b, [hl]
    or e
    dec a
    and c
    ld bc, $165C
    scf
    ld h, d
    ld b, l
    or e
    inc a
    and c
    ld bc, $1E45
    rra
    ld e, h
    ld d, $46
    ld l, [hl]
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
    jr nz, jr_016_6E9C

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_016_6EAD

    ld l, a
    ld l, $FF
    jr nz, jr_016_6EBD

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld d, $A9
    ld l, [hl]
    ld d, $70
    ld l, [hl]
    sbc d
    ld d, $92
    ld l, a
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_016_6ED1

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_016_6EF8

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld d, $9F
    ld l, [hl]
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_016_6ECA

    ld l, $FE
    db $FD
    ld c, b

jr_016_6E9C:
    ld d, $A9
    ld l, [hl]
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_016_6ED7

    ld l, $FE
    db $FD
    and c
    sbc e
    ld d, $3F

jr_016_6EAD:
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld [hl+], a
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_016_6EBD:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de

jr_016_6ECA:
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl

jr_016_6ED1:
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]

jr_016_6ED7:
    dec b
    nop
    inc [hl]
    ld h, e
    inc d
    rlca
    and $D0
    nop
    inc d
    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc d
    ld [$D104], sp
    nop
    ld d, $13
    ld l, a
    ld d, $10
    halt
    ld l, [hl]
    jr nc, jr_016_6F05

jr_016_6EF8:
    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38

jr_016_6F05:
    ld a, a
    sbc b
    ld a, d

Jump_016_6F08:
    ld h, b
    rrca
    sbc e
    ld d, $3F
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    add b
    add hl, de
    db $10
    ld b, a
    inc d
    inc de
    ld e, h
    ld l, l
    ld b, l
    ld [hl+], a
    ld [hl+], a
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    ld d, $97
    jp nc, $1600

    add c
    ld l, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc d
    ld [$D104], sp
    nop
    ld d, $13
    ld l, a
    ld d, $10
    halt
    ld l, [hl]
    jr nc, jr_016_6F72

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    nop
    add [hl]
    ld [hl], e
    rrca

jr_016_6F72:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld d, $3F
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_016_6F87

jr_016_6F87:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld [hl+], a
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec e
    dec b
    or e
    ret nc

    nop
    ld d, $F2
    ld l, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc d
    ld [$D104], sp
    nop
    ld d, $13
    ld l, a
    ld d, $10
    halt
    ld l, [hl]
    jr nc, jr_016_6FE4

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38

jr_016_6FE4:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld d, $3F
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    ld a, l
    ld e, h
    jr nc, @+$16

    xor e
    ld e, l
    nop
    nop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld e, $AD
    add hl, sp
    and c
    dec bc
    ld bc, $A139
    dec b
    ld bc, $35B3
    and c
    ld [HeaderGlobalChecksum], sp
    ld [hl], $A1
    ld d, $00
    nop
    scf
    ld [hl], b
    ld d, $01
    nop
    ccf
    ld [hl], b
    ld d, $02
    nop
    ld d, b
    ld [hl], b
    ld d, $03
    nop
    ld h, c
    ld [hl], b
    ld d, $04
    nop
    ld [hl], d
    ld [hl], b
    ld d, $05
    nop
    ld [hl], d
    ld [hl], b
    rst $38
    ld c, b
    ld d, $72
    ld [hl], b
    or e
    ld [hl], $A1
    inc bc
    ld c, b
    ld d, $61
    ld [hl], b
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, b
    cp b
    ld d, c
    inc de
    ld c, b
    dec bc
    adc e
    ld l, h
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, b
    cp b
    ld d, c
    inc de
    ld c, b
    dec bc
    ld de, $976D
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, b
    cp b
    ld d, c
    inc de
    ld c, b
    dec bc
    ld c, d
    ld l, l
    ld bc, $0E18
    ld c, b
    ld d, $20
    ld l, a
    ld [hl+], a
    ld [hl+], a
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    jr @+$10

    cp h
    pop de
    nop
    ld d, $D3
    ld [hl], b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld d, $10
    or $D1
    nop
    ld d, $E4
    ld [hl], b
    ld d, $E9
    ld [hl], b
    ld l, [hl]
    jr nc, jr_016_70CB

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    rla
    db $10
    ld [hl], e

jr_016_70CB:
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
    ld e, l
    ld e, h
    jr nz, @+$16

    xor e
    ld e, l
    jr nz, jr_016_70DF

jr_016_70DF:
    ld e, [hl]
    dec bc
    xor d
    ld l, h
    ld b, l
    inc d
    inc de
    ld a, $6D
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld d, $F5
    ld [hl], b
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_016_717C

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_016_7176

    ld h, c
    halt
    ld h, l
    jr nz, jr_016_7174

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $169B
    ccf
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld [hl+], a
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec b
    inc bc
    ld e, a
    ret nc

    nop
    ld d, $82
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    dec b
    sbc l
    ret nc

    nop
    ld d, $B6
    ld [hl], c
    ld d, $C7
    ld [hl], c
    ld l, [hl]
    jr nc, jr_016_717A

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop

jr_016_7174:
    dec bc
    ld [bc], a

jr_016_7176:
    adc b
    rlca
    inc b
    ld [hl], e

jr_016_717A:
    rrca
    rst $38

jr_016_717C:
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
    ld e, l
    ld e, h
    jr nz, jr_016_719E

    or l
    ld e, l
    jr nz, jr_016_718E

jr_016_718E:
    or e
    dec [hl]
    and c
    ld [$0B5E], sp
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    and c
    ld e, l
    add b
    dec b

jr_016_719E:
    ld [de], a
    ld bc, $2043
    add b
    jr jr_016_71B4

    ld bc, $2043
    add c
    adc c
    pop bc
    inc b
    ld e, a
    nop
    ld [bc], a
    ld e, c
    ld [bc], a
    sbc e
    ld d, $3F

jr_016_71B4:
    ld l, [hl]
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, e
    ld bc, $1314
    ld a, [hl+]
    ld l, l
    ld h, e
    ld [bc], a
    inc d
    inc de
    inc [hl]
    ld l, l
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld d, $D3
    ld [hl], c
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_016_7243

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, @+$79

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_016_7254

    ld h, c
    halt
    ld h, l
    jr nz, jr_016_7252

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $169B
    ccf
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld [hl+], a
    or [hl]
    ld b, [hl]
    and b
    add b
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    inc c
    ld d, $A0
    jp nc, $1600

    ld h, h
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    rrca
    add hl, de

jr_016_7243:
    db $FD
    jp nc, $1600

    sub e
    ld [hl], d
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_016_725C

    and b
    ld b, b
    nop

jr_016_7252:
    add b
    nop

jr_016_7254:
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    ld c, $18
    ld [hl], e

jr_016_725C:
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
    ld c, l
    ld e, h
    jr nc, jr_016_7280

    ret


    ld e, l
    jr nz, jr_016_7284

    or l
    ld e, l
    stop
    ld e, [hl]
    ld d, $B4
    ld [hl], d
    ld e, a
    nop
    inc bc
    ld b, e
    jr jr_016_7293

    inc d
    or l

jr_016_7280:
    ld e, l
    ld h, h
    nop
    ld e, a

jr_016_7284:
    ld bc, $9B02
    ld d, $3F
    ld l, [hl]
    or e
    ld sp, $00C7
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l

jr_016_7293:
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, l
    ld bc, $165E
    ld [de], a
    ld [hl], e
    ld b, e
    jr jr_016_72B4

    inc de
    ld h, [hl]
    ld l, l
    ld e, a
    nop
    inc bc
    ld e, [hl]
    ld d, $3A
    ld [hl], e
    ld b, e
    ld [de], a
    dec d
    inc de
    ret nc

    ld l, h
    ld a, b
    nop
    add hl, de
    ld b, l

jr_016_72B4:
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_016_7324

    ld l, a
    ld [hl], a
    jr nz, jr_016_7337

    ld h, c
    ld [hl], e
    jr nz, jr_016_732D

    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_016_733D

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_016_734B

    ld h, c
    ld a, c
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_016_7344

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $77
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_016_7363

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_016_736D

    ld [hl], h
    ld h, l
    ld [hl], b
    inc l
    cp $69
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_016_7366

    jr nz, jr_016_736B

    ld l, a
    ld l, a
    ld a, d
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_016_738D

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    jr nz, jr_016_7390

    ld l, a
    ld [hl], a

jr_016_7324:
    rst $38
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, a
    jr nz, jr_016_736E

    ld l, a

jr_016_732D:
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld hl, $FDFE
    and c
    ld e, a

jr_016_7337:
    nop
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c

jr_016_733D:
    and [hl]
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_016_73A7

    ld l, a

jr_016_7344:
    jr nz, @+$4B

    jr nz, @+$69

    ld h, l
    ld [hl], h
    rst $38

jr_016_734B:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_73B6

    ld h, l
    ld h, l
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_73A1

    daa
    ld l, l
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_73D6

    ld l, a

jr_016_7363:
    jr nz, jr_016_73C7

    ld h, l

jr_016_7366:
    rst $38
    ld [hl], a
    ld h, c
    ld l, h
    ld l, e

jr_016_736B:
    ld l, c
    ld l, [hl]

jr_016_736D:
    ld h, a

jr_016_736E:
    jr nz, jr_016_73D9

    ld l, [hl]
    jr nz, @+$6F

    ld [hl], l
    ld h, h
    ccf
    cp $FD
    and c
    ld e, a
    ld bc, $4502
    ld [hl+], a
    ld [hl+], a
    or e
    inc [hl]
    and c
    ld [$B397], sp
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e

jr_016_738D:
    ld sp, $01C7

jr_016_7390:
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    xor c
    ld d, c
    inc de
    ld h, a
    ret c

    ld b, [hl]
    ld l, e
    ld e, $70
    dec hl
    adc $68

jr_016_73A1:
    dec l
    ld l, h
    push af
    ld b, [hl]
    dec b
    nop

jr_016_73A7:
    ld hl, sp+$4A
    dec e
    dec b
    or e
    ret nc

    nop
    ld d, $0B
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_016_73B6:
    adc a
    ld l, [hl]
    dec e
    dec b
    or e
    ret nc

    nop
    ld d, $A6
    ld [hl], h
    ld d, $10
    halt
    dec b
    inc bc
    ld hl, sp+$4A

jr_016_73C7:
    inc de
    ld b, $C7
    ret nc

    jr nc, @+$18

    ld [de], a
    ld [hl], l
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A

jr_016_73D6:
    inc de
    rlca
    push hl

jr_016_73D9:
    ret nc

    ld e, b
    ld d, $9E
    ld [hl], l
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_016_73F1

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_016_73F9

    and b
    ld a, b
    nop
    add e
    nop

jr_016_73F1:
    ld l, [hl]
    jr nc, jr_016_7401

    ret nz

    ld e, a
    add b
    add l
    nop

jr_016_73F9:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b

jr_016_7401:
    add [hl]
    ld [hl], e
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
    ld l, l
    ld e, h
    jr nz, jr_016_7425

    xor e
    ld e, l
    jr nz, jr_016_7429

    ld l, l
    ld e, h
    jr nz, jr_016_742D

    cp a
    ld e, l
    jr nz, jr_016_7431

    inc hl
    ld e, h
    db $10
    inc d
    cp a
    ld e, l
    jr nz, jr_016_7425

jr_016_7425:
    ld e, [hl]
    ld d, $AB
    ld [hl], a

jr_016_7429:
    dec d
    inc d
    ld l, l
    ld e, h

jr_016_742D:
    db $10
    inc d
    cp a
    ld e, l

jr_016_7431:
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    ld d, $10
    ld a, b
    dec d
    inc d
    ld l, l
    ld e, h
    jr @+$16

    xor e
    ld e, l
    nop
    nop
    ld e, a
    ld bc, $5E04
    ld d, $64
    ld a, b
    add a
    jr @+$01

    nop
    nop
    ld h, l
    dec c
    ld e, [hl]
    ld d, $B7
    ld a, d
    dec d
    inc d
    ld l, l
    ld e, h
    ld [$D314], sp
    ld e, l
    nop
    nop
    ld h, l
    inc d
    dec d
    inc d
    ld l, l
    ld e, h
    db $10
    inc d
    ld c, l
    ld e, h
    jr z, jr_016_746C

jr_016_746C:
    ld e, [hl]
    ld d, $18
    ld a, h
    dec d
    inc d
    ld l, l
    ld e, h
    jr nz, jr_016_748A

    db $D3
    ld e, l
    nop
    nop
    ld e, a
    inc b
    ld [bc], a
    dec d
    inc d
    db $DD
    ld e, l
    jr nz, jr_016_7483

jr_016_7483:
    ld e, [hl]
    ld d, $35
    ld a, h
    ld h, l
    ld d, $5E

jr_016_748A:
    ld d, $7C
    ld a, h
    ld h, e
    ld a, [bc]
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]
    ld d, $B7
    ld a, h
    ld h, l
    jr jr_016_74F7

    add hl, de
    ldh a, [rDMA]
    sbc e
    ld d, $3F
    ld l, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld b, e
    inc c
    dec d
    inc de
    inc [hl]
    ld l, l
    jr z, jr_016_74C1

    ret nz

    ld l, h
    jr nz, @+$15

    inc [hl]
    ld l, l
    jr nz, jr_016_74C9

    ret nz

    ld l, h
    db $10
    inc de
    ld e, h
    ld l, l
    db $10
    inc de
    ld c, b
    ld l, l
    nop

jr_016_74C1:
    nop
    ld h, l
    ld bc, $1315
    ret nz

    ld l, h
    db $10

jr_016_74C9:
    inc de
    and b
    ld l, h
    db $10
    inc de
    inc [hl]
    ld l, l
    db $10
    inc de
    ret nz

    ld l, h
    db $10
    inc de
    ld e, h
    ld l, l
    stop
    ld h, l
    inc bc
    ld e, [hl]
    ld d, $9F
    ld a, b
    dec d
    inc de
    and b
    ld l, h
    db $10
    inc de
    ret nz

    ld l, h
    inc h
    inc de
    ld e, h
    ld l, l
    nop
    nop
    ld e, a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld d, $C3
    ld a, b
    ld h, l
    dec b

jr_016_74F7:
    ld e, [hl]
    ld d, $16
    ld a, c
    ld h, l
    add hl, bc
    inc d
    inc de
    inc [hl]
    ld l, l
    ld e, [hl]
    ld d, $BD
    ld a, c
    ld h, l
    add hl, de
    inc d
    inc de
    ld e, h
    ld l, l
    ld h, l
    ld a, [bc]
    ld e, [hl]
    ld d, $35
    ld a, d
    ld b, l
    inc d
    ld de, $50E1
    ld e, a
    ld bc, $1504
    ld de, $5043
    jr nz, jr_016_7530

    ld [hl], e
    ld d, b
    inc c
    ld de, $50E1
    nop
    nop
    ld h, l
    ld b, $5E
    ld d, $31
    ld a, c
    ld b, e
    jr jr_016_7544

jr_016_7530:
    ld de, $5109
    ld e, a
    inc bc
    inc bc
    inc d
    ld de, $50E1
    ld h, l
    ld [$1114], sp
    push af
    ld d, b
    ld e, [hl]
    ld d, $8C
    ld a, c

jr_016_7544:
    ld h, l
    add hl, bc
    inc d
    ld de, $50E1
    ld h, l
    dec bc
    ld e, [hl]
    ld d, $48
    ld a, d
    ld h, l
    rrca
    ld e, [hl]
    ld d, $F8
    ld a, d
    dec d
    ld de, $5073
    inc b
    ld de, $50E1
    nop
    nop
    ld h, l
    ld de, $1114
    push af
    ld d, b
    ld e, [hl]
    ld d, $93
    ld a, e
    ld h, l
    ld [de], a
    inc d
    ld de, $50E1
    ld e, [hl]
    ld d, $D5
    ld a, e
    ld h, l
    inc de
    ld e, [hl]
    ld d, $F5
    ld a, e
    ld b, e
    db $10
    inc d
    ld de, $50FF
    add a
    db $10
    rst $38
    ld bc, $8700
    db $10
    rst $38
    nop
    nop
    ld h, l
    rla
    dec d
    ld de, $5073
    ld d, b
    ld de, $5053
    db $10
    ld de, $5073
    ld [hl-], a
    nop
    ld e, c
    ld a, [bc]
    add hl, de
    ld b, l
    inc d
    inc de
    ld d, h
    ld [hl], d
    ld e, a
    ld bc, $1504
    inc de
    or [hl]
    ld [hl], c
    jr nz, jr_016_75BE

    ld d, h
    ld [hl], d
    nop
    nop
    ld e, a
    inc bc
    inc bc
    dec d
    inc de
    and $71
    jr jr_016_75B8

jr_016_75B8:
    ld e, [hl]
    ld d, $65
    ld a, c
    dec d
    inc de

jr_016_75BE:
    or [hl]
    ld [hl], c
    jr nz, jr_016_75D5

    ld a, h
    ld [hl], d
    nop
    nop
    ld h, l
    add hl, bc
    inc d
    inc de
    ld d, h
    ld [hl], d
    ld h, l
    inc c
    inc d
    inc de
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld d, $A4

jr_016_75D5:
    ld a, d
    ld h, l
    dec c
    ld b, e
    jr jr_016_75EF

    inc de
    ld a, h
    ld [hl], d
    ld h, l
    ld c, $14
    inc de
    ld b, b
    ld [hl], d
    ld e, [hl]
    ld d, $D3
    ld a, d
    ld h, l
    db $10
    inc d
    inc de
    ld a, h
    ld [hl], d
    ld e, [hl]

jr_016_75EF:
    ld d, $50
    ld a, e
    ld h, l
    inc de
    inc d
    inc de
    ld [hl], d
    ld [hl], d
    ld h, l
    rla
    ld b, e
    ld [$1315], sp
    add $71
    db $10
    inc de
    and $71
    ld d, b
    inc de
    add $71
    db $10
    inc de
    and $71
    ld [hl-], a
    nop
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld d, $1C
    halt
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b
    inc b
    ld b, $FF
    rst $38
    ld d, $87
    halt
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    ld d, $E6
    halt
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b
    ld bc, $FF06
    rst $38
    ld d, $30
    ld [hl], a
    and d
    cp b
    ld e, l
    and [hl]
    ld d, l
    ld [hl], b
    jr nz, jr_016_76B0

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_016_76B6

    ld l, [hl]
    jr nz, jr_016_76C4

    ld l, b
    ld h, l
    cp $6D
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    inc l
    jr nz, jr_016_76C4

    halt
    ld h, l
    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$72

    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld [hl], e
    cp $64
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6E

    ld l, a
    ld l, a
    ld l, e
    cp $64
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld hl, $FDFF
    ld c, b
    ld d, $A7
    ld [hl], a
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_016_7700

    ld h, c
    ld [hl], h
    ld l, b
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_016_7704

    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    cp $72
    ld h, l
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_016_7712

    ld [hl], e
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c

jr_016_76B0:
    ld h, d
    ld l, h
    ld a, c
    jr nz, jr_016_7729

    ld l, b

jr_016_76B6:
    ld h, l
    cp $6F
    ld l, [hl]
    ld h, l
    jr nz, jr_016_7734

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_016_7736

    ld l, b
    ld h, l

jr_016_76C4:
    rst $38
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$72

    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld [hl], e
    cp $69
    ld l, [hl]
    jr nz, jr_016_774D

    ld l, b
    ld h, l
    jr nz, jr_016_7754

    ld h, c
    ld a, c
    ld hl, $FDFE
    ld c, b
    ld d, $A7
    ld [hl], a
    and d
    cp b
    ld e, l
    and [hl]
    ld c, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_016_7760

    ld h, l
    ld [hl], e
    ld l, e
    ld a, c
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld h, c
    ld h, a
    ld [hl], e
    ld l, $2E

jr_016_7700:
    ld l, $FE
    ld c, h
    ld [hl], l

jr_016_7704:
    ld h, e
    ld l, e
    ld a, c
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld h, c

jr_016_7712:
    ld [hl], d
    ld h, l
    jr nz, jr_016_777C

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_016_7791

    ld l, b
    ld h, c
    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_016_7788

    ld [hl], d
    ld h, l

jr_016_7729:
    ld hl, $FDFE
    ld c, b
    ld d, $A7
    ld [hl], a
    and d
    cp b
    ld e, l
    and [hl]

jr_016_7734:
    ld e, c
    ld l, a

jr_016_7736:
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$6F

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$6B

    ld [hl], h
    rst $38
    ld h, c
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    jr nz, @+$76

    ld l, b

jr_016_774D:
    ld h, l
    cp $66
    ld h, c
    ld l, h
    ld l, h
    ld l, c

jr_016_7754:
    ld l, [hl]
    ld h, a
    jr nz, @+$64

    ld [hl], d
    ld l, c
    ld h, h
    ld h, a
    ld h, l
    inc l
    rst $38
    ld h, d

jr_016_7760:
    ld [hl], l
    ld [hl], h
    jr nz, jr_016_77C8

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_016_77CC

    ld h, l
    cp $73
    ld [hl], l
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_016_77EA

    ld l, a
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h

jr_016_777C:
    jr nz, jr_016_77F1

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    cp $77

jr_016_7788:
    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_77FF

    ld l, [hl]

jr_016_7791:
    jr nz, jr_016_7807

    ld l, b
    ld h, l
    rst $38
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_016_7810

    ld l, c
    ld h, h
    ld h, l
    ld l, $FE
    db $FD
    ld c, b
    ld d, $A7
    ld [hl], a
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    dec l
    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $FF2D
    jr nz, jr_016_77D9

    jr nz, @+$2F

    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $FE2D
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_016_7831

jr_016_77C8:
    ld [hl], e
    jr nz, jr_016_783C

    ld [hl], l

jr_016_77CC:
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, @+$63

    rst $38
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c

jr_016_77D9:
    ld l, [hl]
    ld l, $20
    ld c, c
    cp $66
    ld h, l
    ld h, l
    ld l, h
    jr nz, @+$6E

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$4B

    daa

jr_016_77EA:
    halt
    ld h, l
    rst $38
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]

jr_016_77F1:
    jr nz, jr_016_7856

    ld l, b
    ld h, l
    ld [hl], a
    ld h, l
    ld h, h
    jr nz, jr_016_786F

    ld [hl], b
    cp $61
    ld l, [hl]
    ld h, h

jr_016_77FF:
    jr nz, jr_016_7874

    ld [hl], b
    ld l, c
    ld [hl], h
    jr nz, jr_016_7875

    ld [hl], l

jr_016_7807:
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l

jr_016_7810:
    and d
    cp b
    ld e, l
    and [hl]
    dec l
    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $202D
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$2F

    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $FE2D
    db $FD
    ld e, e

jr_016_7831:
    ld bc, $63A6
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_016_78A2

    ld [hl], h
    jr nz, jr_016_7887

jr_016_783C:
    ld a, c
    ld h, d
    ld h, c
    ld [hl], d
    daa
    ld [hl], e
    rst $38
    ld d, h
    ld h, l
    ld h, l
    ld [hl], h
    ld l, b
    jr nz, jr_016_7877

    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $FE2D
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_016_78C4

jr_016_7856:
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE
    and c
    ld e, a
    ld bc, $4504
    and d
    sbc b
    ld e, d
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    jr nz, jr_016_78B2

    ld l, c
    ld h, h

jr_016_786F:
    ld l, a
    ld l, [hl]
    ld hl, $59FF

jr_016_7874:
    ld l, a

jr_016_7875:
    ld [hl], l
    daa

jr_016_7877:
    ld [hl], d
    ld h, l
    jr nz, jr_016_78E9

    ld l, a
    ld [hl], h
    cp $67
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

jr_016_7887:
    ld l, h
    ld h, h
    jr nz, jr_016_78FA

    ld l, [hl]
    rst $38
    ld [hl], l
    ld [hl], e
    inc l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    jr nz, jr_016_790F

    ld l, a
    ld [hl], l
    ccf
    cp $FD
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    cp b
    ld e, l

jr_016_78A2:
    and [hl]
    dec l
    ld c, b
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $202D
    ld c, c
    daa
    ld l, l
    jr nz, jr_016_791E

    ld l, a
    ld [hl], h

jr_016_78B2:
    rst $38
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_016_7932

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, a
    ld [bc], a
    ld [bc], a
    ld b, l
    and d

jr_016_78C4:
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
    jr nz, jr_016_793D

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld d, h
    ld h, c
    ld [hl], d
    ld h, a
    daa
    ld l, [hl]
    jr nz, jr_016_793D

    ld l, [hl]
    ld h, h
    cp $4A
    ld h, c
    ld h, a
    ld [hl], h
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld a, c

jr_016_78E9:
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_016_7955

    ld [hl], e
    jr nz, jr_016_7961

    ld l, a
    ld l, e
    ld h, l

jr_016_78FA:
    ld [hl], d
    ld [hl], e
    cp $61
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_016_7979

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e

jr_016_790F:
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l

jr_016_791E:
    jr nz, jr_016_7994

    ld l, a
    jr nz, jr_016_7990

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld b, $45
    and d

jr_016_7932:
    sbc b
    ld e, d
    and [hl]
    ld d, e
    ld h, c
    ld l, l
    ld h, l
    ld l, $20
    ld b, d
    ld a, c

jr_016_793D:
    jr nz, jr_016_79B3

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    jr nz, jr_016_7991

    daa
    ld l, l
    cp $54
    ld h, c
    ld [hl], d
    ld h, a
    daa
    ld l, [hl]
    inc l
    jr nz, jr_016_79C7

    ld l, b

jr_016_7955:
    ld h, l
    daa
    ld [hl], e
    rst $38
    ld c, d
    ld h, c
    ld h, a
    ld [hl], h
    ld l, $FE
    db $FD
    and c

jr_016_7961:
    ld e, a
    inc bc
    inc bc
    ld b, l
    and d
    ld hl, sp+$63
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    ld hl, $4920
    daa
    ld l, l
    rst $38
    ld d, h
    ld h, c
    ld [hl], d
    ld h, a
    daa
    ld l, [hl]
    inc l

jr_016_7979:
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    cp $4A
    ld h, c
    ld h, a
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$A245], sp
    sbc b
    ld e, d
    and [hl]

jr_016_7990:
    ld d, a

jr_016_7991:
    ld l, b
    ld h, c
    ld [hl], h

jr_016_7994:
    jr nz, jr_016_79F7

    ld [hl], d
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_7A07

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ccf
    cp $49
    daa
    ld l, l
    jr nz, jr_016_7A05

    ld h, c
    ld [hl], d

jr_016_79B3:
    ld h, a
    daa
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_016_7A3B

jr_016_79C7:
    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $5420
    ld l, b
    ld h, l
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_016_7A44

    ld l, [hl]
    jr nz, jr_016_7A4C

    ld l, b
    ld h, l
    jr nz, jr_016_7A48

    ld h, l
    ld h, [hl]
    ld [hl], h
    cp $69
    ld [hl], e
    jr nz, jr_016_7A2E

    ld h, c
    ld h, a
    ld [hl], h
    inc l
    jr nz, jr_016_7A5E

    ld l, b
    ld h, l
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l

jr_016_79F7:
    cp $72
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_016_7A68

    ld [hl], e
    rst $38
    ld d, h
    ld h, c
    ld [hl], d
    ld h, a

jr_016_7A05:
    daa
    ld l, [hl]

jr_016_7A07:
    ld l, $FE
    db $FD
    ld e, e
    add hl, de
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld [hl], d
    jr nz, jr_016_7A8B

    ld h, c
    ld [hl], e
    jr nz, jr_016_7A81

    ld [hl], h
    jr nz, jr_016_7A8F

    ld l, b
    ld h, l
    rst $38
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_016_7A9C

    ld h, c
    ld a, c
    cp $61
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_016_7A2E:
    ccf
    cp $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E

jr_016_7A3B:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD

jr_016_7A44:
    and c
    ld e, e
    dec bc
    ld b, l

jr_016_7A48:
    and d
    sbc b
    ld e, d
    and [hl]

jr_016_7A4C:
    ld c, d
    ld h, c
    ld h, a
    ld [hl], h
    jr nz, jr_016_7ABB

    ld [hl], e
    jr nz, @+$6C

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld l, d
    ld h, l
    ld h, c
    ld l, h
    ld l, a

jr_016_7A5E:
    ld [hl], l
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_016_7A68:
    cp $49
    daa
    ld l, l
    jr nz, jr_016_7AD9

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$63

    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_016_7ADD

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$65

    ld l, h

jr_016_7A81:
    ld l, c
    ld h, [hl]
    ld h, [hl]
    cp $63
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    ld h, l

jr_016_7A8B:
    ld [hl], d
    jr nz, jr_016_7AF7

    ld l, [hl]

jr_016_7A8F:
    rst $38
    ld c, e
    ld a, c
    ld h, d
    ld h, c
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_016_7AED

    ld h, l
    ld h, l
    ld [hl], h

jr_016_7A9C:
    ld l, b
    ld hl, $FDFE
    and c
    ld e, e
    inc c
    ld b, l
    and d
    ld hl, sp+$63
    and [hl]
    ld c, c
    jr nz, jr_016_7B0C

    ld l, l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    dec c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]

jr_016_7ABB:
    ld b, c
    ld l, b
    ld h, c
    ld hl, $5920
    ld c, a
    ld d, l
    jr nz, jr_016_7B26

    ld [hl], d
    ld h, l
    rst $38
    ld c, d
    ld h, c
    ld h, a
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld c, $45
    and d
    ld hl, sp+$63
    and [hl]
    ld c, a
    ld c, e

jr_016_7AD9:
    inc l
    jr nz, jr_016_7B55

    ld l, a

jr_016_7ADD:
    ld [hl], l
    jr nz, jr_016_7B47

    ld l, a
    ld [hl], h
    jr nz, jr_016_7B51

    ld h, l
    ld l, $FF
    ld c, c
    jr nz, jr_016_7B4B

    ld h, h
    ld l, l
    ld l, c

jr_016_7AED:
    ld [hl], h
    jr nz, @+$6B

    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    rrca

jr_016_7AF7:
    ld b, l
    and d
    sbc b
    ld e, d
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_016_7B63

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc l
    jr nz, @+$70

    ld l, a
    rst $38
    ld l, a
    ld l, [hl]

jr_016_7B0C:
    ld h, l
    jr nz, jr_016_7B77

    ld h, c
    ld [hl], e
    jr nz, jr_016_7B78

    halt
    ld h, l
    ld [hl], d
    cp $62
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_016_7B85

    ld l, c
    ld [hl], h
    jr nz, jr_016_7B83

    ld a, c
    rst $38
    ld l, l
    ld l, a
    ld [hl], d

jr_016_7B26:
    ld h, l
    jr nz, jr_016_7B8F

    ld h, c
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $72
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_016_7B85

    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l
    inc l
    jr nz, jr_016_7BA9

    ld l, c
    ld [hl], h
    ld l, b

jr_016_7B47:
    ld h, l
    ld [hl], d
    ld l, $FE

jr_016_7B4B:
    db $FD
    and c
    ld e, e
    db $10
    ld b, l
    and d

jr_016_7B51:
    ld hl, sp+$63
    and [hl]
    ld c, c

jr_016_7B55:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_016_7BC2

    ld l, c
    ld [hl], e
    jr nz, @+$6A

    ld h, c
    ld [hl], d
    ld h, h
    rst $38
    ld l, b

jr_016_7B63:
    ld h, l
    ld h, c
    ld h, h
    ld l, $20
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h
    cp $74
    ld l, b
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_016_7BDF

jr_016_7B77:
    ld h, l

jr_016_7B78:
    daa
    ld h, h
    jr nz, jr_016_7BDE

    ld h, l
    rst $38
    ld h, c
    jr nz, jr_016_7BE8

    ld l, a
    ld l, [hl]

jr_016_7B83:
    ld h, l
    ld [hl], d

jr_016_7B85:
    jr nz, jr_016_7BE9

    ld a, c
    jr nz, jr_016_7BF8

    ld l, a
    ld [hl], a
    ld l, $FE
    db $FD

jr_016_7B8F:
    and c
    ld e, e
    ld de, $A245
    sbc b
    ld e, d
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_016_7C15

    ld l, a
    ld [hl], l
    jr nz, jr_016_7C17

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38
    ld h, d
    ld l, a
    ld [hl], d
    ld h, l

jr_016_7BA9:
    ld h, h
    jr nz, jr_016_7C1F

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $61
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_016_7C32

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$70

    ld l, a
    rst $38

jr_016_7BC2:
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_016_7C3B

    ld l, a
    jr nz, @+$76

    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, a
    jr nz, @+$79

    ld l, b

jr_016_7BDE:
    ld h, l

jr_016_7BDF:
    ld [hl], d
    ld h, l
    jr nz, jr_016_7C4C

    ld [hl], e
    rst $38
    ld a, c
    ld l, a
    ld [hl], l

jr_016_7BE8:
    ld [hl], d

jr_016_7BE9:
    jr nz, jr_016_7C58

    ld h, c
    ld a, d
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    inc de
    ld b, l
    and d
    sbc b
    ld e, d

jr_016_7BF8:
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, @+$6B

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_016_7C75

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld l, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_016_7C76

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c

jr_016_7C15:
    ld e, e
    inc d

jr_016_7C17:
    ld b, l
    and d
    ld hl, sp+$63
    and [hl]
    ld c, b
    ld h, c
    halt

jr_016_7C1F:
    ld h, l
    jr nz, jr_016_7C88

    ld [hl], l
    ld l, [hl]
    jr nz, jr_016_7C8F

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a

jr_016_7C32:
    inc b
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld l, $2E

jr_016_7C3B:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FF
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_016_7CB9

    ld l, a

jr_016_7C4C:
    ld [hl], h
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_7CC9

    ld l, a
    jr nz, jr_016_7CCC

jr_016_7C58:
    ld h, l
    ld l, h
    ld l, h
    rst $38
    ld l, l
    ld h, l
    jr nz, jr_016_7CA9

    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_016_7CCC

    ld l, a
    cp $69
    ld [hl], h
    inc l
    jr nz, jr_016_7CD0

    ld [hl], d
    ld h, l
    jr nz, jr_016_7CEC

    ld l, a
    ld [hl], l

jr_016_7C75:
    ccf

jr_016_7C76:
    cp $FD
    and c
    ld e, e
    ld d, $45
    and d
    ld hl, sp+$63
    and [hl]
    ld c, [hl]
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    inc l
    jr nz, jr_016_7CF7

jr_016_7C88:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    jr nz, @+$6B

    ld [hl], e
    rst $38

jr_016_7C8F:
    ld h, l
    ld h, c
    ld [hl], e
    ld a, c
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    cp $73
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_016_7D09

    ld h, c
    halt
    ld h, l
    jr nz, jr_016_7D14

    ld l, a
    rst $38
    ld [hl], b

jr_016_7CA9:
    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld e, e
    rla
    ld b, l
    and d
    sbc b

jr_016_7CB9:
    ld b, c
    and [hl]
    ld b, l
    ld h, c
    ld [hl], e
    ld a, c
    ccf
    jr nz, @+$50

    ld l, a
    ld [hl], a
    jr nz, jr_016_7D0F

    daa
    ld l, l
    rst $38

jr_016_7CC9:
    ld [hl], a
    ld l, a
    ld [hl], d

jr_016_7CCC:
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h

jr_016_7CD0:
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    jr jr_016_7D1E

    ld c, b
    inc c
    and b
    ld c, d
    ld c, b
    inc c
    and [hl]
    ld c, d
    ld c, b
    inc c
    xor h
    ld c, d
    ld c, b
    inc c
    or d
    ld c, d
    ld c, b
    inc c
    cp b

jr_016_7CEC:
    ld c, d
    ld bc, $0F17
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    ld bc, $0F17

jr_016_7CF7:
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc bc
    ld d, $0D
    ld a, l
    ld d, $50

jr_016_7D09:
    ld a, l
    ld d, $7C
    ld a, l
    and [hl]
    ld c, c

jr_016_7D0F:
    jr nz, jr_016_7D85

    ld l, b
    ld l, c
    ld l, [hl]

jr_016_7D14:
    ld l, e
    jr nz, jr_016_7D8B

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_016_7D65

    rst $38
    ld [hl], a

jr_016_7D1E:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_016_7D8F

    ld h, l
    ld h, c
    halt
    ld h, l
    jr nz, jr_016_7D9B

    ld l, a
    ld h, e
    ld l, e
    cp $63
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_016_7DAB

    ld l, a
    jr nz, jr_016_7DAE

    ld l, b
    ld h, l
    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    and b
    ld a, l
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_016_7DB8

    jr nz, jr_016_7DCB

    ld l, a
    ld h, e
    ld l, e
    rst $38
    ld [hl], a
    ld h, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_016_7DDB

    ld l, b

jr_016_7D65:
    ld h, c
    ld [hl], h
    jr nz, jr_016_7DD6

    ld l, a
    ld [hl], d
    ld h, l
    cp $63
    ld h, c
    ld l, [hl]
    jr nz, jr_016_7DBB

    jr nz, @+$75

    ld h, c
    ld a, c
    ccf
    cp $FD
    ld c, c
    and b
    ld a, l
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_016_7DFA

    ld h, c
    ld l, h

jr_016_7D85:
    ld l, h
    jr nz, jr_016_7DF1

    ld [hl], e
    jr nz, @+$01

jr_016_7D8B:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, l

jr_016_7D8F:
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_016_7E08

    ld l, b
    ld h, c
    ld l, [hl]
    cp $73
    ld [hl], h
    ld h, l

jr_016_7D9B:
    ld h, l
    ld [hl], b
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b

jr_016_7DAB:
    ld bc, $0005

jr_016_7DAE:
    add hl, de
    rst $20
    ld b, [hl]
    add e
    add hl, bc
    ret nc

    inc b
    add hl, bc
    add hl, bc
    ret nc

jr_016_7DB8:
    nop
    add hl, bc
    add e

jr_016_7DBB:
    dec hl
    ret nc

    dec b
    ld a, [bc]
    dec hl
    ret nc

    ld bc, $450D
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b
    ld [bc], a
    dec b

jr_016_7DCB:
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ret c

    ret nc

    inc b
    ld a, [bc]
    ret c

    ret nc

jr_016_7DD6:
    rlca
    ld b, $45
    ld b, [hl]
    rrca

jr_016_7DDB:
    nop
    add hl, sp
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    dec sp
    jp nc, $0909

    dec sp
    jp nc, $0113

    ld b, l
    ld b, [hl]
    rrca
    nop

jr_016_7DF1:
    add hl, sp
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_016_7DFA:
    add h
    jp nc, $0708

    add h
    jp nc, $0E15

    ld b, l
    ld b, [hl]
    rrca
    nop
    add hl, sp
    and b

jr_016_7E08:
    jr nz, jr_016_7E0F

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_016_7E0F:
    ld [hl], b
    pop de
    dec c
    rlca
    ld [hl], b
    pop de
    inc c
    ld [$4545], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
