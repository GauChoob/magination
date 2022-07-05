; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    adc b
    add b
    add d
    ld b, d
    add d
    daa
    inc [hl]
    ld [hl], d
    ld b, d
    ld [hl], e
    ld [hl], h
    ld b, d
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld a, c
    ld bc, $0504
    ld bc, $0579
    inc b
    ld d, e
    ld d, h
    rlca
    ld b, $01
    nop
    dec b
    inc b
    ld d, l
    ld a, d
    ld d, a
    ld a, h
    ld a, e
    ld d, [hl]
    ld a, l
    ld e, b
    ld b, d
    ld [de], a
    inc de
    inc d
    ld [de], a
    ld b, d
    inc d
    inc de
    nop
    ld bc, $0504
    ld [bc], a
    inc bc
    ld b, $07
    ld bc, $0500
    inc b
    add h
    add b
    add d
    ld d, l
    ld [hl-], a
    ld d, a
    push hl
    db $E3
    db $E4
    and $E7
    ld [hl], b
    ld d, l
    ld e, b
    ld d, a
    ld d, l
    ld [hl], b
    ld d, a
    ld e, b
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld b, d
    ld [hl], h
    ld [hl], e
    ld b, d
    ld [hl], d
    dec bc
    ld a, [bc]
    rrca
    ld c, $09
    ld [$0C0D], sp
    ld d, l
    ld a, [hl]
    ld d, a
    ld e, [hl]
    ld a, a
    ld d, [hl]
    ld e, a
    ld e, b
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [$0A09], sp
    dec bc
    add h
    ld b, d
    inc b
    add hl, bc
    ld [$0A0B], sp
    add h
    add b
    inc l
    ld d, l
    add sp, $57
    ld [$EFE9], a
    db $EB
    db $EC
    rrca
    ld c, $0B
    ld a, [bc]
    dec c
    inc c
    add hl, bc
    ld [$1175], sp
    inc d
    dec d
    ld [de], a
    halt
    ld d, $17
    nop
    ld bc, $0504
    ld [bc], a
    inc bc
    ld b, $07
    ld d, l
    ld [hl], b
    ld d, l
    ld e, c
    ld [hl], c
    ld d, [hl]
    ld e, d
    ld e, b
    ld h, e
    ld d, [hl]
    ld h, h
    ld l, d
    add h
    add b
    inc c
    inc c
    dec c
    rrca
    db $10
    ld c, $03
    ld de, $0D07
    inc c
    ld a, $0F
    add h
    add b
    inc b
    db $E4
    db $E3
    rst $20
    and $82
    ld d, l
    ld h, $E5
    ld d, a
    rlca
    ld b, $03
    ld [bc], a
    dec b
    inc b
    ld bc, $7600
    ld [de], a
    rla
    ld d, $11
    ld [hl], l
    dec d
    inc d
    ld [$0C09], sp
    dec c
    ld a, [bc]
    dec bc
    ld c, $0F
    ld d, a
    ld h, b
    ld d, a
    ld e, l
    ld h, e
    ld d, [hl]
    ld e, [hl]
    ld e, b
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, c
    add h
    add b
    inc c
    ld hl, $1D22
    ld e, $23
    inc h
    rra
    jr nz, jr_028_4115

    ld hl, $1D1E
    add h
    add b
    inc a
    rst $28
    jp hl


    db $EC
    db $EB
    add sp, $55
    ld [$0C57], a
    dec c
    ld [$0E09], sp
    rrca
    ld a, [bc]
    dec bc
    ld [hl], $08
    inc b
    ld a, [bc]
    ld [$0A36], sp
    inc b
    db $10
    ld de, $1514

jr_028_4115:
    ld [de], a
    inc de
    ld d, $17
    ld d, l
    ld d, [hl]
    ld e, a
    ld l, d
    ld d, l
    ld d, [hl]
    ld l, e
    ld l, h
    ld d, l
    ld d, [hl]
    ld l, b
    ld e, b
    ld d, l
    ld a, a
    ld d, a
    ld e, b
    dec d
    ld d, $19
    ld a, [de]
    rla
    jr jr_028_414B

    inc e
    ld d, $15
    ld a, [de]
    add hl, de
    add h
    add b
    inc a
    ei
    db $FC
    db $ED
    di
    dec l
    ld l, $F5
    or $04
    dec b
    nop
    ld bc, $0706
    ld [bc], a
    inc bc
    ld d, [hl]
    ld [de], a
    inc de

jr_028_414B:
    inc d
    ld [de], a
    ld d, [hl]
    inc d
    inc de
    jr jr_028_416B

    inc e
    dec e
    ld a, [de]
    dec de
    ld e, $1F
    ld l, l
    ld l, [hl]
    ld d, a
    ld e, b
    ld l, a
    ld [hl], b
    ld d, a
    ld e, b
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, a
    ld d, l
    ld d, [hl]
    ld a, a
    ld e, b
    dec e
    ld e, $21

jr_028_416B:
    ld [hl+], a
    rra
    jr nz, jr_028_4192

    inc h
    ld e, $1D
    ld [hl+], a
    ld hl, $8084
    add d
    db $F4

jr_028_4178:
    add d
    ld b, e
    add d
    rst $30
    add d
    ld hl, sp+$05
    ld e, b
    ld b, d
    ld b, d
    ld e, b
    ld b, d
    add d
    ld e, b
    dec b
    ld b, d
    scf
    jr c, jr_028_419F

    ld [$8084], sp
    inc h
    inc de
    ld [de], a
    rla

jr_028_4192:
    ld d, $11
    db $10
    dec d
    inc d
    ld d, l
    ld d, [hl]
    ld [hl], c
    ld [hl], d
    ld d, l
    ld d, [hl]
    ld h, c
    ld [hl], h

jr_028_419F:
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld e, b
    ld a, a
    ld d, [hl]
    ld d, a
    ld a, a
    ld b, c
    ld b, d
    ld b, a
    ld d, e
    ld b, e
    ld b, h
    ld d, h
    ld e, c
    ld b, l

jr_028_41B0:
    ld b, [hl]
    ld e, d
    ld e, e
    adc b
    add b
    jr nc, jr_028_41B0

    ld a, [$5857]
    ld a, [hl-]
    add hl, sp
    ld h, d
    ccf
    add hl, sp
    ld a, [hl-]
    ccf
    ld h, d
    ld d, [hl]
    ld d, l
    ld h, d
    ld d, a
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, d
    dec de
    ld a, [de]
    rra
    ld e, $19
    jr jr_028_41EE

    inc e
    ld [hl], l
    halt
    ld d, a
    ld e, b
    ld [hl], a
    ld a, b
    ld d, a
    ld e, b
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, l
    ld a, [hl]
    ld a, l
    ld e, b
    dec h
    ld h, $28
    ld b, d
    add d
    daa
    add d
    ld b, d
    inc b
    ld h, $25
    ld b, d

jr_028_41EE:
    jr z, jr_028_4178

    add b
    inc b
    db $E4
    ld a, [hl-]
    rst $20
    and $84
    add b
    add d
    ld d, [hl]
    add d
    ld h, d
    add e
    ld b, d
    add hl, bc
    ld d, b
    ld b, d
    ld b, d
    ld d, b
    ld b, d
    ld [hl+], a
    ld hl, $2425
    add d
    jr nz, @-$7C

    inc hl
    ld [$2221], sp
    inc h
    dec h
    ld [hl-], a
    inc sp
    inc [hl]

jr_028_4214:
    dec [hl]
    add e
    ld b, d
    ld [$4258], sp
    ld b, d
    ld e, b
    ld b, d
    add hl, hl
    ld b, d
    ld a, [hl+]
    add [hl]
    ld b, d
    inc bc
    add hl, hl
    ld b, d
    ld a, [hl+]
    adc h
    add b
    add d
    daa
    ld [bc], a
    ld sp, $8232

jr_028_422E:
    daa
    inc e
    ld e, b
    ld b, d
    ld d, c
    rst $28
    ld c, l
    ld c, [hl]
    rst $28
    ld d, c
    ld c, [hl]
    ld c, l
    jr z, jr_028_4263

    dec hl
    ld a, [hl+]
    inc l
    ld h, $2D
    add hl, hl
    daa
    jr z, @+$2C

    dec hl
    inc sp
    ld [hl-], a
    dec [hl]
    inc [hl]
    ld b, d
    ld e, b
    add d
    ld b, d
    ld bc, $8358
    ld b, d
    inc c
    dec hl
    inc l
    cpl
    inc [hl]
    dec l
    ld l, $31
    ld [hl-], a
    inc l
    dec hl
    inc [hl]
    inc sp
    sub h
    add b
    ld [bc], a
    ld b, d

jr_028_4263:
    ld c, a
    add d
    ld b, d
    ld bc, $8B4F
    ld b, d
    ld c, $2F
    ld l, $31
    jr nc, jr_028_429E

    cpl
    jr nc, jr_028_42A4

    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld d, l
    ld d, [hl]
    add d
    ld d, a
    inc c
    dec [hl]
    ld [hl], $3B
    inc a
    scf
    jr c, jr_028_42C0

    ld a, $39
    ld a, [hl-]
    ccf
    ld b, b
    add h
    add b
    inc b
    ld [hl+], a
    ld hl, $2425
    add d
    jr nz, jr_028_4214

    inc hl
    inc b
    ld hl, $2422
    dec h
    adc b
    add b
    adc h
    ld b, d
    inc c
    ld a, [hl-]

jr_028_429E:
    dec sp
    inc a
    ld b, [hl]
    dec sp
    ld a, [hl-]
    ld b, a

jr_028_42A4:
    ld c, b
    scf
    ld [hl], $39
    jr c, jr_028_422E

    ld d, a
    inc b
    ld c, b
    ld c, c
    ld c, h
    ld c, l
    add d
    ld c, c
    add d
    ld c, l
    inc b
    ld c, c
    ld c, b
    ld c, l
    ld c, h
    add h
    add b
    inc c
    jr z, jr_028_42E5

    dec hl
    ld a, [hl+]

jr_028_42C0:
    inc l
    ld h, $2D
    add hl, hl
    daa
    jr z, jr_028_42F1

    dec hl
    adc h
    add b
    add d
    ld c, c
    add d
    ld c, e
    add d
    ld c, d
    add d
    ld c, h
    inc c
    dec sp
    ld a, [hl-]
    ld b, [hl]
    inc a
    ld a, [hl-]
    dec sp
    ld c, b
    ld b, a
    dec sp
    ld a, [hl-]
    add hl, sp
    inc a
    add d
    ld d, a
    ld c, $55
    ld d, [hl]
    ld d, b

jr_028_42E5:
    ld d, c
    ld b, b
    ld b, c
    ld d, d
    ld d, c
    ld b, b
    ld b, c
    ld d, c
    ld d, b
    ld b, b
    ld b, c
    adc b

jr_028_42F1:
    add b
    inc c
    ld a, [hl-]
    dec sp
    inc a
    ld b, [hl]
    ld d, [hl]
    ld [hl], b
    ld e, b
    ld h, d
    ld d, [hl]
    ld d, l
    ld e, b
    ld l, b
    and b
    add b
    inc c
    ld h, b
    ld h, c
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld l, b
    ld l, c
    ld h, h
    ld h, l
    ld l, d
    ld l, e
    adc b
    add b
    inc c
    dec sp
    ld a, [hl-]
    ld b, [hl]
    inc a
    ld d, l
    ld d, [hl]
    ld l, b
    ld e, b
    ld [hl], b
    ld d, [hl]
    ld h, d
    ld e, b
    and h
    add b
    ld [$4A4B], sp
    ld c, a
    ld c, [hl]
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, a
    or h
    add b
    add d
    ld [c], a
    add d
    ld a, [c]
    add d
    ldh a, [$82]
    pop af
    add d
    ldh [$82], a
    pop hl
    adc b
    nop
    add d
    ld h, b
    inc b
    ld c, d
    ld l, d
    ld c, l
    ld h, b
    add d
    ld c, l
    ld bc, $8360
    ld l, l
    ld bc, $830B
    inc c
    ld [bc], a
    inc l
    dec hl
    add d
    inc l
    add d
    ld b, $86
    inc hl
    inc bc
    ld b, $0E
    ld b, $82
    ld c, $0C
    ld b, $0E
    ld b, $62
    ld l, $0E
    inc c
    ld c, $62
    inc l
    ld l, $0E
    add a
    inc c
    ld [bc], a
    inc l
    ld l, $82
    inc l
    add h
    nop
    add e
    ld b, $82
    ld c, $83
    dec c
    ld bc, $832E
    ld h, $02
    ld b, $0E
    add d
    ld b, $83
    dec c
    dec b
    ld h, b
    dec l
    dec l
    ld h, b
    dec l
    adc b
    inc hl
    inc bc
    ld b, $0E
    ld b, $82
    ld c, $02
    ld b, $0E
    adc c
    ld b, $84
    inc c
    add h
    ld h, e
    add h
    inc l
    add h
    nop
    ld b, $06
    ld c, $06
    ld c, $0D
    ld c, l
    add d
    ld c, $88
    ld h, e
    ld bc, $840B
    inc b
    inc bc
    dec bc
    inc b
    inc b
    add h
    inc bc
    add d
    ld b, $82
    inc bc
    ld [bc], a
    ld b, $0E
    add d
    ld b, $01
    ld c, $87
    ld b, $84
    nop
    add d
    inc l
    ld bc, $872E
    inc c
    ld [bc], a
    inc b
    ld c, $84
    nop
    ld [bc], a
    dec l
    ld l, $82
    dec l
    add d
    ld h, $02
    ld l, $26
    add d
    ld h, e
    add d
    ld h, [hl]
    add h
    ld h, e
    ld bc, $842B
    inc h
    inc bc
    dec hl
    inc h
    inc h
    adc b
    inc bc
    adc h
    ld b, $84
    nop
    adc b
    ld c, e
    add h
    ld l, e
    add h
    nop
    ld [bc], a
    ld c, l
    dec l
    add e
    ld l, $03
    ld h, $2E
    ld h, $88
    ld b, e
    inc bc
    ld l, $2C
    inc l
    add d
    inc c
    inc b
    ld c, $0C
    inc l
    ld b, $84
    inc b
    inc bc
    ld h, $04
    inc b
    sub b
    ld b, $88
    dec bc
    add h
    dec hl
    add h
    nop
    add d
    ld c, $82
    dec c
    add h
    ld a, [bc]
    add [hl]
    ld b, e
    add d
    ld b, [hl]
    ld [$2E26], sp
    ld c, $0C
    ld c, $06
    inc l
    ld l, $88
    inc b
    sub b
    ld b, $88
    dec bc
    add h
    dec hl
    add h
    nop
    add d
    ld a, [bc]
    add d
    ld h, b
    dec b
    dec l
    dec c
    dec l
    dec c
    ld a, [bc]
    add d
    ld h, b
    dec b
    ld l, d
    ld h, b
    ld a, [hl+]
    ld c, d

jr_028_443F:
    ld h, b
    add d
    ld c, $02
    inc l
    inc c
    add h
    nop
    ld bc, $8406
    inc h
    inc bc
    ld h, $24
    inc h
    sub b
    ld b, $8C
    ld c, $88
    nop
    add d
    ld c, $82
    ld b, $82
    ld l, $02
    ld h, $2E
    add e
    ld c, $01
    ld b, $84
    ld h, $84
    ld b, $88
    inc h
    sub b
    ld b, $83
    ld a, [bc]
    inc bc
    ld h, b
    ld a, [bc]
    ld a, [hl+]
    add d
    ld h, b
    add d
    ld a, [hl+]
    ld [bc], a
    ld h, b
    ld a, [hl+]
    adc b
    nop
    ld [bc], a
    dec l
    ld c, $82
    dec l
    add h
    nop
    inc b
    ld h, $06
    ld h, $06
    add e
    ld h, b
    dec b
    nop
    ld h, b
    ld h, b
    jr nz, jr_028_44ED

    add l
    and c
    ld [bc], a
    add c
    and c
    add l
    add c
    add h
    ld bc, $6083
    ld [$606A], sp
    ld h, b
    ld c, d
    ld h, b
    ld a, [bc]

jr_028_449F:
    ld h, b
    ld a, [bc]
    add [hl]
    ld h, b
    inc bc
    ld a, [hl+]

jr_028_44A5:
    ld h, b
    ld a, [hl+]
    adc h
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    add e
    ld a, [bc]
    dec b
    ld a, [hl+]
    ld c, d
    ld h, b
    nop
    ld l, b
    add d
    nop
    ld bc, $8368
    jr nz, jr_028_443F

    and c
    adc b
    add c
    add h
    ld hl, $6002
    ld a, [hl+]
    add d
    ld h, b
    ld bc, $830A
    ld h, b
    ld [bc], a
    dec c
    ld a, [bc]
    add d
    dec c
    add h
    ld a, [bc]
    ld bc, $832A
    dec l
    sub h
    nop
    ld [bc], a
    ld h, b
    nop
    add d
    ld h, b
    ld bc, $8B20
    ld h, b
    add h
    and c
    add h
    ld bc, $0E84
    add e
    ld c, h
    ld bc, $8C2C
    ld c, $84
    nop

jr_028_44ED:
    add l
    ld hl, $0102
    ld hl, $0185
    adc b
    nop
    adc h
    ld h, b
    add h
    add b
    add d
    and b
    add d
    nop
    add h
    and b
    rlca
    ld c, h
    inc l
    ld c, h
    inc l
    inc c
    inc l
    inc c
    adc c
    inc l
    add h
    nop
    add h
    ld hl, $0188
    adc l
    nop
    rlca
    jr nz, jr_028_4515

jr_028_4515:
    jr nz, jr_028_4517

jr_028_4517:
    jr nz, jr_028_4519

jr_028_4519:
    jr nz, jr_028_449F

    and b
    add d
    add b
    add d
    jr nz, jr_028_44A5

    and b
    ld [bc], a
    ld c, h
    inc l
    add h
    inc c
    add d
    inc b
    add d
    inc c

jr_028_452B:
    add d
    inc b
    add d
    inc l
    add d
    inc b
    adc h
    nop
    inc b
    ld h, $0E
    ld h, $06
    add h
    ld h, $A0
    nop
    adc h
    ld c, $88
    nop
    add h
    jr nz, @+$07

    ld b, $26
    ld b, $26
    ld l, $83
    ld h, $A4
    nop
    add h
    inc l
    add h
    inc c
    or h
    nop
    inc c
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    nop
    ld b, b
    nop
    db $10
    add a
    ld [$20B9], sp
    ld bc, $9F08
    nop
    ld bc, $9420
    nop
    add d
    ld [$2089], sp
    inc b
    ld [$0000], sp
    jp $009C


    ld bc, $9420
    nop
    add d
    ld [$2089], sp
    dec b
    ld [$C100], sp
    nop
    jp nz, $009B

    ld bc, $9620

jr_028_458D:
    nop
    add d
    ld [$2087], sp
    ld bc, $9F08
    nop
    ld bc, $9620
    nop
    add d
    ld [$2087], sp
    ld bc, $8508
    nop
    ld bc, $9508
    jr nz, jr_028_452B

    nop
    ld bc, $9820
    nop
    add [hl]
    ld [$2002], sp
    ld [$0093], sp
    ld bc, $8B20

jr_028_45B6:
    nop
    ld bc, $9820
    nop
    add [hl]
    ld [$2002], sp
    ld [$0082], sp
    ld bc, $9008
    nop
    ld bc, $8A20
    nop

jr_028_45CA:
    add d
    jr nz, @-$62

    nop
    add d
    ld [$2082], sp
    add d
    nop
    ld bc, $9020
    nop
    ld bc, $8A20
    nop

jr_028_45DC:
    ld bc, $9B20
    nop
    ld [bc], a
    ret nz

    nop
    add d
    ld [$2082], sp
    add d
    nop
    ld bc, $9020

jr_028_45EC:
    nop
    ld bc, $8A20
    nop
    ld bc, $9D20
    nop
    add d
    ld [$2082], sp
    add d
    nop
    ld bc, $9020
    nop
    ld bc, $8420
    nop
    ld bc, $8520
    nop
    add [hl]
    jr nz, jr_028_458D

    ld [$2084], sp
    adc l
    nop
    add [hl]
    ld [$2082], sp
    add d
    nop
    ld bc, $9020
    nop
    ld bc, $8320
    nop

jr_028_461D:
    ld bc, $8620
    nop
    ld bc, $8520
    nop
    add e
    ld [$0083], sp

jr_028_4629:
    add e
    jr nz, @-$76

    nop

jr_028_462D:
    add e
    jr nz, jr_028_45B6

    ld [$2082], sp
    add d
    nop
    ld bc, $9020
    nop
    ld bc, $8320

jr_028_463C:
    nop
    ld bc, $9420
    nop
    adc d
    jr nz, jr_028_45CA

jr_028_4644:
    nop
    add d
    ld [$2082], sp
    add d
    nop
    ld bc, $9020
    nop
    ld bc, $8320
    nop
    ld bc, $A620
    nop
    add d
    jr nz, jr_028_45DC

    nop
    ld bc, $9020
    nop
    ld bc, $8320
    nop
    ld bc, $A620
    nop
    add d
    jr nz, jr_028_45EC

    nop

