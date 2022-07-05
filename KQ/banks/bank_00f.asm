; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    ld e, $1F
    ld e, h
    rrca
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
    jr nz, jr_00F_405D

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00F_406E

    ld l, a
    ld l, $FF
    jr nz, jr_00F_407E

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    rrca
    ld l, d
    ld b, b
    rrca
    ld sp, $9A40
    rrca
    sbc b
    ld b, d
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_00F_4092

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_00F_40B9

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    rrca
    ld h, b
    ld b, b
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00F_408B

    ld l, $FE
    db $FD
    ld c, b

jr_00F_405D:
    rrca
    ld l, d
    ld b, b
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00F_4098

    ld l, $FE
    db $FD
    and c
    sbc e
    rrca
    nop

jr_00F_406E:
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    rrca
    sub a

Jump_00F_4077:
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00F_407E:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld [de], a
    ld d, d
    inc de

jr_00F_408B:
    ld h, a
    ld b, a
    ld c, b
    ld l, e
    inc h
    ld b, e
    dec hl

jr_00F_4092:
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b

jr_00F_4098:
    dec b
    nop
    inc [hl]
    ld h, e
    ld a, [bc]
    ld de, $D2B2
    nop
    inc d
    xor e
    ld e, l
    add hl, de
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    inc de
    inc b
    db $D3
    nop
    dec d
    sub [hl]
    ld a, b
    rrca
    or h
    ld c, c
    ld l, [hl]

jr_00F_40B9:
    jr nc, jr_00F_40C8

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b

jr_00F_40C8:
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    rrca
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
    ld hl, $1352
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    ld h, a
    ld b, a
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    nop
    ld [de], a
    ret nc

    jp nc, $0F00

    ld l, $41
    add hl, de
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    ld [de], a
    rst $10
    jp nc, $0F00

    ld c, l
    ld b, c
    rrca
    ld e, b
    ld b, c
    ld l, [hl]
    jr nc, jr_00F_4128

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    ld [bc], a
    adc b
    inc bc
    ld [de], a
    ld [hl], e
    rrca
    rst $38

jr_00F_4128:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    inc [hl]
    inc d
    or l
    ld e, l
    ld [$5E00], sp
    add hl, de
    ld a, [hl]
    ld h, e
    ld h, l
    ld bc, $1843
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $1514
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca
    ld h, h
    ld b, c
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, @+$45

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00F_41D3

    ld h, c
    ld h, e
    ld l, e
    ld hl, $54FF
    ld l, b
    ld h, l
    jr nz, jr_00F_41D4

    ld h, c
    ld l, e
    jr nz, jr_00F_41E8

    ld [hl], e
    jr nz, jr_00F_41E9

    ld l, h
    ld h, c
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_00F_41FD

    ld h, l
    ld h, l
    jr nz, jr_00F_4207

    ld l, a
    ld [hl], l
    rst $38
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    rrca
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
    ld hl, $1352
    ld h, a
    ld b, a
    ld c, b
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    dec b
    ld [de], a
    push de
    jp nc, $0F00

    db $FD
    ld b, c
    add hl, de
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a

jr_00F_41D3:
    adc a

jr_00F_41D4:
    ld l, [hl]
    inc c
    inc de
    inc b
    db $D3
    nop
    rrca
    ld c, $42
    rrca
    or h
    ld c, c
    ld l, [hl]
    jr nc, jr_00F_41F0

    ret nc

    ld b, e
    nop
    add b
    nop

jr_00F_41E8:
    dec bc

jr_00F_41E9:
    ld [bc], a
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_00F_41F0:
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l

jr_00F_41FD:
    ld d, $14
    ld e, l
    ld e, h
    jr nc, jr_00F_4203

jr_00F_4203:
    ld bc, $1400
    inc d

jr_00F_4207:
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    ld bc, $1019
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    rrca
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
    ld hl, $1352
    ld h, a
    ld b, a
    ld c, b
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    dec b
    ld [de], a
    push de
    jp nc, $0F00

    ld a, h
    ld b, d
    add hl, de
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    inc de
    inc b
    db $D3
    nop
    rrca
    adc e
    ld b, d
    rrca
    or h
    ld c, c
    ld l, [hl]
    jr nc, jr_00F_426F

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    ld [bc], a
    nop
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_00F_426F:
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_00F_4282

jr_00F_4282:
    inc d
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    ld bc, $1019
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    rrca
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
    ld hl, $1352
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    ld h, a
    ld b, a
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    nop
    ld [de], a
    ret nc

    jp nc, $0F00

    ld a, [$1942]
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc c
    inc de
    inc b
    db $D3
    nop
    rrca
    ld c, $42
    rrca
    or h
    ld c, c
    ld l, [hl]
    jr nc, jr_00F_42EC

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    ld [bc], a
    adc b
    inc bc
    ld [de], a
    ld [hl], e
    rrca
    rst $38

jr_00F_42EC:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    jr z, jr_00F_4314

    ret


    ld e, l
    ld [$5D00], sp
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    rrca
    or [hl]
    ld b, [hl]
    and b
    ld bc, $B397
    ld sp, $00C7

jr_00F_4314:
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
    ld hl, $1352
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    ld h, a
    ld b, a
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    inc h
    inc de
    inc e
    db $D3
    nop
    rrca
    add b
    ld b, e
    add hl, de
    add sp, $46
    dec bc
    nop
    dec b
    ld [bc], a
    ld hl, sp+$4A
    ld h, $0F
    ld a, [hl]
    jp nc, $0F00

    xor [hl]
    ld b, e
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    dec h
    ld c, $55
    jp nc, $0F30

    jp c, $1943

    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_4370

    and b
    ld b, b
    nop
    add e
    nop
    ld l, [hl]
    jr nc, jr_00F_4378

    ret nc

    ld b, e
    nop
    add b
    nop

jr_00F_4370:
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    dec h
    db $10
    ld [hl], e

jr_00F_4378:
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
    inc sp
    ld e, h
    jr nc, jr_00F_439A

    db $DD
    ld e, l
    nop
    nop
    ld e, [hl]
    rrca
    ld hl, sp+$43
    ld h, l
    dec bc
    ld b, e
    db $10
    dec d
    inc d
    or l
    ld e, l
    jr nz, jr_00F_43AC

    db $DD
    ld e, l

jr_00F_439A:
    nop
    nop
    ld h, l
    inc c
    ld b, e
    ld b, b
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld e, l
    add hl, de
    ldh a, [rDMA]

jr_00F_43AC:
    ld c, e
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld a, [bc]
    dec d
    dec d
    add d
    ld a, b
    jr nz, jr_00F_43CF

    ld l, [hl]
    ld a, b
    jr nz, jr_00F_43BE

jr_00F_43BE:
    ld h, l
    dec bc
    ld b, e
    db $10
    dec d
    dec d
    ld a, b
    ld a, b
    jr nz, jr_00F_43DD

    ld l, [hl]
    ld a, b
    nop
    nop
    ld e, [hl]
    rrca
    xor d

jr_00F_43CF:
    ld b, h
    ld h, l
    inc c
    inc d
    dec d
    ld a, [bc]
    ld a, b
    ld b, e
    sub [hl]
    add hl, de
    ld b, l
    inc d
    inc de
    ld e, h

jr_00F_43DD:
    ld l, l
    ld h, l
    ld a, [bc]
    dec d
    inc de
    ld h, [hl]
    ld l, l
    jr nz, jr_00F_43F9

    ld e, h
    ld l, l
    jr nz, jr_00F_43EA

jr_00F_43EA:
    ld e, [hl]
    rrca
    inc h
    ld b, h
    ld h, l
    dec bc
    dec d
    inc de
    ret nc

    ld l, h
    jr nc, jr_00F_43F6

jr_00F_43F6:
    add hl, de
    ld b, l
    and d

jr_00F_43F9:
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    jr nz, @+$6A

    ld l, a
    ld [hl], a
    jr nz, jr_00F_447B

    ld h, c
    ld [hl], e
    jr nz, jr_00F_4471

    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00F_448D

    ld h, c
    ld [hl], e
    jr nz, jr_00F_447F

    ld h, c
    ld [hl], e
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    cp $41
    ld c, b
    ld b, l
    ld c, l
    ld hl, $47FE
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00F_44B3

    ld l, a
    ld [hl], d
    ld l, e
    inc l
    jr nz, @+$6C

    ld l, a
    ld h, d
    rst $38
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_44AF

    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $20
    ld c, c
    cp $68
    ld h, c
    halt
    ld h, l
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, e
    rst $38
    ld c, c
    jr nz, jr_00F_44D2

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_00F_44DD

    ld l, a

jr_00F_446A:
    jr nz, @+$66

    ld l, a
    inc l
    cp $73
    ld l, a

jr_00F_4471:
    jr nz, @+$5B

    ld h, c
    ld l, e
    ld l, c
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h

jr_00F_447B:
    rst $38
    ld [hl], h
    ld h, c
    ld l, e

jr_00F_447F:
    ld h, l
    jr nz, jr_00F_44FB

    ld l, a
    ld [hl], l
    jr nz, jr_00F_44FA

    ld l, a
    jr nz, jr_00F_44FD

    ld l, b
    ld h, l
    cp $4F

jr_00F_448D:
    ld [hl], d
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_44D8

    ld h, l
    ld h, l
    ld [hl], b
    ld [hl], e
    ld l, $FF
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00F_450C

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    jr z, jr_00F_44F0

    and [hl]
    ld b, e

jr_00F_44AF:
    daa
    ld l, l
    ld l, a
    ld l, [hl]

jr_00F_44B3:
    inc l
    jr nz, jr_00F_4522

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld h, a
    ld l, a
    ld hl, $FDFE
    and c
    ld e, e
    inc c
    ld b, l
    ld [hl+], a
    ld e, $AD
    jr c, jr_00F_446A

    dec bc
    ld bc, $A138
    dec b
    ld bc, $35B3
    and c

jr_00F_44D2:
    ld bc, HeaderGlobalChecksum
    ld [hl], $A1
    rrca

jr_00F_44D8:
    nop
    nop
    ld a, [$0F44]

jr_00F_44DD:
    ld bc, $FE00
    ld b, h
    rrca
    ld [bc], a
    nop
    dec bc
    ld b, l
    rrca
    inc bc
    nop
    jr jr_00F_4530

    rrca
    inc b
    nop
    jr @+$47

jr_00F_44F0:
    rrca
    dec b
    nop
    jr jr_00F_453A

    rst $38
    ld c, b
    rrca
    jr @+$47

jr_00F_44FA:
    or e

jr_00F_44FB:
    ld [hl], $A1

jr_00F_44FD:
    ld bc, $B397
    ld sp, $01C7
    ld l, b
    jr nc, jr_00F_4558

    inc de
    ld c, b

jr_00F_4508:
    dec bc
    jr c, jr_00F_4577

    sub a

jr_00F_450C:
    or e
    ld sp, $01C7
    ld l, b
    jr nc, @+$54

    inc de
    ld c, b
    dec bc
    jr nc, jr_00F_4585

    ld bc, $0124
    ld c, b
    rrca
    dec de
    ld b, d
    ld [hl+], a
    rrca
    or [hl]

jr_00F_4522:
    ld c, d
    and b
    ld bc, $0007
    ld hl, sp+$4A
    add hl, bc
    nop
    rrca
    ld c, b
    ld b, l
    dec b
    ld [bc], a

jr_00F_4530:
    ld hl, sp+$4A
    jr jr_00F_4541

    jr nz, jr_00F_4508

    ld a, b
    rrca
    adc d
    ld b, l

jr_00F_453A:
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_454D

    ret nc

jr_00F_4541:
    ld b, e
    add b
    add a
    nop
    dec bc
    ld [bc], a
    ld b, l
    inc d
    inc d
    and c
    ld e, l
    ld h, e

jr_00F_454D:
    ld bc, $1843
    dec d
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    ld a, l
    ld e, h

jr_00F_4558:
    jr nz, jr_00F_456E

    xor e
    ld e, l
    nop
    nop
    ld h, e
    ld b, $15
    inc d
    and c
    ld e, l
    jr jr_00F_457A

    or l
    ld e, l
    ld c, b

Jump_00F_4569:
    inc d
    db $DD
    ld e, l
    nop
    nop

jr_00F_456E:
    ld h, l
    ld bc, $1415
    adc l
    ld e, h
    jr nz, jr_00F_458A

    inc hl

jr_00F_4577:
    ld e, h
    db $10
    add hl, de

jr_00F_457A:
    rst $20
    ld b, [hl]
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00F_4594

jr_00F_4585:
    ld c, b
    rrca
    ld a, c
    ld l, c
    ld b, l

jr_00F_458A:
    ld h, e
    ld bc, $175D
    call z, $4345
    inc bc
    dec d
    dec d

jr_00F_4594:
    ld a, c
    ld [hl], a
    ld [bc], a
    nop
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    ld e, $10
    ld b, e
    inc e
    dec d
    dec d
    ld [$0277], a
    nop
    add hl, bc
    dec bc
    rrca
    cp $45
    dec d
    dec d
    ld [$0E77], a
    nop
    dec d
    dec d
    ld h, h
    ld a, b
    ld b, b
    dec d
    jp c, $0A77

    nop
    dec d
    dec d
    ld a, b
    ld a, b
    db $10
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld e, [hl]
    rrca
    ld b, $46
    ld h, l
    ld [bc], a
    dec d
    dec d
    adc h
    ld a, b
    jr nc, jr_00F_45E6

    ld a, b
    ld a, b
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    dec d
    dec d
    ld [$3077], a
    nop
    ld e, c
    ld b, $15
    dec d
    ld a, [bc]
    ld a, b
    ld b, b
    dec d

jr_00F_45E6:
    jp c, Jump_00F_4077

    dec d
    sub [hl]
    ld a, b
    nop
    nop
    ld e, a
    ld bc, $6502
    ld bc, $1515
    ld e, d
    ld a, b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    nop
    nop
    ld b, l
    dec d
    ld de, $759A
    ld d, b
    nop
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ccf
    ld hl, $5720
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00F_4678

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_4683

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_468D

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld d, e
    ld l, b
    ld l, b
    ld l, b
    inc l
    jr nz, jr_00F_46A4

    ld l, a
    jr nz, jr_00F_46A8

    ld l, [hl]
    ld h, l
    jr nz, jr_00F_46A6

    ld [hl], e
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_00F_46BD

    ld l, a
    cp $6B
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00F_469A

    daa
    ld l, l
    jr nz, jr_00F_46BD

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_46C8

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$6F

    ld a, c
    cp $71
    ld [hl], l
    ld h, l
    ld [hl], e

jr_00F_4678:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]

jr_00F_4683:
    ld c, a
    ld c, e
    ld hl, $4920
    jr nz, jr_00F_46F0

    ld l, a
    ld l, h
    ld l, h

jr_00F_468D:
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld hl, $4220
    ld [hl], l
    ld [hl], h

jr_00F_469A:
    jr nz, jr_00F_4710

    ld l, b
    ld l, c
    ld [hl], e
    cp $FD
    ld e, e
    ld [bc], a
    and [hl]

jr_00F_46A4:
    ld h, h
    ld l, a

jr_00F_46A6:
    ld h, l
    ld [hl], e

jr_00F_46A8:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00F_4719

    ld l, a
    ld l, a
    ld l, e
    rst $38
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_00F_472B

    ld l, b
    ld h, l
    jr nz, jr_00F_4729

    ld l, a
    ld [hl], d

jr_00F_46BD:
    ld l, l
    ld h, c
    ld l, h
    cp $77
    ld h, c
    ld a, c
    jr nz, jr_00F_4735

    ld [hl], l
    ld [hl], h

jr_00F_46C8:
    jr nz, jr_00F_4739

    ld h, [hl]
    rst $38
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
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld l, $20
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00F_4738

    rst $38

jr_00F_46F0:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00F_4740

    jr nz, jr_00F_476C

    ld h, c
    ld [hl], a
    jr nz, jr_00F_475E

    ld l, [hl]
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_00F_4776

    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_00F_477A

    ld [hl], b
    ld h, l
    ld l, [hl]
    cp $75

jr_00F_4710:
    ld [hl], b
    jr nz, jr_00F_4782

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l

jr_00F_4719:
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    rst $38
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_00F_478A

    ld l, b
    ld h, l

jr_00F_4729:
    ld h, e
    ld l, e

jr_00F_472B:
    jr nz, jr_00F_4796

    ld [hl], h
    cp $6F
    ld [hl], l
    ld [hl], h
    ld hl, $FDFE

jr_00F_4735:
    and d
    sbc b
    ld b, c

jr_00F_4738:
    and [hl]

jr_00F_4739:
    ld c, a
    ld l, e
    ld l, $FE
    db $FD
    and c
    ld e, a

jr_00F_4740:
    nop
    ld [bc], a
    ld e, a
    ld bc, $A202
    jr z, jr_00F_478B

    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld h, [hl]
    jr nz, jr_00F_47CA

    ld l, a
    ld [hl], l
    jr nz, jr_00F_47C8

    ld h, l
    ld h, l
    rst $38
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    inc l

jr_00F_475E:
    jr nz, jr_00F_47D9

    ld l, a
    ld [hl], l
    cp $6E
    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00F_47DD

    ld h, c
    ld [hl], a

jr_00F_476C:
    jr nz, jr_00F_47DB

    ld h, l
    inc l
    rst $38
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_00F_4776:
    ccf
    cp $FD
    and d

jr_00F_477A:
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_00F_47E4

    ld l, a

jr_00F_4782:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $FE
    db $FD
    and c

jr_00F_478A:
    ld e, e

jr_00F_478B:
    ld bc, $2245
    rrca
    sub a
    or e
    ld sp, $01C7
    ld l, c
    ld e, b

jr_00F_4796:
    ld a, b
    inc d
    ld l, b
    ld hl, $1352
    ld h, a
    ld b, a
    ld c, b
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    ld l, h
    ld h, h
    ld c, b
    dec b
    nop
    ld hl, sp+$4A
    inc h
    ld bc, $D04C
    nop
    rrca
    rst $18
    ld b, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld hl, $9903
    ret nc

    nop
    rrca
    ldh a, [rBGP]
    rrca
    push af
    ld b, a
    ld l, [hl]

jr_00F_47C8:
    jr nc, jr_00F_47D7

jr_00F_47CA:
    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    ld [hl+], a
    inc bc
    ld [hl], e

jr_00F_47D7:
    rrca
    rst $38

jr_00F_47D9:
    ld a, a
    sbc b

