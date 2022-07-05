; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    ld e, $1F
    ld e, h
    db $10
    rlca
    ld b, b
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
    jr nz, jr_010_405D

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_010_406E

    ld l, a
    ld l, $FF
    jr nz, jr_010_407E

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    db $10
    ld l, d
    ld b, b
    db $10
    ld sp, $9A40
    db $10
    and l
    ld b, l
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_010_4092

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_010_40B9

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    db $10
    ld h, b
    ld b, b
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_010_408B

    ld l, $FE
    db $FD
    ld c, b

jr_010_405D:
    db $10
    ld l, d
    ld b, b
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_010_4098

    ld l, $FE
    db $FD
    and c
    sbc e
    stop

jr_010_406E:
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc de
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_010_407E:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de

jr_010_408B:
    ld h, a
    xor d
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l

jr_010_4092:
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h

jr_010_4098:
    dec b
    nop
    inc [hl]
    ld h, e
    inc c
    ld b, $C0
    ret nc

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
    rrca
    add hl, de
    db $FD
    jp nc, $1000

    db $ED
    ld b, b
    db $10
    dec bc
    ld b, c
    dec b
    inc bc
    adc a

jr_010_40B9:
    ld l, [hl]
    dec c
    dec de
    scf
    db $D3
    ld e, h
    db $10
    db $FC
    ld b, b
    db $10
    ld e, b
    ld b, d
    ld l, [hl]
    jr nc, jr_010_40D5

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_40DD

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_40D5:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    add [hl]
    ld [hl], e

jr_010_40DD:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    add hl, de
    db $10
    ld b, a
    inc d
    inc de
    ld e, h
    ld l, l
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    add hl, de
    db $10
    ld b, a
    inc d
    dec d
    and b
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    db $10
    rla
    ld b, c
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    inc b
    ld b, $FF
    rst $38
    db $10
    ld [hl], b
    ld b, c
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    db $10
    cp b
    ld b, c
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    ld bc, $FF06
    rst $38
    db $10
    ld [$A242], sp
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_010_41AC

    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], e
    ld h, l
    ld [hl], d
    halt
    ld h, l
    jr nz, jr_010_41C0

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_41CC

    ld l, b
    ld h, c
    ld l, [hl]
    cp $6F
    ld l, [hl]
    ld h, l
    jr nz, jr_010_41D1

    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    ld c, b
    db $10
    ld d, h
    ld b, d
    and d
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_010_41F0

    ld [hl], b
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    rst $38
    ld l, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_41EF

    ld h, l
    ld [hl], h
    jr nz, jr_010_41FB

    ld [hl], l
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, jr_010_41FB

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $49FF
    daa
    ld l, l
    ld l, $2E
    ld l, $FE
    ld h, c
    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_010_4216

    ld h, [hl]
    jr nz, jr_010_421E

    ld l, b
    ld h, l

jr_010_41AC:
    rst $38
    ld h, h
    ld h, c
    ld [hl], d
    ld l, e
    ld hl, $FDFE
    ld c, b
    db $10
    ld d, h
    ld b, d
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    ld l, l
    ld h, l

jr_010_41C0:
    jr nz, jr_010_4231

    ld h, [hl]
    jr nz, jr_010_4239

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], d
    ld l, c

jr_010_41CC:
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_010_4239

jr_010_41D1:
    ld h, c
    halt
    ld h, l
    jr nz, jr_010_4237

    cp $73
    ld [hl], l
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_010_4241

    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld h, l
    ld l, [hl]
    ld h, h
    inc l
    jr nz, jr_010_425F

    ld l, a
    jr nz, jr_010_4256

jr_010_41EF:
    ld h, l

jr_010_41F0:
    ld [hl], h
    jr nz, jr_010_4262

    ld h, [hl]
    ld h, [hl]
    cp $62
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_010_41FB:
    ld h, l
    jr nz, jr_010_4272

    ld l, b
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    ld c, b
    db $10
    ld d, h
    ld b, d
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    jr nz, @+$75

    ld h, c
    ld [hl], a
    jr nz, jr_010_4286

    ld l, a
    ld l, l
    ld h, l

jr_010_4216:
    rst $38
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h

jr_010_421E:
    ld [hl], e
    jr nz, @+$6B

    ld l, [hl]
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $20
    ld c, c
    rst $38
    ld [hl], a
    ld l, a
    ld l, [hl]

jr_010_4231:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_010_42AD

    ld l, b

jr_010_4237:
    ld h, c
    ld [hl], h

jr_010_4239:
    cp $74
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_010_42AD

    ld l, c

jr_010_4241:
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ccf
    cp $FD
    ld c, b
    db $10
    ld d, h
    ld b, d
    and c
    ld e, e

jr_010_4256:
    ld bc, $B345
    ld sp, $01C7
    ld e, [hl]
    db $10
    ld h, h

jr_010_425F:
    ld b, d
    ld c, b
    dec d

jr_010_4262:
    xor d
    ld a, b
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    inc b
    ld b, $FF
    rst $38
    db $10
    ldh [rSCY], a
    ld b, [hl]
    rrca

jr_010_4272:
    nop
    inc a
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    db $10
    inc [hl]
    ld b, e
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    ld bc, $FF06
    rst $38
    db $10

jr_010_4286:
    sbc h
    ld b, e
    and d
    jr z, jr_010_42CE

    and [hl]
    ld c, c
    jr nz, jr_010_4306

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_010_4308

    ld h, c
    halt
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$6B

    ld h, [hl]
    jr nz, jr_010_430A

    ld [hl], h
    jr nz, jr_010_430B

    ld h, l
    ld [hl], h
    ld [hl], e
    cp $74
    ld l, a
    ld l, a
    jr nz, jr_010_431F

jr_010_42AD:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_010_4316

    ld [hl], l
    ld [hl], h
    dec l
    rst $38
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$70

    ld l, a
    jr nz, jr_010_433B

    ld h, c
    ld a, c
    cp $49
    daa
    ld l, l
    jr nz, jr_010_4333

    ld l, a
    ld l, c

jr_010_42CE:
    ld l, [hl]
    ld h, a
    jr nz, jr_010_433B

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld c, b
    db $10
    dec de
    ld b, h
    and d
    jr z, jr_010_4326

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_4357

    ld h, l
    ld h, l
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, l
    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_435E

    halt
    ld h, l
    ld [hl], d
    ld a, c
    cp $6E
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_010_4365

    ld l, [hl]
    ld h, h

jr_010_4306:
    jr nz, jr_010_436B

jr_010_4308:
    ld [hl], d
    ld h, c

jr_010_430A:
    ld l, [hl]

jr_010_430B:
    ld l, [hl]
    ld a, c
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_010_4385

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l

jr_010_4316:
    ld h, l
    ld h, h
    dec l
    dec l
    rst $38
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_010_431F:
    jr nz, jr_010_4388

    ld h, l
    ld [hl], h
    jr nz, jr_010_4394

    ld [hl], l

jr_010_4326:
    ld [hl], h
    cp $61
    ld l, h
    ld l, c
    halt
    ld h, l
    ld hl, $FDFE
    ld c, b
    db $10
    dec de

jr_010_4333:
    ld b, h
    and d
    jr z, jr_010_437A

    and [hl]
    ld c, b
    ld h, c
    halt

jr_010_433B:
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_43B4

    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld c, e
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_010_43BA

    ld [hl], d
    jr nz, jr_010_43A8

    ld h, l
    ld [hl], h
    cp $61
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_010_4357:
    inc l
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    rst $38

jr_010_435E:
    ld a, c
    ld l, a
    ld [hl], l
    ccf
    jr nz, jr_010_4384

    ld c, c

jr_010_4365:
    daa
    ld h, h
    jr nz, jr_010_43D1

    ld h, c
    ld [hl], h

jr_010_436B:
    ld h, l
    cp $74
    ld l, a
    jr nz, jr_010_43D9

    ld h, c
    halt
    ld h, l
    jr nz, jr_010_43EA

    ld l, a
    rst $38
    ld h, [hl]
    ld l, c

jr_010_437A:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_010_43F3

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_010_43F3

jr_010_4384:
    ld l, [hl]

jr_010_4385:
    cp $74
    ld l, b

jr_010_4388:
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_010_43F5

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_010_4406

    ld [hl], l
    ld [hl], d

jr_010_4394:
    ld h, [hl]
    ld l, $FE
    db $FD
    ld c, b
    db $10
    dec de
    ld b, h
    and d
    jr z, jr_010_43E2

    and [hl]
    ld c, b
    ld b, l
    ld e, c
    ld hl, $6420
    ld l, c
    ld h, h

jr_010_43A8:
    jr nz, jr_010_4423

    ld l, a
    ld [hl], l
    rst $38
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_010_4427

    ld l, b

jr_010_43B4:
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d

jr_010_43BA:
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_010_443A

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d
    jr z, jr_010_440F

    and [hl]
    ld d, h
    ld c, b
    ld b, c
    ld d, h

jr_010_43D1:
    ld hl, $4120
    ld l, [hl]
    ld h, h
    jr nz, jr_010_443F

    ld h, l

jr_010_43D9:
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_010_4449

    ld h, c

jr_010_43E2:
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_010_4456

    ld h, [hl]
    ld h, [hl]
    ld h, c

jr_010_43EA:
    cp $6D
    ld h, l
    ld hl, $FDFE
    and d
    cp b
    ld e, l

jr_010_43F3:
    and [hl]
    ld c, c

jr_010_43F5:
    daa
    ld l, l
    jr nz, jr_010_4467

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_447F

jr_010_4406:
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]

jr_010_440F:
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, b
    ld hl, $FDFE
    ld c, b
    db $10
    dec de
    ld b, h
    and c
    ld e, e
    ld bc, $2245
    inc de
    sub a
    or e

jr_010_4423:
    ld sp, $00C7
    or e

jr_010_4427:
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
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h
    ld l, e

jr_010_443A:
    halt
    ld c, c
    inc l
    sbc l
    ld c, a

jr_010_443F:
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld c, $1D

jr_010_4449:
    ld [hl], h
    db $D3
    nop
    db $10
    sbc c
    ld b, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]

jr_010_4456:
    rrca
    add hl, de
    db $FD
    jp nc, $1000

    db $ED
    ld b, b
    db $10
    dec bc
    ld b, c
    dec b
    inc bc
    adc a
    ld l, [hl]
    dec c
    dec de

jr_010_4467:
    scf
    db $D3
    ld e, h
    db $10
    db $FC
    ld b, b
    db $10
    ld e, b
    ld b, d
    ld l, [hl]
    jr nc, jr_010_4480

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_4488

    ret nc

    ld b, e
    ret nz

    add l

jr_010_447F:
    nop

jr_010_4480:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    nop
    add [hl]

jr_010_4488:
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_010_449F

jr_010_449F:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    inc de
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    or e
    dec [hl]
    and c
    dec bc
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    jr @+$11

    jp c, $00D1

    db $10
    ld hl, $1945
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec d
    ld de, $D213
    nop
    db $10
    ld d, l
    ld b, l
    db $10
    ld h, [hl]
    ld b, l
    dec b
    inc bc
    adc a
    ld l, [hl]
    dec c
    dec de
    scf
    db $D3
    ld e, h
    dec d
    ld a, b
    ld a, b
    db $10
    ld e, b
    ld b, d
    ld l, [hl]
    jr nc, jr_010_450F

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_4517

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_450F:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    rla

jr_010_4517:
    ld de, $0F73
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
    jr nz, jr_010_453D

    xor e
    ld e, l
    jr nz, jr_010_452D

jr_010_452D:
    ld e, [hl]
    dec bc
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    db $D3
    ld e, l
    add b
    ld d, $08
    ld bc, $2043

jr_010_453D:
    inc d
    inc d
    xor e
    ld e, l
    add b
    ld b, $11
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
    stop
    ld b, b
    ld b, l
    inc d
    inc de
    ld a, $6D
    ld h, e
    ld bc, $1314
    ld c, b
    ld l, l
    ld h, e
    ld [bc], a
    inc d
    inc de
    ld a, $6D
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    db $10
    ld [hl], d
    ld b, l
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
    jr nz, jr_010_45E2

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_010_45F9

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_45F3

    ld h, c
    halt
    ld h, l
    jr nz, jr_010_45F1

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $109B
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    inc de
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
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld c, $1D
    ld [hl], h
    db $D3
    nop
    db $10
    ld e, $46
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rrca
    add hl, de
    db $FD
    jp nc, $1000

jr_010_45E2:
    db $ED
    ld b, b
    db $10
    dec bc
    ld b, c
    dec b
    inc bc
    adc a
    ld l, [hl]
    dec c
    dec de
    scf
    db $D3
    ld e, h
    db $10

jr_010_45F1:
    db $FC
    ld b, b

jr_010_45F3:
    db $10
    ld e, b
    ld b, d
    ld l, [hl]
    jr nc, jr_010_4606

jr_010_45F9:
    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_460E

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_4606:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    add [hl]
    ld [hl], e

jr_010_460E:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    inc hl
    ld e, h
    jr nc, jr_010_4638

    xor e
    ld e, l
    nop
    nop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    or [hl]
    ld b, a
    and b
    inc b
    ld c, [hl]
    ld bc, $A136
    ld d, $00
    nop

jr_010_4638:
    ld l, h
    ld b, b
    db $10
    ld bc, $5000
    ld b, [hl]
    db $10
    ld [bc], a
    nop
    ld b, a
    ld b, a
    db $10
    inc bc
    nop
    sub a
    ld c, d
    ld d, $04
    nop
    ld l, h
    ld b, b
    rst $38
    ld b, l
    ld [hl+], a
    ld e, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e

Jump_010_465C:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    adc h
    ld d, b
    inc de
    dec b
    nop
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

    nop
    db $10
    sbc l
    ld b, [hl]
    add hl, de
    add sp, $46
    dec b

Jump_010_4677:
    ld [bc], a
    ld hl, sp+$4A
    ld c, $0D
    ld [de], a
    pop de
    nop
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
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
    jr nc, jr_010_46B5

    inc d
    sbc l
    ld e, h
    jr nz, jr_010_46B9

    ld e, l
    ld e, h
    jr nz, jr_010_46BD

    sbc l
    ld e, h
    jr nz, jr_010_46C1

    ld e, l
    ld e, h
    jr nz, jr_010_46C5

    or l
    ld e, l
    nop
    nop

jr_010_46B5:
    ld e, [hl]
    db $10
    xor $46

jr_010_46B9:
    ld h, l
    ld bc, $1415

jr_010_46BD:
    sbc l
    ld e, h
    jr jr_010_46C1

jr_010_46C1:
    inc c
    ld [bc], a
    inc d
    inc d

jr_010_46C5:
    and c
    ld e, l
    ld e, [hl]
    db $10
    inc b
    ld b, a
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld a, l
    ld e, h
    jr nz, jr_010_46E7

    inc sp
    ld e, h
    jr nc, jr_010_46EB

    ld a, l
    ld e, h
    jr nz, jr_010_46EF

    inc sp
    ld e, h
    jr nc, jr_010_46F3

    ld a, l
    ld e, h
    jr nz, jr_010_46E3

jr_010_46E3:
    ld [hl], d
    rrca
    rst $38
    ld a, a

jr_010_46E7:
    ld a, d
    jr nz, @+$11

    ld c, b

jr_010_46EB:
    db $10
    ld h, h
    ld d, h
    and d

jr_010_46EF:
    sbc b
    ld b, c
    and [hl]
    ld d, a

jr_010_46F3:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_476E

    ld l, b
    ld l, c
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_010_4791

    ld l, a
    jr nz, jr_010_4784

    ld l, a
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    rst $38
    ld h, c
    ld [hl], e
    ld l, e
    jr nz, @+$47

    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    cp $6C
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld [hl+], a
    ld e, $97
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
    adc h
    ld d, b
    inc de
    dec b
    nop
    ld hl, sp+$4A
    ld c, $06
    add [hl]
    ret nc

    nop
    db $10
    ldh a, [rBGP]
    add hl, de
    add sp, $46
    dec b

jr_010_476E:
    ld [bc], a
    ld hl, sp+$4A
    ld b, $09
    cp d
    ret nc

    nop
    db $10
    inc h
    ld c, b
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld [$BC09], sp
    ret nc

jr_010_4784:
    jr z, @+$12

    ld a, b
    ld c, b
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec bc
    ld a, [bc]

jr_010_4791:
    db $D3
    ret nc

    ld e, b
    ld de, $728D
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    inc bc
    ld [$D0A3], sp
    ld h, h
    db $10
    db $D3
    ld c, b
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    inc bc
    ld a, [bc]
    set 2, b
    ld h, h
    db $10
    inc d
    ld c, c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_010_47C8

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_47CF

    ldh a, [rLYC]
    add b
    add d
    nop

jr_010_47C8:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_010_47CF:
    nop
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    ld b, b
    add [hl]
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
    ld b, $88
    add hl, bc
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
    ld h, l
    ld bc, $1415
    ld a, l
    ld e, h
    jr nc, jr_010_480C

    ld e, l
    ld e, h
    db $10
    inc d
    cp a
    ld e, l
    nop
    nop
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld e, l
    ld e, h
    dec h
    inc d
    cp a
    ld e, l
    nop
    nop

jr_010_480C:
    ld e, [hl]
    db $10
    cp c
    ld c, c
    ld h, l
    inc bc
    inc c
    inc b
    dec d
    inc d
    inc hl
    ld e, h
    ld b, [hl]
    inc d
    adc l
    ld e, h
    ld b, b
    inc d
    and c
    ld e, l
    nop
    nop
    add hl, de
    ld b, l
    inc d
    dec d
    ld c, [hl]
    ld [hl], l
    ld b, e
    jr nc, jr_010_4889

    db $10
    ld b, l
    ld c, c
    ld h, l
    ld bc, $2443
    inc d
    dec d
    ld a, [hl-]
    ld [hl], l
    ld e, [hl]
    db $10
    and c
    ld c, c
    ld h, l
    ld [bc], a
    ld b, e
    inc h
    inc d
    dec d
    ld h, $75
    ld h, l
    inc b
    dec d
    dec d
    cp b
    ld [hl], h
    jr jr_010_485F

    inc e
    ld [hl], l
    nop
    nop
    ld h, l
    dec b
    dec d
    dec d
    cp b
    ld [hl], h
    jr jr_010_486B

    adc b
    ld [hl], h
    jr jr_010_486F

    cp b
    ld [hl], h
    jr jr_010_4873

    inc e

jr_010_485F:
    ld [hl], l
    nop
    nop
    ld h, l
    ld b, $15
    dec d
    adc b
    ld [hl], h
    ld [hl+], a
    dec d
    cp b

jr_010_486B:
    ld [hl], h
    db $10
    dec d
    adc b

jr_010_486F:
    ld [hl], h
    ld [$B815], sp

jr_010_4873:
    ld [hl], h
    ld b, b
    nop
    add hl, de
    ld b, l
    inc d
    db $10
    call c, Call_010_657A
    ld bc, $2A43
    inc d
    db $10
    jp nc, Jump_010_657A

    ld [bc], a
    ld b, e
    inc h
    inc d

jr_010_4889:
    db $10
    cp [hl]
    ld a, d
    ld h, l
    inc bc
    ld b, e
    ld b, [hl]
    inc d
    db $10
    or h
    ld a, d
    ld e, [hl]
    db $10
    dec d
    ld c, d
    ld h, l
    inc b
    dec d
    db $10
    ld d, b
    ld a, d
    jr jr_010_48B0

    or h
    ld a, d
    nop
    nop
    ld b, e
    jr z, jr_010_4905

    db $10
    dec h
    ld c, d
    ld h, l
    dec b
    dec d
    db $10
    ld d, b
    ld a, d