jr_028_466B:
    ld bc, $9020
    nop
    ld bc, $8320
    nop
    ld bc, $A620
    nop
    add d
    jr nz, @-$7C

    nop
    ld bc, $9020
    nop
    ld bc, $8320
    ld [$2001], sp
    and [hl]
    nop
    add d
    jr nz, @-$7C

    nop
    add d
    jr nz, jr_028_461D

    nop

jr_028_468F:
    ld bc, $8320
    ld [$2001], sp
    add a
    nop

jr_028_4697:
    add d
    jr nz, @-$61

    nop
    add d
    jr nz, @-$7A

    nop
    add e
    jr nz, jr_028_462D

    nop

jr_028_46A3:
    add d
    jr nz, jr_028_4629

    nop
    ld bc, $8820
    nop
    add [hl]
    jr nz, @-$7B

    ld [$2001], sp
    sub h
    nop
    add d
    jr nz, jr_028_463C

    nop
    ld bc, $8320
    ld [$0084], sp
    add l
    jr nz, jr_028_4644

    nop

jr_028_46C1:
    ld bc, $8920
    nop
    ld bc, $8320
    nop
    ld bc, $8320
    ld [$2082], sp
    sub e
    nop
    add d
    jr nz, jr_028_466B

    nop
    ld bc, $8920
    nop
    ld bc, $8820
    nop
    ld bc, $9320
    nop
    add d
    jr nz, @-$76

    nop
    ld bc, $8E40
    nop
    ld bc, $8920
    nop

jr_028_46ED:
    ld bc, $8820
    nop
    ld bc, $9320
    nop
    add d

jr_028_46F6:
    jr nz, jr_028_468F

    nop
    ld bc, $8920
    nop
    ld bc, $8820
    nop
    ld bc, $9320
    nop
    add d
    jr nz, jr_028_468F

    nop
    ld bc, $8D08
    nop
    add l
    jr nz, jr_028_4697

    nop
    ld bc, $8420
    nop
    ld bc, $8320
    nop
    sub [hl]
    jr nz, jr_028_46A3

    nop
    ld bc, $8D20
    nop
    ld bc, $8320
    nop
    ld bc, $8320
    ld [$2001], sp

jr_028_472B:
    add e
    nop
    ld bc, $8420
    nop
    ld bc, $8E20
    nop
    ld bc, $8820

jr_028_4738:
    nop
    add h
    jr nz, jr_028_46C1

    nop
    ld bc, $8D20
    nop
    ld bc, $8320
    nop
    ld bc, $8320
    ld [$2001], sp
    adc b
    nop
    ld bc, $8E20

jr_028_4750:
    nop
    ld bc, $8820
    nop
    add d
    jr nz, jr_028_475B

    nop
    jr nz, jr_028_477B

jr_028_475B:
    add e
    nop
    add d
    jr nz, jr_028_46ED

    nop
    ld bc, $8720
    nop
    ld bc, $8820
    nop
    ld bc, $8E20
    nop
    ld bc, $8820
    nop
    add d
    jr nz, jr_028_46F6

    nop
    ld bc, $8320
    ld [$2001], sp

jr_028_477B:
    adc c
    nop
    add d
    jr nz, @-$7B

    nop
    add d
    ld [$0086], sp
    ld bc, $8820
    nop
    ld bc, $8E20
    nop
    ld bc, $8820
    nop
    add d
    jr nz, @-$7C

    nop
    ld bc, $8320
    ld [$2001], sp

jr_028_479B:
    adc b
    nop
    add [hl]
    jr nz, @+$03

    ld [$0087], sp
    adc l
    jr nz, jr_028_472B

    nop
    ld bc, $8920
    nop

jr_028_47AB:
    ld bc, $8420

jr_028_47AE:
    nop
    add d
    jr nz, jr_028_4738

    nop
    ld bc, $8820
    nop
    ld bc, $8720
    nop
    ld bc, $9741
    nop
    ld bc, $8908
    nop

jr_028_47C3:
    ld bc, $8420
    nop
    add d
    jr nz, jr_028_4750

    nop
    ld bc, $8820
    nop
    ld bc, $9D20
    nop
    inc bc

jr_028_47D4:
    ld b, h
    nop
    ld [$0089], sp
    ld bc, $8420
    nop
    add d
    jr nz, @-$78

    nop
    ld bc, $8820
    nop

jr_028_47E5:
    ld bc, $9F20
    nop
    ld bc, $8908
    nop
    ld bc, $8420
    nop
    add d
    jr nz, @-$78

    nop
    ld bc, $8820
    nop
    ld bc, $8320
    ld [$2001], sp
    adc c
    nop
    ld bc, $8D20
    nop
    ld bc, $8320
    ld [$208B], sp
    add h
    nop
    add d
    jr nz, @-$78

    nop
    add d
    jr nz, jr_028_479B

    nop
    ld bc, $8320
    ld [$2001], sp
    adc b
    nop
    add d
    jr nz, @-$5E

    nop
    add d
    jr nz, jr_028_47AB

    nop
    add d
    jr nz, jr_028_47AE

    nop
    ld bc, $8320
    nop
    ld bc, $8820
    nop
    add d
    jr nz, jr_028_47D4

    nop
    add d
    jr nz, @-$76

    nop

jr_028_4839:
    add d
    jr nz, @-$7A

    nop
    add d
    jr nz, jr_028_47C3

    nop
    ld bc, $8920
    nop
    add h
    jr nz, jr_028_47E5

jr_028_4848:
    nop
    add d
    jr nz, jr_028_47D4

    nop

jr_028_484D:
    add e
    ld [$0083], sp
    ld bc, $8420
    nop
    ld bc, $8C20
    nop
    adc a

jr_028_485A:
    jr nz, @-$6F

    nop
    add d
    jr nz, @-$74

    nop
    ld bc, $8408
    jr nz, @-$7A

    nop
    ld bc, $8C20

jr_028_486A:
    nop
    add d
    jr nz, @-$72

    nop
    ld bc, $8320
    ld [$2001], sp

jr_028_4875:
    adc e
    nop
    add d
    jr nz, @-$76

    nop
    ld bc, $8A43
    nop
    ld bc, $8820
    nop
    ld bc, $8320
    ld [$2082], sp
    adc h
    nop
    ld bc, $8320
    ld [$208E], sp
    sub e
    nop
    adc d
    jr nz, @-$7B

    ld [$2082], sp
    adc h
    nop
    ld bc, $8620
    nop
    ld bc, $8820
    nop
    add d

jr_028_48A4:
    jr nz, jr_028_4839

    nop
    ld bc, $8D20
    nop
    ld bc, $8C20
    nop
    ld bc, $8620
    nop
    ld bc, $8820
    nop
    add d
    jr nz, jr_028_484D

    nop
    ld bc, $8C20
    nop
    add d
    jr nz, jr_028_4848

    nop
    ld bc, $8520
    nop
    ld bc, $8620
    nop
    ld bc, $8820
    nop
    add d

jr_028_48D0:
    jr nz, jr_028_485A

    nop
    ld bc, $8320
    ld [$2088], sp
    adc h

jr_028_48DA:
    nop
    ld bc, $8720
    nop
    ld bc, $8520
    nop

jr_028_48E3:
    add e
    jr nz, jr_028_486A

    nop
    ld bc, $8820
    nop
    add d
    jr nz, @-$78

    nop
    add e
    jr nz, jr_028_4875

jr_028_48F2:
    ld [$2001], sp
    sub e
    nop
    ld bc, $8720
    nop
    ld bc, $8720
    nop
    ld bc, $8420
    nop
    ld bc, $8820
    nop
    adc c
    jr nz, @+$04

    nop

jr_028_490B:
    jr nz, jr_028_48A4

    nop
    ld bc, $8720
    nop
    ld bc, $8720
    nop
    ld bc, $8320
    nop
    add d
    jr nz, @-$76

    nop
    add d
    jr nz, @-$76

    nop
    ld bc, $9720

jr_028_4925:
    nop
    ld bc, $8720
    nop
    ld bc, $8720

jr_028_492D:
    nop
    ld bc, $8920
    nop
    ld bc, $8320
    nop
    add d
    jr nz, @-$76

    nop
    ld bc, $9720
    nop
    ld bc, $8420

jr_028_4941:
    nop
    add a
    jr nz, @-$7A

    nop
    ld bc, $8820

jr_028_4949:
    nop
    add d
    jr nz, jr_028_48D0

    nop
    add d
    jr nz, jr_028_48DA

    nop
    ld bc, $9520
    nop
    add d

jr_028_4957:
    jr nz, jr_028_48E3

jr_028_4959:
    nop
    ld bc, $8420
    nop
    ld bc, $8820
    nop
    ld bc, $8420
    nop
    add d
    jr nz, jr_028_48F2

    nop
    add d
    jr nz, @-$6A

    nop
    ld bc, $8B20
    nop
    ld bc, $8420
    nop
    ld bc, $8620
    nop
    add e
    jr nz, @-$7A

    nop
    add d
    jr nz, jr_028_490B

    nop
    add d
    jr nz, @-$6C

    nop
    ld [bc], a
    ld [$8B20], sp
    nop
    ld bc, $8420
    nop
    ld bc, $8520
    nop

jr_028_4993:
    add d
    jr nz, @-$78

    nop
    add d
    jr nz, jr_028_4925

    nop
    add d
    jr nz, jr_028_492D

    nop
    inc b
    ld b, l
    nop
    ld [$8B20], sp
    nop

jr_028_49A6:
    ld bc, $8420
    nop
    add d
    jr nz, @-$7C

jr_028_49AD:
    nop
    add e
    jr nz, @-$77

    nop
    add d
    jr nz, jr_028_4941

    nop
    add d
    jr nz, jr_028_4949

    nop
    ld [bc], a
    ld [$8B20], sp
    nop
    ld bc, $8520

jr_028_49C2:
    nop
    add d
    jr nz, @+$03

    ld [$008A], sp

jr_028_49C9:
    add d
    jr nz, jr_028_4959

jr_028_49CC:
    nop
    add d
    jr nz, jr_028_4957

    nop
    add d
    jr nz, jr_028_4957

    nop
    add h
    ld [$2001], sp
    adc e
    nop

jr_028_49DB:
    ld bc, $8620
    nop
    inc b
    jr nz, jr_028_49EA

    nop
    ld b, d
    adc b
    nop
    add d

jr_028_49E7:
    jr nz, @-$7B

    nop

jr_028_49EA:
    ld bc, $8A20
    nop
    ld bc, $8620

jr_028_49F1:
    nop
    ld bc, $8620
    nop
    add h
    jr nz, @-$73

jr_028_49F9:
    nop
    ld bc, $8620
    nop
    ld [bc], a
    jr nz, @+$0A

jr_028_4A01:
    adc d
    nop
    add d
    jr nz, @-$7B

    nop

jr_028_4A07:
    add d
    jr nz, jr_028_4993

    nop
    add d

jr_028_4A0C:
    jr nz, jr_028_4993

    nop
    ld bc, $8920

jr_028_4A12:
    nop
    add a
    jr nz, @-$7B

    ld [$2083], sp
    add a
    nop
    ld bc, $8520
    nop
    add a
    jr nz, jr_028_49A6

    nop
    ld bc, $8A20
    nop
    add e
    jr nz, jr_028_49AD

    nop
    ld bc, $8F20
    nop
    ld bc, $8320
    ld [$2085], sp
    add l
    nop
    ld bc, $8A20
    nop
    add d
    jr nz, jr_028_49C2

    nop
    add d
    jr nz, jr_028_49CC

    nop
    add d
    jr nz, jr_028_49C9

    nop
    ld bc, $9720
    nop

jr_028_4A4B:
    ld bc, $8520
    nop
    add d
    jr nz, jr_028_49DB

    nop

jr_028_4A53:
    add d
    jr nz, jr_028_49DB

    nop
    add e
    jr nz, jr_028_49E7

    nop
    ld bc, $9720
    nop
    ld bc, $8620
    nop
    ld bc, $8920
    nop
    add d
    jr nz, jr_028_49F1

    nop
    add e
    jr nz, jr_028_49F9

    nop
    ld bc, $9720
    nop
    ld bc, $8620
    nop
    add e
    jr nz, jr_028_4A01

    nop
    add d
    jr nz, jr_028_4A07

    nop
    add d
    jr nz, jr_028_4A0C

    nop
    sub d
    jr nz, jr_028_4A0C

    nop
    ld bc, $8820
    nop
    add h
    jr nz, jr_028_4A12

    nop
    add d
    jr nz, @-$74

    nop
    adc h
    jr nz, @-$67

    nop
    ld bc, $9020
    nop
    add d
    jr nz, jr_028_4A4B

    nop
    ld bc, $9020
    nop
    add d
    jr nz, jr_028_4A53

    nop
    ld bc, $9020
    nop
    ret nz

    ld b, c
    jr nz, jr_028_4AAF

jr_028_4AAF:
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ret nz

    ld b, c
    ld a, [bc]
    sub a
    nop
    ld bc, $A30A
    nop
    inc bc
    db $D3
    call nc, $82D5
    ld a, [bc]
    sub a
    nop
    ld bc, $920A
    nop
    ld bc, $900A
    nop
    inc bc
    db $E3
    ld sp, hl
    push hl
    add d
    ld a, [bc]
    sub a
    nop
    ld bc, $860A
    nop
    ld bc, $970A
    nop
    ld bc, $840A
    nop
    inc bc
    di
    db $F4
    push af
    add d
    ld a, [bc]
    sbc [hl]
    nop
    ld bc, $990A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    sbc [hl]
    nop
    ld bc, $9F0A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add [hl]
    ld a, [bc]
    adc e
    nop
    ld bc, $870A
    nop
    ld bc, $970A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $8A0A
    nop
    ld bc, $850A
    nop
    ld bc, $9F0A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $8A0A
    nop
    ld bc, $A30A
    nop
    ld [bc], a
    ld a, [bc]
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $8A0A
    nop
    ld bc, $8B0A
    nop
    ld bc, $990A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $880A
    nop
    add e
    ld a, [bc]
    and l
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $AA0A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $B00A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $97F8
    nop
    ld bc, $980A
    nop
    add d
    ld a, [bc]
    adc h
    nop
    ld bc, $83D3
    call nc, $D501
    xor l
    nop
    adc l
    ld a, [bc]
    ld [bc], a
    ld hl, sp-$1D
    add e
    db $E4
    ld [bc], a
    push hl
    ld hl, sp-$78
    ld a, [bc]
    and h
    nop
    adc l
    ld a, [bc]
    ld [bc], a
    ld hl, sp-$1D
    add e
    db $E4
    ld [bc], a
    push hl
    ld hl, sp-$47
    ld a, [bc]
    ld [bc], a
    ld hl, sp-$1D
    add e
    db $E4
    ld bc, $92E5
    nop
    ld bc, $8F0A
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    adc h
    nop
    ld bc, $83F3
    db $F4
    ld bc, $8BF5
    nop
    ld bc, $860A
    nop
    ld bc, $850A
    nop
    ld bc, $890A
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add d
    ld hl, sp-$73
    nop
    ld bc, $8C0A
    nop
    ld bc, $940A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add d
    ld a, [bc]
    add h
    nop
    and c
    ld a, [bc]
    adc d
    nop
    add d
    ld a, [bc]
    add d
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    add h
    nop
    ld bc, $8A0A
    nop
    ld bc, $940A
    nop
    add d
    ld a, [bc]
    adc c
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add d
    ld a, [bc]
    add h
    nop
    ld bc, $8A0A
    nop
    ld bc, $950A
    nop
    ld bc, $890A
    nop
    add d
    ld a, [bc]
    adc d
    nop
    add d
    ld a, [bc]
    inc bc
    nop
    ld a, [bc]
    ld a, [bc]
    add h
    nop
    ld bc, $8A0A
    nop
    ld bc, $950A
    nop
    ld bc, $890A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add d
    ld a, [bc]
    add h
    nop
    ld bc, $8A0A
    nop
    ld bc, $840A
    nop
    ld bc, $900A
    nop
    add d
    ld a, [bc]
    adc b
    nop
    add d
    ld a, [bc]
    adc l
    nop
    ld bc, $900A
    nop
    ld bc, $840A
    nop
    ld bc, $8B0A
    nop
    ld bc, $850A
    nop
    add h
    ld a, [bc]
    add l
    nop
    add d
    ld a, [bc]
    add d
    nop
    ld bc, $830A
    nop
    add d
    ld a, [bc]
    add l
    nop
    ld bc, $8A0A
    nop
    ld bc, $8A0A
    nop
    ld bc, $8B0A
    nop
    ld bc, $880A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    add d
    nop
    ld bc, $8A0A
    nop
    ld bc, $8A0A
    nop
    ld bc, $8F0A
    nop
    ld bc, $860A
    nop
    ld bc, $880A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    add d
    nop
    ld bc, $8A0A
    nop
    ld bc, $8A0A
    nop
    ld bc, $8F0A
    nop
    ld bc, $860A
    nop
    ld bc, $880A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    add d
    nop
    add d
    ld a, [bc]
    adc c
    nop
    ld bc, $8A0A
    nop
    ld bc, $8F0A
    nop
    add d
    ld a, [bc]
    adc [hl]
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    adc l
    nop
    add d
    ld a, [bc]
    adc c
    nop
    ld bc, $900A
    nop
    ld bc, $8E0A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    adc [hl]
    nop
    ld bc, $840A
    nop
    sbc b
    ld a, [bc]
    adc b
    nop
    ld bc, $840A
    nop
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    adc [hl]
    nop
    ld bc, $9B0A
    nop
    add d
    ld a, [bc]
    add a
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    add l
    nop
    ld bc, $840A
    nop
    ld bc, $830A
    nop
    ld bc, $850A
    nop
    ld bc, $8B0A
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    add [hl]
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    adc d
    nop
    ld bc, $830A
    nop
    ld bc, $9D0A
    nop
    add d
    ld a, [bc]
    add l
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    adc [hl]
    nop
    inc b
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    adc b
    nop
    ld bc, $8C0A
    nop
    ld bc, $850A
    nop
    adc h
    ld a, [bc]
    ld bc, $837C
    ld a, l
    inc bc
    ld a, [hl]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld bc, $A90A
    nop
    ld [bc], a
    ld a, [bc]
    adc h
    add e
    adc l
    inc bc
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    add [hl]
    nop
    ld bc, $870A
    nop
    ld bc, $A90A
    nop
    ld [bc], a
    ld a, [bc]
    sbc h
    add e
    sbc l
    inc bc
    sbc [hl]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    ld a, h
    ld bc, $850A
    nop
    add l
    ld a, [bc]
    ld bc, $837C
    ld a, l
    ld bc, $847E
    ld a, [bc]
    adc c
    nop
    ld bc, $920A
    nop
    add d
    ld a, [bc]
    ld bc, $8C8C
    adc l
    ld [bc], a
    adc [hl]
    ld a, [bc]
    adc c
    nop
    ld [bc], a
    ld a, [bc]
    adc h
    add e
    adc l
    ld bc, $838E
    nop
    add e
    ld a, [bc]
    add d
    nop
    ld bc, $8B0A
    nop
    ld bc, $8B0A
    nop
    add d
    ld a, [bc]
    ld bc, $8C9C
    sbc l
    ld bc, $839E
    ld a, [bc]
    add a
    nop
    ld [bc], a
    ld a, [bc]
    sbc h
    add e
    sbc l
    ld bc, $839E
    nop
    ld [bc], a
    ld a, [bc]
    nop
    add d
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    adc e
    nop
    ld bc, $8B0A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $870A
    nop
    ld bc, $880A
    nop
    inc bc
    ld a, [bc]
    nop
    nop
    add e
    ld a, [bc]
    sub a
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $870A
    nop
    ld bc, $880A
    nop
    ld bc, $840A
    nop
    add d
    ld a, [bc]
    add [hl]
    nop
    ld bc, $830A
    nop
    inc b
    db $D3
    call nc, $0AD5
    adc b
    nop
    add d
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    adc [hl]
    nop
    ld bc, $830A
    nop
    ld bc, $830A
    nop
    ld bc, $8E0A
    nop
    add d
    ld a, [bc]
    adc c
    nop
    inc b
    db $E3
    ld sp, hl
    push hl
    ld a, [bc]
    adc b
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $870A
    nop
    ld bc, $860A
    nop
    ld bc, $880A
    nop
    add h
    ld a, [bc]
    add [hl]
    nop
    inc b
    di
    db $F4
    push af
    ld a, [bc]
    adc b
    nop
    add d
    ld a, [bc]
    add e
    nop
    ld bc, $860A
    nop
    ld bc, $850A
    nop
    ld bc, $870A
    nop
    ld bc, $900A
    nop
    sub a
    ld a, [bc]
    add [hl]
    nop
    ld bc, $830A
    nop
    ld bc, $850A
    nop
    ld bc, $850A
    nop
    inc bc
    ld a, [bc]
    nop
    ld a, [bc]
    sub b
    nop
    ld bc, $880A
    nop
    ld bc, $8B0A
    nop
    add d
    ld a, [bc]
    adc d
    nop
    add d
    ld a, [bc]
    add h
    nop
    ld bc, $870A
    nop
    add d
    ld a, [bc]
    adc e
    nop
    ld bc, $8C0A
    nop
    ld bc, $8B0A
    nop
    add d
    ld a, [bc]
    add e
    nop
    ld bc, $8C0A
    nop
    inc b
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    add l
    nop
    add e
    ld a, [bc]
    add [hl]
    nop
    ld bc, $9B0A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $8A0A
    nop
    add d
    ld a, [bc]
    sub c
    nop
    ld bc, $8F0A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $8B0A
    nop
    add e
    ld a, [bc]
    add e
    nop
    ld bc, $930A
    nop
    ld bc, $870A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    inc bc
    ld a, [bc]
    nop
    ld a, [bc]
    adc e
    nop
    add l
    ld a, [bc]
    add [hl]
    nop
    ld bc, $8C0A
    nop
    inc bc
    ld a, [bc]
    nop
    nop
    add d
    ld a, [bc]
    add e
    nop
    add e
    ld a, [bc]
    inc bc
    nop
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld bc, $910A
    nop
    add e
    ld a, [bc]
    sbc c
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $8E0A
    nop
    add d
    ld a, [bc]
    add e
    nop
    add e
    ld a, [bc]
    add l
    nop
    ld bc, $850A
    nop
    ld bc, $8B0A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $8F0A
    nop
    ld bc, $850A
    nop
    add h
    ld a, [bc]
    add d
    nop
    ld bc, $910A
    nop
    add d
    ld a, [bc]
    sub b
    nop
    ld bc, $850A
    nop
    ld bc, $850A
    nop
    ld bc, $830A
    nop
    dec b
    ld a, [bc]
    nop
    db $D3
    call nc, $84D5
    nop
    adc [hl]
    ld a, [bc]
    add l
    nop
    add h
    ld a, [bc]
    adc a
    nop
    ld bc, $910A
    nop
    inc b
    ld a, [bc]
    db $E3
    ld sp, hl
    push hl
    adc l
    nop
    add l
    ld a, [bc]
    add l
    nop
    add h
    ld a, [bc]
    add e
    nop
    ld bc, $8B0A
    nop
    ld bc, $830A
    nop
    ld bc, $8E0A
    nop
    inc bc
    di
    db $F4
    push af
    adc l
    nop
    add l
    ld a, [bc]
    add l
    nop
    add h
    ld a, [bc]
    add h
    nop
    ld bc, $8A0A
    nop
    ld bc, $8D0A
    nop
    ld bc, $850A
    nop
    ld bc, $840A
    nop
    ld bc, $840A
    nop
    add d
    ld a, [bc]
    add a
    nop
    ld bc, $870A
    nop
    add d
    ld a, [bc]
    add l
    nop
    ld bc, $890A
    nop
    add d
    ld a, [bc]
    adc b
    nop
    ld bc, $8E0A
    nop
    ld bc, $8D0A
    nop
    ld bc, $830A
    nop
    ld b, $D3
    call nc, $D5D4
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    inc b
    db $D3
    call nc, $0AD5
    sub a
    nop
    ld bc, $8D0A
    nop
    ld bc, $830A
    nop
    inc b
    db $E3
    sbc $DF
    push hl
    add d
    ld a, [bc]
    adc l
    nop
    inc b
    db $E3
    ld sp, hl
    push hl
    ld a, [bc]
    sub c
    nop
    add d
    ld a, [bc]
    sub d
    nop
    ld bc, $830A
    nop
    inc b
    db $E3
    xor $EF
    push hl
    add d
    ld a, [bc]
    adc l
    nop
    inc b
    di
    db $F4
    push af
    ld a, [bc]
    adc h
    nop

