; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld [hl+], a
    dec d
    ld c, b
    dec d
    sbc a
    ld b, b
    ld [hl+], a
    dec d
    ld c, b
    dec d
    rst $38
    ld b, h
    ld [hl+], a
    dec d
    ld c, b
    dec d
    ld de, $224A
    dec d
    ld c, b
    dec d
    and a
    ld c, [hl]
    ld [hl+], a
    dec d
    ld c, b
    dec d
    cp e
    ld d, [hl]
    or [hl]
    dec [hl]
    and b
    ld bc, $0801
    jr nz, jr_015_406E

    add hl, bc
    ld h, c
    ld b, l
    or [hl]
    dec [hl]
    and b
    ld [bc], a
    ld bc, $1304
    ld c, b
    add hl, bc
    ld h, c
    ld b, l
    or [hl]
    dec [hl]
    and b
    inc b
    ld bc, $1415
    ld c, b
    add hl, bc
    ld h, c
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    dec d
    ld d, h
    ld b, b
    ld b, [hl]
    rrca
    nop
    ld c, d
    and b
    ld [bc], a
    dec b
    nop
    add hl, bc
    db $D3
    ld b, l
    or [hl]
    dec [hl]
    and b
    jr nz, jr_015_409F

    rrca
    nop
    dec [hl]
    and b
    ld [$0005], sp
    dec d
    ld l, [hl]
    ld b, b
    or [hl]
    dec [hl]
    and b
    ld [$1201], sp
    add hl, bc
    ld c, b
    add hl, bc
    ld h, c
    ld b, l

jr_015_406E:
    ld b, [hl]
    nop
    dec [hl]
    and b
    ld [$8115], sp
    ld b, b
    or [hl]
    dec [hl]
    and b
    ld [$1F01], sp
    inc de
    ld c, b
    add hl, bc
    db $10
    ld c, d
    ld bc, $0912
    ld c, b
    add hl, bc
    ld h, c
    ld b, l
    ld b, [hl]
    nop
    dec [hl]
    and b
    db $10
    dec d
    sbc b
    ld b, b
    or [hl]
    dec [hl]
    and b
    db $10
    ld c, b
    add hl, bc
    rst $20
    ld c, b
    ld bc, $0304
    ld c, b
    add hl, bc
    ld h, c
    ld b, l

jr_015_409F:
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
    or [hl]
    ld d, e
    inc de
    ld h, a
    add h
    ld c, h
    dec b
    nop
    inc [hl]
    ld h, e
    add hl, bc
    ld de, $D0D5
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
    ld b, $11
    jp nc, $00D0

    ld de, $75F4
    dec d
    and a
    ld b, c
    dec b
    inc b
    pop hl
    ld [hl], b
    ld bc, $B50F
    ret nc

    nop
    ld de, $75F4
    dec d
    and a

jr_015_40E3:
    ld b, c
    dec b
    dec b
    pop hl

jr_015_40E7:
    ld [hl], b
    ld b, $0B
    adc d

jr_015_40EB:
    ret nc

    nop
    ld de, $75F4
    dec d
    and a
    ld b, c

jr_015_40F3:
    dec b
    ld b, $E1
    ld [hl], b
    ld [$980C], sp
    ret nc

    nop
    ld de, $75F4
    dec d
    and a
    ld b, c
    dec b
    rlca
    pop hl
    ld [hl], b
    add hl, bc
    dec b
    ld b, l
    ret nc

    nop
    ld de, $75F4
    dec d
    and a
    ld b, c
    dec b
    ld [$70E1], sp
    inc bc
    ld b, $4B
    ret nc

    nop
    ld de, $75F4
    dec d
    and a
    ld b, c
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
    ld [$206E], sp
    add hl, de
    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_015_40E3

    db $FD
    or l
    jr z, jr_015_40E7

    ei
    or l
    jr z, jr_015_40EB

    rst $30
    or l
    jr z, @-$5E

    rst $28
    or l
    jr z, jr_015_40F3

    rst $18
    sbc e
    dec d
    ld e, c
    ld b, c
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
    jr nz, jr_015_41BA

    ld h, l
    ld [hl], e
    ld [hl], h

jr_015_416B:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_41B6

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    ld a, [hl]
    ld b, c
    dec d
    ld [hl+], a
    ld b, b
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_015_4182:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    sub l
    ld b, c
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_015_4199:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_015_41A6

    ld a, d
    jr nz, @+$7A

    ld c, b
    dec d
    and e

jr_015_41A6:
    ld b, b
    or e
    ld sp, $01C7
    ld c, e
    add hl, bc
    nop
    dec d
    ld a, [hl]

jr_015_41B0:
    ld b, c
    inc d
    ld de, $75F4
    ld b, l

jr_015_41B6:
    dec d
    ld de, $7675

jr_015_41BA:
    jr z, jr_015_41CD

    db $F4
    ld [hl], l
    jr jr_015_41D1

    ld c, [hl]
    halt
    jr z, jr_015_41D5

    db $F4
    ld [hl], l
    nop

jr_015_41C7:
    nop
    or l
    jr z, jr_015_416B

    cp $45

jr_015_41CD:
    dec d
    ld de, $769C

jr_015_41D1:
    jr jr_015_41E4

    db $F4
    ld [hl], l

jr_015_41D5:
    jr jr_015_41E8

    jp $1876


    ld de, $75F4
    nop

jr_015_41DE:
    nop
    or l
    jr z, jr_015_4182

    cp $45

jr_015_41E4:
    dec d
    ld de, $764E

jr_015_41E8:
    jr z, jr_015_41FB

    db $F4
    ld [hl], l
    jr jr_015_41FF

    ld [hl], l
    halt
    jr z, jr_015_4203

    db $F4
    ld [hl], l
    nop

jr_015_41F5:
    nop
    or l
    jr z, jr_015_4199

    db $FD
    ld b, l

jr_015_41FB:
    dec d
    ld de, $7675

jr_015_41FF:
    jr z, jr_015_4212

    db $F4
    ld [hl], l

jr_015_4203:
    jr jr_015_4216

    ld c, [hl]
    halt
    jr z, jr_015_421A

    db $F4
    ld [hl], l
    nop

jr_015_420C:
    nop
    or l
    jr z, jr_015_41B0

    ei
    ld b, l

jr_015_4212:
    dec d
    ld de, $769C

jr_015_4216:
    db $10
    ld de, $75F4

jr_015_421A:
    jr jr_015_422D

    jp $1076


    ld de, $75F4
    nop

jr_015_4223:
    nop
    or l
    jr z, jr_015_41C7

    ei
    ld b, l
    dec d
    ld de, $769C

jr_015_422D:
    jr z, jr_015_4240

    db $F4
    ld [hl], l
    jr jr_015_4244

    jp $2876


    ld de, $75F4
    nop

jr_015_423A:
    nop
    or l
    jr z, jr_015_41DE

    rst $30
    ld b, l

jr_015_4240:
    dec d
    ld de, $7675

jr_015_4244:
    jr z, jr_015_4257

    db $F4
    ld [hl], l
    jr jr_015_425B

    ld c, [hl]
    halt

jr_015_424C:
    jr z, jr_015_425F

    db $F4
    ld [hl], l
    nop
    nop

jr_015_4252:
    or l
    jr z, jr_015_41F5

    rst $28
    ld b, l

jr_015_4257:
    dec d
    ld de, $76C3

jr_015_425B:
    jr nc, jr_015_426E

    db $F4

jr_015_425E:
    ld [hl], l

jr_015_425F:
    jr jr_015_4272

    sbc h
    halt

jr_015_4263:
    jr nc, jr_015_4276

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_420C

    rst $28
    ld b, l

jr_015_426E:
    dec d

jr_015_426F:
    ld de, $764E

jr_015_4272:
    jr jr_015_4285

    db $F4

jr_015_4275:
    ld [hl], l

jr_015_4276:
    jr jr_015_4289

    ld [hl], l
    halt
    jr jr_015_428D

    db $F4
    ld [hl], l
    nop
    nop
    or l

jr_015_4281:
    jr z, jr_015_4223

    rst $18
    ld b, l

jr_015_4285:
    dec d
    ld de, $76C3

jr_015_4289:
    ld [$F411], sp
    ld [hl], l

jr_015_428D:
    jr jr_015_42A0

    sbc h
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_423A

    rst $18
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_4240

jr_015_42A0:
    ld bc, $AD15
    ld b, d
    add hl, bc

jr_015_42A5:
    inc bc
    dec d
    call $B641
    jr z, jr_015_424C

    ld bc, $4645
    nop
    jr z, jr_015_4252

    ld [bc], a
    dec d
    cp a
    ld b, d
    add hl, bc

jr_015_42B7:
    inc b
    dec d
    db $E4
    ld b, c
    or [hl]
    jr z, jr_015_425E

    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_015_4263

    ld bc, $D015
    ld b, d
    add hl, bc
    inc bc

jr_015_42C9:
    dec d
    call $B641
    jr z, jr_015_426F

jr_015_42CF:
    ld bc, $4645
    nop
    jr z, jr_015_4275

    ld [bc], a
    dec d
    ld [c], a
    ld b, d
    add hl, bc
    inc b

jr_015_42DB:
    dec d
    db $E4
    ld b, c
    or [hl]
    jr z, jr_015_4281

jr_015_42E1:
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $F415
    ld b, d
    add hl, bc
    inc bc

jr_015_42ED:
    dec d
    or [hl]
    ld b, c
    or [hl]
    jr z, @-$5E

jr_015_42F3:
    ld bc, $4645
    nop
    jr z, @-$5E

    inc b
    dec d
    ld b, $43
    add hl, bc
    dec b

jr_015_42FF:
    dec d
    ei
    ld b, c
    or [hl]
    jr z, jr_015_42A5

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    dec d
    jr @+$45

    add hl, bc
    dec b
    dec d
    ld [de], a
    ld b, d
    or [hl]
    jr z, jr_015_42B7

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$2A15], sp
    ld b, e
    add hl, bc
    ld b, $15
    add hl, hl
    ld b, d
    or [hl]
    jr z, jr_015_42C9

    ld [$4645], sp
    nop
    jr z, jr_015_42CF

    db $10
    dec d
    inc a
    ld b, e
    add hl, bc
    rlca
    dec d
    ld d, a
    ld b, d
    or [hl]
    jr z, jr_015_42DB

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_42E1

    db $10
    dec d
    ld c, [hl]
    ld b, e
    add hl, bc
    rlca
    dec d
    ld b, b
    ld b, d
    or [hl]
    jr z, jr_015_42ED

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_42F3

    jr nz, jr_015_436A

    ld h, b
    ld b, e
    add hl, bc
    ld [$6E15], sp
    ld b, d
    or [hl]
    jr z, jr_015_42FF

    jr nz, jr_015_43A6

    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]

jr_015_436A:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_43D5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_43DE

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    cp h
    ld b, e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4405

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_440F

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_43FD

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD

jr_015_43A6:
    ld b, [hl]
    stop
    dec [hl]
    and b
    ld bc, $0005
    dec d
    ld hl, sp+$43
    and c
    xor l
    ld e, [hl]
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld e, $40
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4435

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_443F

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4443

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_4406

    dec [hl]

jr_015_43D5:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_43DE:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec [hl]
    and b
    ld bc, $0005
    dec d
    ld hl, sp+$43
    and c
    xor l
    ld e, [hl]
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld e, $40
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_43FD:
    ld bc, $A15E
    dec d
    ld [hl], a
    ld b, h
    sbc a
    ld e, [hl]

jr_015_4405:
    and c

jr_015_4406:
    ld b, [hl]
    rrca
    ld bc, $A15E
    dec b
    ld bc, $3D15

jr_015_440F:
    ld b, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_4479

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
    jr nz, jr_015_4492

    ld [hl], e
    cp $FC
    jr nz, jr_015_448F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_4435:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    ld e, $40
    and [hl]
    ld d, h

jr_015_443F:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_4443:
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
    jr nz, jr_015_44A3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_44D1

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
    dec d
    ld e, $40
    sbc a
    ld e, [hl]

jr_015_4479:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_015_447F:
    ld l, h
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l

jr_015_448B:
    jr nz, jr_015_44F5

    ld h, c
    halt

jr_015_448F:
    ld h, l
    jr nz, jr_015_4505

jr_015_4492:
    ld h, l
    ld [hl], h
    jr nz, jr_015_44F7

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_44E4

    ld l, c

jr_015_449D:
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a

jr_015_44A3:
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
    jr nz, jr_015_450D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4537

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_4527

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

jr_015_44D1:
    xor l
    ld e, [hl]
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld e, $40
    ld b, [hl]
    nop
    jr z, jr_015_447F

    jr nz, jr_015_44F6

    db $EC
    ld b, h
    add hl, bc

jr_015_44E4:
    ld [$8515], sp
    ld b, d
    or [hl]
    jr z, jr_015_448B

    jr nz, jr_015_4532

    ld b, [hl]
    nop
    jr z, @-$5E

    db $10
    dec d
    cp $44

jr_015_44F5:
    add hl, bc

jr_015_44F6:
    rlca

jr_015_44F7:
    dec d
    ld b, b
    ld b, d
    or [hl]
    jr z, jr_015_449D

    db $10
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397

jr_015_4505:
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c

jr_015_450D:
    ld e, b
    ld a, b
    inc d
    ld l, b
    push bc
    ld d, e
    inc de
    ld h, a
    cp c
    ld c, h
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $5908
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de

Call_015_4524:
    add sp, $46
    dec b

jr_015_4527:
    ld [bc], a
    pop hl
    ld [hl], b
    ld [bc], a
    ld bc, $D00D
    nop
    ld de, $75F4

jr_015_4532:
    dec d
    call $0545

jr_015_4536:
    inc bc

jr_015_4537:
    pop hl
    ld [hl], b
    inc b

jr_015_453A:
    inc b
    jr nc, jr_015_450D

    nop

jr_015_453E:
    ld de, $75F4
    dec d
    call $0545
    inc b
    pop hl
    ld [hl], b
    inc bc
    dec b
    ld a, [hl-]
    ret nc

    nop
    ld de, $75F4
    dec d
    call $0545
    dec b
    pop hl
    ld [hl], b
    inc bc
    ld b, $45
    ret nc

    nop
    ld de, $75F4
    dec d
    call $0545
    ld b, $E1
    ld [hl], b

Jump_015_4566:
    inc bc
    rlca
    ld d, b
    ret nc

    nop
    ld de, $75F4
    dec d
    call $0B45
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
    ld b, $6E
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_015_4532

    db $FD
    or l
    jr z, jr_015_4536

    ei
    or l
    jr z, jr_015_453A

    rst $30
    or l
    jr z, jr_015_453E

    rst $28
    or e
    add hl, hl
    and c
    nop
    sbc e
    dec d

jr_015_45A5:
    xor b
    ld b, l
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F

jr_015_45B1:
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_015_4609

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_4605

    ld a, b
    ld l, c

jr_015_45C2:
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    call c, $1545
    dec l
    ld b, b
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    inc c
    nop

jr_015_45D4:
    inc d
    ld de, $75F4
    ld c, b

jr_015_45D9:
    dec d
    call c, Call_015_4645
    ld de, $3201
    and c
    dec b
    cp $15
    rst $28

jr_015_45E5:
    ld b, l
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

jr_015_45F7:
    ld a, d
    jr nz, jr_015_4600

    ld a, d
    jr nz, jr_015_4675

    ld c, b
    dec d
    inc bc

jr_015_4600:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_45A5

jr_015_4605:
    ld bc, $1215

jr_015_4608:
    ld b, [hl]

jr_015_4609:
    add hl, bc
    ld [bc], a
    dec d
    inc d
    ld c, c

jr_015_460E:
    or [hl]
    jr z, jr_015_45B1

    ld bc, $0046
    jr z, @-$5E

    ld [$2315], sp
    ld b, [hl]

jr_015_461A:
    add hl, bc
    ld b, $15
    or l
    ld c, c
    or [hl]

jr_015_4620:
    jr z, jr_015_45C2

    ld [$4645], sp
    nop
    jr z, @-$5E

    ld bc, $3515
    ld b, [hl]

jr_015_462C:
    add hl, bc
    ld [bc], a
    dec d
    inc d
    ld c, c
    or [hl]

jr_015_4632:
    jr z, jr_015_45D4

    ld bc, $0046
    jr z, jr_015_45D9

    inc b
    dec d
    ld b, [hl]
    ld b, [hl]
    add hl, bc

jr_015_463E:
    dec b
    dec d
    ld [hl], b
    ld c, c
    or [hl]
    jr z, jr_015_45E5

Call_015_4645:
    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $5815
    ld b, [hl]
    add hl, bc

jr_015_4650:
    ld [bc], a
    dec d
    inc d
    ld c, c
    or [hl]
    jr z, jr_015_45F7

    ld bc, $0046
    jr z, @-$5E

    ld [bc], a
    dec d
    ld l, c
    ld b, [hl]
    add hl, bc
    inc b

jr_015_4662:
    dec d
    ld b, d
    ld c, c
    or [hl]
    jr z, jr_015_4608

jr_015_4668:
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_460E

    ld bc, $7B15
    ld b, [hl]
    add hl, bc
    ld [bc], a

jr_015_4674:
    dec d