jr_010_48B0:
    jr jr_010_48C2

    or h
    ld a, d
    nop
    nop
    ld b, e
    jr z, jr_010_4917

    db $10
    ld d, c
    ld c, d
    ld h, l
    ld b, $43
    db $10
    ld e, [hl]
    db $10

jr_010_48C2:
    add h
    ld c, d
    dec d
    db $10
    jr nz, jr_010_4942

    jr c, jr_010_48DA

    ld d, b
    ld a, d
    ld b, b
    nop
    ld e, a
    nop
    inc bc
    add hl, de
    ld b, l
    ld h, l
    inc b
    dec d
    inc de
    ld d, h
    ld e, l
    inc h

jr_010_48DA:
    inc de
    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, l
    dec b
    dec d
    inc de
    ld d, h
    ld e, l
    jr jr_010_48FA

    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, l
    dec [hl]
    dec d
    inc de
    ld d, h
    ld e, l
    db $10
    inc de
    add hl, bc
    ld e, [hl]
    ld b, b
    inc de
    ld d, h
    ld e, l
    dec [hl]

jr_010_48FA:
    inc de
    ld h, h
    ld e, l
    jr nc, jr_010_4912

    ld d, h
    ld e, l
    dec [hl]
    nop
    ld e, a
    nop

jr_010_4905:
    inc bc
    ld b, e
    jr nz, jr_010_497B

    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_010_491E

    ld c, b
    db $10
    adc l

jr_010_4912:
    ld d, c
    ld b, l
    ld h, l
    inc b
    ld b, e

jr_010_4917:
    dec bc
    dec d
    inc de
    ld d, h
    ld e, l
    jr jr_010_4931

jr_010_491E:
    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, l
    dec b
    ld b, e
    inc c
    dec d
    inc de
    ld d, h
    ld e, l
    inc a
    inc de
    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, l

jr_010_4931:
    dec [hl]
    dec d
    inc de
    ld d, h
    ld e, l
    inc l
    inc de
    ld h, h
    ld e, l
    ld a, [hl-]
    inc de
    ld d, h
    ld e, l
    ld d, b
    inc de
    add hl, bc
    ld e, [hl]

jr_010_4942:
    nop
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
    jr nz, jr_010_49B8

    ld [hl], e
    jr nz, @+$71

    ld [hl], l
    ld [hl], d
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    dec l
    ld [hl], e
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    cp $68
    ld l, c
    ld h, h
    ld h, l
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_010_49E2

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_010_49E7

    ld h, l
    halt

jr_010_497B:
    ld h, l
    ld [hl], d
    cp $65
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_010_49E9

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_010_49EF

    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], l
    ld [hl], e
    jr nz, jr_010_49F6

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_010_49F7

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    ld c, b
    ld e, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_010_4A11

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_010_4A26

    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a

jr_010_49B8:
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld c, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_010_4A27

    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld hl, $57FE
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h

jr_010_49E2:
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_010_49E7:
    rst $38
    ld [hl], a

jr_010_49E9:
    ld h, l
    jr nz, jr_010_4A63

    ld l, a
    ld l, [hl]
    daa

jr_010_49EF:
    ld [hl], h
    jr nz, jr_010_4A54

    ld h, l
    cp $61
    ld h, d

jr_010_49F6:
    ld l, h

jr_010_49F7:
    ld h, l
    jr nz, jr_010_4A6E

    ld l, a
    jr nz, jr_010_4A65

    ld l, a
    ld l, h
    ld h, h
    rst $38
    ld l, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_010_4A7A

    ld l, b
    ld h, l
    jr nz, @+$6A

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld hl, $FDFE

jr_010_4A11:
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    xor b
    ld c, a
    and [hl]
    ld d, l
    ld l, b
    jr nz, @+$71

    ld l, b
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d

jr_010_4A26:
    ld c, b

jr_010_4A27:
    ld e, a
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_010_4A97

    ld l, [hl]
    jr nz, jr_010_4A94

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
    jr nz, jr_010_4A86

    jr nz, jr_010_4AB2

    ld h, c
    ld a, c
    jr nz, jr_010_4ABA

    ld h, l
    cp $6C
    ld h, l
    ld h, c
    halt
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    dec b
    ld b, l
    and d
    xor b
    ld c, a

jr_010_4A54:
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, @+$4D

    ld l, a
    ld [hl], d
    ld h, a
    inc l
    jr nz, jr_010_4AA8

    daa
    ld c, l
    jr nz, jr_010_4AAC

jr_010_4A63:
    ld c, [hl]
    rst $38

jr_010_4A65:
    ld b, e
    ld c, b
    ld h, c
    ld [hl], d
    ld l, $2E
    ld l, $20
    ld d, l

jr_010_4A6E:
    ld l, l
    ld l, $2E
    ld l, $FE
    ld b, c
    ld b, c
    ld d, d
    ld b, a
    ld hl, $5920

jr_010_4A7A:
    ld h, l
    ld [hl], e
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    ld b, $45
    and d
    ld c, b

jr_010_4A86:
    ld e, a
    and [hl]
    ld d, d
    ld d, l
    ld c, [hl]
    ld hl, $2121
    cp $FD
    and c
    ld e, e
    dec [hl]
    ld e, a

jr_010_4A94:
    nop
    inc bc
    ld b, l

jr_010_4A97:
    ld [hl+], a
    ld e, $97
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

jr_010_4AA8:
    ld a, b
    inc d
    ld l, b
    adc h

jr_010_4AAC:
    ld d, b
    inc de
    dec b
    nop
    ld hl, sp+$4A

jr_010_4AB2:
    ld c, $06
    add [hl]
    ret nc

    nop
    db $10
    ld a, [hl-]
    ld c, e

jr_010_4ABA:
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    rlca
    add hl, bc
    cp e
    ret nc

    nop
    db $10
    add $4B
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    add hl, bc
    add hl, bc
    cp l
    ret nc

    jr z, @+$12

    add hl, hl
    ld c, h
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    inc c
    ld a, [bc]
    call nc, Call_010_58D0
    ld de, $728D
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    inc bc
    add hl, bc
    or a
    ret nc

    ld h, h
    db $10
    adc a
    ld c, h
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    ld c, $0B
    ld [$58D0], a
    ld de, $728D
    add hl, de
    add sp, $46
    ld l, [hl]
    jr z, jr_010_4B18

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_4B1F

    ldh a, [rLYC]
    add b
    add d
    nop

jr_010_4B18:
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    add b
    add l

jr_010_4B1F:
    nop
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    ld b, b
    add [hl]
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
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
    inc a
    dec d
    inc d
    ld a, l
    ld e, h
    jr jr_010_4B56

    cp a
    ld e, l
    nop
    nop
    ld e, a
    nop
    inc bc
    dec d
    inc d
    ld l, l
    ld e, h
    ld [$4D14], sp
    ld e, h
    jr nc, jr_010_4B53

jr_010_4B53:
    inc c
    inc b
    dec d

jr_010_4B56:
    inc d
    inc hl
    ld e, h
    jr nz, jr_010_4B6F

    cp a
    ld e, l
    nop
    nop
    ld h, l
    rlca
    dec bc
    dec b
    ld h, e
    ld bc, $3043
    dec d
    inc d
    xor e
    ld e, l
    ld e, $14
    sub a
    ld e, l

jr_010_4B6F:
    ld b, b
    inc d
    cp a
    ld e, l
    ld h, b
    inc d
    ld l, l
    ld e, h
    db $10
    inc d
    cp a
    ld e, l
    nop
    nop
    ld e, c
    ld [bc], a
    ld h, e
    inc bc
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]
    db $10
    call c, Call_010_654E
    ld [$060B], sp
    add a
    jr nz, @+$03

    ld bc, $5F00
    ld bc, $1502
    inc d
    ld e, l
    ld e, h
    ld b, b
    inc d
    sbc l
    ld e, h
    jr z, jr_010_4B9F

jr_010_4B9F:
    dec d
    inc d
    or l
    ld e, l
    stop
    inc c
    ld b, $5E
    db $10
    dec l
    ld c, a
    inc d
    inc d
    and c
    ld e, l
    ld h, l
    ld [$1415], sp
    ld a, l
    ld e, h
    jr nc, jr_010_4BCB

    inc sp
    ld e, h
    ld h, b
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_010_4BD1

    ld c, b
    db $10
    ld h, e
    ld c, a
    dec d
    dec d
    ld c, [hl]
    ld [hl], l
    ld l, [hl]

jr_010_4BCB:
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld e, [hl]

jr_010_4BD1:
    db $10
    cp a
    ld c, h
    ld h, l
    ld [bc], a
    inc d
    dec d
    ld h, $75
    ld h, l
    inc bc
    dec d
    dec d
    sbc b
    ld [hl], h
    inc c
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld h, l
    dec b
    dec d
    dec d
    sbc b
    ld [hl], h
    inc b
    dec d
    cp b
    ld [hl], h
    ld b, b
    nop
    dec bc
    inc b
    dec d
    dec d
    xor b
    ld [hl], h
    ld b, b
    dec d
    ld [de], a
    ld [hl], l
    nop
    nop
    ld e, a
    nop
    inc bc
    inc d
    dec d
    ld h, $75
    ld h, l
    ld b, $14
    dec d
    ld a, [hl-]
    ld [hl], l
    ld h, e
    ld bc, $1515
    inc e
    ld [hl], l
    jr nc, jr_010_4C28

    cp b
    ld [hl], h
    jr nc, jr_010_4C2C

    adc b
    ld [hl], h
    ld b, b
    dec d
    cp b
    ld [hl], h
    ld b, b
    dec d
    adc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    jr nc, jr_010_4C27

jr_010_4C27:
    add hl, de

jr_010_4C28:
    ld b, l
    dec d
    db $10
    or h

jr_010_4C2C:
    ld a, d
    jr nc, jr_010_4C3F

    ld d, b
    ld a, d
    jr jr_010_4C43

    ld b, b
    ld a, d
    jr jr_010_4C47

    ld d, b
    ld a, d
    jr jr_010_4C4B

    ld b, b
    ld a, d
    jr jr_010_4C4F

jr_010_4C3F:
    ld d, b
    ld a, d
    jr jr_010_4C53

jr_010_4C43:
    ld b, b
    ld a, d
    jr jr_010_4C57

jr_010_4C47:
    ld d, b
    ld a, d
    jr jr_010_4C5B

jr_010_4C4B:
    ld b, b
    ld a, d
    dec bc
    db $10

jr_010_4C4F:
    xor d
    ld a, d
    nop
    nop

jr_010_4C53:
    ld h, l
    ld bc, $1014

jr_010_4C57:
    or h
    ld a, d
    ld h, l
    inc b

jr_010_4C5B:
    inc d
    db $10
    call c, Call_010_657A
    dec b
    ld b, e
    ld e, $15
    db $10
    xor d
    ld a, d
    inc a
    db $10
    call c, $007A
    nop
    ld h, l
    ld b, $15
    db $10
    cp [hl]
    ld a, d
    inc d
    db $10
    jp nc, $007A

    nop
    ld h, e
    ld bc, $1015
    jr nz, jr_010_4CF9

    jr nc, jr_010_4C91

    ld d, b
    ld a, d
    ld b, b
    db $10
    jr nz, jr_010_4D01

    db $10
    db $10
    ld d, b
    ld a, d
    jr nc, jr_010_4C8D

jr_010_4C8D:
    add hl, de
    ld b, l
    dec d
    inc de

jr_010_4C91:
    ld d, h
    ld e, l
    jr nc, jr_010_4C95

jr_010_4C95:
    ld e, c
    ld bc, $1315
    add hl, bc
    ld e, [hl]
    ld b, b
    nop
    ld b, e
    jr nz, jr_010_4CB5

    inc de
    ld d, h
    ld e, l
    jr nc, jr_010_4CB8

    ld h, h
    ld e, l
    jr nz, jr_010_4CBC

    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, e
    ld [bc], a
    ld b, e
    jr nc, jr_010_4CC7

    inc de
    add h
    ld e, l

jr_010_4CB5:
    jr nz, jr_010_4CCA

    ld [hl], h

jr_010_4CB8:
    ld e, l
    ld a, b
    nop
    ld e, c

jr_010_4CBC:
    inc bc
    add hl, de
    ld b, l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    jr nz, jr_010_4D2A

    ld l, c

jr_010_4CC7:
    ld h, h
    jr nz, jr_010_4D33

jr_010_4CCA:
    ld [hl], h
    ld hl, $4E20
    ld l, a
    ld [hl], a
    rst $38
    ld [hl], a
    ld h, l
    jr nz, @+$75

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_010_4D4D

    ld [hl], l
    ld l, h
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_4D5B

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ld hl, $FDFE
    ld e, e
    ld bc, $A8A2
    ld c, a
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_010_4D4F

    ld h, l

jr_010_4CF9:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_010_4D6C

    ld l, a
    ld [hl], h
    rst $38

jr_010_4D01:
    ld [hl], d
    ld [hl], l
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_4D7D

    ld l, b
    ld h, l
    cp $77
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ld l, $20
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], e
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_4D88

    ld [hl], d
    ld h, l
    ld h, l
    cp $64
    ld h, c
    ld l, [hl]
    ld h, a

jr_010_4D2A:
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld l, b
    ld a, c
    ld [hl], d

jr_010_4D33:
    ld h, l
    ld l, [hl]
    ld hl, $FDFE
    ld e, e
    ld [bc], a
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, c
    jr nz, jr_010_4DB5

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_010_4DC0

    ld h, l
    rst $38
    ld [hl], a
    ld h, l

jr_010_4D4D:
    ld [hl], d
    ld h, l

jr_010_4D4F:
    jr nz, jr_010_4DB8

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_4DCB

    ld l, a
    cp $72
    ld [hl], l

jr_010_4D5B:
    ld l, h
    ld h, l
    jr nz, jr_010_4DD3

    ld l, b
    ld h, l
    rst $38
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ld hl, $FDFE
    and d
    xor b

jr_010_4D6C:
    ld c, a
    and [hl]
    ld c, [hl]
    ld l, a
    ld l, $2E
    ld l, $20
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c

jr_010_4D7D:
    ld [hl], h
    ld h, l
    jr nz, jr_010_4DF4

    ld l, a
    ld l, l
    ld h, l
    cp $64
    ld l, c
    ld [hl], e

jr_010_4D88:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, c
    ld a, c
    ld l, $FE
    db $FD
    and d
    ld c, b
    ld e, a
    ld e, e
    inc bc
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_010_4DE6

    daa
    ld l, l
    jr nz, jr_010_4E0A

    ld l, [hl]
    rst $38
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, jr_010_4E13

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_010_4DFE

jr_010_4DB5:
    jr nz, jr_010_4E2A

    ld h, c

jr_010_4DB8:
    ld a, c
    jr nz, jr_010_4E32

    ld h, l
    rst $38
    ld [hl], d
    ld [hl], l
    ld l, h

jr_010_4DC0:
    ld h, l
    jr nz, jr_010_4E37

    ld l, b
    ld h, l
    jr nz, jr_010_4E3E

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h

jr_010_4DCB:
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    ld e, e
    inc b

jr_010_4DD3:
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $57
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_010_4E59

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], d
    ld [hl], l
    ld l, h

jr_010_4DE6:
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_4E51

    ld h, c
    halt
    ld h, l
    ld l, $FE
    db $FD

jr_010_4DF4:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld d, l
    ld c, b
    ld b, c
    ld c, b
    ld b, c

jr_010_4DFE:
    ld c, b
    ld b, c
    ld hl, $4920
    jr nz, jr_010_4E66

    ld l, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l

jr_010_4E0A:
    jr nz, jr_010_4E7E

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], d
    jr nz, jr_010_4E81

    ld h, [hl]

jr_010_4E13:
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$65

    ld h, c
    halt
    ld h, l
    ld hl, $4920
    rst $38
    db $FD
    ld e, e
    dec b
    and [hl]
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_010_4E2A:
    jr nz, @+$67

    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_010_4E9F

    ld h, l

jr_010_4E32:
    ld h, l
    ld h, h
    cp $74
    ld l, b

jr_010_4E37:
    ld l, c
    ld [hl], e
    jr nz, jr_010_4EAE

    ld [hl], h
    ld l, c
    ld l, [hl]

jr_010_4E3E:
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld d, e
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_010_4E95

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_010_4E51:
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld d, e

jr_010_4E59:
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_010_4ED2

    ld l, b
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_010_4EDD

    ld l, a
    ld [hl], l

jr_010_4E66:
    rst $38
    ld h, [hl]
    ld l, a
    ld l, a
    ld l, h
    ld hl, $FDFE
    and d
    ld c, b
    ld e, a
    ld e, a
    nop
    inc bc
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_010_4EE8

    ld l, a
    ld [hl], h
    jr nz, jr_010_4EDF

jr_010_4E7E:
    jr nz, jr_010_4EE6

    ld l, a

jr_010_4E81:
    ld l, a
    ld l, h
    ld hl, $49FF
    daa
    ld l, l
    jr nz, jr_010_4EB7

    cp $FD
    and d
    ld c, b
    ld e, a
    ld e, e
    ld b, $A6
    ld c, b
    ld h, l
    ld a, c

jr_010_4E95:
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$70

jr_010_4E9F:
    ld l, a
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]

jr_010_4EAE:
    ld c, c
    ld [hl], h
    jr nz, jr_010_4F1B

    ld [hl], e
    jr nz, jr_010_4F23

    ld l, a
    ld [hl], a

jr_010_4EB7:
    ld hl, $4E20
    ld l, a
    ld [hl], a
    rst $38
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_010_4F26

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_010_4F3B

    ld l, b
    ld l, c
    ld [hl], e
    cp $74
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_4F49

jr_010_4ED2:
    ld l, a
    ld [hl], d
    ld l, e
    ccf
    cp $FD
    ld e, e
    rlca
    and c
    ld b, l
    and d

jr_010_4EDD:
    sbc b
    ld b, c

jr_010_4EDF:
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_010_4F57

    ld [hl], a
    ld h, l

jr_010_4EE6:
    ld h, c
    ld [hl], h

jr_010_4EE8:
    ld l, $20
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld c, b
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_010_4F49

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    cp $77
    ld l, a
    ld [hl], d
    ld l, e
    ld [hl], e
    jr nz, jr_010_4F72

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    ld l, $FE
    db $FD
    and b
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    rst $38
    db $FD
    ld e, e
    ld [$77A6], sp

jr_010_4F1B:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_4F96

    ld l, b

jr_010_4F23:
    ld h, c
    ld [hl], h
    ccf

jr_010_4F26:
    cp $FD
    and c
    ld e, a
    ld bc, $4502
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_010_4FAB

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_010_4FB2

jr_010_4F3B:
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_4FAE

    ld [hl], e
    jr nz, jr_010_4FAE

    ld l, a

jr_010_4F49:
    ld [hl], d
    ccf
    cp $FD
    and c
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_010_4FCE

jr_010_4F57:
    ld h, l
    ld l, h
    ld l, h
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$9745], sp
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

jr_010_4F72:
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d

Call_010_4F7A:
Jump_010_4F7A:
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    nop
    db $10
    ld b, $50
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_010_4F96:
    ld hl, sp+$4A
    dec bc
    add hl, bc
    add hl, de
    pop de
    nop
    db $10
    jr nc, jr_010_4FF0

    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld a, [bc]
    ld a, [bc]
    ld [hl], $D1

jr_010_4FAB:
    jr nc, jr_010_4FBD

    dec sp