jr_028_4FC5:
    ld bc, $850A
    nop
    add d
    ld a, [bc]
    sub c
    nop
    ld bc, $830A
    nop
    inc b
    di
    db $F4
    db $F4
    push af
    ret nz

    ld b, c
    ld a, [bc]
    nop
    ld [bc], a
    ld d, e
    add b
    add d
    ld d, e

jr_028_4FDF:
    add d
    add b
    add d
    ld d, e
    add d
    add b
    add d
    ld d, e
    add d
    add b
    add d
    ld d, e
    add d
    add b
    add d
    ld d, e
    add d
    add b
    add d
    ld d, e
    ld [hl+], a
    ld d, $17
    ld h, $27
    rla
    ld d, $27
    ld h, $10
    ld de, $2120
    ld de, $2110
    jr nz, @+$05

    ld [bc], a
    rlca
    ld b, $00
    ld bc, $0504
    ld [bc], a
    inc bc
    ld b, $07
    nop
    ld bc, $1110
    ld [bc], a
    inc bc
    add d
    ld d, e
    inc b
    ld bc, $1100
    db $10
    sbc b
    ld d, e
    inc d
    inc d
    dec d
    inc h
    dec h
    dec d
    inc d
    dec h
    inc h
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    inc de
    ld [de], a
    inc hl
    ld [hl+], a
    add hl, bc
    ld [$0A0B], sp
    add h
    ld d, e
    rlca
    ld [$0A09], sp
    dec bc
    jr nz, jr_028_5090

    jr nc, jr_028_4FC5

    ld d, e
    inc bc
    jr nz, jr_028_5096

    jr nc, jr_028_4FDF

    ld d, e
    ld bc, $8430
    ld d, e
    ld hl, $4930
    ld c, d
    dec sp
    ld c, e
    ld c, d
    ld c, c
    ld c, e
    dec sp
    dec c
    inc c
    rrca
    ld c, $00
    ld bc, $0504
    inc c
    dec c
    ld c, $0F
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    and h
    ld d, e
    ld a, [bc]
    ld h, e
    ld h, d
    ld e, $1F
    jr jr_028_508F

    jr z, jr_028_50A0

    add hl, de
    ld a, [de]
    add d
    ld a, [hl+]
    db $10
    add hl, de
    jr @+$2B

    jr z, jr_028_50E1

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
    sbc h
    ld d, e
    inc b

jr_028_508F:
    ccf

jr_028_5090:
    ld l, h
    ld b, l
    ld b, [hl]
    add h
    ld d, e
    add hl, bc

jr_028_5096:
    ld h, d
    ld h, e
    ld e, $1F
    dec de
    inc e
    dec hl
    ld d, e
    dec e
    add e

jr_028_50A0:
    ld d, e
    db $10
    inc e
    dec de
    ld d, e
    dec hl
    ld d, e
    jr jr_028_50C0

    ld d, $19
    ld a, [de]
    inc [hl]
    dec d
    dec de
    ld d, e
    ld d, $28
    sbc b
    ld d, e
    dec b
    rlca
    ld e, $3D
    ld d, e
    ld b, b
    add e
    ld d, e
    inc b
    ld e, $07
    ld d, e

jr_028_50C0:
    dec a
    add h
    ld d, e
    dec b
    jr nc, jr_028_50F7

    ld [hl-], a
    dec sp
    ld a, [hl-]
    add d
    ld d, e
    ld de, $1E3A
    rra
    cpl
    ld l, $38
    dec h
    ld c, b
    dec [hl]
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc h
    daa
    inc [hl]
    ld c, b
    sub h
    ld d, e
    dec b
    ccf

jr_028_50E1:
    ld b, h
    ld l, [hl]
    dec a
    ccf
    adc b
    ld d, e
    inc c
    ccf
    ld d, e
    ld d, e
    ld b, h
    ccf
    inc a
    ld l, [hl]
    ld [hl], $53
    jr c, jr_028_512C

    ld d, e
    add d
    ld a, [hl-]
    db $10

jr_028_50F7:
    ld d, e
    ld h, [hl]
    ld h, [hl]
    cpl
    ld l, $39
    ld b, [hl]
    ld d, e
    ld d, [hl]
    inc h
    dec h
    ld d, h
    ld a, [hl+]
    ld b, [hl]
    ld b, a
    ld d, [hl]
    sbc c
    ld d, e
    inc b
    dec [hl]
    ld d, e
    ld d, a
    ld c, [hl]
    add l
    ld d, e
    inc bc
    dec [hl]
    ld c, [hl]
    ld d, a
    add l
    ld d, e
    rlca
    ld [hl], $39
    jr c, jr_028_514C

    jr nc, @+$3D

    ld [hl-], a
    add d
    ld h, [hl]
    inc bc
    rra
    ld e, $07
    add d
    ld d, e
    ld [$1916], sp
    ld a, [de]
    inc [hl]
    dec d

jr_028_512C:
    ld d, e
    dec l
    ld d, $9D
    ld d, e
    inc b
    ld l, c
    ld l, d
    ld c, $0F
    adc b
    ld d, e
    dec b
    ld b, d
    ld b, e
    ld sp, $1253
    add d
    ld d, e
    ld [bc], a
    inc de
    ld d, e
    add d
    ld [de], a
    dec b
    ld d, e
    jr c, jr_028_516E

    ld c, b
    dec [hl]
    add h

jr_028_514C:
    ld d, e
    inc b
    inc h
    daa
    inc [hl]
    ld c, b
    sbc b
    ld d, e
    inc b
    ld b, d
    halt
    ld sp, $8278
    ld [hl], a
    add d
    ld a, c
    inc bc
    halt
    ld d, e
    ld a, b
    add l
    ld d, e
    dec b
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld [de], a
    add d
    ld d, e
    ld de, $5312

jr_028_516E:
    ld [de], a
    inc de
    ld d, e
    ld c, h
    ld b, [hl]
    ld d, a
    ld e, b
    inc h
    dec h
    ld d, h
    ld a, [hl+]
    ld b, [hl]
    ld c, h
    ld e, e
    ld d, a
    sbc b
    ld d, e
    inc b
    ld h, d
    ld a, d
    ld [hl], d
    ld a, h
    add d
    ld a, e
    add d
    ld d, e
    inc b
    ld a, d
    ld h, e
    ld a, h
    ld [hl], e
    add h
    ld d, e
    jr jr_028_51D3

    ld d, e
    ld d, d
    ld d, e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld h, a
    ld l, b
    ld l, [hl]
    dec c
    ld l, c
    ld l, d
    ld c, $0F
    ld l, e
    ld l, h
    ld l, [hl]
    dec c
    sbc c
    ld d, e
    inc bc
    ld a, l
    ld d, e
    ld a, [hl]
    add h
    ld d, e
    inc bc
    ld a, l
    ld d, e
    ld a, [hl]
    add l
    ld d, e
    jr jr_028_521A

    ld h, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, e
    ld a, h
    ld d, e
    ld a, e
    ld a, d
    ld d, e
    ld a, h
    rlca
    ld e, $3D
    ld d, e
    rra
    dec l
    ld d, e
    inc [hl]
    ld l, $6C
    ld a, $0D
    xor h
    ld d, e
    inc bc
    ld a, l

jr_028_51D3:
    ld d, e
    ld a, [hl]
    add d
    ld d, e
    rrca
    ld a, l
    ld d, e
    ld a, [hl]
    dec [hl]
    ld d, e
    ld d, a
    ld c, [hl]
    ld d, e
    dec [hl]
    ld c, a
    ld e, h
    ccf
    ld l, h
    ld e, [hl]
    ld e, a
    or h
    ld d, e
    inc c
    ld h, a
    ld l, b
    ld l, [hl]
    dec a
    ccf
    ld l, h
    ld l, [hl]
    dec c
    ccf
    ld l, l
    ld l, [hl]
    ld l, a
    ret nz

    ld h, h
    ld d, e
    add d
    ld b, a
    inc c
    ld d, b
    ld d, d
    ld c, e
    ld c, d
    ld d, b
    ld d, d
    ld c, e
    ld c, d
    ld d, b
    ld d, d
    ldh [$E1], a
    add d
    pop af
    add d
    and $82
    or $02
    di
    ld a, [c]
    add d
    push af
    add d
    db $E3
    add d
    push hl
    add d
    nop
    add d

jr_028_521A:
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add [hl]
    ld [bc], a
    add h
    ld [hl+], a
    add h
    ld [bc], a
    adc b
    ld [hl+], a
    adc b
    ld [bc], a
    add [hl]
    ld a, [bc]
    add d
    nop
    add h
    ld a, [hl+]
    sbc h
    ld [bc], a
    add h
    ld [hl+], a
    add h
    ld [bc], a
    adc b
    ld [hl+], a
    add d
    ld [bc], a
    add d
    nop
    add h
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    ld a, [bc]
    add [hl]
    nop
    inc bc
    ld a, [hl+]
    nop
    ld a, [hl+]
    sbc b
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld a, [bc]
    nop
    add e
    jr nz, jr_028_5260

    ld a, [hl+]

jr_028_5260:
    add h
    ld a, [bc]
    add h
    ld a, [hl+]
    add h
    ld [hl+], a
    adc b
    ld [bc], a
    adc b
    ld a, [bc]
    add h
    ld a, [hl+]
    and h
    ld [bc], a
    add d
    ld a, [bc]
    add e
    ld b, $03
    ld h, $06
    ld b, $82
    ld h, $01
    ld b, $85
    ld h, $88
    ld a, [bc]
    add h
    ld a, [hl+]
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop

jr_028_528C:
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    ld [bc], a
    add d
    nop
    add d
    inc c
    add d
    inc b
    add d
    nop
    add d
    ld bc, $0A82
    add l
    ld b, $02
    inc bc
    ld b, $83
    inc bc
    add d
    ld h, $04
    inc bc
    ld h, $00
    ld [$2882], sp
    add l
    ld [$0003], sp
    ld [$9828], sp
    nop
    ld b, $0C

jr_028_52C0:
    add hl, bc
    add hl, bc
    nop
    ld bc, $8202
    nop
    inc b
    add hl, hl
    inc l
    nop
    add hl, hl
    add h
    ld bc, $0683
    add d
    ld h, $82
    nop
    inc bc
    ld h, $06
    ld b, $82
    ld h, $8B
    ld [$2801], sp
    sub h
    nop
    rlca
    inc c
    inc b
    inc c
    inc b
    ld hl, $0200
    add [hl]
    nop
    add hl, bc
    ld bc, $0100
    inc h
    inc l
    inc b
    inc l
    ld b, $00
    add d
    ld b, $06
    nop
    ld b, $06
    nop
    ld c, $2E
    add d
    ld h, $04
    ld [$0028], sp
    jr z, jr_028_528C

    ld [$0083], sp
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
    ld bc, $2104
    nop
    inc c
    add hl, bc
    add l
    nop
    inc bc
    ld bc, $2C29
    add d
    ld bc, $0083
    add l
    ld h, $04
    ld b, $26
    ld c, $2E
    add d
    ld h, [hl]
    inc b
    inc c
    daa
    rlca
    jr z, jr_028_52C0

    ld [$0704], sp
    inc c
    ld [$9C07], sp
    nop
    add d
    add hl, bc
    add d
    inc c
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    dec b
    ld c, $0A
    ld c, $0A
    dec c
    add d
    nop
    ld [bc], a
    dec c
    nop
    add d
    dec l
    ld bc, $8400
    ld [$0084], sp
    add e
    ld [$2803], sp
    nop
    nop
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
    ld bc, $0E84
    inc bc
    dec c
    dec l
    ld c, $82
    ld l, $03
    nop
    ld l, $0E
    add d
    nop
    add d
    ld bc, $0E05
    ld a, [bc]
    ld c, $0A
    dec c
    add d
    nop
    ld [bc], a
    dec c
    nop
    add d
    dec l
    dec b
    nop
    add hl, hl
    jr z, jr_028_53AD

    add hl, bc
    add l
    ld [$0982], sp
    inc bc
    inc l
    ld bc, $8201
    nop
    add d

jr_028_53AD:
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add l
    ld c, $07
    ld l, $00
    nop
    ld l, $0E
    ld l, $0E
    add d
    ld bc, $0082
    inc bc
    ld a, [bc]
    inc bc
    ld a, [bc]
    add d
    ld c, $04
    dec c
    ld c, $0E
    dec l
    add e
    ld l, $02
    inc c
    add hl, bc
    add d
    inc c
    add d
    add hl, bc
    add d
    inc c
    ld bc, $8309
    inc c
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
    ld bc, $0083
    inc bc
    ld c, $00
    ld c, $84
    nop
    inc b
    ld l, $01
    ld l, $00
    add d
    ld bc, $0082
    inc bc
    ld a, [bc]
    ld c, $0A
    add h
    ld c, $06
    nop
    ld l, $2E
    nop
    ld l, $0C
    add d
    add hl, bc
    dec b
    nop
    add hl, bc
    inc c
    nop
    ld bc, $0C84
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
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    inc bc
    ld c, $00
    ld c, $82
    nop
    ld a, [bc]
    ld l, $00
    ld l, $21
    nop
    inc c
    add hl, bc
    nop
    ld bc, $8509
    inc c
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
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    add d
    ld bc, $0082
    inc b
    inc c
    add hl, bc
    inc c
    inc b
    adc b
    inc c
    ret nz

    ld b, d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    add d
    ld bc, $0582
    ld b, $06
    ld h, $26
    ld b, $05
    dec b
    ld [bc], a
    dec h
    dec b
    add d
    nop
    ld [bc], a
    jr nz, jr_028_54D4

jr_028_54D4:
    add d
    dec c
    dec b
    dec l
    dec c
    dec c
    dec l
    dec c
    add h
    dec l
    dec b
    dec c
    dec l
    dec c
    dec l
    dec c
    nop
    nop
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
    nop
    nop
    nop
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
    add d
    ld a, h
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
    rlca
    ld [bc], a
    rlca
    nop
    inc bc
    ld bc, $0304
    db $FC
    inc bc
    ld hl, sp-$09
    db $FC
    dec bc
    rst $38
    db $E4
    rst $38
    ldh a, [rSB]
    cp $00
    rst $38
    db $F4
    set 7, [hl]
    or l
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    inc a
    rst $38
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$70
    db $FC
    ld [$28FC], sp
    db $FC
    ld a, b
    rrca
    dec b
    rrca
    ld b, $1F
    inc c
    ld e, $0C
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $08
    add e
    add a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $E700
    nop
    rst $38
    nop
    cp $00
    add $00
    ld a, a
    nop
    ld e, a
    ld a, $FF
    ld e, $7E
    sbc h
    jr jr_028_558F

    nop
    nop
    ld bc, $3901
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    ld l, b
    ld hl, sp+$30
    ld hl, sp+$30
    ldh a, [rNR41]
    jr nz, jr_028_558F

jr_028_558F:
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    ld [hl], b
    ld c, d
    inc [hl]
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0007
    inc bc
    ld bc, $0304
    inc b
    inc bc
    ld a, b
    rlca
    db $FC
    ld a, e
    rst $38
    adc h
    rst $38
    ld h, [hl]
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [$60]
    ld hl, sp+$10
    db $FC
    jr z, jr_028_55D9

    ld bc, $0307

jr_028_55D9:
    rlca
    inc bc
    rrca
    ld b, $0E
    inc b
    ld c, $04
    inc b
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    ld d, b
    rst $38
    jp $83D7


    add e
    nop
    nop
    nop
    nop
    nop
    ld bc, $FC00
    ld a, b
    db $FC
    ld l, b
    ld hl, sp+$30
    ld hl, sp+$30
    ld [hl], b
    jr nz, jr_028_5620

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
    inc b
    rra
    dec bc
    ccf
    rla
    ccf
    ld d, $07
    nop
    db $E3
    ld bc, $E3FC
    db $FC
    dec sp
    ld hl, sp-$79
    db $FC

jr_028_5620:
    db $E3
    rst $38
    ld [hl], b
    rst $38
    ret c

    nop
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$30
    db $FC

jr_028_562E:
    ld c, b
    db $FC

jr_028_5630:
    jr jr_028_562E

    jr c, jr_028_5630

    ld l, b
    ld a, a
    ld l, $7E
    jr z, jr_028_56B2

    jr nz, jr_028_565C

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
    ret nc

    rst $18
    nop
    adc a
    inc bc
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $F800
    ld [hl], b
    ld hl, sp+$30
    ldh a, [rNR41]
    and b

jr_028_565C:
    nop
    nop
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
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld a, a
    ld c, $FF
    ld [hl], e
    rst $38
    adc b
    rst $38
    ld a, d
    rst $38
    rst $30
    rst $38
    xor a
    inc bc
    nop
    rlca
    nop
    ld [$9907], sp
    ld c, $D4
    adc a
    ld a, [c]
    ld c, l
    rst $30
    ld a, [hl+]
    rst $28
    dec d
    ret nz

    nop
    ldh [rP1], a
    jr nc, @-$1E

    add hl, sp
    ldh a, [$EB]
    ld [hl], c
    rst $28
    ld [hl-], a
    rst $28
    call nc, $A8F7
    cp a
    ld l, $2F
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_56B2:
    nop
    nop
    nop
    di
    xor h
    rst $20
    db $DB
    rst $38
    ld bc, $80FB
    db $FC
    nop
    cp $0C
    cp $CC
    db $EC
    nop
    ld hl, $7F1E
    ld a, $7F
    ld a, [hl-]
    ccf
    nop
    dec h
    ld a, [de]
    ld h, $18
    jr jr_028_56D3

jr_028_56D3:
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    rlca
    ld [bc], a
    rrca
    dec b
    rrca
    dec b
    rrca
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld c, $00

