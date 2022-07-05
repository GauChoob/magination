; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    ld [hl+], a
    ld [$1248], sp
    cp e
    ld b, b
    ld [hl+], a
    ld [$1248], sp
    ld [hl], d
    ld b, e
    ld [hl+], a
    ld [$1248], sp
    sub a
    ld c, d
    ld [hl+], a
    ld [$1248], sp
    rra
    ld b, a
    ld [hl+], a
    ld [$1248], sp
    sbc $4F
    or [hl]
    inc sp
    and b
    ld bc, $0601
    dec b
    ld c, b
    ld c, $76
    ld c, l
    or [hl]
    inc sp
    and b
    ld [bc], a
    ld bc, $1205
    ld c, b
    ld c, $76
    ld c, l
    ld b, [hl]
    rrca

jr_012_4036:
    nop
    inc sp
    and b
    inc b
    dec b
    nop
    ld [de], a
    ld b, [hl]
    ld b, b
    ld bc, $0B10
    ld c, b
    ld c, $76
    ld c, l
    or [hl]
    inc sp
    and b
    inc b
    ld c, b
    ld c, $77
    ld d, c
    ld bc, $0B10
    ld c, b
    ld c, $76
    ld c, l
    ld b, [hl]
    nop
    inc sp
    and b
    ld [$6812], sp
    ld b, b
    or [hl]
    inc sp
    and b
    ld [$1101], sp
    dec d
    ld c, b
    ld c, $76
    ld c, l
    ld bc, $1511
    ld c, b
    ld c, $76
    ld c, l
    ld b, [hl]
    rrca
    nop
    ld c, d
    and b
    db $10
    ld b, $FF
    rst $38
    ld [de], a
    sub l
    ld b, b
    or [hl]
    inc sp
    and b
    jr nz, jr_012_4036

    inc sp
    and b
    ld [$4AB6], sp
    and b
    db $10
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    ld [de], a
    ld l, a
    ld b, b
    ld c, b
    ld c, $C2
    ld c, [hl]
    or [hl]
    inc sp
    and b
    jr nz, @-$48

    inc sp
    and b
    ld [$1101], sp
    dec d
    ld c, b
    ld c, $76
    ld c, l
    ld b, [hl]
    nop
    inc sp
    and b
    db $10
    ld [de], a
    or h
    ld b, b
    or [hl]
    inc sp
    and b
    db $10
    ld c, b
    ld c, $57
    ld c, [hl]
    ld bc, $0116
    ld c, b
    ld c, $76
    ld c, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_012_40C7:
    nop
    ld l, c
    ld e, b
    ld a, b

jr_012_40CB:
    inc d
    ld l, b
    xor h
    ld c, [hl]

jr_012_40CF:
    inc de
    ld h, a
    ld a, $40
    dec b
    nop
    inc [hl]
    ld h, e
    ld b, $1C
    jp c, $00D3

    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    ld a, [de]
    rlca
    rrca
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ld e, [hl]
    ld b, c
    dec b
    inc bc
    or d
    ld l, [hl]
    rlca
    dec de
    cp b
    db $D3
    ld d, h
    add hl, de
    add hl, hl
    ld c, b
    add hl, de
    dec a
    ld c, b
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_012_4148

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_012_4124

    jr nc, jr_012_414D

    ld b, b
    add l
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

jr_012_4124:
    or l
    jr z, jr_012_40C7

    cp $B5
    jr z, jr_012_40CB

    db $FD
    or l
    jr z, jr_012_40CF

    ei
    sbc e
    ld [de], a
    dec [hl]
    ld b, c
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    or [hl]
    dec hl
    and b
    inc b
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_012_419A

jr_012_4148:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d

jr_012_414D:
    ld [hl], h
    rst $38
    jr nz, jr_012_4196

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld [de], a
    adc $41
    ld [de], a
    ld [hl+], a
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
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
    ld hl, sp+$4A
    add hl, bc
    nop
    ld [de], a
    adc [hl]
    ld b, c
    ld c, [hl]
    ld bc, $C9D8
    ld [de], a
    nop
    nop
    sbc [hl]
    ld b, c
    ld [de], a
    ld bc, $AA00
    ld b, c
    ld [de], a
    ld [bc], a
    nop
    or [hl]
    ld b, c
    ld [de], a
    inc bc
    nop
    jp nz, $FF41

    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_012_4194

jr_012_4194:
    ld c, b
    ld [de], a

jr_012_4196:
    adc $41
    inc c
    nop

jr_012_419A:
    ld c, b
    ld [de], a
    adc $41
    dec d
    ld de, $74CF
    jr nz, jr_012_41A4

jr_012_41A4:
    inc c
    nop
    ld c, b
    ld [de], a
    adc $41
    dec d
    ld de, $7498
    jr nz, jr_012_41B0

jr_012_41B0:
    inc c
    nop
    ld c, b
    ld [de], a
    adc $41
    dec d
    ld de, $74A2
    jr nz, jr_012_41BC

jr_012_41BC:
    inc c
    nop
    ld c, b
    ld [de], a
    adc $41
    dec d
    ld de, $748E
    jr nz, jr_012_41C8

jr_012_41C8:
    inc c
    nop
    ld c, b
    ld [de], a
    adc $41
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
    jr nz, jr_012_4258

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $12
    di
    ld b, c
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1248
    cp a
    ld b, b
    ld [hl+], a
    ld [bc], a
    inc c
    nop
    or e
    ld sp, $01C7
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_426B

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_012_4274

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    ld d, d
    ld b, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_429B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_42A5

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_4293

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
    inc sp
    and b
    ld bc, $0005
    ld [de], a
    adc [hl]
    ld b, d
    and c
    xor l
    ld l, [hl]
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld e, $40
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_42CB

    ld l, a

jr_012_4258:
    ld l, a
    ld l, e
    jr nz, jr_012_42D5

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_42D9

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_429C

    dec [hl]

jr_012_426B:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_012_4274:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc sp
    and b
    ld bc, $0005
    ld [de], a
    adc [hl]
    ld b, d
    and c
    xor l
    ld l, [hl]
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld e, $40
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_4293:
    ld bc, $A16E
    ld [de], a
    dec c
    ld b, e
    sbc a
    ld l, [hl]

jr_012_429B:
    and c

jr_012_429C:
    ld b, [hl]
    rrca
    ld bc, $A16E
    dec b
    ld bc, $D312

jr_012_42A5:
    ld b, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_430F

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
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4328

    ld [hl], e
    cp $FC
    jr nz, jr_012_4325

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_42CB:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    ld e, $40
    and [hl]
    ld d, h

jr_012_42D5:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_42D9:
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
    jr nz, jr_012_4339

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_4367

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
    ld [de], a
    ld e, $40
    sbc a
    ld l, [hl]

jr_012_430F:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_437C

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_012_4325:
    ld h, l
    jr nz, jr_012_439B

jr_012_4328:
    ld h, l
    ld [hl], h
    jr nz, jr_012_438D

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_012_438A

    ld h, e
    ld l, a

jr_012_4339:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_43B2

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
    jr nz, jr_012_43A3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_43CD

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_43BD

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