jr_015_4675:
    inc d
    ld c, c
    or [hl]
    jr z, jr_015_461A

    ld bc, $4645
    nop
    jr z, jr_015_4620

    ld [$8D15], sp
    ld b, [hl]
    add hl, bc
    ld b, $15
    or l
    ld c, c
    or [hl]
    jr z, jr_015_462C

    ld [$4645], sp
    nop
    jr z, jr_015_4632

    inc b
    dec d
    sbc a
    ld b, [hl]
    add hl, bc
    dec b
    dec d
    ld [hl], b
    ld c, c
    or [hl]
    jr z, jr_015_463E

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [bc], a
    dec d
    or c
    ld b, [hl]
    add hl, bc
    inc b
    dec d
    ld b, d
    ld c, c
    or [hl]
    jr z, jr_015_4650

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

jr_015_46B6:
    ld bc, $C315
    ld b, [hl]
    add hl, bc
    ld [bc], a
    dec d
    dec hl
    ld c, c
    or [hl]
    jr z, jr_015_4662

jr_015_46C2:
    ld bc, $4645
    nop
    jr z, jr_015_4668

jr_015_46C8:
    db $10
    dec d
    push de
    ld b, [hl]
    add hl, bc
    inc bc
    dec d
    ld a, [$B649]
    jr z, jr_015_4674

jr_015_46D4:
    db $10
    ld b, l
    ld e, $05
    sub a
    or e

jr_015_46DA:
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

jr_015_46E6:
    db $E3
    ld d, e
    inc de
    ld h, a
    ld b, e
    ld c, l
    dec b
    nop
    inc [hl]
    ld h, e

jr_015_46F0:
    inc c
    rlca
    ld l, d
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec bc

jr_015_46FC:
    nop
    sbc e
    dec d
    xor b
    ld b, l
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    add h
    ld b, $0A
    ld [hl], $D1
    call c, Call_015_4524
    ld b, [hl]
    nop
    jr z, jr_015_46B6

    ld [bc], a
    dec d
    inc hl
    ld b, a
    add hl, bc
    inc b
    dec d
    ld e, c
    ld c, c
    or [hl]
    jr z, jr_015_46C2

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_46C8

    inc b
    dec d
    dec [hl]
    ld b, a
    add hl, bc
    dec b
    dec d
    add a
    ld c, c
    or [hl]
    jr z, jr_015_46D4

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_46DA

    ld [$4715], sp
    ld b, a
    add hl, bc
    ld b, $15
    sbc [hl]
    ld c, c
    or [hl]
    jr z, jr_015_46E6

    ld [$4545], sp
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_46F0

    ld bc, $5D15
    ld b, a
    add hl, bc
    ld [bc], a
    dec d
    db $FD
    ld c, b
    or [hl]
    jr z, jr_015_46FC

    ld bc, $2245
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_47D2

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_47DB

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    cp c
    ld b, a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4802

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_480C

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_47FA

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
    dec [hl]
    and b
    ld [bc], a
    dec b
    nop
    dec d
    push af
    ld b, a
    and c
    xor l
    ld e, a
    and c
    ld bc, $A132
    ld c, b
    dec d
    add hl, hl
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4832

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_483C

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4840

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_4803

    dec [hl]

jr_015_47D2:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_47DB:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec [hl]
    and b
    ld [bc], a
    dec b
    nop
    dec d
    push af
    ld b, a
    and c
    xor l
    ld e, a
    and c
    ld bc, $A132
    ld c, b
    dec d
    add hl, hl
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_47FA:
    ld bc, $A15F
    dec d
    ld [hl], h
    ld c, b
    sbc a
    ld e, a

jr_015_4802:
    and c

jr_015_4803:
    ld b, [hl]
    rrca
    ld bc, $A15F
    dec b
    ld bc, $3A15

jr_015_480C:
    ld c, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_4876

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
    jr nz, jr_015_4873

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_488F

    ld [hl], e
    cp $FC
    jr nz, jr_015_488C

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_4832:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    add hl, hl
    ld b, b
    and [hl]
    ld d, h

jr_015_483C:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_4840:
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
    jr nz, jr_015_48A0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_48CE

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
    dec d
    add hl, hl

jr_015_4873:
    ld b, b
    sbc a
    ld e, a

jr_015_4876:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_015_487D:
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_48F2

    ld h, c
    halt

jr_015_488C:
    ld h, l
    jr nz, @+$75

jr_015_488F:
    ld h, l
    ld [hl], h
    jr nz, jr_015_48F4

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_48E1

    ld l, c
    ld h, a

jr_015_489B:
    ld l, b
    jr nz, jr_015_48F1

    ld h, e
    ld l, a

jr_015_48A0:
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

jr_015_48B2:
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
    ld [hl], e
    cp $FC
    jr nz, jr_015_4924

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_48C9:
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_015_48CE:
    xor l
    ld e, a
    and c
    ld bc, $A132
    ld c, b
    dec d
    add hl, hl
    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_487D

    ld [$EA15], sp

jr_015_48E0:
    ld c, b

jr_015_48E1:
    add hl, bc
    ld b, $15
    call z, $B649
    jr z, @-$5E

    ld [$4645], sp
    nop
    jr z, jr_015_488F

    db $10
    dec d

jr_015_48F1:
    db $FC

jr_015_48F2:
    ld c, b
    add hl, bc

jr_015_48F4:
    ld b, $15
    db $E3

jr_015_48F7:
    ld c, c
    or [hl]
    jr z, jr_015_489B

    db $10
    ld b, l
    dec d
    ld de, $7675
    ld [$F411], sp
    ld [hl], l
    jr jr_015_4918

    ld c, [hl]
    halt
    ld [$F411], sp
    ld [hl], l
    nop

jr_015_490E:
    nop
    or l
    jr z, jr_015_48B2

    cp $45
    dec d
    ld de, $76C3

jr_015_4918:
    jr c, jr_015_492B

    db $F4
    ld [hl], l
    jr jr_015_492F

    sbc h
    halt
    jr c, jr_015_4933

    db $F4
    ld [hl], l

jr_015_4924:
    nop

jr_015_4925:
    nop
    or l
    jr z, jr_015_48C9

    cp $45

jr_015_492B:
    dec d
    ld de, $764E

jr_015_492F:
    jr z, jr_015_4942

    db $F4
    ld [hl], l

jr_015_4933:
    jr jr_015_4946

    ld [hl], l
    halt
    jr z, jr_015_494A

    db $F4
    ld [hl], l
    nop

jr_015_493C:
    nop
    or l
    jr z, jr_015_48E0

    cp $45

jr_015_4942:
    dec d
    ld de, $7675

jr_015_4946:
    db $10
    ld de, $75F4

jr_015_494A:
    jr jr_015_495D

    ld c, [hl]
    halt
    db $10
    ld de, $75F4
    nop

jr_015_4953:
    nop
    or l
    jr z, jr_015_48F7

    db $FD
    ld b, l
    dec d
    ld de, $764E

jr_015_495D:
    jr z, jr_015_4970

    db $F4
    ld [hl], l
    jr jr_015_4974

    ld [hl], l
    halt
    jr z, jr_015_4978

    db $F4
    ld [hl], l
    nop

jr_015_496A:
    nop
    or l
    jr z, jr_015_490E

    db $FD
    ld b, l

jr_015_4970:
    dec d
    ld de, $7675

jr_015_4974:
    db $10
    ld de, $75F4

jr_015_4978:
    jr jr_015_498B

    ld c, [hl]
    halt
    db $10
    ld de, $75F4
    nop

jr_015_4981:
    nop
    or l
    jr z, jr_015_4925

    ei
    ld b, l
    dec d
    ld de, $764E

jr_015_498B:
    jr nz, jr_015_499E

    db $F4
    ld [hl], l
    jr jr_015_49A2

    ld [hl], l
    halt
    jr nz, jr_015_49A6

    db $F4
    ld [hl], l
    nop

jr_015_4998:
    nop
    or l
    jr z, jr_015_493C

    ei
    ld b, l

jr_015_499E:
    dec d
    ld de, $764E

jr_015_49A2:
    jr nz, jr_015_49B5

    db $F4
    ld [hl], l

jr_015_49A6:
    jr jr_015_49B9

    ld [hl], l
    halt
    jr nz, jr_015_49BD

    db $F4
    ld [hl], l
    nop

jr_015_49AF:
    nop
    or l
    jr z, jr_015_4953

    rst $30
    ld b, l

jr_015_49B5:
    dec d
    ld de, $7675

jr_015_49B9:
    db $10
    ld de, $75F4

jr_015_49BD:
    jr jr_015_49D0

    ld c, [hl]
    halt
    db $10
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_496A

    rst $30
    ld b, l
    dec d
    ld de, $76C3

jr_015_49D0:
    ld [$F411], sp
    ld [hl], l
    jr jr_015_49E7

    sbc h
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_4981

    rst $30
    ld b, l
    dec d
    ld de, $76C3

jr_015_49E7:
    jr nz, jr_015_49FA

    db $F4
    ld [hl], l
    jr jr_015_49FE

    sbc h
    halt
    jr nz, jr_015_4A02

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_4998

    rst $28
    ld b, l

jr_015_49FA:
    dec d
    ld de, $764E

jr_015_49FE:
    jr z, jr_015_4A11

    db $F4
    ld [hl], l

jr_015_4A02:
    jr @+$13

    ld [hl], l
    halt
    jr z, @+$13

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_49AF

    rst $28
    ld b, l

jr_015_4A11:
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
    call nc, $1353
    ld h, a
    ld c, $4D
    dec b
    nop
    inc [hl]
    ld h, e
    inc b
    rlca
    ld l, l
    ret nc

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
    ld [$6206], sp
    ret nc

    nop
    ld de, $75F4
    dec d
    dec d
    ld c, e
    dec b
    inc b
    pop hl
    ld [hl], b
    ld bc, $4C05
    ret nc

    nop
    ld de, $75F4
    dec d
    dec d

jr_015_4A55:
    ld c, e
    dec b
    dec b
    pop hl

jr_015_4A59:
    ld [hl], b
    add hl, bc
    inc c
    cp l

jr_015_4A5D:
    ret nc

    nop
    ld de, $75F4
    dec d
    dec d
    ld c, e

jr_015_4A65:
    dec b
    ld b, $E1
    ld [hl], b
    ld a, [bc]
    inc c
    cp [hl]
    ret nc

    nop
    ld de, $75F4
    dec d
    dec d
    ld c, e
    dec b
    rlca
    pop hl
    ld [hl], b
    dec bc
    ld [bc], a
    add hl, hl
    ret nc

    nop
    ld de, $75F4
    dec d
    dec d
    ld c, e
    dec b
    ld [$70E1], sp
    dec b
    ld [$D07D], sp
    nop
    ld de, $75F4
    dec d
    dec d
    ld c, e
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
    ld [$206E], sp
    add hl, de
    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_015_4A55

    db $FD
    or l
    jr z, jr_015_4A59

    ei
    or l
    jr z, jr_015_4A5D

    rst $30
    or l
    jr z, @-$5E

    rst $28
    or l
    jr z, jr_015_4A65

    rst $18
    sbc e
    dec d
    bit 1, d
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
    jr nz, jr_015_4B2C

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_4B28

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    ldh a, [rWY]
    dec d
    jr c, jr_015_4B2F

    ld b, l

jr_015_4AF0:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    inc bc
    ld c, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_015_4B07:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_015_4B14

    ld a, d
    jr nz, @+$7A

    ld c, b
    dec d
    dec d

jr_015_4B14:
    ld c, d
    or e
    ld sp, $01C7
    ld c, e
    inc c
    nop
    inc d
    ld de, $75F4
    ld c, b
    dec d
    ldh a, [rWY]
    dec d
    ld de, $7675

jr_015_4B28:
    jr nz, jr_015_4B3B

    db $F4
    ld [hl], l

jr_015_4B2C:
    jr jr_015_4B3F

    ld c, [hl]

jr_015_4B2F:
    halt
    jr nz, jr_015_4B43

    db $F4
    ld [hl], l
    nop

jr_015_4B35:
    nop
    or l
    jr z, @-$5E

    cp $45

jr_015_4B3B:
    dec d
    ld de, $76C3

jr_015_4B3F:
    jr jr_015_4B52

    db $F4
    ld [hl], l

jr_015_4B43:
    jr jr_015_4B56

    sbc h
    halt
    jr jr_015_4B5A

    db $F4
    ld [hl], l
    nop

jr_015_4B4C:
    nop
    or l
    jr z, jr_015_4AF0

    cp $45

jr_015_4B52:
    dec d
    ld de, $764E

jr_015_4B56:
    ld b, b
    ld de, $75F4

jr_015_4B5A:
    jr jr_015_4B6D

    ld [hl], l
    halt
    ld b, b
    ld de, $75F4
    nop

jr_015_4B63:
    nop
    or l
    jr z, jr_015_4B07

    db $FD
    ld b, l
    dec d
    ld de, $769C

jr_015_4B6D:
    jr z, jr_015_4B80

    db $F4
    ld [hl], l
    jr jr_015_4B84

    jp $2876


    ld de, $75F4
    nop

jr_015_4B7A:
    nop
    or l
    jr z, @-$5E

    ei
    ld b, l

jr_015_4B80:
    dec d
    ld de, $769C

jr_015_4B84:
    jr nc, jr_015_4B97

    db $F4
    ld [hl], l
    jr jr_015_4B9B

    jp $3076


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_4B35

    rst $30
    ld b, l

jr_015_4B97:
    dec d
    ld de, $76C3

jr_015_4B9B:
    ld d, b
    ld de, $75F4
    jr jr_015_4BB2

    sbc h
    halt
    ld d, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_4B4C

    rst $28
    ld b, l
    dec d
    ld de, $764E

jr_015_4BB2:
    ld b, b
    ld de, $75F4
    jr jr_015_4BC9

    ld [hl], l
    halt
    ld b, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_4B63

    rst $18
    ld b, l
    dec d
    ld de, $76C3

jr_015_4BC9:
    jr z, jr_015_4BDC

    db $F4
    ld [hl], l
    jr jr_015_4BE0

    sbc h
    halt
    jr z, jr_015_4BE4

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_4B7A

    rst $18
    ld b, l

jr_015_4BDC:
    ld e, $05
    sub a
    or e

jr_015_4BE0:
    ld sp, $00C7
    or e

jr_015_4BE4:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    db $E3
    ld d, e
    inc de
    ld h, a
    ld b, e
    ld c, l
    dec b
    nop
    inc [hl]
    ld h, e
    dec l
    dec b
    daa
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec bc
    nop
    sbc e
    dec d
    bit 1, d
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
    jr nz, jr_015_4C85

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_4C8E

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    ld l, h
    ld c, h
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4CB5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_4CBF

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_4CAD

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
    dec [hl]
    and b
    inc b
    dec b
    nop
    dec d
    xor b
    ld c, h
    and c
    xor l
    ld h, b
    and c
    ld bc, $A132
    ld c, b
    dec d
    inc [hl]
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_4CE5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_4CEF

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4CF3

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_4CB6

    dec [hl]

jr_015_4C85:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_4C8E:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec [hl]
    and b
    inc b
    dec b
    nop
    dec d
    xor b
    ld c, h
    and c
    xor l
    ld h, b
    and c
    ld bc, $A132
    ld c, b
    dec d
    inc [hl]
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_4CAD:
    ld bc, $A160
    dec d
    daa
    ld c, l
    sbc a
    ld h, b

jr_015_4CB5:
    and c

jr_015_4CB6:
    ld b, [hl]
    rrca
    ld bc, $A160
    dec b
    ld bc, $ED15

jr_015_4CBF:
    ld c, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_4D29

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
    jr nz, jr_015_4D26

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4D42

    ld [hl], e
    cp $FC
    jr nz, jr_015_4D3F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_4CE5:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    inc [hl]
    ld b, b
    and [hl]
    ld d, h

jr_015_4CEF:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_4CF3:
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
    jr nz, jr_015_4D53

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_4D81

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
    dec d
    inc [hl]

jr_015_4D26:
    ld b, b
    sbc a
    ld h, b

jr_015_4D29:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_015_4D2F:
    ld l, h
    jr nz, jr_015_4D96

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l

jr_015_4D3B:
    jr nz, jr_015_4DA5

    ld h, c
    halt

jr_015_4D3F:
    ld h, l
    jr nz, @+$75

jr_015_4D42:
    ld h, l
    ld [hl], h
    jr nz, jr_015_4DA7

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_4D94

    ld l, c

jr_015_4D4D:
    ld h, a
    ld l, b
    jr nz, jr_015_4DA4

    ld h, e
    ld l, a

jr_015_4D53:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_4DCC

    ld [hl], d
    ld h, l
    halt

jr_015_4D5F:
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b

jr_015_4D65:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_4DBD

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_4DE7

    ld h, c

jr_015_4D71:
    ld [hl], e
    cp $FC
    jr nz, jr_015_4DD7

    ld [hl], h

jr_015_4D77:
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_015_4D81:
    xor l
    ld h, b

jr_015_4D83:
    and c
    ld bc, $A132
    ld c, b
    dec d

jr_015_4D89:
    inc [hl]
    ld b, b
    ld b, [hl]
    nop
    jr z, jr_015_4D2F

    ld bc, $9C15
    ld c, l
    add hl, bc

jr_015_4D94:
    inc bc

jr_015_4D95:
    dec d

jr_015_4D96:
    inc h
    ld c, e
    or [hl]
    jr z, jr_015_4D3B

jr_015_4D9B:
    ld bc, $4645
    nop
    jr z, @-$5E

    ld [bc], a
    dec d
    xor [hl]

jr_015_4DA4:
    ld c, l

jr_015_4DA5:
    add hl, bc
    inc b