jr_010_4FAE:
    ld d, b
    add hl, de
    add sp, $46

jr_010_4FB2:
    dec b
    inc b
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    ld h, b
    db $10
    ld b, [hl]

jr_010_4FBD:
    ld d, b
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    adc b
    db $10
    ld h, d
    ld d, b
    add hl, de

jr_010_4FCE:
    add sp, $46
    ld l, [hl]
    jr nc, jr_010_4FE0

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_4FE8

    ret nc

    ld b, e
    nop
    add e
    nop

jr_010_4FE0:
    ld l, [hl]
    jr z, jr_010_4FF0

    ret nz

    ld l, e
    nop
    add [hl]
    nop

jr_010_4FE8:
    ld l, [hl]
    jr nc, jr_010_4FF7

    ldh a, [rLYC]
    add b
    adc b
    nop

jr_010_4FF0:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc

jr_010_4FF7:
    inc b
    dec bc
    dec b
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
    ld e, a
    ld bc, $1503
    inc d
    ld e, l
    ld e, h
    jr nc, jr_010_5023

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    db $10
    and l
    ld d, b
    ld h, l
    ld bc, $1415
    cp [hl]
    ld e, d
    jr nc, jr_010_5033

    or l
    ld e, l
    nop
    nop

jr_010_5023:
    ld h, l
    ld [bc], a
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_010_503B

    ld c, b
    ld a, [de]
    ld a, $6A
    dec d
    inc de
    ld e, h

jr_010_5033:
    ld l, l
    ld a, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld b, l

jr_010_503B:
    dec d
    dec d
    adc h
    ld a, b
    ld a, e
    dec d
    add d
    ld a, b
    nop
    nop
    ld b, l
    ld b, e
    ld h, b
    ld e, [hl]
    db $10
    ld a, h
    ld d, b
    dec d
    dec d
    sbc b
    ld [hl], h
    jr nz, jr_010_5067

    cp b
    ld [hl], h
    jr nc, jr_010_506B

    adc b
    ld [hl], h
    jr nc, jr_010_506F

    cp b
    ld [hl], h
    ld d, b
    nop
    ld e, a
    nop
    inc bc
    ld b, l
    ld e, a
    nop
    inc bc
    dec d
    db $10

jr_010_5067:
    jr nc, @+$7C

    jr nz, jr_010_507B

jr_010_506B:
    ld d, b
    ld a, d
    jr nc, jr_010_507F

jr_010_506F:
    jr nz, jr_010_50EB

    jr nc, jr_010_5083

    ld d, b

Jump_010_5074:
    ld a, d
    ld b, b
    nop
    ld e, a
    ld bc, $1903

jr_010_507B:
    ld b, l
    and d
    ld c, b
    ld e, a

jr_010_507F:
    and [hl]
    ld d, a
    ld b, c
    ld b, c

jr_010_5083:
    ld b, c
    ld b, c
    ld b, c
    ld b, a
    ld hl, $2121
    cp $FD
    and c
    ld e, a
    nop
    inc bc
    and d
    xor b
    ld c, a
    and [hl]
    ld b, a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, a
    ld hl, $2121
    cp $FD
    and c
    ld e, a
    ld bc, $4503
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_5126

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_5129

    ld l, a
    rst $38
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, l
    ld h, l
    inc l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_010_513F

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_010_513B

    ld [hl], l
    ld [hl], h
    jr nz, jr_010_514B

    ld [hl], l
    ld [hl], h
    jr nz, jr_010_5146

    ld l, a
    ld [hl], d
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$75

    ld [hl], h
    ld [hl], l

jr_010_50EB:
    ld h, [hl]
    ld h, [hl]
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, @+$4B

    jr nz, @+$63

    ld l, l
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, jr_010_5175

    ld l, a
    ld [hl], h
    jr nz, jr_010_516F

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    cp $61
    ld l, [hl]
    ld a, c
    jr nz, jr_010_5182

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_5189

    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, @+$72

    ld [hl], l
    ld a, d
    ld a, d

jr_010_5126:
    ld l, h
    ld h, l
    ld [hl], e

jr_010_5129:
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_51AC

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld l, $FF

jr_010_513B:
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_010_513F:
    ld [hl], d
    ld h, l
    jr nz, jr_010_51A7

    ld l, a
    ld l, [hl]
    ld h, l

jr_010_5146:
    ld hl, $FDFE
    and d
    sbc b

jr_010_514B:
    ld b, c
    ld e, e
    ld bc, $57A6
    ld l, a
    ld l, a
    jr nz, jr_010_51BC

    ld l, a
    ld l, a
    ld hl, $41FF
    ld l, h
    ld l, h
    jr nz, jr_010_51CF

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $FDFE
    and d
    jr z, jr_010_51AA

    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_51DB

    ld l, a
    ld [hl], a

jr_010_516F:
    jr nz, jr_010_51DA

    ld [hl], h
    daa
    ld [hl], e
    rst $38

jr_010_5175:
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_010_51EF

    ld l, a
    cp $63
    ld h, l
    ld l, h
    ld h, l
    ld h, d

jr_010_5182:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld hl, $FDFE

jr_010_5189:
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld [hl+], a
    inc de
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
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h

jr_010_51A7:
    ld l, e
    halt
    ld c, c

jr_010_51AA:
    inc l
    sbc l

jr_010_51AC:
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    nop
    db $10
    ld [hl], e

jr_010_51BC:
    ld d, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    add hl, bc
    add hl, de
    pop de
    nop
    db $10
    ld bc, $1953
    add sp, $46

jr_010_51CF:
    dec b
    inc bc
    ld hl, sp+$4A
    ld a, [bc]
    ld a, [bc]
    ld [hl], $D1
    jr nc, jr_010_51E9

    inc c

jr_010_51DA:
    ld d, e

jr_010_51DB:
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    ld h, b
    db $10
    rla

jr_010_51E9:
    ld d, e
    add hl, de
    add sp, $46
    dec b
    dec b

jr_010_51EF:
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    adc b
    db $10
    ld a, e
    ld d, e
    add hl, de
    add sp, $46
    dec b
    ld b, $F8
    ld c, d
    rlca
    rlca
    reti


    ret nc

    cp b
    db $10
    adc [hl]
    ld d, e
    add hl, de
    add sp, $46
    dec b
    rlca
    ld hl, sp+$4A
    rlca
    rlca
    reti


    ret nc

    cp b
    db $10
    xor b
    ld d, e
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    rlca
    add hl, bc
    dec d
    pop de
    ld sp, hl
    ld de, $7180
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_010_5239

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_010_5241

    ret nc

    ld b, e
    nop
    add e
    nop

jr_010_5239:
    ld l, [hl]
    jr z, jr_010_5249

    ret nz

    ld l, e
    nop
    add [hl]
    nop

jr_010_5241:
    ld l, [hl]
    jr nc, jr_010_5250

    ldh a, [rLYC]
    add b
    adc b
    nop

jr_010_5249:
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    add b
    adc e

jr_010_5250:
    nop
    ld l, [hl]
    inc c
    dec c
    ld h, b
    ld b, a
    ret nc

    adc [hl]
    nop
    ld l, [hl]
    inc bc
    add hl, de
    nop
    ld b, b
    sub b
    adc a
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
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
    jr nc, jr_010_528B

    inc d
    ld e, l
    ld e, h
    jr nc, jr_010_528F

    sbc l
    ld e, h
    db $10
    inc d
    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    db $10
    cp [hl]
    ld d, e
    ld h, l
    ld bc, $1415

jr_010_528B:
    sbc l
    ld e, h
    db $10
    inc d

jr_010_528F:
    db $D3
    ld e, l
    ld b, b
    nop
    dec bc
    dec b
    ld b, e
    jr nz, jr_010_52A3

    inc b
    ld b, e
    jr c, jr_010_52B1

    inc d
    inc hl
    ld e, h
    ld [$4D14], sp
    ld e, h

jr_010_52A3:
    ld [$D314], sp
    ld e, l
    db $10
    inc d
    xor e
    ld e, l
    stop
    ld e, [hl]
    db $10
    bit 2, e

jr_010_52B1:
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld l, l
    ld e, h
    jr jr_010_52CD

    xor e
    ld e, l
    inc bc
    nop
    inc c
    add hl, bc
    ld b, e
    inc bc
    dec d
    inc d
    adc l
    ld e, h
    jr @+$16

    db $D3
    ld e, l
    nop
    nop
    ld b, e
    db $10

jr_010_52CD:
    dec bc
    ld b, $43
    jr nz, jr_010_52DD

    rlca
    ld h, l
    ld h, e
    dec d
    inc d
    ld a, l
    ld e, h
    ld [$AB14], sp
    ld e, l

jr_010_52DD:
    nop
    nop
    ld h, l
    inc bc
    ld b, e
    jr nc, jr_010_52F9

    inc d
    ld a, l
    ld e, h
    inc c
    inc d
    or l
    ld e, l
    jr nc, jr_010_52ED

jr_010_52ED:
    ld e, [hl]
    db $10
    inc l
    ld d, h
    ld h, l
    inc b
    ld b, e
    jr nz, @+$74

    rrca
    rst $38
    ld a, a

jr_010_52F9:
    ld a, d
    jr nz, jr_010_530B

    ld c, b
    dec bc
    ld b, a
    ld d, l
    ld b, l
    dec d
    inc de
    ld e, h
    ld l, l
    ld a, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop

jr_010_530B:
    ld b, l
    dec d
    dec d
    adc h
    ld a, b
    ld a, e
    dec d
    add d
    ld a, b
    nop
    nop
    ld b, l
    dec d
    dec d
    sbc b
    ld [hl], h
    jr nz, jr_010_5332

    cp b
    ld [hl], h
    inc e
    dec d
    xor b
    ld [hl], h
    inc c
    dec d
    ld b, h
    ld [hl], l
    ld b, $15
    ld [de], a
    ld [hl], l
    ld b, $00
    dec bc
    add hl, bc
    dec d
    dec d
    ld c, [hl]

jr_010_5332:
    ld [hl], l
    ld b, $15
    ld h, $75
    ld b, $15
    ld a, [hl-]
    ld [hl], l
    ld b, $15
    ld [$0675], sp
    dec d
    jr nc, jr_010_53B8

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
    ld h, $75
    ld b, $15
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
    cp b
    ld [hl], h
    ld [hl+], a
    dec d
    adc b
    ld [hl], h
    jr nc, jr_010_538A

    cp b
    ld [hl], h
    ld d, b
    nop
    add hl, de
    ld b, l
    dec d
    db $10
    jr nc, jr_010_53F9

    jr nz, jr_010_5391

    ld d, b
    ld a, d
    jr nc, jr_010_5395

    jr nz, jr_010_5401

    jr nc, jr_010_5399

    ld d, b

jr_010_538A:
    ld a, d
    ld b, b
    nop
    add hl, de
    dec d
    inc de
    add h

jr_010_5391:
    ld e, l
    jr nc, jr_010_53A7

    add hl, bc

jr_010_5395:
    ld e, [hl]
    nop
    nop
    ld b, e

jr_010_5399:
    jr nc, jr_010_53F9

    db $10
    xor $53
    ld h, l
    inc bc
    dec d
    inc de
    ld h, h
    ld e, l
    jr nc, jr_010_53A6

jr_010_53A6:
    add hl, de

jr_010_53A7:
    ld b, l
    ld b, e
    inc bc
    dec d
    inc de
    add h
    ld e, l
    db $10
    inc de
    add hl, bc
    ld e, [hl]
    nop
    nop
    ld h, l
    inc bc
    dec d
    inc de

jr_010_53B8:
    ld h, h
    ld e, l
    stop
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_010_5437

    ld h, l
    jr nz, @+$76

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_545B

    ld h, c
    ld l, [hl]
    ld h, h
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
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_010_546E

    ld l, c
    ld [hl], h

jr_010_53F9:
    ld l, b
    jr nz, jr_010_5470

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld h, e

jr_010_5401:
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$55

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    cp $6F
    ld h, [hl]
    jr nz, jr_010_545C

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $2E
    ld l, $FE
    db $FD
    ld e, e
    ld h, e
    and b
    and [hl]
    ld b, d
    ld c, a
    ld c, a
    ld c, a
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, c

jr_010_5437:
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    jr z, jr_010_5488

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5920
    ld b, c
    ld c, e
    ld c, c
    daa
    ld d, e
    rst $38
    ld d, b
    ld d, d
    ld c, a
    ld c, a
    ld c, a
    ld d, l
    ld d, l
    ld d, l

jr_010_545B:
    ld d, l

jr_010_545C:
    ld b, h
    ld hl, $FDFE
    and c
    ld e, e
    inc b
    ld b, l
    ld [hl+], a
    inc de
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_010_546E:
    nop
    or e

jr_010_5470:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h

jr_010_5488:
    dec b
    nop
    ld hl, sp+$4A
    rlca
    ld b, $BB
    ret nc

    nop
    db $10
    rst $10
    ld d, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    add hl, bc
    ld [$D0F9], sp
    nop
    db $10
    dec bc
    ld d, l
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld [$340A], sp
    pop de
    ld e, h
    db $10
    inc h
    ld d, l
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_010_54C5

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, @+$0F

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_54C5:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
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
    jr nc, jr_010_54EF

    inc d
    ld e, l
    ld e, h
    jr nz, jr_010_54F3

    ret


    ld e, l
    jr jr_010_54E3

jr_010_54E3:
    ld e, [hl]
    db $10
    ld b, c
    ld d, l
    ld e, a
    nop
    inc b
    dec d
    inc d
    sbc l
    ld e, h
    inc a

jr_010_54EF:
    inc d
    inc sp
    ld e, h
    inc [hl]

jr_010_54F3:
    inc d
    sbc l
    ld e, h
    ld d, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld e, a
    ld bc, $7202
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, @+$11

    ld c, b
    dec bc
    nop
    ld b, b
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld e, a
    nop
    inc b
    ld b, e
    ld [$1315], sp
    ret nc

    ld l, h
    ld e, $13
    and b
    ld l, h
    inc [hl]
    inc de
    ret nc

    ld l, h
    ld b, b
    nop
    add hl, de
    ld b, l
    inc d
    dec d
    ld e, d
    ld a, b
    ld e, a
    nop
    inc b
    ld b, e
    jr nz, @+$17

    dec d
    jp c, $2077

    dec d
    ld a, [bc]
    ld a, b
    jr z, jr_010_554C

    jp c, $3477

    dec d
    ld a, [bc]
    ld a, b
    ld d, b
    nop
    add hl, de
    ld b, l
    and d
    jr z, @+$45

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $2021
    ld e, c

jr_010_554C:
    ld c, a
    ld d, l
    jr nz, @+$46

    ld c, c
    ld b, h
    rst $38
    ld c, c
    ld d, h
    ld hl, $FE21
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d
    jr z, jr_010_55AA

    and [hl]
    ld c, c
    ld [hl], h
    ld hl, $59FF
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    cp $66
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    ld hl, $41FF
    ld l, h
    ld l, h
    jr nz, jr_010_55F7

    ld h, [hl]
    jr nz, jr_010_55FF

    ld l, b
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    jr nz, jr_010_55F6

    ld [hl], d
    ld h, l
    rst $38
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h

jr_010_55AA:
    jr nz, jr_010_561E

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $5320
    ld l, a
    rst $38
    ld c, c
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, jr_010_5623

    ld l, a
    jr nz, jr_010_5627

    ld l, a
    ld l, l
    ld h, l
    ccf
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    ld c, b
    ld c, b
    jr nz, @+$5B

    ld b, l
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld hl, $FE21
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld c, a
    ld d, a
    jr nz, jr_010_564C

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_565C

    ld l, c
    ld l, l
    ld h, l
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld h, c

jr_010_55F6:
    ld [hl], d

jr_010_55F7:
    ld [hl], h
    ld a, c
    ld hl, $FDFE
    and d
    sbc b
    ld b, c

jr_010_55FF:
    and [hl]
    ld b, c
    jr nz, jr_010_5673

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ccf
    jr nz, jr_010_5653

    jr nz, jr_010_5676

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_010_568A

    ld l, a
    jr nz, @+$69

    ld l, a
    cp $68
    ld l, a
    ld l, l

jr_010_561E:
    ld h, l
    ld hl, $FDFE
    and d

jr_010_5623:
    cp b
    ld e, l
    and [hl]
    ld c, a

jr_010_5627:
    ld l, b
    inc l
    jr nz, jr_010_56A4

    ld l, a
    ld [hl], l
    jr nz, jr_010_56A6

    ld l, c
    ld l, h
    ld l, h
    ld hl, $FDFE
    ld e, a
    nop
    inc b
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_568A

    jr nz, jr_010_56BA

    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_010_56BE

    ld l, a
    rst $38

jr_010_564C:
    ld h, c
    ld [hl], e
    ld l, e
    jr nz, jr_010_56CA

    ld l, a
    ld [hl], l

jr_010_5653:
    jr nz, jr_010_56B6

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    cp $74
    ld l, b

jr_010_565C:
    ld l, c
    ld [hl], e
    jr nz, jr_010_56D2

    ld h, l
    ld l, h
    ld l, c
    ld h, e
    jr nz, jr_010_56AF

    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, a

jr_010_5673:
    ld bc, $4502

jr_010_5676:
    ld [hl+], a
    inc de
    or e
    inc [hl]
    and c
    dec bc
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

jr_010_568A:
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld c, $1E

jr_010_56A4:
    sub d
    db $D3

jr_010_56A6:
    nop
    db $10
    db $ED
    ld d, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_010_56AF:
    adc a
    ld l, [hl]
    rrca
    ld e, $93
    db $D3
    nop

jr_010_56B6:
    db $10
    ld [$1057], sp

jr_010_56BA:
    dec bc
    ld b, c
    dec b
    inc bc

jr_010_56BE:
    adc a
    ld l, [hl]
    dec c
    ld e, $91
    db $D3
    ld e, h
    db $10
    dec e
    ld d, a
    db $10
    ld e, b

jr_010_56CA:
    ld b, d
    ld l, [hl]
    jr nc, jr_010_56DB

    and b
    ld b, b
    nop
    add b

jr_010_56D2:
    nop
    ld l, [hl]
    jr nc, @+$0F

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_56DB:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld c, $1C
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
    jr nz, @+$17

    inc d
    inc sp
    ld e, h
    jr nc, jr_010_5709

    sub a
    ld e, l
    nop
    nop
    ld h, l
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld b, e

jr_010_5709:
    db $10
    dec d
    inc de
    and b
    ld l, h
    ld d, b
    inc de
    ld c, b
    ld l, l
    jr nc, jr_010_5727

    ld e, h
    ld l, l
    jr jr_010_5718

jr_010_5718:
    ld e, [hl]
    db $10
    ld [hl], $57
    ld b, l
    ld b, e
    db $10
    dec d
    dec d
    jp c, Jump_010_4677

    dec d
    adc h
    ld a, b

jr_010_5727:
    nop
    nop
    ld h, l
    ld bc, $1514
    ld [$4377], a
    jr nz, jr_010_5746

    dec d
    and b
    ld a, b
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld c, h
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_010_57AD

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_010_57BA

jr_010_5746:
    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    rst $38
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_010_57E4

    ld l, a
    ld [hl], l
    jr nz, jr_010_57D7

    ld h, c
    halt
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_57DB

    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    inc l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_57E8

    ld h, c
    ld l, [hl]
    jr nz, jr_010_57EE

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$74

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_5808

    ld h, [hl]
    rst $38
    ld [hl], l
    ld [hl], e
    jr nz, jr_010_5802

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    ld e, e
    ld bc, $42A6