jr_012_4367:
    xor l
    ld l, [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    ld e, $40
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_012_437C:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    cp e
    ld c, [hl]
    inc de
    ld l, l
    ld a, b
    ld a, e

jr_012_438A:
    ld l, $C5
    ld d, a

jr_012_438D:
    cpl
    ld h, a
    ld b, e
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    dec de
    inc l
    db $D3
    nop
    inc d

jr_012_439B:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_012_43A3:
    ld h, a
    dec bc
    add hl, de
    ld sp, hl
    jp nc, $1950

    rst $20
    ld b, [hl]
    ld [de], a
    or [hl]
    ld b, h
    dec b
    inc bc
    add a

jr_012_43B2:
    ld h, a
    rrca
    db $10
    rst $28
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    or [hl]

jr_012_43BD:
    ld b, h
    dec b
    inc b
    add a
    ld h, a
    inc de
    db $10
    di
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    or [hl]
    ld b, h

jr_012_43CD:
    dec b
    ld c, $B2
    ld l, [hl]
    inc bc
    add hl, de
    pop af
    jp nc, $1954

    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    inc bc
    inc b
    ld a, e
    ret nc

    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    dec b
    db $10
    or d
    ld l, [hl]
    inc b
    inc b
    ld a, h
    ret nc

    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    ld de, $6EB2
    ld a, [de]
    ld [$D10A], sp
    ld d, h
    add hl, de
    cp c
    ld c, [hl]
    add hl, de
    pop de
    ld c, [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_012_4451

    nop
    add l
    nop
    ld l, [hl]
    jr nc, @+$1B

    jr nc, jr_012_4456

    ld b, b
    add l
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
    ld c, $0B
    rrca
    dec bc
    db $10
    dec bc
    ld de, $9886
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld [de], a
    inc a
    ld b, h
    ld b, l

Jump_012_443C:
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_012_445B

    ld d, e
    ld b, h
    inc bc
    ld c, $00
    nop
    nop
    nop

jr_012_4451:
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl

jr_012_4456:
    and b
    ld b, b
    ld [de], a
    ld h, e
    ld b, h

jr_012_445B:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    ld [hl], e
    ld b, h
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $8312
    ld b, h
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_012_44F2

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_012_44EE

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld [de], a
    ld h, $45
    ld [de], a
    dec l
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
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
    ld hl, sp+$4A
    add hl, bc
    nop
    ld [de], a
    and $44
    ld c, [hl]
    ld bc, $C9D8
    ld [de], a
    nop
    nop
    or $44
    ld [de], a
    ld bc, $0200
    ld b, l
    ld [de], a
    ld [bc], a
    nop
    ld c, $45
    ld [de], a
    inc bc
    nop
    ld a, [de]
    ld b, l
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_012_44EC

jr_012_44EC:
    ld c, b
    ld [de], a

jr_012_44EE:
    ld h, $45
    inc c
    nop

jr_012_44F2:
    ld c, b
    ld [de], a
    ld h, $45
    dec d
    ld de, $74CF
    jr nz, jr_012_44FC

jr_012_44FC:
    inc c
    nop
    ld c, b
    ld [de], a
    ld h, $45
    dec d
    ld de, $7498
    jr nz, jr_012_4508

jr_012_4508:
    inc c
    nop
    ld c, b
    ld [de], a
    ld h, $45
    dec d
    ld de, $74A2
    jr nz, jr_012_4514

jr_012_4514:
    inc c
    nop
    ld c, b
    ld [de], a
    ld h, $45
    dec d
    ld de, $748E
    jr nz, jr_012_4520

jr_012_4520:
    inc c
    nop
    ld c, b
    ld [de], a
    ld h, $45
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
    jr nz, jr_012_45B0

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $12
    ld c, e
    ld b, l
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1248
    halt
    ld b, e
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_012_456F

    ld h, a
    ld b, l
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld [de], a
    ld [hl], a
    ld b, l

jr_012_456F:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    add a
    ld b, l
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    inc l
    and b
    ld bc, $9712
    ld b, l
    inc bc
    ld de, $0000
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    inc c
    ld de, $2BB6
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_012_45B0:
    jr nz, jr_012_4618

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_012_4621

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    rst $38
    ld b, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_4648

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4652

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_4640

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
    inc sp
    and b
    ld [bc], a
    dec b
    nop
    ld [de], a
    dec sp
    ld b, [hl]
    and c
    xor l
    ld l, a
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    add hl, hl
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_4678

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4682

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4686

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_4649

    dec [hl]

jr_012_4618:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_012_4621:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc sp
    and b
    ld [bc], a
    dec b
    nop
    ld [de], a
    dec sp
    ld b, [hl]
    and c
    xor l
    ld l, a
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    add hl, hl
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_4640:
    ld bc, $A16F
    ld [de], a
    cp d
    ld b, [hl]
    sbc a
    ld l, a

jr_012_4648:
    and c

jr_012_4649:
    ld b, [hl]
    rrca
    ld bc, $A16F
    dec b
    ld bc, $8012

jr_012_4652:
    ld b, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_46BC

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
    jr nz, jr_012_46B9

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_46D5

    ld [hl], e
    cp $FC
    jr nz, jr_012_46D2

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_4678:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    add hl, hl
    ld b, b
    and [hl]
    ld d, h

jr_012_4682:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_4686:
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
    jr nz, jr_012_46E6

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_4714

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
    ld [de], a
    add hl, hl

jr_012_46B9:
    ld b, b
    sbc a
    ld l, a

jr_012_46BC:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_4729

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_012_46D2:
    ld h, l
    jr nz, jr_012_4748

jr_012_46D5:
    ld h, l
    ld [hl], h
    jr nz, jr_012_473A

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_012_4737

    ld h, e
    ld l, a

jr_012_46E6:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_475F

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
    jr nz, jr_012_4750

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_477A

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_476A

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

jr_012_4714:
    xor l
    ld l, a

jr_012_4716:
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    add hl, hl
    ld b, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_012_4729:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    jp z, $134E

    ld l, l
    ld a, b
    ld a, e

jr_012_4737:
    ld l, $C5
    ld d, a

jr_012_473A:
    cpl
    ld h, a
    ld c, b
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld b, $02
    jr c, jr_012_4716

    nop
    inc d

jr_012_4748:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_012_4750:
    ld h, a
    rlca
    inc c
    inc sp
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ld b, b
    ld c, b
    dec b
    inc bc
    add a

jr_012_475F:
    ld h, a
    dec bc
    ld de, $D1B4
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ld b, b

jr_012_476A:
    ld c, b
    dec b
    inc b
    add a
    ld h, a
    rrca
    inc c
    dec sp
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ld b, b
    ld c, b

jr_012_477A:
    dec b
    ld c, $B2
    ld l, [hl]
    inc bc
    dec d
    db $10
    jp nc, $1954

    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    dec d
    dec d
    ld [hl+], a
    jp nc, $1954

    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    db $10
    or d
    ld l, [hl]
    add hl, bc
    ld b, $9F
    ret nc

    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_012_47EF

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_012_47CB

    jr nc, jr_012_47F4

    ld b, b
    add l
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
    ld c, $0B
    rrca
    dec bc
    db $10
    add [hl]
    sbc b

jr_012_47CB:
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld [de], a
    ret c

    ld b, a
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_012_47F7

    rst $28
    ld b, a
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_012_47EF:
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b

jr_012_47F4:
    ld [de], a
    rst $38
    ld b, a

jr_012_47F7:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    rrca
    ld c, b
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_012_487C

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_012_4878

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld [de], a
    or b
    ld c, b
    ld [de], a
    ld c, [hl]
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
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
    ld hl, sp+$4A
    add hl, bc
    nop
    ld [de], a
    ld [hl], b
    ld c, b
    ld c, [hl]
    ld bc, $C9D8
    ld [de], a
    nop
    nop
    add b
    ld c, b
    ld [de], a
    ld bc, $8C00
    ld c, b
    ld [de], a
    ld [bc], a
    nop
    sbc b
    ld c, b
    ld [de], a
    inc bc
    nop
    and h
    ld c, b
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_012_4876

jr_012_4876:
    ld c, b
    ld [de], a

jr_012_4878:
    or b
    ld c, b
    inc c
    nop

jr_012_487C:
    ld c, b
    ld [de], a
    or b
    ld c, b
    dec d
    ld de, $74CF
    jr nz, jr_012_4886

jr_012_4886:
    inc c
    nop
    ld c, b
    ld [de], a
    or b
    ld c, b
    dec d
    ld de, $7498

Jump_012_4890:
    jr nz, jr_012_4892

jr_012_4892:
    inc c
    nop
    ld c, b
    ld [de], a
    or b
    ld c, b
    dec d
    ld de, $74A2
    jr nz, jr_012_489E

jr_012_489E:
    inc c
    nop
    ld c, b
    ld [de], a
    or b
    ld c, b
    dec d
    ld de, $748E
    jr nz, jr_012_48AA

jr_012_48AA:
    inc c
    nop
    ld c, b
    ld [de], a
    or b
    ld c, b
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
    jr nz, jr_012_493A

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $12
    push de
    ld c, b
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1248
    inc hl
    ld b, a
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, @+$14

    pop af
    ld c, b
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld [de], a
    ld bc, $0349
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD

Jump_012_4901:
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    ld de, $0349
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_4990

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_012_4999

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE

jr_012_493A:
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    ld [hl], a
    ld c, c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_49C0

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_49CA

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_49B8

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
    inc sp
    and b
    inc b
    dec b
    nop
    ld [de], a
    or e
    ld c, c
    and c
    xor l
    ld [hl], b
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    inc [hl]
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_49F0

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_49FA

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_49FE

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_49C1

    dec [hl]

jr_012_4990:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_012_4999:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc sp
    and b
    inc b
    dec b
    nop
    ld [de], a
    or e
    ld c, c
    and c
    xor l
    ld [hl], b
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    inc [hl]
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_49B8:
    ld bc, $A170
    ld [de], a
    ld [hl-], a
    ld c, d
    sbc a
    ld [hl], b

jr_012_49C0:
    and c

jr_012_49C1:
    ld b, [hl]
    rrca
    ld bc, $A170
    dec b
    ld bc, $F812

jr_012_49CA:
    ld c, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_4A34

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
    jr nz, jr_012_4A31

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4A4D

    ld [hl], e
    cp $FC
    jr nz, jr_012_4A4A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_49F0:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    inc [hl]
    ld b, b
    and [hl]
    ld d, h

jr_012_49FA:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_49FE:
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
    jr nz, jr_012_4A5E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_4A8C

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
    ld [de], a
    inc [hl]

jr_012_4A31:
    ld b, b
    sbc a
    ld [hl], b

jr_012_4A34:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_4AA1

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_012_4A4A:
    ld h, l
    jr nz, jr_012_4AC0

jr_012_4A4D:
    ld h, l
    ld [hl], h
    jr nz, jr_012_4AB2

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_012_4AAF

    ld h, e
    ld l, a

jr_012_4A5E:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_4AD7

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
    jr nz, jr_012_4AC8

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4AF2

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_4AE2

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

jr_012_4A8C:
    xor l
    ld [hl], b
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    inc [hl]
    ld b, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_012_4AA1:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    reti


    ld c, [hl]
    inc de
    ld l, l
    ld a, b
    ld a, e

jr_012_4AAF:
    ld l, $C5
    ld d, a

jr_012_4AB2:
    cpl
    ld h, a
    ld c, l
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    inc b
    add hl, de
    ld a, [c]
    jp nc, $1400

jr_012_4AC0:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_012_4AC8:
    ld h, a
    inc b
    inc b
    ld a, h
    ret nc

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ret


    ld c, e
    dec b
    inc bc
    add a

jr_012_4AD7:
    ld h, a
    ld de, $0108
    pop de
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ret


jr_012_4AE2:
    ld c, e
    dec b
    inc b
    add a
    ld h, a
    dec d
    ld [$D105], sp
    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ret


    ld c, e

jr_012_4AF2:
    dec b
    dec b
    add a
    ld h, a
    dec d
    ld b, $C9
    ret nc

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    ret


    ld c, e
    dec b
    ld c, $B2
    ld l, [hl]
    inc c
    inc bc
    ld h, [hl]
    ret nc

    ld d, h
    add hl, de
    ld a, e
    ld c, d
    add hl, de
    sub e
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    ld a, [de]
    inc bc
    ld [hl], h
    ret nc

    ld d, h
    add hl, de
    push hl
    ld c, e
    add hl, de
    db $FD
    ld c, e
    dec b
    db $10
    or d
    ld l, [hl]
    dec d
    db $10
    push af
    pop de
    ld d, h
    add hl, de
    ld c, a
    ld c, l
    add hl, de
    ld h, a
    ld c, l
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_012_4B76

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_012_4B52

    jr nc, jr_012_4B7B

    ld b, b
    add l
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
    ld c, $0B
    rrca
    dec bc
    db $10

jr_012_4B52:
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
    sbc e
    ld [de], a
    ld h, c
    ld c, e
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_012_4B80

    ld a, b
    ld c, e
    inc bc
    ld c, $00
    nop
    nop
    nop

jr_012_4B76:
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl

jr_012_4B7B:
    and b
    ld b, b
    ld [de], a
    adc b
    ld c, e

jr_012_4B80:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    sbc b
    ld c, e
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_012_4C05

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_012_4C01

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld [de], a
    add hl, sp
    ld c, h
    ld [de], a
    ld l, b
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
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
    ld hl, sp+$4A
    add hl, bc
    nop
    ld [de], a
    ld sp, hl
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    ld [de], a
    nop
    nop
    add hl, bc
    ld c, h
    ld [de], a
    ld bc, $1500
    ld c, h
    ld [de], a
    ld [bc], a
    nop
    ld hl, $124C
    inc bc
    nop
    dec l
    ld c, h
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    ld c, b
    nop
    ld c, b

Call_012_4C00:
    ld [de], a

jr_012_4C01:
    add hl, sp
    ld c, h
    inc c
    nop

jr_012_4C05:
    ld c, b
    ld [de], a
    add hl, sp
    ld c, h
    dec d
    ld de, $74CF
    ld c, b
    nop
    inc c
    nop
    ld c, b
    ld [de], a
    add hl, sp
    ld c, h
    dec d
    ld de, $7498
    jr nz, jr_012_4C1B

jr_012_4C1B:
    inc c
    nop
    ld c, b
    ld [de], a
    add hl, sp
    ld c, h
    dec d
    ld de, $74A2
    jr nz, jr_012_4C27

jr_012_4C27:
    inc c
    nop
    ld c, b
    ld [de], a
    add hl, sp
    ld c, h
    dec d
    ld de, $748E
    jr nz, jr_012_4C33

jr_012_4C33:
    inc c
    nop
    ld c, b
    ld [de], a
    add hl, sp
    ld c, h
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
    jr nz, jr_012_4CC3

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $12
    ld e, [hl]
    ld c, h
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1248
    sbc e
    ld c, d
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, jr_012_4C82

    ld a, d
    ld c, h
    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld [de], a
    adc d
    ld c, h

jr_012_4C82:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    sbc d
    ld c, h
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_4D19

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_012_4D22

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE

jr_012_4CC3:
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    nop
    ld c, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_4D49

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4D53

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_4D41

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
    inc sp
    and b
    ld [$0005], sp
    ld [de], a
    inc a
    ld c, l
    and c
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld d, l
    ld b, b
    and [hl]
    ld c, c

Call_012_4D02:
    ld [hl], h
    jr nz, jr_012_4D79

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4D83

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4D87

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_4D4A

    dec [hl]

jr_012_4D19:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_012_4D22:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc sp
    and b
    ld [$0005], sp
    ld [de], a
    inc a
    ld c, l
    and c
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld d, l
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_4D41:
    ld bc, $A171
    ld [de], a
    cp e
    ld c, l
    sbc a
    ld [hl], c

jr_012_4D49:
    and c

jr_012_4D4A:
    ld b, [hl]
    rrca
    ld bc, $A171
    dec b
    ld bc, $8112

jr_012_4D53:
    ld c, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_4DBD

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
    jr nz, jr_012_4DBA

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4DD6

    ld [hl], e
    cp $FC
    jr nz, jr_012_4DD3

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_4D79:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    ld d, l
    ld b, b
    and [hl]
    ld d, h

jr_012_4D83:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_4D87:
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
    jr nz, jr_012_4DE7

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_4E15

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
    ld [de], a
    ld d, l

jr_012_4DBA:
    ld b, b
    sbc a
    ld [hl], c

jr_012_4DBD:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_4E2A

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_4E39

    ld h, c
    halt

jr_012_4DD3:
    ld h, l
    jr nz, jr_012_4E49

jr_012_4DD6:
    ld h, l
    ld [hl], h
    jr nz, jr_012_4E3B

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_012_4E28

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_012_4E38

    ld h, e
    ld l, a

jr_012_4DE7:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_4E60

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
    jr nz, jr_012_4E51

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4E7B

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_4E6B

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

jr_012_4E15:
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    ld d, l
    ld b, b
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop

jr_012_4E28:
    ld b, [hl]
    nop

jr_012_4E2A:
    dec hl
    and b
    jr nz, jr_012_4E40

    jr c, jr_012_4E7E

    inc bc
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD

jr_012_4E38:
    ld b, [hl]

jr_012_4E39:
    nop
    dec hl

jr_012_4E3B:
    and b
    ld b, b
    ld [de], a
    ld c, b
    ld c, [hl]

jr_012_4E40:
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]

jr_012_4E49:
    nop
    dec hl
    and b
    add b
    ld [de], a
    ld e, b
    ld c, [hl]
    inc bc

jr_012_4E51:
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl

jr_012_4E60:
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca

jr_012_4E6B:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_4ED7

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_012_4ECC

    ld b, l
    ld b, e

jr_012_4E7B:
    ld d, d
    ld b, l
    ld d, h

jr_012_4E7E:
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    cp [hl]
    ld c, [hl]
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_4F07

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4F11

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_4EFF

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
    inc sp
    and b
    ld [$0005], sp
    ld [de], a
    ld a, [$A14E]
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld l, a
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_4F37

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_4F41

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_012_4ECC:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4F45

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_4F08

    dec [hl]

jr_012_4ED7:
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
    inc sp
    and b
    ld [$0005], sp
    ld [de], a
    ld a, [$A14E]
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    ld l, a
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_4EFF:
    ld bc, $A171
    ld [de], a
    ld a, c
    ld c, a
    sbc a
    ld [hl], c

jr_012_4F07:
    and c

jr_012_4F08:
    ld b, [hl]
    rrca
    ld bc, $A171
    dec b
    ld bc, $3F12

jr_012_4F11:
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_4F7B

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
    jr nz, jr_012_4F78

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_4F94

    ld [hl], e
    cp $FC
    jr nz, jr_012_4F91

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_4F37:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    ld l, a
    ld b, b
    and [hl]
    ld d, h

jr_012_4F41:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_4F45:
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
    jr nz, jr_012_4FA5

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_4FD3

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
    ld [de], a
    ld l, a

jr_012_4F78:
    ld b, b
    sbc a
    ld [hl], c

jr_012_4F7B:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_4FE8

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_012_4F91:
    ld h, l
    jr nz, jr_012_5007

jr_012_4F94:
    ld h, l
    ld [hl], h
    jr nz, jr_012_4FF9

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_012_4FF6

    ld h, e
    ld l, a

jr_012_4FA5:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_501E

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
    jr nz, jr_012_500F

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_5039

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_5029

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

jr_012_4FD3:
    xor l
    ld [hl], c
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    ld l, a
    ld b, b
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_012_4FE8:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    add sp, $4E
    inc de
    ld l, l
    ld a, b
    ld a, e

jr_012_4FF6:
    ld l, $C5
    ld d, a

jr_012_4FF9:
    cpl
    ld h, a
    ld d, [hl]
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    inc c
    inc bc
    ld d, a

jr_012_5004:
    ret nc

    nop
    inc d

jr_012_5007:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_012_500F:
    ld h, a
    inc b
    inc b
    ld l, b
    ret nc

    ld d, b
    add hl, de
    rst $20
    ld b, [hl]
    ld [de], a
    dec de
    ld d, c
    dec b
    ld c, $B2

jr_012_501E:
    ld l, [hl]
    inc bc
    dec d
    db $10
    jp nc, $1954

    ld a, e
    ld c, d
    add hl, de
    sub e

jr_012_5029:
    ld c, d
    dec b
    rrca
    or d
    ld l, [hl]
    dec bc
    dec d
    jr jr_012_5004

    ld d, h
    ld [de], a
    ld [hl], l
    ld d, b
    add hl, de
    db $FD
    ld c, e

jr_012_5039:
    dec b
    db $10
    or d
    ld l, [hl]
    inc c
    dec d
    add hl, de
    jp nc, $1254

    sub h
    ld d, b
    add hl, de
    ld h, a
    ld c, l
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_012_5090

    nop
    add l
    nop
    ld l, [hl]
    jr nc, jr_012_506C

    jr nc, jr_012_5095

    ld b, b
    add l
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
    ld c, $0B
    rrca
    dec bc
    db $10
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b

jr_012_506C:
    or l
    ld a, [hl+]
    and b
    rst $30
    sbc e
    ld [de], a
    or e
    ld d, b
    ld b, l
    dec c
    nop
    nop
    nop
    nop
    ld [$14FC], sp
    add hl, de
    rst $20
    ld b, [hl]
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

jr_012_5090:
    nop
    ld [$45FC], sp
    dec c

jr_012_5095:
    nop
    nop
    nop
    nop
    ld [$14FC], sp
    add hl, de
    rst $20
    ld b, [hl]
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
    ld [$45FC], sp
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, @+$14

    jp z, $0350

    ld c, $00
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld [de], a
    jp c, $0350

    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    ld [$0350], a
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_012_5157

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_012_5153

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    ld [de], a
    adc e
    ld d, c
    ld [de], a
    or h
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
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
    ld hl, sp+$4A
    add hl, bc
    nop
    ld [de], a
    ld c, e
    ld d, c
    ld c, [hl]
    ld bc, $C9D8
    ld [de], a
    nop
    nop
    ld e, e
    ld d, c
    ld [de], a
    ld bc, $6700
    ld d, c
    ld [de], a
    ld [bc], a
    nop
    ld [hl], e
    ld d, c
    ld [de], a
    inc bc
    nop
    ld a, a
    ld d, c
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_012_5151

jr_012_5151:
    ld c, b
    ld [de], a

jr_012_5153:
    adc e
    ld d, c
    inc c
    nop

jr_012_5157:
    ld c, b
    ld [de], a
    adc e
    ld d, c
    dec d
    ld de, $74CF
    jr nz, jr_012_5161

jr_012_5161:
    inc c
    nop
    ld c, b
    ld [de], a
    adc e
    ld d, c
    dec d
    ld de, $7498
    jr nz, jr_012_516D

jr_012_516D:
    inc c
    nop
    ld c, b
    ld [de], a
    adc e
    ld d, c
    dec d
    ld de, $74A2
    jr nz, jr_012_5179

jr_012_5179:
    inc c
    nop
    ld c, b
    ld [de], a
    adc e
    ld d, c
    dec d
    ld de, $748E
    jr nz, jr_012_5185

jr_012_5185:
    inc c
    nop
    ld c, b
    ld [de], a
    adc e
    ld d, c
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
    jr nz, jr_012_5215

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $12
    or b
    ld d, c
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1248
    ld [c], a
    ld c, a
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    ld b, [hl]
    nop
    dec hl
    and b
    jr nz, @+$14

    call z, $0351
    ld c, $00
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    ld b, b
    ld [de], a
    call c, $0351
    rrca
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld b, [hl]
    nop
    dec hl
    and b
    add b
    ld [de], a
    db $EC
    ld d, c
    inc bc
    stop
    nop
    nop
    nop
    nop
    db $FD
    inc c
    ld c, $0C
    rrca
    inc c
    db $10
    or [hl]
    dec hl
    and b
    inc b
    ld l, l
    ld a, b
    ld a, e
    ld l, $05
    ld e, c
    cpl
    ld a, l
    rrca
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_526B

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_012_5274

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE

jr_012_5215:
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    ld [de], a
    ld d, d
    ld d, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_529B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_52A5

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_012_5293

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
    inc sp
    and b
    db $10
    dec b
    nop
    ld [de], a
    adc [hl]
    ld d, d
    and c
    xor l
    ld [hl], d
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    and h
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_012_52CB

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_012_52D5

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_52D9

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_012_529C

    dec [hl]

jr_012_526B:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_012_5274:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc sp
    and b
    db $10
    dec b
    nop
    ld [de], a
    adc [hl]
    ld d, d
    and c
    xor l
    ld [hl], d
    and c
    ld bc, $A132
    ld c, b
    ld [de], a
    and h
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_012_5293:
    ld bc, $A172
    ld [de], a
    dec c
    ld d, e
    sbc a
    ld [hl], d

jr_012_529B:
    and c

jr_012_529C:
    ld b, [hl]
    rrca
    ld bc, $A172
    dec b
    ld bc, $D312

jr_012_52A5:
    ld d, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_012_530F

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
    jr nz, jr_012_530C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_5328

    ld [hl], e
    cp $FC
    jr nz, jr_012_5325

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_012_52CB:
    ld l, $FE
    db $FD
    and c
    ld c, b
    ld [de], a
    and h
    ld b, b
    and [hl]
    ld d, h

jr_012_52D5:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_012_52D9:
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
    jr nz, jr_012_5339

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_012_5367

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
    ld [de], a
    and h

jr_012_530C:
    ld b, b
    sbc a
    ld [hl], d

jr_012_530F:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_012_537C

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_012_538B

    ld h, c
    halt

jr_012_5325:
    ld h, l
    jr nz, jr_012_539B

jr_012_5328:
    ld h, l
    ld [hl], h
    jr nz, jr_012_538D

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a

jr_012_5339:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_012_53B2

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
    jr nz, jr_012_53A3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_012_53CD

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_012_53BD

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

jr_012_5367:
    xor l
    ld [hl], d
    and c
    ld bc, $A132
    and c
    ld c, b
    ld [de], a
    and h
    ld b, b
    ld [bc], a
    nop
    sub b
    and a
    ld d, e
    db $10
    ld [$0012], sp
    adc l

jr_012_537C:
    and a
    ld e, a
    ld a, [bc]
    inc bc
    ld [de], a
    ld [bc], a
    nop
    sub b
    and a
    ld e, e
    db $10
    inc b
    ld [de], a
    ldh [$8E], a

jr_012_538B:
    add l
    ld b, h

jr_012_538D:
    ld [bc], a
    ld [bc], a
    cpl
    ld bc, $9000
    add a
    ld l, c
    db $10
    ld [$0212], sp
    nop
    sub b

jr_012_539B:
    add a
    ld h, c
    db $10
    ld [$E012], sp
    adc [hl]
    add l

jr_012_53A3:
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_53B2:
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_53BD:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_012_53CD:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    inc bc
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00FF
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
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
    cp $00
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    inc bc
    inc bc
    rra
    rra
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
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    nop
    rlca
    ldh a, [$F0]
    cp $FE
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
    ccf
    rlca
    rst $38
    ld bc, $00FF
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rSB]
    pop hl
    nop
    ldh a, [rSB]
    pop bc
    inc bc
    add e
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [$7F]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00FF
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
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$F0]
    ldh [$E0], a
    ldh [$E0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    add b
    adc a
    ldh [$E7], a
    ld hl, sp-$05
    cp $FF
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
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
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    ld bc, $00FD
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    cp a
    rra
    rst $18
    rra
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
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
    nop
    cp $00
    db $FC
    nop
    db $FC
    inc bc
    jp $C707


    rrca
    adc a
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$EF], a
    rra
    rst $20
    rla
    di
    dec bc
    di
    dec bc
    pop af
    add hl, bc
    pop hl
    add hl, de
    pop hl
    ld de, $B1C1
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ldh a, [rIE]
    ldh a, [$F7]
    ld hl, sp-$01
    db $FC
    rst $38
    db $FC
    db $FD
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rlca
    rst $30
    rlca
    rst $30
    inc bc
    ei
    inc bc
    ei
    ld bc, $01FD
    db $FD
    rst $38
    rst $38
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$01
    pop af
    ld bc, $03F1
    di
    inc bc
    db $E3
    inc bc
    db $E3
    rlca
    rst $20
    rst $38
    ldh a, [$FB]
    db $FC
    db $FC
    rst $38
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    cp $01
    nop
    rst $38
    nop
    cp $00
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ld h, e
    inc bc
    jp $8707


    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [rIE], a
    nop
    db $FC
    nop
    cp $00
    cp $00
    cp $00
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
    rst $38
    rst $38
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
    db $FC
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    rst $20
    rlca
    rst $00
    rlca
    rst $00
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    db $FC
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    rst $38
    ccf
    ld a, a
    sbc a
    ld l, a
    adc a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ldh [rIE], a
    ldh [$EF], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $28
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh a, [$E0]
    rst $38
    ldh [rIE], a
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
    ld bc, $FF00
    nop
    rst $38
    nop
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    adc a
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    rra
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    cp $FF
    cp $FF
    cp $FF
    rst $38
    rst $38
    rrca
    rst $28
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $30
    rlca
    rst $30
    inc bc
    di
    inc bc
    ei
    inc bc
    ei
    ld hl, sp-$08
    db $FC
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ldh [$EF], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld bc, $01FD
    db $FD
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    rst $38
    rra
    rst $18
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    db $FC
    di
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    ld h, a
    add a
    rst $20
    rlca
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    ld bc, $03FF
    rst $38
    ccf
    rst $18
    cpl
    rst $08
    rla
    rst $20
    rla
    rst $20
    inc de
    db $E3
    or e
    jp $C3A3


    ld h, e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    db $FD
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [$F7]
    add b
    rst $38
    nop
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
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$01
    pop af
    ld bc, $03F1
    db $E3
    inc bc
    db $E3
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $28
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$04
    db $FC
    cp $FE
    ld a, a
    ld a, a
    ccf
    cp a
    rrca
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rlca
    rst $20
    rlca
    rst $00
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$09
    rst $38
    ld hl, sp-$03
    db $FC
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    inc bc
    db $FC
    rst $38
    nop
    db $FC
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rlca
    add a
    rlca
    rrca
    rrca
    rra
    rra
    ld a, $3E
    db $FC
    db $FD
    ld hl, sp-$01
    ldh [$EF], a
    ldh [$EF], a
    ret nz

    rst $18
    add b
    cp a
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    db $FC
    rlca
    rst $00
    rlca
    rst $00
    rrca
    adc a
    rrca
    adc a
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF
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
    nop
    rst $38
    nop
    ld a, a
    rlca
    rst $30
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    rlca
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$F3]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $FE
    ldh a, [$F7]
    add b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    cp a
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
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rSB]
    pop hl
    inc bc
    jp $8707


    rrca
    rrca
    rra
    rra
    ccf
    ccf
    add b
    cp a
    ldh [rIE], a
    ldh a, [$F7]
    ld hl, sp-$07
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    sbc a
    ldh [$E7], a
    ld hl, sp-$08
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
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh [rSB], a
    add c
    rlca
    rlca
    nop
    ldh a, [rSB]
    pop hl
    inc bc
    add e
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
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
    nop
    rst $38
    nop
    nop
    ret nz

    ret nz

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
    nop
    db $FC
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    or d
    rst $38
    or l
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
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
    pop bc
    db $DD
    sbc h
    cp [hl]
    and d
    rst $28
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    and d
    rst $28
    sbc h
    cp [hl]
    pop bc
    db $DD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $28
    rst $08
    rst $28
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $C8EE
    xor $C0
    ld [$F6C4], a
    call z, $E1EE
    db $FD
    rst $38
    rst $38
    di
    ei
    db $E3
    ei
    jp $F3EB


    ei
    di
    ei
    di
    ei
    pop hl
    db $FD
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $CCEE
    xor $F9
    db $FD
    di
    ei
    rst $20
    rst $30
    ret nz

    cp $FF
    rst $38
    pop hl
    db $FD
    call z, $FCEE
    cp $F1
    db $FD
    db $FC
    cp $9C
    sbc $C1
    db $FD
    rst $38
    rst $38
    ld sp, hl
    db $FD
    pop af
    db $FD
    pop hl
    push af
    ret


    db $ED
    add b
    cp $F9
    db $FD
    pop af
    db $FD
    rst $38
    rst $38
    call nz, $C1F6
    db $ED
    rst $08
    rst $28
    pop bc
    db $FD
    db $FC
    cp $9C
    sbc $C1
    db $FD
    rst $38
    rst $38
    pop af
    db $FD
    rst $20
    rst $30
    rst $08
    rst $28
    pop bc
    db $ED
    call nz, $CCF6
    xor $E1
    db $FD
    rst $38
    rst $38
    ret nz

    cp $9C
    sbc $F9
    db $FD
    di
    ei
    di
    ei
    rst $20
    rst $30
    rst $20
    rst $30
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $E1EE
    db $FD
    call z, $CCEE
    xor $CC
    xor $E1
    db $FD
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $C8EE
    xor $E0
    ld a, [$FEFC]
    ld sp, hl
    db $FD
    db $E3
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$FE]
    db $E4
    or $CC
    xor $CC
    xor $C0
    cp $CC
    xor $8C
    xor $FF
    rst $38
    add c
    db $FD
    call z, $C1EE
    db $FD
    call z, $CCEE
    xor $CC
    xor $81
    db $FD
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $9FEE
    rst $18
    sbc a
    rst $18
    sbc a
    rst $18
    call z, $E1EE
    db $FD
    rst $38
    rst $38
    add e
    ei
    ret


    db $ED
    call z, $CCEE
    xor $CC
    xor $CC
    xor $81
    db $FD
    rst $38
    rst $38
    add b
    cp $CF
    rst $28
    jp $CFFB


    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    add b
    cp $FF
    rst $38
    add b
    cp $CF
    rst $28
    jp $CFFB


    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    add a
    rst $30
    rst $38
    rst $38
    pop hl
    db $FD
    call z, $9FEE
    rst $18
    sbc a
    rst $18
    sbc b
    sbc $CC
    xor $E0
    cp $FF
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $C0
    cp $CC
    xor $CC
    xor $8C
    xor $FF
    rst $38
    pop bc
    db $FD
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    pop bc
    db $FD
    rst $38
    rst $38
    ret nz

    cp $F9
    db $FD
    ld sp, hl
    db $FD
    ret


    db $ED
    sbc c
    db $DD
    sbc c
    db $DD
    jp $FFFB


    rst $38
    adc h
    xor $C9
    db $ED
    jp $C1EB


    db $FD
    call z, $CCEE
    xor $8C
    xor $FF
    rst $38
    jp $E7FB


    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    ret nz

    rst $38
    rst $38
    rst $38
    adc h
    xor $CC
    xor $C0
    or $C0
    ld [$EECC], a
    call z, $0CEE
    ld l, [hl]
    rst $38
    rst $38
    adc h
    xor $C4
    or $C0
    ld [$EEC8], a
    call z, $CCEE
    xor $8C
    xor $FF
    rst $38
    pop bc
    db $FD
    sbc h
    sbc $9C
    sbc $9C
    sbc $9C
    sbc $9C
    sbc $C1
    db $FD
    rst $38
    rst $38
    add c
    db $FD
    call z, $CCEE
    xor $C9
    db $ED
    jp $CFFB


    rst $28
    add a
    rst $30
    rst $38
    rst $38
    pop bc
    db $FD
    sbc h
    sbc $9C
    sbc $9C
    sbc $90
    jp c, $DD99

    ret nz

    ei
    rst $38
    rst $38
    add c
    db $FD
    call z, $CCEE
    xor $C9
    db $ED
    jp $C9FB


    db $ED
    inc c
    ld l, [hl]
    rst $38
    rst $38
    ldh [$FE], a
    rst $08
    rst $28
    db $E3
    ei
    ld sp, hl
    db $FD
    call nz, $9CF6
    sbc $C1
    db $FD
    rst $38
    rst $38
    add b
    cp $33
    cp e
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    db $E3
    ei
    rst $38
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $E1
    db $FD
    rst $38
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $CC
    xor $E1
    push af
    pop hl
    push af
    di
    ei
    rst $38
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $CC
    xor $C0
    ld [$F6C0], a
    adc h
    xor $FF
    rst $38
    adc h
    xor $CC
    xor $E1
    push af
    di
    ei
    pop hl
    push af
    call z, $8CEE
    xor $FF
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $C8
    xor $E0
    ld a, [$DE9C]
    pop bc
    db $FD
    rst $38
    rst $38
    add b
    cp $39
    cp l
    di
    ei
    rst $20
    rst $30
    rst $08
    rst $28
    sbc h
    sbc $01
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    jp $F9FB


    db $FD
    pop bc
    db $FD
    sbc c
    db $DD
    ret nz

    cp $FF
    rst $38
    rst $38
    rst $38
    adc a
    rst $28
    rst $08
    rst $28
    pop bc
    db $ED
    call nz, $CCF6
    xor $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99FB


    db $DD
    sbc a
    rst $18
    sbc h
    sbc $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    db $FD
    ld sp, hl
    db $FD
    pop bc
    push af
    sub c
    db $DD
    sbc c
    db $DD
    pop bc
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99FB


    db $DD
    add e
    db $DB
    adc h
    xor $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    db $FD
    db $E4
    or $C3
    ei
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld a, [$DD99]
    sbc c
    db $DD
    pop bc
    db $FD
    add hl, sp
    cp l
    add e
    ei
    rst $38
    rst $38
    adc a
    rst $28
    rst $08
    rst $28
    pop bc
    db $ED
    call nz, $CCF6
    xor $CC
    xor $FF
    rst $38
    rst $38
    rst $38
    di
    ei
    rst $38
    rst $38
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    db $FD
    rst $38
    rst $38
    ld sp, hl
    db $FD
    ret


    db $ED
    sbc c
    db $DD
    jp $FFFB


    rst $38
    rst $38
    rst $38
    adc c
    db $ED
    ret


    db $ED
    jp $C3EB


    ei
    ret


    db $ED
    call z, $FFEE
    rst $38
    rst $38
    rst $38
    db $E3
    ei
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    di
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $90F5
    jp c, $DA90

    sub b
    jp c, $DE9C

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    db $ED
    call nz, $CCF6
    xor $CC
    xor $CC
    xor $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    db $FD
    sbc h
    sbc $9C
    sbc $9C
    sbc $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    db $DD
    call z, $CCEE
    xor $C1
    db $FD
    rst $08
    rst $28
    adc a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld a, [$DD99]
    sbc c
    db $DD
    pop bc
    db $FD
    ld sp, hl
    db $FD
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    db $ED
    call nz, $CFF6
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$FE], a
    rst $08
    rst $28
    pop hl
    db $FD
    sbc h
    sbc $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    cp $93
    db $DB
    di
    ei
    di
    ei
    di
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    db $DD
    sbc c
    db $DD
    sbc c
    db $DD
    sub c
    db $DD
    pop bc
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    xor $CC
    xor $CC
    xor $E1
    push af
    di
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    sbc $90
    jp c, $DA90

    sub b
    jp c, $F5C1

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    xor $E1
    push af
    di
    ei
    pop hl
    push af
    adc h
    xor $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CCEE
    xor $CC
    xor $E0
    cp $9C
    sbc $C1
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    db $FD
    inc sp
    cp e
    rst $20
    rst $30
    call z, $81EE
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FE
    cp $FE
    cp $FE
    cp $FE
    db $FC
    cp $FC
    db $FC
    rlca
    rst $38
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    daa
    inc hl
    daa
    inc hl
    daa
    ld [hl+], a
    daa
    ldh [rIE], a
    ret nz

    ldh [$C0], a
    ret nz

    add b
    ret nz

    add b
    add c
    ld bc, $0181
    ld de, $1111
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $00
    rst $00
    rst $00
    add a
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $00
    add $C7
    add $C6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    nop
    nop
    nop
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld [hl], c
    pop af
    ld sp, $3071
    ld sp, $FFFF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [$F8]
    ldh a, [$F1]
    pop hl
    pop af
    rrca
    rst $38
    rlca
    rrca
    rlca
    add a
    add e
    rst $00
    pop bc
    db $E3
    pop hl
    pop hl
    ldh [$F1], a
    ldh a, [$F8]
    ldh a, [rIE]
    ldh [$F0], a
    ldh [$E1], a
    pop bc
    db $E3
    add e
    rst $00
    add a
    add a
    rlca
    adc a
    rrca
    rra
    db $FC
    db $FC
    db $FC
    db $FC
    ld hl, sp-$04
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rNR43]
    ld h, [hl]
    ld h, b
    ld h, [hl]
    ld h, b
    ld h, h
    ei
    ld h, h
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$FE], a
    pop hl
    ld de, $2131
    ld sp, $6321
    rst $38
    ld h, e
    rst $38
    ld h, e
    ld a, a
    db $E3
    rst $18
    db $E3
    rst $38
    jp $8F87


    adc a
    adc a
    adc a
    adc a
    rst $38
    adc a
    ld a, a
    adc a
    xor $1F
    pop af
    ld c, $FF
    nop
    add [hl]
    add $86
    adc [hl]
    adc [hl]
    adc [hl]
    rst $38
    adc a
    ld a, c
    adc a
    rst $38
    ld [$08FF], sp
    db $EB
    inc e
    ld e, $3E
    rrca
    rra
    ld bc, $FF03
    nop
    rst $18
    ldh [$FB], a
    db $FC