jr_015_4DA7:
    dec d
    ld d, d
    ld c, e
    or [hl]
    jr z, jr_015_4D4D

jr_015_4DAD:
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_4D53

    ld bc, $C015
    ld c, l
    add hl, bc
    inc bc

jr_015_4DB9:
    dec d
    dec sp
    ld c, e
    or [hl]

jr_015_4DBD:
    jr z, jr_015_4D5F

    ld bc, $4645
    nop
    jr z, jr_015_4D65

    inc b
    dec d
    jp nc, $094D

jr_015_4DCA:
    dec b
    dec d

jr_015_4DCC:
    ld l, c
    ld c, e
    or [hl]
    jr z, jr_015_4D71

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_4D77

jr_015_4DD7:
    ld [$E415], sp
    ld c, l
    add hl, bc

jr_015_4DDC:
    ld b, $15
    add b
    ld c, e
    or [hl]

jr_015_4DE1:
    jr z, jr_015_4D83

    ld [$4645], sp
    nop

jr_015_4DE7:
    jr z, jr_015_4D89

    db $10
    dec d
    or $4D

jr_015_4DED:
    add hl, bc
    rlca
    dec d
    sub a
    ld c, e
    or [hl]

jr_015_4DF3:
    jr z, jr_015_4D95

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_4D9B

    jr nz, jr_015_4E12

    ld [$094E], sp
    ld [$AE15], sp
    ld c, e

jr_015_4E04:
    or [hl]
    jr z, jr_015_4DA7

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, jr_015_4DAD

    ld bc, $1A15

jr_015_4E10:
    ld c, [hl]
    add hl, bc

jr_015_4E12:
    inc bc
    dec d
    dec sp
    ld c, e

jr_015_4E16:
    or [hl]
    jr z, jr_015_4DB9

    ld bc, $0046
    jr z, @-$5E

    jr nz, jr_015_4E35

    dec hl
    ld c, [hl]

jr_015_4E22:
    add hl, bc
    ld [$AE15], sp
    ld c, e

jr_015_4E27:
    or [hl]
    jr z, jr_015_4DCA

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    dec d
    dec a

jr_015_4E33:
    ld c, [hl]
    add hl, bc

jr_015_4E35:
    dec b
    dec d
    ld l, c
    ld c, e

jr_015_4E39:
    or [hl]
    jr z, jr_015_4DDC

    inc b
    ld b, [hl]
    nop
    jr z, jr_015_4DE1

    jr nz, jr_015_4E58

    ld c, [hl]
    ld c, [hl]

jr_015_4E45:
    add hl, bc
    ld [$AE15], sp
    ld c, e
    or [hl]
    jr z, jr_015_4DED

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, jr_015_4DF3

    ld [$6015], sp
    ld c, [hl]
    add hl, bc

jr_015_4E58:
    ld b, $15
    add b
    ld c, e
    or [hl]
    jr z, @-$5E

    ld [$0046], sp
    jr z, jr_015_4E04

    jr nz, jr_015_4E7B

    ld [hl], c
    ld c, [hl]
    add hl, bc
    ld [$AE15], sp
    ld c, e
    or [hl]
    jr z, jr_015_4E10

    jr nz, jr_015_4EB7

    ld b, [hl]
    nop
    jr z, jr_015_4E16

    db $10
    dec d
    add e
    ld c, [hl]
    add hl, bc

jr_015_4E7B:
    rlca
    dec d
    sub a
    ld c, e
    or [hl]
    jr z, jr_015_4E22

    db $10
    ld b, [hl]
    nop
    jr z, jr_015_4E27

    jr nz, jr_015_4E9E

    sub h
    ld c, [hl]
    add hl, bc
    ld [$AE15], sp
    ld c, e
    or [hl]
    jr z, jr_015_4E33

    jr nz, jr_015_4EDA

    ld b, [hl]
    nop
    jr z, jr_015_4E39

    jr nz, jr_015_4EB0

    and [hl]
    ld c, [hl]
    add hl, bc

jr_015_4E9E:
    ld [$C515], sp
    ld c, e
    or [hl]
    jr z, jr_015_4E45

    jr nz, jr_015_4EEC

    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7

jr_015_4EB0:
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b

jr_015_4EB7:
    inc d
    ld l, b
    db $E3
    ld d, e
    inc de
    ld h, a
    ld b, e
    ld c, l
    dec b
    nop
    inc [hl]
    ld h, e
    dec c
    dec d
    daa
    call nc, $1400
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    inc c
    ld [de], a
    sub b
    db $D3
    nop
    ld de, $75F4

jr_015_4EDA:
    dec d
    ld a, [c]
    ld c, a
    dec b
    inc b
    pop hl
    ld [hl], b
    ld c, $11
    ld h, b
    db $D3
    nop
    ld de, $75F4
    dec d
    ld a, [c]
    ld c, a

jr_015_4EEC:
    dec b
    dec b
    pop hl
    ld [hl], b
    inc de
    db $10
    inc sp
    db $D3
    nop
    ld de, $75F4
    dec d
    ld a, [c]
    ld c, a
    dec b
    ld b, $E1
    ld [hl], b
    inc de
    inc d
    ei
    db $D3
    nop
    ld de, $75F4
    dec d
    ld a, [c]
    ld c, a
    dec b
    rlca
    pop hl
    ld [hl], b
    dec d
    rrca
    inc bc
    db $D3
    nop
    ld de, $75F4
    dec d
    ld a, [c]
    ld c, a
    dec b
    ld [$70E1], sp
    dec de

jr_015_4F1E:
    ld de, $D36D
    nop

jr_015_4F22:
    ld de, $75F4
    dec d

jr_015_4F26:
    ld a, [c]
    ld c, a
    dec b
    add hl, bc

jr_015_4F2A:
    pop hl
    ld [hl], b
    add hl, de
    ld d, $65
    call nc, $1100

jr_015_4F32:
    db $F4
    ld [hl], l
    dec d
    ld a, [c]

jr_015_4F36:
    ld c, a
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    add hl, de
    rla
    sub a
    call nc, $1100
    db $F4
    ld [hl], l
    dec d
    ld a, [c]
    ld c, a
    dec b
    dec bc
    pop hl
    ld [hl], b
    jr jr_015_4F65

    ld a, [$00D4]
    ld de, $75F4
    dec d
    ld a, [c]
    ld c, a
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

jr_015_4F65:
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_015_4F1E

    db $FD
    or l
    jr z, jr_015_4F22

    ei
    or l
    jr z, jr_015_4F26

    rst $30
    or l
    jr z, jr_015_4F2A

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, jr_015_4F32

    cp a
    or l
    jr z, jr_015_4F36

    ld a, a
    or l
    add hl, hl
    and b
    cp $B3
    add hl, hl
    and c
    nop
    or e
    ld a, [hl+]
    and c
    nop
    sbc e
    dec d
    xor b
    ld c, a
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
    jr nz, jr_015_5009

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_5005

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    call $154F
    add c
    ld b, b
    ld b, l

jr_015_4FCD:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    ldh [rVBK], a
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_015_4FE4:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_015_4FF1

    ld a, d
    jr nz, @+$7A

    ld c, b
    dec d
    xor e

jr_015_4FF1:
    ld c, [hl]
    or e
    ld sp, $01C7
    ld c, e
    inc c
    nop
    inc d
    ld de, $75F4
    ld c, b
    dec d
    call $154F
    ld de, $764E

jr_015_5005:
    ld c, b
    ld de, $75F4

jr_015_5009:
    jr jr_015_501C

    ld [hl], l
    halt
    ld c, b
    ld de, $75F4
    nop

jr_015_5012:
    nop
    or l
    jr z, @-$5E

    cp $45
    dec d
    ld de, $76C3

jr_015_501C:
    jr c, jr_015_502F

    db $F4
    ld [hl], l
    jr jr_015_5033

    sbc h
    halt
    jr c, jr_015_5037

    db $F4
    ld [hl], l
    nop

jr_015_5029:
    nop
    or l
    jr z, jr_015_4FCD

    db $FD
    ld b, l

jr_015_502F:
    dec d
    ld de, $764E

jr_015_5033:
    jr z, jr_015_5046

    db $F4
    ld [hl], l

jr_015_5037:
    jr jr_015_504A

    ld [hl], l
    halt
    jr z, jr_015_504E

    db $F4
    ld [hl], l
    nop

jr_015_5040:
    nop
    or l
    jr z, jr_015_4FE4

    db $FD
    ld b, l

jr_015_5046:
    dec d
    ld de, $7675

jr_015_504A:
    jr nz, jr_015_505D

    db $F4
    ld [hl], l

jr_015_504E:
    jr jr_015_5061

    ld c, [hl]
    halt
    jr nz, jr_015_5065

    db $F4
    ld [hl], l
    nop

jr_015_5057:
    nop
    or l
    jr z, @-$5E

    ei
    ld b, l

jr_015_505D:
    dec d
    ld de, $76C3

jr_015_5061:
    db $10
    ld de, $75F4

jr_015_5065:
    jr jr_015_5078

    sbc h
    halt
    db $10
    ld de, $75F4
    nop

jr_015_506E:
    nop
    or l
    jr z, jr_015_5012

    ei
    ld b, l
    dec d
    ld de, $7675

jr_015_5078:
    jr z, jr_015_508B

    db $F4
    ld [hl], l
    jr jr_015_508F

    ld c, [hl]
    halt
    jr z, jr_015_5093

    db $F4
    ld [hl], l
    nop

jr_015_5085:
    nop
    or l
    jr z, jr_015_5029

    rst $30
    ld b, l

jr_015_508B:
    dec d
    ld de, $76C3

jr_015_508F:
    jr jr_015_50A2

    db $F4
    ld [hl], l

jr_015_5093:
    jr jr_015_50A6

    sbc h
    halt
    jr jr_015_50AA

    db $F4
    ld [hl], l
    nop

jr_015_509C:
    nop
    or l
    jr z, jr_015_5040

    rst $30
    ld b, l

jr_015_50A2:
    dec d
    ld de, $764E

jr_015_50A6:
    jr nc, jr_015_50B9

    db $F4
    ld [hl], l

jr_015_50AA:
    jr jr_015_50BD

    ld [hl], l
    halt
    jr nc, jr_015_50C1

    db $F4
    ld [hl], l
    nop

jr_015_50B3:
    nop
    or l
    jr z, jr_015_5057

    rst $28
    ld b, l

jr_015_50B9:
    dec d
    ld de, $76C3

jr_015_50BD:
    jr z, jr_015_50D0

    db $F4
    ld [hl], l

jr_015_50C1:
    jr jr_015_50D4

    sbc h
    halt
    jr z, jr_015_50D8

    db $F4
    ld [hl], l
    nop

jr_015_50CA:
    nop
    or l
    jr z, jr_015_506E

    rst $28
    ld b, l

jr_015_50D0:
    dec d
    ld de, $7675

jr_015_50D4:
    jr nc, jr_015_50E7

    db $F4
    ld [hl], l

jr_015_50D8:
    jr jr_015_50EB

    ld c, [hl]
    halt
    jr nc, jr_015_50EF

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_5085

    rst $18
    ld b, l

jr_015_50E7:
    dec d
    ld de, $769C

jr_015_50EB:
    db $10
    ld de, $75F4

jr_015_50EF:
    jr jr_015_5102

    jp $1076


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_509C

    rst $18
    ld b, l
    dec d
    ld de, $7675

jr_015_5102:
    jr nc, jr_015_5115

    db $F4
    ld [hl], l
    jr jr_015_5119

    ld c, [hl]
    halt
    jr nc, jr_015_511D

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_50B3

    cp a
    ld b, l

jr_015_5115:
    dec d
    ld de, $7675

jr_015_5119:
    jr nc, jr_015_512C

    db $F4
    ld [hl], l

jr_015_511D:
    jr jr_015_5130

    ld c, [hl]
    halt
    jr nc, jr_015_5134

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_50CA

    ld a, a
    ld b, l

jr_015_512C:
    dec d
    ld de, $769C

jr_015_5130:
    jr nc, jr_015_5143

    db $F4
    ld [hl], l

jr_015_5134:
    jr @+$13

    jp $3076


    ld de, $75F4
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_015_5143:
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
    jr nz, jr_015_51B7

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_51C0

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    sbc [hl]
    ld d, c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_51E7

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_51F1

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_51DF

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
    dec [hl]
    and b
    ld [$0005], sp
    dec d
    jp c, $A151

    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld l, [hl]
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_5217

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_5221

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5225

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_51E8

    dec [hl]

jr_015_51B7:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_51C0:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec [hl]
    and b
    ld [$0005], sp
    dec d
    jp c, $A151

    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld l, [hl]
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_51DF:
    ld bc, $A161
    dec d
    ld e, c
    ld d, d
    sbc a
    ld h, c

jr_015_51E7:
    and c

jr_015_51E8:
    ld b, [hl]
    rrca
    ld bc, $A161
    dec b
    ld bc, $1F15

jr_015_51F1:
    ld d, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_525B

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
    jr nz, jr_015_5258

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5274

    ld [hl], e
    cp $FC
    jr nz, jr_015_5271

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_5217:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    ld l, [hl]
    ld b, b
    and [hl]
    ld d, h

jr_015_5221:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_5225:
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
    jr nz, jr_015_5285

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_52B3

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
    dec d
    ld l, [hl]

jr_015_5258:
    ld b, b
    sbc a
    ld h, c

jr_015_525B:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_52D7

    ld h, c
    halt

jr_015_5271:
    ld h, l
    jr nz, jr_015_52E7

jr_015_5274:
    ld h, l

jr_015_5275:
    ld [hl], h
    jr nz, jr_015_52D9

    cp $6E
    ld h, l

jr_015_527B:
    ld [hl], a
    jr nz, jr_015_52C6

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_52D6

    ld h, e
    ld l, a

jr_015_5285:
    ld [hl], d
    ld h, l

jr_015_5287:
    ld hl, $54FE
    ld l, b
    ld h, l

jr_015_528C:
    jr nz, jr_015_52FE

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

jr_015_5298:
    ld h, a
    ld l, b
    jr nz, jr_015_52EF

    ld h, e
    ld l, a

jr_015_529E:
    ld [hl], d
    ld h, l
    jr nz, jr_015_5319

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h

jr_015_52AA:
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_52AF:
    ld l, $FE
    db $FD
    and c

jr_015_52B3:
    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d

jr_015_52BB:
    ld l, [hl]
    ld b, b
    ld c, b
    dec d
    ld de, $484C
    dec d
    ld e, [hl]
    ld b, a
    ld b, [hl]

jr_015_52C6:
    nop
    jr z, @-$5E

    ld [bc], a
    dec d
    sub $52

jr_015_52CD:
    add hl, bc
    inc b
    dec d
    jr @+$52

    or [hl]

jr_015_52D3:
    jr z, jr_015_5275

    ld [bc], a

jr_015_52D6:
    ld b, l

jr_015_52D7:
    ld b, [hl]
    nop

jr_015_52D9:
    jr z, jr_015_527B

    ld [bc], a
    dec d
    add sp, $52

jr_015_52DF:
    add hl, bc
    inc b
    dec d
    jr @+$52

    or [hl]

jr_015_52E5:
    jr z, jr_015_5287

jr_015_52E7:
    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_015_528C

    ld [$F915], sp

jr_015_52EF:
    ld d, d
    add hl, bc

jr_015_52F1:
    ld b, $15
    ld [hl], h
    ld d, b
    or [hl]

jr_015_52F6:
    jr z, jr_015_5298

    ld [$4645], sp
    nop
    jr z, jr_015_529E

jr_015_52FE:
    ld bc, $0B15
    ld d, e

jr_015_5302:
    add hl, bc
    inc bc
    dec d
    ld bc, $B650

jr_015_5308:
    jr z, jr_015_52AA

    ld bc, $0046
    jr z, jr_015_52AF

    ld [bc], a
    dec d
    inc e
    ld d, e
    add hl, bc

jr_015_5314:
    inc b
    dec d
    jr jr_015_5368

    or [hl]

jr_015_5319:
    jr z, jr_015_52BB

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$2E15], sp
    ld d, e

jr_015_5325:
    add hl, bc
    ld b, $15
    ld [hl], h
    ld d, b
    or [hl]

jr_015_532B:
    jr z, jr_015_52CD

    ld [$4645], sp
    nop
    jr z, jr_015_52D3

    ld bc, $4015
    ld d, e

jr_015_5337:
    add hl, bc
    inc bc
    dec d
    ld bc, $B650

jr_015_533D:
    jr z, jr_015_52DF

    ld bc, $4645
    nop
    jr z, jr_015_52E5

    ld bc, $5215
    ld d, e

jr_015_5349:
    add hl, bc
    inc bc
    dec d
    ld bc, $B650
    jr z, jr_015_52F1

    ld bc, $0046
    jr z, jr_015_52F6

    inc b
    dec d
    ld h, e
    ld d, e

jr_015_535A:
    add hl, bc
    dec b
    dec d
    ld e, l
    ld d, b
    or [hl]

jr_015_5360:
    jr z, jr_015_5302

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5308

jr_015_5368:
    ld [bc], a
    dec d
    ld [hl], l
    ld d, e

jr_015_536C:
    add hl, bc
    inc b
    dec d
    cpl
    ld d, b
    or [hl]

jr_015_5372:
    jr z, jr_015_5314

    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_015_5319

    inc b
    dec d
    add [hl]
    ld d, e
    add hl, bc

jr_015_537E:
    dec b
    dec d
    ld e, l
    ld d, b
    or [hl]
    jr z, jr_015_5325

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_532B

    db $10
    dec d
    sbc b
    ld d, e
    add hl, bc