jr_010_57AD:
    ld [hl], l
    ld [hl], h
    jr nz, jr_010_57FA

    jr nz, jr_010_5817

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld l, e
    ld l, [hl]

jr_010_57BA:
    ld l, a
    ld [hl], a
    jr nz, jr_010_5826

    ld l, a
    ld [hl], a
    jr nz, @+$76

    ld l, a
    cp $73
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_010_583E

    ld l, b
    ld h, l
    ld l, l
    ld hl, $FDFE
    and d
    jr z, jr_010_5816

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_010_57D7:
    jr nz, jr_010_5850

    ld l, c
    ld l, h

jr_010_57DB:
    ld l, h
    jr nz, jr_010_5848

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld l, b
    ld h, c

jr_010_57E4:
    halt
    ld h, l
    jr nz, jr_010_585C

jr_010_57E8:
    ld l, a
    jr nz, jr_010_585F

    ld l, b
    ld l, c
    ld l, [hl]

jr_010_57EE:
    ld l, e
    cp $6F
    ld h, [hl]
    jr nz, jr_010_5867

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_010_57FA:
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [bc], a

jr_010_5802:
    ld b, l
    ld b, [hl]
    rrca
    ld bc, $A136

jr_010_5808:
    dec b
    inc b
    ld d, $96
    ld b, b
    sub a
    ld [hl+], a
    ld e, $B3
    ld sp, $00C7
    or e
    inc sp

jr_010_5816:
    rst $00

jr_010_5817:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d

jr_010_5826:
    ld b, h
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld b, $11
    inc b
    jp nc, $1000

    add b
    ld e, b
    add hl, de

jr_010_583E:
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, bc
    inc c
    ld [hl], c
    pop de

jr_010_5848:
    nop
    db $10
    sbc b
    ld e, c
    add hl, de
    add sp, $46
    dec b

jr_010_5850:
    inc bc
    adc a
    ld l, [hl]
    add hl, bc
    ld a, [bc]
    dec [hl]
    pop de
    ld e, h
    db $10
    ld c, [hl]
    ld e, h
    add hl, de

jr_010_585C:
    add sp, $46
    ld l, [hl]

jr_010_585F:
    jr nc, jr_010_586E

    ret nz

    ld l, e
    nop
    add b
    nop
    ld l, [hl]

jr_010_5867:
    jr nc, jr_010_5875

    ldh a, [rLYC]
    ret nz

    add l
    nop

jr_010_586E:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b

jr_010_5875:
    ld b, $14
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
    jr nz, jr_010_5897

    inc d
    and c
    ld e, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_5907

    ld h, c
    ld [hl], e
    jr nz, jr_010_5908

    ld l, a
    ld [hl], l
    ld h, a

jr_010_5897:
    ld l, b
    inc l
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$63

    ld [hl], h
    jr nz, jr_010_590E

    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    cp $49
    jr nz, @+$6F

    ld h, c
    ld h, h
    ld h, l
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_010_5921

    ld [hl], l
    ld [hl], h
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_010_592D

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_5939

    halt
    ld h, l
    ld [hl], d
    rst $38
    ld l, b
    ld h, l

Call_010_58D0:
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_010_5920

    ld l, a
    ld [hl], d
    ld h, a
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_010_5952

    ld l, a
    ld hl, $54FF
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_5964

    ld h, c
    ld [hl], e
    jr nz, jr_010_594B

    ld h, l
    ld [hl], h
    ld hl, $47FE
    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, c
    jr nz, jr_010_5964

    ld l, c
    ld h, h
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a
    nop
    inc bc
    dec d

jr_010_5907:
    inc d

jr_010_5908:
    dec c
    ld e, l
    inc c
    inc d
    daa
    ld e, l

jr_010_590E:
    ld [$0D14], sp
    ld e, l
    ld [$4114], sp
    ld e, l
    ld [$1400], sp
    inc d
    sub a
    ld e, l
    ld h, l
    ld bc, $98A2

jr_010_5920:
    ld b, c

jr_010_5921:
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    ld l, $20
    ld b, h
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h

jr_010_592D:
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_010_59A8

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_59A1

jr_010_5939:
    ld h, c
    ld [hl], d
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_010_59AE

    ld h, l
    ld l, $FE
    db $FD
    ld e, e
    inc b
    and d
    ld c, b
    ld e, a
    and [hl]

jr_010_594B:
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_010_59A9

jr_010_5952:
    ld l, b
    ld l, a
    rst $38
    ld [hl], e
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_010_59CF

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c

jr_010_5964:
    and [hl]
    ld c, a
    ld l, a
    ld [hl], b
    ld [hl], e
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld c, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_010_59EA

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $49FF
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_59F6

    ld l, b
    ld h, c
    ld [hl], h
    cp $62
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, jr_010_59F5

    ld l, c
    ld [hl], d
    ld l, h
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    ld e, a
    nop
    inc bc
    dec d
    dec d
    sbc b
    ld [hl], h
    ld h, b
    dec d

jr_010_59A1:
    xor b
    ld [hl], h
    ld b, b
    nop
    inc d
    dec d
    ld a, [hl-]

jr_010_59A8:
    ld [hl], l

jr_010_59A9:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, h

jr_010_59AE:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_5A1C

    ld [hl], e
    jr nz, jr_010_5A1F

    ld [hl], h
    ccf
    jr nz, jr_010_5A03

    ld [hl], h
    rst $38
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$75

    ld h, l
    ld h, l
    ld l, l
    cp $6C
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_010_5A3C

jr_010_59CF:
    ld [hl], l
    ld h, e
    ld l, b
    ld l, $FE
    db $FD
    and c
    inc d
    dec d
    ld h, $75
    ld e, e
    inc bc
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld h, l
    ld [hl], b
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    rst $38
    ld l, b

jr_010_59EA:
    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_5A62

    ld [hl], l
    ld a, d
    ld a, d

jr_010_59F5:
    ld l, h

jr_010_59F6:
    ld h, l
    cp $69
    ld l, [hl]
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_010_5A6F

    ld h, [hl]
    jr nz, jr_010_5A77

jr_010_5A03:
    ld l, b
    ld h, l
    rst $38
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c
    cp $41
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_010_5A8F

    ld h, c
    ld [hl], e
    jr nz, jr_010_5A81

jr_010_5A1C:
    halt
    ld h, l
    ld [hl], d

jr_010_5A1F:
    rst $38
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_010_5A9A

    ld l, a
    cp $63
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    jr nz, jr_010_5A9B

    ld [hl], h
    ld l, $FE
    db $FD
    ld e, e
    ld bc, $0465
    dec d
    dec d

jr_010_5A3C:
    ld c, [hl]
    ld [hl], l
    jr jr_010_5A55

    ld [de], a
    ld [hl], l
    jr jr_010_5A44

jr_010_5A44:
    ld h, l
    ld [bc], a
    dec d
    dec d
    sbc b
    ld [hl], h
    ld a, [bc]
    nop
    inc d
    dec d
    ld c, [hl]
    ld [hl], l
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a

jr_010_5A55:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_5ABB

    ld [hl], d
    ld h, l
    jr nz, jr_010_5AD7

    ld l, a
    ld [hl], l
    rst $38
    ld b, h

jr_010_5A62:
    ld c, a
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_010_5AB0

    ld b, l
    ld d, d
    ld b, l
    ld hl, $FE3F
    db $FD

jr_010_5A6F:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_010_5A77:
    inc l
    jr nz, jr_010_5AC3

    jr nz, jr_010_5AF3

    ld h, c
    ld [hl], e
    rst $38
    ld l, d
    ld [hl], l

jr_010_5A81:
    ld [hl], e
    ld [hl], h
    jr nz, @+$72

    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    cp $74
    ld l, b
    ld [hl], d

jr_010_5A8F:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_010_5B09

    ld l, a
    jr nz, jr_010_5AE2

    rst $38

jr_010_5A9A:
    ld [hl], h

jr_010_5A9B:
    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_010_5AEC

    daa
    ld h, h
    cp $74
    ld [hl], d
    ld a, c
    jr nz, jr_010_5B1A

    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, b

jr_010_5AB0:
    ld h, l
    ld [hl], e
    ld h, l
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    ld l, $FE

jr_010_5ABB:
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld c, a
    ld d, l

jr_010_5AC3:
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_5B41

    ld h, c
    ld a, d
    ld h, l

jr_010_5AD7:
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b

jr_010_5AE2:
    ld l, $20
    ld c, c
    ld [hl], h
    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    ld l, [hl]
    daa

jr_010_5AEC:
    ld [hl], h
    jr nz, jr_010_5B62

    ld l, a
    jr nz, jr_010_5B54

    ld h, c

jr_010_5AF3:
    ld h, h
    ld l, $FE
    db $FD
    and c
    inc d
    dec d
    ld a, [hl-]
    ld [hl], l
    add hl, bc
    nop
    inc d
    db $D3
    ld e, l
    ld e, e
    dec b
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, d
    ld h, l

jr_010_5B09:
    ld [hl], h
    inc l
    jr nz, jr_010_5B81

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_010_5B82

    ld h, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_010_5B8A

jr_010_5B1A:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld h, l
    cp $6D
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_5B91

    ld h, c
    halt
    ld h, l
    rst $38
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_010_5B9B

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_010_5BAE

    ld l, b
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l

jr_010_5B41:
    ld hl, $4920
    ld h, [hl]
    jr nz, jr_010_5BBA

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_010_5BB3

    ld l, a
    jr nz, @+$6B

    ld [hl], h
    inc l

jr_010_5B54:
    jr nz, jr_010_5B9F

    daa
    ld l, h
    ld l, h
    cp $64
    ld l, a
    jr nz, jr_010_5BC7

    ld [hl], h
    inc l
    jr nz, jr_010_5BD6

jr_010_5B62:
    ld l, a
    ld l, a
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    add hl, bc
    nop
    inc d
    db $DD
    ld e, l
    and [hl]
    ld c, c
    jr nz, jr_010_5BD7

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_5BE4

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_010_5BE7

    ld h, [hl]
    rst $38
    ld [hl], h

jr_010_5B81:
    ld l, b

jr_010_5B82:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$75

    ld [hl], l
    ld h, e

jr_010_5B8A:
    ld l, b
    jr nz, jr_010_5BEE

    cp $67
    ld l, a
    ld l, a

jr_010_5B91:
    ld h, h
    jr nz, @+$6B

    ld h, h
    ld h, l
    ld h, c
    ld l, $FE
    db $FD
    and d

jr_010_5B9B:
    ld c, b
    ld e, a
    and [hl]
    ld c, c

jr_010_5B9F:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_010_5C11

    ld a, c
    jr nz, jr_010_5C10

    ld h, h
    ld h, l
    ld h, c
    inc l
    rst $38
    ld h, c
    ld l, c

jr_010_5BAE:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_5C1C

jr_010_5BB3:
    ld [hl], h
    ccf
    jr nz, jr_010_5C0B

    ld l, b
    ld h, c
    ld [hl], h

jr_010_5BBA:
    cp $6D
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_010_5C2B

    ld [hl], h
    jr nz, jr_010_5C26

    rst $38
    ld b, a

jr_010_5BC7:
    ld d, d
    ld b, l
    ld b, c
    ld d, h
    jr nz, jr_010_5C36

    ld h, h
    ld h, l
    ld h, c
    ld hl, $FDFE
    and c
    add hl, bc
    nop

jr_010_5BD6:
    inc d

jr_010_5BD7:
    sub a
    ld e, l
    dec d
    dec d
    adc b
    ld [hl], h
    db $10
    dec d
    cp b
    ld [hl], h
    inc c
    nop
    inc d

jr_010_5BE4:
    dec d
    ld c, [hl]
    ld [hl], l

jr_010_5BE7:
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, b
    ld h, l
    ld [hl], d

jr_010_5BEE:
    ld h, l
    jr nz, jr_010_5C3A

    jr nz, jr_010_5C5A

    ld l, a
    ld hl, $57FF
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$4B

    jr nz, @+$74

    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    inc l
    cp $49
    daa
    ld l, h
    ld l, h
    jr nz, jr_010_5C6D

jr_010_5C0B:
    ld h, l
    jr nz, jr_010_5C7B

    ld l, a
    ld [hl], d

jr_010_5C10:
    ld h, l

jr_010_5C11:
    rst $38
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_010_5C90

jr_010_5C1C:
    ld l, b
    ld h, c
    ld l, [hl]
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_010_5C88

    ld h, c

jr_010_5C26:
    ld l, [hl]
    rst $38
    ld l, c
    ld l, l
    ld h, c

jr_010_5C2B:
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $42FE
    ld d, a
    ld b, c
    ld c, b
    ld b, c

jr_010_5C36:
    ld c, b
    ld b, c
    ld c, b
    ld b, c

jr_010_5C3A:
    ld c, b
    ld b, c
    ld hl, $FDFE
    and c
    dec d
    dec d
    adc b
    ld [hl], h
    ld [$5F00], sp
    ld bc, $1402
    add hl, de
    rst $20
    ld b, [hl]
    ld b, l
    ld e, a
    nop
    inc bc
    dec d
    db $10
    jr nc, jr_010_5CCF

    ld a, h
    db $10
    ld b, b
    ld a, d
    inc h

jr_010_5C5A:
    nop
    inc d
    db $10
    ret z

    ld a, d
    ld h, l
    inc bc
    inc d
    db $10
    or h
    ld a, d
    ld h, l
    inc b
    dec d
    db $10
    call c, $187A
    db $10

jr_010_5C6D:
    xor d
    ld a, d
    jr jr_010_5C71

jr_010_5C71:
    ld h, l
    dec b
    inc d
    db $10
    call c, $5F7A
    ld bc, $A202

jr_010_5C7B:
    xor b
    ld c, a
    and [hl]
    ld c, c
    jr nz, jr_010_5CE9

    ld l, a
    ld [hl], b
    ld h, l
    jr nz, @+$6A

    ld h, l
    rst $38

jr_010_5C88:
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_010_5CFD

    ld l, e
    ld h, c

jr_010_5C90:
    ld a, c
    ld l, $2E
    ld l, $FE
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$63

    ld l, l
    jr nz, @+$4B

    rst $38
    ld [hl], e
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    cp $49
    jr nz, jr_010_5D12

    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_010_5D17

    ld h, l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld [hl], e
    rst $38
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_5D21

    ld h, c
    ld h, e
    ld h, l
    cp $63
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], b
    ld h, l
    ld h, h
    ld hl, $41FE
    ld l, [hl]
    ld h, h
    jr nz, jr_010_5D3B

    ld l, a
    ld [hl], a

jr_010_5CCF:
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$4B

    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, jr_010_5D56

    ld l, a
    ld [hl], l
    jr nz, jr_010_5D43

    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    cp $69
    ld l, [hl]

jr_010_5CE9:
    ld [hl], h
    ld l, a
    jr nz, @+$63

    jr nz, jr_010_5D52

    ld l, a
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld [hl], d
    inc l
    rst $38
    ld c, c
    jr nz, jr_010_5D5C

    ld h, c
    ld l, [hl]
    jr nz, @+$67

jr_010_5CFD:
    ld l, h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_010_5D76

    ld l, a
    ld l, a
    ld h, h

jr_010_5D12:
    ld hl, $FDFE
    and c
    dec d

jr_010_5D17:
    db $10
    jr nc, jr_010_5D94

    inc c
    nop
    inc d
    db $10
    call c, $097A

jr_010_5D21:
    nop
    db $10
    add h
    ld e, a
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
    inc l
    jr nz, jr_010_5D7D

    rst $38
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c

jr_010_5D3B:
    jr nz, jr_010_5DB4

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_010_5DBB

    ld l, a

jr_010_5D43:
    ld [hl], l
    cp $77
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD

jr_010_5D52:
    and d
    xor b
    ld c, a
    and [hl]

jr_010_5D56:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_010_5DC4

    ld [hl], h

jr_010_5D5C:
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_010_5DC5

    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    jr nz, jr_010_5DD6

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_010_5DB4

    ld d, l
    ld c, [hl]
    ld hl, $47FE
    ld e, c
    ld b, c
    ld c, b

jr_010_5D76:
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $15

jr_010_5D7D:
    db $10
    ld [hl], b
    ld a, d
    ld a, [bc]
    db $10
    add b
    ld a, d
    inc c
    db $10
    ld h, b
    ld a, d
    ld c, $10
    sub b
    ld a, d
    inc c
    db $10
    ld [hl], b
    ld a, d
    ld c, $10
    add b
    ld a, d

jr_010_5D94:
    inc c
    db $10
    ld h, b
    ld a, d
    ld c, $10
    sub b
    ld a, d
    inc c
    db $10
    ld [hl], b
    ld a, d
    ld [bc], a
    db $10
    call c, $0C7A
    nop
    and d
    xor b
    ld c, a
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_010_5E23

    ld [hl], l
    ld l, c

jr_010_5DB4:
    ld h, e
    ld l, e
    inc l
    rst $38
    ld h, a
    ld l, c
    ld [hl], d

jr_010_5DBB:
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld b, e
    ld bc, $2DA6

jr_010_5DC4:
    ld d, h

jr_010_5DC5:
    ld c, b
    ld d, l
    ld c, [hl]
    ld c, e
    dec l
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, a
    ld l, b
    ld l, a
    ld h, c
    ld l, $2E

jr_010_5DD6:
    ld l, $20
    ld c, a
    ld [hl], l
    ld h, e
    ld l, b
    ld hl, $FDFE
    and c
    ld e, e
    rlca
    dec d
    db $10
    jr nc, jr_010_5E60

    db $10
    db $10
    ld b, b
    ld a, d
    db $10
    db $10
    ret z

    ld a, d
    inc b
    nop
    and [hl]
    dec l
    ld e, d
    ld b, c
    ld d, b
    dec l
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_010_5E71

    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld [$1015], sp
    ld b, b
    ld a, d
    db $10
    db $10
    jr nz, jr_010_5E91

    db $10
    db $10
    jp nc, $047A

    nop
    and [hl]
    dec l
    ld c, e
    ld d, b
    ld c, a
    ld d, a

jr_010_5E23:
    dec l
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld d, c
    ld [hl], l
    ld l, c
    ld [hl], h
    jr nz, jr_010_5E99

    ld [hl], h
    ld hl, $54FE
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_5EA1

    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    add hl, bc
    dec d
    db $10
    jr nz, jr_010_5EC1

    inc c
    db $10
    ld d, b
    ld a, d
    ld [de], a
    db $10
    and $7A
    inc b
    nop
    and [hl]
    dec l
    ld b, d
    ld e, d
    ld e, d
    ld e, d
    ld c, a
    ld d, d
    ld d, h
    dec l
    cp $FD
    and d
    ld c, b
    ld e, a

jr_010_5E60:
    and [hl]
    ld b, c
    ld c, c
    ld b, l
    ld b, l
    ld b, l
    ld hl, $4820
    ld b, l
    ld c, h
    ld d, b
    ld hl, $5AFE
    ld b, l
    ld d, h

jr_010_5E71:
    ld hl, $4820
    ld b, l
    ld c, h
    ld d, b
    ld hl, $FDFE
    and d
    xor b
    ld c, a
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    add hl, bc
    nop
    inc d
    db $D3

jr_010_5E91:
    ld e, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h

jr_010_5E99:
    ld l, h
    ccf
    jr nz, jr_010_5EDE

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa

jr_010_5EA1:
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_5F0F

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_5F22

    ld l, a
    cp $68
    ld h, l
    ld l, h
    ld [hl], b
    jr nz, @+$6A

    ld l, c
    ld l, l
    ccf
    cp $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld c, l
    ld c, a