jr_012_60A3:
    ei
    ld a, h
    rst $38
    nop
    jr nc, jr_012_60E1

    jr c, jr_012_60A3

    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    ei
    ld a, h
    pop hl
    db $E3
    jp $C3E3


    rst $00
    cp a
    rst $00
    rst $30
    adc a
    ld a, a
    adc a
    rst $28
    rra
    rst $38
    rra
    ld hl, sp-$04
    ld hl, sp-$04
    db $FC
    ld hl, sp-$09
    ld hl, sp-$12
    pop af
    rst $38
    pop hl
    db $DD
    db $E3
    cp e
    rst $00
    rra
    ccf
    rra
    ccf
    ccf
    rra
    rst $28
    rra
    ld [hl], a
    adc a

jr_012_60E1:
    rst $38
    add a
    cp e
    rst $00
    db $DD
    db $E3
    cp $F1
    rst $38
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    db $FD
    db $E3
    db $E3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $00
    rst $38
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    add c
    cp l
    jp $FFC3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    ld e, $FE
    rra
    rra
    rst $38
    rst $38
    rst $38
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
    db $FC
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $FC
    rst $38
    db $FC
    ei
    db $FC
    rst $30
    ld hl, sp-$41
    ret nz

    cp [hl]
    pop bc
    cp l
    jp $FFFF


    rst $18
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add a
    rst $30
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $E1
    rst $28
    ldh a, [$F0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    dec b
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    rst $38
    pop bc
    rst $38
    adc a
    ei
    sbc d
    rst $30
    push af
    rst $08
    jp z, $151E

    rra
    inc d
    ccf
    add hl, sp
    and $99
    call z, $9E33
    ld l, l
    cp h
    ld e, e
    ld a, b
    or a
    ld a, [$FD75]
    ld [c], a
    ld a, l
    ld b, e
    nop
    rst $38
    nop
    rst $38
    rlca
    ld sp, hl
    ccf
    add $F7
    inc d
    adc $49
    sbc h
    sub a
    cp l
    xor d
    nop
    rst $38
    call nc, $E02B
    rra

jr_012_61DD:
    ret nz

    ccf
    ld bc, $00FE
    rst $38
    inc [hl]
    set 7, b
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
    rlca
    nop
    add hl, de
    ld b, $26
    jr jr_012_6217

    nop
    cpl
    rra
    ld d, c
    ccf
    ld c, [hl]
    ld sp, $0071

jr_012_6201:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp c
    cp $66
    sbc a
    sbc $E1
    inc de
    db $FC
    ld h, c
    ld e, $18
    rlca
    inc b
    inc bc

jr_012_6217:
    nop
    nop
    ldh [rP1], a
    jr nc, jr_012_61DD

jr_012_621D:
    jr @-$1E

    jr jr_012_6201

    or e
    ld b, b
    and $01
    ld l, l
    add d
    di
    di
    ld a, b
    ld a, b
    inc d
    inc d
    add b
    add b
    ldh [$E0], a
    rst $00
    ret nz

    sbc c
    add [hl]
    ld h, $18
    rra
    nop
    cpl
    rra
    ld d, c
    ccf
    ld c, [hl]
    ld sp, $0071

jr_012_6241:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp c
    cp $66
    sbc a
    sbc $E1
    inc de
    db $FC
    ld h, c
    ld e, $18
    rlca
    inc b
    inc bc
    nop
    nop
    ldh [rP1], a
    jr nc, jr_012_621D

    jr @-$1E

    jr jr_012_6241

    or e
    ld b, b
    and $01
    ld l, l
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $E3
    inc e
    inc e
    db $E3
    sbc $3F
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    inc e
    ldh [rNR52], a
    ld hl, sp-$05
    db $FC
    inc de
    nop
    dec de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    db $F4
    nop
    db $F4
    nop
    db $F4
    nop
    and $00
    xor $00
    rst $28
    nop
    rst $18
    nop
    db $DD
    ld [bc], a
    ccf
    add hl, sp
    ld a, $32
    inc a
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
    ld a, e
    ld c, l
    ld a, e
    ld c, l
    ld a, e
    ld c, l
    ld a, a
    ld e, c
    halt
    ld a, d
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    halt
    jr c, jr_012_62FF

    ld a, e
    ld d, l
    ld [hl], a
    ld l, e
    ld a, [hl]
    ld b, [hl]
    ld a, c
    ld a, c
    ld h, a
    ld h, a
    rrca
    inc c
    ld a, $33
    ld a, l
    ld l, [hl]
    ldh a, [$DF]
    ld [hl], b
    ld l, a
    ldh [$DF], a
    ret nz

    cp a
    add h
    ld a, e
    jr c, @-$37

    ld a, b
    or a
    pop af
    ld l, [hl]
    ld a, h
    nop
    ld b, b
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    dec de
    rlca
    ld [hl], $0F
    add hl, hl
    ld e, $7F
    nop
    ret nz

    ccf
    rra
    ldh [$64], a
    sbc a

jr_012_62FF:
    or b
    ld a, a
    ret nz

    rst $38
    rra
    ldh [$F8], a
    nop
    ld a, [c]
    ld bc, $C039
    db $FC
    nop
    ld a, [bc]
    ldh a, [rNR32]
    ldh [$E1], a
    nop
    adc a
    nop
    dec a
    ld [bc], a
    adc $01
    rra
    nop
    sub l
    nop
    nop
    nop
    rlca
    nop
    inc a
    inc bc
    ld b, a
    jr c, jr_012_6386

    rra
    ld a, h
    nop
    ld b, b
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    dec de
    rlca
    ld [hl], $0F
    add hl, hl
    ld e, $7F
    nop
    ret nz

    ccf
    rra
    ldh [$64], a
    sbc a
    or b
    ld a, a
    ret nz

    rst $38
    rra
    ldh [$F8], a
    nop
    ld a, [c]
    ld bc, $C039
    db $FC
    nop
    ld a, [bc]
    ldh a, [rNR32]
    ldh [$E1], a
    nop
    adc a
    nop
    dec a
    ld [bc], a
    adc $01
    rra
    nop
    sub l
    nop
    nop
    nop
    rlca
    nop
    inc a
    inc bc
    ld b, a
    jr c, jr_012_63C6

    rra
    rra
    rst $38
    ldh [$1F], a
    rst $38
    nop
    nop
    nop
    push hl
    nop
    dec de
    ldh [$8D], a
    ld [hl], b
    and $18
    pop hl
    cp $0E
    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, sp+$00
    inc c
    ldh a, [$B2]
    ld c, h
    ret


jr_012_6386:
    ld [hl], $19
    nop
    add hl, de
    nop
    dec e
    nop
    inc e
    nop
    inc e
    nop
    dec c
    nop
    rrca
    nop
    dec bc
    nop
    db $DD
    ld [bc], a
    reti


    ld b, $F3
    rrca
    di
    rrca
    rst $20
    rra
    ld h, a
    rra
    ld h, a
    rra
    ld h, a
    rra
    sbc b
    nop
    ld l, b
    nop
    ld c, a
    nop
    ld e, $80
    ld d, a
    adc [hl]
    halt
    adc a
    ld l, h
    sbc a
    ld l, c
    sbc [hl]
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

jr_012_63C1:
    ret nz

    nop
    ret nz

    nop
    add b

jr_012_63C6:
    nop
    nop
    rst $38
    ld sp, $79CE
    or [hl]
    ld a, e
    and l
    rst $38
    ld b, l
    rst $38
    adc c
    db $DB
    or l
    ei
    sub l
    ld bc, $02FE
    db $FD
    add [hl]
    ld a, c
    adc h
    ld [hl], e
    adc $B1
    rst $18
    and h
    rst $38
    adc c
    ld a, a
    add hl, bc
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    inc c
    inc bc
    ld a, [hl+]
    dec b
    add hl, hl
    rlca
    ld l, e
    rlca
    db $EC
    inc bc
    or $00
    ld c, a
    nop
    rst $30
    ld [$FC0B], sp
    rst $30
    ld hl, sp-$12
    ldh a, [$9E]
    ldh [$78], a
    add b
    inc bc
    nop
    rlca
    nop
    rra
    nop
    ld a, [hl-]
    inc b
    scf
    ld [$3855], sp
    db $ED
    jr nc, jr_012_63C1

    ld [hl], b
    nop
    nop
    add b
    nop
    jr c, jr_012_641D

jr_012_641D:
    db $FC
    nop
    call z, $9830
    ld h, b
    ld [hl], b
    ret nz

    and b
    ret nz

    ld b, a
    jr c, jr_012_64A2

    nop
    inc bc
    nop
    dec c
    ld [bc], a
    jr nc, @+$11

    dec l
    ld e, $7B
    inc e
    ld d, h
    jr c, jr_012_6438

jr_012_6438:
    nop
    ld hl, $C300
    nop
    and [hl]
    ld bc, $03CC
    sbc c
    rlca
    ld [hl-], a
    rrca
    ld h, $1F
    ld [hl], a
    ld [$32CD], sp
    add hl, de
    and $31
    adc $69
    sbc [hl]
    jp Jump_012_773C


    ld hl, sp-$1A
    ld hl, sp+$65
    rra
    ld [hl], e
    rrca
    cp c
    rlca
    db $DB
    rlca
    adc l
    inc bc
    ld b, $01
    ld [hl-], a
    ld bc, $007B
    dec sp
    call z, $EE95
    ld [$F6F7], a
    ei
    push af
    ei
    db $FD
    ei
    ld a, c
    rst $38
    ld a, l
    rst $38
    ld h, c
    ld e, $3E
    nop
    add b
    nop
    cp b
    nop
    ld d, [hl]
    adc b
    ld b, d
    adc h
    xor c
    add $A9
    add $08
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$6F00], sp
    rra
    ld h, [hl]
    rra
    call z, $ED3F
    ld e, $CD
    ld a, $EB