jr_028_56EB:
    ccf
    ld c, $FF
    inc sp
    rst $38
    ret z

    rst $38
    ld a, [hl-]
    rst $38
    rst $10
    inc bc
    nop
    rlca
    nop
    ld [$1907], sp
    ld c, $94
    rrca
    jp nc, $F78D

    ld c, d
    rst $28
    dec d
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_028_56EB

    jr c, @-$0E

    jp hl


    ld [hl], b
    db $EB
    ld sp, $D2EF
    rst $30
    xor b
    rst $38
    xor [hl]
    rst $38
    xor [hl]
    xor [hl]
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
    nop
    di
    xor h
    rst $20
    db $DB
    rst $38
    dec c
    rst $38
    add b
    cp $00
    cp $0C
    cp $CC
    db $EC
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_573B:
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    ccf
    inc c
    ld a, a
    ld sp, $0003
    rlca
    nop
    ld [$1907], sp
    ld c, $D4
    rrca
    ld a, [c]
    call $2AF7
    rst $28
    sub l
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_028_573B

    jr c, @-$0E

    db $EB
    ld [hl], b
    rst $28
    inc sp
    rst $28
    call nc, $A9F7
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    nop
    rst $38
    ld c, a
    rst $38
    cp e
    rst $38
    ld d, [hl]
    rst $38
    ld l, $FF
    xor [hl]
    xor $84
    add h
    nop
    nop
    nop
    di
    xor l
    rst $20
    jp c, $0FFF

    rst $38
    add d
    cp $00
    cp $0C
    cp $CC
    db $EC
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    jp hl


    db $10
    swap c
    rra
    ld a, [c]
    rra
    db $E4
    rst $38
    ld [$12FF], sp
    rst $38
    ld h, a
    rst $38
    ld [hl], c
    ei
    ld h, b
    db $FC
    ld b, b
    cp $0C
    cp $0C
    db $EC
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $10
    ret


    jr nc, jr_028_57DB

    pop af
    rra
    ld a, [c]
    rst $38
    inc b
    rst $38
    jr @+$01

    ld h, e
    rst $38
    ld c, l
    rst $38
    ld [hl], b
    cp $40
    cp $0C
    cp $0C
    db $EC
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]

jr_028_57DB:
    add sp, $10
    swap b
    rra
    di
    rst $18
    inc h
    rst $38
    add hl, de
    rst $38
    ld h, c
    rst $38
    ld c, [hl]
    rst $38
    ld a, a
    rst $38
    ld c, d
    cp $00
    cp $00
    cp $0C
    db $EC
    nop
    ld b, e
    inc a
    ld a, a
    ld a, $FF
    ld h, h
    push hl
    ld e, d
    ld b, l
    ld a, [hl-]
    ld c, c
    ld [hl], $32
    inc c
    inc c
    nop
    jr nz, @-$3E

    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ld hl, sp-$40
    db $E4
    sbc b
    adc h
    ld [hl], b
    ld hl, sp+$00
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
    rst $18
    ld l, $3F
    reti


    ld a, a
    and d
    rst $38
    dec bc
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
    ldh [$C0], a
    ldh a, [rNR41]
    ld hl, sp-$30
    rst $38
    dec e
    rst $38
    ld a, $FF
    ld l, $FE
    inc h
    db $FC
    ld b, b
    cp $0C
    cp $0C
    db $EC
    nop
    db $FC
    add sp, -$04
    xor b
    cp h
    adc b
    sbc b
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
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    add sp, $10
    inc e
    ldh [$7C], a
    sbc b
    cp $04
    rst $38
    ld a, [hl-]
    rst $38
    ld a, l
    rst $38
    dec d
    rst $38
    ld de, $00FF
    cp $0C
    cp $0C
    db $EC
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld h, b
    add b
    ldh [$C0], a
    ldh [$C0], a

jr_028_588B:
    ldh a, [$C0]
    ret z

    or b
    add h
    ld a, b
    call nz, $F838
    nop
    inc bc
    nop
    rlca
    nop
    ld [$7907], sp
    ld c, $F4
    ld l, a
    ld a, [c]
    adc l
    rst $30
    ld c, d
    rst $28
    push de
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_028_588B

    ld a, $F0
    rst $28
    halt
    rst $28
    ld sp, $D2EF
    rst $30
    xor e
    di
    xor l
    rst $20
    jp c, $06FF

jr_028_58BB:
    cp $84
    db $FC
    nop
    cp $0C
    cp $CC
    db $EC
    nop
    inc bc
    nop
    rlca
    nop
    ld [$1907], sp
    ld c, $14
    rrca
    ld [de], a
    dec c
    rla
    ld a, [bc]
    cpl
    dec d
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_028_58BB

    jr c, @-$0E

    add sp, $70
    add sp, $30
    add sp, -$30
    db $F4
    xor b
    ld a, [c]
    xor h
    rst $20
    jp c, $05FF

    rst $38
    add l
    rst $38
    ld bc, $0CFF
    cp $CC
    db $EC
    nop
    rlca
    ld bc, $040F
    rra
    inc c
    rra
    ld [$000F], sp
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    nop
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    dec c
    nop
    rra
    nop
    rra
    ld bc, $030F
    jr @+$09

    inc hl
    inc e
    inc de
    dec c
    rra
    ld bc, $00F8
    inc b
    ld hl, sp+$44
    ld hl, sp-$7E
    db $FC
    ld a, [hl+]
    call nc, $A07C
    ld hl, sp+$50
    ld hl, sp-$30
    ccf
    jr jr_028_59B7

    inc h
    ld a, a
    jr z, @+$01

    ld e, h
    rst $38
    ld e, b
    ei
    ld [hl], c
    ld [hl], e
    ld hl, $0023
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

    nop
    ld c, b
    jr nc, jr_028_5990

    db $10
    jr c, @+$12

    ld a, h
    jr nc, @+$80

    nop
    ld b, e
    inc a
    ld b, c
    ld a, $7F
    nop
    dec c
    nop
    rra
    nop
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
    inc b
    ld hl, sp+$44
    ld hl, sp-$7E
    db $FC
    ld a, [hl+]
    call nc, $A07C
    ld hl, sp+$50
    ld hl, sp-$30
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    inc bc
    nop
    nop

jr_028_5990:
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

    nop
    ret nz

    ret nz

jr_028_59B7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_59C1:
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $00E1
    ld bc, $0300
    ld bc, $0003
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ldh a, [rP1]
    jr jr_028_59C1

    ld [$F8F0], sp
    nop
    sub b
    add b
    add e
    cp $06
    nop
    cp $FE
    nop
    cp $FE
    inc b
    ld bc, $FEFE
    ld bc, $FE83
    dec b
    inc bc
    inc b
    ld d, $17
    ld [bc], a
    add h
    cp $11
    ld [bc], a
    cp $FE
    ld [hl], l
    halt
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], l
    ld a, d
    ld a, b
    ld e, c
    ld e, d
    ld e, l
    ld e, [hl]
    ld e, e
    ld e, h
    add d
    ld a, h
    inc b
    ld e, d
    ld e, c
    ld e, [hl]
    ld e, l
    sub b
    add b
    ld [bc], a
    cp $00
    add d
    cp $01
    nop
    add e
    cp $0A
    inc bc
    ld [de], a
    dec b
    inc d
    inc de
    inc bc
    dec d
    ld b, $04
    dec b
    add d
    cp $09
    inc bc
    inc de
    ld b, $15
    ld [de], a
    inc bc
    inc d
    dec b
    ld a, e
    add d
    ld a, h
    ld [$7C7D], sp
    ld a, e
    ld a, [hl]
    ld a, h
    ld e, a
    ld a, h
    ld h, b
    add [hl]
    ld a, h
    inc bc
    ld e, a
    ld a, h
    ld h, b
    sbc b
    add b
    rlca
    inc bc
    rlca
    dec b
    add hl, bc
    ld [$0AFE], sp
    add [hl]
    cp $09
    ld [$0AFE], sp
    jr jr_028_5A61

    add hl, de
    ld b, $7F
    nop

jr_028_5A61:
    add d
    cp $02
    nop
    ld a, a
    add d
    cp $04
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    add d
    ld a, h
    ld b, $65
    ld h, [hl]
    ld h, d
    ld h, c
    ld h, h
    ld h, e
    sbc b
    add b
    jr z, jr_028_5A7D

    dec bc
    dec b
    ld [bc], a

jr_028_5A7D:
    ld l, l
    ld l, [hl]
    db $10
    ld l, a
    ld c, $0F
    dec a
    ld [hl], $6E
    ld l, l
    ld l, a
    db $10
    ld bc, $0204
    ld b, $0E
    rrca
    inc c
    dec bc
    ld d, d
    ld d, c
    ld d, [hl]
    ld d, l
    ld h, a
    ld l, b
    ld l, e
    ld l, h
    ld l, c
    ld l, d
    ld l, l
    ld l, [hl]
    ld l, b
    ld h, a
    ld l, h
    ld l, e
    sbc h
    add b
    rrca
    inc d
    ld [hl], b
    dec b
    ld b, $16
    rlca
    dec b
    ld b, $15
    inc d
    dec b
    ld b, $08
    rlca
    ld a, [bc]
    add d
    ld b, $13
    dec bc
    db $10
    ld [$5758], sp
    ld d, h
    ld d, e
    ld l, a
    ld [hl], b
    cp $73
    ld [hl], c
    ld [hl], d
    cp $74
    ld [hl], b
    ld l, a
    ld [hl], e
    cp $98
    add b
    jr z, jr_028_5AFD

    ld sp, $3332
    ld sp, $3330
    ld [hl-], a
    dec de
    ld e, $1F
    ld [hl+], a
    inc e
    dec e
    jr nz, jr_028_5AFD

    ld e, $1B
    ld [hl+], a
    rra
    dec bc
    inc c
    ld [$5107], sp
    ld d, d
    ld d, e
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    ld d, [hl]
    ld b, d
    ld b, e
    ld [hl], a
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, a
    ld c, b
    sbc b
    add b
    inc c
    inc [hl]
    cp $35
    ld [hl], $FE
    inc [hl]

jr_028_5AFD:
    ld [hl], $35
    inc hl
    inc h
    dec h
    ld h, $84
    add b
    jr jr_028_5B2B

    inc hl
    ld h, $25
    inc bc
    inc b
    dec b
    ld b, $52
    ld d, c
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld d, e
    ld d, h
    ld c, c
    ld c, d
    ld c, l
    ld c, [hl]
    ld c, e
    ld c, h
    ld c, a
    ld d, b
    sbc b
    add b
    inc e
    inc l
    dec l
    ld l, $2F
    dec l
    inc l
    cpl
    ld l, $27
    ld a, [hl+]

jr_028_5B2B:
    dec hl
    inc l
    jr z, @+$2B

    dec l
    ld l, $30
    daa
    cpl
    dec hl
    ld b, c
    ld a, h
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    add e
    cp $09
    ld b, c
    ld b, l
    ld b, h
    ld c, b
    ld b, a
    ld b, e
    ld b, d
    ld b, [hl]
    ld [hl], a
    sbc b
    add b
    inc e
    inc b
    dec b
    inc hl
    ld [hl+], a
    inc b
    inc bc
    ld [$0310], sp
    inc b
    db $10
    ld [$3231], sp
    dec [hl]
    ld [hl], $33
    inc [hl]
    scf
    inc a
    ld b, l
    ld b, [hl]
    ld b, e
    ld b, h
    ld e, c
    ld e, d
    ld e, e
    ld [hl], l
    add d
    cp $0A
    ld b, c
    cp $4C
    ld c, e
    ld d, b
    ld c, a
    ld c, d
    ld c, c
    ld c, [hl]
    ld c, l
    sbc h
    add b
    inc h
    ld c, $0F
    add hl, de
    dec bc
    ld [hl], b
    ld [$0AFE], sp
    add hl, sp
    ld a, [hl-]
    dec a
    ld a, $3B
    inc a
    ccf
    ld b, b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, a
    halt
    ld d, l
    ld d, [hl]
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, d
    ld e, a
    ld h, b
    ld h, e
    ld h, h
    ld e, [hl]
    ld e, l
    ld h, d
    ld h, c
    sbc h
    add b
    ld [$6768], sp
    ld l, h
    ld l, e
    ld [hl], c
    cp $3D
    ld [hl], $82
    ld e, a
    add d
    ld h, b
    jr jr_028_5BE4

    jr c, jr_028_5BE8

    ld a, [hl-]
    dec a
    ld a, $3F
    ld b, b
    jr c, jr_028_5BED

    ld a, [hl-]
    add hl, sp
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld h, a
    ld l, b
    ld l, e
    ld l, h
    ld h, [hl]
    ld h, l
    ld l, d
    ld l, c
    adc b
    add b
    inc c
    scf
    jr c, jr_028_5C03

    ld a, [hl-]
    dec a
    ld a, $3F
    ld b, b
    jr c, jr_028_5C08

    ld a, [hl-]
    add hl, sp
    add h
    add b
    inc d
    cp $27
    inc l
    ld l, e
    daa
    cp $6B
    inc l
    ld b, $04
    db $10
    ld [$0406], sp

jr_028_5BE4:
    ld [$7110], sp
    ld [hl], d

jr_028_5BE8:
    dec sp
    inc a
    add h
    ld a, h
    db $10

jr_028_5BED:
    ld [hl], d
    ld [hl], c
    inc a
    dec sp
    ld c, c
    ld c, d
    ld c, a
    ld d, b
    ld c, e
    ld c, h
    ld d, c
    ld b, h
    ld c, l
    ld c, [hl]
    ld d, e
    ld d, h
    adc b
    add b
    inc b
    ld [hl], c
    ld [hl], d
    dec sp

jr_028_5C03:
    inc a
    add h
    ld a, h
    inc b
    ld [hl], d

jr_028_5C08:
    ld [hl], c
    inc a
    dec sp
    adc b
    add b
    inc b
    inc hl
    cp $25
    cp $82
    ld a, h
    ld bc, $845E
    ld a, h
    add hl, de
    ld e, [hl]
    add hl, sp
    ld a, [hl-]
    scf
    jr c, jr_028_5C5C

    ld a, $3F
    ld b, b
    ld a, [hl-]
    add hl, sp
    jr c, @+$39

    inc hl
    ld [hl+], a
    dec h
    inc h
    ld [hl+], a
    inc hl
    inc h
    dec h
    add hl, hl
    jr z, jr_028_5C5C

    ld a, [hl+]
    adc b
    add b
    inc c
    add hl, sp
    ld a, [hl-]
    scf
    jr c, jr_028_5C77

    ld a, $3F
    ld b, b
    ld a, [hl-]
    add hl, sp
    jr c, jr_028_5C78

    adc b
    add b
    dec b
    cp $23
    cp $25

jr_028_5C48:
    ld e, [hl]
    add h
    ld a, h
    ld de, $7C5E
    ld a, h

jr_028_5C4F:
    ld e, $1F
    jr nz, jr_028_5C74

    jr jr_028_5C6E

    ld a, [de]
    dec de
    add hl, de
    jr jr_028_5C75

    ld a, [de]
    daa

jr_028_5C5C:
    ld h, $82
    cp $02
    ld h, $27
    add d
    cp $04
    jr z, @+$2B

    ld a, [hl+]
    dec hl
    sbc b
    add b
    ld [$2829], sp

jr_028_5C6E:
    dec hl
    ld a, [hl+]
    ld l, e
    ld e, $1F
    ld [hl+], a

jr_028_5C74:
    add d

jr_028_5C75:
    ld a, h
    add h

jr_028_5C77:
    ld e, [hl]

jr_028_5C78:
    add d
    ld a, h
    ld b, $1F
    ld e, $21
    jr nz, jr_028_5C9C

    dec e
    add d
    cp $02
    dec e
    inc e
    add d
    cp $A4
    add b
    add hl, bc
    jr z, jr_028_5CB6

    ld a, [hl+]
    dec hl
    ld e, $6B
    ld [hl+], a
    rra
    ld a, h
    add d
    ld e, [hl]
    ld [bc], a
    ld a, h
    ld e, [hl]
    add d
    ld a, h
    dec b

jr_028_5C9C:
    ld e, [hl]
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    add d
    and $82

jr_028_5CA4:
    or $08
    ld [$ECEB], a
    db $ED
    ld a, [$FCFB]
    db $FD
    add d
    ld a, [c]
    add d
    push af
    inc b
    push hl
    db $E4
    db $E3

jr_028_5CB6:
    ld [c], a
    sub b
    nop
    add e
    jr z, @+$03

    ld [$2885], sp
    ld bc, $8608
    jr z, jr_028_5C48

    add hl, bc
    ld bc, $8708
    jr z, jr_028_5C4F

    dec c
    inc bc
    dec l
    dec c
    dec l
    add [hl]
    dec c
    add d
    ld b, b
    add h
    dec l
    sub b
    nop
    ld [bc], a
    jr z, jr_028_5D22

    add d
    jr z, jr_028_5CDE

    ld l, b

jr_028_5CDE:
    add e
    jr z, @-$79

    add hl, bc
    inc bc
    inc b
    inc c
    nop
    add d
    inc b
    add d
    jr z, jr_028_5CEF

jr_028_5CEB:
    inc h
    add hl, hl
    jr nz, @+$2E

jr_028_5CEF:
    add h
    add hl, hl
    dec bc
    dec c
    ld b, b
    dec c
    ld [$2D40], sp
    ld [$0D2D], sp
    ld b, b
    dec c
    add [hl]
    ld b, b
    inc bc
    dec l
    ld b, b
    dec l
    sbc b
    nop
    rlca
    add hl, bc
    ld bc, $0109
    nop
    jr z, jr_028_5D0D

jr_028_5D0D:
    add [hl]
    jr z, jr_028_5D19

    jr nz, jr_028_5D3A

    jr nz, jr_028_5D15

    add hl, bc

jr_028_5D15:
    ld bc, $0809
    nop

jr_028_5D19:
    add d
    jr z, jr_028_5D1D

    nop

jr_028_5D1D:
    add e
    jr z, jr_028_5CA4

    dec c
    add d

jr_028_5D22:
    ld b, b
    add d
    dec c
    add h
    dec l
    sbc b
    nop
    inc b
    add hl, bc
    ld bc, $2109
    add d
    nop
    ld bc, $8501
    nop
    add e
    jr nz, jr_028_5D3E

    ld hl, $0901

jr_028_5D3A:
    ld bc, $6909
    add hl, hl

jr_028_5D3E:
    add d
    ld l, c
    add h
    dec l
    add d
    dec c
    ld bc, $8508
    dec c
    add e
    dec l
    ld bc, $9C28
    nop
    ld [bc], a
    ld bc, $8221
    add hl, bc
    ld [bc], a
    ld bc, $8229
    add hl, bc
    add d
    ld hl, $0982
    add e
    add hl, hl
    dec b
    add hl, bc
    ld l, c
    add hl, hl
    ld l, c
    ld c, c
    add d
    dec l
    add d
    jr z, jr_028_5CEB

    ld [$2801], sp
    add e
    ld [$2802], sp
    ld [$2884], sp
    sbc b
    nop
    add h
    ld [$2884], sp
    inc b
    inc b
    nop
    inc b
    nop
    add d
    inc b
    add d
    nop
    inc b
    jr nz, jr_028_5DA9

    jr nz, jr_028_5DAB

    add d
    add hl, bc
    add d
    ld l, c
    add d
    dec c

jr_028_5D8D:
    add d
    ld [$0D84], sp
    add d
    adc l
    ld bc, $8485
    adc l
    ld bc, $9888
    nop
    ld [bc], a

jr_028_5D9C:
    ld [$8228], sp
    ld [$2884], sp
    add h
    inc b
    add h
    nop
    add h
    inc h

jr_028_5DA8:
    add h

jr_028_5DA9:
    add hl, bc
    add d

jr_028_5DAB:
    dec l
    add d
    jr z, @-$7C

    dec c
    add e
    ld [$0D01], sp
    add [hl]
    ld [$0098], sp
    add h
    ld [$2884], sp
    add d
    nop
    ld [bc], a
    inc b
    nop
    add d
    inc b
    add e
    nop
    dec b
    jr nz, jr_028_5DC8

jr_028_5DC8:
    inc h
    ld bc, $8241
    ld bc, $0384
    add e
    jr z, jr_028_5DD6

    dec c
    xor l
    xor l
    xor b

jr_028_5DD6:
    add h
    xor l
    ld bc, $98A5
    nop
    add d
    inc b
    add d
    ld l, $82
    add hl, hl
    add d
    ld l, c
    add d
    add hl, bc
    ld [bc], a
    ld l, c
    ld c, c
    add d
    inc b
    add d
    nop
    add e
    inc b

jr_028_5DEF:
    ld bc, $8444
    ld bc, $0384
    add d
    jr z, jr_028_5DF9

    dec l

jr_028_5DF9:
    add l
    jr z, jr_028_5DFD

    dec l

jr_028_5DFD:
    add e
    jr z, jr_028_5D9C

    nop
    ld [$2969], sp
    ld bc, $2869
    jr nz, jr_028_5E31

    jr nz, jr_028_5D8D

    inc b
    add d
    nop
    add d
    inc b
    add d
    nop
    add h
    ld bc, $4302
    inc bc
    add d
    ld b, e
    adc b
    inc bc
    add h
    inc hl
    sbc h
    nop
    add e

jr_028_5E20:
    dec l
    inc bc
    jr z, jr_028_5E2C

    jr z, jr_028_5DA8

jr_028_5E26:
    nop
    inc b
    dec c
    dec l
    dec c
    dec l

jr_028_5E2C:
    adc b
    adc d
    add h
    xor d
    adc b

jr_028_5E31:
    inc bc
    add h
    inc hl
    adc b
    nop
    adc b
    dec c
    add h
    dec l
    add h
    nop
    ld c, $28
    jr nz, jr_028_5E60

    ld c, b