jr_010_5EC1:
    ld c, l
    ld c, l
    ld e, c
    ld hl, $FE21
    db $FD
    and d
    xor b
    ld c, a
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_5F3D

    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_5F3E

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l

jr_010_5EDE:
    ccf
    cp $44
    ld l, a
    jr nz, jr_010_5F2D

    jr nz, jr_010_5F52

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_010_5F5F

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    jr nz, jr_010_5F6B

    ld l, a
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_010_5F78

    ld l, a
    ld [hl], a
    rst $38
    ld [hl], h
    ld l, b

jr_010_5F0F:
    ld h, c
    ld [hl], h
    jr nz, jr_010_5F8C

    ld l, a
    ld [hl], l
    cp $6D
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_010_5F88

    ld [hl], h
    ld l, $2E

jr_010_5F22:
    ld l, $FE
    db $FD
    and d
    ld c, b
    ld e, a
    and [hl]
    ld b, c
    ld b, c
    ld b, c
    ld d, d

jr_010_5F2D:
    ld b, a
    ld c, b
    ld hl, $5A20
    ld b, l
    ld d, h
    ld hl, $42FE
    ld c, h
    ld b, c
    ld b, c
    ld b, c
    ld d, d
    ld b, a

jr_010_5F3D:
    ld c, b

jr_010_5F3E:
    ld hl, $49FE
    daa
    ld l, h
    ld l, h
    jr nz, jr_010_5FAD

    ld h, l
    ld [hl], h
    jr nz, jr_010_5FC3

    ld l, a
    ld [hl], l
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_010_5FC6

jr_010_5F52:
    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $FE21
    db $FD
    and c
    add hl, bc
    ld [bc], a
    db $10
    db $DB
    ld e, a

jr_010_5F5F:
    ld h, l
    ld a, [bc]
    dec d
    db $10
    sub b
    ld a, d
    ld [de], a
    db $10
    or h
    ld a, d
    inc b
    nop

jr_010_5F6B:
    ld h, l
    dec bc
    dec d
    db $10
    sub b
    ld a, d
    ld [$6010], sp
    ld a, d
    inc a
    nop
    ld e, l

jr_010_5F78:
    add hl, de
    ldh a, [rDMA]
    or e
    dec [hl]
    and c
    dec bc
    ld e, [hl]
    add hl, de
    bit 6, b
    add hl, de
    dec d
    inc d
    db $DD
    ld e, h

jr_010_5F88:
    inc c
    inc d
    db $DD
    ld e, l

jr_010_5F8C:
    inc b
    nop
    ld h, l
    ld b, $15
    inc d
    db $FD
    ld e, h
    inc c
    inc d
    ld b, c
    ld e, l
    inc c
    inc d
    dec c
    ld e, l
    inc c
    inc d
    daa
    ld e, l
    inc c
    inc d
    db $FD
    ld e, h
    inc c
    inc d
    ld b, c
    ld e, l
    inc c
    inc d
    dec c
    ld e, l
    inc c

jr_010_5FAD:
    inc d
    daa
    ld e, l
    inc c
    nop
    inc d
    inc d
    db $DD
    ld e, l
    ld h, l
    rlca
    dec d
    inc d
    xor l
    ld e, h
    jr jr_010_5FD2

    ret


    ld e, l
    inc b
    nop
    ld h, l

jr_010_5FC3:
    ld [$1415], sp

jr_010_5FC6:
    db $ED
    ld e, h
    jr jr_010_5FDE

    cp a
    ld e, l
    inc b
    nop
    ld h, l
    add hl, bc
    dec d
    inc d

jr_010_5FD2:
    call $185C
    inc d
    db $D3
    ld e, l
    inc b
    nop
    ld b, l
    dec d
    dec d
    ret c

jr_010_5FDE:
    ld [hl], h
    inc b
    nop
    ld e, e
    ld a, [bc]
    dec d
    dec d
    ret c

    ld [hl], h
    inc b
    dec d
    ld h, $75
    inc b
    nop
    and d
    ld c, b
    ld e, a
    and [hl]
    ld e, d
    ld b, l
    ld d, h
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_010_605F

    ld l, c
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_6078

    ld l, a
    jr nz, jr_010_6074

    ld h, l
    ld hl, $57FE
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_010_6037

    ld [hl], h
    ld l, c
    ld l, h
    jr nz, jr_010_605E

    jr nz, jr_010_607E

    ld h, l
    ld [hl], h
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_010_6086

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_010_6093

    ld l, [hl]
    cp $79
    ld l, a
    ld [hl], l
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    jr nz, jr_010_609E

    ld h, c
    ld l, e
    ld h, l
    rst $38
    ld a, c
    ld l, a

jr_010_6037:
    ld [hl], l
    jr nz, jr_010_60B1

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_010_60B8

    ld l, a
    ld [hl], l
    cp $6E
    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_010_60B6

    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_010_60A0

    ld l, a
    ld [hl], d
    ld h, a
    ld hl, $FDFE
    add hl, bc
    nop
    inc d

jr_010_605E:
    db $DD

jr_010_605F:
    ld e, l
    and d
    xor b
    ld c, a
    and [hl]
    ld c, c
    jr nz, jr_010_60C8

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_010_60D3

    ld l, a
    inc l
    rst $38
    ld a, c
    ld l, a

jr_010_6074:
    ld [hl], l
    jr nz, jr_010_60DB

    ld l, a

jr_010_6078:
    ld l, h
    ld [hl], h
    ld hl, $FDFE
    and d

jr_010_607E:
    ld c, b
    ld e, a
    and [hl]
    ld d, d
    ld b, l
    ld b, l
    ld b, c
    ld b, c

jr_010_6086:
    ld d, d
    ld b, a
    ld c, b
    ld hl, $FDFE
    and c
    ld e, e
    dec bc
    dec d
    dec d
    ld hl, sp+$74

jr_010_6093:
    jr jr_010_60AA

    ret z

    ld [hl], h
    add d
    nop
    add hl, de
    ld [hl+], a
    inc de
    or e
    inc [hl]

jr_010_609E:
    and c
    dec bc

jr_010_60A0:
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e

jr_010_60AA:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d

jr_010_60B1:
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a

jr_010_60B6:
    xor d
    ld b, h

jr_010_60B8:
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld c, $1E

jr_010_60C8:
    sub d
    db $D3
    nop
    db $10
    ld de, $1961
    add sp, $46
    dec b
    ld [bc], a

jr_010_60D3:
    adc a
    ld l, [hl]
    rrca
    ld e, $93
    db $D3
    nop
    db $10

jr_010_60DB:
    ld [hl], $61
    db $10
    dec bc
    ld b, c
    dec b
    inc bc
    adc a
    ld l, [hl]
    dec c
    ld e, $91
    db $D3
    ld e, h
    db $10
    ld b, a
    ld h, c
    db $10
    ld e, b
    ld b, d
    ld l, [hl]
    jr nc, jr_010_60FF

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, @+$0F

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_60FF:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld c, $1C
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
    jr nz, jr_010_6129

    inc d
    inc sp
    ld e, h
    jr nc, jr_010_612D

    sub a
    ld e, l
    nop
    nop
    ld h, l
    inc bc
    inc d
    inc d
    and c
    ld e, l
    ld e, [hl]
    db $10
    ld a, h
    ld h, d
    ld h, l
    inc b

jr_010_6129:
    ld e, l
    add hl, de
    ldh a, [rDMA]

jr_010_612D:
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld b, e
    db $10
    dec d
    inc de
    and b
    ld l, h
    ld d, b
    inc de
    ld e, h
    ld l, l
    jr jr_010_6142

jr_010_6142:
    ld e, [hl]
    db $10
    ld h, h
    ld h, c
    ld b, l
    ld b, e
    db $10
    dec d
    dec d
    jp c, Jump_010_4677

    dec d
    adc h
    ld a, b
    nop
    nop
    ld h, l
    ld bc, $1514
    ld [$4377], a
    db $10
    inc d
    dec d
    and b
    ld a, b
    ld e, [hl]
    db $10
    ld h, a
    ld h, d
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_010_61D7

    ld [hl], e
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    cp $63
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $FF
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, jr_010_620A

    ld l, a
    ld [hl], l
    cp $77
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_010_620A

    ld l, a
    jr nz, jr_010_621D

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_010_6218

    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_010_6239

    ld l, a
    ld [hl], l
    jr nz, jr_010_622C

    ld h, c
    halt
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_6220

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_010_6242

    ld h, [hl]
    rst $38
    ld c, b
    ld a, c

jr_010_61D7:
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_010_6256

    ld l, a
    ld [hl], l
    jr nz, jr_010_6244

    ld h, c
    ld l, [hl]
    cp $65
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_010_6253

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_010_6260

    ld h, c
    ld [hl], d
    ld l, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_6274

    ld h, l
    ld h, c
    ld l, [hl]

jr_010_620A:
    jr nz, jr_010_6275

    ld h, [hl]
    jr nz, @+$4B

    rst $38
    ld l, b
    ld h, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_628B

jr_010_6218:
    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l

jr_010_621D:
    ld h, h
    cp $4B

jr_010_6220:
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_010_6286

    ld l, [hl]
    ld h, h
    jr nz, jr_010_6283

    ld h, l
    ld [hl], h
    rst $38

jr_010_622C:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_010_62A5

    ld [hl], h
    ld h, l
    ld h, c
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_010_6239:
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_6292

    ld [hl], h
    ld h, c
    ld h, [hl]

jr_010_6242:
    ld h, [hl]
    inc l

jr_010_6244:
    jr nz, jr_010_628F

    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_62B9

    ld h, c
    halt

jr_010_6253:
    ld h, l
    cp $74

jr_010_6256:
    ld l, a
    jr nz, jr_010_62BD

    ld l, a
    jr nz, jr_010_62D0

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l

jr_010_6260:
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $A245
    jr z, jr_010_62AD

    and [hl]
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$49

    ld c, a
    ld d, h
    jr nz, jr_010_62BD

jr_010_6274:
    ld d, h

jr_010_6275:
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c

jr_010_6283:
    ld [hl], h
    jr nz, jr_010_62F1

jr_010_6286:
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_62FA

jr_010_628B:
    ld h, [hl]
    rst $38
    ld [hl], d
    ld h, l

jr_010_628F:
    ld [hl], a
    ld h, c
    ld [hl], d

jr_010_6292:
    ld h, h
    jr nz, jr_010_62FE

    ld [hl], e
    jr nz, jr_010_630C

    ld l, b
    ld l, c
    ld [hl], e
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, b
    ld h, l
    ld [hl], d

jr_010_62A5:
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], e
    jr nz, @+$7B

    ld l, a
    ld [hl], l

jr_010_62AD:
    daa
    ld h, h
    rst $38
    ld [hl], b
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_010_632C

    ld l, b

jr_010_62B9:
    ld h, c
    ld [hl], h
    cp $4B

jr_010_62BD:
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_010_6323

    ld l, [hl]
    ld h, h
    jr nz, jr_010_6320

    ld h, l
    ld [hl], h
    rst $38
    ld l, b
    ld h, c
    ld h, h
    jr nz, jr_010_6342

    ld l, b
    ld h, l

jr_010_62D0:
    jr nz, jr_010_6325

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l
    ld l, b
    ld l, $2E
    ld l, $2E
    ld l, $20
    ld l, [hl]
    ld l, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc b
    ld b, l
    ld [hl+], a
    inc de
    or e

jr_010_62F1:
    inc [hl]
    and c
    dec bc
    sub a
    or e
    ld sp, $00C7
    or e

jr_010_62FA:
    inc sp
    rst $00
    nop
    or e

jr_010_62FE:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, l
    ld d, b
    inc de
    ld h, a
    xor d
    ld b, h

jr_010_630C:
    ld l, e
    halt
    ld c, c
    inc l
    sbc l
    ld c, a
    dec l
    ld l, h
    rst $00
    ld b, h
    dec b
    nop
    ld hl, sp+$4A
    ld c, $1E
    sub d
    db $D3
    nop
    db $10

jr_010_6320:
    ld h, l
    ld h, e
    add hl, de

jr_010_6323:
    add sp, $46

jr_010_6325:
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rrca
    ld e, $93

jr_010_632C:
    db $D3
    nop
    db $10
    and d
    ld h, e
    db $10
    dec bc
    ld b, c
    dec b
    inc bc
    adc a
    ld l, [hl]
    dec c
    ld e, $91
    db $D3
    ld e, h
    db $10
    pop bc
    ld h, e
    db $10
    ld e, b

jr_010_6342:
    ld b, d
    ld l, [hl]
    jr nc, jr_010_6353

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, @+$0F

    ret nc

    ld b, e
    ret nz

    add l
    nop

jr_010_6353:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld c, $1D
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
    jr nz, jr_010_637D

    inc d
    inc sp
    ld e, h
    ld h, $14
    sub a
    ld e, l
    nop
    nop
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld l, l
    ld e, h
    db $10
    inc d
    inc hl
    ld e, h
    inc d
    inc d

jr_010_637D:
    or l
    ld e, l
    nop
    nop
    ld h, l
    inc b
    inc d
    inc d
    db $DD
    ld e, l
    ld h, l
    dec b
    ld b, e
    db $10
    dec d
    inc d
    ld c, l
    ld e, h
    ld [$5D00], sp
    add hl, de
    ldh a, [rDMA]
    sbc e
    stop
    ld b, b
    or e
    ld sp, $00C7
    or e
    ld sp, $00C7
    ld b, l
    ld b, e
    db $10
    dec d
    inc de
    and b
    ld l, h
    inc a
    inc de
    ld c, b
    ld l, l
    nop
    nop
    ld h, l
    inc bc
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, l
    inc b
    inc d
    inc de
    ld c, b
    ld l, l
    ld h, l
    dec b
    inc d
    inc de
    ld e, h
    ld l, l
    ld b, l
    ld b, e
    db $10
    dec d
    dec d
    jp c, Jump_010_4677

    dec d
    adc h
    ld a, b
    jr jr_010_63CD

jr_010_63CD:
    ld e, [hl]
    db $10
    or $63
    ld h, l
    ld bc, $1515
    ld a, [bc]
    ld a, b
    db $10
    dec d
    jp c, $0C77

    dec d
    ld h, h
    ld a, b
    nop
    nop
    ld h, l
    ld [bc], a
    inc d
    dec d
    ld h, h
    ld a, b
    ld h, l
    dec b
    dec d
    dec d
    ld a, [$1077]
    nop
    dec d
    dec d
    ld h, h
    ld a, b
    nop
    nop
    ld b, l
    and d
    jr z, jr_010_643C

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_010_6471

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    cp $74
    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_010_6486

    ld l, a
    ld [hl], d
    jr nz, jr_010_647D

    ld h, c
    ld l, e
    ld l, c
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$51

    ld d, [hl]
    ld b, l
    ld d, d
    ld hl, $49FE
    daa
    ld l, l
    jr nz, jr_010_64A2

    ld l, a

jr_010_643C:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_64AA

    ld l, [hl]
    ld hl, $FDFE
    and d
    cp b
    ld e, l
    ld e, e
    ld bc, $48A6
    ld h, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_64C0

    ld l, [hl]
    jr nz, jr_010_64B5

    jr nz, jr_010_64C9

    ld h, l
    ld h, e
    inc l
    rst $38
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, b
    ld [hl], l
    ld l, b
    ccf
    jr nz, jr_010_64C2

    ld l, b
    ld a, c
    ccf
    cp $FD
    and d

jr_010_6471:
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_010_64E6

    ld [hl], l

jr_010_647D:
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_64F3

    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b

jr_010_6486:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_010_6501

    ld h, l
    ld l, [hl]
    cp $72
    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_010_6508

    ld h, [hl]
    jr nz, jr_010_6510

    ld l, b
    ld h, l
    rst $38
    ld l, b
    ld h, c
    ld [hl], d

jr_010_64A2:
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_6515

    ld h, c
    ld a, d

jr_010_64AA:
    ld h, l
    ld [hl], e
    cp $69
    ld l, [hl]
    jr nz, jr_010_6525

    ld l, b
    ld h, l
    rst $38
    ld c, l

jr_010_64B5:
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    inc l
    jr nz, jr_010_6509

jr_010_64C0:
    cp $74

jr_010_64C2:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_010_653B

    ld l, b

jr_010_64C9:
    ld h, l
    jr nz, jr_010_6535

    ld [hl], e
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_6545

    ld [hl], l
    ld h, c
    ld l, h
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    ld e, e
    ld [bc], a
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]

jr_010_64E6:
    ld l, a
    inc l
    jr nz, jr_010_6553

    ld [hl], h
    jr nz, jr_010_6556

    ld [hl], e
    rst $38
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, a

jr_010_64F3:
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $20
    ld c, c
    cp $73
    ld h, c
    ld a, c
    jr nz, jr_010_6578

jr_010_6501:
    ld h, l
    jr nz, jr_010_6570

    ld h, l
    ld [hl], h
    jr nz, jr_010_6561

jr_010_6508:
    ld h, c

jr_010_6509:
    ld l, e
    ld l, c
    rst $38
    ld h, h
    ld l, a
    jr nz, jr_010_6579

jr_010_6510:
    ld [hl], h
    ld l, $FE
    db $FD
    ld e, e

jr_010_6515:
    inc bc
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
    inc l
    jr nz, jr_010_659C

    ld l, a
    ld [hl], l

jr_010_6525:
    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, jr_010_658E

    ld h, l
    ld h, l
    ld l, [hl]
    cp $74
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]

jr_010_6535:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, a

jr_010_653B:
    jr nz, jr_010_659F

    ld h, l
    rst $38
    ld h, c
    jr nz, jr_010_658D

    ld h, l
    ld h, l
    ld [hl], b

jr_010_6545:
    ld h, l
    ld [hl], d
    inc l
    cp $63
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c

Call_010_654E:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_010_65C7

jr_010_6553:
    ld l, b
    ld l, c
    ld [hl], e

jr_010_6556:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_010_65C3

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_010_6561:
    jr nz, jr_010_65D7

    ld [hl], d
    ld [hl], l
    ld h, l
    cp $74
    ld h, c
    ld [hl], e
    ld l, e
    ld l, $FE
    db $FD
    and d
    sbc b

jr_010_6570:
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_010_65D9

    ld l, c
    ld h, h
    ld l, [hl]

jr_010_6578:
    daa

jr_010_6579:
    ld [hl], h

Call_010_657A:
Jump_010_657A:
    jr nz, jr_010_65DD

    ld [hl], e
    ld l, e
    jr nz, jr_010_65F4

    ld l, a
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_010_65D1

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $FE

jr_010_658D:
    db $FD

jr_010_658E:
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_010_660C

    ld l, a
    ld l, l
    ld h, l

jr_010_659C:
    ld l, a
    ld l, [hl]
    ld h, l

jr_010_659F:
    rst $38
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_010_6619

    ld l, a
    jr nz, jr_010_660C

    ld l, a
    jr nz, @+$6B

    ld [hl], h
    inc l
    cp $73
    ld l, a
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_010_6622

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_010_661C

    ld [hl], e
    rst $38
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$64

jr_010_65C3:
    ld h, l
    jr nz, @+$76

    ld l, b

jr_010_65C7:
    ld h, l
    cp $6D
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_010_6640

    ld [hl], l
    ld h, c

jr_010_65D1:
    ld l, h
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h

jr_010_65D7:
    rst $38
    ld [hl], b

jr_010_65D9:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, a

jr_010_65DD:
    ld l, [hl]
    ld l, $20
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    cp $79
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h

jr_010_65F4:
    ld l, h
    inc l
    jr nz, @+$6B

    ld h, [hl]
    jr nz, jr_010_6674

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_010_667A

    ld l, b
    ld h, c
    ld [hl], h
    cp $77
    ld h, c