jr_00F_47DB:
    ld a, d
    ld h, b

jr_00F_47DD:
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld e, l

jr_00F_47E4:
    ld e, h
    jr nz, jr_00F_47FB

    xor e
    ld e, l
    jr nz, jr_00F_47EB

jr_00F_47EB:
    ld e, [hl]
    dec bc
    ld d, a
    ld l, h
    ld b, l
    inc d
    dec d
    ld a, b
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca

jr_00F_47FB:
    ld bc, $4848
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00F_4847

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5020
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, d
    ld [hl], d
    ld h, c
    halt
    ld h, l
    jr nz, jr_00F_488D

    ld l, a
    cp $76
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], d
    jr nz, jr_00F_489A

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00F_489D

    ld l, [hl]
    jr nz, @+$4D

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00F_4894

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    rrca
    sub a
    ld l, c

jr_00F_4847:
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld hl, $1352
    ld h, a
    ld b, a
    ld c, b
    ld l, h
    ld h, h
    ld c, b
    ld l, e
    inc h
    ld b, e
    dec hl
    pop de
    ld l, b
    inc l
    dec b
    nop
    ld hl, sp+$4A
    ld [bc], a
    ld [de], a
    jp nc, $00D2

    rrca
    xor [hl]
    ld c, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    nop
    ld [de], a
    ret nc

    jp nc, $0F00

    ld a, [de]
    ld c, c
    rrca
    or h
    ld c, c
    dec b
    inc bc
    ld hl, sp+$4A
    inc c
    db $10
    adc h
    jp nc, $0F30

    ld a, c
    ld c, c
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_4898

    and b
    ld b, b

jr_00F_488D:
    nop
    add e
    nop
    ld l, [hl]
    jr nc, jr_00F_48A0

    ret nc

jr_00F_4894:
    ld b, e
    nop
    add b
    nop

jr_00F_4898:
    dec bc
    nop

jr_00F_489A:
    dec bc
    ld [bc], a
    dec bc

jr_00F_489D:
    inc bc
    adc b
    inc b

jr_00F_48A0:
    ld [de], a
    or e
    ld sp, $01C7
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
    sbc l
    ld e, h
    jr nc, jr_00F_48C8

    or l
    ld e, l
    jr nc, jr_00F_48CC

    db $DD
    ld e, l
    jr nc, jr_00F_48D0

    xor e
    ld e, l
    rrca
    nop
    ld e, [hl]
    rrca
    ret nz

    ld c, c
    ld h, l
    ld bc, $1414

jr_00F_48C8:
    db $DD
    ld e, l
    ld b, e
    db $10

jr_00F_48CC:
    add c
    jp c, $02C1

jr_00F_48D0:
    ld e, a
    nop
    inc bc
    dec d
    inc d
    sbc l
    ld e, h
    ld b, [hl]
    inc d
    inc sp
    ld e, h
    jr nz, jr_00F_48F1

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    rrca
    ld e, c
    ld c, d
    ld h, l
    dec b
    dec d
    inc d
    inc sp
    ld e, h
    ld [$DD14], sp
    ld e, l
    ld d, b
    inc d

jr_00F_48F1:
    or l
    ld e, l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    dec d
    inc d
    sbc l
    ld e, h
    ld [$B514], sp
    ld e, l
    nop
    nop
    ld h, l
    ld de, $1414
    ret


    ld e, l
    ld h, l
    inc de
    ld e, a
    ld bc, $5D02
    add hl, de
    ldh a, [rDMA]
    sbc e
    rrca
    nop
    ld b, b
    or e
    ld sp, $00C7
    ld b, l
    dec d
    dec d
    ld a, [bc]
    ld a, b
    jr nc, @+$17

    ld a, b
    ld a, b
    nop
    nop
    ld h, l
    ld bc, $1514
    adc h
    ld a, b
    ld e, a
    nop
    inc bc
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld d, b
    dec d
    jp c, $1077

    dec d
    adc h
    ld a, b
    nop
    nop
    ld h, l
    ld de, $1515
    ld a, [bc]
    ld a, b
    jr nc, jr_00F_4958

    ld e, d
    ld a, b
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld [$451E], sp
    dec d
    dec d
    and b
    ld a, b
    or h
    dec d
    and b
    ld a, b
    or h

jr_00F_4958:
    dec d
    adc h
    ld a, b
    ld [$5A15], sp
    ld a, b
    ld d, b
    dec d
    adc h
    ld a, b
    ld d, b
    dec d
    ld e, d
    ld a, b
    ld [$8215], sp
    ld a, b
    ld d, b
    dec d
    ld e, d
    ld a, b
    ld [$8C15], sp
    ld a, b
    ld [$4800], sp
    rrca
    ld c, a
    ld c, c
    inc d
    inc de
    ld e, h
    ld l, l
    ld h, l
    inc b
    dec d
    inc de
    and b
    ld l, h
    ld [$4813], sp
    ld l, l
    ld b, b
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld h, l
    dec c
    inc d
    inc de
    ld h, [hl]
    ld l, l
    ld h, l
    rrca
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, l
    ld de, $1314
    ld e, h
    ld l, l
    ld h, l
    inc de
    dec d
    inc de
    or b
    ld l, h
    jr z, jr_00F_49BA

    ret nz

    ld l, h
    sub [hl]
    inc de
    inc [hl]
    ld l, l
    nop
    nop
    ld e, a
    ld bc, $1902
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca

jr_00F_49BA:
    push bc
    ld c, h
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00F_4A3B

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$4B

    daa
    ld h, h
    rst $38
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$67

    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    cp $69
    ld l, [hl]
    jr nz, jr_00F_4A34

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    rst $38
    ld c, c
    daa
    halt
    ld h, l
    jr nz, @+$70

    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00F_4A70

    ld h, l
    ld h, l
    ld l, [hl]
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_4A77

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $FE
    db $FD
    and d
    jr z, jr_00F_4A54

    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_00F_4A85

    ld l, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_00F_4A93

    ld l, a
    rst $38
    ld l, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, @+$6B

    ld [hl], h
    jr nz, jr_00F_4AA1

    ld h, l
    ld l, h
    ld l, h
    cp $68
    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]

jr_00F_4A34:
    ld l, $20
    ld b, c
    ld l, [hl]
    ld h, h
    rst $38
    db $FD

jr_00F_4A3B:
    ld e, e
    ld bc, $73A6
    ld [hl], b
    ld h, l
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4AB7

    ld h, [hl]
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld l, $2E
    ld l, $FE
    db $FD

jr_00F_4A54:
    and c
    ld e, a
    nop
    inc bc
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00F_4AC8

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_00F_4ADF

    ld l, a
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d

jr_00F_4A70:
    ld l, a
    ld l, a
    ld l, l
    inc l
    jr nz, @+$55

    ld h, c

jr_00F_4A77:
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $52FE
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_00F_4AEA

    ld l, a

jr_00F_4A85:
    ld [hl], d
    jr nz, jr_00F_4AFC

    ld l, b
    ld h, l
    rst $38
    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_00F_4B01

    ld h, c
    ld [hl], d

jr_00F_4A93:
    ld [hl], h
    jr nz, jr_00F_4B05

    ld h, [hl]
    cp $79
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_00F_4B12

    ld [hl], d
    ld h, c
    ld l, c

jr_00F_4AA1:
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    ld l, $20
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e

jr_00F_4AB7:
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_4B32

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_4B30

    ld h, l
    jr nz, jr_00F_4B3D

    ld l, b
    ld a, c

jr_00F_4AC8:
    cp $49
    daa
    halt
    ld h, l
    jr nz, jr_00F_4B3D

    ld h, l
    halt
    ld h, l
    ld [hl], d
    rst $38
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_00F_4B4A

    ld h, [hl]
    jr nz, jr_00F_4B52

    ld l, b

jr_00F_4ADF:
    ld l, c
    ld [hl], e
    cp $70
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $FE
    db $FD

jr_00F_4AEA:
    ld e, e
    inc b
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_4B66

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_00F_4B65

jr_00F_4AFC:
    ld [hl], e
    rst $38
    ld h, h
    ld h, c
    ld l, [hl]

jr_00F_4B01:
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a

jr_00F_4B05:
    ld [hl], l
    ld [hl], e
    ld l, $20
    ld d, a
    ld h, l
    cp $6C
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_00F_4B86

jr_00F_4B12:
    ld l, a
    jr nz, jr_00F_4B80

    ld h, l
    ld h, l
    ld [hl], b
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_4B89

    ld l, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    ld [hl], e
    cp $6F
    ld [hl], l
    ld [hl], h
    ld l, $FE
    db $FD
    ld e, e
    dec b
    and d
    sbc b
    ld b, c

jr_00F_4B30:
    and [hl]
    ld d, e

jr_00F_4B32:
    ld l, a
    jr nz, jr_00F_4BAC

    ld l, b
    ld a, c
    jr nz, jr_00F_4B9A

    ld l, l
    jr nz, jr_00F_4B85

    rst $38

jr_00F_4B3D:
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4BB5

    ld [hl], l
    ld [hl], h
    cp $61

jr_00F_4B4A:
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_4BC4

    ld l, b
    ld l, c

jr_00F_4B52:
    ld [hl], e
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_00F_4BC9

    ld l, a
    ld [hl], a
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld b, d

jr_00F_4B65:
    ld h, l

jr_00F_4B66:
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_00F_4BD6

    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_4BE4

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_00F_4BEB

    ld h, c
    ld [hl], d
    ld [hl], h
    cp $6F

jr_00F_4B80:
    ld h, [hl]
    jr nz, jr_00F_4BFC

    ld l, a
    ld [hl], l

jr_00F_4B85:
    ld [hl], d

jr_00F_4B86:
    cp $74
    ld [hl], d

jr_00F_4B89:
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    ld e, a
    nop
    ld [bc], a
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c

jr_00F_4B9A:
    ld l, a
    ld [hl], l
    jr nz, jr_00F_4C11

    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_00F_4C17

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, c
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c

jr_00F_4BAC:
    ld h, h
    ld a, c
    ld hl, $4920
    cp $74
    ld l, b
    ld l, c

jr_00F_4BB5:
    ld l, [hl]
    ld l, e
    jr nz, jr_00F_4C2D

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_4C27

    ld [hl], e
    jr nz, jr_00F_4C22

    rst $38
    ld [hl], h
    ld h, l

jr_00F_4BC4:
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_4C2E

    ld l, a

jr_00F_4BC9:
    ld [hl], d
    cp $73
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE

jr_00F_4BD6:
    db $FD
    ld e, e
    dec c
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld l, a
    ld [hl], l

jr_00F_4BE4:
    ld l, h
    ld h, h
    jr nz, jr_00F_4C4A

    ld h, l
    rst $38
    ld [hl], d

jr_00F_4BEB:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $2E
    ld l, $FE
    db $FD
    ld e, e
    ld c, $A2
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l

jr_00F_4BFC:
    ld [hl], h
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00F_4C74

    ld l, a
    ld [hl], h
    rst $38
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4C84

    ld l, a

jr_00F_4C11:
    jr nz, jr_00F_4C86

    ld h, c
    ld a, c
    ld l, $FE

jr_00F_4C17:
    db $FD
    ld e, e
    rrca
    and d
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld l, a
    ld l, $FE

jr_00F_4C22:
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_00F_4C27:
    ld c, a
    ld c, e
    ld l, $20
    ld c, c
    daa

jr_00F_4C2D:
    ld l, h

jr_00F_4C2E:
    ld l, h
    jr nz, jr_00F_4CA1

    ld l, h
    ld h, c
    ld a, c
    rst $38
    ld h, c
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4CB3

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_00F_4CBA

    ld l, a
    ld [hl], l
    ld [hl], d
    cp $6C
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h

jr_00F_4C4A:
    ld h, l
    jr nz, jr_00F_4CB4

    ld h, c
    ld l, l
    ld h, l
    inc l
    rst $38
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_4CBB

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $65
    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_00F_4CD1

    ld h, l
    jr nz, jr_00F_4CDB

    ld l, a
    jr nz, @+$64

    ld h, l
    rst $38
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld a, c
    jr nz, jr_00F_4CD4

    ld h, d

jr_00F_4C74:
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_4CE2

    ld [hl], h
    ld hl, $FDFE
    ld e, e
    ld de, $28A2
    ld b, e
    and [hl]
    ld d, h

jr_00F_4C84:
    ld l, b
    ld h, c

jr_00F_4C86:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00F_4CFF

    ld l, b
    ld h, l
    rst $38
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld hl, $4E20
    ld l, a
    ld [hl], a
    jr nz, jr_00F_4D02

    ld h, l
    ld [hl], h
    cp $67
    ld l, a
    ld l, c

jr_00F_4CA1:
    ld l, [hl]
    ld h, a
    ld hl, $5720
    ld c, a
    ld c, a
    ld hl, $FDFE
    ld e, e
    ld [de], a
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, l

jr_00F_4CB3:
    ld h, l

jr_00F_4CB4:
    jr nz, jr_00F_4D2F

    ld l, a
    ld [hl], l
    jr nz, jr_00F_4D26

jr_00F_4CBA:
    ld h, c

jr_00F_4CBB:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and c
    ld e, e
    inc de
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc [hl]
    and b
    inc b
    ld b, $FF
    rst $38
    rrca
    dec a
    ld c, l

jr_00F_4CD1:
    ld b, [hl]
    rrca
    nop

jr_00F_4CD4:
    inc [hl]
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    rrca

jr_00F_4CDB:
    ld a, l
    ld c, l
    ld b, [hl]
    rrca
    nop
    inc [hl]
    and b

jr_00F_4CE2:
    ld bc, $FF06
    rst $38
    rrca
    xor d
    ld c, l
    and d
    jr z, jr_00F_4D2F

    and [hl]
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_00F_4D67

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], e
    rst $38
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h

jr_00F_4CFF:
    jr nz, jr_00F_4D74

    ld l, b

jr_00F_4D02:
    ld l, a
    ld l, a
    ld [hl], h
    jr nz, jr_00F_4D68

    ld [hl], h
    cp $79
    ld l, a
    ld [hl], l
    jr nz, @+$6B

    ld h, [hl]
    jr nz, jr_00F_4D85

    ld l, b
    ld h, l
    ld a, c
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_4D8D

    ld h, l
    ld h, l
    jr nz, jr_00F_4D97

    ld l, a
    ld [hl], l
    inc l
    cp $73
    ld l, a
    jr nz, jr_00F_4D99

jr_00F_4D26:
    ld [hl], h
    ld h, c
    ld a, c
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    cp $6F

jr_00F_4D2F:
    ld h, [hl]
    jr nz, @+$75

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $FDFE
    ld c, b
    rrca
    ldh [rKEY1], a
    and d
    jr z, jr_00F_4D83

    and [hl]
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_00F_4DBC

    ld l, b
    ld h, l
    jr nz, jr_00F_4DBE

    ld l, a
    ld h, c
    ld h, h
    rst $38
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$76

    ld [hl], d
    ld h, c
    halt
    ld h, l
    ld l, h
    ld h, l
    ld h, h
    cp $69
    ld [hl], e
    jr nz, jr_00F_4DD6

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00F_4DDE

jr_00F_4D67:
    ld h, c

jr_00F_4D68:
    ld a, c
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_00F_4DD0

    jr nz, @+$74

    ld h, l
    ld h, c
    ld [hl], e

jr_00F_4D74:
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    ld c, b
    rrca
    ldh [rKEY1], a
    and d
    jr z, @+$45

    and [hl]
    ld c, [hl]
    ld l, a

jr_00F_4D83:
    jr nz, jr_00F_4DF3

jr_00F_4D85:
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_00F_4DFE

    ld l, a
    rst $38
    ld [hl], a

jr_00F_4D8D:
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_00F_4DF3

    ld l, [hl]
    jr nz, @+$67

    ld a, b
    ld [hl], h

jr_00F_4D97:
    ld [hl], d
    ld h, c

jr_00F_4D99:
    cp $6D
    ld l, c
    ld l, h
    ld h, l
    jr nz, @+$6A

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld c, b
    rrca
    ldh [rKEY1], a
    and d
    jr z, jr_00F_4DF0

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_4E25

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_00F_4E29

    ld h, c
    ld [hl], h
    ld l, b

jr_00F_4DBC:
    rst $38
    ld l, c

jr_00F_4DBE:
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00F_4E25

    ld l, h
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00F_4E3E

    ld h, d

jr_00F_4DD0:
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38

jr_00F_4DD6:
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD
    ld c, b
    rrca

jr_00F_4DDE:
    ldh [rKEY1], a
    and c
    ld e, e
    ld bc, $4845
    rrca
    daa
    ld l, c
    ld c, b
    rrca
    dec l
    ld l, c
    ld c, b
    rrca
    inc sp
    ld l, c

jr_00F_4DF0:
    ld c, b
    rrca
    add hl, sp

jr_00F_4DF3:
    ld l, c
    ld c, b
    rrca
    ccf
    ld l, c
    ld bc, $0F16
    ld c, b
    ld a, [de]
    ld a, [hl-]

jr_00F_4DFE:
    ld c, d
    ld bc, $0F16
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc b
    rrca
    dec de
    ld c, [hl]
    rrca
    ld h, b
    ld c, [hl]
    rrca
    cp h
    ld c, [hl]
    rrca
    inc bc
    ld c, a
    and [hl]
    ld d, a
    ld l, b
    ld l, a
    jr nz, jr_00F_4E8C

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld [hl], e

jr_00F_4E25:
    jr nz, jr_00F_4E9E

    ld l, b
    ld h, c

jr_00F_4E29:
    ld [hl], h
    rst $38
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, l

jr_00F_4E33:
    jr nz, jr_00F_4E33

    ld l, h
    ld [hl], l
    ld [hl], d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4EA7

jr_00F_4E3E:
    ld l, [hl]
    jr nz, jr_00F_4EB5

    ld l, b
    ld h, l
    rst $38
    ld h, h
    ld h, c
    ld [hl], d
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_00F_4EBD

    ld h, [hl]
    jr nz, jr_00F_4EC5

    ld l, b
    ld h, l
    cp $66
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ccf
    cp $FD
    ld c, c
    inc a
    ld c, a
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00F_4ED1

    ld [hl], e
    jr nz, jr_00F_4E8B

    rst $38
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    jr nz, jr_00F_4ED7

    jr nz, jr_00F_4EE8

    ld h, c
    ld h, e
    ld l, e
    cp $6F
    ld h, [hl]
    jr nz, @+$79

    ld l, c
    ld l, h
    ld h, h
    jr nz, jr_00F_4EFC

    ld h, l
    ld h, l
    ld h, d
    ld l, a
    ld [hl], e
    rst $38