jr_015_5390:
    rlca
    dec d
    cp c
    ld d, b
    or [hl]
    jr z, jr_015_5337

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_533D

    db $10
    dec d
    xor d
    ld d, e
    add hl, bc
    rlca
    dec d
    cp c
    ld d, b
    or [hl]
    jr z, jr_015_5349

    db $10
    ld b, [hl]
    nop
    jr z, @-$5E

    jr nz, jr_015_53C5

    cp e
    ld d, e
    add hl, bc
    ld [$D015], sp
    ld d, b
    or [hl]
    jr z, jr_015_535A

    jr nz, jr_015_5401

    ld b, [hl]
    nop

jr_015_53BE:
    jr z, jr_015_5360

    ld [bc], a
    dec d
    call $0953

jr_015_53C5:
    inc b
    dec d
    cpl
    ld d, b
    or [hl]

jr_015_53CA:
    jr z, jr_015_536C

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop

jr_015_53D0:
    jr z, jr_015_5372

    inc b
    dec d
    rst $18
    ld d, e
    add hl, bc
    dec b
    dec d
    ld b, [hl]
    ld d, b
    or [hl]

jr_015_53DC:
    jr z, jr_015_537E

    inc b
    ld b, l
    ld b, [hl]
    nop

jr_015_53E2:
    jr z, @-$5E

    db $10
    dec d
    pop af
    ld d, e
    add hl, bc
    rlca
    dec d
    and d
    ld d, b
    or [hl]

jr_015_53EE:
    jr z, jr_015_5390

    db $10
    ld b, l
    ld e, $05

jr_015_53F4:
    or e
    ld sp, $01C7
    dec b
    nop
    ld hl, sp+$4A
    rla
    dec b
    ld de, $00D1

jr_015_5401:
    inc d
    ld d, a
    ld e, [hl]
    add hl, de

jr_015_5405:
    add sp, $46
    ld [hl], e
    rrca
    rst $38
    ld a, a
    add c
    adc c
    pop bc
    inc b
    ld a, l
    rrca

jr_015_5411:
    rlca
    nop
    inc [hl]
    ld h, e
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_53BE

    jr nz, jr_015_5435

    dec hl
    ld d, h
    add hl, bc

jr_015_5423:
    ld [$E715], sp
    ld d, b
    or [hl]

jr_015_5428:
    jr z, jr_015_53CA

    jr nz, jr_015_5471

    ld b, [hl]
    nop
    jr z, jr_015_53D0

    jr nz, jr_015_5447

    dec a
    ld d, h

jr_015_5434:
    add hl, bc

jr_015_5435:
    ld [$D015], sp
    ld d, b
    or [hl]

jr_015_543A:
    jr z, jr_015_53DC

    jr nz, jr_015_5483

    ld b, [hl]
    nop
    jr z, jr_015_53E2

    ld [$4F15], sp
    ld d, h

jr_015_5446:
    add hl, bc

jr_015_5447:
    ld b, $15
    adc e
    ld d, b
    or [hl]

jr_015_544C:
    jr z, jr_015_53EE

    ld [$4645], sp
    nop
    jr z, jr_015_53F4

    ld [$6115], sp
    ld d, h

jr_015_5458:
    add hl, bc
    ld b, $15
    adc e
    ld d, b
    or [hl]
    jr z, @-$5E

    ld [$0046], sp
    jr z, jr_015_5405

    ld b, b
    dec d
    ld [hl], d
    ld d, h
    add hl, bc
    add hl, bc
    dec d
    cp $50
    or [hl]
    jr z, jr_015_5411

jr_015_5471:
    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$8415], sp
    ld d, h
    add hl, bc

jr_015_547C:
    ld b, $15
    adc e
    ld d, b
    or [hl]
    jr z, jr_015_5423

jr_015_5483:
    ld [$0046], sp
    jr z, jr_015_5428

    add b
    dec d
    sub l
    ld d, h
    add hl, bc
    ld a, [bc]
    dec d
    dec d
    ld d, c
    or [hl]
    jr z, jr_015_5434

    add b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_543A

    ld b, b
    dec d
    and a
    ld d, h
    add hl, bc

jr_015_549F:
    add hl, bc
    dec d
    cp $50
    or [hl]
    jr z, jr_015_5446

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_544C

    add b
    dec d
    cp c
    ld d, h
    add hl, bc
    ld a, [bc]
    dec d
    dec d
    ld d, c
    or [hl]
    jr z, jr_015_5458

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $CB15
    ld d, h
    add hl, bc
    dec bc
    dec d
    inc l
    ld d, c
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    jr z, @-$5E

    add b
    dec d
    db $DD
    ld d, h
    add hl, bc
    ld a, [bc]
    dec d
    dec d
    ld d, c
    or [hl]
    jr z, jr_015_547C

    add b
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $EE15
    ld d, h
    add hl, bc
    dec bc
    dec d
    inc l
    ld d, c
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    jr z, @-$5E

    ld b, b
    dec d
    nop
    ld d, l
    add hl, bc
    add hl, bc
    dec d
    cp $50
    or [hl]
    jr z, jr_015_549F

    ld b, b
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $1115
    ld d, l
    add hl, bc
    dec bc
    dec d
    inc l
    ld d, c
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld bc, $2315
    ld d, l
    add hl, bc
    dec bc
    dec d
    inc l
    ld d, c
    or [hl]
    add hl, hl
    and b
    ld bc, $2245
    ld [bc], a
    or e
    ld sp, $01C7
    ld b, [hl]
    rrca
    nop
    ld c, d
    and b
    ld [bc], a
    dec b
    nop
    dec d
    scf
    ld d, l
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_55A3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_015_5598

    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    adc d
    ld d, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_55D3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_55DD

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_55CB

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
    dec [hl]
    and b
    ld [$0005], sp
    dec d
    add $55
    and c
    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d
    ccf
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_5603

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_560D

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_015_5598:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5611

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_55D4

    dec [hl]

jr_015_55A3:
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
    dec [hl]
    and b
    ld [$0005], sp
    dec d
    add $55
    and c
    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d
    ccf
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_55CB:
    ld bc, $A161
    dec d
    ld b, l
    ld d, [hl]
    sbc a
    ld h, c

jr_015_55D3:
    and c

jr_015_55D4:
    ld b, [hl]
    rrca
    ld bc, $A161
    dec b
    ld bc, $0B15

jr_015_55DD:
    ld d, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_5647

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
    jr nz, jr_015_5644

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5660

    ld [hl], e
    cp $FC
    jr nz, jr_015_565D

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_5603:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    ccf
    ld b, b
    and [hl]
    ld d, h

jr_015_560D:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_5611:
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
    jr nz, jr_015_5671

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_569F

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
    dec d
    ccf

jr_015_5644:
    ld b, b
    sbc a
    ld h, c

jr_015_5647:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_015_564D:
    ld l, h
    jr nz, jr_015_56B4

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l

jr_015_5659:
    jr nz, @+$6A

    ld h, c
    halt

jr_015_565D:
    ld h, l
    jr nz, jr_015_56D3

jr_015_5660:
    ld h, l
    ld [hl], h
    jr nz, jr_015_56C5

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_56B2

    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a

jr_015_5671:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_56EA

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
    jr nz, jr_015_56DB

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5705

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_56F5

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

jr_015_569F:
    xor l
    ld h, c
    and c
    ld bc, $A132
    ld c, b
    dec d
    ccf
    ld b, b
    ld b, [hl]
    nop
    jr z, jr_015_564D

    db $10
    dec d
    cp d
    ld d, [hl]
    add hl, bc

jr_015_56B2:
    rlca
    dec d

jr_015_56B4:
    cp c
    ld d, b
    or [hl]
    jr z, jr_015_5659

    db $10
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_015_56C5:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, [c]
    ld d, e
    inc de
    ld h, a
    cp b
    ld c, l

jr_015_56D3:
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $C312
    pop de

jr_015_56DB:
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
    dec b
    ld de, $D1AE

jr_015_56EA:
    nop
    ld de, $75F4
    dec d
    jr z, jr_015_5749

    dec b
    inc b
    pop hl
    ld [hl], b

jr_015_56F5:
    ld c, $16
    inc [hl]
    jp nc, $1100

    db $F4
    ld [hl], l
    dec d
    jr z, jr_015_5758

    dec b
    dec b
    pop hl
    ld [hl], b
    rrca

jr_015_5705:
    dec d
    inc e
    jp nc, $1100

    db $F4
    ld [hl], l
    dec d
    jr z, jr_015_5767

    dec b
    ld b, $E1
    ld [hl], b
    inc de
    dec bc
    ld h, $D1
    nop
    ld de, $75F4
    dec d
    jr z, jr_015_5776

    dec b
    rlca
    pop hl
    ld [hl], b
    inc d
    inc c
    ld b, b
    pop de
    nop
    ld de, $75F4
    dec d
    jr z, jr_015_5785

    dec b
    ld [$70E1], sp
    dec d
    dec c
    ld e, d
    pop de
    nop
    ld de, $75F4
    dec d
    jr z, jr_015_5794

    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld d, $0E
    ld [hl], h
    pop de
    nop
    ld de, $75F4
    dec d

jr_015_5749:
    jr z, @+$5A

    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    inc d
    dec b
    sub c
    ret nc

    nop

jr_015_5754:
    ld de, $75F4
    dec d

jr_015_5758:
    jr z, jr_015_57B2

    dec b
    dec bc

jr_015_575C:
    pop hl
    ld [hl], b
    db $10
    ld b, $A6
    ret nc

    nop
    ld de, $75F4
    dec d

jr_015_5767:
    jr z, jr_015_57C1

    dec b
    ld [de], a
    pop hl

jr_015_576C:
    ld [hl], b
    db $10
    inc b
    ld [hl], h
    ret nc

    nop
    ld de, $75F4
    dec d

jr_015_5776:
    jr z, jr_015_57D0

    dec b
    inc de
    pop hl
    ld [hl], b
    inc c
    dec b
    adc c
    ret nc

    nop
    ld de, $75F4
    dec d

jr_015_5785:
    jr z, jr_015_57DF

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

jr_015_5794:
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5

jr_015_57B2:
    jr z, jr_015_5754

    db $FD
    or l
    jr z, jr_015_5758

    ei
    or l
    jr z, jr_015_575C

    rst $30
    or l
    jr z, @-$5E

    rst $28

jr_015_57C1:
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, @-$5E

    cp a
    or l
    jr z, jr_015_576C

    ld a, a
    or l
    add hl, hl
    and b

jr_015_57D0:
    cp $B5
    add hl, hl
    and b
    db $FD
    or l
    add hl, hl
    and b
    ei
    sbc e
    dec d
    sbc $57
    ld b, l
    sbc [hl]

jr_015_57DF:
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_015_583F

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_583B

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    inc bc
    ld e, b
    dec d
    sbc b
    ld b, b
    ld b, l

jr_015_5803:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    ld d, $58
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_015_581A:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_015_5827

    ld a, d
    jr nz, @+$7A

    ld c, b
    dec d
    cp a

jr_015_5827:
    ld d, [hl]
    or e
    ld sp, $01C7
    ld c, e
    inc c
    nop
    inc d
    ld de, $75F4
    ld c, b
    dec d
    inc bc
    ld e, b
    dec d
    ld de, $7675

jr_015_583B:
    jr jr_015_584E

    db $F4
    ld [hl], l

jr_015_583F:
    jr jr_015_5852

    ld c, [hl]
    halt
    jr jr_015_5856

    db $F4
    ld [hl], l
    nop

jr_015_5848:
    nop
    or l
    jr z, @-$5E

    cp $45

jr_015_584E:
    dec d
    ld de, $764E

jr_015_5852:
    jr nc, jr_015_5865

    db $F4
    ld [hl], l

jr_015_5856:
    jr jr_015_5869

    ld [hl], l
    halt
    jr nc, jr_015_586D

    db $F4
    ld [hl], l
    nop

jr_015_585F:
    nop
    or l
    jr z, jr_015_5803

    cp $45

jr_015_5865:
    dec d
    ld de, $769C

jr_015_5869:
    db $10
    ld de, $75F4

jr_015_586D:
    jr jr_015_5880

    jp $1076


    ld de, $75F4
    nop

jr_015_5876:
    nop
    or l
    jr z, jr_015_581A

    cp $45
    dec d
    ld de, $7675

jr_015_5880:
    jr nz, jr_015_5893

    db $F4
    ld [hl], l
    jr nz, jr_015_5897

    ld c, [hl]
    halt
    jr nz, jr_015_589B

    db $F4
    ld [hl], l
    nop

jr_015_588D:
    nop
    or l
    jr z, @-$5E

    db $FD
    ld b, l

jr_015_5893:
    dec d
    ld de, $769C

jr_015_5897:
    ld [$F411], sp
    ld [hl], l

jr_015_589B:
    jr jr_015_58AE

    jp $0876


    ld de, $75F4
    nop

jr_015_58A4:
    nop
    or l
    jr z, jr_015_5848

    db $FD
    ld b, l
    dec d
    ld de, $769C

jr_015_58AE:
    jr jr_015_58C1

    db $F4
    ld [hl], l
    jr jr_015_58C5

    jp $1876


    ld de, $75F4
    nop

jr_015_58BB:
    nop
    or l
    jr z, jr_015_585F

    ei
    ld b, l

jr_015_58C1:
    dec d
    ld de, $7675

jr_015_58C5:
    jr nc, jr_015_58D8

    db $F4
    ld [hl], l
    jr jr_015_58DC

    ld c, [hl]
    halt
    jr nc, jr_015_58E0

    db $F4
    ld [hl], l
    nop

jr_015_58D2:
    nop
    or l
    jr z, jr_015_5876

    ei
    ld b, l

jr_015_58D8:
    dec d
    ld de, $7675

jr_015_58DC:
    jr z, jr_015_58EF

    db $F4
    ld [hl], l

jr_015_58E0:
    jr jr_015_58F3

    ld c, [hl]
    halt
    jr z, jr_015_58F7

    db $F4
    ld [hl], l
    nop

jr_015_58E9:
    nop
    or l
    jr z, jr_015_588D

    rst $30
    ld b, l

jr_015_58EF:
    dec d
    ld de, $76C3

jr_015_58F3:
    jr nz, jr_015_5906

    db $F4
    ld [hl], l

jr_015_58F7:
    jr jr_015_590A

    sbc h
    halt
    jr nz, jr_015_590E

    db $F4
    ld [hl], l
    nop

jr_015_5900:
    nop
    or l
    jr z, jr_015_58A4

    rst $30
    ld b, l

jr_015_5906:
    dec d
    ld de, $76C3

jr_015_590A:
    jr jr_015_591D

    db $F4
    ld [hl], l

jr_015_590E:
    jr jr_015_5921

    sbc h
    halt
    jr jr_015_5925

    db $F4
    ld [hl], l
    nop

jr_015_5917:
    nop
    or l
    jr z, jr_015_58BB

    rst $28
    ld b, l

jr_015_591D:
    dec d
    ld de, $7675

jr_015_5921:
    jr nc, jr_015_5934

    db $F4
    ld [hl], l

jr_015_5925:
    jr jr_015_5938

    ld c, [hl]
    halt
    jr nc, jr_015_593C

    db $F4
    ld [hl], l
    nop

jr_015_592E:
    nop
    or l
    jr z, jr_015_58D2

    rst $28
    ld b, l

jr_015_5934:
    dec d
    ld de, $76C3

jr_015_5938:
    db $10
    ld de, $75F4

jr_015_593C:
    jr jr_015_594F

    sbc h
    halt
    db $10
    ld de, $75F4
    nop

jr_015_5945:
    nop
    or l
    jr z, jr_015_58E9

    rst $18
    ld b, l
    dec d
    ld de, $7675

jr_015_594F:
    jr nz, jr_015_5962

    db $F4
    ld [hl], l
    jr jr_015_5966

    ld c, [hl]
    halt
    jr nz, jr_015_596A

    db $F4
    ld [hl], l
    nop

jr_015_595C:
    nop
    or l
    jr z, jr_015_5900

    rst $18
    ld b, l

jr_015_5962:
    dec d
    ld de, $764E

jr_015_5966:
    ld [$F411], sp
    ld [hl], l

jr_015_596A:
    jr jr_015_597D

    ld [hl], l
    halt
    ld [$F411], sp
    ld [hl], l
    nop

jr_015_5973:
    nop
    or l
    jr z, jr_015_5917

    rst $18
    ld b, l
    dec d
    ld de, $7675

jr_015_597D:
    jr jr_015_5990

    db $F4
    ld [hl], l
    jr jr_015_5994

    ld c, [hl]
    halt
    jr jr_015_5998

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_592E

    cp a
    ld b, l

jr_015_5990:
    dec d
    ld de, $76C3

jr_015_5994:
    ld [$F411], sp
    ld [hl], l

jr_015_5998:
    jr jr_015_59AB

    sbc h
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_5945

    cp a
    ld b, l
    dec d
    ld de, $769C

jr_015_59AB:
    jr jr_015_59BE

    db $F4
    ld [hl], l
    jr jr_015_59C2

    jp $1876


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_015_595C

    cp a
    ld b, l

jr_015_59BE:
    dec d
    ld de, $7675

jr_015_59C2:
    jr jr_015_59D5

    db $F4
    ld [hl], l
    jr jr_015_59D9

    ld c, [hl]
    halt
    jr jr_015_59DD

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_015_5973

    ld a, a
    ld b, l