jr_010_660C:
    ld a, c
    inc l
    jr nz, jr_010_6659

    daa
    ld l, h
    ld l, h
    jr nz, jr_010_667C

    ld l, a
    ld l, $FE
    db $FD

jr_010_6619:
    and d
    jr z, jr_010_665F

jr_010_661C:
    ld e, e
    inc b
    and [hl]
    ld e, c
    ld b, l
    ld b, c

jr_010_6622:
    ld b, c
    ld b, c
    ld hl, $5720
    ld c, a
    ld c, a
    ld hl, $FF21
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_6698

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_010_66A2

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    dec b
    ld b, l

jr_010_6640:
    and d
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_010_66B3

    ld [hl], e
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    cp $63
    ld l, b

jr_010_6659:
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a

jr_010_665F:
    ld h, l
    ld l, $FF
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    cp $77
    ld l, a
    ld [hl], l
    ld l, h

jr_010_6674:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_010_66E2

jr_010_667A:
    ld h, c
    halt

jr_010_667C:
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$66

    ld l, a
    jr nz, jr_010_66F9

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    cp $6D
    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_010_66F4

    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_010_6698:
    ld h, e
    ld h, l
    jr nz, jr_010_6715

    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt

jr_010_66A2:
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_66FC

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$71

    ld h, [hl]
    rst $38
    ld c, b
    ld a, c

jr_010_66B3:
    ld [hl], d
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_010_6732

    ld l, a
    ld [hl], l
    jr nz, jr_010_6720

    ld h, c
    ld l, [hl]
    cp $65
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_010_672F

    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_010_673C

    ld h, c
    ld [hl], d
    ld l, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]

jr_010_66E2:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_6754

    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_010_6755

    ld h, [hl]
    jr nz, @+$4B

    rst $38
    ld l, b
    ld h, c
    ld h, h
    ld l, [hl]

jr_010_66F4:
    daa
    ld [hl], h
    jr nz, jr_010_676B

    ld [hl], h

jr_010_66F9:
    ld l, a
    ld [hl], b
    ld [hl], b

jr_010_66FC:
    ld h, l
    ld h, h
    cp $4B
    ld l, a
    ld [hl], d
    ld h, a
    jr nz, jr_010_6766

    ld l, [hl]
    ld h, h
    jr nz, jr_010_6763

    ld h, l
    ld [hl], h
    rst $38
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_010_6785

    ld [hl], h
    ld h, l
    ld h, c

jr_010_6715:
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_010_6772

    ld [hl], h

jr_010_6720:
    ld h, c
    ld h, [hl]
    ld h, [hl]
    inc l
    jr nz, jr_010_676F

    rst $38
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h

jr_010_672F:
    jr nz, jr_010_6799

    ld h, c

jr_010_6732:
    halt
    ld h, l
    cp $74
    ld l, a
    jr nz, jr_010_679D

    ld l, a
    jr nz, jr_010_67B0

jr_010_673C:
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    jr z, jr_010_678D

    and [hl]
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$49

    ld c, a
    ld d, h
    jr nz, jr_010_679D

jr_010_6754:
    ld d, h

jr_010_6755:
    ld hl, $FDFE
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c

jr_010_6763:
    ld [hl], h
    jr nz, jr_010_67D1

jr_010_6766:
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_67DA

jr_010_676B:
    ld h, [hl]
    rst $38
    ld [hl], d
    ld h, l

jr_010_676F:
    ld [hl], a
    ld h, c
    ld [hl], d

jr_010_6772:
    ld h, h
    jr nz, jr_010_67DE

    ld [hl], e
    jr nz, jr_010_67EC

    ld l, b
    ld l, c
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    inc b
    ld b, l
    ld c, b
    ld d, $00

jr_010_6785:
    ld b, b
    ld c, b
    ld d, $06
    ld b, b
    ld c, b
    ld d, $0C

jr_010_678D:
    ld b, b
    ld c, b
    ld d, $12
    ld b, b
    ld c, b
    ld d, $18
    ld b, b
    ld bc, $0D11

jr_010_6799:
    ld c, b
    ld a, [de]
    inc l
    ld d, c

jr_010_679D:
    ld bc, $0D11
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
    dec b
    db $10
    cp h
    ld h, a

jr_010_67B0:
    db $10
    ld hl, sp+$67
    db $10
    ld e, e
    ld l, b
    db $10
    cp d
    ld l, b
    db $10
    ld e, $69
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_010_6839

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_010_683B

    ld h, l
    ld h, l
    ld l, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_010_6838

    ld h, c

jr_010_67D1:
    halt
    ld h, l
    jr nz, @+$63

    jr nz, jr_010_683B

    ld h, c
    ld [hl], d
    ld l, e

jr_010_67DA:
    cp $6E
    ld l, a
    ld [hl], h

jr_010_67DE:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$01

    ld h, c
    ld h, d
    ld l, a
    ld [hl], l

jr_010_67EC:
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    ld c, c
    and [hl]
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_010_6869

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_010_686F

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_010_6869

    rst $38
    ld h, a
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_010_6873

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    cp $62
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_010_689F

    ld l, b
    ld h, l

jr_010_682D:
    jr nz, jr_010_682D

    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_010_689A

    ld [hl], d

jr_010_6838:
    ld h, l

jr_010_6839:
    ld h, c
    ld [hl], h

jr_010_683B:
    ld h, l
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_010_68BC

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_010_68AC

    ld l, [hl]
    ld h, h
    cp $74
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld [hl], e
    ld l, $FE
    db $FD
    ld c, c
    and [hl]
    ld l, c
    and [hl]
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_010_68C3

    jr nz, jr_010_68D1

    ld l, c
    ld l, [hl]
    ld [hl], l
    ld [hl], h
    ld h, l

jr_010_6869:
    ld hl, $54FF
    ld l, b
    ld l, a
    ld [hl], e

jr_010_686F:
    ld h, l
    jr nz, jr_010_68D3

    ld [hl], d

jr_010_6873:
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h

jr_010_6877:
    jr nz, jr_010_6877

    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld l, $2E
    ld l, $2E
    rst $38
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_010_68F1

    ld [hl], d
    ld h, l
    jr nz, jr_010_6907

    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    cp $70

jr_010_689A:
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld a, c

jr_010_689F:
    jr nz, jr_010_6915

    ld h, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, $2E
    ld l, $FE
    ld b, c
    ld b, c
    ld b, c

jr_010_68AC:
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld hl, $2121
    ld hl, $FDFE
    ld c, c
    and [hl]
    ld l, c
    and [hl]
    ld c, b

jr_010_68BC:
    ld h, c
    ld l, b
    ld hl, $4920
    jr nz, jr_010_692B

jr_010_68C3:
    ld h, c
    halt
    ld h, l
    jr nz, @+$01

    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_010_6942

    ld l, a

jr_010_68CF:
    jr nz, jr_010_68CF

jr_010_68D1:
    ld h, [hl]
    ld [hl], l

jr_010_68D3:
    ld l, [hl]
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_010_6950

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_010_6959

    ld h, e
    ld h, c
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], d
    cp $74
    ld l, b
    ld h, c
    ld l, [hl]

jr_010_68F1:
    jr nz, jr_010_6967

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$01

    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld hl, $48FE
    ld d, l
    ld c, b
    ccf
    jr nz, jr_010_695C

    ld c, b
    ld b, c

jr_010_6907:
    ld d, h
    jr nz, jr_010_6961

    ld b, c
    ld d, e
    rst $38
    ld d, h
    ld c, b
    ld b, c
    ld d, h
    jr nz, jr_010_6961

    ld c, a
    ld c, c

jr_010_6915:
    ld d, e
    ld b, l
    ccf
    ld hl, $FDFE
    ld c, c
    and [hl]
    ld l, c
    and [hl]
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_6989

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, @+$01

jr_010_692B:
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_010_699A

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $73
    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$6F

jr_010_6942:
    ld h, l
    ld l, $2E
    ld l, $2E
    ld l, $FF
    ld b, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_69B3

    ld [hl], d

jr_010_6950:
    ld h, l
    ld h, c
    ld l, l

jr_010_6953:
    jr nz, jr_010_6953

    ld h, e
    ld [hl], d
    ld h, l
    ld h, c

jr_010_6959:
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_010_695C:
    ld h, l
    ld [hl], e
    jr nz, jr_010_69D4

    ld l, b

jr_010_6961:
    ld h, c
    ld [hl], h
    rst $38
    ld l, b
    ld h, c
    halt

jr_010_6967:
    ld h, l
    jr nz, @+$6A

    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_010_69D5

    ld h, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_010_69E5

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_010_69F2

    ld l, a
    jr nz, jr_010_69E6

    ld h, c
    ld [hl], h
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]

jr_010_6989:
    ld a, c
    ld [hl], e
    inc l
    jr nz, jr_010_69FC

    ld l, a
    ld [hl], a

jr_010_6990:
    jr nz, jr_010_6990

    ld d, h
    ld c, b
    ld b, c
    ld d, h
    jr nz, jr_010_6A0B

    ld h, e
    ld h, c

jr_010_699A:
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, @+$6F

    ld h, l
    ld hl, $FDFE
    ld c, c
    and [hl]
    ld l, c
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c

jr_010_69B3:
    ld c, d
    ld [bc], a
    db $10
    cp e
    ld l, c
    db $10
    ld b, b
    ld l, d
    and [hl]
    ld d, a
    ld h, c
    ld [hl], e
    jr nz, jr_010_6A2A

    ld [hl], h
    jr nz, jr_010_6A34

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$01

    ld h, e
    ld l, b
    ld h, c
    ld l, a
    ld [hl], e
    jr nz, jr_010_6A3F

    ld [hl], d
    jr nz, jr_010_6A4A

    ld h, c

jr_010_69D4:
    ld [hl], e

jr_010_69D5:
    jr nz, jr_010_6A40

    ld [hl], h
    cp $72
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, a
    ld l, l
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$76

jr_010_69E5:
    ld l, b

jr_010_69E6:
    ld h, c
    ld [hl], h
    rst $38
    ld h, d
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_010_6A66

jr_010_69F2:
    ld l, b
    ld l, c
    ld [hl], e
    cp $72
    ld l, a
    ld h, e
    ld l, e
    jr nz, @+$76

jr_010_69FC:
    ld l, a
    jr nz, jr_010_6A61

    ld h, l
    rst $38
    ld [hl], e
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_010_6A73

    ld l, [hl]

jr_010_6A0B:
    jr nz, jr_010_6A81

    ld l, b
    ld l, c
    ld [hl], e
    cp $63
    ld h, c
    halt
    ld h, l
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_010_6A90

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_6A91

    ld h, c
    ld a, d
    ld h, l
    jr nz, jr_010_6A92

    ld l, [hl]

jr_010_6A2A:
    jr nz, jr_010_6A2A

    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_010_6A97

    halt
    ld l, c

jr_010_6A34:
    ld l, h
    jr nz, @+$45

    ld l, a
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    ld c, c
    or a

jr_010_6A3F:
    ld l, d

jr_010_6A40:
    and [hl]
    ld b, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_010_6A4A:
    ld h, a
    jr nz, @+$01

    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_010_6ABD

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $64
    ld h, c
    ld [hl], d
    ld l, e
    inc l

jr_010_6A61:
    jr nz, @+$6F

    ld l, c
    ld [hl], e
    ld h, l

jr_010_6A66:
    ld [hl], d
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_010_6AD6

    halt
    ld l, c

jr_010_6A73:
    ld l, h
    inc l
    jr nz, jr_010_6AD9

    ld [hl], l
    ld [hl], h

jr_010_6A79:
    jr nz, jr_010_6A79

    ld [hl], e
    ld [hl], l
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]

jr_010_6A81:
    ld l, h
    ld a, c
    inc l
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, @+$01

    ld l, a
    ld h, [hl]
    jr nz, jr_010_6AFC

    ld l, a
    ld [hl], a

jr_010_6A90:
    ld l, b

jr_010_6A91:
    ld h, l

jr_010_6A92:
    ld [hl], d
    ld h, l
    inc l

jr_010_6A95:
    jr nz, jr_010_6A95

jr_010_6A97:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_010_6AFF

    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    jr nz, jr_010_6B07

    rst $38
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_010_6B20

    ld l, a
    ld h, e
    ld l, e
    ld hl, $FDFE
    ld c, c
    or a
    ld l, d
    and c
    or e
    ld sp, $00C7
    ld b, l

jr_010_6ABD:
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]
    add e
    dec hl
    jp nc, $0B09

    dec hl
    jp nc, $0F12

    ld b, l
    ld b, [hl]
    rrca
    nop
    inc a

jr_010_6AD6:
    and b
    ld [bc], a
    dec b

jr_010_6AD9:
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld e, h
    pop de
    dec b
    rlca
    ld e, h
    pop de
    dec bc
    ld [de], a
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    call c, $0AD0
    dec b
    call c, $07D0
    ld a, [bc]
    ld b, [hl]

jr_010_6AFC:
    rrca
    nop
    inc a

jr_010_6AFF:
    and b
    ld [$FF06], sp
    rst $38
    add hl, de
    rst $20
    ld b, [hl]

jr_010_6B07:
    add e
    or d
    jp nc, $060C

    sbc e
    ret nc

    dec b
    dec b
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc a
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld b, h
    ret nc

    add hl, bc

jr_010_6B20:
    rlca
    ld b, h
    ret nc

    ld [bc], a
    ld [$4645], sp
    rrca
    nop
    inc a
    and b
    jr nz, jr_010_6B32

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_010_6B32:
    ld c, a
    pop de
    ld [$4F0A], sp
    pop de
    dec bc
    dec b
    ld b, l
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
    sbc h
    ld c, a
    inc de
    ld h, a
    ld a, [de]
    ld b, e
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $6912
    pop de
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
    ld de, $D159
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    inc b
    pop hl
    ld [hl], b
    ld a, [bc]
    db $10
    ld c, d
    pop de
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    dec b
    pop hl
    ld [hl], b
    dec bc
    rrca
    scf
    pop de
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    ld b, $E1
    ld [hl], b
    rlca
    ld c, $1F
    pop de
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    rlca
    pop hl
    ld [hl], b
    ld [bc], a
    ld [$D0A2], sp
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    ld [$70E1], sp
    ld bc, $6505
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    add hl, bc
    pop hl
    ld [hl], b
    inc b
    inc bc
    ld b, b
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    ld a, [bc]
    pop hl
    ld [hl], b
    dec b
    inc b
    ld d, l
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    dec bc
    pop hl
    ld [hl], b
    ld a, [bc]
    inc bc
    ld b, [hl]
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    ld [de], a
    pop hl
    ld [hl], b
    ld a, [bc]
    dec b
    ld l, [hl]
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    inc de
    pop hl
    ld [hl], b
    inc c
    rlca
    sbc b
    ret nc

    nop
    ld de, $75F4
    db $10

jr_010_6C06:
    ld [$056C], a
    inc d

jr_010_6C0A:
    pop hl
    ld [hl], b
    dec c
    ld bc, $D021
    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    dec d
    pop hl

jr_010_6C1A:
    ld [hl], b
    ld de, $6104

jr_010_6C1E:
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$056C], a
    ld d, $E1
    ld [hl], b
    ld de, $8906
    ret nc

    nop
    ld de, $75F4
    db $10
    ld [$0B6C], a
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
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de
    dec bc
    inc d
    dec bc
    dec d
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
    jr z, jr_010_6C06

    db $FD
    or l
    jr z, jr_010_6C0A

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, @-$5E

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, jr_010_6C1A

    cp a
    or l
    jr z, jr_010_6C1E

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
    and b
    ei
    or l
    add hl, hl
    and b
    rst $30
    or l
    add hl, hl
    and b
    rst $28
    or l
    add hl, hl
    and b
    rst $18
    sbc e
    db $10
    sbc h
    ld l, h
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
    jr nz, jr_010_6CFD

    ld h, l
    ld [hl], e
    ld [hl], h

jr_010_6CAE:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_010_6CF9

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    db $10
    pop bc
    ld l, h
    rla
    ld [$455C], a
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_010_6CC5:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $10
    ret c

    ld l, h
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_010_6CDC:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_010_6CE9

    ld a, d
    jr nz, @+$7A

    ld c, b
    db $10
    ld b, b

jr_010_6CE9:
    ld l, e
    or e
    ld sp, $01C7
    ld c, e
    add hl, bc
    nop
    db $10
    pop bc

jr_010_6CF3:
    ld l, h
    inc d
    ld de, $75F4
    ld b, l

jr_010_6CF9:
    dec d
    ld de, $7675

jr_010_6CFD:
    jr nz, jr_010_6D10

    db $F4
    ld [hl], l
    jr jr_010_6D14

    ld c, [hl]
    halt
    jr nz, jr_010_6D18

    db $F4
    ld [hl], l
    nop

jr_010_6D0A:
    nop
    or l
    jr z, jr_010_6CAE

    cp $45

jr_010_6D10:
    dec d
    ld de, $76C3

jr_010_6D14:
    ld [$F411], sp
    ld [hl], l

jr_010_6D18:
    jr jr_010_6D2B

    sbc h
    halt
    ld [$F411], sp
    ld [hl], l
    nop

jr_010_6D21:
    nop
    or l
    jr z, jr_010_6CC5

    cp $45
    dec d
    ld de, $7675

jr_010_6D2B:
    jr jr_010_6D3E

    db $F4
    ld [hl], l
    jr jr_010_6D42

    ld c, [hl]
    halt
    jr jr_010_6D46

    db $F4
    ld [hl], l
    nop

jr_010_6D38:
    nop
    or l
    jr z, jr_010_6CDC

    db $FD
    ld b, l

jr_010_6D3E:
    dec d
    ld de, $7675

jr_010_6D42:
    jr nz, jr_010_6D55

    db $F4
    ld [hl], l

jr_010_6D46:
    jr jr_010_6D59

    ld c, [hl]
    halt
    jr nz, jr_010_6D5D

    db $F4
    ld [hl], l
    nop

jr_010_6D4F:
    nop
    or l
    jr z, jr_010_6CF3

    ei
    ld b, l

jr_010_6D55:
    dec d
    ld de, $76C3

jr_010_6D59:
    jr nz, jr_010_6D6C

    db $F4
    ld [hl], l

jr_010_6D5D:
    jr jr_010_6D70

    sbc h
    halt
    jr nz, jr_010_6D74

    db $F4
    ld [hl], l
    nop

jr_010_6D66:
    nop
    or l
    jr z, jr_010_6D0A

    rst $30
    ld b, l

jr_010_6D6C:
    dec d
    ld de, $764E

jr_010_6D70:
    db $10
    ld de, $75F4

jr_010_6D74:
    jr jr_010_6D87

    ld [hl], l
    halt
    db $10
    ld de, $75F4
    nop

jr_010_6D7D:
    nop
    or l
    jr z, jr_010_6D21

    rst $30
    ld b, l
    dec d
    ld de, $764E

jr_010_6D87:
    jr jr_010_6D9A

    db $F4
    ld [hl], l
    jr jr_010_6D9E

    ld [hl], l
    halt
    jr jr_010_6DA2

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_010_6D38

    rst $28
    ld b, l

jr_010_6D9A:
    dec d
    ld de, $764E

jr_010_6D9E:
    jr nc, jr_010_6DB1

    db $F4
    ld [hl], l

jr_010_6DA2:
    jr jr_010_6DB5

    ld [hl], l
    halt
    jr nc, jr_010_6DB9

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_010_6D4F

    rst $18
    ld b, l

jr_010_6DB1:
    dec d
    ld de, $76C3