jr_00F_4E8B:
    ld l, c

jr_00F_4E8C:
    ld l, [hl]
    jr nz, jr_00F_4F03

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$64

    ld [hl], l
    ld [hl], e
    ld l, b
    ld h, l
    ld [hl], e
    cp $67
    ld h, l
    ld [hl], h

jr_00F_4E9E:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4F16

    ld h, l
    ld h, c
    ld h, h

jr_00F_4EA7:
    ld a, c
    jr nz, @+$01

    ld [hl], h
    ld l, a
    jr nz, @+$72

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_00F_4F22

jr_00F_4EB5:
    ld h, l
    ld hl, $FDFE
    ld c, c
    inc a
    ld c, a
    and [hl]

jr_00F_4EBD:
    ld c, l
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_00F_4F3C

    ld l, a
    ld [hl], l

jr_00F_4EC5:
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4F16

    ld h, c
    ld h, a
    ld l, c
    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l

jr_00F_4ED1:
    jr nz, jr_00F_4F49

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], l

jr_00F_4ED7:
    ld [hl], d
    ld h, l
    ld h, h

jr_00F_4EDA:
    jr nz, jr_00F_4EDA

    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_00F_4F56

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, @+$01

jr_00F_4EE8:
    ld [hl], a
    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    jr nz, jr_00F_4F5D

    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, a
    cp $72
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_00F_4EFC:
    ld l, [hl]
    ld hl, $FDFE
    ld c, c
    inc a
    ld c, a

jr_00F_4F03:
    and [hl]
    ld c, a
    ld l, a
    ld l, a
    ld l, a
    ld l, b
    ld l, b
    inc l
    jr nz, @+$63

    jr nz, jr_00F_4F72

    ld [hl], l
    ld [hl], h
    ld h, l
    rst $38
    ld h, d
    ld h, c
    ld h, d

jr_00F_4F16:
    ld a, c
    jr nz, jr_00F_4F7E

    ld h, l
    ld h, d
    ld l, c
    ld [hl], h
    jr nz, jr_00F_4F88

    ld [hl], e
    cp $73

jr_00F_4F22:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_4F8C

    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_4F98

    ld [hl], l
    ld [hl], e
    ld l, b
    ld hl, $FDFE

jr_00F_4F3C:
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c

jr_00F_4F49:
    ld c, d
    inc bc
    rrca
    ld d, h
    ld c, a
    rrca
    ld h, [hl]
    ld c, a
    rrca
    adc a
    ld c, a
    and [hl]
    ld c, c

jr_00F_4F56:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00F_4FBC

    jr nz, jr_00F_4FCF

jr_00F_4F5D:
    ld l, a
    ld h, e
    ld l, e
    ld l, $FE
    db $FD
    ld c, c
    ret


    ld c, a
    and [hl]
    ld c, c
    jr nz, jr_00F_4FD5

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_00F_4FE3

    ld [hl], d
    ld l, c
    ld [hl], b

jr_00F_4F72:
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, a
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00F_4FF1

    ld l, b

jr_00F_4F7E:
    ld h, l
    ld [hl], e
    ld h, l

jr_00F_4F81:
    jr nz, jr_00F_4F81

    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e

jr_00F_4F88:
    ld hl, $FE20
    db $FD

jr_00F_4F8C:
    ld c, c
    ret


    ld c, a
    and [hl]
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00F_5006

    ld [hl], d
    ld h, c

jr_00F_4F98:
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, @+$74

    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, @+$6B

    ld l, [hl]

jr_00F_4FAB:
    jr nz, jr_00F_4FAB

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_5022

    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_00F_5021

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], h

jr_00F_4FBC:
    ld l, a
    jr nz, @+$63

    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld a, c
    jr nz, jr_00F_5032

    ld h, l
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l

jr_00F_4FCF:
    or e
    ld sp, $01C7
    and d
    sbc b

jr_00F_4FD5:
    ld b, c
    ld c, d
    inc b
    rrca
    db $E4
    ld c, a
    rrca
    rla
    ld d, b
    rrca
    ld c, l
    ld d, b
    rrca
    adc d

jr_00F_4FE3:
    ld d, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_5041

    ld h, l
    ld h, l
    ld h, d
    ld l, a
    rst $38
    ld d, e
    ld [hl], h

jr_00F_4FF1:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    jr nz, jr_00F_5066

    ld h, [hl]
    jr nz, jr_00F_5041

    ld l, a
    ld l, a
    ld h, h
    cp $4C
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_00F_5065

    ld l, [hl]
    ld h, h

jr_00F_5006:
    jr nz, jr_00F_505C

    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    rst $38
    ld b, [hl]
    ld l, a
    ld l, a
    ld h, h
    ld hl, $FDFE
    ld c, c
    call nz, $A650
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$76

jr_00F_5021:
    ld l, b

jr_00F_5022:
    ld l, c
    ld [hl], e
    jr nz, jr_00F_5046

    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00F_5096

    ld a, c

jr_00F_5032:
    ld h, l
    ld [hl], e

jr_00F_5034:
    jr nz, jr_00F_5034

    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_00F_50A1

    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld l, c

jr_00F_5041:
    ld l, [hl]
    ld h, a
    jr nz, @+$01

    ld l, l

jr_00F_5046:
    ld h, l
    ld hl, $FDFE
    ld c, c
    call nz, $A650
    ld c, b
    ld h, c
    ld l, b
    ld hl, $5420
    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$01

    ld h, e
    ld h, c
    ld [hl], d

jr_00F_505C:
    halt
    ld h, l
    ld h, h
    jr nz, jr_00F_50D5

    ld l, a
    ld l, a
    jr nz, jr_00F_50D2

jr_00F_5065:
    ld h, c

jr_00F_5066:
    ld l, [hl]
    ld a, c
    cp $6C
    ld h, l
    ld h, a
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_00F_50E8

    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], a
    ld h, l
    ld h, l
    ld h, d
    ld l, a
    jr nz, jr_00F_50F2

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld hl, $FDFE
    ld c, c
    call nz, $A650
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_5107

    ld h, l
    ld h, l
    ld h, d
    ld l, a
    jr nz, jr_00F_510D

jr_00F_5096:
    ld l, b
    ld l, a
    rst $38
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_00F_5106

    ld l, a

jr_00F_50A1:
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    cp $73
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    jr nz, @+$6E

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    rst $38
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00F_511F

    ld l, a
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc [hl]
    and b
    ld bc, $0005

jr_00F_50D2:
    add hl, de
    rst $20
    ld b, [hl]

jr_00F_50D5:
    add e
    ld c, [hl]
    pop de
    inc b
    ld [$D14E], sp
    ld [$450E], sp
    ld b, [hl]
    rrca
    nop
    inc [hl]
    and b
    ld [bc], a
    dec b
    nop
    add hl, de

jr_00F_50E8:
    rst $20
    ld b, [hl]
    add e
    ld a, e
    pop de
    inc bc
    rlca
    ld a, e
    pop de
    add hl, bc

jr_00F_50F2:
    inc de
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc [hl]
    and b
    jr nz, jr_00F_5100

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00F_5100:
    cp c
    ret nc

    rlca
    dec bc
    cp c
    ret nc

jr_00F_5106:
    inc b

jr_00F_5107:
    add hl, de
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc [hl]

jr_00F_510D:
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ret nz

    jp nc, $0705

    ret nz

    jp nc, $1811

    ld b, l
    ld b, [hl]

jr_00F_511F:
    rrca
    nop
    inc [hl]
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    and d
    jp nc, $0704

    and d
    jp nc, $2210

    ld b, l
    ld b, l
    sbc d
    rrca
    inc [hl]
    ld d, c
    daa
    ld [$0196], sp
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
    ld [de], a
    ld d, d
    inc de
    dec b
    nop
    ld hl, sp+$4A
    inc c
    ld de, $D2B4
    nop
    rrca
    dec h
    ld d, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec b
    ld [de], a
    push de
    jp nc, $0F00

    xor [hl]
    ld d, d
    rrca
    ret z

    ld h, e
    dec b
    inc bc
    ld hl, sp+$4A
    nop
    ld [de], a
    ret nc

    jp nc, $0F30

    xor $52
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc b
    ld hl, sp+$4A
    ld c, $11
    or [hl]
    jp nc, $0F60

    ld d, l
    ld d, e
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    dec b
    ld hl, sp+$4A
    ld c, $11
    or [hl]
    jp nc, $0FC8

    or e
    ld d, e
    add hl, de
    rst $20

jr_00F_519B:
    ld b, [hl]
    dec b
    ld b, $F8
    ld c, d
    rrca
    rrca
    ld h, a
    jp nc, $0FD2

    ret


    ld d, e
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    rlca
    ld hl, sp+$4A
    inc c
    rrca
    ld h, h
    jp nc, $0FC8

    rst $30
    ld d, e
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    ld [$4AF8], sp
    rrca
    rrca
    ld h, a
    jp nc, $0F60

    ld [hl], $54
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    add hl, bc
    ld hl, sp+$4A
    inc c
    rrca
    ld h, h
    jp nc, $0F60

    ld c, b
    ld d, h
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    rrca
    rrca
    ld h, a
    jp nc, $0F60

    ld d, [hl]
    ld d, h
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_51F7

    and b
    ld b, b
    nop
    add e
    nop
    ld l, [hl]
    jr nc, jr_00F_51FF

    ret nc

    ld b, e
    nop
    add b
    nop

jr_00F_51F7:
    ld l, [hl]
    dec [hl]
    dec c
    ldh a, [rVBK]
    nop
    add [hl]
    nop

jr_00F_51FF:
    ld l, [hl]
    add hl, bc
    inc c
    db $10
    ld c, d
    add b
    adc h
    nop
    ld l, [hl]
    ld a, [bc]
    inc c
    ld [hl], b
    ld c, c
    jr nz, jr_00F_519B

    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld c, $10
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    or e
    inc [hl]
    and c
    ld bc, $607A
    rrca
    ld b, l
    inc d
    inc d
    or l
    ld e, l
    ld b, e
    ld h, b
    dec bc
    inc b
    add c
    jp c, $01C1

    ld b, e
    jr c, @+$60

    rrca
    ld h, b
    ld d, h
    ld h, e
    ld bc, $1414
    xor e
    ld e, l
    ld e, [hl]
    rrca
    jp hl


    ld d, h
    ld h, e
    inc b
    dec d
    inc d
    ld e, l
    ld e, h
    ld b, $14
    ld a, l
    ld e, h
    ld b, $14
    xor e
    ld e, l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    rrca
    ld hl, $6555
    dec b
    ld e, [hl]
    rrca
    add e
    ld d, l
    ld h, l
    ld b, $14
    inc d
    db $DD
    ld e, l
    ld b, e
    db $10
    add b
    dec c
    db $10
    ld bc, $090B
    ld h, e
    ld [bc], a
    add b
    ld a, [bc]
    ld [de], a
    ld bc, $1414
    xor e
    ld e, l
    ld e, [hl]
    rrca
    or b
    ld d, l
    ld h, l
    rlca
    ld b, e
    jr jr_00F_52D8

    ld b, $63
    rlca
    ld e, [hl]
    rrca
    sbc d
    ld d, [hl]
    ld h, l
    add hl, bc
    dec d
    inc d
    ld e, l
    ld e, h
    ld [$7D14], sp
    ld e, h
    ld [$AB14], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    rrca
    or e
    ld d, [hl]
    ld h, l
    ld a, [bc]
    dec d
    inc d
    ld l, l
    ld e, h
    jr nz, jr_00F_52A2

jr_00F_52A2:
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    add hl, bc
    ld d, d
    ld c, e
    ld b, l
    inc d
    dec d
    ld a, b
    ld a, b
    ld h, e
    dec b
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $0843
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld b, h
    dec d
    jp c, $1E77

    dec d
    ld a, b
    ld a, b
    jr jr_00F_52DF

    ld a, [bc]
    ld a, b
    ld [$A015], sp
    ld a, b
    nop
    nop
    ld h, l
    ld b, $14
    dec d
    ld a, b
    ld a, b

jr_00F_52D8:
    ld h, e
    ld [bc], a
    inc d
    dec d
    and b
    ld a, b
    ld h, e

jr_00F_52DF:
    rlca
    ld b, e
    db $10
    dec d
    dec d
    ld [$1E77], a
    dec d
    ld a, [$5A77]
    nop
    add hl, de
    ld b, l
    ld b, e
    call c, $1315
    ret nc

    ld l, h
    jr nc, jr_00F_5309

    ld a, $6D
    stop
    ld h, l
    ld bc, $1043
    dec d
    inc de
    ret nc

    ld l, h
    ld e, $00
    ld d, $13
    ret nc

    ld l, h
    inc a

jr_00F_5309:
    ld bc, $0000
    dec d
    inc de
    and b
    ld l, h
    ld [$1600], sp
    inc de
    ld a, $6D
    db $10
    ld bc, $0000
    ld e, [hl]
    rrca
    call Call_00F_6554
    inc bc
    ld e, c
    ld bc, $0665
    inc d
    inc de
    ld d, d
    ld l, l
    ld h, e
    ld [bc], a
    inc d
    inc de
    ld a, $6D
    ld h, e
    ld b, $15
    inc de
    ret nz

    ld l, h
    db $10
    inc de
    or b
    ld l, h
    ld [$2A13], sp
    ld l, l
    ld [$3E13], sp
    ld l, l
    nop
    nop
    ld e, [hl]
    rrca
    inc d
    ld d, [hl]
    ld h, l
    ld [$0759], sp
    dec d
    inc de
    or b
    ld l, h
    or h
    inc de
    ld a, [hl+]
    ld l, l
    nop
    nop
    ld b, l
    ld e, $0D
    dec d
    inc de
    sub h
    ld e, l
    stop
    dec bc
    dec b
    add hl, de
    ld b, l
    dec d
    inc de
    sub h
    ld e, l
    inc h
    inc de
    add hl, de
    ld e, [hl]
    jr nz, jr_00F_537E

    ld h, h
    ld e, l
    db $10
    inc de
    ld [hl], h
    ld e, l
    inc c
    inc de
    add hl, de
    ld e, [hl]
    jr nc, jr_00F_538A

    add hl, bc
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, de
    ld e, [hl]
    ld a, [bc]

jr_00F_537E:
    inc de
    add hl, bc
    ld e, [hl]
    ld a, [bc]
    nop
    dec d
    inc de
    add hl, de
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, bc

jr_00F_538A:
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, de
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, bc
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, de
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, bc
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, de
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, bc
    ld e, [hl]
    ld a, [bc]
    inc de
    add hl, de
    ld e, [hl]
    jr nc, jr_00F_53A9

jr_00F_53A9:
    dec d
    inc de
    pop bc
    ld e, l
    inc h
    nop
    ld e, c
    ld [bc], a
    add hl, de
    ld b, l
    dec d
    ld de, $7B6C
    jr nz, jr_00F_53CA

    ld a, [hl-]
    ld a, e
    jr jr_00F_53CE

    ld [$107B], sp
    add hl, de
    rst $20
    ld b, [hl]
    jr jr_00F_53C5

jr_00F_53C5:
    ld e, c
    ld [bc], a
    add hl, de
    ld b, l
    dec d

jr_00F_53CA:
    ld de, $7ACC
    ld e, b

jr_00F_53CE:
    ld de, $7AEA
    jr @+$13

    xor [hl]
    ld a, d
    jr nc, jr_00F_53E8

    ld sp, hl
    ld a, d
    jr @+$13

    db $DB
    ld a, d
    jr nz, jr_00F_53F0

    ld [$187A], a
    ld de, $7ABD
    jr nc, jr_00F_53F8

    ld sp, hl

jr_00F_53E8:
    ld a, d
    jr jr_00F_53FC

    call z, $287A
    nop
    inc d

jr_00F_53F0:
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    ld a, [bc]
    add hl, de
    ld b, l
    dec d

jr_00F_53F8:
    ld de, $7B6C
    add d

jr_00F_53FC:
    ld de, $7B53
    jr jr_00F_5412

    add l
    ld a, e
    ld l, b
    ld de, $7B21
    jr jr_00F_541A

    ld l, h
    ld a, e
    ld l, b
    ld de, $7B53
    jr jr_00F_5411

jr_00F_5411:
    dec d

jr_00F_5412:
    ld de, $7B08
    db $10
    ld de, $7B85
    ld h, b

jr_00F_541A:
    nop
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    ld c, $0F
    ld h, [hl]
    jp nc, $0F60

    ld d, [hl]
    ld d, h
    add hl, de
    rst $20
    ld b, [hl]
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    ld a, [bc]
    ld b, e
    db $10
    ld e, c
    ld [bc], a
    add hl, de
    ld b, l
    ld e, $0D
    dec d
    inc de
    ld hl, sp+$5D
    jr z, jr_00F_543E

jr_00F_543E:
    dec d
    add hl, de
    rst $20
    ld b, [hl]
    stop
    dec bc
    ld b, $19
    ld b, l
    ld e, $0D
    dec d
    inc de
    ld hl, sp+$5D
    jr z, jr_00F_5450

jr_00F_5450:
    dec bc
    rlca
    dec bc
    ld [$4519], sp
    ld e, $0D
    dec d
    inc de
    rst $20
    ld e, l
    jr z, jr_00F_545E

jr_00F_545E:
    add hl, de
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ld hl, $FDFE
    and c
    ld e, c
    dec b
    and d
    cp b
    ld e, l
    and [hl]
    ld c, b
    ld h, c
    halt
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_00F_54EF

    ld [hl], b
    ld l, a
    ld l, e
    ld h, l
    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00F_54D9

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    jr nz, jr_00F_5506

    ld h, l
    ld [hl], h
    ccf
    cp $FD
    and c
    and d
    jr z, jr_00F_54D9

    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_00F_5515

    ld h, l
    ld [hl], h
    inc l
    rst $38
    ld b, d
    ld [hl], d
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ld hl, $4820
    ld l, a
    ld [hl], a
    daa
    ld [hl], e
    jr nz, jr_00F_5528

    ld [hl], h
    rst $38
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    cp $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    jr z, jr_00F_5513

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $5220
    ld b, l
    ld b, c

jr_00F_54D9:
    ld b, h
    ld e, c
    jr nz, jr_00F_5531

    ld c, a
    rst $38
    ld b, a
    ld c, a
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, a
    ld l, a

jr_00F_54EF:
    ccf
    jr nz, jr_00F_5549

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    ld e, c
    inc b
    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_00F_557B

    ld l, b
    ld h, c