jr_012_64A2:
    inc e
    ld [c], a
    inc e
    add $38
    ld l, c
    sbc [hl]
    jp hl


    ld e, $A9
    ld e, $A9
    ld e, $AB
    inc e
    ld a, [hl+]
    inc e
    ld e, d
    inc a
    cp d
    ld a, h
    sub b
    nop
    sub b
    nop
    jr nz, jr_012_64BD

jr_012_64BD:
    jr nz, jr_012_64BF

jr_012_64BF:
    ld h, b
    nop
    ld h, b
    nop
    ld d, b
    nop
    ret nc

    nop
    di
    cp l
    rst $30
    xor c
    rst $38
    pop hl
    rst $38
    db $E3
    cp $E6
    db $FC
    db $EC
    ld a, b
    ld a, b
    jr nc, jr_012_6507

    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld d, d
    halt
    ld e, d
    ld a, [hl]
    ld d, [hl]
    cp $EE
    db $FC
    db $FC
    ld a, b
    ld a, b
    jr nc, jr_012_6517

    or a
    ld b, b
    sbc b
    ld h, b
    adc $30
    ld b, [hl]
    jr c, jr_012_656C

    nop
    jr nc, jr_012_64F3

jr_012_64F3:
    ld bc, $0000
    nop
    pop hl
    nop
    inc bc
    nop
    ld d, $01
    dec c
    inc bc
    add hl, de
    rlca
    jr z, jr_012_651A

    rst $38
    nop
    nop
    nop