jr_010_6DB5:
    jr c, jr_010_6DC8

    db $F4
    ld [hl], l

jr_010_6DB9:
    jr jr_010_6DCC

    sbc h
    halt
    jr c, jr_010_6DD0

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_010_6D66

    cp a
    ld b, l

jr_010_6DC8:
    dec d
    ld de, $76C3

jr_010_6DCC:
    jr nc, jr_010_6DDF

    db $F4
    ld [hl], l

jr_010_6DD0:
    jr jr_010_6DE3

    sbc h
    halt
    jr nc, jr_010_6DE7

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_010_6D7D

    ld a, a
    ld b, l

jr_010_6DDF:
    dec d
    ld de, $764E

jr_010_6DE3:
    jr nc, jr_010_6DF6

    db $F4
    ld [hl], l

jr_010_6DE7:
    jr jr_010_6DFA

    ld [hl], l
    halt
    jr nc, jr_010_6DFE

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_010_6DF6:
    dec d
    ld de, $764E

jr_010_6DFA:
    jr nc, jr_010_6E0D

    db $F4
    ld [hl], l

jr_010_6DFE:
    jr jr_010_6E11

    ld [hl], l
    halt
    jr nc, jr_010_6E15

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_010_6E0D:
    dec d
    ld de, $769C

jr_010_6E11:
    jr z, jr_010_6E24

    db $F4
    ld [hl], l

jr_010_6E15:
    jr jr_010_6E28

    jp $2876


    ld de, $75F4
    nop
    nop

jr_010_6E1F:
    or l
    add hl, hl
    and b
    ei
    ld b, l

jr_010_6E24:
    dec d
    ld de, $76C3

jr_010_6E28:
    jr z, jr_010_6E3B

    db $F4

jr_010_6E2B:
    ld [hl], l
    jr jr_010_6E3F

    sbc h
    halt

jr_010_6E30:
    jr z, jr_010_6E43

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    rst $30
    ld b, l

jr_010_6E3B:
    dec d

jr_010_6E3C:
    ld de, $7675

jr_010_6E3F:
    jr nc, jr_010_6E52

    db $F4

jr_010_6E42:
    ld [hl], l

jr_010_6E43:
    jr jr_010_6E56

    ld c, [hl]
    halt
    jr nc, jr_010_6E5A

    db $F4
    ld [hl], l
    nop
    nop
    or l

jr_010_6E4E:
    add hl, hl
    and b
    rst $28
    ld b, l

jr_010_6E52:
    dec d

jr_010_6E53:
    ld de, $7675

jr_010_6E56:
    jr nc, jr_010_6E69

    db $F4
    ld [hl], l

jr_010_6E5A:
    jr jr_010_6E6D

    ld c, [hl]
    halt
    jr nc, jr_010_6E71

    db $F4
    ld [hl], l
    nop
    nop
    or l

jr_010_6E65:
    add hl, hl
    and b
    rst $18
    ld b, l

jr_010_6E69:
    ld b, [hl]
    nop
    jr z, jr_010_6E0D

jr_010_6E6D:
    ld bc, $7A10
    ld l, [hl]

jr_010_6E71:
    add hl, bc
    inc bc
    db $10
    ld sp, hl
    ld l, h
    or [hl]

jr_010_6E77:
    jr z, @-$5E

    ld bc, $4645
    nop
    jr z, jr_010_6E1F

    inc b
    db $10
    adc h
    ld l, [hl]

jr_010_6E83:
    add hl, bc
    dec b
    db $10
    ld a, $6D
    or [hl]

jr_010_6E89:
    jr z, jr_010_6E2B

    inc b
    ld b, [hl]
    nop
    jr z, jr_010_6E30

    ld [$9D10], sp
    ld l, [hl]
    add hl, bc

jr_010_6E95:
    ld b, $10
    ld d, l
    ld l, l
    or [hl]
    jr z, jr_010_6E3C

    ld [$4645], sp
    nop
    jr z, jr_010_6E42

    ld [bc], a
    db $10
    xor a
    ld l, [hl]
    add hl, bc

jr_010_6EA7:
    inc b
    db $10
    daa
    ld l, l
    or [hl]
    jr z, jr_010_6E4E

    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_010_6E53

    ld [$C010], sp
    ld l, [hl]
    add hl, bc
    ld b, $10
    ld d, l
    ld l, l
    or [hl]
    jr z, @-$5E

jr_010_6EBF:
    ld [$4645], sp
    nop
    jr z, jr_010_6E65

    ld [$D210], sp
    ld l, [hl]
    add hl, bc
    ld b, $10
    ld d, l
    ld l, l
    or [hl]
    jr z, jr_010_6E71

    ld [$4645], sp
    nop
    jr z, jr_010_6E77

    ld [bc], a
    db $10
    db $E4
    ld l, [hl]
    add hl, bc

jr_010_6EDC:
    inc b
    db $10
    daa
    ld l, l
    or [hl]
    jr z, jr_010_6E83

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_6E89

    inc b
    db $10
    or $6E
    add hl, bc

jr_010_6EEE:
    dec b
    db $10
    ld a, $6D
    or [hl]

jr_010_6EF3:
    jr z, jr_010_6E95

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$0810], sp
    ld l, a

jr_010_6EFF:
    add hl, bc
    ld b, $10
    ld l, h
    ld l, l
    or [hl]

jr_010_6F05:
    jr z, jr_010_6EA7

    ld [$4645], sp
    nop
    jr z, @-$5E

    db $10
    db $10
    ld a, [de]
    ld l, a

jr_010_6F11:
    add hl, bc
    rlca
    db $10
    add e
    ld l, l
    or [hl]

jr_010_6F17:
    jr z, @-$5E

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_6EBF

    db $10
    db $10
    inc l
    ld l, a

jr_010_6F23:
    add hl, bc
    rlca
    db $10
    add e
    ld l, l

jr_010_6F28:
    or [hl]
    jr z, @-$5E

    db $10
    ld b, [hl]
    nop
    jr z, @-$5E

    ld b, b
    db $10
    dec a
    ld l, a

jr_010_6F34:
    add hl, bc
    add hl, bc
    db $10
    or c
    ld l, l
    or [hl]

jr_010_6F3A:
    jr z, jr_010_6EDC

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    db $10
    db $10
    ld c, a
    ld l, a

jr_010_6F46:
    add hl, bc
    rlca
    db $10
    add e
    ld l, l

jr_010_6F4B:
    or [hl]
    jr z, jr_010_6EEE

    db $10
    ld b, [hl]
    nop
    jr z, jr_010_6EF3

    add b
    db $10
    ld h, b
    ld l, a

jr_010_6F57:
    add hl, bc
    ld a, [bc]
    db $10
    ret z

    ld l, l
    or [hl]

jr_010_6F5D:
    jr z, jr_010_6EFF

    add b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_6F05

    jr nz, jr_010_6F77

    ld [hl], d
    ld l, a

jr_010_6F69:
    add hl, bc
    ld [$9A10], sp
    ld l, l
    or [hl]

jr_010_6F6F:
    jr z, jr_010_6F11

    jr nz, jr_010_6FB8

    ld b, [hl]
    nop
    jr z, jr_010_6F17

jr_010_6F77:
    jr nz, jr_010_6F89

    add h
    ld l, a

jr_010_6F7B:
    add hl, bc
    ld [$9A10], sp
    ld l, l
    or [hl]
    jr z, jr_010_6F23

    jr nz, jr_010_6FCB

    nop
    jr z, jr_010_6F28

    ld b, b

jr_010_6F89:
    db $10
    sub l
    ld l, a
    add hl, bc
    add hl, bc
    db $10
    or c
    ld l, l
    or [hl]
    jr z, jr_010_6F34

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_6F3A

    jr nz, jr_010_6FAC

    and a
    ld l, a
    add hl, bc
    ld [$9A10], sp
    ld l, l
    or [hl]
    jr z, jr_010_6F46

    jr nz, @+$48

    nop
    jr z, jr_010_6F4B

    add b

jr_010_6FAC:
    db $10
    cp b
    ld l, a
    add hl, bc
    ld a, [bc]
    db $10
    ret z

    ld l, l
    or [hl]
    jr z, jr_010_6F57

    add b

jr_010_6FB8:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_6F5D

    ld b, b
    db $10
    jp z, $096F

    add hl, bc
    db $10
    or c
    ld l, l
    or [hl]
    jr z, jr_010_6F69

    ld b, b
    ld b, l

jr_010_6FCB:
    ld b, [hl]
    nop
    jr z, jr_010_6F6F

    add b
    db $10
    call c, $096F
    ld a, [bc]
    db $10
    ret z

    ld l, l
    or [hl]
    jr z, jr_010_6F7B

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$EE10], sp
    ld l, a
    add hl, bc
    inc d
    db $10
    inc h
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld bc, $0010
    ld [hl], b
    add hl, bc
    dec bc
    db $10
    rst $18
    ld l, l
    or [hl]
    add hl, hl
    and b
    ld bc, $0046
    add hl, hl
    and b
    ld [$1110], sp
    ld [hl], b
    add hl, bc
    inc d
    db $10
    inc h
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    db $10
    db $10
    inc hl
    ld [hl], b
    add hl, bc
    dec d
    db $10
    dec sp
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    db $10
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$3410], sp
    ld [hl], b
    add hl, bc
    inc d
    db $10
    inc h
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld [bc], a
    db $10
    ld b, [hl]
    ld [hl], b
    add hl, bc
    ld [de], a
    db $10
    or $6D
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [$5710], sp
    ld [hl], b
    add hl, bc
    inc d
    db $10
    inc h
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    jr nz, @+$12

    ld l, c
    ld [hl], b
    add hl, bc
    ld d, $10
    ld d, d
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    jr nz, jr_010_70B0

    nop
    add hl, hl
    and b
    ld [$7A10], sp
    ld [hl], b
    add hl, bc
    inc d
    db $10
    inc h
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    ld [$4645], sp
    nop
    add hl, hl
    and b
    ld bc, $8C10
    ld [hl], b
    add hl, bc
    dec bc
    db $10
    rst $18
    ld l, l
    or [hl]
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld bc, $9E10
    ld [hl], b
    add hl, bc
    dec bc
    db $10
    rst $18
    ld l, l
    or [hl]
    add hl, hl
    and b
    ld bc, $0046
    add hl, hl
    and b
    inc b
    db $10
    xor a
    ld [hl], b
    add hl, bc
    inc de
    db $10
    dec c
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l

jr_010_70B0:
    ld b, [hl]
    nop
    add hl, hl
    and b
    db $10
    db $10
    pop bc
    ld [hl], b
    add hl, bc
    dec d
    db $10
    dec sp
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    db $10
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    db $10
    db $10
    db $D3
    ld [hl], b
    add hl, bc
    dec d
    db $10
    dec sp
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    db $10
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    db $10
    db $E4
    ld [hl], b
    add hl, bc
    inc de
    db $10
    dec c
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    db $10
    or $70
    add hl, bc
    ld [de], a
    db $10
    or $6D
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    db $10
    ld [$0971], sp
    ld [de], a
    db $10
    or $6D
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    db $10
    add hl, de
    ld [hl], c
    add hl, bc
    inc de
    db $10
    dec c
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    jr nz, jr_010_7130

    dec hl
    ld [hl], c
    add hl, bc
    ld d, $10
    ld d, d
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    jr nz, @+$47

    ld b, [hl]
    nop
    add hl, hl
    and b

jr_010_7130:
    jr nz, jr_010_7142

    dec a
    ld [hl], c
    add hl, bc
    ld d, $10
    ld d, d
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    jr nz, jr_010_7184

    nop
    add hl, hl
    and b
    inc b

jr_010_7142:
    db $10
    ld c, [hl]
    ld [hl], c
    add hl, bc
    inc de
    db $10
    dec c
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    inc b
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
    jr nz, jr_010_71C3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_010_71CC

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    db $10
    xor d
    ld [hl], c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_010_71F3

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_010_71FD

jr_010_7184:
    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_010_71EB

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
    ld a, [hl-]
    and b
    db $10
    dec b
    nop
    db $10
    and $71
    and c
    xor l
    add [hl]
    and c
    ld bc, $A132
    ld c, b
    rla
    jp c, $A65C

    ld c, c
    ld [hl], h
    jr nz, jr_010_7223

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_010_722D

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_7231

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_010_71F4

    dec [hl]

jr_010_71C3:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_010_71CC:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    ld a, [hl-]
    and b
    db $10
    dec b
    nop
    db $10
    and $71
    and c
    xor l
    add [hl]
    and c
    ld bc, $A132
    ld c, b
    rla
    jp c, Jump_010_465C

    inc de
    ld bc, $A132

jr_010_71EB:
    ld bc, $A186
    db $10
    ld h, l
    ld [hl], d
    sbc a
    add [hl]

jr_010_71F3:
    and c

jr_010_71F4:
    ld b, [hl]
    rrca
    ld bc, $A186
    dec b
    ld bc, $2B10

jr_010_71FD:
    ld [hl], d
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_010_7267

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
    jr nz, jr_010_7280

    ld [hl], e
    cp $FC
    jr nz, jr_010_727D

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_010_7223:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rla
    jp c, $A65C

    ld d, h

jr_010_722D:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_010_7231:
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
    jr nz, jr_010_7291

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_010_72BF

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
    rla
    jp c, $9F5C

    add [hl]

jr_010_7267:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_010_72D4

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_010_72E3

    ld h, c
    halt

jr_010_727D:
    ld h, l
    jr nz, jr_010_72F3

jr_010_7280:
    ld h, l
    ld [hl], h
    jr nz, jr_010_72E5

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_010_72D2

    ld l, c
    ld h, a

jr_010_728C:
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a

jr_010_7291:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_010_730A

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
    jr nz, jr_010_72FB

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_010_7325

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