jr_028_5E41:
    nop
    jr z, jr_028_5EAC

    nop
    ld l, c
    add hl, bc
    ld l, c
    ld c, c
    ld l, c
    add hl, bc
    add d
    ld c, c
    add d
    add d
    add d
    adc d
    add h
    jp nz, $A282

    add d
    xor d
    adc h
    ld bc, $0088
    add d
    dec b
    add d
    dec c
    add h

jr_028_5E60:
    ld b, l
    add d
    dec h
    add d
    dec l
    adc b
    nop

jr_028_5E67:
    inc b
    inc b
    jr z, @+$06

    jr z, jr_028_5DEF

    ld b, b
    ld bc, $844D
    ld b, b
    ld bc, $846D
    jp z, $8A84

    add h
    ld [$2E84], a
    add h
    ld c, $84
    ld l, $88
    nop
    add h
    ld c, l
    add h
    dec c
    add h
    ld l, l
    adc b
    nop
    dec b
    jr z, jr_028_5EB1

    jr z, jr_028_5EB3

    dec c
    add h
    ld b, b
    inc b
    dec l
    ld b, b
    ld b, b
    inc c
    add a
    ld c, $86
    ld l, $82
    jr z, jr_028_5E20

    ld c, $82
    jr z, jr_028_5E26

    ld c, $98
    nop
    add h
    inc l
    inc b
    jr z, jr_028_5EAA

jr_028_5EAA:
    inc b
    nop

jr_028_5EAC:
    add d
    ld b, b

jr_028_5EAE:
    inc b
    ld c, l
    ld l, l

jr_028_5EB1:
    dec c
    dec l

jr_028_5EB3:
    add d
    ld b, b
    ld [bc], a
    ld l, $2C
    add d
    ld l, $82
    ld c, $82
    jr z, jr_028_5E41

    ld l, $82
    jr z, jr_028_5E67

    nop
    add h
    inc c
    inc c
    nop
    jr z, jr_028_5EEA

    inc h
    ld b, b
    dec l
    ld c, l
    ld b, b
    dec c
    ld b, b
    ld h, b
    ld l, l
    add h
    nop
    inc b
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    adc b
    dec c
    inc b
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    add h
    ld a, [hl+]
    nop
    ld [hl-], a
    jp nz, $2701

    jr z, jr_028_5EAE

jr_028_5EEA:
    add hl, bc
    ret nz

    ld a, d
    nop
    inc bc
    ld b, e
    ld b, h
    ld b, l
    sub c
    nop
    inc bc
    ld b, e
    ld b, h
    ld b, l
    sub a
    nop
    inc c
    rlca
    ld [$0A09], sp
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    ld [$0A09], sp
    ld c, $87
    nop
    inc c
    rlca
    ld [$0A09], sp
    add hl, bc
    ld d, e
    ld d, h
    ld d, l
    ld a, [bc]
    add hl, bc
    ld [$8A0E], sp
    nop
    inc bc
    ld b, e
    ld b, h
    ld b, l
    add d
    nop
    ld de, $0C07
    dec c
    add hl, bc
    rla
    jr @+$1B

    ld a, [de]
    ld h, e
    ld h, h
    ld h, l
    add hl, de
    jr jr_028_5F46

    ld a, [de]
    ld e, $0E
    add l
    nop
    ld c, $07
    rla
    jr @+$1B

    ld a, [de]
    add hl, de
    ld h, e
    inc h
    ld h, l
    ld a, [de]
    add hl, de
    jr jr_028_5F5E

    rrca
    adc b
    nop
    ld a, [hl+]
    rlca
    ld d, e

jr_028_5F46:
    ld d, h
    ld d, l
    inc c
    dec c
    rla
    inc e
    dec e
    add hl, de
    daa
    jr z, jr_028_5F7A

    sub l
    ld [hl], e
    ld [hl], h
    ld [hl], l
    sub l
    dec l
    add hl, hl
    ld a, [hl+]
    ld l, $1E
    add hl, bc
    ld a, [bc]
    add hl, bc

jr_028_5F5E:
    ld a, [bc]
    inc c
    rla
    daa
    jr z, jr_028_5F8D

    ld a, [hl+]
    sub l
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, [hl+]
    sub l
    jr z, jr_028_5F9B

    rra
    add l
    nop
    ld c, $07
    inc c
    dec c
    rla
    ld h, e
    inc h
    ld h, l
    inc e
    dec e

jr_028_5F7A:
    daa
    inc l
    dec l
    add hl, hl
    scf
    add d
    ld bc, $9901
    add e
    ld bc, $9901
    add e
    ld bc, $3E0D
    ld l, $19

jr_028_5F8D:
    ld a, [de]
    add hl, de
    ld a, [de]
    inc e
    daa
    scf
    ld bc, $01CE
    sbc c
    add h
    ld bc, $9A04

jr_028_5F9B:
    ld bc, $2F84
    add h
    nop
    dec bc
    rlca
    rla
    inc e
    dec e
    daa
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc l
    dec l
    ret z

    add a
    ld bc, $7603
    ld h, a
    halt
    add l
    ld bc, $3E07
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    inc l
    scf
    add d
    ld bc, $DE0A
    rst $08
    ld bc, $6F6E
    ld bc, $8A8B
    ld bc, $843D
    nop
    rlca
    ld b, $17
    daa
    inc l
    dec l
    ret z

    adc $82
    ld bc, $CF03
    adc $DF
    sbc c
    ld bc, $DF09
    ld l, c
    ld a, [hl]
    ld a, a
    or [hl]
    sbc e
    sbc d
    ld c, h
    ld c, l
    add h
    nop
    inc bc
    ld d, $27
    scf
    add d
    ld bc, $DF06
    sbc $CD
    rst $08
    rst $18
    sbc $A0
    ld bc, $3D02
    ld e, h
    add l
    nop
    ld [bc], a
    ld h, $83
    add l
    ld bc, $DD02
    rst $18
    and c
    ld bc, $4C02
    ld c, l
    add [hl]
    nop
    ld [bc], a
    ld [hl], $3B
    adc d
    ld bc, $7803
    ld bc, $8389
    ld bc, $6701
    add l
    ld bc, $8901
    sub c
    ld bc, $0F01
    add a
    nop
    ld [bc], a
    ld h, $3B
    add h
    ld bc, $6701
    add l
    ld bc, $6705
    adc e
    sbc c
    adc h
    adc l
    add e
    ld bc, $7805
    ld bc, $6701
    sbc c
    sub c
    ld bc, $1F01
    add a
    nop
    ld [bc], a
    rlca
    dec sp
    adc c
    ld bc, $8811
    ld bc, $019B
    sbc h
    sbc l
    ld h, a
    adc b
    adc c
    adc d
    ld l, e
    add a
    adc h
    adc l
    ld bc, $6B76
    adc l
    ld bc, $3C02
    cpl
    add [hl]
    nop
    inc bc
    ld b, $17
    dec sp
    adc c
    ld bc, $9812
    adc h
    adc l
    adc b
    adc c
    adc d
    add a
    sbc b
    sbc c
    sbc d
    ld a, e
    sub a
    sbc h
    sbc l
    ld l, h
    ld l, l
    ld a, e
    ld h, a
    adc h
    ld bc, $3C02
    rrca
    add [hl]
    nop
    inc bc
    ld d, $27
    add $88
    ld bc, $6708
    ld l, d
    sbc h
    sbc l
    sbc b
    sbc c
    sbc d
    sub a
    add [hl]
    ld bc, $5D06
    ld a, h
    ld a, l
    halt
    ld bc, $8B67
    ld bc, $3C02
    rra
    add [hl]
    nop
    ld [bc], a
    ld h, $83
    adc b
    ld bc, $6C03
    ld l, l
    ld a, d
    add l
    ld bc, $7601
    add a
    ld bc, $7904
    ld h, a
    ld bc, $8C69
    ld bc, $3C02
    cpl
    add [hl]
    nop
    ld [bc], a
    ld [hl], $3B
    adc b
    ld bc, $7C02
    ld a, l
    add [hl]
    ld bc, $7801
    add a
    ld bc, $4904
    ld l, [hl]
    ld l, a
    halt
    adc h
    ld bc, $3D02
    ld c, l
    add [hl]
    nop
    ld [bc], a
    ld h, $3B
    add a
    ld bc, $5901
    adc d
    ld bc, $780A
    ld h, a
    halt
    ld a, b
    ld h, a
    ld a, b
    ld e, d
    ld a, [hl]
    ld a, a
    ld h, a
    adc e
    ld bc, $4C02
    ld c, l
    add a
    nop
    ld [bc], a
    ld b, $3B
    add [hl]
    ld bc, $6804
    ld h, a
    halt
    ld a, c
    add h
    ld bc, $7802
    or [hl]
    add d
    ld bc, $B602
    ld h, a
    add l
    ld bc, $5902
    ld l, d
    add e
    ld bc, $AF04
    ld bc, $B601
    add h
    ld bc, $3D01
    adc c
    nop
    ld [bc], a
    ld d, $3B
    add l
    ld bc, $5905
    ld bc, $6B01
    ld a, b
    add [hl]
    ld bc, $BB03
    ld bc, $8279
    ld bc, $5902
    ld e, d
    add d
    ld bc, $6702
    ld a, d
    add e
    ld bc, $BF03
    xor c
    cp e
    add h
    ld bc, $3C02
    ld c, l
    adc d
    nop
    ld bc, $863A
    ld bc, $6E03
    ld l, a
    ld a, e
    add l
    ld bc, $7804
    ld bc, $7601
    add e
    ld bc, $7901
    add e
    ld bc, $6903
    ld h, a
    xor e
    add e
    ld bc, $B902
    xor d
    add h
    ld bc, $3C02
    rrca
    adc d
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add l
    ld bc, $7E09
    ld a, a
    ld bc, $0176
    ld l, c
    ld l, e
    ld e, c
    ld l, b
    add a
    ld bc, $7804
    ld bc, $7801
    add e
    ld bc, $B606
    xor l
    ld bc, $AFBA
    xor e
    add d
    ld bc, $3C02
    rra
    adc e
    nop
    ld bc, $875B
    ld bc, $6807
    ld a, b
    ld bc, $7B78
    ld h, a
    ld l, c
    add a
    ld bc, $6704
    ld bc, $675D
    add h
    ld bc, $BD04
    ld bc, $BF01
    add e
    ld bc, $3C02
    cpl
    adc e
    nop
    ld [bc], a
    ld [hl], $4B
    add a
    ld bc, $6703
    ld bc, $8268
    ld bc, $870C
    ld e, c
    ld bc, $A976
    or [hl]
    ld bc, $5976
    or [hl]
    ld a, b
    xor b
    add [hl]
    ld bc, $CF01
    add h
    ld bc, $4C02
    ld c, l
    adc e
    nop
    inc bc
    ld [hl+], a
    ld e, e
    ld c, e
    add a
    ld bc, $590D
    ld h, a
    xor c
    ld bc, $0197
    halt
    xor a
    cp c
    ld e, c
    ld bc, $AC5A
    add d
    ld bc, $B808
    ld bc, $6901
    ld bc, $01BB
    rst $18
    add e
    ld bc, $3D02
    ld c, l
    adc h
    nop
    ld b, $10
    nop
    ld e, e
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    add [hl]
    ld bc, $B906
    ld bc, $AD01
    ld bc, $82BF
    ld bc, $7606
    ld bc, $88BC
    adc c
    adc d
    adc c
    ld bc, $4C02
    ld c, l
    sub b
    nop
    add d
    db $10
    inc bc
    ld c, d
    ld b, a
    ld a, [hl-]
    add a
    ld bc, $BD04
    ld bc, $BBA9
    add h
    ld bc, $9803
    sbc c
    sbc d
    adc b
    ld bc, $3D02
    ld c, l
    sub c
    nop
    add h
    db $10
    ld [bc], a
    ld c, d
    ld a, [hl-]
    adc b
    ld bc, $B901
    add e
    ld bc, $8703
    ld bc, $83BB
    ld bc, $CF01
    add l
    ld bc, $3C01
    sub h
    nop
    add h
    db $10
    ld [bc], a
    ld [hl], $3B
    adc c
    ld bc, $B603
    ld bc, $8597
    ld bc, $DF06
    ld bc, $CE01
    ld bc, $0201
    inc a
    ld c, $93
    nop
    add h
    db $10
    ld [bc], a
    ld h, $3B
    adc [hl]
    ld bc, $CF01
    add h
    ld bc, $6902
    sbc $82
    ld bc, $3C03
    ld e, $0E
    sub d
    nop
    add h
    db $10
    ld [bc], a
    rlca
    dec sp
    adc [hl]
    ld bc, $DF06
    ld bc, $CE01
    ld bc, $83CD
    ld bc, $C704
    ld l, $1E
    ld c, $91
    nop
    add e
    db $10
    inc bc
    rlca
    rla
    dec sp
    adc c
    ld bc, $6904
    ld bc, $6B01
    add h
    ld bc, $DE03
    ld bc, $84DD
    ld bc, $3E04
    ld l, $1E
    ld c, $90
    nop
    ld b, $07
    ld [$1709], sp
    daa
    add $87
    ld bc, $6A08
    ld bc, $6E01
    ld l, a
    ld a, e
    ld bc, $86BB
    ld bc, $CF01
    add e
    ld bc, $3E03
    ld l, $1E
    adc a
    nop
    ld b, $0A
    rla
    jr jr_028_62DF

    daa
    scf
    add e
    ld bc, $6A03
    ld bc, $8269
    ld bc, $7A06
    ld bc, $7E59
    ld a, a
    ld l, c
    add d
    ld bc, $5A01
    add l
    ld bc, $DF01

jr_028_62DF:
    add h
    ld bc, $3E03
    ld l, $0F
    adc l
    nop
    ld b, $07
    ld a, [de]
    daa
    jr z, @+$2B

    scf
    add d
    ld bc, $6808
    ld bc, $6C7A
    ld l, l
    ld bc, $5A59
    add l
    ld bc, $5901
    add l
    ld bc, $6801
    add a
    ld bc, $8402
    rra
    adc e
    nop
    dec b
    rlca
    add hl, bc
    rla
    ld a, [hl+]
    scf
    adc b
    ld bc, $7C03
    ld a, l
    ld l, e
    add d
    ld bc, $6803
    ld e, c
    rst $08
    sub b
    ld bc, $3C02
    cpl
    adc d
    nop
    dec b
    ld b, $17
    add hl, de
    daa
    add $85
    ld bc, $5A06
    ld bc, $6901
    ld bc, $0101
    ld a, e
    add h
    ld bc, $DF01
    sub b
    ld bc, $3C02
    ccf
    adc d
    nop
    inc b
    ld d, $27
    add hl, hl
    scf
    adc d
    ld bc, $5A01
    adc e
    ld bc, $4C03
    ld b, a
    ld a, [hl-]
    adc c
    ld bc, $3D01
    adc e
    nop
    ld [bc], a
    ld h, $83
    sub a
    ld bc, $3D05
    ld c, l
    nop
    ld c, d
    ld a, [hl-]
    add a
    ld bc, $4C02
    ld c, l
    adc e
    nop
    ld [bc], a
    ld [hl], $3B
    adc a
    ld bc, $3D09
    ld b, [hl]
    ld b, a
    ld d, a
    ld e, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, l
    add e
    nop
    ld [bc], a
    db $10
    ld a, [hl-]
    add l
    ld bc, $4C02
    ld e, h
    adc l
    nop
    ld bc, $8E4B
    ld bc, $4C02
    ld c, l
    add a
    ld [de], a
    add d
    db $10
    dec b
    nop
    db $10
    db $10
    ld c, d
    ld a, [hl-]
    add e
    ld bc, $4C02
    ld e, h
    adc [hl]
    nop
    ld [bc], a
    ld e, e
    ld c, e
    adc d
    ld bc, $3D04
    ld b, a
    ld c, b
    ld e, h
    add a
    ld [de], a
    dec b
    db $10
    ld [de], a
    ld [de], a

jr_028_63A7:
    nop
    ld [de], a
    add e
    db $10
    add d
    ld b, a
    ld [bc], a
    ld c, b
    ld e, h
    add d
    db $10
    adc a
    nop
    rlca
    ld d, [hl]
    ld d, a
    ld e, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, e
    add d
    ld bc, $4C03
    ld c, l
    ld e, h
    add e
    ld [de], a

jr_028_63C4:
    add e
    db $10
    adc h
    nop

jr_028_63C8:
    add [hl]
    db $10
    sub h
    nop
    ld b, $5B
    ld b, a
    ld c, b
    ld e, h
    db $10
    ld [de], a
    add e
    nop
    add e
    ld [de], a
    cp a
    nop
    ld bc, $C012
    db $DB
    nop
    nop
    jr z, jr_028_6421

    ld b, $89
    ld [$209A], sp
    add a
    ld [$C502], sp
    nop

jr_028_63EB:
    add h
    ld [$A287], sp
    inc bc
    and e
    jr nz, jr_028_6413

    adc a
    and d

jr_028_63F5:
    add e
    ld bc, $0885
    add e
    nop
    add d

jr_028_63FC:
    ld [$A286], sp

jr_028_63FF:
    ld b, $A1
    and d
    and d
    and h
    jr nz, jr_028_63A7

jr_028_6406:
    adc c
    and d
    ld b, $A1
    and d

jr_028_640B:
    and d
    and e
    and d
    and d
    add d
    ld bc, $0083

jr_028_6413:
    add e
    ld [$0083], sp
    ld [bc], a
    ld [$8401], sp
    and c
    add e

jr_028_641D:
    and b
    dec b
    jr nz, jr_028_63C4

jr_028_6421:
    and d
    and e
    and c
    add a
    and d
    add e
    and c
    add d
    jr nz, jr_028_642E

    and h
    and e
    and e

jr_028_642E:
    add d
    ld bc, $0083
    add [hl]

jr_028_6433:
    ld [$0182], sp
    add h
    and c
    add e
    ld bc, $2082

jr_028_643C:
    ld bc, $83A3
    and d
    add d
    and c
    add e
    jr nz, jr_028_63C8

jr_028_6445:
    and e
    add e
    jr nz, @+$07

    and h
    and l
    and l
    ld bc, $8308
    nop
    inc bc
    ld bc, $2008
    add e
    ld [$0182], sp

jr_028_6458:
    inc b
    and b
    jr nz, jr_028_63FC

    and c
    add e
    ld bc, $0882
    inc b
    jr nz, jr_028_6406

    and d
    and c
    add [hl]

jr_028_6467:
    jr nz, jr_028_63EB

    and e
    rlca
    and h
    jr nz, @-$5B

    and h
    ret z

    and l
    jr nz, jr_028_63F5

    ld [$0183], sp
    add d
    jr nz, jr_028_63FF

    and c
    inc bc
    jr nz, jr_028_641D

    and c
    add d
    ld bc, $0083

jr_028_6482:
    ld bc, $8408
    jr nz, jr_028_640B

    ld [$2082], sp
    add h
    and e
    add d
    and h
    add e
    jr nz, @-$7A

    ld bc, $2082
    add d
    and b
    add d
    and c
    add h
    jr nz, @+$05

    and b

jr_028_649C:
    ld bc, $8301
    nop
    ld b, $08
    jr nz, jr_028_6445

    ld bc, $C108
    add d
    nop
    ld [bc], a

jr_028_64AA:
    jp nz, $8208

    jr nz, jr_028_6433

    and e
    inc b
    and h
    jr nz, jr_028_6458

    and l
    add h
    and h
    add d

jr_028_64B8:
    jr nz, jr_028_643C

    and b
    add [hl]
    jr nz, @+$05

    and b
    ld bc, $8320
    nop

jr_028_64C3:
    inc bc
    jr nz, jr_028_6467

    and d
    add d
    ld bc, $0084
    add d
    ld bc, $2082
    add e
    and e
    add d
    and h

jr_028_64D3:
    add d
    and l
    add d
    and h
    add d
    and l
    add d
    jr nz, jr_028_64E0

    and b
    and a
    and [hl]

jr_028_64DF:
    and a

jr_028_64E0:
    add d
    jr nz, @+$04

jr_028_64E3:
    and e
    jr nz, @-$7C

    and b
    ld bc, $83A7
    jr nz, jr_028_64EF

    and c
    and d
    and d

jr_028_64EF:
    adc b
    ld bc, $A303
    jr nz, jr_028_6515

    add d
    and d
    ld bc, $85A3

jr_028_64FA:
    and h
    ld bc, $83A5

jr_028_64FE:
    jr nz, jr_028_6482

    and b
    add d

jr_028_6502:
    and a
    ld bc, $8420
    and d
    inc bc
    and c
    jr nz, @+$22

    add l
    and d
    adc b
    ld bc, $A382
    add e
    jr nz, @-$78

    and e

jr_028_6515:
    add l
    jr nz, jr_028_649C

    and a
    add h
    and c
    add d
    jr nz, @-$7B

    and c

jr_028_651F:
    adc d
    and d
    add h
    and e
    add e
    jr nz, jr_028_64AA

    and e
    add d
    and h
    add [hl]
    jr nz, @-$7C

jr_028_652C:
    and b
    add e
    and c
    add d
    jr nz, jr_028_64B8

    and c
    add [hl]

jr_028_6534:
    jr nz, jr_028_6537

    and d

jr_028_6537:
    add l

jr_028_6538:
    and e
    ld [bc], a
    and d