jr_012_6507:
    ld d, [hl]
    pop hl
    ld d, [hl]
    pop hl
    db $DB
    pop hl
    ld [$CAF1], a
    pop af
    dec sp
    ret nz

    rst $20
    nop
    nop
    nop

jr_012_6517:
    and b
    ret nz

    and b

jr_012_651A:
    ret nz

    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop

Jump_012_6521:
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld l, c
    db $10
    ld [hl], d
    ld bc, $0265
    ld b, h
    ld [bc], a
    ld b, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rra
    ld e, [hl]
    ccf

jr_012_653B:
    ld e, h
    ccf
    ld b, c
    ld a, $7F
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $19E0
    ldh [$65], a
    add b
    call $1D00
    nop
    jr c, jr_012_6553

jr_012_6553:
    jr nz, jr_012_6555

jr_012_6555:
    nop
    nop
    xor c
    ld d, b
    jr jr_012_653B

    inc sp
    ret nz

    ld h, [hl]
    add c
    call z, $8703
    nop
    nop
    nop
    nop
    nop
    sbc l
    ld a, a
    ld c, l
    ccf
    scf

jr_012_656C:
    rrca
    sbc e
    rlca
    ld c, h
    add e
    ld b, a
    add b
    ldh [rP1], a
    nop
    nop
    xor c
    add $A9
    add $AD
    jp nz, $C026

    ld b, d
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld c, h
    jr nc, @+$5B

    jr nz, jr_012_660F

    nop
    ld h, a
    nop
    adc [hl]
    ld bc, $031D
    inc sp
    rrca
    ld h, a
    rra
    or d
    ld a, h
    ld [hl], h
    ld hl, sp+$64
    ld hl, sp+$68
    ldh a, [$C8]
    ldh a, [$D0]
    pop hl
    sub l
    ldh [$A9], a
    call nz, $00D0
    ret c

    nop
    ret c

    nop

jr_012_65BD:
    cp b
    nop
    cp h
    nop
    xor [hl]
    nop
    ld a, [hl+]
    nop
    ld l, d
    nop
    di
    di
    ld a, b
    ld a, b
    inc d
    inc d
    add b
    add b
    ldh [$E0], a
    rst $00
    ret nz

    sbc c
    add [hl]
    ld h, $18
    rra
    nop
    cpl
    rra
    ld d, c
    ccf
    ld c, [hl]
    ld sp, $0071

jr_012_65E1:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp c
    cp $66
    sbc a
    sbc $E1
    inc de
    db $FC
    ld h, c
    ld e, $18
    rlca
    inc b
    inc bc
    inc c
    inc c
    ldh [rP1], a
    jr nc, jr_012_65BD

    jr @-$1E

    jr jr_012_65E1

    or e
    ld b, b
    and $01
    ld l, l
    add d
    ccf
    ccf
    sub [hl]
    sub [hl]
    nop
    nop
    ccf
    nop

jr_012_660F:
    db $E3
    inc e
    inc e
    db $E3
    ret nz

    ccf
    nop
    rst $38
    adc a
    adc a
    dec de
    dec de
    inc b
    inc b
    ldh [rP1], a
    ld hl, sp+$00
    inc e
    ldh [rTMA], a
    ld hl, sp+$03
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $E3
    inc e
    inc e
    db $E3
    sbc $3F
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    inc e
    ldh [rNR52], a
    ld hl, sp-$05
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    rrca
    and e
    inc e
    xor a
    db $10
    ld [hl], b
    nop
    ld l, a
    nop
    rla
    rrca
    ld l, a
    db $10
    ld d, b
    jr nz, @+$68

    add b
    dec h
    ret nz

    jp nz, Jump_012_6521

    inc bc
    and d
    ld bc, $8146
    add c
    ld b, b
    ld h, d
    nop
    ld a, h
    nop
    add [hl]
    ld a, b
    ld [hl], e
    db $FC
    rst $08
    ldh a, [$B0]
    ret nz

    rst $08
    nop
    or c
    rrca
    ld c, [hl]
    ccf
    inc b
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    dec bc
    nop
    inc de
    nop
    ld [de], a
    ld bc, $3FC7
    rst $00
    ccf
    rst $30
    rrca
    ld e, e
    add a
    ld c, c
    add a
    ld c, l
    add e
    push bc
    inc bc
    and l
    inc bc
    xor b
    ret nz

    ld a, [hl+]
    ret nz

    ld c, d
    add b
    ld d, b
    adc b
    ld d, b
    adc b
    ld d, c
    add b
    ld d, c
    add b
    ld d, l
    add b
    ld l, d
    nop
    ld l, d
    nop
    ld [$EC00], a
    nop
    ld c, h
    add b
    ld c, h
    add b
    ld c, [hl]
    add b
    adc $00
    ld a, h
    nop
    ld b, b
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    dec de
    rlca
    ld [hl], $0F
    add hl, hl
    ld e, $7F
    nop
    ret nz

    ccf
    rra
    ldh [$64], a
    sbc a
    or b
    ld a, a
    ret nz

    rst $38
    rra
    ldh [$F8], a
    nop
    ld a, [c]
    ld bc, $C039
    db $FC
    nop
    ld a, [bc]
    ldh a, [rNR32]
    ldh [$E1], a
    nop
    adc a
    nop
    dec a
    ld [bc], a
    adc $01
    rra
    nop
    sub l
    nop
    nop
    nop
    rlca
    nop
    inc a
    inc bc
    ld b, a
    jr c, jr_012_6766

    rra
    rra
    rst $38
    ldh [$1F], a
    rst $38
    nop
    nop
    nop
    push hl
    nop
    dec de
    ldh [$8D], a
    ld [hl], b
    and $18
    pop hl
    cp $0E
    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, sp+$00
    inc c
    ldh a, [$B2]
    ld c, h
    ret


    ld [hl], $1F
    rst $38
    ldh [$1F], a
    rst $38
    nop
    nop
    nop
    push hl
    nop
    dec de
    ldh [$8D], a
    ld [hl], b
    and $18
    pop hl
    cp $0E
    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, sp+$00
    inc c
    ldh a, [$B2]
    ld c, h
    ret


    ld [hl], $03
    nop
    rlca
    nop
    dec bc
    nop
    ld a, [bc]
    ld bc, $010A
    ld a, [bc]
    ld bc, $0007
    ld b, $00
    ld c, $07
    dec bc
    rlca
    ld de, $8D07
    inc de
    adc l
    inc bc
    ld l, d
    add c
    ld b, d
    adc c
    add d

jr_012_6766:
    ld b, c
    ret nz

    nop
    ldh [rP1], a
    sub b
    ldh [$D8], a
    ldh [$CC], a
    ldh a, [$DC]
    ldh [$AA], a
    call nz, $846A
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0112
    ld [de], a
    ld bc, $0013
    dec bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    and l
    inc bc
    and l
    inc bc
    and h
    inc bc
    call Call_012_4D02
    add d
    ld l, l
    add d
    ld a, c
    add [hl]
    or a
    ld c, h
    ld b, l
    add b
    ld h, l
    adc b
    ld h, d
    adc l
    ld h, l
    adc a
    ld c, e
    add a
    jp z, $4507

    ld c, $05
    ld c, $5E
    add b
    ld c, [hl]
    add b
    sbc $80
    ld e, h
    add b
    ld e, h
    add b
    sbc h
    nop
    sbc h
    nop
    adc h
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
    ld bc, $1900
    nop
    ld de, $3300
    nop
    ld h, [hl]
    ld bc, $0364
    push bc
    ld [bc], a
    adc c
    ld b, $0A
    inc b
    ld [hl+], a
    pop bc
    ld h, h
    add e
    ld b, h
    add e
    call nz, $8602
    nop
    adc h
    nop
    inc c
    nop
    ld [$8400], sp
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
    inc e
    nop
    jr jr_012_680B

jr_012_680B:
    jr nc, jr_012_680D

jr_012_680D:
    ld h, b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    ld b, [hl]
    and c
    ld b, [hl]
    ld h, h
    inc bc
    ld d, $21
    inc de
    jr nz, @+$33

    nop
    jr jr_012_6835

jr_012_6835:
    ld [$6800], sp
    nop
    ld l, h
    nop
    jr nz, jr_012_683D

jr_012_683D:
    or b
    nop
    ld a, b
    add b

jr_012_6841:
    ld e, b
    add b
    ld h, h
    add b
    ldh [rP1], a
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld b, $00
    ld b, $00
    ld b, $00
    rlca
    nop
    add d
    ld b, c
    or d
    ld b, c
    sub [hl]
    ld l, c
    add $79
    xor d
    ld [hl], c
    ld l, e
    jr nc, jr_012_6841

jr_012_6864:
    jr nc, jr_012_68BB

    jr c, jr_012_68B6

    add b
    sub $80
    sub $80
    sub $80
    ld l, d
    add h
    ld hl, sp-$7C
    ld d, h
    add sp, $6E
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
    ld b, $00
    ld b, $00
    inc b
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$CB00], sp
    inc a
    db $DB
    inc a
    ld l, l
    ld e, $34
    rrca
    ld a, [hl-]
    rlca
    inc e
    inc bc
    jr jr_012_68AC

    ld d, l
    ld a, [bc]
    dec c
    ld e, $0D
    ld e, $0B