jr_00F_5506:
    ld [hl], h
    jr nz, jr_00F_556A

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_5585

    ld [hl], a
    ld l, a

jr_00F_5513:
    jr nz, jr_00F_558A

jr_00F_5515:
    ld [hl], b
    jr nz, jr_00F_558C

    ld l, a
    ccf
    cp $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l

jr_00F_5528:
    jr nz, jr_00F_5592

    ld h, c
    halt
    ld h, l
    jr nz, jr_00F_5591

    ld h, l
    ld h, l

jr_00F_5531:
    ld l, [hl]
    rst $38
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld [hl], e
    jr nz, jr_00F_55A1

    cp $4D
    ld h, c
    ld h, a
    ld l, c
    jr nz, jr_00F_55BC

    ld l, [hl]
    ld h, h

jr_00F_5549:
    ld h, l
    ld [hl], d
    jr nz, jr_00F_55A6

    ld h, c
    ld l, e
    ld l, c
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_00F_55CF

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    inc l
    jr nz, jr_00F_55BE

    ld l, [hl]
    ld h, h
    cp $69
    ld [hl], h
    jr nz, jr_00F_55CD

    ld [hl], e
    jr nz, jr_00F_55DB

    ld l, c
    ld l, l
    ld h, l

jr_00F_556A:
    jr nz, jr_00F_55D2

    ld l, a
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_55E2

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_00F_55EC

    ld [hl], h
    ld h, l

jr_00F_557B:
    ld [hl], b
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    sbc b

jr_00F_5585:
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h

jr_00F_558A:
    jr nz, @+$4B

jr_00F_558C:
    jr nz, jr_00F_55EF

    ld l, l
    jr nz, jr_00F_55F5

jr_00F_5591:
    ld l, a

jr_00F_5592:
    ld l, [hl]
    ld h, l
    rst $38
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    ld d, a
    ld h, c

jr_00F_55A1:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_00F_561A

jr_00F_55A6:
    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $45
    and d
    jr z, jr_00F_55F6

    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00F_5603

jr_00F_55BC:
    ld c, a
    ld c, a

jr_00F_55BE:
    ld c, a
    ld b, h
    ld hl, $FF21
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_5631

    ld [hl], h
    jr nz, jr_00F_563F

    ld h, c
    ld l, e

jr_00F_55CD:
    ld h, l
    ld [hl], e

jr_00F_55CF:
    cp $6D
    ld l, a

jr_00F_55D2:
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    rst $38
    ld b, h

jr_00F_55DB:
    ld d, d
    ld b, l
    ld b, c
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, a

jr_00F_55E2:
    jr nz, jr_00F_5639

    ld d, b
    jr nz, @+$50

    ld b, l
    ld d, a
    cp $43
    ld d, d

jr_00F_55EC:
    ld b, l
    ld b, c
    ld d, h

jr_00F_55EF:
    ld d, l
    ld d, d
    ld b, l
    ld d, e
    jr nz, jr_00F_5669

jr_00F_55F5:
    ld l, a

jr_00F_55F6:
    jr nz, jr_00F_565A

    ld h, l
    rst $38
    ld h, c
    jr nz, jr_00F_5664

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_00F_5650

jr_00F_5603:
    ld h, c
    ld h, a
    ld l, c
    ld hl, $FE21
    ld e, c
    ld b, l
    ld b, c
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld h, c

jr_00F_561A:
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00F_566A

    jr nz, jr_00F_568B

    ld h, c
    halt
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00F_568F

    ld [hl], l
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_00F_5631:
    ld h, l
    ld [hl], e
    ld [hl], e
    cp $68
    ld h, l
    ld [hl], d
    ld h, l

jr_00F_5639:
    jr nz, jr_00F_56A4

    ld l, [hl]
    jr nz, jr_00F_568C

    ld h, c

jr_00F_563F:
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    rst $38
    ld [hl], e
    ld l, a
    jr nz, jr_00F_5692

    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00F_56C9

jr_00F_5650:
    ld l, a
    ld [hl], l
    cp $74
    ld l, a
    jr nz, jr_00F_56BD

    ld l, a
    ld l, h
    ld l, h

jr_00F_565A:
    ld l, a
    ld [hl], a
    jr nz, jr_00F_56B7

    ld h, c
    ld l, e
    ld l, c
    cp $76
    ld h, l

jr_00F_5664:
    ld [hl], d
    ld a, c
    jr nz, jr_00F_56CB

    ld h, c

jr_00F_5669:
    ld [hl], d

jr_00F_566A:
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    ld a, c
    ld l, $FF
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_00F_56E6

    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, @+$79

    ld h, c
    ld a, c
    cp $74
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    rst $38
    ld d, l
    ld l, [hl]

jr_00F_568B:
    ld h, h

jr_00F_568C:
    ld h, l
    ld [hl], d
    ld l, [hl]

jr_00F_568F:
    ld h, l
    ld h, c
    ld [hl], h

jr_00F_5692:
    ld l, b
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$A245], sp
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_56F8

    ld l, [hl]

jr_00F_56A4:
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ccf
    cp $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]

jr_00F_56B7:
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_00F_572E

    ld l, c

jr_00F_56BD:
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $4920
    daa
    halt
    ld h, l
    rst $38
    ld l, [hl]
    ld h, l

jr_00F_56C9:
    halt
    ld h, l

jr_00F_56CB:
    ld [hl], d
    jr nz, jr_00F_5730

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_00F_5747

    ld l, a
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$57

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    rst $38
    ld h, d
    ld h, l

jr_00F_56E6:
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    ld e, $1F
    ld e, h
    rrca
    ld hl, sp+$56
    ld b, l

jr_00F_56F8:
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
    jr nz, jr_00F_574E

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00F_575F

    ld l, a
    ld l, $FF
    jr nz, jr_00F_576F

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    rrca
    ld e, e
    ld d, a
    rrca
    ld [hl+], a
    ld d, a
    sbc d
    rrca
    ld a, [bc]
    ld e, c
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l

jr_00F_572E:
    jr nz, jr_00F_5783

jr_00F_5730:
    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_00F_57AA

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    rrca
    ld d, c
    ld d, a
    and [hl]
    ld d, e
    ld l, h
    ld l, a

jr_00F_5747:
    ld [hl], h
    jr nz, jr_00F_577C

    ld l, $FE
    db $FD
    ld c, b

jr_00F_574E:
    rrca
    ld e, e
    ld d, a
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, @+$33

    ld l, $FE
    db $FD
    and c
    sbc e
    rrca
    pop af

jr_00F_575F:
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld [de], a
    sub a
    or e

jr_00F_5769:
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00F_576F:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    push de
    ld d, d
    inc de

jr_00F_577C:
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]

jr_00F_5783:
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    inc [hl]
    ld h, e
    add hl, bc
    jr jr_00F_5769

    jp nc, $1400

    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $0B
    ld d, b
    pop de
    nop
    rrca
    push bc
    ld d, a
    rrca
    ret z

    ld h, e
    ld l, [hl]
    jr nc, jr_00F_57B7

jr_00F_57AA:
    ret nc

    ld b, e
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

jr_00F_57B7:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    ld [$1019], sp
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    ld [de], a
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
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    nop
    inc c
    ld l, b
    pop de
    nop
    rrca
    ld a, [hl+]
    ld e, b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $0C
    ld l, [hl]
    pop de
    nop
    rrca
    ld c, c
    ld e, b
    rrca
    ld d, h
    ld e, b
    ld l, [hl]
    jr nc, jr_00F_5824

    ret nc

    ld b, e
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

jr_00F_5824:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    sbc l
    ld e, h
    jr nc, jr_00F_5844

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    add hl, de
    ld a, [hl]
    ld h, e
    ld h, l
    ld bc, $1843
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    rrca
    pop af
    ld d, [hl]

jr_00F_5844:
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $1514
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca
    ld h, b
    ld e, b
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, @+$45

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    ld hl, $54FF
    ld l, b
    ld h, l
    jr nz, @+$5B

    ld h, c
    ld l, e
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_00F_58E5

    ld l, h
    ld h, c
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_00F_58F9

    ld h, l
    ld h, l
    jr nz, jr_00F_5903

    ld l, a
    ld [hl], l
    rst $38
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0F9B
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld [de], a
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
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    rlca
    add hl, de
    push af
    jp nc, $0F00

    ld bc, $1959
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $0B
    ld d, b
    pop de
    nop
    rrca
    push bc
    ld d, a
    rrca
    ret z

    ld h, e
    ld l, [hl]
    jr nc, jr_00F_58F2

jr_00F_58E5:
    ret nc

    ld b, e
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

jr_00F_58F2:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e

jr_00F_58F9:
    rrca
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    inc d
    inc d

jr_00F_5903:
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld [de], a
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
    push de

jr_00F_591F:
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    nop
    inc c
    ld l, b
    pop de
    nop
    rrca
    ld l, d
    ld e, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $0B
    ld d, b
    pop de
    nop
    rrca
    push bc
    ld d, a
    rrca
    ret z

    ld h, e
    ld l, [hl]
    jr nc, jr_00F_595C

    ret nc

    ld b, e
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

jr_00F_595C:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    rrca
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    sbc l
    ld e, h
    jr nc, @+$16

    and c
    ld e, l
    nop
    nop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld e, $AD
    jr c, jr_00F_591F

    dec bc
    ld bc, $A138
    dec b
    ld bc, $35B3
    and c
    inc b
    ld c, [hl]
    ld bc, $A136
    rrca
    nop
    nop
    xor a
    ld e, c
    rrca
    ld bc, $B300
    ld e, c
    rrca
    ld [bc], a
    nop
    ret z

    ld e, c
    rrca
    inc bc
    nop
    db $DD
    ld e, c
    rrca
    inc b
    nop
    db $DD
    ld e, c
    rrca
    dec b
    nop
    db $DD
    ld e, c
    rst $38
    ld c, b
    rrca
    db $DD
    ld e, c
    or e
    ld [hl], $A1
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    db $E4
    ld d, d
    inc de
    ld c, b
    dec bc
    jr c, @+$6E

    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    db $E4
    ld d, d
    inc de
    ld c, b
    dec bc
    jr nc, jr_00F_5A4A

    ld bc, $0314
    ld c, b
    rrca
    and b
    ld e, b
    ld [hl+], a
    ld [de], a
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
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    inc d
    inc b
    adc h
    ret nc

    nop
    rrca
    ld a, $5A
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rla
    inc bc
    ld [hl], c
    ret nc

    nop
    rrca
    ld d, e
    ld e, d
    rrca
    ld e, b
    ld e, d
    ld l, [hl]
    jr nc, jr_00F_5A36

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    ld d, $04
    ld [hl], e

jr_00F_5A36:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    ld [$1415], sp
    inc sp
    ld e, h
    db $10
    inc d
    sbc l
    ld e, h
    db $10
    inc d

jr_00F_5A4A:
    or l
    ld e, l
    jr nz, jr_00F_5A4E

jr_00F_5A4E:
    ld e, [hl]
    dec bc
    ld d, a
    ld l, h
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca
    ld h, h
    ld e, d
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00F_5AAA

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5020
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, d
    ld [hl], d
    ld h, c
    halt
    ld h, l
    jr nz, jr_00F_5AF0

    ld l, a
    cp $76
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], d
    jr nz, jr_00F_5AFD

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00F_5B00

    ld l, [hl]
    jr nz, jr_00F_5ADF

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, @+$5C

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    ld [de], a
    sub a
    or e

jr_00F_5AAA:
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
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    inc c
    rrca
    adc $D1
    nop
    rrca
    nop
    ld e, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    add hl, bc
    db $10

jr_00F_5ADF:
    jp hl


    pop de
    nop
    rrca
    ld a, [hl-]
    ld e, e
    rrca
    ld c, l
    ld e, e
    ld l, [hl]
    jr nc, @+$0F

    ret nc

    ld b, e
    nop
    add b
    nop

jr_00F_5AF0:
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    ld a, [bc]
    ld de, $0F73
    rst $38
    ld a, a
    sbc b
    ld a, d

jr_00F_5AFD:
    ld h, b
    rrca
    ld b, l

jr_00F_5B00:
    ld b, e
    db $10
    dec d
    inc d
    ld a, l
    ld e, h
    db $10
    inc d
    ld e, l
    ld e, h
    db $10
    inc d
    xor e
    ld e, l
    jr nz, jr_00F_5B10

jr_00F_5B10:
    or e
    inc [hl]
    and c
    inc b
    ld e, [hl]
    dec bc
    ld l, c
    ld l, l
    ld h, e
    ld bc, $1414
    db $DD
    ld e, l
    add b
    inc de
    rrca
    ld bc, $3043
    ld e, c
    ld [bc], a
    add b
    inc d
    dec b
    ld bc, $3043
    add c
    adc c
    pop bc
    inc b
    ld e, a
    nop
    ld [bc], a
    ld e, c
    inc bc
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    ld b, l
    inc d
    dec d
    ld a, b
    ld a, b
    ld h, e
    ld bc, $1514
    adc h
    ld a, b
    ld h, e
    ld [bc], a
    ld h, e
    inc bc
    inc d
    dec d
    ld a, b
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca
    ld e, c
    ld e, e
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00F_5B9F

    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_00F_5BDB

    ld h, c
    ld a, c
    jr nz, jr_00F_5BDC

    ld l, a
    rst $38
    ld h, a
    ld l, a
    ccf
    ccf
    jr nz, jr_00F_5BC9

    ld c, a
    ld d, l
    jr nz, jr_00F_5BC1

    ld d, l
    ld d, e
    ld d, h
    cp $44
    ld b, l
    ld b, e
    ld c, c
    ld b, h
    ld b, l
    ld hl, $FDFE
    and c
    sbc e
    add hl, bc
    sub [hl]
    ld d, a
    ld e, e
    ld bc, $2245
    ld [de], a
    or [hl]
    ld b, [hl]
    and b
    ld [$B397], sp
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

jr_00F_5B9F:
    inc d
    ld l, b
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$0549], a
    nop
    ld hl, sp+$4A
    ld [$7E15], sp
    jp nc, $0F00

    ld [bc], a
    ld e, h
    add hl, de
    add sp, $46
    dec b

jr_00F_5BC1:
    ld [bc], a
    ld hl, sp+$4A
    ld b, $18
    sub $D2
    nop

jr_00F_5BC9:
    rrca
    ld b, a
    ld e, h
    rrca
    ret z

    ld h, e
    dec b
    inc bc
    ld hl, sp+$4A
    ld b, $10
    and $D1
    jr nc, jr_00F_5BE8

    ld h, h
    ld e, h

jr_00F_5BDB:
    add hl, de

jr_00F_5BDC:
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_5BEE

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    ld c, b

jr_00F_5BE8:
    dec c
    ret nz

    ld h, d
    nop
    add e
    nop

jr_00F_5BEE:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld d, $14
    adc l
    ld e, h
    stop
    nop
    inc d
    ld c, l
    ld e, h
    jr nc, jr_00F_5C0E

jr_00F_5C0E:
    ld bc, $6D14
    ld e, h
    jr @+$01

    nop
    inc d
    xor e
    ld e, l
    nop
    nop
    nop
    nop
    ld e, [hl]
    rrca
    add c
    ld e, h
    ld h, l
    ld [bc], a
    dec d
    inc d
    ld c, l
    ld e, h
    db $10
    inc d
    ld l, l
    ld e, h
    ld h, $14
    inc hl
    ld e, h
    db $10
    inc d
    sub a
    ld e, l
    nop
    nop
    ld h, e
    ld bc, $1415
    ld b, d
    ld e, e
    ld h, h
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    ld c, $E8
    ld d, [hl]
    dec d
    dec d
    ld h, h
    ld a, b
    ld b, b
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld h, l
    ld bc, $1514
    ld e, d
    ld a, b
    ld e, [hl]
    rrca
    db $EB
    ld e, h
    ld h, e
    ld bc, $1515
    ret nc

    ld [hl], a
    ld h, h
    nop
    ld b, l
    dec d
    inc de
    ld e, l
    ld a, c
    inc b
    inc d
    xor e
    ld e, l
    nop
    nop
    ld h, l
    ld [bc], a
    ld b, e
    jr nc, jr_00F_5C88

    inc de
    ld de, $3979
    nop
    ld e, c
    ld bc, $1315
    db $EB
    ld a, b
    inc a
    nop
    ld b, l
    and d
    jr z, jr_00F_5CC7

    and [hl]
    ld c, b
    ld l, a
    ld [hl], a

jr_00F_5C88:
    jr nz, jr_00F_5D01

    ld h, c
    ld [hl], e
    jr nz, jr_00F_5CF7

    ld [hl], h
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00F_5D0D

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00F_5CE8

    daa
    ld l, l
    rst $38
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_5D1D

    ld l, a
    jr nz, jr_00F_5D0E

    ld h, l
    jr nz, @+$79

    ld h, l
    ld [hl], h
    cp $66
    ld l, a
    ld [hl], d
    jr nz, jr_00F_5D2E

    ld h, l
    ld h, l
    ld l, e
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    jr z, jr_00F_5D04

    and [hl]
    ld c, c
    ld l, [hl]
    jr nz, jr_00F_5D3A

    ld l, b

jr_00F_5CC7:
    ld h, c
    ld [hl], h
    jr nz, jr_00F_5D2E

    ld h, c
    ld [hl], e
    ld h, l
    inc l
    rst $38
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_00F_5CFC

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_5D3C

    ld l, [hl]
    cp $41
    ld c, c
    ld d, d
    jr nz, @+$46

    ld d, d
    ld e, c
    ld hl, $FDFE
    and c

jr_00F_5CE8:
    ld e, e
    ld bc, $A245
    jr z, jr_00F_5D31

    and [hl]
    dec l
    ld d, a
    ld c, b
    ld c, c
    ld d, e
    ld d, h
    ld c, h
    ld b, l

jr_00F_5CF7:
    dec l
    cp $FD
    and c
    ld e, e

jr_00F_5CFC:
    ld [bc], a
    ld b, l
    ld [hl+], a
    ld [de], a
    or e

jr_00F_5D01:
    inc [hl]
    and c
    inc b

jr_00F_5D04:
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop

jr_00F_5D0D:
    or e

jr_00F_5D0E:
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    push de
    ld d, d
    inc de
    ld h, a
    call Call_00F_6B49

jr_00F_5D1D:
    ld b, c
    ld c, a
    ld a, [hl+]
    xor d
    ld e, c
    dec l
    ld l, h
    ld [$6F49], a
    rra
    ld c, d
    dec b
    nop
    ld hl, sp+$4A
    nop