jr_028_653B:
    and e
    add d
    jr nz, jr_028_64C3

    and e
    ld bc, $85A4
    jr nz, @-$7A

    and c
    add e
    jr nz, @-$7A

    and c
    ld [bc], a
    and d
    and c
    add e
    jr nz, jr_028_64D3

    and d
    inc b
    and l
    jr nz, jr_028_6575

    and d
    add [hl]
    and e
    add d
    jr nz, jr_028_64DF

    and e
    add h
    jr nz, jr_028_64E3

    and c

jr_028_6560:
    ld [bc], a
    jr nz, @+$0A

    add d
    ld bc, $A183

jr_028_6567:
    ld bc, $83A0
    jr nz, jr_028_656D

    and c

jr_028_656D:
    add h
    and d
    ld [bc], a
    jr nz, jr_028_6515

    add e
    jr nz, jr_028_64FA

jr_028_6575:
    and e
    ld [bc], a
    and h
    jr nz, jr_028_64FE

    and e
    add e
    jr nz, jr_028_6502

    and c
    inc bc
    jr nz, @+$0A

    nop
    add d
    ld bc, $A183
    inc bc
    and b
    jr nz, jr_028_652C

    adc c

jr_028_658C:
    and d
    inc bc
    and e

jr_028_658F:
    jr nz, jr_028_65B1

    add h
    and e

jr_028_6593:
    inc bc
    and h
    jr nz, jr_028_65B7

    add h
    and e
    add d
    jr nz, jr_028_651F

jr_028_659C:
    and c
    ld [bc], a
    jr nz, @+$0A

    add d
    nop
    add d
    ld bc, $A183
    add d
    jr nz, jr_028_6534

    and d

jr_028_65AA:
    inc bc
    and h
    jr nz, jr_028_65CE

    add e
    and e
    add d

jr_028_65B1:
    and h
    add d
    jr nz, jr_028_6538

jr_028_65B5:
    and h
    add d

jr_028_65B7:
    jr nz, jr_028_653B

    and b
    ld bc, $8420
    nop
    add d
    ld bc, $A182
    add d
    jr nz, jr_028_65C6

jr_028_65C5:
    and c

jr_028_65C6:
    add [hl]
    and d
    ld b, $A1
    jr nz, @+$22

    and d
    and e

jr_028_65CE:
    and e
    inc bc
    and h

jr_028_65D1:
    jr nz, @+$22

    add e

jr_028_65D4:
    ld bc, $A403
    jr nz, @+$22

    add e
    and h
    add d

jr_028_65DC:
    jr nz, jr_028_6560

    and b
    add d
    jr nz, jr_028_6567

    ld bc, $A106
    jr nz, jr_028_6607

    and c
    and b
    and b
    inc bc
    jr nz, jr_028_658F

    and c
    add e
    jr nz, jr_028_65F4

    nop
    add $20

jr_028_65F4:
    add e
    and d
    inc bc
    and h

jr_028_65F8:
    ld [$8308], sp
    ld bc, $2082
    add e
    and h
    add d
    jr nz, @-$7C

    and b
    add d
    jr nz, jr_028_658C

jr_028_6607:
    ld bc, $2082
    inc bc
    and c
    and b
    and b

jr_028_660E:
    add d
    jr nz, jr_028_6593

    ld [$0182], sp
    inc b
    ld [$0001], sp
    jr nz, jr_028_659C

    and d
    dec b
    and e
    and h
    ld [$00CA], sp
    add d
    ld bc, $A402
    jr nz, jr_028_65AA

jr_028_6627:
    and h
    add d
    jr nz, @-$7C

    and b
    add d
    jr nz, @-$79

    and b
    add d
    jr nz, jr_028_65B5

    and b
    add d
    and a
    inc bc
    ld [$00C4], sp
    add d
    ld bc, $0803
    ld bc, $8308
    jr nz, jr_028_65C5

    and h
    inc bc

jr_028_6645:
    ld [$0000], sp
    add d

jr_028_6649:
    ld bc, $A402
    jr nz, jr_028_65D1

    and h
    add d

jr_028_6650:
    jr nz, jr_028_65D4

    and b
    ld [bc], a
    and a

jr_028_6655:
    jr nz, jr_028_65DC

    and b
    add h
    jr nz, @-$7C

    and b
    inc bc
    ld [$0000], sp
    add d
    ld bc, $0804
    and c
    ld [$8220], sp

jr_028_6668:
    and l
    add d
    and h
    inc bc
    ld [$0000], sp
    add d
    ld bc, $A402
    jr nz, jr_028_65F8

    and h
    add d
    jr nz, @-$7B

    and b
    ld b, $20
    and b
    and a
    and b
    and c
    and b
    add d
    jr nz, @-$7C

    and d
    inc bc
    and c
    and b
    jr nz, jr_028_660E

    ld bc, $A30A

jr_028_668D:
    and l
    ld [$A420], sp

jr_028_6691:
    and l
    and [hl]

jr_028_6693:
    and l
    ld [$8300], sp
    ld bc, $A402
    jr nz, @-$7B

    and h
    add d
    jr nz, @-$7B

    and b
    add d

jr_028_66A2:
    jr nz, jr_028_6627

    and b
    add d
    jr nz, jr_028_66AB

    and c
    and d
    and d

jr_028_66AB:
    add d
    and b
    ld bc, $8420

jr_028_66B0:
    ld bc, $A204
    ld hl, $2008
    add d
    and h
    inc bc
    jr nz, jr_028_66C3

    ld [$0184], sp
    ld [bc], a
    and l
    jr nz, jr_028_6645

    and h

jr_028_66C3:
    add d
    jr nz, jr_028_6649

    and b

jr_028_66C7:
    add d
    jr nz, @-$7B

    and b
    add d
    jr nz, jr_028_6650

    and b

jr_028_66CF:
    add l
    jr nz, jr_028_6655

    and b
    add e
    ld [$A582], sp
    add d
    and h
    add d

jr_028_66DA:
    jr nz, @-$7B

    ld bc, $A403
    jr nz, jr_028_6701

    add e
    and h
    add d
    jr nz, jr_028_6668

    and b
    add d
    jr nz, jr_028_66EB

    and c

jr_028_66EB:
    add e
    and b
    inc b
    and a
    jr nz, jr_028_6691

jr_028_66F1:
    and a
    add h
    and [hl]
    ld bc, $8320
    and b
    ld bc, $85A7
    and l
    add d
    jr nz, jr_028_6700

    and l

jr_028_6700:
    add e

jr_028_6701:
    and h
    inc bc
    and l
    jr nz, @+$22

    add e
    and h
    add d
    jr nz, jr_028_668D

jr_028_670B:
    and b
    add e
    jr nz, jr_028_6693

    and b
    add d
    jr nz, jr_028_6714

    and a

jr_028_6714:
    add h
    and [hl]
    add d
    jr nz, jr_028_671B

    and b

jr_028_671A:
    and a

jr_028_671B:
    add l
    and [hl]
    add d
    jr nz, jr_028_66A2

    and l
    add d
    and h

jr_028_6723:
    inc bc
    and l
    jr nz, jr_028_6747

    add d
    and l
    add d
    and h
    add d
    jr nz, jr_028_66B0

jr_028_672E:
    and b
    inc bc
    and a
    jr nz, jr_028_6753

    add h
    and b
    ld bc, $84A7
    jr nz, @-$7C

    and b
    inc b
    and a
    jr nz, jr_028_675F

    and a
    add h
    and [hl]
    add d
    jr nz, jr_028_66C7

    and l
    inc bc

jr_028_6747:
    rst $00
    and l
    and h
    add d
    jr nz, jr_028_66CF

    and l

jr_028_674E:
    add d
    and h
    add e
    jr nz, @-$7B

jr_028_6753:
    and b

jr_028_6754:
    add d
    jr nz, jr_028_66DA

jr_028_6757:
    and b
    add e
    and a
    add d

jr_028_675B:
    jr nz, jr_028_6760

    and c
    and b

jr_028_675F:
    and b

jr_028_6760:
    adc c
    jr nz, @-$78

    and l
    ld [bc], a
    jr nz, jr_028_670B

    add d
    and l
    add d
    and h
    add e
    jr nz, jr_028_66F1

    and b
    inc bc
    and a
    jr nz, jr_028_6793

    add [hl]
    and a
    add d

jr_028_6776:
    jr nz, jr_028_677A

    and b
    and a

jr_028_677A:
    add l
    and [hl]
    ld [bc], a
    jr nz, jr_028_6723

    add a
    ld bc, $2082
    ld bc, $83A4
    and l
    ld bc, $84A4
    jr nz, @-$7C

    and b
    add d
    and a
    add d

jr_028_6790:
    jr nz, jr_028_6793

    and b

jr_028_6793:
    add l
    and a
    add d
    jr nz, jr_028_671A

    and a
    add e
    and [hl]
    inc bc
    and a
    and [hl]
    and [hl]
    add l

jr_028_67A0:
    ld bc, $0803
    jr nz, @+$22

    add l
    and l
    add d
    and h
    add e
    jr nz, jr_028_672E

    and b
    add e
    and a
    ld [bc], a
    jr nz, @-$5E

    add [hl]
    and a
    inc bc
    jr nz, jr_028_6757

    and b
    add d
    and a
    ld b, $20
    and a
    and a
    and [hl]
    ld bc, $8301
    nop
    inc bc

jr_028_67C4:
    ld [$A420], sp
    add e

jr_028_67C8:
    and l
    add d
    jr nz, jr_028_674E

    and h
    add d
    jr nz, jr_028_6754

    and b
    add d
    and a

jr_028_67D3:
    add d
    jr nz, jr_028_675B

    and a
    inc bc
    and b
    jr nz, jr_028_67FB

    add h
    and a
    add e
    jr nz, @+$09

    ld [$0001], sp
    ret nz

    nop
    ld [$8320], sp
    and l
    add d
    jr nz, jr_028_67EF

    and l
    and h
    and h

jr_028_67EF:
    add d
    jr nz, jr_028_6776

    and b
    add e
    and a
    add d
    jr nz, jr_028_67FA

    and a
    and [hl]

jr_028_67FA:
    add h

jr_028_67FB:
    and a
    add d
    jr nz, @-$7C

    and a
    add h
    and [hl]
    add d
    ld bc, $0082
    ld [bc], a
    ld [$8320], sp
    and l
    add d
    jr nz, jr_028_6790

    and l
    add d
    and h
    ld [bc], a
    ld [$8620], sp
    ld bc, $A782
    add e
    jr nz, jr_028_67A0

    and a
    inc bc
    jr nz, jr_028_67C4

    and [hl]
    add d
    and l
    add d
    and [hl]
    ld bc, $8301
    ld [$2001], sp
    add h
    and l
    ld [bc], a
    jr nz, jr_028_67D3

    add d
    and l
    ld [bc], a
    and h
    and l
    add d
    ld [$0186], sp
    ld [bc], a
    and a
    ld bc, $0884
    add [hl]
    ld bc, $A682
    add a
    jr nz, jr_028_67C8

    and l
    add d
    jr nz, jr_028_684C

    and h
    and l
    and l
    and h

jr_028_684C:
    add e
    ld [$0084], sp
    add d
    ld bc, $A606
    ld bc, $0001
    ld b, c
    ld [$0187], sp
    ld bc, $87A7
    and [hl]
    add d
    and l
    add l
    and [hl]
    add d
    and l
    ld bc, $84A4
    ld [$0083], sp
    add d
    ld bc, $A603
    ld bc, $8201
    nop
    add d
    ld [$0083], sp
    add h
    ld bc, $A701
    add [hl]
    and [hl]
    inc bc
    and l
    jr nz, @-$57

    add e
    and [hl]
    inc b
    ret


    and [hl]
    and [hl]
    and l
    add h
    ld [$4003], sp
    ld [$8700], sp
    ld bc, $0883
    ld bc, $83C3
    nop
    add d
    ld bc, $A687
    add h
    jr nz, jr_028_689E

    and a

jr_028_689E:
    add h
    and [hl]
    sub a
    ld [$2090], sp
    add h
    ld [$3200], sp
    call nz, $B509
    ld [$0097], sp
    add h
    ld [$0086], sp
    sub b
    ld [$00A2], sp
    adc a
    ld [$00A6], sp
    sub c
    ld [$0095], sp
    add a
    ld [$0085], sp
    sub b
    ld [$0001], sp
    sub a
    ld [$C704], sp
    jp nz, $C6C2

    add e
    ld [$0083], sp
    add e
    ld [$4301], sp
    adc h
    ld [$008A], sp
    ld bc, $8BC7
    jp nz, $C605

    ld [$C3C9], sp
    pop bc
    add d
    jp nz, $C602

    ld [$0084], sp
    ld bc, $8308
    jp z, $0802

    ld b, h
    adc c
    ld [$008A], sp
    ld bc, $8CC5
    pop bc
    inc bc
    add $08
    push bc
    add e
    pop bc
    inc bc
    call nz, $0808
    add e
    nop
    add d
    ld [$0083], sp
    ld [bc], a
    jp z, $8D00

    ld [$0085], sp
    ld bc, $84C5
    pop bc
    add h
    jp $C184


    inc bc
    call nz, $C508
    add e
    pop bc
    inc bc
    call nz, $0800
    add d
    nop
    add e
    ld [$0084], sp
    ld [bc], a
    jp z, $8845

    ld [$0083], sp
    add [hl]
    ld [$C902], sp
    jp $C183


    inc b
    call nz, $0808
    push bc
    add h
    pop bc
    add e
    jp nz, $C182

    inc b
    call nz, $00C8
    ld [$0082], sp
    inc bc
    ld [$CA46], sp
    add l
    nop
    add [hl]
    ld [$4003], sp
    ld [$8808], sp
    nop
    add d
    ld [$C902], sp
    jp $C182


    inc b
    call nz, $0808
    push bc
    adc c
    pop bc
    ld b, $C4
    nop
    nop
    ld [$0000], sp
    add d
    ld [$0087], sp
    add h
    ld [$0082], sp
    ld bc, $8A08
    nop
    add d
    ld [$C903], sp
    jp $84C1


    jp nz, $C184

    add h
    jp $C105


    call nz, $4100
    ld [$0083], sp
    ld bc, $8708
    nop
    add h
    ld [$0082], sp
    ld bc, $8B08
    nop
    add d
    ld [$C902], sp
    jp $C188


    ld b, $C4
    ld [$C508], sp
    pop bc
    call nz, $0082
    ld bc, $8308
    nop
    ld bc, $8708
    nop
    add l
    ld [$0002], sp
    ld [$0084], sp
    add e
    ld [$0085], sp
    add d
    ld [$C501], sp
    adc b
    pop bc
    add hl, bc
    call nz, $0808
    push bc
    pop bc
    call nz, $00C6
    ld [$0082], sp
    add d
    ld [$0001], sp
    add [hl]
    jp nz, $0885

    ld [bc], a
    nop
    ld [$0083], sp
    inc bc
    ld [$4700], sp
    add e
    ld [$0084], sp
    inc bc
    ld [$C3C9], sp
    add d
    pop bc
    add e
    jp $C182


    add h
    jp nz, $C182

    inc bc
    call nz, $0800
    add d
    nop
    add e
    ld [$C501], sp
    add h
    pop bc
    ld bc, $84C4
    ld [$0082], sp
    ld bc, $8308
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0003], sp
    ld [$8308], sp
    nop
    add d
    ld [$C506], sp
    pop bc
    pop bc
    call nz, $C508
    add a
    pop bc
    ld [bc], a
    jp $82C8


    ld [$0082], sp
    add e
    ld [$C902], sp
    jp $C183


    ld bc, $84C4
    ld [$0082], sp
    inc b
    ld [$0000], sp
    ld [$0086], sp
    ld bc, $8408
    nop
    rlca
    ld [$C3C9], sp
    pop bc
    call nz, $C508
    add [hl]
    pop bc
    ld [bc], a
    jp $82C8


    ld [$0083], sp
    add h
    ld [$C501], sp
    add e
    pop bc
    ld bc, $84C4
    ld [$0003], sp
    ld [$8208], sp
    nop
    ld [bc], a
    ld [$8400], sp
    ld [$0003], sp
    ld [$8308], sp
    nop
    add d
    ld [$C902], sp
    jp $C283


    add h
    pop bc
    add d
    jp $C803


    ld [$8308], sp
    nop
    add l
    ld [$C501], sp
    add e
    pop bc
    ld bc, $84C4
    ld [$0003], sp
    ld [$8208], sp
    nop
    ld bc, $8408
    nop
    ld bc, $8708
    nop
    add d
    ld [$C901], sp
    add a
    jp $C801


    add e
    ld [$0084], sp
    add e
    ld [$C703], sp
    jp nz, $83C2

    pop bc
    ld bc, $84C4
    ld [$0082], sp
    inc bc
    ld [$0000], sp
    add e
    ld [$0001], sp
    add l
    ld [$0085], sp
    adc e
    ld [$0085], sp
    add d
    ld [$C703], sp
    jp nz, $85C2

    pop bc
    ld bc, $84C4
    ld [$0082], sp
    ld [$0008], sp
    nop
    ld [$0848], sp
    nop
    ld [$0098], sp
    add d
    ld [$C702], sp
    jp nz, $C187

    ld bc, $85C4
    ld [$0002], sp
    ld [$0082], sp
    inc bc
    ld [$0800], sp
    add e
    nop
    dec b
    ld [$0800], sp
    nop
    ld [$0090], sp
    add e
    ld [$C703], sp
    jp nz, $83C1

    jp $C184


    ld bc, $85C4
    ld [$0002], sp
    ld [$0082], sp
    ld [bc], a
    ld [$8300], sp
    ld [$0006], sp
    ld [$0800], sp
    nop
    ld [$008C], sp
    add l
    ld [$C703], sp
    jp nz, $82C2

    pop bc
    inc bc
    call nz, $C908
    add d
    jp $C182


    ld bc, $84C4
    ld [$0082], sp
    inc b
    ld [$0000], sp
    ld [$0085], sp
    add e
    ld [$0001], sp
    adc [hl]
    ld [$0083], sp
    ld [bc], a
    rst $00
    jp nz, $C184

    ld bc, $83C4
    ld [$C504], sp
    pop bc
    pop bc
    call nz, $0884
    add d
    nop
    dec b
    ld [$0000], sp
    ld [$8300], sp
    ld [$0006], sp
    ld [$0800], sp
    nop
    ld [$0090], sp
    ld bc, $85C5
    pop bc
    ld [bc], a
    jp nz, $82C6

    ld [$C504], sp
    pop bc
    pop bc
    call nz, $0884
    ld bc, $8300
    ld [$0004], sp
    ld [$4908], sp
    add l
    nop
    inc bc
    ld [$0800], sp
    sub b
    nop
    ld bc, $86C5
    pop bc
    add h
    jp nz, $C182

    ld bc, $84C4
    ld [$0083], sp
    inc bc
    ld [$0000], sp
    add d
    ld [$0001], sp
    add l
    ld [$0002], sp
    ld [$0090], sp
    ld bc, $8CC5
    pop bc
    ld bc, $84C4
    ld [$0083], sp
    ld bc, $8308
    nop
    add d
    ld [$4A01], sp
    add l
    nop
    ld bc, $9008
    nop
    ld bc, $83C5
    jp $C189


    ld bc, $84C4
    ld [$CA83], sp
    ld bc, $8408
    nop
    adc b
    ld [$0090], sp
    inc b
    push bc
    call nz, $C908
    add d
    jp $C187


    ld bc, $84C4
    ld [$CA83], sp
    ld bc, $8B08
    nop
    add a
    ld [$008A], sp
    ld [bc], a
    ret


    ret z

    add e
    ld [$C501], sp
    add a
    pop bc
    ld bc, $84C4
    ld [$CA83], sp
    add e
    ld [$008F], sp
    sub b
    ld [$C501], sp
    add a
    pop bc
    ld bc, $84C4
    ld [$0085], sp
    add e
    ld [$009A], sp
    add e
    ld [$C901], sp
    add a
    jp $C801


    add l
    ld [$0086], sp
    add d
    ld [$009A], sp
    add a
    ld [$0084], sp
    add [hl]
    ld [$0086], sp
    sub a
    ld [$008A], sp
    add h
    ld [$0001], sp
    add a
    ld [$008D], sp
    ld bc, $8BC7
    jp nz, $C601

    add h
    ld [$008B], sp
    ld [bc], a
    ld [$884B], sp
    ld [$008C], sp
    ld bc, $86C5
    pop bc
    add h
    jp $C102


    call nz, $088A
    add l
    nop
    add [hl]
    ld [$0083], sp
    add d
    ld [$0006], sp
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    add l
    nop
    ld bc, $86C5
    pop bc
    ld b, $C4
    ld [$C508], sp
    pop bc
    pop bc
    inc b
    add $08
    ld [$84C7], sp
    jp nz, $C601

    add e
    ld [$0084], sp
    add l
    ld [$C082], sp
    add e
    ld [$008B], sp
    ld bc, $86C5
    pop bc
    ld b, $C4
    ld [$C508], sp
    pop bc
    pop bc
    add h
    jp nz, $C182

    add d
    jp $C282


    inc bc
    add $08
    ld [$0083], sp
    add l
    ld [$0082], sp
    add d
    ld [$008C], sp
    ld bc, $86C5
    pop bc
    add h
    jp nz, $C188

    ld b, $C4
    ld [$C1C5], sp
    jp nz, $82C6

    ld [$0083], sp
    add a
    ld [$008D], sp
    ld bc, $84C5
    jp $C18E


    add e
    jp nz, $C182

    inc bc
    jp nz, $08C6

    add e
    nop
    add h
    ld [$0090], sp
    ld [bc], a
    ret


    ret z

    add d
    ld [$C501], sp
    sub e
    pop bc
    ld [bc], a
    call nz, $8200
    ld [$0082], sp
    add h
    ld [$0089], sp
    adc e
    ld [$C503], sp
    pop bc
    pop bc
    add e
    jp $C18E


    ld b, $C4
    nop
    nop
    ld [$0000], sp
    add h
    ld [$0088], sp
    add d
    ld [$0087], sp
    add e
    ld [$C906], sp
    jp $C4C3


    ld [$82C9], sp
    jp $C18C


    ld b, $C4
    nop
    nop
    ld [$0000], sp
    add h
    ld [$0088], sp
    ld bc, $8A08
    nop
    add e
    ld [$C902], sp
    ret z

    add e
    ld [$C501], sp
    adc h
    pop bc
    ld [bc], a
    call nz, $8200
    ld [$0082], sp
    add h
    ld [$0087], sp
    add d
    ld [$008C], sp
    add [hl]
    ld [$C901], sp
    adc h
    jp $C803


    ld [$8308], sp
    nop
    add h
    ld [$0085], sp
    add e
    ld [$0090], sp
    sub d
    ld [$0083], sp
    add l
    ld [$0084], sp
    add d
    ld [$0087], sp
    add e
    ld [$009D], sp
    add l
    ld [$0083], sp
    add l
    ld [$0083], sp
    adc b
    ld [$0099], sp
    add a
    ld [$0001], sp
    adc b
    ld [$0001], sp
    adc d
    ld [$0095], sp
    cp b
    ld [$4000], sp
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ret nz

    ld b, c
    inc h
    and c
    nop
    ld bc, $8C24
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    and c
    nop
    ld bc, $8C24
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9024
    nop
    ld bc, $8C24
    nop
    ld bc, $8424
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9024
    nop
    ld bc, $8624
    nop
    ld bc, $8A24
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add l
    nop
    ld bc, $9124
    nop
    add l
    inc h
    add l
    nop
    ld bc, $8624
    nop
    ld bc, $8A24
    nop
    ld bc, $8424
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9624
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8724
    nop
    ld bc, $8E24
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    ld bc, $8624
    nop
    adc d
    inc h
    add l
    nop
    add d
    inc h
    sub [hl]
    nop
    add e
    inc h
    add d
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    adc b
    inc h
    adc [hl]
    nop
    add d
    inc h
    sub b
    nop
    add e
    inc h
    add l
    nop
    inc b
    inc h
    nop
    nop
    inc h
    add l
    nop
    ld bc, $8C24
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    sbc b
    nop
    inc b
    inc h
    nop
    nop
    inc h
    add l
    nop
    ld bc, $8B24
    nop
    add d
    inc h
    adc a
    nop
    add d
    inc h
    adc b
    nop
    ld bc, $8F24
    nop
    inc b
    inc h
    nop
    nop
    inc h
    add l
    nop
    ld bc, $8B24
    nop
    ld bc, $9024
    nop
    add d
    inc h
    adc c
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8824
    nop
    inc b
    inc h
    nop
    nop
    inc h
    add l
    nop
    add a
    inc h
    add l
    nop
    ld bc, $9024
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8324
    nop
    add h
    inc h
    add [hl]
    nop
    inc b
    inc h
    nop
    nop
    inc h
    sub c
    nop
    ld bc, $9024
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8624
    nop
    inc b
    inc h
    nop
    nop
    inc h
    sub c
    nop
    ld bc, $9024
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add d
    nop
    ld bc, $9124
    nop
    ld bc, $9024
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add e
    nop
    add e
    inc h
    adc c
    nop
    add a
    inc h
    sub b
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    adc e
    inc h
    add l
    nop
    ld bc, $9024
    nop
    add d
    inc h
    add e
    nop
    ld [bc], a
    inc h
    nop
    add d
    inc h
    ld [bc], a
    nop
    inc h
    add a
    nop
    ld bc, $8424
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc [hl]
    nop
    ld bc, $9024
    nop
    add d
    inc h
    add d
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8724
    nop
    ld bc, $A024
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8624
    nop
    add d
    inc h
    and b
    nop
    add d
    inc h
    sub h
    nop
    ld bc, $8724
    nop
    ld bc, $A124
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add a
    nop
    ld bc, $A124
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    adc b
    nop
    ld bc, $8924
    nop
    sbc d
    inc h
    sub d
    nop
    ld bc, $8924
    nop
    ld bc, $8924
    nop
    ld bc, $9724
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $8924
    nop
    ld bc, $9724
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8A24
    nop
    ld bc, $8924
    nop
    ld bc, $9724
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $9724
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $9724
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8324
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $9724
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $9724
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8924
    nop
    ld bc, $8A24
    nop
    ld bc, $9724
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $8924
    nop
    ld bc, $8624
    nop
    add h
    ld a, $01
    inc h
    sub a
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8924
    nop
    add a
    inc h
    add h
    ld a, $01
    inc h
    sub a
    nop
    add d
    inc h
    sub d
    nop
    ld bc, $8F24
    nop
    add h
    ld a, $03
    inc h
    rst $30
    ld a, $95
    nop
    add d
    inc h
    sub d
    nop
    ld bc, $8F24
    nop
    add h
    ld a, $03
    inc h
    ld a, $3E
    sub l
    nop
    add d
    inc h
    adc a
    nop
    inc b
    inc h
    nop
    nop
    inc h
    adc [hl]
    nop
    sub [hl]
    inc h
    add a
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8424
    nop
    ld bc, $8824
    nop
    ld bc, $8E24
    nop
    ld bc, $9424
    nop
    add d
    inc h
    add [hl]
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $8824
    nop
    ld bc, $8E24
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add a
    nop
    add d
    inc h
    adc c
    nop
    add l
    inc h
    adc d
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add a
    nop
    ld bc, $8E24
    nop
    ld bc, $8A24
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    adc [hl]
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add d
    nop
    ld bc, $9424
    nop
    ld bc, $8924
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sub d
    nop
    ld bc, $8424
    nop
    ld bc, $8924
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sbc b
    nop
    ld bc, $8824
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8424
    nop
    ld bc, $8724
    nop
    ld bc, $8824
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add l
    nop
    ld bc, $9224
    nop
    ld bc, $8824
    nop
    ld bc, $9524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add [hl]
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8324
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add d
    nop
    ld bc, $9524
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sbc b
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8524
    nop
    ld bc, $8324
    nop
    inc b
    inc h
    nop
    nop
    inc h
    adc b
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    add [hl]
    nop
    ld bc, $8524
    nop
    ld bc, $8C24
    nop
    ld bc, $8724
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sub l
    nop
    add d
    inc h
    add d
    nop
    add d
    inc h
    add [hl]
    nop
    ld bc, $8C24
    nop
    ld bc, $8824
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sbc d
    nop
    ld bc, $8624
    nop
    ld bc, $8C24
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8E24
    nop
    add d
    inc h
    add h
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8D24
    nop
    ld bc, $8324
    nop
    ld bc, $8324
    nop
    add [hl]
    inc h
    adc l
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9D24
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    xor [hl]
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    adc c
    nop
    ld bc, $A424
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    sub h
    nop
    ld bc, $9924
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $A024
    nop
    ld bc, $8F24
    nop
    add d
    inc h
    xor [hl]
    nop
    ld bc, $8F24
    nop
    ret nz

    ld b, c
    inc h
    nop
    add h
    xor $3C
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld b, $07
    ld d, $17
    inc b
    dec b
    inc d
    dec d
    nop
    ld bc, $1514
    inc b
    dec b
    db $10
    ld de, $0700
    db $10
    rla
    ld b, $01
    ld d, $11
    ld b, $07
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld d, $17
    nop
    inc bc
    db $10
    inc de
    ld [bc], a
    dec b
    ld [de], a
    dec d
    nop
    rlca
    inc d
    inc de
    ld b, $01
    ld [de], a
    dec d
    inc b
    inc bc
    db $10
    rla
    ld [bc], a
    dec b
    ld d, $11
    add d
    xor $12
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc [hl]
    dec [hl]
    jr nc, @+$33

    ld h, $27
    ld sp, $2730
    ld h, $25
    inc h
    dec [hl]
    inc [hl]
    add d
    xor $1C
    inc hl
    ld [hl+], a
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    ld h, h
    ld h, l
    ld l, b
    ld l, c
    ld h, c
    ld h, b
    ld [hl], c
    ld [hl], b
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    inc c
    dec c
    add d
    dec de
    jr c, jr_028_7292

    ld a, [bc]
    dec de
    ld a, [de]
    ld c, $0F
    ld l, h
    ld l, l
    call z, $DCCD
    db $DD