jr_012_68AC:
    inc e
    dec bc
    inc e
    dec hl
    inc e
    ld l, $18
    ld d, $38
    halt

jr_012_68B6:
    jr jr_012_6864

    nop
    ld h, h
    nop

jr_012_68BB:
    ld [hl], h

jr_012_68BC:
    nop
    ld d, h
    jr nz, jr_012_6914

    jr nz, jr_012_68B6

    nop
    or h
    ld b, b
    or h
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld a, c
    nop
    adc $30
    dec e
    ld b, $31
    ld c, $6B
    inc e
    or e

jr_012_68EE:
    ld a, h
    halt
    ld hl, sp-$14
    ldh a, [rNR23]
    ldh [$B3], a
    ld b, b
    ldh [rP1], a
    adc $00
    sbc e
    inc b
    dec hl
    inc e
    ld d, [hl]
    jr c, jr_012_68EE

    ld [hl], b
    sbc c
    ld h, b
    ld [hl], d
    ld bc, $0083

jr_012_6909:
    dec e
    nop
    ld h, $18
    ld e, d
    inc a
    ld a, [c]
    inc a
    ld d, h
    jr c, jr_012_68BC

jr_012_6914:
    db $10
    jr nc, @-$7E

    rst $28
    nop
    ld c, b
    nop
    add a
    nop
    ld [$4B07], sp
    rlca
    ld d, a
    rrca
    dec d
    rrca
    sub e
    rrca
    sub d
    ld h, c
    ld h, a
    nop
    add [hl]
    ld bc, $8365
    inc h
    jp $C3A5


    and h
    jp $C225


    ld h, $F8
    ld [hl], d
    db $FC
    ld a, [$FAFC]
    db $FC
    ld a, [c]
    db $FC
    add [hl]
    ld hl, sp+$7E
    add b
    add d
    nop
    dec b
    nop
    inc b
    ld bc, HeaderLogo
    dec b
    nop
    dec b
    nop
    dec b
    nop
    rlca
    nop
    inc bc
    nop
    xor l
    jr @-$51

    jr jr_012_6909

    jr jr_012_69C9

    sbc h
    ld [hl], a
    adc h
    ld d, e
    adc h
    ld c, d
    add h
    adc c
    ld b, [hl]
    ld l, [hl]
    ldh a, [$5C]
    ldh [$7C], a
    ret nz

    inc l
    ret nz

    ld c, h
    and b
    call c, $DC00
    nop
    cp b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec e
    nop
    inc bc
    nop
    ld [hl-], a
    ld bc, $0123
    dec d
    inc bc
    nop
    nop
    nop
    nop
    sbc a
    nop
    rst $20
    rra
    dec de
    db $FD
    push af
    ld a, [$9A75]
    ld e, l
    and [hl]
    inc bc
    nop
    rst $08
    nop
    db $E3
    rra
    rst $38
    rst $38
    cp a
    rst $08
    xor [hl]
    rst $10
    or [hl]
    db $DB
    or [hl]
    db $DB
    ret nz

    nop