jr_00F_5D2E:
    inc c
    ld l, b
    pop de

jr_00F_5D31:
    nop
    rrca
    ld h, l
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_00F_5D3A:
    adc a
    ld l, [hl]

jr_00F_5D3C:
    ld bc, $4B0B
    pop de
    nop
    rrca
    sub e
    ld e, l
    rrca
    ret z

    ld h, e
    dec b
    inc bc
    ld hl, sp+$4A
    rlca
    ld a, [bc]
    inc sp
    pop de
    jr nc, jr_00F_5D60

    pop bc
    ld e, [hl]
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    inc b
    ld hl, sp+$4A
    ld [$520B], sp
    pop de
    ld h, b
    rrca

jr_00F_5D60:
    ld [de], a
    ld e, a
    add hl, de
    rst $20
    ld b, [hl]
    ld l, [hl]
    jr nc, jr_00F_5D75

    ldh [rBGP], a
    nop
    add e
    nop
    ld l, [hl]
    jr nc, jr_00F_5D7D

    ret nc

    ld b, e
    nop
    add b
    nop

jr_00F_5D75:
    ld l, [hl]
    inc h
    dec c
    ldh [rWY], a
    nop
    add [hl]
    nop

jr_00F_5D7D:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    add [hl]
    ld [hl], e
    rrca
    rst $38
    ld a, a
    or e
    daa
    and d
    dec b
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld [hl], $00
    ld e, l
    rrca
    sbc l
    ld e, a
    dec d
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld e, [hl]
    rrca
    and e
    ld e, a
    ld h, l
    ld bc, $0F5E
    jp $155F


    dec d
    ld a, [bc]
    ld a, b
    db $10
    dec d
    and b
    ld a, b
    dec b
    dec d
    ld a, b
    ld a, b
    dec b
    dec d
    adc h
    ld a, b
    dec b
    dec d
    and b
    ld a, b
    dec b
    dec d
    ld a, b
    ld a, b
    dec b
    dec d
    adc h
    ld a, b
    dec b
    dec d
    and b
    ld a, b
    dec b
    dec d
    ld a, b
    ld a, b
    dec b
    dec d
    adc h
    ld a, b
    dec b
    dec d
    and b
    ld a, b
    dec b
    dec d
    ld a, b
    ld a, b
    dec b
    dec d
    adc h
    ld a, b
    dec b
    nop
    ld h, l
    ld [bc], a
    ld e, [hl]
    rrca
    db $E4
    ld e, a
    ld h, l
    inc bc
    ld e, c
    ld bc, $1443
    dec d
    dec d
    and b
    ld a, b
    inc d
    dec d
    ld h, h
    ld a, b
    nop
    nop
    ld h, l
    inc b
    ld b, e
    ld [$1514], sp
    sub [hl]
    ld a, b
    ld b, e
    inc b
    ld h, l
    dec b
    ld b, e
    inc b
    inc d
    dec d
    and b
    ld a, b
    ld h, l
    ld b, $43
    inc b
    inc d
    dec d
    sub [hl]
    ld a, b
    ld h, e
    inc bc
    dec d
    dec d
    adc h
    ld a, b
    jr nz, jr_00F_5E30

    and b
    ld a, b
    jr nz, @+$17

    ld a, b
    ld a, b
    jr nz, @+$17

    ld a, [bc]
    ld a, b
    inc e
    dec d
    ld [$0877], a
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld h, e

jr_00F_5E30:
    inc b
    dec d
    dec d
    jp c, $0477

    dec d
    ld a, [$0C77]
    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld h, e
    dec b
    dec d
    dec d
    add d
    ld a, b
    jr nz, jr_00F_5E5C

    sub [hl]
    ld a, b
    jr nz, jr_00F_5E60

    ld l, [hl]
    ld a, b
    ld [$5900], sp
    ld b, $43
    jr nz, jr_00F_5E69

    dec d
    ld a, [bc]
    ld a, b
    jr jr_00F_5E6E

    ld h, h
    ld a, b
    nop

jr_00F_5E5C:
    nop
    dec c
    nop
    nop

jr_00F_5E60:
    nop
    nop
    ld [$458E], sp
    dec d
    inc d
    sbc l
    ld e, h

jr_00F_5E69:
    ld b, [hl]
    inc d
    or l
    ld e, l
    nop

jr_00F_5E6E:
    nop
    ld h, e
    ld [bc], a
    dec d
    inc d
    db $DD
    ld e, l
    ld b, $14
    ret


    ld e, l
    ld b, $14
    db $DD
    ld e, l
    nop
    nop
    ld e, [hl]
    rrca
    ld d, [hl]
    ld h, b
    ld h, l
    dec b
    ld e, [hl]
    rrca
    ld a, $61
    inc d
    inc d
    or l
    ld e, l
    ld h, l
    ld b, $5E
    rrca
    add [hl]
    ld h, c
    ld h, l
    rlca
    ld e, c
    inc bc
    ld h, e
    rlca
    inc d
    inc d
    db $DD
    ld e, l
    ld h, l
    dec c
    dec d
    inc d
    inc sp
    ld e, h
    ld [$B514], sp
    ld e, l
    jr jr_00F_5EA9

jr_00F_5EA9:
    ld e, a
    nop
    ld [bc], a
    ld h, e
    ld b, $15
    inc d
    ret


    ld e, l
    ld [$A114], sp
    ld e, l
    ld [$BF14], sp
    ld e, l
    ld [$AB14], sp
    ld e, l
    nop
    nop
    ld b, l
    inc d
    inc de
    ld a, a
    ld h, b
    ld b, e
    jr nc, @+$16

    inc de
    ld b, e
    ld h, b
    ld b, e
    inc b
    inc d
    inc de
    ld [hl], l
    ld h, b
    ld h, e
    inc bc
    dec d
    inc de
    ld c, l
    ld h, b
    jr nz, jr_00F_5EEC

    ld b, e
    ld h, b
    jr nz, jr_00F_5EF0

    ld [hl], l
    ld h, b
    jr nz, @+$15

    jp hl


    ld e, a
    db $10
    inc de
    ret


    ld e, a
    db $10
    inc de
    ld b, e
    ld h, b
    nop

jr_00F_5EEC:
    nop
    ld h, e
    inc b
    dec d

jr_00F_5EF0:
    inc de
    cp c
    ld e, a
    ld [$D913], sp
    ld e, a
    jr z, jr_00F_5F0C

    ld [hl], l
    ld h, b
    nop
    nop
    ld h, e
    ld b, $15
    inc de
    reti


    ld e, a
    jr nz, jr_00F_5F05

jr_00F_5F05:
    ld c, e
    dec d
    inc de
    ret


    ld e, a
    db $10
    inc de

jr_00F_5F0C:
    reti


    ld e, a
    ld b, b
    nop
    add hl, de
    ld b, l
    inc d
    inc de
    xor $57
    ld b, e
    inc a
    inc d
    inc de
    jp c, $6357

    ld bc, $1315
    ld d, [hl]
    ld d, a
    db $10
    inc de
    ld h, [hl]
    ld d, a
    ld a, [de]
    inc de
    jp c, $0057

    nop
    ld e, [hl]
    rrca
    dec de
    ld h, b
    ld h, l
    inc b
    ld b, e
    inc h
    ld e, c
    ld [bc], a
    ld h, e
    inc bc
    dec d
    inc de
    add $57
    jr nz, jr_00F_5F51

    xor $57
    jr nz, @+$15

    add $57
    jr nz, jr_00F_5F59

    halt
    ld d, a
    jr nz, jr_00F_5F5D

    xor $57
    nop
    nop
    ld e, [hl]
    rrca
    or a

jr_00F_5F51:
    ld h, c
    ld h, l
    ld [$0F5E], sp
    ldh a, [$61]
    ld h, l

jr_00F_5F59:
    add hl, bc
    ld e, [hl]
    rrca
    db $10

jr_00F_5F5D:
    ld h, d
    ld h, l
    ld a, [bc]
    ld e, c
    inc b
    dec d
    inc de
    ld h, [hl]
    ld d, a
    jr z, jr_00F_5F68

jr_00F_5F68:
    ld e, c
    rlca
    dec d
    inc de
    jp c, $0057

    nop
    ld e, [hl]
    rrca
    sub [hl]
    ld h, d
    ld h, l
    dec bc
    ld e, [hl]
    rrca
    cp a
    ld h, d
    ld h, l
    inc c
    ld e, [hl]
    rrca
    nop
    ld h, e
    ld h, l
    dec c
    ld e, [hl]
    rrca
    ld a, $63
    ld h, l
    ld c, $5F
    nop
    ld [bc], a
    ld e, [hl]
    rrca
    ld a, a
    ld h, e
    ld h, l
    rrca
    ld e, c
    dec b
    ld h, e
    ld b, $15
    inc de
    ld h, [hl]
    ld d, a
    ld c, b
    nop
    add hl, de
    ld b, l
    add a
    jr nz, jr_00F_5FA1

    nop

jr_00F_5FA1:
    nop
    ld b, l
    and d
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, $20
    ld c, b
    ld l, c
    jr nz, jr_00F_6025

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    rst $38
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    jr z, jr_00F_6009

    and [hl]
    ld c, b
    ld b, l
    ld e, c
    jr nz, jr_00F_600E

    ld d, d
    ld c, a
    ld d, h
    ld c, b
    ld b, l
    ld d, d
    ld hl, $FF21
    ld d, a
    ld c, b
    ld b, c
    ld d, e
    ld d, e
    ld d, l
    ld d, b
    ccf
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    inc l
    jr nz, jr_00F_6059

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], a
    ld l, c
    ld l, l
    ld l, l
    ld l, c
    ld l, [hl]
    daa
    cp $61
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    inc l
    rst $38
    ld h, h
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, c

jr_00F_6009:
    ld l, [hl]
    daa
    jr nz, jr_00F_607A

    ld h, l

jr_00F_600E:
    cp $77
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    ld l, b
    ld h, d
    and [hl]
    ld c, c
    jr nz, jr_00F_6083

    ld l, l
    jr nz, jr_00F_6066

jr_00F_6025:
    ld [hl], d
    ld l, a
    ld [hl], e
    ld h, c
    inc l
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_00F_60A2

    ld h, [hl]
    cp $4F
    ld [hl], d
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_60A9

    ld h, l
    jr nz, jr_00F_609D

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d
    sbc b
    ld b, c

jr_00F_6059:
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_00F_60C6

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38

jr_00F_6066:
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld a, c
    ld h, l
    ld h, h
    inc l
    jr nz, jr_00F_60C9

    ld h, c
    ld l, e
    ld l, c
    ld l, $FE
    ld b, l
    halt
    ld h, l
    ld [hl], d
    ld a, c

jr_00F_607A:
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_00F_60EB

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_00F_6083:
    ld [hl], e
    rst $38
    ld l, l
    ld h, l
    inc l
    jr nz, jr_00F_60EC

    ld [hl], l
    ld [hl], h
    jr nz, jr_00F_60D7

    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $6B
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00F_610F

    ld l, b
    ld h, l

jr_00F_609D:
    ld l, l
    ld l, $FF
    ld d, e
    ld l, a

jr_00F_60A2:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_00F_60A9:
    jr nz, jr_00F_6114

    ld [hl], e
    cp $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00F_6119

    ld l, c
    ld [hl], e
    ld l, b
    ld a, c
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and d
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld [hl], d

jr_00F_60C6:
    inc l
    jr nz, jr_00F_613D

jr_00F_60C9:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00F_6130

    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_613B

    ld l, c
    ld [hl], e

jr_00F_60D7:
    ld l, b
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld c, a
    ld hl, $4920
    jr nz, jr_00F_6153

    ld h, l
    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], e

jr_00F_60EB:
    ld l, a

jr_00F_60EC:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    cp $73
    ld [hl], l
    ld [hl], e
    ld [hl], b
    ld l, c
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, @+$6B

    ld [hl], e
    rst $38
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_6177

    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    ret c

    ld h, b

jr_00F_610F:
    and [hl]
    ld b, c
    ld [hl], d
    ld [hl], d
    inc l

jr_00F_6114:
    jr nz, jr_00F_618A

    ld l, b
    ld h, c
    ld [hl], h

jr_00F_6119:
    jr nz, jr_00F_617D

    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_6188

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_00F_619B

    ld l, a
    ld l, a
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]

jr_00F_6130:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $FD
    and c

jr_00F_613B:
    ld e, e
    dec b

jr_00F_613D:
    ld b, l
    and d
    ld l, b
    ld h, d
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00F_61C0

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e

jr_00F_6153:
    jr nz, @+$6C

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld a, c
    jr nz, jr_00F_61C6

    ld [hl], e
    cp $61
    ld l, h
    ld l, h
    jr nz, jr_00F_61CE

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_61CA

    jr nz, jr_00F_61DB

    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00F_61EC

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38

jr_00F_6177:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c

jr_00F_617D:
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld b, $45
    and d
    sbc b

jr_00F_6188:
    ld b, c
    and [hl]

jr_00F_618A:
    ld e, c
    ld h, l
    ld [hl], e
    ld hl, $5420
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FF21
    ld d, a

jr_00F_619B:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00F_6204

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_00F_6219

    ld l, b
    ld h, c
    ld [hl], h
    cp $4D
    ld b, l
    ld b, c
    ld c, [hl]
    ccf
    ld hl, $213F
    cp $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    ld l, b
    ld h, d
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

jr_00F_61C0:
    ld h, c
    halt
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h

jr_00F_61C6:
    rst $38
    ld [hl], h
    ld l, a
    ld l, h

jr_00F_61CA:
    ld h, h
    jr nz, @+$6A

    ld h, l

jr_00F_61CE:
    ld [hl], d
    jr nz, jr_00F_624A

    ld h, l
    ld [hl], h
    ccf
    cp $54
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_00F_61DB:
    jr nz, jr_00F_624B

    ld l, a
    ld [hl], h
    jr nz, jr_00F_6257

    ld h, l
    ld [hl], d
    ld a, c
    rst $38
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld l, $FE
    db $FD

jr_00F_61EC:
    and c
    ld e, e
    ld [$A245], sp
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld [hl], d
    inc l
    jr nz, jr_00F_6268

    ld l, a
    ld [hl], h
    jr nz, jr_00F_6264

    ld h, c
    ld l, c
    ld [hl], d
    rst $38
    ld h, c
    ld [hl], h

jr_00F_6204:
    jr nz, @+$63

    ld l, h
    ld l, h
    ld l, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    jr z, @+$45

    and [hl]
    ld d, e
    ld l, b
    ld h, l
    daa
    ld [hl], e

jr_00F_6219:
    jr nz, jr_00F_627C

    jr nz, jr_00F_6283

    ld h, l
    ld l, c
    ld [hl], e
    ld [hl], h
    ld a, c
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    jr nz, @+$5B

    ld b, l
    ld b, c
    ld hl, $4920
    cp $64
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00F_62A1

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00F_62A4

    ld h, [hl]
    rst $38
    ld [hl], e
    ld l, b
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_00F_62A8

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_00F_624A:
    ld [hl], l

jr_00F_624B:
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00F_62C6

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_62C0

jr_00F_6257:
    ld h, [hl]
    jr nz, jr_00F_62CD

    ld l, b
    ld h, l
    rst $38
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_00F_62D3

jr_00F_6264:
    ld [hl], l
    ld [hl], h
    ld l, $FE

jr_00F_6268:
    db $FD
    and c
    and d
    ld l, b
    ld h, d
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $FD
    and c
    and d
    ret c

    ld h, b
    and [hl]
    ld d, h

jr_00F_627C:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld h, h
    jr nz, jr_00F_62E5

jr_00F_6283:
    ld h, l
    rst $38
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    ld l, b
    ld h, d
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l

jr_00F_62A1:
    jr nz, jr_00F_6304

    ld [hl], d

jr_00F_62A4:
    ld h, l
    jr nz, jr_00F_6320

    ld l, a

jr_00F_62A8:
    ld [hl], l
    rst $38
    ld h, c
    jr nz, jr_00F_6314

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00F_6325

    ld [hl], a
    ld l, c
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d
    ccf
    cp $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d

jr_00F_62C0:
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    inc l

jr_00F_62C6:
    jr nz, jr_00F_6341

    ld h, l
    ld [hl], e
    ld l, $20
    ld c, c

jr_00F_62CD:
    rst $38
    ld [hl], b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h

jr_00F_62D3:
    ld l, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_00F_633A

    jr nz, jr_00F_6347

    ld l, a
    ld [hl], h
    cp $62
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_00F_6345

    ld [hl], h

jr_00F_62E5:
    jr nz, jr_00F_635B

    ld l, b
    ld h, l
    rst $38
    ld l, h
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_00F_635A

    ld l, [hl]
    cp $4E
    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc c
    ld b, l
    and d
    ld l, b
    ld h, d
    and [hl]

jr_00F_6304:
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_00F_6383

    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38

jr_00F_6314:
    ld h, d
    ld h, l
    jr nz, @+$63

    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_00F_6391

    ld l, a
    jr nz, @+$72

jr_00F_6320:
    ld h, c
    ld [hl], e
    ld [hl], e
    cp $74

jr_00F_6325:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_639E

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_6399

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38

jr_00F_6333:
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD

jr_00F_633A:
    and c
    ld e, e
    dec c
    ld b, l
    and d
    sbc b
    ld b, c

jr_00F_6341:
    and [hl]
    ld d, h
    ld h, l
    ld [hl], e

jr_00F_6345:
    ld [hl], h
    ccf

jr_00F_6347:
    jr nz, jr_00F_63A2

    ld l, a
    ld [hl], l
    jr nz, jr_00F_63C0

    ld h, c
    ld l, c
    ld h, h
    rst $38
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld hl, $5720
    ld l, b
    ld h, c

jr_00F_635A:
    ld [hl], h

jr_00F_635B:
    jr nz, jr_00F_63C6

    ld [hl], e
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_63C6

    jr nz, @+$76

    ld h, l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    ccf
    ld hl, $5420
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_63E4

    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld c, $45
    and d
    jr z, @+$45

    and [hl]

jr_00F_6383:
    ld d, l
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    rrca
    ld b, e
    jr nz, jr_00F_6333

jr_00F_6391:
    ret c

    ld h, b
    and [hl]
    ld b, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    inc l

jr_00F_6399:
    jr nz, jr_00F_63E9

    ld l, c
    ld h, e
    ld h, l