jr_028_7292:
    ld [hl-], a
    inc sp
    jr z, jr_028_72BF

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld b, [hl]
    ld b, a
    scf
    ld [hl], $47
    ld b, [hl]
    dec hl
    ld a, [hl+]
    dec sp
    ld a, [hl-]
    inc sp
    ld [hl-], a
    add hl, hl
    jr z, jr_028_72EF

    ld b, l
    ld d, h
    ld d, l
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    ld h, [hl]
    ld h, a
    ld l, d
    ld l, e
    ld h, e
    ld h, d
    ld [hl], e
    ld [hl], d
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    add d

jr_028_72BF:
    ld a, [bc]
    add d
    ld a, [de]
    jr jr_028_72C7

    ld [bc], a
    inc de
    ld [de], a

jr_028_72C7:
    ld bc, $1100
    stop
    ld bc, $1110
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    jr c, jr_028_730E

    inc l
    dec l
    ld a, $3F
    ld l, $2F
    adc b
    xor $10
    ccf
    ld a, $2F
    ld l, $39
    jr c, jr_028_7312

    inc l
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    adc b

jr_028_72EF:
    xor $1C
    ld [$1809], sp
    add hl, de
    add hl, bc
    ld [$1819], sp
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld hl, $3120
    jr nc, jr_028_7322

    ld hl, $3130
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc a
    dec a
    jr nz, jr_028_732E

    add h

jr_028_730E:
    xor $08
    inc b
    inc bc

jr_028_7312:
    inc d
    inc de
    ld [bc], a
    dec b
    ld [de], a
    dec d
    add h
    xor $2C
    dec a
    inc a
    ld hl, $7520
    xor $1C

jr_028_7322:
    ld [hl], h
    ld [hl], l
    xor $1D
    halt
    xor $75
    halt
    dec e
    xor $75
    ld [hl], h

jr_028_732E:
    inc e
    ld a, [bc]
    dec bc
    ld a, [de]
    inc d
    dec bc
    ld a, [bc]
    inc d
    ld a, [de]
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    adc b
    xor $08
    call z, $DCCD
    db $DD
    ld e, $1F
    ld l, [hl]
    ld l, a
    adc b
    xor $28
    inc e
    ld [hl], a
    ld a, [hl]
    xor $7F
    dec e
    xor $77
    dec e
    ld a, a
    ld [hl], a
    xor $77
    inc e
    xor $7E
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld c, h
    ld c, e
    ld e, h
    ld e, e
    ld d, a
    ld d, [hl]
    ld e, e
    ld e, d
    ld d, l
    ld d, h
    ld e, c
    ld e, b
    ld d, h
    ld d, l
    ld e, b
    ld e, c
    ld d, [hl]
    ld d, a
    ld e, d
    ld e, e
    sbc b
    xor $03
    dec e
    xor $EE
    add d
    ld [hl], a
    inc hl
    xor $1C
    ld [hl], h
    xor $77
    ld [hl], h
    inc e
    xor $1D
    ld [hl], a
    xor $4D
    ld c, [hl]
    ld e, l
    ld e, [hl]
    ld c, [hl]
    ld c, l
    ld e, [hl]
    ld e, l
    rlca
    ld b, $17
    ld d, $05
    inc b
    dec d
    inc d
    inc b
    dec b
    inc d
    dec d
    ld b, $07
    ld d, $17
    sbc c
    xor $04
    ld [hl], l
    ld a, a
    inc e
    xor $82
    dec e
    ld hl, $1D7F
    xor $7F
    dec e
    ld [hl], l
    xor $1C
    ld a, a
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld h, $27
    ld [hl], $37
    jr z, jr_028_73EF

    jr c, jr_028_7401

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    inc l
    dec l
    inc a
    dec a
    ld l, $4C
    ld a, $4D
    sbc h
    xor $24
    ld e, h
    ld e, l
    ld h, d
    ld h, e
    ld e, [hl]
    ld e, a
    ld h, h
    ld h, l
    ld h, b
    ld h, c
    ld h, [hl]
    ld h, a
    ld b, h
    ld b, l
    ld e, $74
    ld b, [hl]
    ld b, a
    inc c
    dec c
    ld c, b
    ld c, c
    ld c, $0F

jr_028_73EF:
    ld c, d
    ccf
    halt
    dec de
    ld c, e
    cpl
    ld a, a
    inc e
    rra
    ld c, [hl]
    dec e
    ld c, a
    sbc h
    xor $06
    ld l, b
    ld l, c
    ld l, [hl]

jr_028_7401:
    ld l, a
    ld l, d
    ld l, e
    add d
    xor $1C
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld b, h
    ld b, l
    ld e, $77
    ld b, [hl]
    ld b, a
    inc c
    dec c
    ld c, b
    ld c, c
    ld c, $0F
    ld c, d
    ccf
    ld a, [hl]
    dec de
    ld c, e
    cpl
    ld [hl], h
    inc e
    rra
    ld c, [hl]
    dec e
    ld c, a
    sbc h
    xor $04
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add d
    xor $1E
    ld [$7609], sp
    ld [hl], a
    ld a, b
    ld a, c
    ld b, h
    ld b, l
    ld e, $7F
    ld b, [hl]
    ld b, a
    inc c
    dec c
    ld c, b
    ld c, c
    ld c, $0F
    ld c, d
    ccf
    halt
    dec de
    ld c, e
    cpl
    ld [hl], a
    inc e
    rra
    ld c, [hl]
    dec e
    ld c, a
    and b
    xor $04
    jr @+$1B

    inc d
    dec d
    add h
    xor $18
    ld c, h
    ld l, $4D
    ld a, $2D
    inc l
    dec a
    inc a
    dec hl
    ld a, [hl+]
    dec sp
    ld a, [hl-]
    add hl, hl
    jr z, jr_028_749D

    jr c, jr_028_748D

    ld h, $37
    ld [hl], $25
    inc h
    dec [hl]
    inc [hl]
    and h
    xor $1C
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld c, [hl]
    rra
    ld c, a
    dec e
    cpl
    ld c, e
    inc e
    ld [hl], l
    ccf
    ld c, d
    dec de
    ld [hl], a
    ld c, c
    ld c, b
    rrca
    ld c, $47
    ld b, [hl]
    dec c
    inc c
    ld b, l
    ld b, h
    halt
    ld e, $98

jr_028_748D:
    xor $34
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld e, d

jr_028_749D:
    ld e, b
    ld e, c
    ld c, [hl]
    rra
    ld c, a
    dec e
    cpl
    ld c, e
    inc e
    ld a, [hl]
    ccf
    ld c, d
    dec de
    halt
    ld c, c
    ld c, b
    rrca
    ld c, $47
    ld b, [hl]
    dec c
    inc c
    ld b, l
    ld b, h
    ld a, a
    ld e, $F4
    ld hl, sp-$05
    ld [$E4F5], a
    ld [$E0F6], a
    ldh a, [$F1]
    pop hl
    add d
    ld a, [c]
    ld c, $F3
    db $E3
    db $F4
    ld hl, sp-$05
    ld [$E4F5], a
    ld [$E0F6], a
    ldh a, [$F1]
    pop hl
    add d
    ld a, [c]
    ld [bc], a
    di
    db $E3
    add d
    ld d, [hl]
    add d
    ld d, a
    add h
    xor $18
    ld c, [hl]
    rra
    ld c, a
    dec e
    cpl
    ld c, e
    inc e
    ld [hl], a
    ccf
    ld c, d
    dec de
    ld a, a
    ld c, c
    ld c, b
    rrca
    ld c, $47
    ld b, [hl]
    dec c
    inc c
    ld b, l
    ld b, h
    halt
    ld e, $A8
    xor $10
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    db $EC
    db $ED
    db $FC
    db $FD
    xor $EF
    cp $FF
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    add d

jr_028_750C:
    ld c, a
    add d
    ld e, a
    add h
    xor $84
    ld [$0982], sp
    ld bc, $8608
    add hl, bc
    add d
    ld [$0982], sp
    add d
    ld [$0982], sp
    ld bc, $8708
    add hl, bc
    ld bc, $8408
    add hl, bc
    ld bc, $8A08
    add hl, bc
    add d
    ld [$0983], sp
    inc bc
    ld [$0909], sp
    add d
    ld [$0986], sp
    inc bc

jr_028_753A:
    ld [$0909], sp
    add d
    ld [$0C8A], sp
    adc b
    inc l
    add d
    ld [$2C82], sp
    add h
    inc c
    add h
    inc l
    add h
    dec bc
    add h
    dec hl
    add h
    dec bc
    adc b
    ld [$2882], sp
    ld [bc], a
    ld [$8428], sp
    ld [$0084], sp
    adc h
    inc c
    adc h
    inc l
    add h
    inc c
    add h
    inc l
    add h
    dec bc
    add h
    dec hl
    add h
    dec bc
    inc b
    ld [$0828], sp
    jr z, @-$76

    jr nz, @-$76

    nop
    adc b
    inc c
    adc b
    ld [$2C88], sp
    add h
    inc c
    add h
    inc l
    adc b
    ld [$0084], sp
    adc h
    jr nz, jr_028_750C

    nop
    add h
    inc c
    add h
    ld [$0982], sp
    inc bc
    ld [$0909], sp
    add d
    ld [$0901], sp
    add h
    ld [$2C84], sp
    dec bc
    ld l, $08
    ld [$0E2E], sp
    ld [$2E28], sp
    ld [$0E2E], sp
    add d
    ld [$0E82], sp
    ld bc, $8328
    nop
    add e
    jr nz, jr_028_75AF

    nop

jr_028_75AF:
    adc c
    jr nz, jr_028_753A

    nop
    adc b
    ld [$0084], sp
    adc h
    ld [$2805], sp
    dec l
    dec h
    ld [$8205], sp
    ld [$2D06], sp
    jr z, jr_028_75EA

    dec c
    ld [$820D], sp
    ld [$0501], sp
    add h
    dec c
    add h
    dec l
    adc b
    jr nz, @-$76

    nop
    sbc b
    ld [$2803], sp
    ld [$8208], sp
    dec l
    ld b, $08
    jr z, @+$30

    ld [$0E0D], sp
    add e
    ld [$0D02], sp
    ld [$0D84], sp

jr_028_75EA:
    add h
    dec l
    adc b
    jr nz, @-$76

    nop
    sbc b
    ld [$0F03], sp
    dec l
    dec b
    add h
    ld [$2509], sp
    jr z, jr_028_7604

    dec b
    jr z, @+$10

    ld [$2528], sp
    sbc b
    nop

jr_028_7604:
    sbc h
    ld [$008F], sp
    ld bc, $8A0E
    nop
    ld bc, $830E
    nop
    ld bc, $8505
    nop
    sbc h
    ld [$0086], sp
    add d
    ld [$0087], sp
    ld bc, $8A0D
    nop
    ld bc, $8305
    nop
    ld bc, $850E
    nop
    sbc h
    ld [$0084], sp
    add h
    ld [$0087], sp
    ld bc, $8A25
    nop
    ld bc, $832E
    nop
    ld bc, $850D
    nop
    and b
    ld [$0904], sp
    ld [$0908], sp
    add h
    ld [$2098], sp
    and h
    ld [$0184], sp
    add a
    jr nz, @+$03

    ld c, $83
    jr nz, jr_028_7653

    dec c

jr_028_7653:
    adc d
    jr nz, jr_028_7658

    ld c, $20

jr_028_7658:
    sbc b
    ld [$0B88], sp
    adc b
    ld a, [bc]
    add a
    jr nz, jr_028_7662

    dec b

jr_028_7662:
    add e
    jr nz, @+$03

    ld c, $8A
    jr nz, jr_028_766C

    dec h
    jr nz, jr_028_7677

jr_028_766C:
    add l
    dec hl
    dec bc
    dec bc
    dec hl
    dec bc
    dec hl
    dec bc
    dec hl
    dec bc
    dec hl

jr_028_7677:
    dec bc
    dec hl
    ld a, [bc]
    add l
    ld a, [hl+]
    ld c, $0A
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add h
    ld [$2087], sp
    ld bc, $830D
    jr nz, jr_028_7695

    dec h

jr_028_7695:
    adc d
    jr nz, jr_028_769A

    ld l, $20

jr_028_769A:
    xor b
    ld [$0982], sp
    ld [bc], a
    ld [$8409], sp
    rrca
    add h
    rlca
    add d
    add hl, bc
    ld b, $08
    add hl, bc
    dec bc
    dec hl
    dec bc
    dec hl
    add h
    ld [$2800], sp
    ld l, b
    ld bc, $141D
    or b
    inc b
    add d
    dec de
    ld d, $1C
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec h
    add hl, bc
    ld a, [bc]
    rlca
    ld [$2583], sp
    ld [bc], a
    rlca
    ld [$2582], sp
    add e
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    add e
    ld [bc], a
    ld c, $1B
    dec hl
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    dec de
    dec hl
    dec de
    add d
    inc e
    ld [$2C2B], sp
    dec hl
    inc l
    dec h
    add hl, de
    ld a, [de]
    rla
    add h
    jr jr_028_7708

    rla
    jr jr_028_7717

    dec h
    dec de
    inc e
    dec de
    inc e
    inc l
    ld [de], a
    dec de
    inc e