jr_012_69C9:
    daa
    ret nz

    rst $18
    ldh [rSVBK], a
    adc a
    ld c, h
    or a
    rst $28
    ld [hl], a
    rst $38
    ld a, a
    ei
    ld a, h
    rst $38
    nop
    nop
    rst $20
    db $DB
    inc bc
    dec de
    jp $C727


    ret


    cp $FD
    cp $FD
    ld a, [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $FC
    cp d
    db $DD
    db $DB
    db $ED
    db $DB
    db $ED
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    pop hl
    db $EB
    ld [hl], l
    ld l, a
    or a
    ld l, l
    or [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    di
    db $DB
    db $ED
    db $DB
    db $ED
    cp e
    db $DD
    ld hl, sp+$00
    ld c, $F0
    db $E3
    db $FC
    pop af
    cp $FD
    cp $6D
    or [hl]
    ld [hl], l
    cp d
    ld [hl], l
    cp d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    ld d, $1A
    rra
    dec e
    cpl
    scf
    ld e, a
    ld l, c
    ld a, d
    ld e, [hl]
    dec hl
    cpl
    rrca
    ld a, [bc]
    nop
    nop
    ldh a, [$F0]
    ld [hl], b
    ld d, b
    ldh [$E0], a
    and b
    ld h, b
    and $A6
    rst $08
    ret


    ld a, [$0076]
    nop
    nop
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
    inc bc
    inc bc
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
    rst $08
    ret


    ld a, [$0076]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    inc bc
    dec [hl]
    inc bc
    dec [hl]
    inc bc
    add hl, sp
    inc bc
    ld a, [hl-]
    ld bc, $013A
    ld hl, $1D00
    nop
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    ld a, l
    cp [hl]
    ld a, l
    cp [hl]
    ld a, l
    cp [hl]
    db $FD
    cp $ED
    cp $5D
    cp $BE
    jp $DBB6


    or [hl]
    db $DB
    or $FB
    cp $FF
    cp $FF
    cp $FF
    rst $38
    rst $38
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]
    db $DD
    ld h, [hl]
    db $ED
    halt
    db $ED
    halt
    db $EB
    ld [hl], h
    rst $18
    ld h, a
    ld a, a
    adc a
    db $FD
    cp $7D
    add [hl]
    ei
    db $FC
    ld a, [$FBFD]
    db $FD
    ei
    ld a, l
    rst $38
    rst $38
    inc bc
    rst $38
    db $DB
    ld l, h
    db $DB
    ld l, l
    db $DB
    ld l, l
    rst $18
    ld l, a
    ld e, a
    xor a
    ld a, d
    adc [hl]
    db $FD
    db $FC
    ld sp, hl
    db $FC
    db $ED
    ld [hl], $6D
    or [hl]
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    db $ED
    or $6D
    halt
    xor a
    scf
    xor a
    scf
    cp e
    db $DD
    cp e
    db $DD
    or [hl]
    db $DB
    or [hl]
    db $DB
    or [hl]
    db $DB
    or [hl]
    db $DB
    rst $18
    rst $20
    db $FC
    rst $38
    ld [hl], l
    sbc d
    ld [hl], l
    sbc d
    push af
    ld a, [de]
    or l
    ld e, d
    push de
    ld l, d
    db $DD
    ld h, d
    ld sp, hl
    cp $07
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
    dec b
    dec b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, h
    sub h
    db $FC
    db $EC
    cp $92
    ld a, l
    xor e
    rst $28
    db $DD
    ld a, [hl+]
    ld a, [hl-]
    jr c, jr_012_6B7D

    db $10
    db $10
    ld bc, $0001
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, h
    sub h
    db $FC
    db $EC
    cp $92
    ld a, l
    xor e
    rst $28
    db $DD
    ld a, [hl+]
    ld a, [hl-]
    jr c, jr_012_6B9D

    db $10
    stop
    nop
    nop
    nop
    nop
    nop

jr_012_6B7D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0E00
    nop
    inc bc
    nop

jr_012_6B9D:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rra
    ld sp, hl
    rst $00
    ccf
    ld h, b
    rra
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [$F0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    db $FC

jr_012_6BE6:
    nop
    ld [bc], a
    db $FC
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    ld a, a
    ld a, a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ret


    nop
    ldh [rP1], a
    ret nz

    nop
    add e
    nop
    di
    db $FC
    sbc a
    ld h, b
    cp $00
    ld bc, $5F00
    nop
    cp $00
    nop
    nop
    rst $38
    nop
    db $FC
    nop
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
    rlca
    nop
    inc c
    rlca
    ld l, e
    inc b
    ld [hl], a
    nop
    add [hl]
    inc bc
    ld h, l
    ld [bc], a
    sub e
    ld h, b
    ld l, [hl]
    ld sp, $00FC
    sbc d
    ld [hl], b
    cp e
    ld b, b
    db $EC
    jr jr_012_6BE6

    ld l, h
    ld a, d
    inc h
    push af
    jr nz, jr_012_6CA7

    and b
    ld [hl], b
    nop
    ld hl, sp+$00
    adc l
    ld [hl], b
    ld a, d
    dec [hl]
    daa
    jr jr_012_6CA0

    ld bc, $0C13
    dec h
    ld a, [de]
    nop
    nop
    cp $00
    pop af
    ld c, $E6
    ld a, b
    ld a, b
    ret nz

    ld c, b
    add b
    ldh a, [rP1]
    ld c, h
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    nop
    nop
    db $FD
    nop
    jp nz, $0401

    inc bc
    cp c
    rlca
    and b

jr_012_6CA0:
    rra
    xor b
    rra
    xor a
    rra
    cpl
    rra

jr_012_6CA7:
    nop
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $20
    ei
    rst $30
    ei
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
    ld a, a
    add a
    ld e, a
    and e
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
    rst $30
    ld hl, sp-$13
    or $03
    db $FC
    ldh a, [rIE]
    cp $FF
    pop hl
    rst $38
    ld e, $FE
    db $FC
    cp $FD
    ld a, $FE
    rra
    ldh [rP1], a
    ccf
    ret nz

    nop
    rst $38

jr_012_6CED:
    ccf
    ccf
    rst $18
    rra
    rst $18
    rra
    ccf
    ccf
    ld e, a
    pop hl
    inc e
    inc bc
    db $E3
    rra
    rra
    rst $38
    rst $28
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [$DF]
    db $E3
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    inc bc
    db $FC
    ld hl, sp-$01
    add e
    db $FC
    ld [hl], e
    db $FC
    db $FD
    cp $FD
    cp $F9
    cp $C1
    cp $80
    nop
    ld h, b
    add b
    jr nc, jr_012_6CED

    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    rla
    scf
    ld [$3649], sp
    push de
    ld l, e
    cp e
    ld c, h
    ld e, h
    ld [$0814], sp
    add hl, bc
    nop
    xor h
    nop
    inc c
    nop
    add h
    nop
    ld b, b
    add b
    xor h
    ret nz

    xor [hl]
    ld b, b
    ld b, h
    nop
    nop
    nop
    ld [hl], c
    ld a, $B3
    ld a, h
    sbc l
    ld a, b
    adc d
    ld [hl], b
    sub a
    ld h, b
    and e
    ld b, h
    ld b, d
    inc b
    ld [bc], a
    inc b
    ld a, $DC
    add hl, sp
    xor $79
    cp $E1
    ld a, [hl]
    ld b, c
    ld a, $31
    ld c, $0D
    ld [bc], a
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
    nop
    nop
    nop
    nop
    inc c
    nop
    ld c, $00
    add hl, bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld l, l
    ld e, $5E
    ccf
    ld e, [hl]
    ccf
    ld e, [hl]
    ccf
    xor [hl]
    rra
    xor l
    ld e, $A5
    ld e, $A1
    ld e, $F7
    ld a, e
    rst $28
    ld [hl], e
    rst $28
    ld [hl], e
    rst $28
    ld [hl], a
    rst $18
    ld l, a
    rst $18
    rst $28
    rst $18
    rst $28
    cp a
    rst $18
    ld a, a
    cp a
    ld a, l
    cp [hl]
    ld a, e
    cp l
    ld a, e
    cp l
    ld a, e
    adc l
    ld a, e
    cp h
    ld a, e
    cp l
    ld a, e
    cp l
    rst $28
    rst $30
    rst $28
    scf
    ld l, a
    or a
    rst $28
    ldh a, [$EF]
    rst $30
    rst $28
    ld [hl], a
    rst $28
    rst $30
    rst $28
    rst $30
    cp a
    rst $18
    cp a
    rst $18
    ld a, a
    cp a
    rst $18
    ld h, c
    cp l
    sbc $BF
    rst $08
    cp a
    rst $18
    cp a
    rst $18
    cp a
    pop bc
    cp e
    db $DD
    cp e
    db $DD
    cp a
    jp $DDB3


    cp e
    db $DD
    cp l
    sbc $BD
    sbc $DF
    rst $28
    rst $18
    ldh [$E7], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $18
    rst $28
    rst $18
    ldh [$EF], a
    ldh a, [$BF]
    rst $00
    rst $28
    scf
    rst $28
    scf
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $38
    rlca
    rst $30
    rrca
    sbc c
    cp $F9
    cp $FB
    db $FC
    or $F8
    add sp, -$10
    cp h
    ret nz

    or $F8
    di
    db $FC
    ld bc, $0200
    ld bc, $030D
    dec de
    rlca
    jr nc, jr_012_6E40

    ld e, e
    inc b
    xor a
    nop
    rla
    nop
    or [hl]
    ld a, b
    halt
    ld hl, sp-$3A
    ld hl, sp+$2C
    ret nc

    sbc h

jr_012_6E40:
    ld h, b
    ld sp, hl
    nop
    add d
    ld bc, $070A
    push hl
    ld [bc], a
    sbc c
    ld b, $2B
    inc e
    ld d, [hl]
    jr c, jr_012_6E7D

    db $10
    jp nc, Jump_012_4901

    add a
    rst $10
    rrca
    dec h
    inc bc
    sub [hl]
    rrca
    xor h
    rra
    inc hl
    inc e
    sub $08
    sbc b
    ret nz

    and e
    ret nz

    ld l, h
    add e
    ld b, e
    add b
    ld c, h
    add e
    sbc e
    ld b, $25
    ld e, $5B
    inc a
    inc hl
    inc e
    sub $08
    ld l, $C0
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6E7D:
    nop
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $00
    ld bc, $0F00
    nop
    ld e, l
    ld a, $5D
    ld a, $5D
    ld a, $5D
    ld a, $5D
    ld a, $4D
    ld a, $A5
    ld e, $33
    rrca
    rst $38
    rra
    rra
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    di
    rst $38
    rst $38
    ei
    ld a, e
    cp l
    ld a, e
    cp h
    ld a, a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    ld [hl], a
    rst $38
    rst $38
    rst $30
    ld hl, sp-$09
    ld hl, sp-$11
    di
    rst $28
    rst $30
    rst $28
    rst $30
    cp a
    jp $FFFF


    rst $38
    rst $38
    rst $30
    dec sp
    rst $30
    dec de
    or a
    db $DB
    or a
    db $DB
    or a
    db $DB
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld [hl], a
    cp b
    ld [hl], a
    cp b
    ld l, l
    or [hl]
    ld l, a
    or a
    ld l, a
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    db $E3
    db $DD
    xor $BD
    adc $BF
    rst $18
    cp a
    pop bc
    ei
    db $FD
    rst $28
    di
    ei
    db $FC
    cp $FF
    cp $3F
    rst $38
    nop
    cp [hl]
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    ld sp, hl
    cp $F9
    ld b, $07
    ld hl, sp-$03
    cp $7E
    rst $38
    call nz, Call_012_793F
    add [hl]
    and a
    ret nz

    jp z, $1B07

    rlca
    scf
    rrca
    ld [hl], e
    rrca
    ld e, e
    rlca
    dec h
    dec bc
    ld e, d
    dec b
    inc l
    inc bc
    sub h
    ldh [$D4], a
    ldh [$E8], a
    ldh a, [$E8]
    ldh a, [$D0]
    ldh [rNR41], a
    ret nz

    ld h, b
    add b
    ldh [rP1], a
    ld c, a
    nop
    jr nc, jr_012_6F5A

    ld l, a
    rra
    ld e, a
    ccf
    ld d, a
    ccf
    ld c, d
    ccf
    pop bc
    ld a, $92
    ld l, l
    and l
    nop
    pop bc

jr_012_6F5A:
    nop
    ld h, e
    add b
    and d
    pop bc
    or e
    ret nz

    ld d, d
    pop hl
    ld de, $91E0
    ld h, b
    cp c
    ld a, [hl]
    or b
    ld a, b
    ld h, a
    ldh a, [$88]
    rst $20
    ld [hl], e
    adc a
    adc a
    ld a, a
    add a
    ld a, a
    ld [c], a
    rra
    add c
    nop
    ld a, h
    nop
    adc d
    ld [hl], h
    rst $30
    ld hl, sp-$07
    cp $EB
    db $FC
    or c
    xor $CB
    db $FC
    nop
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
    nop
    nop
    nop
    nop
    nop
    sbc $01
    add b
    nop
    ld [bc], a
    ld bc, $03F5
    ld a, [$0301]
    nop
    ld a, l
    nop
    nop
    nop
    ld bc, $8EFE
    ld bc, $FF31
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    db $FC
    inc bc
    inc bc
    nop
    sub c
    ld l, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $F4
    db $FC
    ei
    ld hl, sp-$0D
    ld hl, sp-$0C
    ld hl, sp-$27
    ccf
    rst $28
    rst $30
    rst $28
    rst $30
    xor $F7
    rst $28
    rst $30
    ld [hl], a
    ld a, b
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp e
    db $DD
    cp e
    db $DD
    cp l
    ld e, [hl]
    ld a, a
    sbc a
    rst $38
    rra
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    or e
    ld l, a
    or e
    xor a
    ld [hl], e
    rst $28
    rst $30
    rst $28
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $FD
    ei
    db $FD
    ld a, e
    cp l
    ld a, e
    cp l
    ld [hl], a
    cp c
    ld l, a
    or e
    ld l, a
    or e
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    rst $38
    rst $38
    ret nz

    rst $38
    db $FD
    cp $FE
    rst $38
    or b

jr_012_7018:
    ret nz

    ret c

    ldh [$EE], a
    ldh a, [$F1]
    cp $FC
    rst $38
    ld a, b
    rst $38
    ret nz

    ccf
    ccf
    ret nz

    ld e, b
    rlca
    add hl, hl
    ld [bc], a
    rra
    nop
    ld e, e
    inc b
    ld c, $00
    ld e, $00
    inc c
    nop
    inc b
    nop
    ret nz

    nop
    add c
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    halt
    xor a
    ld d, b
    ld a, a
    add b
    jp c, $AD00

    nop
    ld b, $00
    ld bc, $0000
    nop
    ld sp, $D8C0
    jr nz, jr_012_7018

    nop
    call c, $AC00
    nop
    sub $00
    ld b, $00
    ld a, [bc]
    nop
    ret nc

    cpl
    ldh [$1F], a
    ld hl, sp+$07
    ld a, a
    nop
    rra
    nop
    dec b
    nop
    nop
    nop
    nop

jr_012_7076:
    nop
    rrca
    ldh a, [$6E]
    sub b
    sbc a
    ld h, b
    cp $00
    rst $38
    nop
    ld e, d
    nop
    xor l
    nop
    inc d
    nop
    ld d, h
    jr z, jr_012_7076

    db $10
    sub d
    ld l, h
    xor e
    sub $DD
    ld [hl-], a
    ld a, [hl-]
    db $10
    jr z, jr_012_70A5

    stop
    rrca
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
    dec c
    ld [bc], a

jr_012_70A5:
    ld a, [bc]
    dec b
    db $FC
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    ld h, d
    add c
    db $F4
    inc bc
    rst $30
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ld a, $C0
    sbc b
    ld h, b
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $C300
    nop
    and h
    inc bc
    nop
    rst $38

jr_012_70D9:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    nop
    dec hl
    ret nc

    dec de
    ldh [rP1], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_012_70F1

jr_012_70F1:
    ld e, b
    nop
    db $FC
    nop
    ld c, [hl]
    or b
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $037C
    add hl, de
    ld b, $FF
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add e
    nop
    ld b, [hl]
    add c
    cpl
    ret nz

    rst $28
    nop
    rst $38
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
    or b
    ld b, b
    ld d, b
    and b
    ld [$0800], sp
    nop
    stop
    stop
    jr nz, jr_012_7131

jr_012_7131:
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl], a
    nop
    and $00
    and $00
    ld l, d
    inc b
    ld l, d
    inc b
    ld c, h
    nop
    call z, $9900
    nop
    ld d, [hl]
    jr c, jr_012_71B7

    db $10
    ld l, c
    db $10
    ret


    jr nc, jr_012_70D9

    ld [hl], b
    sub d
    ld h, c
    sub e
    ld h, c
    or d
    ld b, c
    or h
    ld b, b
    and h
    ld b, b
    xor h
    ld b, b
    xor h
    ret nz

    ld l, b
    add b
    ld c, b
    add b
    ld c, h
    add b
    call z, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld b, c
    nop
    jr z, jr_012_718C

jr_012_718C:
    nop
    rst $38
    ld a, a
    ld l, h
    ld b, c
    rra
    nop
    dec c
    nop
    rst $38
    ld a, a
    ld l, h
    ld b, c
    nop
    jr z, jr_012_719C

jr_012_719C:
    ld a, h
    rst $38
    ld a, a
    ld l, h
    ld b, c
    db $10
    ld bc, $039F
    rst $38
    ld a, a
    ldh [$03], a
    jr nz, jr_012_71AC

    ld l, h

jr_012_71AC:
    ld b, c
    rst $38
    ld a, a
    ld l, h
    ld b, c
    jr nz, jr_012_71B4

    nop

jr_012_71B4:
    nop
    rst $38
    ld a, a

jr_012_71B7:
    ld l, h
    ld b, c
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    ld l, h
    ld b, c
    sub $01
    nop
    nop
    rst $38
    ld a, a
    nop
    inc a
    nop
    ld a, h
    ld [hl], h
    halt
    rst $38
    ld a, a
    inc c
    nop
    rra
    nop
    db $FD
    ld b, c
    rst $38
    ld a, a

jr_012_71D7:
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ld [hl], h
    ld h, d
    ldh [$7F], a
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    and b
    ld bc, $0227
    ldh [$08], a
    nop
    nop
    add [hl]
    ld [$110A], sp
    pop de
    add hl, de
    ld h, b
    ld c, c
    nop
    nop
    ldh [rNR41], a
    ld c, b
    ld e, d
    nop
    nop
    add [hl]
    ld [$114F], sp
    ld d, a
    ld [hl-], a
    nop
    nop
    ldh [$08], a
    and b
    ld bc, $0227
    nop
    nop
    nop
    ld hl, $39C0
    add [hl]
    ld [$0000], sp
    nop
    ld hl, $39C0
    ld h, b
    ld c, [hl]
    nop
    nop
    ld c, $20
    push de
    inc e
    inc a
    dec [hl]
    call nz, Call_012_4C00
    nop
    call nz, $EE00
    nop
    adc b
    ld c, b
    ld [bc], a
    nop
    jr nz, jr_012_71D7

    nop
    sbc d
    ld c, b
    add d
    nop
    add e

jr_012_725B:
    jr nz, @-$7B

    nop
    sub a
    ld c, b
    add a
    nop
    inc bc
    jr nz, jr_012_7265

jr_012_7265:
    nop
    sub l
    ld c, b
    inc b
    nop
    jr nz, jr_012_726C

jr_012_726C:
    ld b, $82
    ld bc, $0482
    add h
    nop

jr_012_7273:
    sub h
    ld c, b
    inc c
    ld b, b
    nop
    nop
    ld bc, $0141
    inc b
    ld l, h
    inc b
    nop
    jr nz, jr_012_7282

jr_012_7282:
    sub e
    ld c, b
    inc b
    ld b, b
    jr nz, jr_012_7288

jr_012_7288:
    ld c, b
    add e
    ld bc, $0404
    ld l, h
    inc b
    ld c, b
    add e
    nop
    sub d
    ld c, b
    ld c, $40
    jr nz, jr_012_7298

jr_012_7298:
    ld c, b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    inc b
    ld l, h
    inc b
    ld c, b
    nop
    jr nz, jr_012_72A3

jr_012_72A3:
    sub d
    ld c, b
    rlca
    ld b, b
    jr nz, jr_012_72A9

jr_012_72A9:
    ld c, b
    ld b, d
    ld [hl+], a
    ld b, d
    add e
    inc b
    inc b
    ld c, b
    ld b, b
    jr nz, jr_012_72B4

jr_012_72B4:
    sub d
    ld c, b
    rlca
    nop
    jr nz, jr_012_72BA

jr_012_72BA:
    ld c, b
    ld b, d
    ld [hl+], a
    ld b, d
    add e
    inc bc
    inc b
    ld c, b
    nop
    ld b, b
    nop
    sub e
    ld c, b
    rlca
    ld b, b
    nop
    nop
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld b, e
    add d
    inc bc
    add h
    nop
    sub e
    ld c, b
    ld [bc], a
    nop
    jr nz, jr_012_725B

    nop
    ld [bc], a
    jr nz, jr_012_72DD

jr_012_72DD:
    add d
    inc bc
    ld bc, $8307
    nop
    sub l
    ld c, b
    adc d
    nop
    sub a
    ld c, b
    add d
    nop
    add h
    jr nz, jr_012_7273

    nop
    sub [hl]
    ld c, b
    add [hl]
    nop
    sub h
    ld c, b
    add l
    ld [$4801], sp
    adc e
    ld [$4890], sp
    adc e
    ld [$4801], sp
    add l
    ld [$488D], sp
    adc b
    ld [$4804], sp
    ld [$4808], sp
    adc b
    ld [$ECC1], sp
    ld c, b
    nop
    adc b
    rst $38
    inc b
    nop
    ld bc, $0302
    sbc d
    rst $38
    ld [bc], a
    inc b
    dec b
    add e
    inc d
    inc bc
    ld b, $07
    ld [$FF97], sp
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0F
    ld l, c
    ld de, $9512
    rst $38
    inc c
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_012_7354

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $94
    rst $38
    inc c
    ld b, [hl]
    ld e, e
    ld hl, $7522
    inc hl
    inc h
    xor $25
    ld h, $14
    daa
    sub e
    rst $38
    ld c, $3F
    inc d

jr_012_7354:
    add hl, hl
    rst $38
    ld a, [hl+]
    dec hl
    inc l
    inc h
    xor $25
    rst $38
    dec l
    ld l, $2F
    sub d
    rst $38
    ld c, $36
    inc d
    ld sp, $32FF
    inc d
    inc sp
    inc h
    xor $25
    rst $38
    inc [hl]
    inc d
    dec [hl]
    sub d
    rst $38
    ld c, $30
    inc d
    scf
    rst $38
    jr c, jr_012_738E

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    rst $38
    dec a
    inc d
    ld a, $92
    rst $38
    ld c, $3F
    inc d
    ld b, b
    rst $38
    jr c, jr_012_739F

    add hl, sp
    ld b, c
    ld b, d

jr_012_738E:
    ld b, e
    rst $38
    ld b, h
    ld l, $45
    sub e
    rst $38
    dec c
    rra
    ld b, a
    ld c, b
    ld c, c
    inc d
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_012_739F:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    sub e
    rst $38
    inc c
    ld d, d
    inc d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    sub l
    rst $38
    ld a, [bc]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec bc
    ld h, [hl]
    sub a
    rst $38
    ld [bc], a
    ld h, a
    ld l, b
    add e
    inc d
    ld b, $10
    ld l, d
    ld l, e
    ld d, c
    ld [hl], d
    ld [hl], e
    sub [hl]
    rst $38
    ld b, $6C
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    sub h
    rst $38
    ld [bc], a
    nop
    inc b
    add d
    ld [bc], a
    dec c
    inc bc
    rst $38
    inc d
    inc sp
    add hl, sp
    ld a, [hl+]
    scf
    ld h, $28
    add hl, sp
    ld l, $3B
    ld a, [hl+]
    sub b
    rst $38
    ld de, $3214
    ld h, $2C
    ld l, $33
    ld h, $39
    ld l, $34
    inc sp
    rst $38
    ld c, $34
    scf
    dec [hl]
    ld bc, $FF8D
    inc d
    rla
    ld l, $28
    ld a, [hl+]
    inc sp
    jr c, jr_012_7433

    add hl, hl
    rst $38
    daa
    ld a, $FF
    add hl, de
    ld l, $33
    add hl, sp
    ld a, [hl+]
    inc sp
    add hl, hl
    inc [hl]
    pop bc
    db $EC
    rst $38
    nop
    add hl, sp
    daa
    ld a, [de]
    rra
    inc bc
    ldh a, [rP1]
    ld [$88F0], sp
    ldh a, [rDIV]
    ld hl, sp+$54
    xor b
    ld hl, sp+$40
    ldh a, [$A0]
    ldh a, [$A0]
    ld a, [hl]
    inc a
    ld a, h
    nop

jr_012_7433:
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    ld h, b
    ldh a, [$60]
    ldh a, [rP1]
    sub b
    ld h, b
    ld [hl], b
    jr nz, jr_012_74B4

    jr nz, @-$06

    ld h, b
    db $FC
    nop
    add [hl]
    ld a, b
    add d
    ld a, h
    cp $00
    ccf
    rlca
    rlca
    inc bc
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    jr jr_012_749B

    dec de
    rra
    nop
    ldh [rLCDC], a
    ldh [$C0], a
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    nop
    inc b
    inc bc
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    ld [$1728], sp
    jr nc, jr_012_748C

    rra
    nop
    add b
    nop
    ret nz

    nop
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $8838
    ld [hl], b
    sbc b

jr_012_748C:
    ld h, b
    ldh [rP1], a
    ld a, [c]
    xor h
    db $E4
    ret c

    ld hl, sp+$00
    db $FC
    add b
    db $FC
    nop
    ld hl, sp+$30

jr_012_749B:
    ld a, b
    jr nc, jr_012_74CE

    nop
    inc c
    ldh a, [$3C]
    ret z

    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$C0], a
    ret nz

    nop
    db $F4
    xor b
    ld a, [c]
    xor h
    db $E4