jr_015_59D5:
    dec d
    ld de, $7675

jr_015_59D9:
    jr jr_015_59EC

    db $F4
    ld [hl], l

jr_015_59DD:
    jr jr_015_59F0

    ld c, [hl]
    halt
    jr jr_015_59F4

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_015_59EC:
    dec d
    ld de, $764E

jr_015_59F0:
    jr jr_015_5A03

    db $F4
    ld [hl], l

jr_015_59F4:
    jr jr_015_5A07

    ld [hl], l
    halt
    jr jr_015_5A0B

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_015_5A03:
    dec d
    ld de, $764E

jr_015_5A07:
    jr jr_015_5A1A

    db $F4
    ld [hl], l

jr_015_5A0B:
    jr jr_015_5A1E

    ld [hl], l
    halt
    jr jr_015_5A22

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_015_5A1A:
    dec d
    ld de, $7675

jr_015_5A1E:
    jr jr_015_5A31

    db $F4
    ld [hl], l

jr_015_5A22:
    jr jr_015_5A35

    ld c, [hl]
    halt
    jr jr_015_5A39

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_015_5A31:
    dec d
    ld de, $764E

jr_015_5A35:
    jr jr_015_5A48

    db $F4
    ld [hl], l

jr_015_5A39:
    jr @+$13

    ld [hl], l
    halt
    jr jr_015_5A50

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    ei
    ld b, l

jr_015_5A48:
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop

jr_015_5A50:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_5ABC

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_5AC5

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    and e
    ld e, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_5AEC

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_5AF6

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_5AE4

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
    dec [hl]
    and b
    db $10
    dec b
    nop
    dec d
    rst $18
    ld e, d
    and c
    xor l
    ld h, d
    and c
    ld bc, $A132
    ld c, b
    dec d
    adc b
    ld b, b
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_5B1C

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_5B26

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5B2A

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_5AED

    dec [hl]

jr_015_5ABC:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_5AC5:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec [hl]
    and b
    db $10
    dec b
    nop
    dec d
    rst $18
    ld e, d
    and c
    xor l
    ld h, d
    and c
    ld bc, $A132
    ld c, b
    dec d
    adc b
    ld b, b
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_5AE4:
    ld bc, $A162
    dec d
    ld e, [hl]
    ld e, e
    sbc a
    ld h, d

jr_015_5AEC:
    and c

jr_015_5AED:
    ld b, [hl]
    rrca
    ld bc, $A162
    dec b
    ld bc, $2415

jr_015_5AF6:
    ld e, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_5B60

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
    jr nz, jr_015_5B5D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5B79

    ld [hl], e
    cp $FC
    jr nz, jr_015_5B76

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_5B1C:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    adc b
    ld b, b
    and [hl]
    ld d, h

jr_015_5B26:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_5B2A:
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
    jr nz, jr_015_5B8A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_5BB8

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
    dec d
    adc b

jr_015_5B5D:
    ld b, b
    sbc a
    ld h, d

jr_015_5B60:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h

jr_015_5B66:
    ld l, h
    jr nz, jr_015_5BCD

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l

jr_015_5B72:
    jr nz, jr_015_5BDC

    ld h, c
    halt

jr_015_5B76:
    ld h, l
    jr nz, @+$75

jr_015_5B79:
    ld h, l
    ld [hl], h
    jr nz, jr_015_5BDE

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_5BCB

    ld l, c

jr_015_5B84:
    ld h, a
    ld l, b
    jr nz, jr_015_5BDB

    ld h, e
    ld l, a

jr_015_5B8A:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_5C03

    ld [hl], d
    ld h, l
    halt

jr_015_5B96:
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b

jr_015_5B9C:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_5BF4

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_5C1E

    ld h, c

jr_015_5BA8:
    ld [hl], e
    cp $FC
    jr nz, jr_015_5C0E

    ld [hl], h

jr_015_5BAE:
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_015_5BB8:
    xor l
    ld h, d

jr_015_5BBA:
    and c
    ld bc, $A132
    ld c, b
    dec d

jr_015_5BC0:
    adc b
    ld b, b
    ld b, [hl]
    nop
    jr z, jr_015_5B66

    ld bc, $D315
    ld e, e
    add hl, bc

jr_015_5BCB:
    inc bc

jr_015_5BCC:
    dec d

jr_015_5BCD:
    scf
    ld e, b
    or [hl]
    jr z, jr_015_5B72

    ld bc, $4645
    nop
    jr z, @-$5E

    ld bc, $E515

jr_015_5BDB:
    ld e, e

jr_015_5BDC:
    add hl, bc

jr_015_5BDD:
    inc bc

jr_015_5BDE:
    dec d
    ld h, l
    ld e, b
    or [hl]
    jr z, jr_015_5B84

    ld bc, $4645
    nop
    jr z, jr_015_5B8A

    ld bc, $F715
    ld e, e
    add hl, bc

jr_015_5BEF:
    inc bc
    dec d
    ld c, [hl]
    ld e, b
    or [hl]

jr_015_5BF4:
    jr z, jr_015_5B96

    ld bc, $4645
    nop
    jr z, jr_015_5B9C

    inc b
    dec d
    add hl, bc
    ld e, h
    add hl, bc

jr_015_5C01:
    dec b
    dec d

jr_015_5C03:
    pop bc
    ld e, b
    or [hl]
    jr z, jr_015_5BA8

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5BAE

jr_015_5C0E:
    ld [bc], a
    dec d
    dec de
    ld e, h
    add hl, bc

jr_015_5C13:
    inc b
    dec d
    ld a, h
    ld e, b
    or [hl]

jr_015_5C18:
    jr z, jr_015_5BBA

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop

jr_015_5C1E:
    jr z, jr_015_5BC0

    ld [bc], a
    dec d
    dec l
    ld e, h

jr_015_5C24:
    add hl, bc
    inc b
    dec d
    sub e
    ld e, b
    or [hl]

jr_015_5C2A:
    jr z, jr_015_5BCC

    ld [bc], a
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    dec d
    ld a, $5C
    add hl, bc

jr_015_5C36:
    dec b
    dec d
    pop bc
    ld e, b
    or [hl]
    jr z, jr_015_5BDD

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    dec d
    ld d, b
    ld e, h
    add hl, bc

jr_015_5C48:
    dec b
    dec d
    xor d
    ld e, b
    or [hl]

jr_015_5C4D:
    jr z, jr_015_5BEF

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$6215], sp
    ld e, h

jr_015_5C59:
    add hl, bc
    ld b, $15
    ret c

    ld e, b
    or [hl]

jr_015_5C5F:
    jr z, jr_015_5C01

    ld [$4645], sp
    nop
    jr z, @-$5E

    ld [$7415], sp
    ld e, h

jr_015_5C6B:
    add hl, bc
    ld b, $15
    rst $28
    ld e, b

jr_015_5C70:
    or [hl]
    jr z, jr_015_5C13

    ld [$0046], sp
    jr z, jr_015_5C18

    db $10
    dec d
    add l
    ld e, h

jr_015_5C7C:
    add hl, bc
    rlca
    dec d
    dec e
    ld e, c
    or [hl]

jr_015_5C82:
    jr z, jr_015_5C24

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5C2A

    db $10
    dec d
    sub a
    ld e, h

jr_015_5C8E:
    add hl, bc
    rlca
    dec d
    dec e
    ld e, c

jr_015_5C93:
    or [hl]
    jr z, jr_015_5C36

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    db $10
    dec d
    xor c

jr_015_5C9F:
    ld e, h
    add hl, bc
    rlca
    dec d
    ld b, $59

jr_015_5CA5:
    or [hl]
    jr z, jr_015_5C48

    db $10
    ld b, [hl]
    nop
    jr z, jr_015_5C4D

    jr nz, jr_015_5CC4

    cp d
    ld e, h

jr_015_5CB1:
    add hl, bc
    ld [$4B15], sp
    ld e, c

jr_015_5CB6:
    or [hl]
    jr z, jr_015_5C59

    jr nz, jr_015_5D00

    ld b, [hl]
    nop
    jr z, jr_015_5C5F

    ld [$CC15], sp

jr_015_5CC2:
    ld e, h
    add hl, bc

jr_015_5CC4:
    ld b, $15
    rst $28
    ld e, b

jr_015_5CC8:
    or [hl]
    jr z, jr_015_5C6B

    ld [$0046], sp
    jr z, jr_015_5C70

    jr nz, jr_015_5CE7

    db $DD
    ld e, h

jr_015_5CD4:
    add hl, bc
    ld [$4B15], sp
    ld e, c

jr_015_5CD9:
    or [hl]
    jr z, jr_015_5C7C

    jr nz, jr_015_5D23

    ld b, [hl]
    nop
    jr z, jr_015_5C82

    jr nz, jr_015_5CF9

    rst $28

jr_015_5CE5:
    ld e, h
    add hl, bc

jr_015_5CE7:
    ld [$3415], sp
    ld e, c

jr_015_5CEB:
    or [hl]
    jr z, jr_015_5C8E

    jr nz, jr_015_5D36

    nop
    jr z, jr_015_5C93

    ld b, b
    dec d
    nop
    ld e, l

jr_015_5CF7:
    add hl, bc
    add hl, bc

jr_015_5CF9:
    dec d
    ld a, c
    ld e, c
    or [hl]

jr_015_5CFD:
    jr z, jr_015_5C9F

    ld b, b

jr_015_5D00:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5CA5

    ld b, b
    dec d
    ld [de], a
    ld e, l

jr_015_5D09:
    add hl, bc
    add hl, bc
    dec d
    ld a, c
    ld e, c
    or [hl]

jr_015_5D0F:
    jr z, jr_015_5CB1

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_015_5CB6

    db $10
    dec d
    inc hl
    ld e, l
    add hl, bc

jr_015_5D1B:
    rlca
    dec d
    ld b, $59
    or [hl]
    jr z, jr_015_5CC2

    db $10

jr_015_5D23:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5CC8

    ld b, b
    dec d
    dec [hl]
    ld e, l
    add hl, bc

jr_015_5D2D:
    add hl, bc
    dec d
    ld a, c
    ld e, c
    or [hl]
    jr z, jr_015_5CD4

    ld b, b
    ld b, [hl]

jr_015_5D36:
    nop
    jr z, jr_015_5CD9

    ld [$4615], sp
    ld e, l
    add hl, bc
    ld b, $15
    rst $28
    ld e, b
    or [hl]
    jr z, jr_015_5CE5

jr_015_5D45:
    ld [$4645], sp
    nop
    jr z, jr_015_5CEB

    ld b, b
    dec d
    ld e, b
    ld e, l
    add hl, bc
    add hl, bc

jr_015_5D51:
    dec d
    sub b
    ld e, c
    or [hl]
    jr z, jr_015_5CF7

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5CFD

    jr nz, jr_015_5D74

    ld l, d
    ld e, l
    add hl, bc
    ld [$3415], sp
    ld e, c
    or [hl]
    jr z, jr_015_5D09

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, jr_015_5D0F

    db $10
    dec d
    ld a, h
    ld e, l
    add hl, bc

jr_015_5D74:
    rlca
    dec d
    ld b, $59
    or [hl]
    jr z, jr_015_5D1B

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$8E15], sp
    ld e, l
    add hl, bc
    ld b, $15
    rst $28
    ld e, b
    or [hl]
    jr z, jr_015_5D2D

    ld [$4645], sp
    nop
    jr z, @-$5E

    ld b, b
    dec d
    and b
    ld e, l
    add hl, bc
    add hl, bc
    dec d
    and a
    ld e, c
    or [hl]
    jr z, @-$5E

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5D45

    add b
    dec d
    or d
    ld e, l
    add hl, bc
    ld a, [bc]
    dec d
    cp [hl]
    ld e, c
    or [hl]
    jr z, jr_015_5D51

jr_015_5DB1:
    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    dec d
    call nz, $095D
    ld [de], a

jr_015_5DBD:
    dec d
    inc bc
    ld e, d
    or [hl]
    add hl, hl

jr_015_5DC2:
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $D615
    ld e, l
    add hl, bc

jr_015_5DCE:
    dec bc
    dec d
    db $EC
    ld e, c
    or [hl]
    add hl, hl

jr_015_5DD4:
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld [bc], a
    dec d
    add sp, $5D
    add hl, bc

jr_015_5DE0:
    ld [de], a
    dec d
    ld a, [de]
    ld e, d
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
    dec d
    ld a, [$095D]
    inc de
    dec d
    ld sp, $B65A
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $0C15
    ld e, [hl]
    add hl, bc
    dec bc
    dec d
    push de
    ld e, c
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    jr z, jr_015_5DB1

    jr nz, jr_015_5E28

    ld e, $5E
    add hl, bc
    ld [$6215], sp
    ld e, c
    or [hl]
    jr z, jr_015_5DBD

    jr nz, @+$48

    nop
    jr z, jr_015_5DC2

    ld b, b
    dec d
    cpl
    ld e, [hl]
    add hl, bc
    add hl, bc

jr_015_5E28:
    dec d
    and a
    ld e, c
    or [hl]
    jr z, jr_015_5DCE

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_015_5DD4

    jr nz, jr_015_5E4B

    ld b, c
    ld e, [hl]
    add hl, bc
    ld [$4B15], sp
    ld e, c
    or [hl]
    jr z, jr_015_5DE0

    jr nz, jr_015_5E87

    ld [hl+], a
    ld h, $48
    dec d
    xor $5E

jr_015_5E48:
    ld [hl+], a
    ld h, $48

jr_015_5E4B:
    dec d
    ld a, $62
    ld [hl+], a
    ld h, $48
    dec d
    rrca
    ld l, c
    ld [hl+], a
    ld h, $48
    dec d
    halt
    ld h, l
    ld [hl+], a
    ld h, $48
    dec d
    sub a
    ld l, l
    or [hl]
    dec sp
    and b
    ld bc, $0B01
    inc bc
    ld c, b
    ld c, $67
    ld l, d
    or [hl]
    dec sp
    and b
    ld [bc], a
    ld bc, $0618
    ld c, b
    ld c, $67
    ld l, d
    or [hl]
    dec sp
    and b
    inc b
    ld bc, $0C11
    ld c, b
    ld c, $67
    ld l, d
    ld b, [hl]
    nop
    ld c, e
    and b
    ld [bc], a
    dec d

jr_015_5E87:
    and e
    ld e, [hl]
    or [hl]
    dec sp
    and b
    inc b
    or [hl]
    dec sp
    and b
    jr nz, jr_015_5E48

    ld c, e
    and b
    ld [bc], a
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    dec d
    add c
    ld e, [hl]
    ld c, b
    ld c, $73
    ld l, h
    or [hl]
    dec sp
    and b
    jr nz, jr_015_5EEE

    rrca
    nop
    dec sp
    and b
    inc b
    dec b
    nop
    dec d
    cp l
    ld e, [hl]
    or [hl]
    dec sp
    and b
    inc b
    ld bc, $0C11
    ld c, b
    ld c, $67
    ld l, d
    ld b, [hl]
    nop
    dec sp
    and b
    ld [$D015], sp
    ld e, [hl]
    or [hl]
    dec sp
    and b
    ld [$0901], sp
    inc d
    ld c, b
    ld c, $51
    ld l, l
    ld bc, $1409
    ld c, b
    ld c, $67
    ld l, d
    ld b, [hl]
    nop
    dec sp
    and b
    db $10
    dec d
    rst $20
    ld e, [hl]
    or [hl]
    dec sp
    and b
    db $10
    ld c, b
    ld c, $48
    ld l, e
    ld bc, $0903
    ld c, b
    ld c, $67
    ld l, d

jr_015_5EEE:
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
    ld c, l
    ld d, e
    inc de
    ld h, a
    or c
    ld c, e
    dec b
    nop
    inc [hl]
    ld h, e
    dec b
    dec c
    ld d, $D1
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    add hl, bc
    db $10
    ld e, c
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    or b
    ld e, a
    dec b
    inc bc
    add a
    ld h, a
    db $10
    inc c
    inc c
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    or b
    ld e, a
    dec b
    inc b
    add a
    ld h, a
    add hl, bc
    rlca
    sbc h
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    or b
    ld e, a
    dec b
    dec b
    pop hl
    ld [hl], b
    add hl, bc
    dec bc
    ldh a, [$D0]
    nop
    dec d
    jr nz, jr_015_5FAE

    dec d
    ld [hl-], a
    ld h, b
    dec b
    ld b, $E1
    ld [hl], b
    dec c
    dec c
    ld e, $D1
    nop
    dec d
    jr nz, jr_015_5FBD

    dec d
    ld [hl-], a
    ld h, b
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_015_5FAC

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
    dec bc
    ld b, $86
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    dec d
    add a
    ld e, a
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
    jr nz, jr_015_5FEC

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_5FE8

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    ld b, a
    ld h, b

jr_015_5FAC:
    dec d
    ld h, h

jr_015_5FAE:
    ld e, [hl]
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

jr_015_5FBD:
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    dec d
    ldh [$5F], a
    ld c, [hl]
    ld bc, $C9D8
    dec d
    nop
    nop
    ldh a, [$5F]
    dec d
    ld bc, $FC00
    ld e, a
    dec d
    ld [bc], a
    nop
    ld [$1560], sp
    inc bc
    nop
    inc d
    ld h, b
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_015_5FE6

jr_015_5FE6:
    ld c, b
    dec d

jr_015_5FE8:
    ld b, a
    ld h, b
    inc c
    nop

jr_015_5FEC:
    ld c, b
    dec d
    ld b, a
    ld h, b
    dec d
    ld de, $74CF
    jr nz, jr_015_5FF6