jr_028_7708:
    add d
    dec hl
    add d
    dec de
    add d
    inc e
    ld [bc], a
    dec hl
    inc l
    add d
    dec de
    inc b
    inc e
    dec hl
    inc l

jr_028_7717:
    dec hl
    add d
    inc l
    dec b
    dec hl
    inc l
    dec hl
    inc l
    dec h
    adc d
    ld a, [hl+]
    dec b
    dec h
    dec hl
    inc l
    dec hl
    inc l
    add d
    ld [de], a
    inc b
    dec hl
    inc l
    ld [de], a
    dec de
    add d
    dec hl
    ld b, $2C
    dec de
    dec de
    inc e
    dec hl
    dec hl
    rlca
    dec de
    inc e
    dec de
    inc e
    dec hl
    inc l
    dec de
    add e
    inc e
    ld bc, $8425
    daa
    ld bc, $85FE
    daa
    ld c, $25
    ld [de], a
    dec hl
    dec de
    inc e
    dec de
    inc e
    dec hl
    dec de
    inc e
    dec hl
    inc l
    dec de
    inc e
    add d
    dec hl
    add d
    inc l
    inc c
    inc e
    dec hl
    inc l
    dec hl
    inc l
    dec de
    inc e
    dec de
    inc e
    inc l
    inc e
    dec h
    add a
    ccf
    dec b
    ld h, c
    ld h, d
    ccf
    dec h
    dec de
    add e
    inc e
    add hl, bc
    dec hl
    inc l
    inc e
    dec hl
    inc l
    dec hl
    dec de
    dec hl
    inc l
    add d
    dec de
    ld a, [bc]
    ld [de], a
    dec hl
    inc l
    dec de
    inc e
    dec hl
    inc l
    dec hl
    dec de
    inc e
    add d
    dec de
    inc b
    inc e
    dec h
    inc a
    dec a
    add h
    ccf
    ld b, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec h
    dec hl
    add h
    inc l
    inc bc
    dec hl
    inc l
    inc e
    add e
    dec hl
    ld [bc], a
    dec de
    inc e
    add d
    dec hl
    dec b
    dec de
    inc e
    dec de
    dec hl
    inc l
    add h
    ld [de], a
    rlca
    inc l
    dec hl
    dec de
    inc e
    dec h
    ld c, h
    ld c, l
    add h
    ccf
    ld b, $80
    add c
    add d
    add e
    dec h
    dec hl
    add d
    inc l
    ld a, [bc]
    ld [de], a
    dec de
    dec hl
    dec de
    inc e
    ld [de], a
    dec de
    inc e
    dec hl
    inc l
    add d
    ld [de], a
    inc b
    dec hl
    inc l
    dec hl
    inc l
    add e
    ld [de], a
    ld [bc], a
    dec hl
    inc l
    add d
    ld [de], a
    inc b
    dec hl
    inc l
    dec h
    ld c, a
    add l
    ccf
    db $10
    sub b
    sub c
    sub d
    sub e
    dec h
    ld [de], a
    dec hl
    dec de
    inc e
    dec hl
    inc l
    dec hl
    dec de
    inc e
    dec hl
    inc l
    add d
    ld [de], a
    rra
    rlca
    ld [$0A09], sp
    dec h
    rlca
    ld [$0807], sp
    dec h
    rlca
    ld [$0807], sp
    ld [de], a
    dec h
    ld c, l
    ccf
    ld a, [hl-]
    dec sp
    inc a
    dec a
    and b
    and c
    and d
    and e
    dec h
    dec de
    inc e
    dec hl
    dec de
    add d
    inc e
    inc bc
    dec de
    inc e
    inc l
    add d
    ld [de], a
    ld b, $1B
    inc e
    ld a, [bc]
    jr jr_028_783D

    ld a, [de]
    add d
    rla
    add d
    jr jr_028_784B

    rla
    jr jr_028_7844

    jr jr_028_7846

    dec h
    ld [de], a
    dec h
    ccf
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ccf
    or b
    or c
    or d
    or e
    dec h

jr_028_783D:
    dec hl
    inc l
    inc e
    dec hl
    inc l
    inc e
    dec hl

jr_028_7844:
    dec de
    inc e

jr_028_7846:
    dec de
    inc e
    dec hl
    inc l
    ld a, [bc]

jr_028_784B:
    add d
    ld a, [hl+]
    ld bc, $8535
    ld a, [hl+]
    ld bc, $8335
    ld a, [hl+]
    ld [bc], a
    dec h
    ld [de], a
    add d
    dec h
    add d
    ccf
    add e
    dec h
    inc bc
    rlca
    ld [$8207], sp
    ld [$2B0B], sp
    inc l
    inc l
    ld [de], a
    dec hl
    inc l
    dec de
    dec hl
    inc l
    dec hl
    inc l
    add d
    ld [de], a
    ld bc, $8C25
    daa
    ld b, $25
    ld [de], a
    ld [de], a
    dec h
    ccf
    ccf
    ld de, $1225
    dec de
    inc e
    ld [de], a
    inc e
    ld [de], a
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    dec hl
    dec de
    inc e
    add d
    ld [de], a
    inc bc
    dec de
    inc e
    dec h
    adc h
    ccf
    ld b, $25
    ld [de], a
    ld [de], a
    dec h
    ccf
    ccf
    add hl, de
    dec h
    ld [de], a
    dec hl
    inc l
    ld [de], a
    inc l
    ld [de], a
    dec de
    inc e
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    inc e
    ld [de], a
    dec hl
    inc l
    dec h
    ccf
    ld a, [hl-]
    dec sp
    add d
    ld a, $02
    inc a
    dec a
    add h
    ccf
    add hl, bc
    ld a, [hl-]
    add hl, bc
    ld a, [bc]
    rlca
    ld [$1413], sp
    rlca
    ld [$1285], sp
    inc b
    inc e
    inc l
    dec hl
    inc l
    add d
    ld [de], a
    add hl, bc
    dec de
    inc e
    ld [de], a
    dec hl
    ld [$0A09], sp
    rlca
    ld [$3F82], sp
    ld [bc], a
    ld c, d
    ld c, e
    add d
    ld a, $01
    ld c, a
    add h
    ccf
    ld [de], a
    ld c, [hl]
    add hl, de
    ld a, [de]
    rla
    jr jr_028_7911

    inc h
    jr jr_028_7916

    dec de
    inc e
    ld [de], a
    dec de
    inc e
    inc l
    dec de
    inc e
    dec hl
    add d
    ld [de], a
    ld [bc], a
    dec hl
    dec de
    add d
    inc e
    ld a, [bc]
    jr jr_028_791D

    ld a, [de]
    rla
    jr jr_028_7947

    inc c
    dec bc
    ccf
    ld c, [hl]
    add d
    ld a, $02
    inc a
    dec a

jr_028_7911:
    add d
    ccf
    ld [bc], a
    ld c, d
    dec [hl]

jr_028_7916:
    add e
    ld a, [hl+]
    inc c
    dec d
    ld d, $2A
    dec h

jr_028_791D:
    dec hl
    inc l
    ld [de], a
    dec hl
    inc l
    ld [de], a
    dec hl
    inc l
    add h
    ld [de], a
    inc bc
    dec hl
    inc l
    inc l
    add h
    ld a, [hl+]
    dec b
    dec [hl]
    ccf
    ccf
    ld a, [hl-]
    dec sp
    add d
    ld a, $06
    ld l, [hl]
    ld e, a
    ld a, $3C
    dec a
    ccf
    add l
    daa
    inc bc
    ld h, $27
    dec h
    add [hl]
    ld [de], a
    add hl, bc
    dec hl
    inc l

jr_028_7947:
    ld [de], a
    inc l
    dec de
    inc e
    dec de
    inc e
    inc l
    add l
    daa
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    ld a, $02
    ld l, [hl]
    ld e, l
    add d
    ld a, $01
    ld c, a
    add [hl]
    ccf
    ld bc, $830B
    ccf
    ld a, [bc]
    dec h
    dec hl
    inc l
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    add d
    dec hl
    ld [bc], a
    inc l
    dec de
    add d
    inc e
    inc b
    inc a
    dec a
    ld a, [hl-]
    dec sp
    add e
    ld a, $02
    ld e, [hl]
    ld l, a
    add d
    ld a, $02
    ld c, h
    ld c, l
    adc c
    ccf
    inc bc
    dec h
    ccf
    dec h
    add d
    ld [de], a
    dec bc
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    add d
    inc l
    add h
    ld a, $06
    ld e, [hl]
    ld l, a
    ld e, a
    ld a, $4C
    ld c, l
    add e
    ccf
    inc c
    ret nz

    pop bc
    jp nz, $C4C3

    push bc
    add $C7
    ccf
    dec [hl]
    dec bc
    dec h
    add [hl]
    ld [de], a
    ld [bc], a
    dec hl
    inc l
    add h
    ld [de], a
    ld c, $1B
    inc e
    inc l
    ld [$0807], sp
    add hl, bc
    ld a, [bc]
    ld a, $25
    ld c, a
    ld a, [hl-]
    dec sp
    ld c, a
    add d
    ccf
    rrca
    ret nc

    pop de
    jp nc, $D4D3

    push de
    sub $D7
    ccf
    daa
    ccf
    dec h
    dec de
    inc e
    dec de
    add d
    inc e
    ld b, $1B
    inc e
    dec de
    inc e
    dec de
    inc e
    add d
    dec de
    ld [bc], a
    inc e
    dec de
    add h
    ld [bc], a
    dec b
    dec h
    ld c, h
    dec [hl]
    ld c, h
    ld c, l
    add h
    ccf
    ld [$E1E0], sp
    ld [c], a
    db $E3
    db $E4
    push hl
    and $E7
    add e
    ccf
    ld [$2B25], sp
    inc l
    dec hl
    inc l
    dec de
    inc e
    inc l
    add d
    inc e
    ld [bc], a
    dec hl
    inc l
    add d
    dec hl
    add hl, bc
    inc l
    dec de
    ld [de], a
    dec de
    inc e
    ld [de], a
    dec h
    add hl, hl
    daa
    add d
    ccf
    inc de
    dec h
    ccf
    inc c
    dec bc
    ldh a, [$F1]
    ld a, [c]
    di
    db $F4
    push af
    or $F7
    ccf
    ld a, [hl-]
    dec sp
    dec h
    dec de
    inc e
    ld [de], a
    add d
    dec de
    ld [bc], a
    inc e
    dec hl
    add d
    inc l
    add d
    dec hl
    dec bc
    dec de
    inc e
    dec de
    inc e
    ld [de], a
    dec hl
    inc l
    ld [de], a
    dec h
    add hl, hl
    dec bc
    add d
    ccf
    ld bc, $8A35
    ccf
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    ld a, $04
    dec h
    dec hl
    inc l
    dec de
    add d
    dec hl
    add d
    dec de
    ld [$2C1C], sp
    dec de
    inc e
    dec hl
    dec de
    dec hl
    inc l
    add d
    ld [de], a
    inc b
    dec de
    inc e
    dec h
    add hl, hl
    add e
    ccf
    ld bc, $8327
    ccf
    rlca
    ld a, [hl-]
    dec sp
    ld c, h
    ld c, l
    ccf
    ld a, [hl-]
    dec sp
    add e
    ld a, $02
    ld e, [hl]
    dec h
    add d
    dec de
    inc bc
    dec hl
    inc l
    inc l
    add d
    dec hl
    ld b, $2C
    dec hl
    dec hl
    dec de
    dec hl
    dec hl
    dec de
    dec de
    inc e
    dec de
    inc e
    dec hl
    inc l
    rlca
    ld [$0725], sp
    ld [$0807], sp
    rlca
    ld [$0A09], sp
    rlca
    ld [$0807], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    rlca
    ld [$2B83], sp
    ld [bc], a
    inc l
    dec de
    add d
    dec hl
    ld b, $1B
    inc e
    dec de
    dec hl
    inc l
    dec de
    add d
    inc e
    ld [bc], a
    dec hl
    inc l
    add d
    ld [de], a
    add h
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    add l
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    adc b
    ld [bc], a
    ld bc, $831B
    inc e
    rlca
    dec hl
    inc l
    inc e
    dec hl
    inc l
    inc de
    inc d
    add d
    ccf
    add d
    inc l
    add [hl]
    ld [de], a
    inc b
    dec de
    inc e
    dec hl
    inc l
    add e
    ld [de], a
    inc b
    dec de
    inc e
    dec hl
    inc l
    add d
    ld [de], a
    ld [bc], a
    dec de
    inc e
    add h
    ld [de], a
    dec b
    dec hl
    inc l
    inc l
    dec de
    dec hl
    add d
    inc l
    inc b
    dec de
    inc e
    inc hl
    inc h
    add d
    ccf
    ld [bc], a
    inc l
    dec hl
    add [hl]
    ld [de], a
    ld [bc], a
    dec hl
    inc l
    add l
    ld [de], a
    ld [bc], a
    dec hl
    inc l
    add h
    ld [de], a
    ld [bc], a
    dec hl
    inc l
    add h
    ld [de], a
    inc bc
    dec hl
    inc l
    dec de
    add d
    inc e
    ld b, $2C
    dec de
    dec hl
    inc l
    dec d
    ld d, $82
    ccf
    ld bc, $832C
    dec de
    ld [bc], a
    inc e
    dec de
    add d
    inc e
    add d
    dec de
    inc bc
    inc e
    dec de
    dec de
    add e
    inc e
    inc b
    dec de
    inc e
    dec de
    inc e
    add e
    dec de
    add e
    inc e
    inc b
    dec de
    inc e
    dec de
    dec hl
    add d
    inc l
    dec b
    inc e
    dec hl
    inc l
    inc e
    dec hl
    add d
    inc l
    inc bc
    dec de
    inc e
    dec hl
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
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $AC24
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $AC24
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $8F24
    nop
    add e
    adc e
    sbc d
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $8F24
    nop
    add e
    adc e
    sbc d
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $8624
    nop
    ld bc, $8F24
    nop
    add e
    adc e
    adc a
    nop
    add a
    adc e
    add h
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8F24
    nop
    add e
    adc e
    adc a
    nop
    add a
    adc e
    add h
    nop
    add d
    inc h
    adc l
    nop
    ld bc, $A524
    nop
    add a
    adc e
    add h
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $A524
    nop
    add a
    adc e
    add h
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    add e
    adc e
    and [hl]
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    add e
    adc e
    and [hl]
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    add e
    adc e
    and [hl]
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    add e
    adc e
    and [hl]
    nop
    add d
    inc h
    add e
    nop
    or [hl]
    inc h
    add l
    nop
    add d
    inc h
    sbc a
    nop
    ld bc, $8E24
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sbc a
    nop
    ld bc, $8E24
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    ld bc, $8B24
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    ld bc, $8B24
    nop
    ld bc, $8724
    nop
    ld bc, $8624
    nop
    ld bc, $8924
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    ld bc, $8A24
    nop
    add d
    adc e
    add a
    nop
    ld bc, $9024
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sbc [hl]
    nop
    add d
    adc e
    add a
    nop
    ld bc, $9024
    nop
    ld bc, $8524
    nop
    adc h
    inc h
    adc h
    nop
    add [hl]
    inc h
    add d
    nop
    add d
    adc e
    add a
    nop
    ld bc, $9024
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sub [hl]
    nop
    ld bc, $8424
    nop
    adc l
    inc h
    sub b
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sub [hl]
    nop
    ld bc, $8824
    nop
    ld bc, $8824
    nop
    adc l
    inc h
    add e
    nop
    add e
    inc h
    add e
    nop
    add d
    inc h
    sub [hl]
    nop
    ld bc, $8824
    nop
    ld bc, $8824
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc a
    nop
    add e
    adc e
    add h
    nop
    ld bc, $9124
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc a
    nop
    add e
    adc e
    add h
    nop
    ld bc, $9124
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc a
    nop
    add e
    adc e
    sub [hl]
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    xor b
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    xor b
    nop
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    and e
    nop
    add l
    adc e
    ld bc, $8B24
    nop
    ld bc, $8324
    nop
    adc b
    inc h
    adc h
    nop
    adc c
    inc h
    adc [hl]
    nop
    add l
    adc e
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc h
    nop
    adc c
    inc h
    adc [hl]
    nop
    add l
    adc e
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc b
    nop
    sbc e
    inc h
    add h
    adc e
    ld [bc], a
    rst $30
    inc h
    adc e
    nop
    ld bc, $8924
    nop
    add d
    inc h
    and e
    nop
    add l
    adc e
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    and e
    nop
    add l
    adc e
    ld bc, $8B24
    nop
    ld bc, $8924
    nop
    add d
    inc h
    xor b
    nop
    ld bc, $8B24
    nop
    add h
    inc h
    add [hl]
    nop
    add d
    inc h
    xor b
    nop
    ld bc, $8E24
    nop
    add e
    inc h
    add h
    nop
    add d
    inc h
    xor b
    nop
    ld bc, $9024
    nop
    ld bc, $8424
    nop
    add d
    inc h
    and c
    nop
    adc b
    inc h
    sub b
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc e
    nop
    add a
    inc h
    add [hl]
    nop
    ld bc, $9024
    nop
    ld bc, $8424
    nop
    sbc b
    inc h
    add l
    nop
    ld bc, $8C24
    nop
    ld bc, $9024
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8524
    nop
    ld bc, $8C24
    nop
    ld bc, $9024
    nop
    add e
    inc h
    add d
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8524
    nop
    ld bc, $8C24
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8524
    nop
    ld bc, $8B24
    nop
    add d
    inc h
    add e
    nop
    adc b
    inc h
    add l
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8324
    nop
    add e
    inc h
    adc d
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8C24
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sub l
    nop
    ld bc, $8324
    nop
    ld bc, $8B24
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8C24
    nop
    ld bc, $8424
    nop
    add d
    inc h
    add h
    nop
    adc l
    inc h
    add h
    nop
    ld bc, $8324
    nop
    ld bc, $8B24
    nop
    ld bc, $8624
    nop
    ld bc, $8C24
    nop
    ld bc, $8424
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9024
    nop
    ld bc, $8324
    nop
    ld bc, $8B24
    nop
    ld bc, $8624
    nop
    ld bc, $8C24
    nop
    inc bc
    inc h
    nop
    nop
    add h
    inc h
    add h
    nop
    ld bc, $9024
    nop
    ld bc, $8324
    nop
    ld bc, $9224
    nop
    ld bc, $8C24
    nop
    ld bc, $8424
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9024
    nop
    ld bc, $8324
    nop
    ld bc, $8524
    nop
    ld bc, $8C24
    nop
    inc bc
    inc h
    nop
    nop
    adc e
    inc h
    add h
    nop
    add d
    inc h
    add h
    nop
    ld bc, $8424
    nop
    adc l
    inc h
    add e
    nop
    ld bc, $8524
    nop
    ld bc, $8C24
    nop
    inc b
    inc h
    nop
    nop
    inc h
    adc [hl]
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9424
    nop
    ld bc, $8524
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    ld bc, $8624
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9424
    nop
    ld bc, $8524
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    ld bc, $8624
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9424
    nop
    ld bc, $8524
    nop
    ld bc, $8524
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add h
    nop
    ld bc, $9424
    nop
    ld bc, $8524
    nop
    ld bc, $8624
    nop
    add d
    inc h
    sub c
    nop
    ld bc, $8424
    nop
    add d
    inc h
    add h
    nop
    sub [hl]
    inc h
    add l
    nop
    ld bc, $8724
    nop
    ld bc, $8724
    nop
    ld bc, $8324
    nop
    add a
    inc h
    add h
    nop
    add d
    inc h
    sbc c
    nop
    ld bc, $8524
    nop
    ld bc, $8824
    nop
    add d
    inc h
    add l
    nop
    ld bc, $8924
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc c
    nop
    ld bc, $8524
    nop
    ld bc, $8924
    nop
    add a
    inc h
    adc c
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc c
    nop
    ld bc, $8424
    nop
    add d
    inc h
    adc a
    nop
    ld bc, $8924
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc [hl]
    nop
    ld bc, $9024
    nop
    ld bc, $8924
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc [hl]
    nop
    ld bc, $9024
    nop
    ld bc, $8924
    nop
    ld bc, $8424
    nop
    add d
    inc h
    sbc [hl]
    nop
    add d
    inc h
    sbc c
    nop
    ld [bc], a
    inc h
    nop
    add d
    adc e
    inc bc
    nop
    inc h
    inc h
    sbc a
    nop
    ld bc, $9924
    nop
    ld [bc], a
    inc h
    nop
    add d
    adc e
    ld bc, $C000
    ld b, c
    inc h
    nop
    inc c
    ld a, b
    nop
    sub d
    ld [$0001], sp
    adc d
    ld [$C083], sp
    adc b
    ld [$0084], sp
    add l
    ld [$0088], sp
    add h
    ld [$0088], sp
    add h
    ld [$008A], sp
    add d
    ld [$008A], sp
    add d
    ld [$0088], sp
    adc a
    ld [$FF00], sp