jr_010_72BF:
    xor l
    add [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    rla
    jp c, Jump_010_465C

    nop
    add hl, hl
    and b
    inc b
    db $10
    db $DB
    ld [hl], d

jr_010_72D2:
    add hl, bc
    inc de

jr_010_72D4:
    db $10
    dec c
    ld l, [hl]
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_010_7280

    ld bc, $ED10

jr_010_72E3:
    ld [hl], d
    add hl, bc

jr_010_72E5:
    inc bc
    db $10
    db $10
    ld l, l
    or [hl]
    jr z, jr_010_728C

    ld bc, $0C45
    ld [$160B], sp
    ld b, l

jr_010_72F3:
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de
    dec bc
    inc d

jr_010_72FB:
    dec bc
    dec d
    dec bc
    ld d, $0C
    inc bc
    inc c
    inc b
    inc c
    dec b
    inc c
    ld b, $0C
    rlca
    inc c

jr_010_730A:
    ld [$090C], sp
    inc c
    ld a, [bc]
    ld b, l
    inc c
    ld d, $0B
    ld [$0C45], sp
    dec bc
    inc c
    ld [de], a
    inc c
    inc de
    inc c
    inc d
    inc c
    dec d
    inc c
    ld d, $0B
    inc bc
    dec bc
    inc b

jr_010_7325:
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    ld b, l
    nop
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
    ld bc, $F001
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$05
    inc h
    nop
    nop
    inc b
    inc h
    ld hl, sp-$08
    inc bc
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F021
    nop
    nop
    ld hl, $0080
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
    inc b
    ldh a, [$F8]
    ld b, $04
    add b
    nop
    ld hl, sp+$0B
    inc h
    nop
    nop
    ld a, [bc]
    inc h
    ld hl, sp-$08
    add hl, bc
    ld hl, $00F8
    ld [$F021], sp
    ld hl, sp+$07
    inc h
    ldh a, [rP1]
    ld b, $24
    add b
    nop
    nop
    ld de, $0004
    ld hl, sp+$10
    inc b
    ld hl, sp+$00
    rrca
    ld bc, $F8F8
    ld c, $01
    pop af
    nop
    dec c
    ld bc, $F8F1
    inc c
    ld bc, $0080
    ld sp, hl
    inc de
    inc h
    nop
    nop
    inc de
    inc b
    ld hl, sp-$08
    ld [de], a
    ld hl, $00F8
    ld [de], a
    ld bc, $00F0
    dec c
    ld bc, $F8F0
    inc c
    ld bc, $0080
    ld hl, sp+$11
    inc h
    nop
    nop
    db $10
    inc h
    ld hl, sp-$08
    rrca
    ld hl, $00F8
    ld c, $21
    pop af
    nop
    dec c
    ld bc, $F8F1
    inc c
    ld bc, $F980
    nop
    add hl, de
    ld bc, $F8F9
    jr jr_010_73EA

    pop af

jr_010_73EA:
    nop
    rla
    ld bc, $F8F1
    ld d, $01
    nop
    ld bc, $0415
    nop
    ld sp, hl
    inc d
    inc b
    add b
    nop
    ld sp, hl
    ld a, [de]
    inc h
    nop
    nop
    ld a, [de]
    inc b
    ld hl, sp+$00
    add hl, de
    ld bc, $F8F8
    jr @+$03

    ldh a, [rP1]
    rla
    ld bc, $F8F0
    ld d, $01
    add b
    ld sp, hl
    nop
    add hl, de
    ld bc, $F8F9
    jr jr_010_741C

    pop af

jr_010_741C:
    nop
    rla
    ld bc, $F8F1
    ld d, $01
    nop
    ld hl, sp+$15
    inc h
    nop
    nop
    inc d
    inc h
    add b
    nop
    nop
    jr nz, jr_010_7434

    nop
    ld hl, sp+$1F
    inc b

jr_010_7434:
    ld hl, sp+$00
    ld e, $01
    ld hl, sp-$08
    dec e
    ld bc, $00F1
    inc e
    ld bc, $F8F1
    dec de
    ld bc, $0080
    nop
    inc h
    inc b
    nop
    ld hl, sp+$23
    inc b
    ld hl, sp+$00
    ld [hl+], a
    ld bc, $F8F8
    ld hl, $F001
    nop
    inc e
    ld bc, $F8F0
    dec de
    ld bc, $0080
    nop
    jr z, jr_010_7466

    nop
    ld hl, sp+$27
    inc b

jr_010_7466:
    ld hl, sp+$00
    ld h, $01
    ld hl, sp-$08
    dec h
    ld bc, $00F1
    inc e
    ld bc, $F8F1
    dec de
    ld bc, $0080
    ld hl, sp+$20
    inc h
    nop
    nop
    rra
    inc h
    ld hl, sp-$08
    ld e, $21
    ld hl, sp+$00
    dec e
    ld hl, $F8F1
    inc e
    ld hl, $00F1
    dec de
    ld hl, $0080
    ld hl, sp+$24
    inc h
    nop
    nop
    inc hl
    inc h
    ld hl, sp-$08
    ld [hl+], a
    ld hl, $00F8
    ld hl, $F021
    ld hl, sp+$1C
    ld hl, $00F0
    dec de
    ld hl, $0080
    ld hl, sp+$28
    inc h
    nop
    nop
    daa
    inc h
    ld hl, sp-$08
    ld h, $21
    ld hl, sp+$00
    dec h
    ld hl, $F8F1
    inc e
    ld hl, $00F1
    dec de
    ld hl, $5080
    ld [$0008], sp
    rst $38
    pop hl
    ld [hl], e
    ld a, [$1373]
    ld [hl], h
    ld a, [$4973]
    jp nz, Jump_010_5074

    ld [$0008], sp
    ld bc, $7396
    xor a
    ld [hl], e
    ret z

    ld [hl], e
    xor a
    ld [hl], e
    ld c, c
    jp nc, Jump_010_5074

    ld [$FF08], sp
    nop
    ld [hl], a
    ld [hl], h
    sub b
    ld [hl], h
    xor c
    ld [hl], h
    sub b
    ld [hl], h
    ld c, c
    ld [c], a
    ld [hl], h
    ld d, b
    ld [$0108], sp
    nop
    inc l
    ld [hl], h
    ld b, l
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld b, l
    ld [hl], h
    ld c, c
    ld a, [c]
    ld [hl], h
    ld d, b
    ld [$0008], sp
    cp $E1
    ld [hl], e
    ld a, [$1373]
    ld [hl], h
    ld a, [$4973]
    ld [bc], a
    ld [hl], l
    ld d, b
    ld [$0008], sp
    ld [bc], a
    sub [hl]
    ld [hl], e
    xor a
    ld [hl], e
    ret z

    ld [hl], e
    xor a
    ld [hl], e
    ld c, c
    ld [de], a
    ld [hl], l
    ld d, b
    ld [$FE08], sp
    nop
    ld [hl], a
    ld [hl], h
    sub b
    ld [hl], h
    xor c
    ld [hl], h
    sub b
    ld [hl], h
    ld c, c
    ld [hl+], a
    ld [hl], l
    ld d, b
    ld [$0208], sp
    nop
    inc l
    ld [hl], h
    ld b, l
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld b, l
    ld [hl], h
    ld c, c
    ld [hl-], a
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld a, [$0073]
    ld c, c
    ld b, d
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    xor a
    ld [hl], e
    nop
    ld c, c
    ld c, h
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    sub b
    ld [hl], h
    nop
    ld c, c
    ld d, [hl]
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld b, l
    ld [hl], h
    nop
    ld c, c
    ld h, b
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld a, l
    ld [hl], e
    nop
    ld c, c
    ld l, d
    ld [hl], l
    ld c, a
    rst $38
    nop

jr_010_7577:
    nop
    ld h, h
    ld [hl], e
    nop
    ld c, c
    ld [hl], h
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld c, e
    ld [hl], e
    nop
    ld c, c
    ld a, [hl]
    ld [hl], l
    ld c, a
    rst $38
    nop
    nop
    ld [hl-], a
    ld [hl], e
    nop
    ld c, c
    adc b
    ld [hl], l
    ld c, [hl]
    inc bc
    stop
    nop
    xor c
    ld [hl], l
    db $10
    inc bc
    nop
    or b
    ld [hl], l
    db $10
    ld [bc], a
    nop
    cp [hl]
    ld [hl], l
    db $10
    ld bc, $B700
    ld [hl], l
    rst $38
    inc d
    db $10
    ld b, d
    ld [hl], l
    ld h, l
    ld bc, $1412
    db $10
    ld c, h
    ld [hl], l
    ld h, l
    ld bc, $1412
    db $10
    ld d, [hl]
    ld [hl], l
    ld h, l
    ld bc, $1412
    db $10
    ld h, b
    ld [hl], l
    ld h, l
    ld bc, $0012
    nop
    dec b
    ld b, $00
    ld hl, sp+$04
    ld b, $F8
    nop
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
    ld h, $00
    nop
    inc b
    ld h, $F8
    ld hl, sp+$03
    ld hl, $00F8
    ld [bc], a
    ld hl, $F8F0
    ld bc, $F020
    nop
    nop
    jr nz, jr_010_7577

    nop
    cp $0A
    ld b, $F8
    nop
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

jr_010_760D:
    ei
    ld a, [bc]
    ld h, $F8
    ld sp, hl
    add hl, bc
    ld hl, $01F8
    ld [$F021], sp
    ld sp, hl
    rlca
    jr nz, jr_010_760D

    ld bc, $2006
    add b
    nop
    db $FC
    rrca
    ld b, $F1

jr_010_7626:
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0D
    jr nz, jr_010_7626

    nop
    inc c
    ld bc, $F8F8
    dec bc
    ld bc, $0080
    ld sp, hl
    db $10
    ld h, $00

jr_010_763B:
    nop
    db $10
    ld b, $F8
    ld hl, sp+$0E
    ld hl, $00F8
    ld c, $01
    ldh a, [$F8]
    dec c
    jr nz, jr_010_763B

    nop
    dec c
    nop
    add b
    nop
    db $FD
    rrca
    ld h, $F1

jr_010_7654:
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0D
    jr nz, jr_010_7654

    ld hl, sp+$0C

jr_010_765E:
    ld hl, $00F8
    dec bc
    ld hl, $0080
    db $FC
    dec d
    ld b, $F1
    ld hl, sp+$13
    jr nz, jr_010_765E

    nop
    inc de
    nop
    ld hl, sp+$00
    ld [de], a
    ld bc, $F8F8

jr_010_7676:
    ld de, $8001
    ld hl, sp-$08
    inc d
    ld hl, $00F8
    inc d
    ld bc, $F8F0

jr_010_7683:
    inc de
    jr nz, jr_010_7676

    nop
    inc de
    nop
    nop
    ld sp, hl
    ld d, $26
    nop
    nop
    ld d, $06
    add b
    nop
    db $FD

jr_010_7694:
    dec d
    ld h, $F1
    ld hl, sp+$13
    jr nz, @-$0D

    nop
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    ld hl, $00F8
    ld de, $8021
    nop
    nop
    rra
    ld b, $00
    ld hl, sp+$1E
    ld b, $F8
    nop
    ld a, [de]
    ld bc, $F8F8
    add hl, de
    ld bc, $00F1
    jr jr_010_76BB

jr_010_76BB:
    pop af
    ld hl, sp+$17
    nop
    add b
    nop
    db $FC
    jr nz, jr_010_76CA

    ld hl, sp-$04
    dec de
    ld bc, $00F0

jr_010_76CA:
    jr jr_010_76CC

jr_010_76CC:
    ldh a, [$F8]
    rla
    nop
    add b
    nop
    nop
    ld [hl+], a
    ld b, $00
    ld hl, sp+$21
    ld b, $F8
    nop
    dec e
    ld bc, $F8F8
    inc e
    ld bc, $00F1
    jr jr_010_76E5

jr_010_76E5:
    pop af
    ld hl, sp+$17
    nop
    add b
    nop
    ld hl, sp+$1F
    ld h, $00
    nop
    ld e, $26
    ld hl, sp-$08
    ld a, [de]
    ld hl, $00F8
    add hl, de
    ld hl, $F8F1
    jr @+$22

    pop af
    nop
    rla
    jr nz, jr_010_7683

    nop
    db $FC
    jr nz, jr_010_772D

    ld hl, sp-$04
    dec de
    ld hl, $F8F0
    jr @+$22

    ldh a, [rP1]
    rla
    jr nz, jr_010_7694

    nop
    ld hl, sp+$22
    ld h, $00
    nop
    ld hl, $F826
    ld hl, sp+$1D
    ld hl, $00F8
    inc e
    ld hl, $F8F1
    jr jr_010_7748

    pop af
    nop
    rla
    jr nz, @-$7E

jr_010_772D:
    ld d, b
    ld [$0008], sp
    rst $38
    ld h, h
    halt
    ld a, c
    halt
    sub d
    halt
    ld a, c
    halt
    ld c, c
    dec l
    ld [hl], a
    ld d, b
    ld [$0008], sp
    ld bc, $7621
    ld [hl], $76
    ld c, a
    halt

jr_010_7748:
    ld [hl], $76
    ld c, c
    dec a
    ld [hl], a
    ld d, b
    ld [$FF08], sp
    nop
    ld [$0376], a
    ld [hl], a
    inc d
    ld [hl], a
    inc bc
    ld [hl], a
    ld c, c
    ld c, l
    ld [hl], a
    ld d, b
    ld [$0108], sp
    nop
    and a
    halt
    ret nz

    halt
    pop de
    halt
    ret nz

    halt
    ld c, c
    ld e, l
    ld [hl], a
    ld d, b
    ld [$0008], sp
    cp $64
    halt
    ld a, c
    halt
    sub d
    halt
    ld a, c
    halt
    ld c, c
    ld l, l
    ld [hl], a
    ld d, b
    ld [$0008], sp
    ld [bc], a
    ld hl, $3676
    halt
    ld c, a
    halt
    ld [hl], $76
    ld c, c
    ld a, l
    ld [hl], a
    ld d, b
    ld [$FE08], sp
    nop
    ld [$0376], a
    ld [hl], a
    inc d
    ld [hl], a
    inc bc
    ld [hl], a
    ld c, c
    adc l
    ld [hl], a
    ld d, b
    ld [$0208], sp
    nop
    and a
    halt
    ret nz

    halt
    pop de
    halt
    ret nz

    halt
    ld c, c
    sbc l
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    ld a, c
    halt
    nop
    ld c, c
    xor l
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    ld [hl], $76
    nop
    ld c, c
    or a
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    inc bc
    ld [hl], a
    nop
    ld c, c
    pop bc
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    ret nz

    halt
    nop
    ld c, c
    bit 6, a
    ld c, a
    rst $38
    nop
    nop
    inc c
    halt
    nop
    ld c, c
    push de
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    rst $30
    ld [hl], l
    nop
    ld c, c
    rst $18
    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    sbc $75
    nop
    ld c, c
    jp hl


    ld [hl], a
    ld c, a
    rst $38
    nop
    nop
    push bc
    ld [hl], l
    nop
    ld c, c
    di
    ld [hl], a
    ld c, [hl]
    inc bc
    stop
    nop
    inc d
    ld a, b
    db $10
    inc bc
    nop
    dec de
    ld a, b
    db $10
    ld [bc], a
    nop
    add hl, hl
    ld a, b
    db $10
    ld bc, $2200
    ld a, b
    rst $38
    inc d
    db $10
    xor l
    ld [hl], a
    ld h, l
    ld bc, $1412
    db $10
    or a
    ld [hl], a
    ld h, l
    ld bc, $1412
    db $10
    pop bc
    ld [hl], a
    ld h, l
    ld bc, $1412
    db $10
    bit 6, a
    ld h, l
    ld bc, $EF12
    ld a, [$0702]
    nop
    nop
    ld b, $04
    nop
    ld hl, sp+$05
    inc b
    ld hl, sp+$00
    inc b
    inc b
    ld hl, sp-$08
    inc bc
    inc b
    ldh a, [rP1]
    ld bc, $F004
    ld hl, sp+$00
    inc b
    add b
    rst $28
    cp $02
    daa
    nop
    ld hl, sp+$06
    inc h
    nop
    nop
    dec b
    inc h
    ld hl, sp-$08
    inc b
    inc h
    ld hl, sp+$00
    inc bc
    inc h
    ldh a, [$F8]
    ld bc, $F024
    nop
    nop
    inc h
    add b
    ld a, [c]
    ld hl, sp+$0D
    rlca
    nop
    nop
    inc c
    inc b
    nop
    ld hl, sp+$0B
    inc b
    ld hl, sp+$00
    ld a, [bc]
    inc b
    ld hl, sp-$08
    add hl, bc
    inc b
    ldh a, [rP1]
    ld [$F004], sp
    ld hl, sp+$07
    inc b
    add b
    ld a, [c]
    nop
    dec c
    daa
    nop
    ld hl, sp+$0C
    inc h
    nop
    nop
    dec bc
    inc h
    ld hl, sp-$08
    ld a, [bc]
    inc h
    ld hl, sp+$00
    add hl, bc
    inc h
    ldh a, [$F8]
    ld [$F024], sp
    nop
    rlca
    inc h
    add b
    pop af
    ld hl, sp+$13
    daa
    pop af
    ld hl, sp+$12
    inc h
    pop af
    nop
    ld [de], a
    inc b
    pop af
    nop
    inc de
    rlca
    nop
    nop
    ld de, $0004
    ld hl, sp+$10
    inc b
    ld hl, sp+$00
    rrca
    inc b
    ld hl, sp-$08
    ld c, $04
    add b
    ldh a, [$F8]
    inc de
    daa
    ldh a, [rP1]
    inc de
    rlca
    ldh a, [$F8]
    ld [de], a
    inc h
    ldh a, [rP1]
    ld [de], a
    inc b
    nop
    ld sp, hl
    dec d
    inc h
    nop
    nop
    dec d
    inc b
    ld hl, sp-$08
    inc d
    inc h
    ld hl, sp+$00
    inc d
    inc b
    add b
    pop af
    ld hl, sp+$13
    daa
    pop af
    ld hl, sp+$12
    inc h
    pop af
    nop
    ld [de], a
    inc b
    pop af
    nop
    inc de
    rlca
    nop
    ld hl, sp+$11
    inc h
    nop
    nop
    db $10
    inc h
    ld hl, sp-$08
    rrca
    inc h
    ld hl, sp+$00
    ld c, $24
    add b
    rst $30
    ei
    jr jr_010_7912

    ld a, [c]
    ld hl, sp+$1C
    daa
    ld a, [c]
    nop
    inc e

jr_010_7912:
    rlca
    pop af
    ld hl, sp+$1B
    inc h
    pop af
    nop
    dec de
    inc b
    nop
    nop
    ld a, [de]
    inc b
    nop
    ld hl, sp+$19
    inc b
    ld hl, sp+$00
    rla
    inc b
    ld hl, sp-$08
    ld d, $04
    add b
    nop
    ld sp, hl
    rra
    inc h
    nop
    nop
    rra
    inc b
    ld hl, sp+$00
    ld e, $04
    ld hl, sp-$08
    dec e
    inc b
    pop af
    ld hl, sp+$1C
    daa
    pop af
    nop
    inc e
    rlca
    ldh a, [$F8]
    dec de
    inc h
    ldh a, [rP1]
    dec de
    inc b
    add b
    rst $30
    db $FD
    jr jr_010_7978

    ld a, [c]
    ld hl, sp+$1C
    daa
    ld a, [c]
    nop
    inc e
    rlca
    pop af
    ld hl, sp+$1B
    inc h
    pop af
    nop
    dec de
    inc b
    nop
    ld sp, hl
    ld a, [de]
    inc h
    nop
    ld bc, $2419
    ld hl, sp-$08
    rla
    inc h
    ld hl, sp+$00
    ld d, $24
    add b
    pop af
    ld hl, sp+$22
    rlca
    nop
    nop

jr_010_7978:
    ld h, $04
    nop
    ld hl, sp+$25
    inc b
    ld hl, sp+$00
    inc h
    inc b
    ld hl, sp-$08
    inc hl
    inc b
    pop af
    nop
    ld hl, $F104
    ld hl, sp+$20
    inc b
    add b
    ldh a, [$F8]
    ld [hl+], a
    rlca
    nop
    nop
    ld a, [hl+]
    inc b
    nop
    ld hl, sp+$29
    inc b
    ld hl, sp+$00
    jr z, jr_010_79A3

    ld hl, sp-$08
    daa
    inc b

jr_010_79A3:
    ldh a, [rP1]
    ld hl, $F004
    ld hl, sp+$20
    inc b
    add b
    pop af
    ld hl, sp+$22
    rlca
    nop
    nop
    ld l, $04
    nop
    ld hl, sp+$2D
    inc b
    ld hl, sp+$00
    inc l
    inc b
    ld hl, sp-$08
    dec hl
    inc b
    pop af
    nop
    ld hl, $F104
    ld hl, sp+$20
    inc b
    add b
    pop af
    nop
    ld [hl+], a
    daa
    nop
    ld hl, sp+$26
    inc h
    nop
    nop
    dec h
    inc h
    ld hl, sp-$08
    inc h
    inc h
    ld hl, sp+$00
    inc hl
    inc h
    pop af
    ld hl, sp+$21
    inc h
    pop af
    nop
    jr nz, @+$26

    add b
    ldh a, [rP1]
    ld [hl+], a
    daa
    nop
    ld hl, sp+$2A
    inc h
    nop
    nop
    add hl, hl
    inc h
    ld hl, sp-$08
    jr z, jr_010_7A1A

    ld hl, sp+$00
    daa
    inc h
    ldh a, [$F8]
    ld hl, $F024
    nop
    jr nz, jr_010_7A26

    add b
    pop af
    nop
    ld [hl+], a
    daa
    nop
    ld hl, sp+$2E
    inc h
    nop
    nop
    dec l
    inc h
    ld hl, sp-$08
    inc l
    inc h
    ld hl, sp+$00
    dec hl
    inc h
    pop af
    ld hl, sp+$21

jr_010_7A1A:
    inc h
    pop af
    nop
    jr nz, @+$26

    add b
    ld d, b
    ld [$0008], sp
    rst $38
    rlca

jr_010_7A26:
    ld a, c
    inc l
    ld a, c
    ld c, l
    ld a, c
    inc l
    ld a, c
    ld c, c
    jr nz, jr_010_7AAA

    ld d, b
    ld [$0008], sp
    ld bc, $78A4
    push bc
    ld a, b
    and $78
    push bc
    ld a, b
    ld c, c
    jr nc, jr_010_7ABA

    ld d, b
    ld [$FF08], sp
    nop
    ret


    ld a, c
    and $79
    inc bc
    ld a, d
    and $79
    ld c, c
    ld b, b
    ld a, d
    ld d, b
    ld [$0108], sp
    nop
    ld [hl], d
    ld a, c
    adc a
    ld a, c
    xor h
    ld a, c
    adc a
    ld a, c
    ld c, c
    ld d, b
    ld a, d
    ld d, b
    ld [$0008], sp
    cp $07
    ld a, c
    inc l
    ld a, c
    ld c, l
    ld a, c
    inc l
    ld a, c
    ld c, c
    ld h, b
    ld a, d
    ld d, b
    ld [$0008], sp
    ld [bc], a
    and h
    ld a, b
    push bc
    ld a, b
    and $78
    push bc
    ld a, b
    ld c, c
    ld [hl], b
    ld a, d
    ld d, b
    ld [$FE08], sp
    nop
    ret


    ld a, c
    and $79
    inc bc
    ld a, d
    and $79
    ld c, c
    add b
    ld a, d
    ld d, b
    ld [$0208], sp
    nop
    ld [hl], d
    ld a, c
    adc a
    ld a, c
    xor h
    ld a, c
    adc a
    ld a, c
    ld c, c
    sub b
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    inc l
    ld a, c
    nop
    ld c, c
    and b
    ld a, d

jr_010_7AAA:
    ld c, a
    rst $38
    nop
    nop
    push bc
    ld a, b
    nop
    ld c, c
    xor d
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    and $79

jr_010_7ABA:
    nop
    ld c, c
    or h
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    adc a
    ld a, c
    nop
    ld c, c
    cp [hl]
    ld a, d
    ld c, a
    rst $38
    nop
    nop
    add a
    ld a, b
    nop
    ld c, c
    ret z

    ld a, d
    ld c, a
    rst $38
    nop
    nop
    ld l, d
    ld a, b
    nop
    ld c, c
    jp nc, Jump_010_4F7A

    rst $38
    nop
    nop
    ld c, l
    ld a, b
    nop
    ld c, c
    call c, Call_010_4F7A
    rst $38
    nop
    nop
    jr nc, jr_010_7B64

    nop
    ld c, c
    and $7A
    ld c, [hl]
    inc bc
    stop
    nop
    rlca
    ld a, e
    db $10
    inc bc
    nop
    ld c, $7B
    db $10
    ld [bc], a
    nop
    inc e
    ld a, e
    db $10
    ld bc, $1500
    ld a, e
    rst $38
    inc d
    db $10
    and b
    ld a, d
    ld h, l
    ld bc, $1412
    db $10
    xor d
    ld a, d
    ld h, l
    ld bc, $1412
    db $10
    or h
    ld a, d
    ld h, l
    ld bc, $1412
    db $10
    cp [hl]
    ld a, d
    ld h, l
    ld bc, $FF12
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_7B64:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