jr_015_5FF6:
    inc c
    nop
    ld c, b
    dec d
    ld b, a
    ld h, b
    dec d
    ld de, $7498
    jr nz, jr_015_6002

jr_015_6002:
    inc c
    nop
    ld c, b
    dec d
    ld b, a
    ld h, b
    dec d
    ld de, $74A2
    jr nz, jr_015_600E

jr_015_600E:
    inc c
    nop
    ld c, b
    dec d
    ld b, a
    ld h, b
    dec d
    ld de, $748E
    jr nz, jr_015_601A

jr_015_601A:
    inc c
    nop
    ld c, b
    dec d
    ld b, a
    ld h, b
    ld a, [de]
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
    add c
    db $FD
    add hl, de
    or e
    ld sp, $01C7
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    dec d
    ld b, c
    ld h, b
    ld b, l
    inc d
    inc d
    push hl
    ld h, b
    ld b, e
    db $10
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
    jr nz, jr_015_60D1

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    ld l, h
    ld h, b
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1548
    ld a, [c]
    ld e, [hl]
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
    jr nz, jr_015_60E4

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_60ED

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    bit 4, b
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6114

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_611E

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_610C

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
    dec sp
    and b
    ld bc, $0005
    dec d
    rlca
    ld h, c
    and c
    xor l
    add a
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld h, b
    ld e, [hl]
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6144

    ld l, a

jr_015_60D1:
    ld l, a
    ld l, e
    jr nz, jr_015_614E

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6152

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_6115

    dec [hl]

jr_015_60E4:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_60ED:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    ld bc, $0005
    dec d
    rlca
    ld h, c
    and c
    xor l
    add a
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld h, b
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_610C:
    ld bc, $A187
    dec d
    add [hl]
    ld h, c
    sbc a
    add a

jr_015_6114:
    and c

jr_015_6115:
    ld b, [hl]
    rrca
    ld bc, $A187
    dec b
    ld bc, $4C15

jr_015_611E:
    ld h, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_6188

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
    jr nz, jr_015_6185

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_61A1

    ld [hl], e
    cp $FC
    jr nz, jr_015_619E

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_6144:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    ld h, b
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_614E:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_6152:
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
    jr nz, jr_015_61B2

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_61E0

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
    dec d
    ld h, b

jr_015_6185:
    ld e, [hl]
    sbc a
    add a

jr_015_6188:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_61F5

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

jr_015_619E:
    ld h, l
    jr nz, jr_015_6214

jr_015_61A1:
    ld h, l
    ld [hl], h
    jr nz, jr_015_6206

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_61F3

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_6203

    ld h, e
    ld l, a

jr_015_61B2:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_622B

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
    jr nz, jr_015_621C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_6236

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

jr_015_61E0:
    xor l
    add a
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld h, b
    ld e, [hl]
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    dec bc
    dec bc
    ld a, [c]

jr_015_61F3:
    ret nc

    nop

jr_015_61F5:
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l
    ld e, $05
    dec b
    nop

jr_015_6203:
    ld hl, sp+$4A
    dec bc

jr_015_6206:
    ld [de], a
    add l
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l

jr_015_6214:
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    inc c
    dec c

jr_015_621C:
    dec e
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l
    ld e, $05

jr_015_622B:
    dec b
    nop
    ld hl, sp+$4A
    dec c
    inc b
    ld h, c
    ret nc

    nop
    inc d
    ld d, a

jr_015_6236:
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l
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
    ld e, h
    ld d, e
    inc de
    ld h, a
    add $4B
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    ld [bc], a
    rra
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    add hl, bc
    rlca
    ld l, e
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    rst $28
    ld h, d
    dec b
    inc bc
    add a
    ld h, a
    add hl, bc
    ld a, [bc]
    sub l
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    rst $28
    ld h, d
    dec b
    inc b
    add a
    ld h, a
    inc c
    inc c
    or h
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    rst $28
    ld h, d
    dec b
    dec b
    pop hl
    ld [hl], b
    ld bc, $1D02
    ret nc

    nop
    dec d
    ld e, a
    ld h, e
    dec d
    ld [hl], c
    ld h, e
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_015_62ED

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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    dec d
    add $62
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
    jr nz, jr_015_632B

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_6327

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    add [hl]
    ld h, e
    dec d
    ld l, a

jr_015_62ED:
    ld e, [hl]
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
    dec d
    rra
    ld h, e
    ld c, [hl]
    ld bc, $C9D8
    dec d
    nop
    nop
    cpl
    ld h, e
    dec d
    ld bc, $3B00
    ld h, e
    dec d
    ld [bc], a
    nop
    ld b, a
    ld h, e
    dec d
    inc bc
    nop
    ld d, e
    ld h, e
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_015_6325

jr_015_6325:
    ld c, b
    dec d

jr_015_6327:
    add [hl]
    ld h, e
    inc c
    nop

jr_015_632B:
    ld c, b
    dec d
    add [hl]
    ld h, e
    dec d
    ld de, $74CF
    jr nz, jr_015_6335

jr_015_6335:
    inc c
    nop
    ld c, b
    dec d
    add [hl]
    ld h, e
    dec d
    ld de, $7498
    jr nz, jr_015_6341

jr_015_6341:
    inc c
    nop
    ld c, b
    dec d
    add [hl]
    ld h, e
    dec d
    ld de, $74A2
    jr nz, jr_015_634D

jr_015_634D:
    inc c
    nop
    ld c, b
    dec d
    add [hl]
    ld h, e
    dec d
    ld de, $748E
    jr nz, jr_015_6359

jr_015_6359:
    inc c
    nop
    ld c, b
    dec d
    add [hl]
    ld h, e
    ld a, [de]
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
    add c
    db $FD
    add hl, de
    or e
    ld sp, $01C7
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    dec d
    add b
    ld h, e
    ld b, l
    inc d
    inc d
    push hl
    ld h, b
    ld b, e
    db $10
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
    jr nz, jr_015_6410

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    xor e
    ld h, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1548
    ld b, d
    ld h, d
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
    jr nz, jr_015_6423

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_642C

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    ld a, [bc]
    ld h, h
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6453

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_645D

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_644B

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
    dec sp
    and b
    ld [bc], a
    dec b
    nop
    dec d
    ld b, [hl]
    ld h, h
    and c
    xor l
    adc b
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld l, e
    ld e, [hl]
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6483

    ld l, a

jr_015_6410:
    ld l, a
    ld l, e
    jr nz, jr_015_648D

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6491

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_6454

    dec [hl]

jr_015_6423:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_642C:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    ld [bc], a
    dec b
    nop
    dec d
    ld b, [hl]
    ld h, h
    and c
    xor l
    adc b
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld l, e
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_644B:
    ld bc, $A188
    dec d
    push bc
    ld h, h
    sbc a
    adc b

jr_015_6453:
    and c

jr_015_6454:
    ld b, [hl]
    rrca
    ld bc, $A188
    dec b
    ld bc, $8B15

jr_015_645D:
    ld h, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_64C7

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
    jr nz, jr_015_64C4

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_64E0

    ld [hl], e
    cp $FC
    jr nz, jr_015_64DD

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_6483:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    ld l, e
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_648D:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_6491:
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
    jr nz, jr_015_64F1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_651F

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
    dec d
    ld l, e

jr_015_64C4:
    ld e, [hl]
    sbc a
    adc b

jr_015_64C7:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_6534

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

jr_015_64DD:
    ld h, l
    jr nz, jr_015_6553

jr_015_64E0:
    ld h, l
    ld [hl], h
    jr nz, jr_015_6545

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_6532

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_6542

    ld h, e
    ld l, a

jr_015_64F1:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_656A

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
    jr nz, jr_015_655B

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6585

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_6575

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

jr_015_651F:
    xor l
    adc b
    and c
    ld bc, $A132
    ld c, b
    dec d
    ld l, e
    ld e, [hl]
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld [$2402], sp

jr_015_6532:
    ret nc

    nop

jr_015_6534:
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l
    ld e, $05
    dec b
    nop

jr_015_6542:
    ld hl, sp+$4A
    ld a, [bc]

jr_015_6545:
    inc bc
    inc [hl]
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l

jr_015_6553:
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    rlca
    add hl, bc

jr_015_655B:
    add l
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld l, b
    ld h, l
    add c
    adc c

jr_015_656A:
    pop bc
    inc b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    ld d, a
    ld e, [hl]

jr_015_6575:
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

jr_015_6585:
    ld a, b
    inc d
    ld l, b
    ld l, e
    ld d, e
    inc de
    ld h, a
    rst $10
    ld c, e
    dec b
    nop
    inc [hl]
    ld h, e
    rlca
    ld [bc], a
    add hl, hl
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a
    ld h, a
    dec b
    ld [$D08D], sp
    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    ld c, c
    ld h, [hl]
    dec b
    inc bc
    add a
    ld h, a
    ld [$5D05], sp
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    ld c, c
    ld h, [hl]
    dec b
    inc b
    add a
    ld h, a
    dec bc
    ld [$D093], sp
    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    ld c, c
    ld h, [hl]
    dec b
    dec b
    add a
    ld h, a
    ld a, [bc]
    inc c
    sub $D0
    nop
    add hl, de
    rst $20
    ld b, [hl]
    dec d
    ld c, c
    ld h, [hl]
    dec b
    ld b, $E1
    ld [hl], b
    rlca
    dec b
    ld e, h
    ret nc

    nop
    dec d
    cp c
    ld h, [hl]
    dec d
    bit 4, [hl]
    dec b
    rlca
    pop hl
    ld [hl], b
    dec b
    add hl, bc
    sbc [hl]
    ret nc

    nop
    dec d
    cp c
    ld h, [hl]
    dec d
    bit 4, [hl]
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_015_6643

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
    dec bc
    ld b, $0B
    rlca
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    dec d
    jr nz, jr_015_6685

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
    jr nz, jr_015_6685

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_6681

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d

jr_015_6643:
    ldh [$66], a
    dec d
    ret nc

    ld e, [hl]
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
    dec d
    ld a, c
    ld h, [hl]
    ld c, [hl]
    ld bc, $C9D8
    dec d
    nop
    nop
    adc c
    ld h, [hl]
    dec d
    ld bc, $9500
    ld h, [hl]
    dec d
    ld [bc], a
    nop
    and c
    ld h, [hl]
    dec d
    inc bc
    nop
    xor l
    ld h, [hl]
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_015_667F

jr_015_667F:
    ld c, b
    dec d

jr_015_6681:
    ldh [$66], a
    inc c
    nop

jr_015_6685:
    ld c, b
    dec d
    ldh [$66], a
    dec d
    ld de, $74CF
    jr nz, jr_015_668F

jr_015_668F:
    inc c
    nop
    ld c, b
    dec d
    ldh [$66], a
    dec d
    ld de, $7498
    jr nz, jr_015_669B

jr_015_669B:
    inc c
    nop
    ld c, b
    dec d
    ldh [$66], a
    dec d
    ld de, $74A2
    jr nz, jr_015_66A7

jr_015_66A7:
    inc c
    nop
    ld c, b
    dec d
    ldh [$66], a
    dec d
    ld de, $748E
    jr nz, jr_015_66B3

jr_015_66B3:
    inc c
    nop
    ld c, b
    dec d
    ldh [$66], a
    ld a, [de]
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
    add c
    db $FD
    add hl, de
    or e
    ld sp, $01C7
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    dec d
    jp c, Jump_015_4566

    inc d
    inc d
    push hl
    ld h, b
    ld b, e
    db $10
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
    jr nz, jr_015_676A

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    dec b
    ld h, a
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1548
    ld a, d
    ld h, l
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
    jr nz, jr_015_677D

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_6786

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    ld h, h
    ld h, a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_67AD

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_67B7

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_67A5

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
    dec sp
    and b
    ld [$0005], sp
    dec d
    and b
    ld h, a
    and c
    xor l
    adc c
    and c
    ld bc, $A132
    ld c, b
    dec d
    cp l
    ld e, [hl]
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_67DD

    ld l, a

jr_015_676A:
    ld l, a
    ld l, e
    jr nz, jr_015_67E7

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_67EB

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_67AE

    dec [hl]

jr_015_677D:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_6786:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    ld [$0005], sp
    dec d
    and b
    ld h, a
    and c
    xor l
    adc c
    and c
    ld bc, $A132
    ld c, b
    dec d
    cp l
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_67A5:
    ld bc, $A189
    dec d
    rra
    ld l, b
    sbc a
    adc c

jr_015_67AD:
    and c

jr_015_67AE:
    ld b, [hl]
    rrca
    ld bc, $A189
    dec b
    ld bc, $E515

jr_015_67B7:
    ld h, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_6821

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
    jr nz, jr_015_681E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_683A

    ld [hl], e
    cp $FC
    jr nz, jr_015_6837

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_67DD:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    cp l
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_67E7:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_67EB:
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
    jr nz, jr_015_684B

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_6879

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
    dec d
    cp l

jr_015_681E:
    ld e, [hl]
    sbc a
    adc c

jr_015_6821:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_688E

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

jr_015_6837:
    ld h, l
    jr nz, @+$75

jr_015_683A:
    ld h, l
    ld [hl], h
    jr nz, jr_015_689F

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_689C

    ld h, e
    ld l, a

jr_015_684B:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_68C4

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b

jr_015_685D:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_68B5

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_68DF

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_68CF

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

jr_015_6879:
    xor l
    adc c
    and c
    ld bc, $A132
    ld c, b
    dec d
    cp l
    ld e, [hl]
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld b, $02
    jr z, jr_015_685D

    nop

jr_015_688E:
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $1E69
    dec b
    dec b
    nop

jr_015_689C:
    ld hl, sp+$4A
    ld [bc], a

jr_015_689F:
    ld [$D08A], sp
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $1E69
    dec b
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    dec b

jr_015_68B5:
    ld e, b
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $1E69
    dec b

jr_015_68C4:
    dec b
    nop
    ld hl, sp+$4A
    ld a, [bc]
    ld [bc], a
    inc l
    ret nc

    nop
    inc d
    ld d, a

jr_015_68CF:
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $1E69
    dec b
    dec b
    nop
    ld hl, sp+$4A
    rrca
    add hl, bc

jr_015_68DF:
    xor b
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $1E69
    dec b
    dec b
    nop
    ld hl, sp+$4A
    ld [$C30B], sp
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld c, b
    dec d
    ld bc, $8169
    adc c
    pop bc
    inc b
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    ld d, a
    ld e, [hl]
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
    ld a, d
    ld d, e
    inc de
    ld h, a
    db $F4
    ld c, e
    ld l, h
    ld bc, $6F4C
    ld [de], a
    ld c, h
    dec b
    nop
    inc [hl]
    ld h, e
    ld b, $07

jr_015_6933:
    ld h, h
    pop de
    nop
    inc d

jr_015_6937:
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld d, $2E
    ld [de], a
    reti


jr_015_6944:
    nop
    ld de, $7476
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec de
    ld c, $D7
    jp nc, $1100

    halt
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    ld d, $1B
    ld e, h
    push de
    nop
    ld de, $7476
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    dec hl
    rra
    add hl, sp
    sub $00
    ld de, $7476
    add hl, de
    add sp, $46
    ld l, [hl]
    ld b, b
    ld a, [bc]
    inc de
    ld [hl], h
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
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    jr z, jr_015_6933

    cp $B5
    jr z, jr_015_6937

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, @-$5E

    rst $30
    or e
    jr z, jr_015_6944

    nop
    sbc e
    dec d
    xor c
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
    and [hl]
    jr nz, @+$54

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_6A06

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    adc $69
    dec d
    ld a, d
    ld e, [hl]
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    push hl
    ld l, c
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F72
    nop
    nop
    ld a, d
    jr nz, jr_015_69F2

    ld a, d
    jr nz, jr_015_6A67

    ld c, b
    dec d
    inc de

jr_015_69F2:
    ld l, c
    inc c
    nop
    ld b, [hl]
    rrca
    ld bc, $A128
    dec b
    inc b
    dec d
    ld [hl], a
    ld l, e
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    and [hl]

jr_015_6A06:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_6A71

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_6A7A

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    ld e, b
    ld l, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6AA1

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_6AAB

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_6A99

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
    dec sp
    and b
    inc b
    dec b
    nop
    dec d
    sub h
    ld l, d
    and c
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b
    dec d
    halt
    ld e, [hl]
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6AD1

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_6ADB

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a

jr_015_6A67:
    ld [hl], d
    ld h, l
    jr nz, jr_015_6ADF

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_6AA2

    dec [hl]

jr_015_6A71:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_6A7A:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    inc b
    dec b
    nop
    dec d
    sub h
    ld l, d
    and c
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b
    dec d
    halt
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_6A99:
    ld bc, $A18A
    dec d
    inc de
    ld l, e
    sbc a
    adc d

jr_015_6AA1:
    and c

jr_015_6AA2:
    ld b, [hl]
    rrca
    ld bc, $A18A
    dec b
    ld bc, $D915

jr_015_6AAB:
    ld l, d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_6B15

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
    jr nz, jr_015_6B12

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6B2E

    ld [hl], e
    cp $FC
    jr nz, jr_015_6B2B

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_6AD1:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    halt
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_6ADB:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_6ADF:
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
    jr nz, jr_015_6B3F

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_6B6D

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
    dec d
    halt

jr_015_6B12:
    ld e, [hl]
    sbc a
    adc d

jr_015_6B15:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_6B82

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_6B91

    ld h, c
    halt