jr_00F_639E:
    jr nz, jr_00F_6414

    ld l, a
    rst $38

jr_00F_63A2:
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_00F_6421

    ld h, l
    inc l
    jr nz, jr_00F_6418

    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    rlca
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    ret


    ld e, l
    ld e, e
    db $10
    sbc e
    rrca

jr_00F_63C0:
    pop af
    ld d, [hl]
    or e
    ld sp, $00C7

jr_00F_63C6:
    ld b, l
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    rrca
    call nc, $4863
    dec d
    xor d
    ld a, b
    ld b, [hl]
    rrca
    nop
    ld [hl-], a
    and b
    inc b
    ld b, $FF
    rst $38
    rrca
    ld c, b
    ld h, h
    ld b, [hl]
    rrca
    nop
    ld [hl-], a

jr_00F_63E4:
    and b
    ld [bc], a
    ld b, $FF
    rst $38

jr_00F_63E9:
    rrca
    add a
    ld h, h
    ld b, [hl]
    rrca
    nop
    ld [hl-], a
    and b
    ld bc, $FF06
    rst $38
    rrca
    jp nc, $A264

    jr z, jr_00F_643E

    and [hl]
    ld d, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_00F_6464

    ld l, [hl]
    ld h, h
    jr nz, jr_00F_6479

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_6480

    ld h, e
    ld h, l
    ld h, c

jr_00F_6414:
    ld l, [hl]
    cp $67
    ld l, a

jr_00F_6418:
    ld h, l
    ld [hl], e
    ld l, $2E
    ld l, $20
    ld h, e
    ld h, c
    ld l, [hl]

jr_00F_6421:
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_6497

    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_00F_648D

    ld [hl], a
    ld h, c
    ld a, c
    cp $66
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00F_64AA

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l

jr_00F_643E:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ccf
    cp $FD
    ld c, b
    rrca
    dec d
    ld h, l
    and d
    jr z, jr_00F_648E

    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_64C4

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    rst $38
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_00F_64D6

    ld l, b
    ld h, l

jr_00F_6464:
    cp $67
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld l, $20
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_00F_64D9

    ld l, h
    ld l, a

jr_00F_6479:
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_00F_64E8

    ld l, [hl]

jr_00F_6480:
    ld hl, $FDFE
    ld c, b
    rrca
    dec d
    ld h, l
    and d
    jr z, jr_00F_64CD

    and [hl]
    ld d, a
    ld l, b

jr_00F_648D:
    ld l, c

jr_00F_648E:
    ld h, e
    ld l, b
    jr nz, jr_00F_6505

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b

jr_00F_6497:
    jr nz, jr_00F_6502

    ld [hl], e
    rst $38
    ld [hl], a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ccf
    jr nz, jr_00F_64E6

    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    cp $6F
    halt

jr_00F_64AA:
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_00F_6516

    ld h, c
    ld [hl], d
    ld l, h
    ld a, c
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_00F_6530

    ld l, a
    jr nz, jr_00F_6525

    ld l, c
    ld l, [hl]
    ld h, h
    cp $74

jr_00F_64C4:
    ld l, b
    ld h, l
    jr nz, @+$69

    ld l, a
    ld h, c
    ld l, h
    ld l, $FE

jr_00F_64CD:
    db $FD
    ld c, b
    rrca
    dec d
    ld h, l
    and d
    jr z, @+$45

    and [hl]

jr_00F_64D6:
    ld b, h
    ld l, a
    ld h, h

jr_00F_64D9:
    ld h, a
    ld h, l
    jr nz, jr_00F_6551

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    rst $38
    ld h, c
    ld h, d
    ld h, c
    ld [hl], c

jr_00F_64E6:
    ld [hl], l
    ld l, c

jr_00F_64E8:
    ld [hl], e
    ld [hl], h
    ld [hl], e
    inc l
    jr nz, jr_00F_6550

    ld [hl], l
    ld [hl], h
    cp $64
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00F_6560

    ld h, l
    ld [hl], e
    ld l, c
    ld [hl], h
    ld h, c
    ld [hl], h
    ld h, l
    rst $38
    ld l, a
    ld [hl], d

jr_00F_6502:
    jr nz, jr_00F_657D

    ld l, a

jr_00F_6505:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    cp $73
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld hl, $FDFE
    ld c, b
    rrca
    dec d
    ld h, l
    and c

jr_00F_6516:
    ld e, e
    ld bc, $4845
    rla
    and b
    ld b, b
    ld c, b
    rla
    and [hl]
    ld b, b
    ld c, b
    rla
    xor h
    ld b, b

jr_00F_6525:
    ld c, b
    rla
    or d
    ld b, b
    ld c, b
    rla
    cp b
    ld b, b
    ld bc, $1911

jr_00F_6530:
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld bc, $1911
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_65BD

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_00F_65BA

    ld l, a
    ld l, a

jr_00F_6550:
    ld l, e

jr_00F_6551:
    ld [hl], e
    rst $38
    ld [hl], b

Call_00F_6554:
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, jr_00F_65BD

    ld h, c
    ld [hl], d
    ld h, l
    cp $77

jr_00F_6560:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_00F_65CD

    ld h, c
    ld [hl], d
    ld h, h
    ld l, h
    ld a, c
    jr nz, jr_00F_65CD

    ld l, [hl]
    ld a, c
    cp $6C
    ld h, l
    ld h, c
    halt
    ld h, l
    ld [hl], e
    jr nz, jr_00F_65EB

    ld l, a
    jr nz, jr_00F_65DD

    ld l, a
    halt
    ld h, l

jr_00F_657D:
    ld [hl], d
    rst $38
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_00F_65F8

    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld l, $FE
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00F_6613

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_00F_6611

    ld [hl], l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_00F_6620

    ld l, b
    ld h, l
    jr nz, jr_00F_6617

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, h
    ld h, c
    ld h, h
    cp $6F
    ld h, [hl]

jr_00F_65BA:
    jr nz, @+$63

    ld l, h

jr_00F_65BD:
    ld l, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00F_6637

    ld l, b
    ld h, l
    jr nz, @+$01

    ld c, a
    ld [hl], d
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l

jr_00F_65CD:
    jr nz, jr_00F_6643

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e

jr_00F_65DD:
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_6654

    ld l, a
    ld l, a
    ld l, e

jr_00F_65EB:
    ld [hl], e
    jr nz, jr_00F_665A

    ld l, c
    ld l, e
    ld h, l
    rst $38
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_00F_65F8:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_6665

    ld [hl], l
    ld h, a
    ld h, l
    cp $73
    ld [hl], h
    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_00F_667E

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$01

    ld [hl], h
    ld [hl], d

jr_00F_6611:
    ld h, l
    ld h, l

jr_00F_6613:
    jr nz, jr_00F_667E

    ld l, [hl]
    ld [hl], h

jr_00F_6617:
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l

jr_00F_661C:
    jr nz, jr_00F_661C

    ld h, a
    ld [hl], d

jr_00F_6620:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l

jr_00F_6637:
    ld l, h
    ld l, h
    ld l, a
    inc l
    jr nz, jr_00F_66B1

    ld [hl], d
    ld h, l
    ld h, l
    ld l, $FE
    db $FD

jr_00F_6643:
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc bc
    rrca
    ld e, e

jr_00F_6654:
    ld h, [hl]
    rrca
    and l
    ld h, [hl]
    rrca
    rst $28

jr_00F_665A:
    ld h, [hl]
    and [hl]
    ld c, c
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_00F_66D3

jr_00F_6665:
    ld l, a
    ld [hl], h
    jr nz, @+$01

    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00F_66E3

    ld l, b
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $74
    ld l, a
    jr nz, @+$66

    ld h, c
    ld [hl], e

jr_00F_667E:
    ld l, b
    jr nz, jr_00F_66EE

    ld h, l
    jr nz, @+$77

    ld [hl], b
    rst $38
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    cp $73
    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    jr nz, jr_00F_670D

    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    ld hl, $FDFE
    ld c, c
    ld b, b
    ld h, a
    and [hl]
    ld c, c
    jr nz, jr_00F_6711

    ld h, c
    halt
    ld h, l
    jr nz, jr_00F_670F

    ld l, h
    ld [hl], a
    ld h, c

jr_00F_66B1:
    ld a, c
    ld [hl], e
    rst $38
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_00F_6730

    ld l, a
    jr nz, jr_00F_6733

    ld [hl], d
    ld a, c

jr_00F_66C1:
    jr nz, jr_00F_66C1

    ld h, e
    ld l, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_00F_672E

    ld l, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FF
    ld l, $2E

jr_00F_66D3:
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00F_674F

    ld l, a
    ld [hl], h

jr_00F_66E3:
    jr nz, jr_00F_6759

    ld l, a
    ld h, h
    ld h, c
    ld a, c
    ld hl, $FDFE
    ld c, c
    ld b, b

jr_00F_66EE:
    ld h, a
    and [hl]
    ld c, c
    jr nz, jr_00F_676A

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_00F_6763

    ld h, [hl]
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6F

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_00F_676C

    ld h, l

jr_00F_670B:
    jr nz, jr_00F_670B

jr_00F_670D:
    ld [hl], e
    ld l, a

jr_00F_670F:
    ld l, l
    ld h, l

jr_00F_6711:
    jr nz, jr_00F_677A

    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$01

    ld [hl], e
    ld l, e
    ld l, c
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_6795

    ld [hl], h
    ld l, a
    ld l, [hl]
    ld h, l
    ld [hl], e
    cp $68
    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]

jr_00F_672E:
    jr nz, jr_00F_6799

jr_00F_6730:
    ld l, [hl]
    jr nz, jr_00F_67A7

jr_00F_6733:
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    ccf
    cp $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc b

jr_00F_674F:
    rrca
    ld e, e
    ld h, a
    rrca
    adc d
    ld h, a
    rrca
    ldh a, [$67]
    rrca

jr_00F_6759:
    dec de
    ld l, b
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_00F_67D6

    ld l, b

jr_00F_6763:
    ld h, l
    jr nz, jr_00F_67DD

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d

jr_00F_676A:
    rst $38
    ld [hl], e

jr_00F_676C:
    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$76

    ld l, a
    jr nz, jr_00F_67DC

    ld l, a

jr_00F_6776:
    jr nz, jr_00F_6776

    ld h, h
    ld l, a

jr_00F_677A:
    ld [hl], a
    ld l, [hl]
    jr nz, jr_00F_67E4

    ld l, a
    ld [hl], d
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld hl, $FDFE
    ld c, c
    ld [hl], d
    ld l, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_67F3

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_00F_6795:
    ld [hl], h
    ld [hl], e
    jr nz, @+$01

jr_00F_6799:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00F_680B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_67C4

    cp $72
    ld h, l

jr_00F_67A7:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_00F_6820

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld l, $FF
    ld c, c
    daa
    ld h, h
    jr nz, jr_00F_681B

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$64

    ld h, l

jr_00F_67C1:
    jr nz, jr_00F_67C1

    ld h, e

jr_00F_67C4:
    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_00F_683A

    ld l, a
    ld [hl], h
    jr nz, jr_00F_6844

    ld l, a
    rst $38
    ld [hl], e
    ld l, h
    ld l, c
    ld [hl], b

jr_00F_67D6:
    jr nz, jr_00F_6839

    ld l, [hl]
    ld h, h
    jr nz, jr_00F_6843

jr_00F_67DC:
    ld h, l

jr_00F_67DD:
    ld [hl], h

jr_00F_67DE:
    jr nz, jr_00F_67DE

    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], b

jr_00F_67E4:
    ld [hl], h
    jr nz, jr_00F_6848

    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $FDFE
    ld c, c
    ld [hl], d
    ld l, b
    and [hl]
    ld c, l
    ld a, c

jr_00F_67F3:
    jr nz, jr_00F_6867

    ld h, l
    ld h, [hl]
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$01

    ld l, c
    ld [hl], e
    jr nz, jr_00F_6871

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_6871

jr_00F_680B:
    ld h, c
    ld h, e
    ld h, l
    ld [hl], e
    cp $61
    ld [hl], h
    jr nz, jr_00F_6881

    ld h, l
    ld hl, $FDFE
    ld c, c
    ld [hl], d
    ld l, b

jr_00F_681B:
    and [hl]
    ld b, d
    ld [hl], d
    ld [hl], d
    ld [hl], d

jr_00F_6820:
    ld [hl], d
    ld l, $2E
    ld l, $2E
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$01

    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_00F_6899

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e

jr_00F_6837:
    jr nz, jr_00F_6837

jr_00F_6839:
    ld h, l

jr_00F_683A:
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_00F_68A2

    ld l, a
    ld l, h
    ld h, h
    ld h, l

jr_00F_6843:
    ld [hl], d

jr_00F_6844:
    jr nz, @+$01

    ld [hl], h
    ld l, b

jr_00F_6848:
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_68C0

    ld l, b
    ld h, l
    jr nz, jr_00F_68B6

    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld h, h
    cp $77
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_00F_68BE

    ld [hl], h
    jr nz, jr_00F_68D4

    ld l, b
    ld h, l
    rst $38
    ld c, [hl]
    ld h, c
    ld [hl], d
    ld l, a

jr_00F_6867:
    ld l, a
    ld l, l
    jr nz, jr_00F_68B7

    ld h, c
    ld l, e
    ld h, l
    ld hl, $FE21

jr_00F_6871:
    db $FD
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, e

jr_00F_6881:
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_00F_68F3

    ld h, l
    jr nz, jr_00F_68EA

    ld [hl], a
    ld h, c
    ld a, c
    rst $38
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00F_6907

    ld l, b
    ld h, c
    ld [hl], h

jr_00F_6896:
    jr nz, jr_00F_6896

    ld [hl], e

jr_00F_6899:
    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    inc l
    jr nz, @+$70

    ld h, c
    ld [hl], e

jr_00F_68A2:
    ld [hl], h
    ld a, c
    inc l
    rst $38
    ld l, b
    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00F_6912

    ld l, a
    ld [hl], d
    ld h, c
    ld l, h
    ld hl, $FE21

jr_00F_68B6:
    db $FD

jr_00F_68B7:
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]

jr_00F_68BE:
    rrca
    nop

jr_00F_68C0:
    ld [hl-], a
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]
    add e
    add hl, sp
    pop de
    ld b, $03
    add hl, sp
    pop de
    ld a, [bc]
    dec c
    ld b, l
    ld b, [hl]
    rrca

jr_00F_68D4:
    nop
    ld [hl-], a
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    cp b
    pop de
    inc bc
    ld b, $B8
    pop de
    ld c, $14
    ld b, l
    ld b, [hl]
    rrca
    nop

jr_00F_68EA:
    ld [hl-], a
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00F_68F3:
    add e
    jp nc, $0607

    add e
    jp nc, $0D15

    ld b, l
    ld b, [hl]
    rrca
    nop
    ld [hl-], a
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]

jr_00F_6907:
    add e
    or l
    jp nc, $0406

    or l
    jp nc, $0317

    ld b, l
    ld b, [hl]

jr_00F_6912:
    rrca
    nop
    ld [hl-], a
    and b
    jr nz, jr_00F_691D

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00F_691D:
    adc l
    ret nc

    inc bc
    ld [$D08D], sp
    inc b
    dec d
    ld b, l
    ld b, l
    ld [hl+], a
    dec de
    ld c, b
    rrca
    pop de
    ld l, c
    ld [hl+], a
    dec de
    ld c, b
    rrca
    ld h, a
    ld l, l
    ld [hl+], a
    dec de
    ld c, b
    rrca
    ld [$2271], sp
    dec de
    ld c, b
    rrca
    bit 6, h
    ld [hl+], a
    dec de
    ld c, b
    rrca
    ld e, b
    ld a, d
    or [hl]
    inc [hl]
    and b
    ld bc, $0B01
    inc c
    ld c, b
    rrca
    sbc h
    ld b, c
    or [hl]
    inc [hl]
    and b
    ld [bc], a
    ld bc, $0314
    ld c, b
    rrca
    sbc h
    ld b, c
    or [hl]
    inc [hl]
    and b
    inc b
    ld bc, $0B17
    ld c, b
    rrca
    sbc h
    ld b, c
    ld b, [hl]
    nop
    inc [hl]
    and b
    ld [$790F], sp
    ld l, c
    or [hl]
    inc [hl]
    and b
    ld [$1F01], sp
    inc de
    ld c, b
    rrca
    add hl, bc
    ld b, e
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    inc b
    rrca
    adc [hl]
    ld l, c
    ld b, [hl]
    rrca
    nop
    ld c, d
    and b
    ld bc, $0005
    rrca
    rra
    ld b, l
    or [hl]
    inc [hl]
    and b
    jr nz, @+$48

    rrca
    nop
    inc [hl]
    and b
    ld [$0005], sp
    rrca
    xor b
    ld l, c
    or [hl]
    inc [hl]
    and b
    ld [$1F01], sp
    inc de
    ld c, b
    rrca
    sbc h
    ld b, c
    or [hl]
    inc [hl]
    and b
    ld [$1F01], sp
    inc de
    ld c, b
    rrca
    add hl, bc
    ld b, e
    ld bc, $131F
    ld c, b
    rrca
    sbc h
    ld b, c
    ld b, [hl]
    nop
    inc [hl]
    and b
    db $10
    rrca
    jp z, $B669

    inc [hl]
    and b
    db $10
    ld c, b
    rrca
    call nz, HeaderNewLicenseeCode
    inc h
    ld bc, $0F48
    dec de
    ld b, d
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
    rst $00
    ld d, c
    inc de
    ld h, a
    adc c
    ld c, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $1F01
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
    inc bc
    rlca
    push de
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    inc bc
    add a
    ld h, a
    rlca
    ld b, $BB
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    inc b
    add a
    ld h, a
    ld [$2601], sp
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    dec b
    add a
    ld h, a
    dec c
    ld [bc], a
    ld c, c
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    ld b, $87
    ld h, a
    db $10
    dec b
    and [hl]
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    rlca
    add a
    ld h, a
    ld de, $0108
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    ld [$6787], sp
    ld d, $04
    adc [hl]
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    add hl, bc
    add a
    ld h, a
    jr jr_00F_6A6C

    xor [hl]
    ret nc

    nop
    add hl, de
    rst $20