jr_012_74B4:
    ret c

    cp $00
    rst $38
    add [hl]
    rst $38
    ld b, $06
    nop
    nop
    nop
    ld [hl+], a
    db $FC
    inc c
    ldh a, [$3C]
    ret nz

    cp $0C
    cp $04
    db $FC
    nop
    ldh [$C0], a
    ret nz

jr_012_74CE:
    nop
    rlca
    ld bc, $000F
    rra
    nop
    ccf
    nop
    ld a, a
    jr @+$01

    nop
    nop
    nop
    nop
    nop
    db $FC
    ldh [$FE], a
    inc c
    db $FC
    nop
    cp $0C
    cp $0C
    adc h
    nop
    nop
    nop
    nop
    nop
    rra
    inc bc
    rra
    add hl, bc
    rrca
    nop

jr_012_74F5:
    rra
    nop
    ccf
    ld b, $7F
    ld d, $00
    nop
    nop
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    add b

jr_012_7507:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_012_74F5

    jr c, jr_012_7507

    add sp, $70
    xor $30
    rst $28
    sub $FF
    and [hl]
    sbc a
    ld l, e
    ld c, a
    scf
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    db $FC
    ld b, b
    ld hl, sp-$80
    ld hl, sp+$00
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    daa
    ld a, [de]
    rra
    inc bc
    rlca
    ld bc, $0007
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    ld [hl], e
    inc c
    ld hl, sp+$6F
    ld hl, sp+$5F
    ld b, h
    ccf
    jr nc, jr_012_7578

    inc e
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
    nop

jr_012_7578:
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    nop
    nop
    nop
    nop

jr_012_7583:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    ld a, h
    add b
    ld de, $200F
    rra
    ld a, [hl+]
    dec d
    rra
    ld [bc], a
    rrca
    inc b
    rrca
    inc b
    rlca
    nop
    nop
    nop
    ld a, h
    ret nz

    ld hl, sp-$20
    call z, $E230
    call c, $D8E4
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    ccf
    nop
    ld a, b
    rlca
    ld [hl], b
    rrca
    jr nc, jr_012_75D6

    ld c, a
    inc a
    ld c, a
    dec sp
    adc a
    ld [hl], a
    ld e, a
    inc l
    ret nz

    nop
    jr nz, jr_012_7583

    db $10
    ldh [$08], a
    ldh a, [rOBP0]
    or b
    add sp, $50
    ldh a, [$E0]
    ldh a, [$80]
    ccf
    rlca
    ccf
    nop
    ld a, a
    nop
    rst $38

jr_012_75D6:
    ld h, b
    ei
    ld h, b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    ld h, [hl]
    rst $38
    ei
    rst $38
    cp a
    ld a, a
    and b
    ld [c], a
    dec e
    add e
    ld a, h
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$80], a
    sub b
    ld h, b
    db $10
    ldh [$F0], a
    nop
    nop
    nop
    ld b, a
    ld a, [hl-]
    daa
    ld a, [de]
    rra
    ld bc, $007F
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld h, a
    nop
    ld bc, $F800
    ret nc

    ld hl, sp-$30
    ldh a, [$E0]
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    ld hl, sp-$80
    add [hl]
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld [hl], d
    di
    ld l, h
    db $E3
    ld e, h
    jp nz, Jump_012_443C

    jr c, jr_012_76A6

    nop
    nop
    nop
    ld h, b
    nop
    sub b
    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    ld b, b
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
    ld b, $00
    rrca
    ld b, $FF
    and [hl]
    cp $C0
    ldh a, [rP1]
    ldh [$80], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ret z

    jr nc, jr_012_767A

    ldh a, [rNR32]
    ld hl, sp+$22
    db $FC
    inc c
    ldh a, [$30]
    ret nz

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
    jr jr_012_7679

jr_012_7679:
    inc a

jr_012_767A:
    nop
    jr jr_012_767D

jr_012_767D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_76A6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_012_773C:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    push bc
    ld c, b
    adc b
    nop
    add d
    ld bc, $4896
    adc b
    nop
    add d
    ld hl, $4896
    adc b
    nop
    ld [bc], a
    ld bc, $B121
    ld c, b
    add l
    rrca
    ld bc, $8548
    rrca
    ld bc, $8848
    rrca
    sub c
    ld c, b
    add d
    rrca
    ld bc, $8648
    rrca
    ld [bc], a
    ld c, b
    rrca
    jp nz, Jump_012_4890

    nop
    ret nz

    push bc
    rst $38
    ld a, [bc]
    ret nc

    pop de
    jp nc, $D4D3

    push de
    sub $D7
    ret c

    reti


    sub [hl]
    rst $38
    ld a, [bc]
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    push hl
    and $E7
    jp hl


    add sp, -$6A
    rst $38
    ld [$F1F0], sp
    ld a, [c]
    di
    db $F4
    push af
    or $F7
    add d
    ld hl, sp-$4F
    rst $38
    rlca
    inc c
    ld a, [hl-]
    add hl, hl
    ld l, $34
    rst $38
    rra
    add d
    inc [hl]
    dec bc
    ld sp, $FF38
    rla
    ld l, $28
    ld a, [hl+]
    inc sp
    jr c, jr_012_77E7

    add hl, hl
    sub c
    rst $38
    dec bc
    daa
    ld a, $FF
    ld de, $2826
    add hl, sp
    inc [hl]
    scf
    rst $38
    rlca
    jp nz, $FF90

    nop
    add d
    add hl, bc
    add [hl]
    ld [$2884], sp
    add [hl]
    ld [$2882], sp
    adc h
    nop
    add d
    add hl, bc
    add [hl]
    ld [$2884], sp
    add [hl]
    ld [$2882], sp
    adc h

jr_012_77E7:
    nop
    add h
    add hl, bc
    add h
    ld [$2882], sp
    add h
    add hl, bc
    add h
    ld [$2882], sp
    adc h
    nop
    add h
    add hl, bc
    add h
    ld [$2882], sp
    add h
    add hl, bc
    add h
    ld [$2882], sp
    adc h
    nop
    add h
    add hl, bc
    ld bc, $8900
    inc bc
    add d
    ld [$0983], sp
    ld bc, $8C08
    nop
    add h
    add hl, bc
    ld bc, $8900
    inc bc
    add d
    ld [$0983], sp
    ld bc, $8C08
    nop
    add h
    add hl, bc
    ld bc, $8900
    inc bc
    add d
    ld [$0983], sp
    ld bc, $8C08
    nop
    add h
    add hl, bc
    adc e
    inc bc
    ld [bc], a
    ld [$8204], sp
    add hl, bc
    ld bc, $8C07
    nop
    add h
    ld bc, $038A
    add d
    ld [$0090], sp
    add h
    add hl, bc
    adc d
    inc bc
    ld [bc], a
    ld [$9006], sp
    nop
    ld [bc], a
    ld b, $08
    add d
    nop
    adc d
    inc bc
    add d
    nop
    add d
    rlca
    add d
    ld b, $8C
    nop
    ld [bc], a
    ld [$8207], sp
    nop
    ld bc, $8906
    ld bc, $0082
    add d
    rlca
    add d
    ld b, $8C
    nop
    add d
    inc b
    add d
    ld [$0987], sp
    add h
    add hl, hl
    ld bc, $8207
    ld b, $82
    inc c
    adc h
    nop
    add d
    inc b
    ld bc, $8407
    ld bc, $0886
    add e
    ld hl, $0682
    add d
    inc c
    adc h
    nop
    add e
    ld c, $83
    dec c
    ld bc, $8601
    ld [$0D01], sp
    add l
    ld c, $01
    inc c
    adc h
    nop
    add [hl]
    ld c, $01
    ld bc, $0886
    add [hl]
    ld c, $01
    inc c
    adc h
    nop
    add [hl]
    ld c, $86
    rrca
    ld bc, $8608
    ld c, $01
    rrca
    adc h
    nop
    add [hl]
    ld c, $86
    rrca
    ld bc, $8608
    ld c, $01
    rrca
    pop bc
    call z, RST_00
    ld b, $00
    ld bc, $0302
    inc b
    dec b
    add d
    cp $03
    dec b
    inc b
    inc bc
    add d
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    add d
    cp $02
    dec b
    inc b
    adc h
    add b
    ld b, $10
    ld de, $1312
    inc d
    dec d
    add d
    cp $03
    dec d
    inc d
    inc de
    add d
    ld [de], a
    inc bc
    inc de
    inc d
    dec d
    add d
    cp $02
    dec d
    inc d
    adc h
    add b
    inc d
    jr nz, jr_012_791A

    ld [hl+], a
    inc hl
    ld [bc], a
    inc bc
    inc h
    dec h
    inc bc
    ld [bc], a
    ld h, $27
    jr z, jr_012_792E

    ld [bc], a
    inc bc
    inc h
    dec h
    inc bc
    ld [bc], a
    adc h
    add b
    inc d
    jr nc, jr_012_7941

    ld [hl-], a
    inc sp
    ld [de], a
    inc de
    inc [hl]
    dec [hl]
    inc de
    ld [de], a
    ld [hl], $37

jr_012_791A:
    jr c, @+$3B

    ld [de], a
    inc de
    inc [hl]
    dec [hl]
    inc de
    ld [de], a
    adc h
    add b
    ld c, $40
    ld b, c
    ld b, d
    ld b, e
    nop
    ld bc, $0302
    inc b

jr_012_792E:
    dec b
    ld b, $07
    ld [$8209], sp
    xor $04
    ld e, h
    ld e, l
    ld e, [hl]
    xor $8C
    add b
    ld c, $50
    ld d, c

Call_012_793F:
    ld d, d
    ld d, e

jr_012_7941:
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_7964

    add d
    xor $04
    ld l, h
    ld l, l
    ld l, [hl]
    xor $8C
    add b
    ld c, $60
    ld h, c
    ld h, d
    ld h, e
    jr nz, jr_012_797C

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_012_798C

    add d

jr_012_7964:
    xor $04
    ld a, h
    ld a, l
    ld a, [hl]
    xor $8C
    add b
    inc d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jr nc, jr_012_79A4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_012_79B4

    ld a, [hl-]

jr_012_797C:
    xor $70
    ld l, d
    ld l, e
    ld [hl], b
    adc h
    add b
    ld c, $7A
    ld a, e
    ld a, h
    ld a, l
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_012_798C:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add d
    xor $04
    dec bc
    inc c
    dec c
    ld c, $8C
    add b
    inc d
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_012_79A4:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    xor $70
    dec de
    inc e
    dec e
    ld e, $8C
    add b
    inc d
    ld [hl], b

jr_012_79B4:
    ld [hl], h
    dec bc
    inc c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    dec bc
    inc c
    dec hl
    inc l
    dec hl
    inc l
    adc h
    add b
    inc d
    ld [hl], h
    ld [hl], b
    dec de
    inc e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    dec de
    inc e
    dec sp
    inc a
    dec sp
    inc a
    adc h
    add b
    ld [bc], a
    dec l
    ld l, $82
    ld [hl], h
    db $10
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, b
    ld [hl], a
    halt
    ld [hl], l
    ld [hl], b
    dec l
    ld l, $06
    rlca
    adc h
    add b
    rlca
    dec a
    ld a, $70
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    add [hl]
    xor $07
    ld c, h
    ld c, e
    ld c, d
    dec a
    ld a, $16
    rla
    adc h
    add b
    rlca
    ld b, $07
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld e, d
    add [hl]
    xor $07
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0F
    dec hl
    adc h
    add b
    rlca
    ld d, $17
    ld d, [hl]
    ld d, a
    ld e, $1F
    ld l, d
    add [hl]
    xor $07
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1F
    dec sp
    adc h
    add b
    inc d
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2F
    ld b, $07
    ld [$0E09], sp
    rrca
    xor $2A
    dec hl
    inc l
    dec l
    ld l, $2F
    rlca
    adc h
    add b
    inc d
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3F
    ld d, $17
    jr jr_012_7A6F

    ld e, $1F
    xor $3A
    dec sp
    inc a
    dec a
    ld a, $3F
    rla
    pop bc
    call z, $0080
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_7A6F:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