jr_015_6B2B:
    ld h, l
    jr nz, jr_015_6BA1

jr_015_6B2E:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_6B80

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_6B90

    ld h, e
    ld l, a

jr_015_6B3F:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_6BB8

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
    jr nz, jr_015_6BA9

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6BD3

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_015_6BC3

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

jr_015_6B6D:
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b
    dec d
    halt
    ld e, [hl]
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]

jr_015_6B80:
    ld e, c
    ld l, a

jr_015_6B82:
    ld [hl], l
    jr nz, jr_015_6BEB

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_015_6BE0

    ld b, l
    ld b, e
    ld d, d

jr_015_6B90:
    ld b, l

jr_015_6B91:
    ld d, h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    jp nc, $9F6B

    ld [hl-], a

jr_015_6BA1:
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6C1B

    ld l, a
    ld l, a

jr_015_6BA9:
    ld l, e
    jr nz, jr_015_6C25

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_6C13

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_6BB8:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    inc b
    dec b

jr_015_6BC3:
    nop
    dec d
    ld c, $6C
    and c
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b
    dec d
    add c
    ld e, [hl]
    and [hl]

jr_015_6BD3:
    ld c, c
    ld [hl], h
    jr nz, jr_015_6C4B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_6C55

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_015_6BE0:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6C59

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_6C1C

    dec [hl]

jr_015_6BEB:
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
    dec sp
    and b
    inc b
    dec b
    nop
    dec d
    ld c, $6C
    and c
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b
    dec d
    add c
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_6C13:
    ld bc, $A18A
    dec d
    adc l
    ld l, h
    sbc a
    adc d

jr_015_6C1B:
    and c

jr_015_6C1C:
    ld b, [hl]
    rrca
    ld bc, $A18A
    dec b
    ld bc, $5315

jr_015_6C25:
    ld l, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_6C8F

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
    jr nz, jr_015_6C8C

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6CA8

    ld [hl], e
    cp $FC
    jr nz, jr_015_6CA5

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_6C4B:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    add c
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_6C55:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_6C59:
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
    jr nz, jr_015_6CB9

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_6CE7

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
    dec d
    add c

jr_015_6C8C:
    ld e, [hl]
    sbc a
    adc d

jr_015_6C8F:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_6CFC

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_6D0B

    ld h, c
    halt

jr_015_6CA5:
    ld h, l
    jr nz, jr_015_6D1B

jr_015_6CA8:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l

jr_015_6CAF:
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_6D0A

    ld h, e
    ld l, a

jr_015_6CB9:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_6D32

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

jr_015_6CCE:
    jr nz, jr_015_6D23

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h

jr_015_6CDE:
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_015_6CE7:
    xor l
    adc d
    and c
    ld bc, $A132
    ld c, b

jr_015_6CEE:
    dec d
    add c
    ld e, [hl]
    ld e, $05
    inc c
    nop
    dec b
    nop
    inc [hl]
    ld h, e
    ld b, $06
    ld [hl-], a

jr_015_6CFC:
    pop de
    nop

jr_015_6CFE:
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    ld [$000B], sp

jr_015_6D0A:
    ld b, l

jr_015_6D0B:
    xor l
    jr z, jr_015_6CAF

    dec bc
    ld bc, $A128
    dec b
    ld bc, $195D
    sub b
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld b, [hl]

jr_015_6D1B:
    db $10
    ld bc, $A128
    dec b
    inc b
    dec d
    ld a, [hl+]

jr_015_6D23:
    ld l, l
    ld e, l
    add hl, de
    and a
    ld b, [hl]
    ld h, l
    ld [bc], a
    ld b, l
    xor d
    jr z, jr_015_6CCE

    ld bc, $DC19
    ld b, [hl]

jr_015_6D32:
    add sp, -$48
    pop de
    ld e, $09
    ld c, b
    dec d
    dec bc
    ld l, l
    xor d
    jr z, jr_015_6CDE

    ld [bc], a
    add hl, de
    call c, $E846
    db $EB
    push de
    ld e, $09
    ld c, b
    dec d
    dec bc
    ld l, l
    xor d
    jr z, jr_015_6CEE

    inc b
    add hl, de
    call c, $E846
    call nc, $1ED8
    add hl, bc
    ld c, b
    dec d
    dec bc
    ld l, l
    xor d
    jr z, jr_015_6CFE

    ld [$DC19], sp
    ld b, [hl]
    add sp, $24
    reti


    ld e, $09
    ld c, b
    dec d
    dec bc
    ld l, l
    ld e, $13
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld e, a
    ld b, e
    jr nz, @+$0B

    nop
    inc d
    ld d, c
    ld e, a
    ld b, e
    ld b, b
    ld c, b
    dec d
    adc $69
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
    dec d
    adc c
    ld l, l
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
    adc c
    ld d, e
    inc de
    ld h, a
    rla
    ld c, h
    ld l, h
    dec h
    ld c, h
    ld l, a
    jr nz, jr_015_6E01

    ld l, e
    adc d
    ld h, d
    cpl
    db $E4
    ld a, a
    ld a, [hl+]
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    rlca
    jp nz, $00D1

    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc bc
    db $10
    inc bc
    call nc, $1100
    halt
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld [$4805], sp
    pop de
    nop
    ld de, $7476
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    rrca
    inc bc
    rst $08
    ret nc

    nop
    ld de, $7476
    add hl, de

jr_015_6DF6:
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    jr jr_015_6E0D

    ret c

    db $D3
    nop

jr_015_6E01:
    ld de, $7476
    add hl, de

jr_015_6E05:
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    inc hl
    inc bc

jr_015_6E0D:
    db $E3
    ret nc

    nop
    ld de, $7476
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    ld [hl+], a
    db $10
    ld [hl+], a
    call nc, $1100
    halt
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    ld sp, $F10F
    db $D3
    nop
    ld de, $7476
    add hl, de
    add sp, $46
    ld l, [hl]
    ld b, b
    ld a, [bc]
    inc de
    ld [hl], h
    nop
    add b
    nop
    dec bc

jr_015_6E3D:
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
    add hl, bc
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or e
    jr z, jr_015_6DF6

    inc bc
    or e
    inc sp
    and c
    nop
    or l
    jr z, @-$5E

    cp $B5
    jr z, jr_015_6E01

    db $FD
    or l
    jr z, jr_015_6E05

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_015_6E0D

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    ld a, [hl+]
    and b
    cp $B5
    ld a, [hl+]
    and b
    db $FD
    or [hl]
    ld a, [hl+]
    and b
    inc b
    or [hl]
    ld a, [hl+]
    and b
    db $10
    or [hl]
    ld a, [hl+]
    and b
    jr nz, jr_015_6E3D

    ld a, [hl+]
    and b
    ld b, b
    or l
    ld a, [hl+]
    and b
    ld a, a
    or [hl]
    dec hl
    and b
    ld bc, $159B
    sub a
    ld l, [hl]
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
    jr nz, @+$54

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_015_6EF4

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    dec d
    cp h
    ld l, [hl]
    dec d
    rst $20
    ld e, [hl]
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $15
    db $D3
    ld l, [hl]
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F72
    nop
    nop
    ld a, d
    jr nz, jr_015_6EE0

    ld a, d
    jr nz, jr_015_6F55

    ld c, b
    dec d
    sbc e

jr_015_6EE0:
    ld l, l
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
    jr nz, jr_015_6F55

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38

jr_015_6EF4:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_015_6F5E

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    dec d
    inc a
    ld l, a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6F85

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_6F8F

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_015_6F7D

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
    dec sp
    and b
    db $10
    dec b
    nop
    dec d
    ld a, b
    ld l, a
    and c
    xor l
    adc e
    and c
    ld bc, $A132
    ld c, b
    dec d
    rst $10
    ld e, [hl]
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_015_6FB5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_015_6FBF

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_6FC3

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_015_6F86

    dec [hl]

jr_015_6F55:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_015_6F5E:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    dec sp
    and b
    db $10
    dec b
    nop
    dec d
    ld a, b
    ld l, a
    and c
    xor l
    adc e
    and c
    ld bc, $A132
    ld c, b
    dec d
    rst $10
    ld e, [hl]
    ld b, [hl]
    inc de
    ld bc, $A132

jr_015_6F7D:
    ld bc, $A18B
    dec d
    rst $30
    ld l, a
    sbc a
    adc e

jr_015_6F85:
    and c

jr_015_6F86:
    ld b, [hl]
    rrca
    ld bc, $A18B
    dec b
    ld bc, $BD15

jr_015_6F8F:
    ld l, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_015_6FF9

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
    jr nz, jr_015_6FF6

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_7012

    ld [hl], e
    cp $FC
    jr nz, jr_015_700F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_015_6FB5:
    ld l, $FE
    db $FD
    and c
    ld c, b
    dec d
    rst $10
    ld e, [hl]
    and [hl]
    ld d, h

jr_015_6FBF:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_015_6FC3:
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
    jr nz, jr_015_7023

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_015_7051

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
    dec d
    rst $10

jr_015_6FF6:
    ld e, [hl]
    sbc a
    adc e

jr_015_6FF9:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_015_7066

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_015_7075

    ld h, c
    halt

jr_015_700F:
    ld h, l
    jr nz, jr_015_7085

jr_015_7012:
    ld h, l
    ld [hl], h
    jr nz, jr_015_7077

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_015_7064

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_015_7074

    ld h, e
    ld l, a

jr_015_7023:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_015_709C

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
    jr nz, jr_015_708D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_015_70B7

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

jr_015_7051:
    xor l
    adc e
    and c
    ld bc, $A132
    ld c, b
    dec d
    rst $10
    ld e, [hl]
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld bc, $7415
    ld [hl], b
    or [hl]

jr_015_7064:
    ld a, [hl+]
    and b

jr_015_7066:
    ld bc, $4183
    ret nc

    ld bc, $4C03
    ret nc

    ld bc, $480C
    dec d
    xor e
    ld [hl], c

jr_015_7074:
    or l

jr_015_7075:
    ld a, [hl+]
    and b

jr_015_7077:
    cp $83
    ld b, d
    ret nc

    ld bc, $4C03
    ret nc

    ld bc, $480C
    dec d
    xor e
    ld [hl], c

jr_015_7085:
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [bc], a
    dec d
    sbc [hl]
    ld [hl], b

jr_015_708D:
    or [hl]
    ld a, [hl+]
    and b
    ld [bc], a
    add e
    ld b, c

jr_015_7093:
    ret nc

    ld bc, $C603
    db $D3
    rrca
    ld b, $48
    dec d

jr_015_709C:
    xor e
    ld [hl], c
    or l
    ld a, [hl+]
    and b
    db $FD
    add e
    ld b, d
    ret nc

    ld bc, $C603
    db $D3
    rrca
    ld b, $48
    dec d
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    inc b
    dec d
    ret z

    ld [hl], b

jr_015_70B7:
    or [hl]
    ld a, [hl+]
    and b
    inc b
    add e
    ld b, c
    ret nc

    ld bc, $5203
    db $D3
    dec c
    ld [de], a
    ld c, b
    dec d
    xor e
    ld [hl], c
    or l
    ld a, [hl+]
    and b
    ei
    add e
    ld b, d
    ret nc

    ld bc, $5203
    db $D3
    dec c
    ld [de], a
    ld c, b
    dec d
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    db $10
    dec d
    ld a, [c]
    ld [hl], b
    or [hl]
    ld a, [hl+]
    and b
    db $10
    add e
    ld b, c
    ret nc

    ld bc, $1F03
    db $D3
    inc c
    rra
    ld c, b
    dec d
    xor e
    ld [hl], c
    or l
    ld a, [hl+]
    and b
    rst $28
    add e
    ld b, d
    ret nc

    ld bc, $1F03
    db $D3
    inc c
    rra
    ld c, b
    dec d
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    jr nz, jr_015_711E

    inc e
    ld [hl], c
    or [hl]
    ld a, [hl+]
    and b
    jr nz, jr_015_7093

    ld b, c
    ret nc

    ld bc, $1F03
    jp nc, $1F08

    ld c, b
    dec d
    xor e
    ld [hl], c
    or l
    ld a, [hl+]

jr_015_711E:
    and b
    rst $18
    add e
    ld b, d
    ret nc

    ld bc, $1F03
    jp nc, $1F08

    ld c, b
    dec d
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld b, b
    dec d
    ld b, [hl]
    ld [hl], c
    or [hl]
    ld a, [hl+]
    and b
    ld b, b
    add e
    ld b, e
    ret nc

    inc bc
    ld bc, $D1E7
    rlca
    daa
    ld c, b
    dec d
    xor e
    ld [hl], c
    or l
    ld a, [hl+]
    and b
    cp a
    add e
    add e
    ret nc

    inc bc
    ld bc, $D1E7

jr_015_7151:
    rlca
    daa
    ld c, b
    dec d
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    add b
    dec d
    ld [hl], b
    ld [hl], c
    or [hl]
    ld a, [hl+]
    and b
    add b
    add e
    ld b, e
    ret nc

    inc bc
    ld bc, $D12B
    inc b
    dec hl
    ld c, b
    dec d
    xor e
    ld [hl], c
    or l
    ld a, [hl+]
    and b
    ld a, a
    add e
    add e
    ret nc

    inc bc

jr_015_7178:
    ld bc, $D12B
    inc b
    dec hl
    ld c, b
    dec d

jr_015_717F:
    xor e
    ld [hl], c
    ld b, [hl]
    nop
    dec hl
    and b
    ld bc, $9A15
    ld [hl], c
    or [hl]
    dec hl
    and b
    ld bc, $4183
    ret nc

    ld bc, $6E03
    db $D3
    dec c
    ld l, $48
    dec d
    xor e
    ld [hl], c
    or l
    dec hl
    and b
    cp $83
    ld b, d
    ret nc

    ld bc, $6E03
    db $D3
    dec c

jr_015_71A6:
    ld l, $48
    dec d
    xor e
    ld [hl], c
    ld e, e
    ld bc, $AA45
    jr z, jr_015_7151

    ld bc, $DC19
    ld b, [hl]
    add sp, $42
    jp nc, $091E

    or e
    inc sp
    and c
    ld bc, $155D
    ret


    ld [hl], d
    ld h, l
    ld [bc], a
    ld e, l
    dec d
    xor a
    ld [hl], b
    ld h, l
    ld bc, $155D
    dec l
    ld [hl], c
    ld h, l
    ld bc, $155D
    add c
    ld [hl], c

jr_015_71D4:
    or e
    jr z, jr_015_7178

    ld b, $48
    add hl, de
    call c, $AA46
    jr z, jr_015_717F

    ld [bc], a
    add hl, de
    call c, $E846
    ld c, $D4
    ld e, $09
    or e
    inc sp
    and c
    ld [bc], a
    ld e, l
    dec d
    ret


    ld [hl], d
    ld h, l
    ld [bc], a
    ld e, l
    dec d
    add l
    ld [hl], b
    ld h, l
    ld bc, $155D
    inc bc
    ld [hl], c
    ld h, l
    ld bc, $155D
    ld d, a
    ld [hl], c

jr_015_7202:
    or e
    jr z, jr_015_71A6

    ld bc, $1948
    call c, $AA46
    jr z, @-$5E

    inc b
    add hl, de
    call c, $E846
    ret c

    pop de
    ld e, $09
    or e
    inc sp
    and c
    inc bc
    ld e, l
    dec d
    ret


    ld [hl], d
    ld h, l
    ld [bc], a
    ld e, l
    dec d
    ld e, e
    ld [hl], b
    ld h, l
    ld bc, $155D
    add l
    ld [hl], b
    ld h, l
    ld bc, $155D
    dec l
    ld [hl], c

jr_015_7230:
    or e
    jr z, jr_015_71D4

    dec b
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    ld [$DC19], sp
    ld b, [hl]
    add sp, -$19
    jp nc, $091E

    or e
    inc sp
    and c
    inc b
    ld e, l
    dec d
    ret


    ld [hl], d
    ld h, l
    ld [bc], a
    ld e, l
    dec d
    ld e, e
    ld [hl], b
    ld h, l
    ld bc, $155D
    add l
    ld [hl], b
    ld h, l
    ld bc, $155D
    ld d, a
    ld [hl], c
    or e
    jr z, jr_015_7202

    ld [bc], a
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    db $10
    add hl, de
    call c, $E846
    scf
    pop de
    ld e, $09
    or e
    inc sp
    and c
    dec b
    ld e, l
    dec d
    ret


    ld [hl], d
    ld h, l
    ld [bc], a
    ld e, l
    dec d
    xor a
    ld [hl], b
    ld h, l
    ld bc, $155D
    reti


    ld [hl], b
    ld h, l
    ld bc, $155D
    dec l
    ld [hl], c
    or e
    jr z, jr_015_7230

    inc b
    ld c, b
    add hl, de
    call c, $AA46
    jr z, @-$5E

    jr nz, @+$1B

    call c, $E846
    or [hl]
    db $D3
    ld e, $09
    or e
    inc sp
    and c
    ld b, $5D
    dec d
    add c
    ld [hl], c
    ld h, l
    ld bc, $0F46
    ld bc, $A128
    ld a, [bc]
    ld bc, $A133
    add hl, de
    ret nz

    ld b, [hl]
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
    jr c, jr_015_72FA

    call nc, $DAC0
    ld c, b
    add hl, de
    and a
    ld b, [hl]
    ld b, [hl]
    rrca
    ld bc, $A128
    ld bc, $A133
    dec d
    ret c

    ld [hl], d
    ld c, b
    add hl, de
    ret nz

    ld b, [hl]
    ld c, b
    add hl, de
    and a
    ld b, [hl]
    ld e, $13
    or e
    ld sp, $01C7
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    inc d
    ld b, c
    ld e, a
    ld b, e
    jr nz, jr_015_72F7

    nop
    inc d
    ld d, c
    ld e, a
    ld b, e
    ld b, b
    ld c, b
    dec d
    cp h