jr_00F_6A6C:
    ld b, [hl]
    rrca
    inc l
    ld l, e
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    ld bc, $D307
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    dec b
    dec bc
    pop hl
    ld [hl], b
    dec b
    inc b
    ld a, l
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    inc b
    ld [bc], a
    ld b, b
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    dec b
    inc de
    pop hl
    ld [hl], b
    inc c
    inc bc
    ld h, [hl]
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    dec b
    inc d
    pop hl
    ld [hl], b
    dec d
    dec b
    xor e
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    dec b
    dec d
    pop hl
    ld [hl], b
    inc d
    inc bc
    ld l, [hl]
    ret nc

    nop
    rrca
    sbc h
    ld l, e
    rrca
    xor [hl]
    ld l, e
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00F_6B12

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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    rrca
    inc bc
    ld l, e
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

jr_00F_6B12:
    ld b, c
    and [hl]
    jr nz, jr_00F_6B68

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00F_6B64

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rrca
    jp $0F6B


    ld c, c
    ld l, c
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
    rrca
    ld e, h
    ld l, e
    ld c, [hl]
    ld bc, $C9D8
    rrca
    nop
    nop

Call_00F_6B49:
    ld l, h
    ld l, e
    rrca
    ld bc, $7800
    ld l, e
    rrca
    ld [bc], a
    nop
    add h
    ld l, e
    rrca
    inc bc
    nop
    sub b
    ld l, e
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00F_6B62

jr_00F_6B62:
    ld c, b
    rrca

jr_00F_6B64:
    jp $0C6B


    nop

jr_00F_6B68:
    ld c, b
    rrca
    jp $156B


    ld de, $74CF
    jr nz, jr_00F_6B72

jr_00F_6B72:
    inc c
    nop
    ld c, b
    rrca
    jp $156B


    ld de, $7498
    jr nz, jr_00F_6B7E

jr_00F_6B7E:
    inc c
    nop
    ld c, b
    rrca
    jp $156B


    ld de, $74A2
    jr nz, jr_00F_6B8A

jr_00F_6B8A:
    inc c
    nop
    ld c, b
    rrca
    jp $156B


    ld de, $748E
    jr nz, jr_00F_6B96

jr_00F_6B96:
    inc c
    nop
    ld c, b
    rrca
    jp $1A6B


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
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rrca
    cp c
    ld l, e
    ld b, l
    or e
    ld sp, $01C7
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
    jr nz, jr_00F_6C4D

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0F
    add sp, $6B
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F48
    push de
    ld l, c
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
    jr nz, jr_00F_6C60

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_6C69

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rrca
    ld b, a
    ld l, h
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_6C90

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_6C9A

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00F_6C88

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
    inc [hl]
    and b
    ld bc, $0005
    rrca
    add e
    ld l, h
    and c
    xor l
    ld e, c
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld b, l
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_6CC0

    ld l, a

jr_00F_6C4D:
    ld l, a
    ld l, e
    jr nz, jr_00F_6CCA

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_6CCE

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_6C91

    dec [hl]

jr_00F_6C60:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_6C69:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    ld bc, $0005
    rrca
    add e
    ld l, h
    and c
    xor l
    ld e, c
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld b, l
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_6C88:
    ld bc, $A159
    rrca
    ld [bc], a
    ld l, l
    sbc a
    ld e, c

jr_00F_6C90:
    and c

jr_00F_6C91:
    ld b, [hl]
    rrca
    ld bc, $A159
    dec b
    ld bc, $C80F

jr_00F_6C9A:
    ld l, h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_6D04

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
    jr nz, jr_00F_6D01

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_6D1D

    ld [hl], e
    cp $FC
    jr nz, jr_00F_6D1A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_6CC0:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    ld b, l
    ld l, c
    and [hl]
    ld d, h

jr_00F_6CCA:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_6CCE:
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
    jr nz, jr_00F_6D2E

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_6D5C

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
    rrca
    ld b, l

jr_00F_6D01:
    ld l, c
    sbc a
    ld e, c

jr_00F_6D04:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_6D71

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_6D80

    ld h, c
    halt

jr_00F_6D1A:
    ld h, l
    jr nz, jr_00F_6D90

jr_00F_6D1D:
    ld h, l
    ld [hl], h
    jr nz, jr_00F_6D82

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_6D7F

    ld h, e
    ld l, a

jr_00F_6D2E:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_6DA7

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
    jr nz, jr_00F_6D98

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_6DC2

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00F_6DB2

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

jr_00F_6D5C:
    xor l
    ld e, c
    and c
    ld bc, $A132
    and c
    ld c, b
    rrca
    ld b, l
    ld l, c
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00F_6D71:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    sub $51
    inc de
    ld h, a
    adc [hl]
    ld c, b

jr_00F_6D7F:
    dec b

jr_00F_6D80:
    nop
    inc [hl]

jr_00F_6D82:
    ld h, e
    ld bc, $1001
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a

jr_00F_6D90:
    add a
    ld h, a
    inc b
    dec b
    ld c, a
    ret nc

    nop
    add hl, de

jr_00F_6D98:
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    inc bc
    add a
    ld h, a
    dec b
    ld a, [bc]
    sbc e
    ret nc

    nop
    add hl, de

jr_00F_6DA7:
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    inc b
    add a
    ld h, a
    dec b
    ld a, [bc]

jr_00F_6DB2:
    sbc e
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    dec b
    add a
    ld h, a
    add hl, bc
    add hl, bc
    sub b

jr_00F_6DC2:
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    ld b, $87
    ld h, a
    ld a, [bc]
    dec b
    ld d, l
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    ld [$6787], sp
    dec bc
    inc c
    cp a
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld [hl], a
    ld l, [hl]
    dec b
    rlca
    pop hl
    ld [hl], b
    rlca
    inc bc
    inc [hl]
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld bc, $7908
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    ld bc, $8809
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    dec b
    dec bc
    pop hl
    ld [hl], b
    ld bc, $970A
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    dec b
    inc c
    pop hl
    ld [hl], b
    ld bc, $6A07
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    dec b
    dec c
    pop hl
    ld [hl], b
    ld bc, $5B06
    ret nc

    nop
    rrca
    rst $20
    ld l, [hl]
    rrca
    ld sp, hl
    ld l, [hl]
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00F_6E8A

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
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    dec c
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    rrca
    ld [de], a
    ld l, a
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

jr_00F_6E8A:
    rrca
    and a
    ld l, [hl]
    ld c, [hl]
    ld bc, $C9D8
    rrca
    nop
    nop
    or a
    ld l, [hl]
    rrca
    ld bc, $C300
    ld l, [hl]
    rrca
    ld [bc], a
    nop
    rst $08
    ld l, [hl]
    rrca
    inc bc
    nop
    db $DB
    ld l, [hl]
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00F_6EAD

jr_00F_6EAD:
    ld c, b
    rrca
    ld c, $6F
    inc c
    nop
    ld c, b
    rrca
    ld c, $6F
    dec d
    ld de, $74CF
    jr nz, jr_00F_6EBD

jr_00F_6EBD:
    inc c
    nop
    ld c, b
    rrca
    ld c, $6F
    dec d
    ld de, $7498
    jr nz, jr_00F_6EC9

jr_00F_6EC9:
    inc c
    nop
    ld c, b
    rrca
    ld c, $6F
    dec d
    ld de, $74A2
    jr nz, jr_00F_6ED5

jr_00F_6ED5:
    inc c
    nop
    ld c, b
    rrca
    ld c, $6F
    dec d
    ld de, $748E
    jr nz, jr_00F_6EE1

jr_00F_6EE1:
    inc c
    nop
    ld c, b
    rrca
    ld c, $6F
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
    ld c, e
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rrca
    inc b
    ld l, a
    ld b, l
    or e
    ld sp, $01C7
    inc d
    inc d
    push hl
    ld h, b
    ld b, e
    db $10
    ld c, b
    rrca
    dec sp
    ld l, a
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
    jr nz, jr_00F_6F77

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00F_6F73

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rrca
    dec sp
    ld l, a
    rrca
    ld d, h
    ld l, c
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
    jr nz, jr_00F_6FC5

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0F
    ld h, b
    ld l, a
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F48
    ld l, e
    ld l, l
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
    ld a, e

jr_00F_6F73:
    ld d, d
    inc de
    ld h, a
    or [hl]

jr_00F_6F77:
    ld c, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld de, $F118
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
    rrca
    ld [de], a
    ld l, a
    add [hl]
    sbc b
    ld b, l
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_7002

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_700B

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rrca
    jp hl


    ld l, a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7032

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_703C

    ld l, a
    ld [hl], l

jr_00F_6FC5:
    rst $38
    db $FC
    jr nz, jr_00F_702A

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
    inc [hl]
    and b
    ld [bc], a
    dec b
    nop
    rrca
    dec h
    ld [hl], b
    and c
    xor l
    ld e, d
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld d, b
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7062

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_706C

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7070

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_7033

    dec [hl]

jr_00F_7002:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_700B:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    ld [bc], a
    dec b
    nop
    rrca
    dec h
    ld [hl], b
    and c
    xor l
    ld e, d
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld d, b
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_702A:
    ld bc, $A15A
    rrca
    and h
    ld [hl], b
    sbc a
    ld e, d

jr_00F_7032:
    and c

jr_00F_7033:
    ld b, [hl]
    rrca
    ld bc, $A15A
    dec b
    ld bc, $6A0F

jr_00F_703C:
    ld [hl], b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_70A6

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
    jr nz, jr_00F_70A3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_70BF

    ld [hl], e
    cp $FC
    jr nz, jr_00F_70BC

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_7062:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    ld d, b
    ld l, c
    and [hl]
    ld d, h

jr_00F_706C:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_7070:
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
    jr nz, jr_00F_70D0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_70FE

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
    rrca
    ld d, b

jr_00F_70A3:
    ld l, c
    sbc a
    ld e, d

jr_00F_70A6:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_7113

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_7122

    ld h, c
    halt

jr_00F_70BC:
    ld h, l
    jr nz, jr_00F_7132

jr_00F_70BF:
    ld h, l
    ld [hl], h
    jr nz, jr_00F_7124

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00F_7111

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_7121

    ld h, e
    ld l, a

jr_00F_70D0:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_7149

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
    jr nz, jr_00F_713A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7164

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

jr_00F_70FE:
    xor l
    ld e, d
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld d, b
    ld l, c
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7

jr_00F_7111:
    or e
    inc sp

jr_00F_7113:
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    push hl
    ld d, c
    inc de
    ld h, a
    sub e
    ld c, b
    dec b

jr_00F_7121:
    nop

jr_00F_7122:
    inc [hl]
    ld h, e

jr_00F_7124:
    jr jr_00F_7127

    ld [hl-], a

jr_00F_7127:
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

jr_00F_7132:
    ld h, a
    ld de, $5F03
    ret nc

    nop
    add hl, de
    rst $20

jr_00F_713A:
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    inc bc
    add a
    ld h, a
    db $10
    ld [$D0E0], sp
    nop
    add hl, de
    rst $20

jr_00F_7149:
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    inc b
    add a
    ld h, a
    dec d
    rlca
    set 2, b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    dec b
    add a
    ld h, a
    inc d
    db $10
    or h
    pop de

jr_00F_7164:
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    ld b, $87

jr_00F_716E:
    ld h, a
    ld de, $3315

jr_00F_7172:
    jp nc, $1900

    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    rlca
    add a
    ld h, a
    ld a, [bc]
    inc bc
    ld e, b
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    ld [$6787], sp
    dec b
    ld [bc], a
    add hl, sp
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    dec b
    add hl, bc
    add a
    ld h, a
    inc b
    inc b
    ld l, h
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    db $FD
    ld [hl], c
    ld l, [hl]
    inc b
    add hl, de
    jr nc, @+$45

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
    dec bc
    ld [$090B], sp
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    or l
    jr z, jr_00F_716E

    cp $B5
    jr z, jr_00F_7172

    db $FD
    sbc e
    rrca
    ret c

    ld [hl], c
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
    jr nz, jr_00F_7239

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00F_7235

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rrca
    ld l, l
    ld [hl], d
    rrca
    ld e, a
    ld l, c
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
    rrca
    dec l
    ld [hl], d
    ld c, [hl]
    ld bc, $C9D8
    rrca
    nop
    nop
    dec a
    ld [hl], d
    rrca
    ld bc, $4900
    ld [hl], d
    rrca
    ld [bc], a
    nop
    ld d, l
    ld [hl], d
    rrca
    inc bc
    nop
    ld h, c
    ld [hl], d
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00F_7233

jr_00F_7233:
    ld c, b
    rrca

jr_00F_7235:
    ld l, l
    ld [hl], d
    inc c
    nop

jr_00F_7239:
    ld c, b
    rrca
    ld l, l
    ld [hl], d
    dec d
    ld de, $74CF
    jr nz, jr_00F_7243

jr_00F_7243:
    inc c
    nop
    ld c, b
    rrca
    ld l, l
    ld [hl], d
    dec d
    ld de, $7498
    jr nz, jr_00F_724F

jr_00F_724F:
    inc c
    nop
    ld c, b
    rrca
    ld l, l
    ld [hl], d
    dec d
    ld de, $74A2
    jr nz, jr_00F_725B

jr_00F_725B:
    inc c
    nop
    ld c, b
    rrca
    ld l, l
    ld [hl], d
    dec d
    ld de, $748E
    jr nz, jr_00F_7267

jr_00F_7267:
    inc c
    nop
    ld c, b
    rrca
    ld l, l
    ld [hl], d
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
    cp $0F
    sub d
    ld [hl], d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F48
    inc c
    ld [hl], c
    ld e, $05

jr_00F_7298:
    dec b
    nop
    ld hl, sp+$4A
    inc b

jr_00F_729D:
    ld d, $40
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
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
    and c
    ld e, l
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    jr jr_00F_72D3

    ld d, h
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c

jr_00F_72C7:
    adc c
    pop bc
    inc b
    rlca
    nop

jr_00F_72CC:
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l

jr_00F_72D3:
    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld bc, $1B01
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
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
    and c
    ld e, l
    ld b, l
    ld e, $05
    or [hl]
    jr z, jr_00F_7298

    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_00F_729D

    ld bc, $1E0F
    ld [hl], e
    dec b
    nop
    ld hl, sp+$4A
    ld bc, $1B01
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
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
    and c
    ld e, l
    ld b, l
    ld c, b
    rrca
    sub [hl]
    ld [hl], d
    ld e, $05
    or [hl]
    jr z, jr_00F_72C7

    ld bc, $0046
    jr z, jr_00F_72CC

    ld [bc], a
    rrca
    ld c, l
    ld [hl], e
    dec b
    nop
    ld hl, sp+$4A
    jr jr_00F_734C

    ld d, h
    jp nc, $1400

    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
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
    and c
    ld e, l

jr_00F_734C:
    ld b, l
    ld c, b
    rrca
    sub [hl]
    ld [hl], d
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
    jr nz, jr_00F_73C5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_73CE

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rrca
    xor h
    ld [hl], e
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_73F5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_73FF

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00F_73ED

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
    inc [hl]
    and b
    inc b
    dec b
    nop
    rrca
    add sp, $73
    and c
    xor l
    ld e, e
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld e, e
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7425

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_742F

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7433

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_73F6

    dec [hl]

jr_00F_73C5:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_73CE:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    inc b
    dec b
    nop
    rrca
    add sp, $73
    and c
    xor l
    ld e, e
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld e, e
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_73ED:
    ld bc, $A15B
    rrca
    ld h, a
    ld [hl], h
    sbc a
    ld e, e

jr_00F_73F5:
    and c

jr_00F_73F6:
    ld b, [hl]
    rrca
    ld bc, $A15B
    dec b
    ld bc, $2D0F

jr_00F_73FF:
    ld [hl], h
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_7469

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
    jr nz, jr_00F_7466

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7482

    ld [hl], e
    cp $FC
    jr nz, jr_00F_747F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_7425:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    ld e, e
    ld l, c
    and [hl]
    ld d, h

jr_00F_742F:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_7433:
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
    jr nz, jr_00F_7493

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_74C1

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
    rrca
    ld e, e

jr_00F_7466:
    ld l, c
    sbc a
    ld e, e

jr_00F_7469:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_74D6

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_74E5

    ld h, c
    halt

jr_00F_747F:
    ld h, l
    jr nz, jr_00F_74F5

jr_00F_7482:
    ld h, l
    ld [hl], h
    jr nz, jr_00F_74E7

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00F_74D4

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_74E4

    ld h, e
    ld l, a

jr_00F_7493:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_750C

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
    jr nz, jr_00F_74FD

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7527

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00F_7517

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

jr_00F_74C1:
    xor l
    ld e, e
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld e, e
    ld l, c
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7

jr_00F_74D4:
    or e
    inc sp

jr_00F_74D6:
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    db $F4
    ld d, c
    inc de
    ld h, a
    xor b
    ld c, b
    dec b

jr_00F_74E4:
    nop

jr_00F_74E5:
    inc [hl]
    ld h, e

jr_00F_74E7:
    ld bc, $C30F
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    add a

jr_00F_74F5:
    ld h, a
    ld bc, $F108
    ret nc

    nop
    add hl, de
    rst $20

jr_00F_74FD:
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    inc bc
    add a
    ld h, a
    dec b
    ld c, $A9
    pop de
    nop
    add hl, de
    rst $20

jr_00F_750C:
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    inc b
    add a
    ld h, a
    ld [$E810], sp

jr_00F_7517:
    pop de
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    dec b
    add a
    ld h, a
    inc c
    rrca
    adc $D1

jr_00F_7527:
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    ld b, $87
    ld h, a
    db $10
    db $10
    ldh a, [$D1]
    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    rlca
    add a
    ld h, a
    dec c
    rlca
    rst $18
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    ld [$6787], sp
    add hl, bc
    dec b
    sbc a
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    add hl, bc
    add a
    ld h, a
    ld [de], a
    dec b
    xor b
    ret nc

    nop
    add hl, de
    rst $20
    ld b, [hl]
    rrca
    ld h, l
    halt
    dec b
    ld a, [bc]
    add a
    ld h, a
    ld [de], a
    rrca
    call nc, $04D1
    rrca
    push de
    halt
    rrca
    dec e
    halt
    dec b
    dec bc
    add a
    ld h, a
    jr jr_00F_758E

    jp c, $04D1

    rrca
    db $EB
    halt
    rrca
    ld b, e
    halt
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    inc b
    db $10