jr_015_72F7:
    ld l, [hl]
    nop
    nop

jr_015_72FA:
    dec b
    ld b, $00
    ld hl, sp+$04
    ld b, $F8
    nop
    inc bc
    inc b
    ld hl, sp-$08
    ld [bc], a
    inc b
    ldh a, [rP1]
    ld bc, $F004
    ld hl, sp+$00
    inc b
    add b
    nop
    ld hl, sp+$05
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    inc h
    ld hl, sp+$00
    ld [bc], a
    inc h
    ldh a, [$F8]
    ld bc, $F024
    nop
    nop
    inc h
    add b
    nop
    nop
    dec bc
    ld b, $00
    ld hl, sp+$0A
    ld b, $F8
    nop
    add hl, bc
    inc b
    ld hl, sp-$08
    ld [$F004], sp
    nop
    rlca
    inc b
    ldh a, [$F8]
    ld b, $04
    add b
    nop
    ld hl, sp+$0B
    ld h, $00
    nop
    ld a, [bc]
    ld h, $F8
    ld hl, sp+$09
    inc h
    ld hl, sp+$00
    ld [$F024], sp
    ld hl, sp+$07
    inc h
    ldh a, [rP1]
    ld b, $24
    add b
    nop
    nop
    db $10
    ld b, $00
    ld hl, sp+$0F
    ld b, $F8
    nop
    ld c, $04
    ld hl, sp-$08
    dec c
    inc b
    pop af
    ld hl, sp+$0C
    inc h
    pop af
    nop
    inc c
    inc b
    add b
    nop
    ld sp, hl
    ld [de], a
    ld h, $00
    nop
    ld [de], a
    ld b, $F8
    ld hl, sp+$11
    inc h
    ld hl, sp+$00
    ld de, $F004
    ld hl, sp+$0C
    inc h
    ldh a, [rP1]
    inc c
    inc b
    add b
    nop
    ld hl, sp+$10
    ld h, $00
    nop
    rrca
    ld h, $F8
    ld hl, sp+$0E
    inc h
    ld hl, sp+$00
    dec c
    inc h
    pop af
    ld hl, sp+$0C
    inc h
    pop af
    nop
    inc c
    inc b
    add b
    nop
    ld bc, $0617
    nop
    ld sp, hl
    ld d, $06
    ld hl, sp+$00
    dec d
    inc b
    ld hl, sp-$08
    inc d
    inc b
    pop af
    ld hl, sp+$13
    inc h
    pop af
    nop
    inc de
    inc b
    add b
    ldh a, [$F8]
    inc de
    inc h
    ldh a, [rP1]
    inc de
    inc b
    nop
    ld sp, hl
    add hl, de
    ld h, $00
    nop
    add hl, de
    ld b, $F8
    ld hl, sp+$18
    inc h
    ld hl, sp+$00
    jr jr_015_73DC

    add b
    nop
    ld hl, sp+$17

jr_015_73DC:
    ld h, $00
    nop
    ld d, $26
    ld hl, sp-$08
    dec d
    inc h
    ld hl, sp+$00
    inc d
    inc h
    pop af
    ld hl, sp+$13
    inc h
    pop af
    nop
    inc de
    inc b
    add b
    nop
    nop
    rra
    ld b, $00
    ld hl, sp+$1E
    ld b, $F8
    nop
    dec e
    inc b
    ld hl, sp-$08
    inc e
    inc b
    pop af
    nop
    dec de
    inc b
    pop af
    ld hl, sp+$1A
    inc b
    add b
    nop
    nop
    inc hl
    ld b, $00
    ld hl, sp+$22
    ld b, $F8
    nop
    ld hl, $F804
    ld hl, sp+$20
    inc b
    ldh a, [rP1]
    dec de
    inc b
    ldh a, [$F8]
    ld a, [de]
    inc b
    add b
    nop
    nop
    daa
    ld b, $00
    ld hl, sp+$26
    ld b, $F8
    nop
    dec h
    inc b
    ld hl, sp-$08
    inc h
    inc b
    pop af
    nop
    dec de
    inc b
    pop af
    ld hl, sp+$1A
    inc b
    add b
    nop
    ld hl, sp+$1F
    ld h, $00
    nop
    ld e, $26
    ld hl, sp-$08
    dec e
    inc h
    ld hl, sp+$00
    inc e
    inc h
    pop af
    ld hl, sp+$1B
    inc h
    pop af
    nop
    ld a, [de]
    inc h
    add b
    nop
    ld hl, sp+$23
    ld h, $00
    nop
    ld [hl+], a
    ld h, $F8
    ld hl, sp+$21
    inc h
    ld hl, sp+$00
    jr nz, @+$26

    ldh a, [$F8]
    dec de
    inc h
    ldh a, [rP1]
    ld a, [de]
    inc h
    add b
    nop
    ld hl, sp+$27
    ld h, $00
    nop
    ld h, $26
    ld hl, sp-$08
    dec h
    inc h
    ld hl, sp+$00
    inc h
    inc h
    pop af
    ld hl, sp+$1B
    inc h
    pop af
    nop
    ld a, [de]
    inc h
    add b
    ld d, b
    ld [$0008], sp
    rst $38
    and a
    ld [hl], e
    ret nz

    ld [hl], e
    reti


    ld [hl], e
    ret nz

    ld [hl], e
    ld c, c
    adc b
    ld [hl], h
    ld d, b
    ld [$0008], sp
    ld bc, $735C
    ld [hl], l
    ld [hl], e
    adc [hl]
    ld [hl], e
    ld [hl], l
    ld [hl], e
    ld c, c
    sbc b
    ld [hl], h
    ld d, b
    ld [$FF08], sp
    nop
    dec a
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld l, a
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld c, c
    xor b
    ld [hl], h
    ld d, b
    ld [$0108], sp
    nop
    ld a, [c]
    ld [hl], e
    dec bc
    ld [hl], h
    inc h
    ld [hl], h
    dec bc
    ld [hl], h
    ld c, c
    cp b
    ld [hl], h
    ld d, b
    ld [$0008], sp
    cp $A7
    ld [hl], e
    ret nz

    ld [hl], e
    reti


    ld [hl], e
    ret nz

    ld [hl], e
    ld c, c
    ret z

    ld [hl], h
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld e, h
    ld [hl], e
    ld [hl], l
    ld [hl], e
    adc [hl]
    ld [hl], e
    ld [hl], l
    ld [hl], e
    ld c, c
    ret c

    ld [hl], h
    ld d, b
    ld [$FE08], sp
    nop
    dec a
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld l, a
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld c, c
    add sp, $74
    ld d, b
    ld [$0208], sp
    nop
    ld a, [c]
    ld [hl], e
    dec bc
    ld [hl], h
    inc h
    ld [hl], h
    dec bc
    ld [hl], h
    ld c, c
    ld hl, sp+$74
    ld c, a
    rst $38
    nop
    nop
    ret nz

    ld [hl], e
    nop
    ld c, c
    ld [$4F75], sp
    rst $38
    nop
    nop
    ld [hl], l
    ld [hl], e
    nop
    ld c, c
    ld [de], a
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld d, [hl]
    ld [hl], h
    nop
    ld c, c
    inc e
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    dec bc
    ld [hl], h
    nop
    ld c, c
    ld h, $75
    ld c, a
    rst $38
    nop
    nop
    ld b, e
    ld [hl], e
    nop
    ld c, c
    jr nc, jr_015_75AF

    ld c, a
    rst $38
    nop

jr_015_753D:
    nop
    ld a, [hl+]
    ld [hl], e
    nop
    ld c, c
    ld a, [hl-]
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld de, $0073
    ld c, c
    ld b, h
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld hl, sp+$72
    nop
    ld c, c
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    inc bc
    dec d
    nop
    nop
    ld l, a
    ld [hl], l
    dec d
    inc bc
    nop
    halt
    ld [hl], l
    dec d
    ld [bc], a
    nop
    add h
    ld [hl], l
    dec d
    ld bc, $7D00
    ld [hl], l
    rst $38
    inc d
    dec d
    ld [$6575], sp
    ld bc, $1412
    dec d
    ld [de], a
    ld [hl], l
    ld h, l
    ld bc, $1412
    dec d
    inc e
    ld [hl], l
    ld h, l
    ld bc, $1412
    dec d
    ld h, $75
    ld h, l
    ld bc, $0012
    nop
    dec b
    inc b
    nop
    ld hl, sp+$04
    inc b
    ld hl, sp+$00
    inc bc
    ld bc, $F8F8
    ld [bc], a
    ld bc, $00F0
    ld bc, $F000
    ld hl, sp+$00
    nop
    add b
    nop
    ld hl, sp+$05
    inc h
    nop
    nop
    inc b
    inc h
    ld hl, sp-$08
    inc bc

jr_015_75AF:
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    jr nz, jr_015_753D

    nop
    nop
    dec bc
    inc b
    nop
    ld hl, sp+$0A
    inc b
    ld hl, sp+$00
    add hl, bc
    ld bc, $F8F8
    ld [$F001], sp
    nop
    rlca
    nop
    ldh a, [$F8]
    ld b, $00
    add b
    nop
    ld hl, sp+$0B
    inc h
    nop

jr_015_75DB:
    nop
    ld a, [bc]
    inc h
    ld hl, sp-$08
    add hl, bc
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$07
    jr nz, jr_015_75DB

    nop
    ld b, $20
    add b
    nop
    nop
    rrca
    inc b
    nop
    ld hl, sp+$0E
    inc b
    pop af
    nop
    ld de, $F100
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    dec c
    ld bc, $F8F8
    inc c
    ld bc, $0080
    nop
    inc de
    inc b
    nop
    ld sp, hl
    inc de
    inc h
    ld hl, sp+$00
    ld [de], a
    ld bc, $F8F8
    ld [de], a
    ld hl, $00F0
    ld de, $F000
    ld hl, sp+$10
    nop
    add b
    nop
    ld hl, sp+$0F
    inc h
    nop
    nop
    ld c, $24
    pop af
    nop
    ld de, $F100
    ld hl, sp+$10
    nop
    ld hl, sp-$08
    dec c
    ld hl, $00F8
    inc c
    ld hl, $0080
    nop
    rla
    inc b
    nop
    ld hl, sp+$16
    inc b
    ld hl, sp+$00
    dec d
    ld bc, $F8F8
    inc d
    ld bc, $00F1
    add hl, de
    nop
    pop af
    ld hl, sp+$18
    nop
    add b
    nop
    nop
    dec de
    inc b
    nop
    ld sp, hl
    dec de
    inc h
    ld hl, sp+$00
    ld a, [de]
    ld bc, $F9F8
    ld a, [de]
    ld hl, $00F0
    add hl, de
    nop
    ldh a, [$F8]
    jr jr_015_766B

jr_015_766B:
    add b
    nop
    ld sp, hl
    rla
    inc h
    nop
    ld bc, $2416
    ld hl, sp-$07
    dec d
    ld hl, $01F8
    inc d
    ld hl, $00F1
    add hl, de
    nop
    pop af
    ld hl, sp+$18
    nop
    add b
    pop af
    nop
    ld hl, $F100
    ld hl, sp+$20
    nop
    ld hl, sp+$00
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $0000
    rra
    inc b
    nop
    ld hl, sp+$1E
    inc b
    add b
    nop
    nop
    dec h
    inc b
    nop
    ld hl, sp+$24
    inc b
    ld hl, sp+$00
    inc hl
    ld bc, $F8F8
    ld [hl+], a
    ld bc, $00F0
    ld hl, $F000
    ld hl, sp+$20
    nop
    add b
    nop
    nop
    add hl, hl
    inc b
    nop
    ld hl, sp+$28
    inc b
    ld hl, sp+$00
    daa
    ld bc, $F8F8
    ld h, $01
    pop af
    nop
    ld hl, $F100
    ld hl, sp+$20
    nop
    add b
    pop af
    ld hl, sp+$21
    jr nz, @-$0D

    nop
    jr nz, jr_015_76F8

    ld hl, sp-$08
    dec e
    ld hl, $00F8
    inc e
    ld hl, $F800
    rra
    inc h
    nop
    nop
    ld e, $24
    add b
    nop
    ld hl, sp+$25
    inc h
    nop
    nop
    inc h
    inc h
    ld hl, sp-$08
    inc hl
    ld hl, $00F8
    ld [hl+], a

jr_015_76F8:
    ld hl, $F8F0
    ld hl, $F020
    nop
    jr nz, @+$22

    add b
    nop
    ld hl, sp+$29
    inc h
    nop
    nop

jr_015_7708:
    jr z, jr_015_772E

    ld hl, sp-$08
    daa
    ld hl, $00F8
    ld h, $21
    pop af
    ld hl, sp+$21
    jr nz, jr_015_7708

    nop
    jr nz, jr_015_773A

    add b
    ld c, a
    ld [de], a
    nop
    rst $38
    ld [$0076], sp
    ld c, a
    add hl, bc
    nop
    cp $08
    halt
    nop
    ld c, a
    add hl, bc
    nop
    cp $08

jr_015_772E:
    halt
    nop
    ld c, a
    inc c
    nop
    rst $38
    ld [$0076], sp
    ld c, a
    ld [de], a
    nop

jr_015_773A:
    rst $38
    ld [$0076], sp
    ld c, a
    add hl, bc
    nop
    cp $08
    halt
    nop
    ld c, a
    add hl, bc
    nop
    cp $08
    halt
    nop
    ld c, a
    inc c
    nop
    rst $38
    ld [$0076], sp
    ld c, a
    ld [de], a
    rst $38
    cp $08
    halt
    nop
    ld c, a
    add hl, bc
    rst $38
    rst $38
    ld [$0076], sp
    ld c, a
    add hl, bc
    rst $38
    nop
    ld [$0076], sp
    ld c, a
    inc c
    rst $38
    ld bc, $7608
    nop
    ld c, a
    ld [de], a
    nop
    ld bc, $7608
    nop
    ld c, c
    ld h, h
    ld a, b
    ld c, a
    ld [bc], a
    nop
    cp $EF
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    rst $38
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    nop
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld bc, $75EF
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, a
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    ld [hl], l
    nop
    ld c, c
    ld a, c
    ld [hl], a
    ld c, a
    rst $38
    nop
    cp $08
    halt
    nop
    ld c, c
    ret nc

    ld [hl], a
    ld d, b
    ld [$0008], sp
    rst $38
    ld a, [hl-]
    halt
    ld d, e
    halt
    ld l, h
    halt
    ld d, e
    halt
    ld c, c
    jp c, $5077

    ld [$0008], sp
    ld bc, $75EF
    ld [$2176], sp
    halt
    ld [$4976], sp
    ld [$5077], a
    ld [$FF08], sp
    nop
    ret nc

    halt
    jp hl


    halt
    ld [bc], a
    ld [hl], a
    jp hl


    halt
    ld c, c
    ld a, [$5077]
    ld [$0108], sp
    nop
    add l
    halt
    sbc [hl]
    halt
    or a
    halt
    sbc [hl]
    halt
    ld c, c
    ld a, [bc]
    ld a, b
    ld d, b
    ld [$0008], sp
    cp $3A
    halt
    ld d, e
    halt
    ld l, h
    halt
    ld d, e
    halt
    ld c, c
    ld a, [de]
    ld a, b
    ld d, b
    ld [$0008], sp
    ld [bc], a
    rst $28
    ld [hl], l
    ld [$2176], sp
    halt
    ld [$4976], sp
    ld a, [hl+]
    ld a, b
    ld d, b
    ld [$FE08], sp
    nop
    ret nc

    halt
    jp hl


    halt
    ld [bc], a
    ld [hl], a
    jp hl


    halt
    ld c, c
    ld a, [hl-]
    ld a, b
    ld d, b
    ld [$0208], sp
    nop
    add l
    halt
    sbc [hl]
    halt
    or a
    halt
    sbc [hl]
    halt
    ld c, c
    ld c, d
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    ld d, e
    halt
    nop
    ld c, c
    ld e, d
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    ld [$0076], sp
    ld c, c
    ld h, h
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    jp hl


    halt
    nop
    ld c, c
    ld l, [hl]
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    sbc [hl]
    halt
    nop
    ld c, c
    ld a, b
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    sub $75
    nop
    ld c, c
    add d
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    cp l
    ld [hl], l
    nop
    ld c, c
    adc h
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    and h
    ld [hl], l
    nop
    ld c, c
    sub [hl]
    ld a, b
    ld c, a
    rst $38
    nop
    nop
    adc e
    ld [hl], l
    nop
    ld c, c
    and b
    ld a, b
    ld c, [hl]
    inc bc
    dec d
    nop
    nop
    pop bc
    ld a, b
    dec d
    inc bc
    nop
    call z, $1578
    ld [bc], a
    nop
    ld [c], a
    ld a, b
    dec d
    ld bc, $D700
    ld a, b
    rst $38
    inc d
    dec d
    ld e, d
    ld a, b
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    dec d
    ld h, h
    ld a, b
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    inc d
    dec d
    ld a, b
    ld a, b
    ld h, l
    ld bc, $31B3
    rst $00
    nop
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