jr_00F_758E:
    db $E4
    pop de
    nop
    rrca
    add hl, bc
    ld [hl], a
    rrca
    dec de
    ld [hl], a
    dec b
    inc de
    pop hl
    ld [hl], b
    inc b
    ld [de], a
    jr nz, @-$2C

    nop
    rrca
    add hl, bc
    ld [hl], a
    rrca
    dec de
    ld [hl], a
    dec b
    inc d
    pop hl
    ld [hl], b
    db $10
    ld [$D100], sp
    nop
    rrca
    add hl, bc
    ld [hl], a
    rrca
    dec de
    ld [hl], a
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00F_7601

    nop
    add b
    nop
    ld l, [hl]
    ld [bc], a
    add hl, de
    ld [hl], b
    ld b, e
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
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $2AB5
    and b
    rst $30
    sbc e
    rrca
    db $F4
    ld [hl], l
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

jr_00F_7601:
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
    jr nz, jr_00F_7655

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rrca
    jr nc, jr_00F_7690

    rrca
    or e
    ld l, c
    ld b, l
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$9F0F], sp
    halt
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_763C

jr_00F_763C:
    ld b, $15
    ld a, [bc]
    ld c, b
    rrca
    ld h, l
    halt
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$9F0F], sp
    halt
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop

jr_00F_7655:
    nop
    ret nc

    inc b
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    jr jr_00F_7660

jr_00F_7660:
    dec bc
    dec d
    ld b, $15
    dec bc
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
    rrca
    sub l
    halt
    ld c, [hl]
    ld bc, $C9D8
    rrca
    nop
    nop
    and l
    halt
    rrca
    ld bc, $B100
    halt
    rrca
    ld [bc], a
    nop
    cp l
    halt
    rrca
    inc bc

jr_00F_7690:
    nop
    ret


    halt
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00F_769B

jr_00F_769B:
    ld c, b
    rrca
    jr nc, jr_00F_7716

    inc c
    nop
    ld c, b
    rrca
    jr nc, jr_00F_771C

    dec d
    ld de, $74CF
    jr nz, jr_00F_76AB

jr_00F_76AB:
    inc c
    nop
    ld c, b
    rrca
    jr nc, @+$79

    dec d
    ld de, $7498
    jr nz, jr_00F_76B7

jr_00F_76B7:
    inc c
    nop
    ld c, b
    rrca
    jr nc, jr_00F_7734

    dec d
    ld de, $74A2
    jr nz, jr_00F_76C3

jr_00F_76C3:
    inc c
    nop
    ld c, b
    rrca
    jr nc, jr_00F_7740

    dec d
    ld de, $748E
    jr nz, jr_00F_76CF

jr_00F_76CF:
    inc c
    nop
    ld c, b
    rrca
    jr nc, jr_00F_774C

    dec d
    ld de, $75A4
    ld b, b
    ld de, $759A
    jr nz, jr_00F_76F0

    xor [hl]
    ld [hl], l
    ld b, b
    ld de, $75B8
    jr nz, jr_00F_76E7

jr_00F_76E7:
    ld c, b
    rrca
    push de
    halt
    dec d
    ld de, $75A4
    ld b, b

jr_00F_76F0:
    nop
    ld e, c
    ld h, e
    dec d
    ld de, $759A
    jr nc, jr_00F_770A

    xor [hl]
    ld [hl], l
    ld b, b
    nop
    ld e, c
    ld bc, $1115
    cp b
    ld [hl], l
    jr nc, jr_00F_7705

jr_00F_7705:
    ld c, b
    rrca
    db $EB
    halt
    ld a, [de]

jr_00F_770A:
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

jr_00F_7716:
    nop
    nop
    add c
    db $FD
    add hl, de
    ld c, e

jr_00F_771C:
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rrca
    ld h, $77
    ld b, l
    or e
    ld sp, $01C7
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

jr_00F_7734:
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

jr_00F_7740:
    jr nz, @+$7A

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0F
    ld d, l
    ld [hl], a

jr_00F_774C:
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F48
    rst $08
    ld [hl], h
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    ld b, [hl]
    rrca
    nop
    ld c, d
    and b
    ld bc, $0005
    rrca
    ld l, h
    ld [hl], a
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_77D8

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_00F_77CD

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
    rrca
    cp a
    ld [hl], a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7808

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_7812

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00F_7800

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
    inc [hl]
    and b
    ld [$0005], sp
    rrca
    ei
    ld [hl], a
    and c
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld a, c
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7838

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_7842

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_00F_77CD:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7846

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_7809

    dec [hl]

jr_00F_77D8:
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
    inc [hl]
    and b
    ld [$0005], sp
    rrca
    ei
    ld [hl], a
    and c
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld a, c
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_7800:
    ld bc, $A15C
    rrca
    ld a, d
    ld a, b
    sbc a
    ld e, h

jr_00F_7808:
    and c

jr_00F_7809:
    ld b, [hl]
    rrca
    ld bc, $A15C
    dec b
    ld bc, $400F

jr_00F_7812:
    ld a, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_787C

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
    jr nz, jr_00F_7879

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7895

    ld [hl], e
    cp $FC
    jr nz, jr_00F_7892

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_7838:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    ld a, c
    ld l, c
    and [hl]
    ld d, h

jr_00F_7842:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_7846:
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
    jr nz, jr_00F_78A6

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_78D4

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
    rrca
    ld a, c

jr_00F_7879:
    ld l, c
    sbc a
    ld e, h

jr_00F_787C:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_78E9

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_78F8

    ld h, c
    halt

jr_00F_7892:
    ld h, l
    jr nz, jr_00F_7908

jr_00F_7895:
    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00F_78E7

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_78F7

    ld h, e
    ld l, a

jr_00F_78A6:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_791F

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
    jr nz, jr_00F_7910

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_793A

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

jr_00F_78D4:
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld a, c
    ld l, c
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]

jr_00F_78E7:
    ld e, c
    ld l, a

jr_00F_78E9:
    ld [hl], l
    jr nz, jr_00F_7952

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_795B

    ld a, b

jr_00F_78F7:
    ld l, c

jr_00F_78F8:
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rrca
    add hl, sp
    ld a, c
    sbc a
    ld [hl-], a

jr_00F_7908:
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7982

    ld l, a
    ld l, a

jr_00F_7910:
    ld l, e
    jr nz, jr_00F_798C

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00F_797A

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_791F:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    ld [$0005], sp
    rrca
    ld [hl], l
    ld a, c
    and c
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld h, [hl]
    ld l, c
    and [hl]

jr_00F_793A:
    ld c, c
    ld [hl], h
    jr nz, jr_00F_79B2

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_79BC

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_79C0

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_7983

    dec [hl]

jr_00F_7952:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_795B:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    ld [$0005], sp
    rrca
    ld [hl], l
    ld a, c
    and c
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld h, [hl]
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_797A:
    ld bc, $A15C
    rrca
    db $F4
    ld a, c
    sbc a
    ld e, h

jr_00F_7982:
    and c

jr_00F_7983:
    ld b, [hl]
    rrca
    ld bc, $A15C
    dec b
    ld bc, $BA0F

jr_00F_798C:
    ld a, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_79F6

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
    jr nz, jr_00F_79F3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7A0F

    ld [hl], e
    cp $FC
    jr nz, jr_00F_7A0C

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_79B2:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    ld h, [hl]
    ld l, c
    and [hl]
    ld d, h

jr_00F_79BC:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_79C0:
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
    jr nz, jr_00F_7A20

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_7A4E

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
    rrca
    ld h, [hl]

jr_00F_79F3:
    ld l, c
    sbc a
    ld e, h

jr_00F_79F6:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_7A63

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_7A72

    ld h, c
    halt

jr_00F_7A0C:
    ld h, l
    jr nz, jr_00F_7A82

jr_00F_7A0F:
    ld h, l
    ld [hl], h
    jr nz, jr_00F_7A74

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00F_7A61

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_7A71

    ld h, e
    ld l, a

jr_00F_7A20:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_7A99

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
    jr nz, jr_00F_7A8A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7AB4

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00F_7AA4

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

jr_00F_7A4E:
    xor l
    ld e, h
    and c
    ld bc, $A132
    ld c, b
    rrca
    ld h, [hl]
    ld l, c
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7

jr_00F_7A61:
    or e
    inc sp

jr_00F_7A63:
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    inc bc
    ld d, d
    inc de
    ld h, a
    or c
    ld c, b
    dec b

jr_00F_7A71:
    nop

jr_00F_7A72:
    inc [hl]
    ld h, e

jr_00F_7A74:
    ld bc, $C40D
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    add a

jr_00F_7A82:
    ld h, a
    ld bc, $A60B
    ret nc

    ld d, h
    rrca
    db $FD

jr_00F_7A8A:
    ld a, d
    rrca
    add a
    ld a, e
    dec b
    inc b
    add a
    ld h, a
    ld bc, $4C05
    ret nc

    ld d, h
    rrca
    inc de

jr_00F_7A99:
    ld a, e
    rrca
    xor l
    ld a, e
    dec b
    dec b
    add a
    ld h, a
    dec b
    inc bc
    ld [hl-], a

jr_00F_7AA4:
    ret nc

    ld d, h
    rrca
    add hl, hl
    ld a, e
    rrca
    db $D3
    ld a, e
    dec b
    ld b, $87
    ld h, a
    add hl, bc
    rlca
    ld [hl], d
    ret nc

jr_00F_7AB4:
    ld d, h
    rrca
    ld b, e
    ld a, e
    rrca
    ld sp, hl
    ld a, e
    dec b
    rlca
    add a
    ld h, a
    add hl, bc
    add hl, bc
    sub b
    ret nc

    ld d, h
    rrca
    ld h, c
    ld a, e
    rrca
    rra
    ld a, h
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00F_7B12

    nop
    add l
    nop
    ld l, [hl]
    ld [bc], a
    add hl, de
    ld [hl], b
    ld b, e
    ld b, b
    add l
    nop
    ld l, [hl]
    jr nc, jr_00F_7AF6

    jr nc, jr_00F_7B1F

    ld h, b
    add l
    nop
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
    add [hl]
    sbc b
    or e
    daa
    and d
    dec b
    or l
    ld a, [hl+]

jr_00F_7AF6:
    and b
    rst $30
    sbc e
    rrca
    or c
    ld a, h
    ld b, l
    dec d
    ld de, $75A4
    jr nz, jr_00F_7B14

    cp b
    ld [hl], l
    jr nc, @+$13

    xor [hl]
    ld [hl], l
    jr nz, jr_00F_7B1C

    sbc d
    ld [hl], l
    jr nc, jr_00F_7B0F

jr_00F_7B0F:
    ld c, b
    rrca
    db $FD

jr_00F_7B12:
    ld a, d
    dec d

jr_00F_7B14:
    ld de, $759A
    jr nz, jr_00F_7B2A

    and h
    ld [hl], l
    ld b, b

jr_00F_7B1C:
    ld de, $75B8

jr_00F_7B1F:
    jr nz, @+$13

    xor [hl]
    ld [hl], l
    ld b, b
    nop
    ld c, b
    rrca
    inc de
    ld a, e
    dec d

jr_00F_7B2A:
    ld de, $75A4
    ld [hl], b
    ld de, $75B8
    jr nz, jr_00F_7B44

    xor [hl]
    ld [hl], l
    jr nz, @+$13

    sbc d
    ld [hl], l
    jr nz, jr_00F_7B4C

    xor [hl]
    ld [hl], l
    ld d, b
    nop
    ld c, b
    rrca
    add hl, hl
    ld a, e
    dec d

jr_00F_7B44:
    ld de, $759A
    jr nz, @+$13

    and h
    ld [hl], l
    ld b, b

jr_00F_7B4C:
    ld de, $75B8
    jr nc, jr_00F_7B62

    xor [hl]
    ld [hl], l
    jr nz, @+$13

    sbc d
    ld [hl], l
    db $10
    ld de, $75AE
    jr nz, jr_00F_7B5D

jr_00F_7B5D:
    ld c, b
    rrca
    ld b, e
    ld a, e
    dec d

jr_00F_7B62:
    ld de, $759A
    jr nz, jr_00F_7B78

    and h
    ld [hl], l
    jr nz, jr_00F_7B7C

    sbc d
    ld [hl], l
    db $10
    ld de, $75A4
    jr nz, jr_00F_7B84

    cp b
    ld [hl], l
    jr nz, jr_00F_7B88

    xor [hl]

jr_00F_7B78:
    ld [hl], l
    jr nz, jr_00F_7B8C

    cp b

jr_00F_7B7C:
    ld [hl], l
    db $10
    ld de, $75AE
    jr nz, jr_00F_7B83

jr_00F_7B83:
    ld c, b

jr_00F_7B84:
    rrca
    ld h, c
    ld a, e
    or e

jr_00F_7B88:
    ld sp, $01C7
    ld b, [hl]

jr_00F_7B8C:
    nop
    ld a, [hl+]
    and b
    ld [$7B0F], sp
    ld a, h
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_7BF6

    ld b, $15
    inc bc
    ld c, b
    rrca
    ld b, l
    ld a, h
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$7B0F], sp
    ld a, h
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_7C1C

    ld b, $15
    inc b
    ld c, b
    rrca
    ld b, l
    ld a, h
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$7B0F], sp
    ld a, h
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_7C42

    ld b, $15
    dec b
    ld c, b

jr_00F_7BF6:
    rrca
    ld b, l
    ld a, h
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$7B0F], sp
    ld a, h
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_7C68

    ld b, $15
    ld b, $48

jr_00F_7C1C:
    rrca
    ld b, l
    ld a, h
    or e
    ld sp, $01C7
    ld b, [hl]
    nop
    ld a, [hl+]
    and b
    ld [$7B0F], sp
    ld a, h
    dec b
    dec d
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld d, h
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    dec d
    jr jr_00F_7C8E

    ld b, $15
    rlca
    ld c, b

jr_00F_7C42:
    rrca
    ld b, l
    ld a, h
    ld c, e
    ld l, c
    sbc b
    ld a, b
    inc d
    ld e, $1D
    ld a, l
    rrca
    rlca
    nop
    ld hl, sp+$4A
    add hl, bc
    nop
    rrca
    ld [hl], c
    ld a, h
    ld c, [hl]
    ld bc, $C9D8
    rrca
    nop
    nop
    add c
    ld a, h
    rrca
    ld bc, $8D00
    ld a, h
    rrca
    ld [bc], a
    nop

jr_00F_7C68:
    sbc c
    ld a, h
    rrca
    inc bc
    nop
    and l
    ld a, h
    rst $38
    ld b, l
    dec d
    inc d
    push hl
    ld h, b
    jr nz, jr_00F_7C77

jr_00F_7C77:
    ld c, b
    rrca
    sub $7C
    inc c
    nop
    ld c, b
    rrca
    sub $7C
    dec d
    ld de, $74CF
    jr nz, jr_00F_7C87

jr_00F_7C87:
    inc c
    nop
    ld c, b
    rrca
    sub $7C
    dec d

jr_00F_7C8E:
    ld de, $7498
    jr nz, jr_00F_7C93

jr_00F_7C93:
    inc c
    nop
    ld c, b
    rrca
    sub $7C
    dec d
    ld de, $74A2
    jr nz, jr_00F_7C9F

jr_00F_7C9F:
    inc c
    nop
    ld c, b
    rrca
    sub $7C
    dec d
    ld de, $748E
    jr nz, jr_00F_7CAB

jr_00F_7CAB:
    inc c
    nop
    ld c, b
    rrca
    sub $7C
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
    jr nz, jr_00F_7D12

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00F_7D0E

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    rrca
    sub $7C
    rrca
    jp z, Jump_00F_4569

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
    jr nz, jr_00F_7D60

    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0F
    ei
    ld a, h
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $0F48
    ld e, h
    ld a, d
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
    ld a, e

jr_00F_7D0E:
    ld d, d
    inc de
    ld h, a
    or [hl]

jr_00F_7D12:
    ld c, b
    dec b
    nop
    inc [hl]
    ld h, e
    inc bc
    add hl, bc
    or a
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec bc
    nop
    sbc e
    rrca
    or c
    ld a, h
    add [hl]
    sbc b
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
    jr nz, jr_00F_7D9F

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00F_7DA8

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    rrca
    add [hl]
    ld a, l
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7DCF

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_7DD9

jr_00F_7D60:
    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00F_7DC7

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
    inc [hl]
    and b
    db $10
    dec b
    nop
    rrca
    jp nz, $A17D

    xor l
    ld e, l
    and c
    ld bc, $A132
    ld c, b
    rrca
    cp d
    ld l, c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00F_7DFF

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00F_7E09

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7E0D

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00F_7DD0

    dec [hl]

jr_00F_7D9F:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00F_7DA8:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    inc [hl]
    and b
    db $10
    dec b
    nop
    rrca
    jp nz, $A17D

    xor l
    ld e, l
    and c
    ld bc, $A132
    ld c, b
    rrca
    cp d
    ld l, c
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00F_7DC7:
    ld bc, $A15D
    rrca
    ld b, c
    ld a, [hl]
    sbc a
    ld e, l

jr_00F_7DCF:
    and c

jr_00F_7DD0:
    ld b, [hl]
    rrca
    ld bc, $A15D
    dec b
    ld bc, $070F

jr_00F_7DD9:
    ld a, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00F_7E43

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
    jr nz, jr_00F_7E40

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7E5C

    ld [hl], e
    cp $FC
    jr nz, jr_00F_7E59

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00F_7DFF:
    ld l, $FE
    db $FD
    and c
    ld c, b
    rrca
    cp d
    ld l, c
    and [hl]
    ld d, h

jr_00F_7E09:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00F_7E0D:
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
    jr nz, jr_00F_7E6D

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00F_7E9B

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
    rrca
    cp d

jr_00F_7E40:
    ld l, c
    sbc a
    ld e, l

jr_00F_7E43:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00F_7EB0

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00F_7EBF

    ld h, c
    halt

jr_00F_7E59:
    ld h, l
    jr nz, jr_00F_7ECF

jr_00F_7E5C:
    ld h, l
    ld [hl], h
    jr nz, jr_00F_7EC1

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00F_7EAE

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00F_7EBE

    ld h, e
    ld l, a

jr_00F_7E6D:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00F_7EE6

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
    jr nz, jr_00F_7ED7

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00F_7F01

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00F_7EF1

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

jr_00F_7E9B:
    xor l
    ld e, l
    and c
    ld bc, $A132
    ld c, b
    rrca
    cp d
    ld l, c
    ld c, b
    rrca
    dec hl
    ld a, l
    ld c, b
    rrca
    sub b
    ld l, a
    rst $38

jr_00F_7EAE:
    rst $38
    rst $38

jr_00F_7EB0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7EBE:
    rst $38

jr_00F_7EBF:
    rst $38
    rst $38

jr_00F_7EC1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7ECF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7ED7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7EE6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7EF1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00F_7F01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
