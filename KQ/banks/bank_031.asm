; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    adc b
    add a
    adc c
    adc b
    and b
    ld b, $FF
    db $FC
    jr nc, jr_031_400A

jr_031_400A:
    adc a
    cp $A5
    nop
    add hl, hl
    rst $38
    cp $A4
    nop
    ld bc, $FF5B
    ld [$0063], a
    nop
    db $38, $CF
    rst $38
    db $FD
    add l
    ld hl, $1200
    ld l, c
    rst $08
    rst $38
    cp $A7
    jr nc, jr_031_4029

jr_031_4029:
    nop
    inc de
    ld l, c
    cp l
    rst $38
    rst $38
    db $EC
    xor b
    ld d, d
    nop
    nop
    ld bc, $9B47
    rst $18
    rst $38
    rst $38
    cp $CA
    add l
    ld [hl-], a
    stop
    nop
    inc de
    ld e, b
    xor h
    rst $38
    rst $38
    rst $38
    db $FD
    cp c
    add [hl]
    ld d, e
    ld hl, $0000
    ld [de], a
    inc [hl]
    ld d, a
    sbc d
    call $FFEF
    rst $38
    db $EC
    cp c
    halt
    ld b, e
    ld [hl-], a
    ld hl, $1211
    inc [hl]
    ld d, [hl]
    adc b
    sbc d
    cp h
    call $DDDE
    call c, $97BA
    ld h, l
    ld b, e
    ld [hl-], a
    ld [hl+], a
    inc sp
    inc [hl]
    ld b, l
    ld d, [hl]
    ld a, b
    sbc c
    xor e
    cp e
    call z, $BBCC
    cp d
    sbc b
    halt
    ld h, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    xor d
    xor e
    cp e
    cp e
    xor d
    xor c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor c
    sbc c
    adc b
    ld [hl], a
    halt
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc a
    rst $38
    ldh a, [rP1]
    nop
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld b, e
    stop
    nop
    adc c
    cp h
    rst $28
    rst $38
    rst $38
    ld hl, sp+$77
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $53
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_031_4279

    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    jr nz, jr_031_4283

    ld h, l
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_031_4267

    ld l, c
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld l, a
    ld h, [hl]
    ld [hl], h
    jr nz, jr_031_427B

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, a
    ld [hl], a
    ld [hl], e
    ld l, $0D
    ld a, [bc]
    inc h
    jr nz, jr_031_4250

    jr nz, jr_031_4252

    jr nz, jr_031_4254

    jr nz, jr_031_4256

    jr nz, @+$22

    jr nz, jr_031_425A

    jr nz, @+$22

    jr nz, jr_031_425E

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_4264

    jr nz, jr_031_4266

    jr nz, jr_031_4268

    jr nz, jr_031_426A

    jr nz, jr_031_426C

    jr nz, jr_031_426E

    jr nz, jr_031_4270

jr_031_4250:
    jr nz, jr_031_4272

jr_031_4252:
    jr nz, jr_031_4274

jr_031_4254:
    jr nz, jr_031_4276

jr_031_4256:
    ld e, d
    ld c, $1F
    or h

jr_031_425A:
    add hl, bc
    call $B821

jr_031_425E:
    ld bc, $CD4C
    ld hl, $0000

jr_031_4264:
    nop
    nop

jr_031_4266:
    nop

jr_031_4267:
    nop

jr_031_4268:
    nop
    nop

jr_031_426A:
    nop
    nop

jr_031_426C:
    nop
    nop

jr_031_426E:
    nop
    nop

jr_031_4270:
    nop
    nop

jr_031_4272:
    nop
    nop

jr_031_4274:
    nop
    nop

jr_031_4276:
    nop
    nop
    nop

jr_031_4279:
    nop
    nop

jr_031_427B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_4283:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld b, l
    dec b
    inc a
    ld a, l
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    db $10
    ld h, [hl]
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rla
    nop
    ld b, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    add e
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld [$004C], sp
    sub $00
    nop
    nop
    ld a, [bc]
    inc bc
    ld c, [hl]
    nop
    ld e, e
    ld a, [bc]
    ld b, b
    dec c
    ld e, e
    ld a, [bc]
    cp $00
    inc l
    ld [bc], a
    ld b, c
    inc c
    inc l
    ld [bc], a
    ld b, $4D
    ld d, e
    ld d, e
    ld b, d
    ld sp, $0036
    nop
    rrca
    ld e, a
    ld e, a
    ld e, a
    ld b, l
    ld e, b
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    ld b, l
    ld b, h
    ld d, e
    ld d, h
    ld d, l
    ld b, d
    ld bc, $0000
    ld bc, $0800
    nop
    nop
    ld b, $4B
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, l
    ld c, h
    inc b
    ld d, l
    ld d, e
    ld b, l
    ld d, d
    ld bc, $0101
    sbc d
    ld b, $00
    inc de
    ld c, l
    ld d, e
    ld d, e
    jr nz, jr_031_44CB

    ld h, c
    ld h, e
    ld l, e
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_031_44E8

    ld h, c
    ld [hl], e
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_44CB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ld [$0000], sp
    ld d, [hl]
    call nz, $085E

jr_031_44E8:
    adc e
    di
    ld h, $80
    ccf
    ld hl, $3575
    adc l
    ld b, h
    ld bc, $5006
    sbc d
    add $07
    rst $38
    rst $38
    add e
    call nz, $8904
    ld b, [hl]
    db $FC
    adc c
    ld d, [hl]
    cp $52
    ld d, b
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], h
    inc d
    ld l, d
    nop
    ld e, $68
    ld d, $00
    ld e, $68
    stop
    ld l, d
    nop
    sbc d
    rst $38
    rst $38
    nop
    nop
    db $EB
    inc b
    sub b
    rst $38
    ld e, [hl]
    db $FC
    inc sp
    ret nz

    ld e, [hl]
    ret


    jp z, $000A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    or b
    rst $38
    ld d, b
    sbc d
    ld b, c
    ld [bc], a
    jr jr_031_4546

jr_031_4546:
    inc sp
    db $ED
    ld d, l
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], h
    db $EC
    adc h
    ld b, $62
    nop
    add c
    pop bc
    nop
    ld bc, $E272
    adc c
    ld c, $2C
    nop
    adc c
    ld [hl], $2E
    nop
    adc c
    ld a, $30
    nop
    adc c
    ld e, $32
    nop
    adc h
    ld b, $34
    nop
    adc c
    ld d, $36
    nop
    cp b
    rst $38
    rst $38
    ld d, b
    sbc d
    rst $38
    rst $38
    nop
    nop
    sbc d
    rst $38
    rst $38
    nop
    nop
    add [hl]
    call nz, Call_031_64A3
    nop
    or h
    jr nc, jr_031_45B8

    rst $30
    ld b, $5C
    nop
    ld bc, $7400
    rlca
    sbc d
    rst $38
    rst $38
    nop
    nop
    db $EB
    ld [bc], a
    call $A321
    ld l, b
    nop
    add [hl]
    call nz, Call_031_66A3
    nop
    ld l, $F7
    ld b, $5C
    nop
    ld bc, $7500
    dec b
    or b
    nop
    and d
    ld l, e
    nop
    inc sp
    ret nz

    ld d, b
    sbc d
    rst $38
    rst $38
    nop

jr_031_45B8:
    nop
    rst $38
    ld [hl], $30
    nop
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], l
    inc bc
    jp hl


    ld [hl], l
    rst $38
    sbc d
    ld d, b
    ld bc, $0064
    sbc d
    jr c, jr_031_45D4

    db $EC
    nop
    sbc d

jr_031_45D4:
    ld [c], a
    inc b
    pop af
    nop
    add sp, $25
    rlca
    rst $38
    ld [hl], $A4
    nop
    rst $38
    ld [hl], $A2
    nop
    rst $38
    ld [hl], $A0
    nop
    rst $38
    ld [hl], $9E
    nop
    rst $38
    ld [hl], $9C
    nop
    sbc d
    inc h
    ld bc, $00F6
    add e
    call nz, Call_031_500A
    sbc d
    inc sp
    ld [bc], a
    ld [de], a
    ld bc, $15B8
    nop
    jp hl


    add e
    inc b
    nop
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    rst $38
    ld [hl], $30
    nop
    rst $38
    ld [hl], $2E
    nop
    rst $38
    ld [hl], $34
    nop
    rst $38
    ld [hl], $32
    nop
    rst $38
    ld [hl], $36
    nop
    sbc d
    nop
    nop
    dec de
    ld bc, $ED83
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    res 1, h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    cp b
    nop
    dec [hl]
    ld l, $F7
    ld b, $5C
    nop
    ld bc, $7400
    rlca
    sbc d
    or e
    nop
    nop
    nop
    db $EB
    ld [bc], a
    call $8921
    ld e, $4E
    nop
    adc h
    ld b, $50
    nop
    ld c, $1F
    cp b
    nop
    dec h
    cp d
    sbc h
    dec b
    ld l, $F7
    ld b, $5C
    nop
    ld bc, $7400
    rlca
    sbc d
    ld h, a
    ld bc, $0000
    db $EB
    ld [bc], a
    call $0E21
    add sp, -$0B
    inc b
    adc [hl]
    ret c

    adc e
    ld c, $D0
    nop
    db $E3
    add hl, hl
    adc [hl]
    ld b, $62
    nop
    ld h, $8B
    ld [hl], $2C
    nop
    and c
    jp nc, $8B00

    ld d, $D4
    nop
    inc sp
    db $DB
    rst $38
    ld e, $CE
    nop
    ld [hl], e
    inc bc
    jp hl


    ld a, d
    ld bc, $D6A1
    nop
    adc e
    ld d, $D8
    nop
    cp e
    inc bc
    nop
    rst $38
    ld e, $CE
    nop
    adc [hl]
    ld b, $62
    nop
    ld h, $8B
    ld c, $2C
    nop
    db $E3
    ld a, $8E
    pop bc
    inc sp
    rst $38
    ld h, $80
    dec a
    nop
    ld [hl], h
    inc [hl]
    cp c
    dec c

jr_031_46BD:
    nop
    cp [hl]
    ld b, b
    nop
    di
    and [hl]
    ld [hl], h
    dec bc
    cp c
    rst $38
    ld a, a
    inc sp
    ret nz

    ld a, [c]
    xor [hl]
    ld [hl], l
    ld hl, $E5EB
    ld b, $1E
    rlca
    rra
    adc e
    rst $30
    cp a
    ld [hl], h
    nop
    or c
    inc b
    xor h
    inc l
    ld b, c
    ld [hl], d
    dec c
    jp nc, $92E0

    xor h
    inc l
    ld b, c
    ld [hl], d
    dec b
    ld a, [bc]
    jp nz, $EBAA

    xor $06
    rra
    cp [hl]
    jp c, $BF00

    jp c, $E800

    ld [c], a
    nop
    cp [hl]
    jp c, $BF00

    jp c, $E800

    reti


    nop
    cp [hl]
    jp c, $BF00

    jp c, $E800

    ret nc

    nop
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    res 1, h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    inc sp
    ret


    db $EB
    cpl
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    cp c
    ld bc, $EB00
    jr nz, jr_031_46BD

    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, [hl]
    ld d, a
    cp c
    nop
    ld bc, $0FEB
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, [hl]
    ld d, a
    cp c
    ld bc, $8801
    ld l, $AD
    nop
    ld d, c
    ld a, [bc]
    ret


    ld [hl], l
    inc e
    cp [hl]
    inc l
    ld [bc], a
    cp a
    inc l
    ld [bc], a
    add sp, $78
    nop
    cp [hl]
    jp c, $BF00

    jp c, $E800

    ld l, a
    nop
    adc e
    halt
    ld b, $56
    add sp, -$72
    dec b
    add e
    call nz, $BE02
    jp c, $BF00

    jp c, $E800

    ld e, h
    nop
    cp [hl]
    jp c, $BF00

    jp c, $E800

    ld d, e
    nop
    add sp, $27
    nop
    ld e, b
    ld a, [bc]
    db $E4
    ld [hl], l
    rla
    adc e
    ld b, [hl]
    ld b, $B4
    ld c, h
    ld l, $F7
    ld b, $5C
    nop
    ld bc, $7400
    rlca
    sbc d
    adc c
    ld bc, $0000
    db $EB
    ld [bc], a
    call Call_031_5F21
    ld e, [hl]
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    res 1, e
    ld c, $D0
    nop
    db $E3
    rlca
    cp e
    ld [bc], a
    nop
    rst $38
    ld e, $CE
    nop
    ld e, $C5
    ld d, $4E
    nop
    cp b
    nop
    dec h
    ld l, $F7
    ld b, $5C
    nop
    ld bc, $7400
    rlca
    sbc d
    cp [hl]
    ld [bc], a
    nop
    nop
    db $EB
    ld [bc], a
    call $1F21
    jp $F73B


    ld [hl], e
    ld c, $83
    rst $28
    inc b
    adc e
    dec b
    dec bc
    ld b, l
    ld [bc], a
    ld [hl], h
    ld a, [c]
    rst $38
    dec e
    db $EB
    xor $C3
    nop
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    cp b
    db $FC
    nop
    ld d, b
    ld c, $E8
    rst $38
    ld [bc], a
    cp b
    rst $38
    nop
    ld d, b
    ld c, $E8
    rst $30
    ld [bc], a
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    rlc b
    cp b
    ld [bc], a
    nop
    jp hl


    ld l, [hl]
    ld [bc], a
    adc a
    ld b, $B2
    nop
    adc a
    ld b, $B4
    nop
    cp b
    inc b
    ld bc, $08B9
    nop
    add sp, $13
    inc bc
    adc c
    ld d, $A8
    nop
    and e
    and [hl]
    nop
    ld d, d
    ld d, b
    rst $38
    ld [hl], $30
    nop
    ld d, d
    ld d, b
    cp b
    inc b
    ld bc, $9A50
    rst $38
    rst $38
    nop
    nop
    ld e, e
    rlca
    inc bc
    ret c

    ld h, $C6
    rlca
    nop
    cp d
    ld bc, $1E00
    rlca
    cp a
    ld bc, $BE00
    add c
    nop
    adc [hl]
    ld e, $62
    nop
    xor h
    inc a
    jr nz, @+$76

    ei
    inc a
    add hl, bc
    ld [hl], h
    rst $30
    inc a
    dec c
    ld [hl], h
    ld l, a
    ld a, [bc]
    ret nz

    ld [hl], h
    ld l, e
    ld b, a
    ld c, [hl]
    xor h
    inc a
    jr nz, jr_031_48E3

    add sp, $3C
    add hl, bc
    ld [hl], h
    db $E4
    inc a
    dec c
    ld [hl], h
    ld e, h
    ld a, [bc]
    ret nz

    ld [hl], h
    ld e, b
    inc a
    ld [hl+], a
    ld [hl], h
    inc h
    inc a
    ld e, h
    ld [hl], h
    inc bc
    ld b, d
    db $EB
    db $E4
    inc sp
    ret


    ld b, c
    xor h
    inc a
    ld e, h
    ld [hl], h
    ld a, [$223C]
    ld [hl], h
    inc b
    inc bc
    pop de
    db $EB
    db $D3
    adc e
    pop bc
    pop de
    jp hl


    inc de
    pop de
    xor b
    ld bc, $CA75
    db $EB
    ld bc, $AC4E
    inc a
    dec c
    ld [hl], h
    dec hl
    ld a, [bc]
    ret nz

    ld [hl], h
    daa
    inc a
    ld [hl+], a
    ld [hl], h
    cp d
    inc a
    ld e, h
    ld [hl], h
    inc bc
    ld b, d
    db $EB
    db $EC
    inc sp
    ret


    ld b, c
    xor h
    inc a
    ld e, h
    ld [hl], h
    ld a, [$223C]
    ld [hl], h
    inc b
    inc bc
    pop de
    db $EB
    db $DB
    adc e
    pop bc
    pop de
    jp hl


    inc de
    pop de
    xor b
    ld bc, $D275
    db $EB
    sub a
    ld b, $1F
    adc c
    ld a, $9C
    nop
    inc bc
    rst $10
    ld b, a
    pop de
    rst $20
    pop de
    rst $20
    inc bc
    rst $10

jr_031_48E3:
    ld b, d
    add b
    ld [c], a
    cp $2B
    ld [c], a
    adc e
    call nz, $9EA3
    nop
    adc h
    ld d, $A0
    nop
    adc e
    ret c

    inc bc
    ei
    ld d, $07
    push bc
    ld [hl], $A6
    nop
    ld [hl], $89
    scf
    ld [hl], $8C
    ld e, a
    ld [bc], a
    add e
    jp Jump_031_5004


    ld c, $E8
    ld e, a
    ld [bc], a
    adc [hl]
    ret c

    ld e, b
    adc [hl]
    ld e, $62
    nop
    cp [hl]
    add c
    nop
    db $EB
    inc bc
    inc sp
    ret nz

    xor d
    xor h
    inc a
    jr nz, jr_031_4992

    ei
    inc a
    add hl, bc
    ld [hl], h
    rst $30
    inc a
    dec c
    ld [hl], l
    inc bc
    jp hl


    add e
    nop
    ld a, [bc]
    ret nz

    ld [hl], l
    ld [bc], a
    db $EB
    ld a, l
    ld [hl], $89
    ccf
    ld [hl], $8C
    ld d, a
    ld [bc], a
    add e
    jp Jump_031_4E04


    xor h
    inc a
    jr nz, jr_031_49B3

    rst $10
    inc a
    add hl, bc
    ld [hl], h
    db $D3
    inc a
    dec c
    ld [hl], h
    ld h, d
    ld a, [bc]
    ret nz

    ld [hl], h
    ld e, [hl]
    inc a
    ld [hl+], a
    ld [hl], h
    daa
    inc a
    ld e, h
    ld [hl], h
    inc bc
    xor d
    db $EB
    db $E4
    inc sp
    ret


    ld b, c
    xor h
    inc a
    ld e, h
    ld [hl], h
    ld a, [$223C]
    ld [hl], h
    ld b, $B0
    ld e, h
    di
    xor d
    db $EB
    pop de
    or b
    ld e, h
    pop de
    jp hl


    di
    xor d
    ld [hl], e
    ld b, $B0
    ld [hl+], a
    xor d
    db $EB
    push bc
    ld c, [hl]
    xor h
    inc a
    dec c
    ld [hl], h
    ld l, $0A
    ret nz

    ld [hl], h
    ld a, [hl+]
    inc a
    ld [hl+], a
    ld [hl], h
    or a
    inc a
    ld e, h
    ld [hl], h
    inc bc
    xor d
    db $EB
    db $EC
    inc sp
    ret


    ld b, c
    xor h
    inc a
    ld e, h
    ld [hl], h

jr_031_4992:
    ld a, [$223C]
    ld [hl], h
    ld b, $B0
    ld e, h
    di
    xor d
    db $EB
    reti


    or b
    ld e, h
    pop de
    jp hl


    di
    xor d
    ld [hl], e
    sub [hl]
    or b
    ld [hl+], a
    xor d
    db $EB
    call $C033
    xor d
    ld c, $E8
    cp c
    ld bc, $D88E

jr_031_49B3:
    ld [hl], $C7
    rlca
    nop
    nop
    ld [hl], $C7
    ld b, a
    ld [bc], a
    nop

jr_031_49BD:
    nop
    rst $38
    ld l, $B2
    nop
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    add e
    db $EC
    ld b, $1E
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], h
    inc bc
    cp d
    nop
    nop
    adc e
    jp c, $C28E

    adc h
    ld b, [hl]
    db $FC
    adc h
    ld e, [hl]
    ld hl, sp+$33
    ret nz

    inc sp
    or $33
    rst $38
    cp c
    rst $38
    rst $38
    dec bc
    db $DB
    ld [hl], h
    ld c, $26
    add b
    ld a, $00
    nop
    nop
    ld [hl], h
    ld b, $F2
    xor [hl]
    ld b, [hl]
    xor [hl]
    ld [hl], l
    ld a, [$C78B]
    ld b, b
    inc h
    cp $46
    adc e
    cp $D1
    and $D1
    and $B9
    add hl, bc
    nop
    add sp, $29
    ld bc, $5052
    adc e
    add $E8
    ld [hl+], a
    ld bc, $A2A3
    nop
    adc c
    ld d, $A4
    nop
    adc c
    ld d, [hl]
    ld a, [$1F06]
    adc e
    rst $08
    adc e
    ret c

    inc sp
    or $5F
    rlca
    ld c, c
    db $E3
    jr c, jr_031_49BD

    inc b
    ld e, $8E
    ld e, [hl]
    ld hl, sp+$3B
    ld b, $40
    nop
    rra
    ld [hl], l
    dec d
    ld d, c
    ld d, [hl]
    ld d, a
    ld b, $8E
    ld b, [hl]
    ld hl, sp-$41
    ld b, b
    nop
    cp c
    ld b, $00
    di
    and a
    rlca
    ld e, a
    ld e, [hl]
    ld e, c
    ld [hl], h
    dec bc
    adc [hl]
    ld e, [hl]
    ld a, [$3F89]
    adc h
    ld b, a
    ld [bc], a
    add e
    jp $8E04


    ld e, [hl]
    db $FC
    xor h
    xor d
    ld a, [bc]
    ret nz

    ld [hl], l
    ld a, [$C8E2]
    adc [hl]
    ld e, [hl]
    ld a, [$0F89]
    adc c
    ld c, a
    ld [bc], a
    rra
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    rlc b
    sbc d
    adc d
    ld b, $45
    ld bc, $D88E
    cp b
    inc bc
    nop
    ld d, b
    ld d, b
    ld c, $E8
    ld h, d
    db $FD
    ld c, $E8
    ld l, a
    nop
    ld c, $E8
    inc [hl]
    nop
    inc sp
    db $DB
    dec bc
    ret nz

    ld [hl], h
    dec e
    adc e
    ld hl, sp-$48
    add hl, bc
    nop
    add b
    dec a
    ld c, l
    ld [hl], l
    inc bc
    cp b
    rrca
    nop
    inc bc
    ld hl, sp+$57
    ld e, $07
    or b
    dec c
    cp c
    ld [hl+], a
    nop
    ld a, [c]
    xor [hl]
    adc b
    ld e, l
    rst $38
    ld e, b
    ld d, e
    ld e, $50
    sbc d
    rst $38
    rst $38
    nop
    nop
    cp b
    rst $38
    nop
    ld d, b
    sbc d
    rst $38
    rst $38
    nop
    nop
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, [hl]
    ld d, a
    ld e, $07
    adc e
    ld d, [hl]
    ld b, $BE
    ld [c], a
    nop
    xor l
    dec sp
    jp nz, $1074

    ld b, b
    sub [hl]
    ld [hl], h
    inc c
    sub a
    inc sp
    ret nz

    cp c
    rst $38
    rst $38
    ld a, [c]
    xor [hl]
    adc e
    rst $30
    db $EB
    db $EB
    sub [hl]
    ld e, a
    ld e, [hl]
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    jp z, $0002

    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, a
    add e
    ld a, $B8
    nop
    nop
    ld [hl], h
    rra
    rst $38
    halt
    ld b, $0E
    add sp, -$50
    rst $38
    dec bc
    ret nz

    ld [hl], h
    inc d
    sub d
    adc e
    ld a, [$C033]
    cp c
    rst $38
    rst $38
    ld a, [c]
    xor [hl]
    rst $30
    pop de
    ld c, c
    adc e
    ld e, $6E
    nop
    add sp, -$2B
    ld bc, $835F
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    jp z, $0002

    ld d, l
    adc e
    db $EC
    ld d, e
    ld b, $51
    cp c
    nop
    db $10
    add a
    ld c, $B6
    nop
    ld d, c
    ld d, b
    sbc d
    ld c, l
    ld [$059F], sp
    ld e, e
    adc a
    ld b, $B6
    nop
    ld e, c
    adc e
    jp c, $D80B

    ld [hl], h
    inc b
    rlca
    ld e, e
    db $EB
    dec b
    adc e
    pop bc
    jp hl


    ld hl, $8BFF
    push hl
    ld e, l
    jp $2E00


    add b
    ld a, $9A
    ld b, $B8
    ld [hl], h
    inc bc
    adc h
    ret nc

    sra [hl]
    and c
    sbc e
    ld b, $CB
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    inc sp
    ret nz

    adc l
    ld h, [hl]
    cp $1F
    ld e, l
    ld c, l
    res 2, b
    ld d, c
    ld d, a
    or $47
    ld [bc], a
    ld bc, $6874
    add sp, -$14
    nop
    adc e
    cp $8B
    inc b
    xor b
    ld bc, $0374
    dec hl
    ret z

    ld c, c
    ld b, c
    ld b, c
    adc e
    ld [hl], a
    inc b
    dec bc
    or $74
    ld d, c
    inc bc
    adc $73
    add hl, bc
    inc sp
    ret nz

    cp d
    ldh a, [rIE]
    db $E3
    dec [hl]
    db $EB
    ld b, h
    sbc d
    adc d
    ld b, $6E
    ld b, $8E
    ret nz

    ld h, $A1
    or [hl]
    nop
    dec a
    nop
    db $10
    ld [hl], h
    ld d, $BA
    nop
    add b
    dec sp
    ret nc

    ld [hl], d
    ld b, $D1
    ld [$F875], a
    db $EB
    ld [hl+], a
    add e
    ld a, [$7208]
    dec e
    pop de
    ld [c], a
    adc e
    jp nz, $8B48

    ret nc

    inc bc
    pop bc
    ld [hl], e
    ld [bc], a
    inc sp
    ret nz

    rst $30
    jp nc, $C223

    ld d, d
    add sp, $2E
    nop
    ld e, d
    ld [hl], e
    dec c
    add e
    ld a, [$74F0]
    dec b
    cp b
    stop
    db $EB
    ld [c], a
    ld sp, hl
    db $EB
    dec de
    adc e
    ret nc

    dec hl
    ld d, a
    inc b
    adc c
    ld b, a
    inc b
    adc c
    ld a, a
    ld a, [bc]
    adc e
    ld [hl], a
    inc c
    ld c, d
    adc c
    inc d
    ld b, d
    inc bc
    ld a, [c]
    rst $00
    inc b
    cp $FF
    adc c
    ld [hl], a
    inc c
    ld e, a
    ld e, c
    jp $D08B


    or $47
    ld [bc], a
    inc b
    ld [hl], h
    ld [bc], a
    db $EB
    ld d, c
    ld d, d
    ld d, c
    ld d, e
    adc e
    ld [hl], a
    ld b, $2E
    adc e
    ld e, $5C
    nop
    inc sp
    ret


    dec bc
    jp nc, $0775

    rst $30
    jp RST_10


    ld [hl], l
    ld b, b
    ld b, c
    cp b
    ld [bc], a
    nop
    rst $30
    jp $0001


    ld [hl], l
    inc bc
    cp b
    jr nz, jr_031_4C4D

jr_031_4C4D:
    ld d, [hl]
    ld d, c
    ld d, d
    ld d, b
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], h
    ld h, $3B
    add $75
    inc e
    ld d, [hl]
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nc

    ld [hl], h
    ld [de], a
    ld e, e
    ld e, c
    ld e, d
    adc e
    jp nz, $47F6

    ld [bc], a
    inc b
    ld [hl], h
    inc b
    ld c, d
    adc c
    ld d, a
    cp $F8
    db $EB
    ld a, [bc]
    cp b
    ld [de], a
    nop
    jp hl


    ld b, $FE
    ld e, e
    ld e, c
    ld e, d
    ld sp, hl
    jp $8B57


    ld [hl], a
    ld a, [bc]
    dec sp
    ld [hl], a
    inc c
    ld [hl], l
    inc bc
    adc e
    ld [hl], a
    ld [$83AD], sp
    ld hl, sp-$02
    ld [hl], h
    ld [$FE8B], sp
    inc h
    cp $03
    ldh a, [$EB]
    ld a, [c]
    ld c, a
    ld c, a
    adc e
    rst $30
    ld e, a
    jp $E900


    ld bc, $0000
    ld d, l
    adc e
    db $EC
    ld d, a
    ld d, [hl]
    ld e, $C5
    halt
    ld b, $33
    ret nz

    sbc c
    inc sp
    db $DB
    xor h
    inc a
    jr nz, jr_031_4D30

    ei
    inc a
    add hl, bc
    ld [hl], h
    rst $30
    ld d, b
    inc a
    dec l
    ld [hl], h
    inc b
    inc a
    dec hl
    ld [hl], l
    ld bc, $3CAC
    add hl, sp
    ld [hl], a
    rra
    inc l
    jr nc, jr_031_4D44

    dec de
    pop de
    db $E3
    pop de
    jp nc, $CB8B

    adc e
    ld a, [$E3D1]
    pop de
    jp nc, $E3D1

    pop de
    jp nc, $D903

    inc de
    rst $10
    inc bc
    ret c

    add e
    jp nc, $EB00

    call c, $3C58
    dec l
    sub e
    ld [hl], l
    rlca
    rst $30
    ret c

    add e
    jp nc, $F700

    jp c, $5E1F

    ld e, a
    ld e, l
    bit 2, l
    adc e
    db $EC
    ld e, l
    jp $14B8


    nop
    jp hl


    ld a, e
    db $FD
    nop
    adc h
    ret c

    sub b
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, [hl]
    call nz, $0676
    adc h
    pop bc
    db $E3
    dec b
    ld h, $80
    ld c, h
    cp $01
    ld e, [hl]
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    res 1, h
    ret c

    sub b

jr_031_4D30:
    ld b, l
    ld d, l
    adc e
    db $EC
    ld e, $8E
    ret c

    ld d, [hl]
    ld d, a
    adc e
    ld c, [hl]
    ld b, $83
    ld sp, hl
    and $77
    ld l, c
    ld e, $A1
    ret nz

jr_031_4D44:
    nop
    dec bc
    ret nz

    ld [hl], h
    ld c, b
    cp a
    ld e, [hl]
    add hl, bc
    adc e
    ld [hl], $C8
    nop
    push bc
    ld e, $C2
    nop
    ld e, $56
    ld d, a
    rst $38
    rst $10
    ld e, a
    ld e, [hl]
    ld [hl], e
    dec hl
    adc h
    jp c, Jump_031_5FC5

    ld c, $3B
    sub $75
    rst $28
    ld e, b
    rra
    ld e, $C4
    ld [hl], $C2
    nop
    ld h, $8B
    ld [hl], h
    inc d
    push bc
    ld e, $BE
    nop
    adc h
    jp c, $D03B

    ld [hl], l
    reti


    rra
    ld e, $81
    rst $38
    xor [hl]
    ld b, $74
    ld c, $BF
    xor [hl]
    ld b, $EB
    call nz, $815E
    rst $38
    ld e, [hl]
    add hl, bc
    ld [hl], h
    rrca
    db $EB
    ld a, [bc]
    rlca
    ld b, $BF
    cp [hl]
    nop
    add sp, $21
    ld bc, $0E72
    add sp, -$60
    nop
    rra
    adc c
    ld d, $C4
    nop
    adc c
    ld e, $C2
    nop
    db $EB
    jr nz, jr_031_4DC9

    inc sp
    ret nz

    sbc c
    adc e
    ld c, $BC
    nop
    dec bc
    ld c, $BA
    nop
    ld [hl], h
    ld [de], a
    rst $38
    halt
    ld b, $FF
    ld e, $BA
    nop
    add e
    call nz, $9902
    dec bc
    ret nz

    ld [hl], h
    inc bc
    jp hl


    ld [hl], b
    rst $38

jr_031_4DC9:
    ld e, a
    ld e, [hl]
    add e
    db $ED
    ld [bc], a
    adc e
    push hl
    rra
    ld e, l
    ld c, l
    rlc [hl]
    ld d, a
    adc e
    ld hl, sp+$03
    ei
    adc c
    ld a, a
    inc b
    ld c, a
    ld c, a
    add e
    add sp, $18
    adc l
    ld [hl], a
    ld d, $C7
    dec b
    cp $FF
    adc c
    ld a, a
    inc c
    ld c, b
    adc c
    inc b
    adc h
    rra
    adc e
    add $8C
    jp c, $C28E

    adc l
    ld a, a
    ld [$ABFC], sp
    xor e
    ld b, a
    ld b, a
    inc sp
    ret nz

    xor e
    xor e
    xor e

Jump_031_4E04:
    xor e
    ld e, a
    rlca
    jp $8B26


    ld b, l
    ld [bc], a
    dec bc
    ret nz

    ld [hl], l
    add hl, bc
    ld h, $8C
    ld e, l
    ld [bc], a
    ld h, $89
    dec e
    db $EB
    inc d
    ld b, $26
    call nz, $0875
    ld h, $8C
    ld e, h
    db $10
    ld h, $89
    ld e, h
    ld c, $8C
    ld b, a
    inc d
    adc c
    ld [hl], a
    ld [de], a
    rlca
    ld h, $8C
    ld e, l
    ld a, [bc]
    ld h, $89
    ld e, l
    ld [$8C26], sp
    ld e, l
    ld b, $26
    adc c
    ld e, l
    inc b
    jp $8041


    pop hl
    cp $53
    db $FC
    adc e
    ld [hl], a
    ld a, [bc]
    adc e
    ld e, a
    inc c
    inc sp
    rst $38
    db $EB
    inc hl
    adc e
    jp $A85B


    ld bc, $4275
    ld d, e
    adc e
    ld [hl], a
    ld [$5F8B], sp
    ld a, [bc]
    dec sp
    sbc $74
    ld [hl], $4B
    inc sp
    rst $38
    db $EB
    inc c
    sub b
    adc l
    ld d, h
    cp $3B
    db $D3
    ld [hl], e
    pop hl
    inc bc
    ldh a, [$72]
    inc hl
    xor l
    xor b
    ld bc, $F074
    adc e
    cp $48
    dec sp
    pop bc
    ld [hl], e
    inc hl
    inc bc
    ldh a, [$72]
    inc de
    adc e
    ret nc

    xor l
    xor b
    ld bc, $DE74
    inc bc
    jp nz, $C083

    ld [bc], a
    adc e
    rst $30
    adc c
    ld b, h
    cp $EB
    db $E4
    adc e
    ret nz

    ld e, e
    adc e
    ld b, a
    ld [$4789], sp
    ld a, [bc]
    ld sp, hl
    db $EB
    add hl, de
    ld e, e
    adc c
    ld c, h
    cp $74
    add hl, bc
    inc bc
    ld sp, hl
    dec hl
    pop bc
    ld c, b
    adc c
    dec b
    dec hl
    ld sp, hl
    inc bc
    ld sp, hl
    adc c
    ld a, a
    ld a, [bc]
    adc e
    add $8C
    jp c, $C3F8

    adc e
    pop de
    add c
    jp nz, $1019

    add c
    ld [c], a
    nop
    ldh a, [rHDMA1]
    ld b, $2E
    adc e
    ld e, $5C
    nop
    inc sp
    ret


    dec bc
    jp nc, $0775

    rst $30
    jp RST_10


    ld [hl], l
    ld h, b
    ld b, c
    ld d, e
    cp b
    ld [bc], a
    nop
    rst $30
    jp $0001


    ld [hl], l
    inc bc
    cp b
    jr nz, jr_031_4EE5

jr_031_4EE5:
    ld d, b
    ld d, c
    ld d, d
    sbc d
    rst $38
    rst $38
    nop
    nop
    ld e, e
    dec bc
    ret nz

    ld [hl], h
    ld b, l
    ld d, b
    rst $30
    jp $0001


    ld [hl], h
    db $10
    ld d, b
    sbc d
    rst $38
    rst $38
    nop
    nop
    dec bc
    ret nz

    ld [hl], l
    ld l, $0B
    jp nz, $2A74

    adc e
    jp nz, $D88E

    ld d, b
    sbc d
    add b
    rlca
    nop
    nop
    dec bc
    ret nc

    ld [hl], h
    inc e
    adc e
    ret nc

    ld e, b
    rlca
    ld e, c
    inc sp
    db $DB
    adc c
    ld b, a
    ld b, $26
    adc e
    ld b, l
    inc c
    adc c
    ld b, a
    ld [bc], a
    adc e
    jp nz, $A9E8

    cp $E8
    jp c, $F8FE

    db $EB
    add hl, bc
    cp b
    ld [de], a
    nop
    jp hl


    ld c, a
    ei
    rlca
    ld e, c
    ld sp, hl
    jp $0012


    ld [bc], a
    nop
    db $DD
    ld b, $01
    nop
    nop
    nop
    inc bc
    ld bc, $05E4
    ld bc, $0100
    nop
    inc bc
    ld bc, $009E
    ld bc, $0300
    nop
    inc bc
    ld bc, $04F1
    ld bc, $8300
    nop
    inc bc
    ld bc, $003B
    ld [bc], a
    nop
    ld bc, $0300
    ld bc, $05DB
    ld bc, $8900
    nop
    inc bc
    ld bc, $00DE
    ld [bc], a
    nop
    dec b
    nop
    inc bc
    ld bc, $0A09
    ld bc, $0F00
    nop
    inc bc
    ld bc, $0772
    ld bc, $1000
    nop
    inc bc
    ld bc, $0A1B
    ld bc, $1200
    nop
    inc bc
    ld bc, $0A2D
    ld bc, $1400
    nop
    inc bc
    ld bc, $0099
    ld bc, $1700
    nop
    inc bc
    ld bc, $00D5
    ld bc, $1E00
    nop
    inc bc
    ld bc, $035D
    ld bc, $3100
    nop
    dec b
    ld bc, $005C
    ld bc, $B200
    nop
    inc bc
    ld bc, $0026
    ld bc, $5000
    ld bc, $0103
    ld l, d
    nop
    ld bc, $5B00
    nop
    inc bc
    ld bc, $02F0
    ld bc, $6600
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    nop
    ld b, d
    ld h, c
    ld h, h
    jr nz, jr_031_5048

    ld d, e
    ld d, e
    jr nz, jr_031_5062

    ld l, a
    ld h, h
    ld h, l
    jr nz, jr_031_5074

Jump_031_5004:
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

Call_031_500A:
    ld l, $00
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    ld e, a
    ld b, e
    ld e, a
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, l
    ld e, a
    ld c, c
    ld c, [hl]
    ld b, [hl]
    ld c, a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5048:
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc d
    nop
    inc d
    nop
    jr z, jr_031_5054

jr_031_5054:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5062:
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5074:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld c, [hl]
    ld c, l
    ld d, e
    ld b, a
    ld a, $3E
    nop
    nop
    ld d, d
    ld [hl], $30
    jr nc, jr_031_50F9

    dec c
    ld a, [bc]
    dec l
    jr nz, jr_031_5141

    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$71

    halt
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld l, h
    ld l, a
    ld [hl], a
    dec c
    ld a, [bc]
    nop
    inc bc
    nop
    ld d, d
    ld [hl], $30
    jr nc, jr_031_5118

    dec c
    ld a, [bc]
    dec l
    jr nz, jr_031_5153

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_031_5156

    ld l, c
    halt
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$64

jr_031_50F9:
    ld a, c
    jr nz, jr_031_512C

    dec c
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld d, d
    ld [hl], $30
    jr nc, jr_031_513F

    dec c
    ld a, [bc]
    dec l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, jr_031_5174

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_031_5189

    ld [hl], b
    ld h, c

jr_031_5118:
    ld h, e
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_031_5185

    ld l, [hl]
    halt
    ld l, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec c
    ld a, [bc]

jr_031_512C:
    nop
    ld [de], a
    nop
    ld d, d
    ld [hl], $30
    ld sp, $0D38
    ld a, [bc]
    dec l
    jr nz, @+$77

    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld h, e

jr_031_513F:
    ld [hl], h
    ld h, l

jr_031_5141:
    ld h, h
    jr nz, jr_031_51AC

    ld h, l
    ld h, c
    ld [hl], b
    jr nz, @+$67

    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    dec c
    ld a, [bc]
    nop
    inc d
    nop
    ld d, d

jr_031_5153:
    ld [hl], $30
    ld [hl-], a

jr_031_5156:
    jr nc, jr_031_5165

    ld a, [bc]
    dec l
    jr nz, jr_031_51D1

    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h

jr_031_5165:
    jr nz, jr_031_51B8

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    ld d, a
    ld l, c
    ld l, [hl]
    jr nz, jr_031_51D5

    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d

jr_031_5174:
    dec c
    ld a, [bc]
    nop
    ld [$5200], sp
    ld [hl], $30
    jr nc, @+$3A

    dec c
    ld a, [bc]
    dec l
    jr nz, jr_031_51F1

    ld l, a
    ld [hl], h

jr_031_5185:
    jr nz, jr_031_51EC

    ld l, [hl]
    ld l, a

jr_031_5189:
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_031_5201

    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_031_51FA

    ld l, a
    ld [hl], d
    jr nz, jr_031_51F9

    ld [hl], d
    ld h, a
    ld [hl], l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    dec c
    ld a, [bc]
    nop
    dec d
    nop
    ld d, d
    ld [hl], $30
    ld [hl-], a
    ld sp, $0A0D

jr_031_51AC:
    dec l
    jr nz, jr_031_521D

    ld l, a
    jr nz, jr_031_521F

    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_031_5227

    ld [hl], d

jr_031_51B8:
    ld l, a
    ld h, e
    ld h, l
    ld h, h
    ld [hl], l
    ld [hl], d
    ld h, l
    dec c
    ld a, [bc]
    nop
    db $FC
    nop
    dec c
    ld a, [bc]
    nop
    rst $38
    nop
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    dec l
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l

jr_031_51D1:
    jr nz, jr_031_5238

    ld [hl], d
    ld [hl], d

jr_031_51D5:
    ld l, a
    ld [hl], d
    jr nz, jr_031_51D9

jr_031_51D9:
    ld [bc], a
    nop
    ld d, d
    ld [hl], $30
    jr nc, jr_031_5212

    dec c
    ld a, [bc]
    dec l
    jr nz, jr_031_524B

    ld l, h
    ld l, a
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_031_51EC:
    dec l
    ld [hl], b
    ld l, a
    ld l, c
    ld l, [hl]

jr_031_51F1:
    ld [hl], h
    jr nz, jr_031_5267

    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], d

jr_031_51F9:
    ld [hl], h

jr_031_51FA:
    jr nz, jr_031_526A

    ld l, a
    ld [hl], h
    jr nz, jr_031_526C

    ld l, a

jr_031_5201:
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    dec c
    ld a, [bc]
    nop
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

jr_031_5212:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_521D:
    nop
    nop

jr_031_521F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5227:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5238:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_524B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5267:
    nop
    nop
    nop

jr_031_526A:
    nop
    nop

jr_031_526C:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5439

    jr nc, @+$35

    ld h, c
    inc sp
    add hl, sp
    add hl, sp
    ld h, h
    jr nz, jr_031_5442

    jr nc, jr_031_5444

    jr nc, @+$64

    inc [hl]
    ld [hl-], a
    ld h, e
    jr nz, jr_031_5449

    jr nc, jr_031_544B

    jr nc, jr_031_544D

    jr nc, jr_031_544F

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_544D

    jr nz, jr_031_544F

    jr nz, jr_031_5451

    jr nz, @+$71

    ld h, a
    ld h, a
    ld l, a
    ld l, e
    ld e, a
    ld l, a

jr_031_5439:
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_54A7

    dec [hl]

jr_031_5442:
    scf
    inc sp

jr_031_5444:
    ld h, l
    jr c, jr_031_54AB

    ld [hl], $20

jr_031_5449:
    ld h, [hl]
    dec [hl]

jr_031_544B:
    scf
    scf

jr_031_544D:
    dec [hl]
    ld [hl-], a

jr_031_544F:
    dec [hl]
    scf

jr_031_5451:
    jr nz, @+$32

    jr nc, jr_031_5485

    jr nc, jr_031_5487

    jr nc, jr_031_5489

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5498

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5487

    jr nz, jr_031_5489

    ld l, a
    ld h, a
    ld h, a
    ld l, a
    ld l, e
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_54AE

    ld [hl-], a
    jr c, jr_031_54B7

    ld [hl], $35
    inc sp
    ld [hl-], a
    jr nz, jr_031_54B7

    ld [hl-], a

jr_031_5485:
    jr c, jr_031_54C0

jr_031_5487:
    ld [hl], $35

jr_031_5489:
    ld [hl], $34
    jr nz, @+$32

    jr nc, jr_031_54BF

    jr nc, jr_031_54C1

    jr nc, jr_031_54C3

    inc sp
    jr nz, jr_031_54C6

    jr nc, jr_031_54C8

jr_031_5498:
    jr nc, jr_031_54CA

    jr nc, jr_031_54CC

    jr nc, jr_031_54CE

    ld a, [bc]
    jr nz, jr_031_54C1

    jr nz, jr_031_54C3

    ld l, a
    ld h, a
    ld h, a
    ld l, a

jr_031_54A7:
    ld l, e
    ld e, a
    ld [hl], e
    ld l, a

jr_031_54AB:
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_031_54AE:
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$65

    ld [hl-], a
    inc [hl]

jr_031_54B7:
    add hl, sp
    add hl, sp
    jr nc, @+$3B

    dec [hl]
    jr nz, jr_031_5521

    ld [hl-], a

jr_031_54BF:
    inc [hl]

jr_031_54C0:
    add hl, sp

jr_031_54C1:
    add hl, sp
    ld [hl-], a

jr_031_54C3:
    inc [hl]
    jr c, jr_031_54E6

jr_031_54C6:
    jr nc, jr_031_54F8

jr_031_54C8:
    jr nc, jr_031_54FA

jr_031_54CA:
    jr nc, @+$32

jr_031_54CC:
    jr nc, jr_031_5501

jr_031_54CE:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_5508

    ld a, [bc]
    jr nz, jr_031_54FB

    jr nz, jr_031_54FD

    jr nz, jr_031_54FF

    ld l, a
    ld l, h
    ld h, h
    ld e, a
    ld h, l
    ld [hl], c
    ld l, [hl]

jr_031_54E6:
    ld h, l
    ld [hl], a
    ld [hl], e
    ld l, $74
    ld a, b
    ld [hl], h
    jr nz, jr_031_5553

    scf
    ld h, h
    ld h, [hl]
    inc [hl]
    ld [hl], $35
    ld h, [hl]
    jr nz, jr_031_555C

jr_031_54F8:
    scf
    ld h, h

jr_031_54FA:
    ld h, [hl]

jr_031_54FB:
    ld [hl], $64

jr_031_54FD:
    ld h, e
    ld h, d

jr_031_54FF:
    jr nz, jr_031_5531

jr_031_5501:
    jr nc, @+$32

    jr nc, jr_031_5535

    jr nc, jr_031_5537

    ld [hl-], a

jr_031_5508:
    jr nz, jr_031_553A

    jr nc, jr_031_553C

    jr nc, jr_031_553E

    jr nc, jr_031_5540

    jr nc, jr_031_5542

    ld a, [bc]
    jr nz, jr_031_5535

    jr nz, jr_031_5537

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$71

jr_031_5521:
    ld l, a
    ld [hl], h
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$67

    ld sp, $6533
    ld h, h
    add hl, sp
    ld h, d
    ld [hl], $20

jr_031_5531:
    ld h, l
    ld sp, $6232

jr_031_5535:
    ld h, [hl]
    ld h, e

jr_031_5537:
    scf
    ld [hl], $20

jr_031_553A:
    jr nc, jr_031_556C

jr_031_553C:
    jr nc, @+$32

jr_031_553E:
    jr nc, jr_031_5570

jr_031_5540:
    jr nc, @+$33

jr_031_5542:
    jr nz, jr_031_5574

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5580

    ld h, d
    ld a, [bc]
    jr nz, jr_031_556F

    jr nz, jr_031_5571

    jr nz, @+$22

jr_031_5553:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$71

    ld l, a

jr_031_555C:
    ld [hl], h
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_55D1

jr_031_556C:
    add hl, sp
    ld [hl], $63

jr_031_556F:
    ld h, e

jr_031_5570:
    ld h, [hl]

jr_031_5571:
    dec [hl]
    jr nc, jr_031_5594

jr_031_5574:
    jr nc, jr_031_55A6

    jr nc, jr_031_55A8

    jr nc, jr_031_55AA

    jr nc, @+$34

    jr nz, @+$32

    jr nc, @+$32

jr_031_5580:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_55A9

    jr nz, @+$22

    jr nz, jr_031_55AD

    jr nz, jr_031_55AF

    jr nz, @+$71

    ld l, a
    ld [hl], h
    ld e, a

jr_031_5594:
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$3B

    jr nc, @+$35

    jr nc, jr_031_5603

    ld [hl-], a
    ld [hl], $31
    jr nz, jr_031_55DF

jr_031_55A6:
    jr nc, jr_031_55D9

jr_031_55A8:
    dec [hl]

jr_031_55A9:
    ld h, h

jr_031_55AA:
    ld sp, $3263

jr_031_55AD:
    jr nz, jr_031_55DF

jr_031_55AF:
    jr nc, jr_031_55E1

    jr nc, @+$32

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_55E7

    jr nz, jr_031_55E9

    jr nz, @+$71

    ld l, a
    ld [hl], h
    ld e, a
    ld l, a
    ld h, d
    ld l, d

jr_031_55D1:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_560A

    ld [hl-], a
    add hl, sp

jr_031_55D9:
    ld h, c
    ld sp, $3662
    jr c, jr_031_55FF

jr_031_55DF:
    inc sp
    ld [hl-], a

jr_031_55E1:
    add hl, sp
    jr nc, jr_031_5648

    ld sp, $3537

jr_031_55E7:
    jr nz, @+$32

jr_031_55E9:
    jr nc, jr_031_561B

    jr nc, jr_031_561D

    jr nc, jr_031_561F

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_562E

    ld h, d
    ld a, [bc]
    jr nz, jr_031_561D

    jr nz, jr_031_561F

jr_031_55FF:
    jr nz, @+$22

    ld l, a
    ld l, a

jr_031_5603:
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]

jr_031_560A:
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$63

    add hl, sp
    ld [hl], $65
    inc [hl]
    ld h, d
    scf
    dec [hl]
    jr nz, jr_031_567B

    add hl, sp

jr_031_561B:
    ld [hl], $65

jr_031_561D:
    inc [hl]
    ld h, d

jr_031_561F:
    ld [hl-], a
    jr nc, jr_031_5642

    jr nc, jr_031_5654

    jr nc, jr_031_5656

    jr nc, jr_031_5658

    jr nc, jr_031_565D

    jr nz, @+$32

    jr nc, @+$32

jr_031_562E:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_5664

    ld a, [bc]
    jr nz, jr_031_5657

    jr nz, jr_031_5659

    jr nz, jr_031_565B

    ld l, a
    ld l, a
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l

jr_031_5642:
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]

jr_031_5648:
    ld h, [hl]
    jr nz, @+$65

    ld h, h
    dec [hl]
    ld h, l
    ld h, d
    add hl, sp
    ld h, c
    inc sp
    jr nz, jr_031_56B7

jr_031_5654:
    ld h, h
    dec [hl]

jr_031_5656:
    ld h, l

jr_031_5657:
    ld h, d

jr_031_5658:
    ld h, [hl]

jr_031_5659:
    add hl, sp
    add hl, sp

jr_031_565B:
    jr nz, jr_031_568D

jr_031_565D:
    jr nc, jr_031_568F

    jr nc, jr_031_5691

    jr nc, jr_031_5693

    inc sp

jr_031_5664:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_569E

    ld a, [bc]
    jr nz, jr_031_5691

    jr nz, jr_031_5693

    jr nz, jr_031_5695

    jr nz, jr_031_5697

    jr nz, jr_031_5699

    ld l, a
    ld [hl], b

jr_031_567B:
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_56B5

    jr nc, jr_031_56BD

    ld [hl], $36
    inc sp
    ld sp, $2030

jr_031_568D:
    jr nc, jr_031_56BF

jr_031_568F:
    ld [hl], $36

jr_031_5691:
    scf
    ld h, h

jr_031_5693:
    ld h, e
    scf

jr_031_5695:
    jr nz, @+$32

jr_031_5697:
    jr nc, jr_031_56C9

jr_031_5699:
    jr nc, jr_031_56CB

    jr nc, jr_031_56CD

    inc sp

jr_031_569E:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_56D8

    ld a, [bc]
    jr nz, jr_031_56CB

    jr nz, jr_031_56CD

    jr nz, jr_031_56CF

    jr nz, jr_031_56D1

    jr nz, @+$71

    ld [hl], b
    ld h, l

jr_031_56B5:
    ld l, [hl]
    ld h, l

jr_031_56B7:
    ld [hl], d
    ld [hl-], a
    ld l, $78
    ld l, l
    ld l, c

jr_031_56BD:
    jr nz, jr_031_56F7

jr_031_56BF:
    ld h, h
    jr nc, jr_031_56F7

    ld h, h
    ld sp, $3538
    jr nz, @+$3A

    ld h, h

jr_031_56C9:
    jr nc, @+$37

jr_031_56CB:
    add hl, sp
    inc [hl]

jr_031_56CD:
    ld h, h
    scf

jr_031_56CF:
    jr nz, jr_031_5701

jr_031_56D1:
    jr nc, jr_031_5703

    jr nc, jr_031_5705

    jr nc, @+$32

    inc sp

jr_031_56D8:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_5712

    ld a, [bc]
    jr nz, jr_031_5705

    jr nz, @+$22

    jr nz, jr_031_5709

    jr nz, jr_031_570B

    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    inc sp
    ld l, $78
    ld l, l
    ld l, c

jr_031_56F7:
    jr nz, @+$67

    ld h, d
    ld [hl-], a
    ld h, l
    ld [hl], $34
    ld sp, $2034

jr_031_5701:
    ld h, l
    ld h, d

jr_031_5703:
    ld [hl-], a
    ld h, l

jr_031_5705:
    ld [hl-], a
    ld sp, $6165

jr_031_5709:
    jr nz, @+$32

jr_031_570B:
    jr nc, jr_031_573D

    jr nc, jr_031_573F

    jr nc, jr_031_5741

    inc sp

jr_031_5712:
    jr nz, jr_031_5744

    jr nc, jr_031_5746

    jr nc, jr_031_5748

    jr nc, jr_031_574A

    jr nc, jr_031_574C

    ld a, [bc]
    jr nz, jr_031_573F

    jr nz, jr_031_5741

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    inc [hl]
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$67

    dec [hl]
    jr nc, jr_031_576D

    ld h, [hl]
    ld [hl], $33
    ld h, l
    jr nz, jr_031_57A1

    dec [hl]

jr_031_573D:
    jr nc, jr_031_5776

jr_031_573F:
    ld h, c
    ld h, e

jr_031_5741:
    ld sp, $2066

jr_031_5744:
    jr nc, jr_031_5776

jr_031_5746:
    jr nc, jr_031_5778

jr_031_5748:
    jr nc, jr_031_577A

jr_031_574A:
    jr nc, jr_031_577F

jr_031_574C:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_5786

    ld a, [bc]
    jr nz, jr_031_5779

    jr nz, @+$22

    jr nz, jr_031_577D

    jr nz, jr_031_577F

    jr nz, jr_031_5781

    jr nz, jr_031_5783

    ld l, a
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld l, $64
    ld h, c
    ld [hl], h
    jr nz, jr_031_57A4

jr_031_576D:
    ld h, [hl]
    scf
    inc sp
    dec [hl]
    inc sp
    ld sp, $2038
    scf

jr_031_5776:
    ld h, [hl]
    scf

jr_031_5778:
    ld [hl-], a

jr_031_5779:
    scf

jr_031_577A:
    ld sp, $6339

jr_031_577D:
    jr nz, @+$32

jr_031_577F:
    jr nc, jr_031_57B1

jr_031_5781:
    jr nc, jr_031_57B3

jr_031_5783:
    jr nc, jr_031_57B5

    inc sp

jr_031_5786:
    jr nz, jr_031_57B8

    jr nc, jr_031_57BA

    jr nc, jr_031_57BC

    jr nc, jr_031_57BE

    jr nc, jr_031_57C0

    ld a, [bc]
    jr nz, jr_031_57B3

    jr nz, jr_031_57B5

    jr nz, @+$22

    jr nz, @+$71

    halt
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_031_57A1:
    ld l, $78
    ld l, l

jr_031_57A4:
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_5815

    add hl, sp

jr_031_57B1:
    ld [hl], $63

jr_031_57B3:
    ld h, e
    ld h, [hl]

jr_031_57B5:
    dec [hl]
    jr nc, jr_031_57D8

jr_031_57B8:
    jr nc, jr_031_57EA

jr_031_57BA:
    jr nc, jr_031_57EC

jr_031_57BC:
    jr nc, @+$32

jr_031_57BE:
    jr nc, @+$34

jr_031_57C0:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_57FA

    ld a, [bc]
    jr nz, jr_031_57ED

    jr nz, jr_031_583E

    halt
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld e, a

jr_031_57D8:
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$33

    ld [hl-], a
    ld [hl-], a
    ld h, e
    scf
    dec [hl]
    ld h, h
    scf
    jr nz, jr_031_581B

jr_031_57EA:
    ld [hl-], a
    inc sp

jr_031_57EC:
    ld h, [hl]

jr_031_57ED:
    ld [hl], $36
    jr c, jr_031_5824

    jr nz, @+$32

    jr nc, jr_031_5825

    jr nc, jr_031_5827

    jr nc, jr_031_5829

    ld [hl-], a

jr_031_57FA:
    jr nz, jr_031_582C

    inc sp
    jr c, @+$63

    add hl, sp
    jr c, @+$65

    ld h, d
    jr nc, jr_031_580F

    jr nz, jr_031_5827

    jr nz, jr_031_5829

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

jr_031_580F:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_5885

jr_031_5815:
    ld l, $64
    ld h, c
    ld [hl], h
    jr nz, @+$67

jr_031_581B:
    ld h, c
    ld h, l
    inc sp
    ld h, [hl]
    add hl, sp
    ld h, c
    ld h, l
    jr nz, jr_031_5889

jr_031_5824:
    ld h, c

jr_031_5825:
    ld h, l
    ld [hl-], a

jr_031_5827:
    ld h, h
    ld h, [hl]

jr_031_5829:
    inc sp
    jr nc, jr_031_584C

jr_031_582C:
    jr nc, jr_031_585E

    jr nc, @+$32

    jr nc, jr_031_5862

    jr nc, @+$35

    jr nz, jr_031_5866

    jr nc, jr_031_5868

    jr nc, jr_031_586A

    jr nc, jr_031_586C

    jr nc, jr_031_586E

jr_031_583E:
    ld a, [bc]
    jr nz, jr_031_5861

    jr nz, jr_031_5863

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_58B9

    ld h, c
    ld l, c
    ld l, [hl]

jr_031_584C:
    ld h, l
    ld h, l
    ld l, h
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_58C3

jr_031_585E:
    add hl, sp
    ld [hl], $63

jr_031_5861:
    ld h, e

jr_031_5862:
    ld h, [hl]

jr_031_5863:
    dec [hl]
    jr nc, @+$22

jr_031_5866:
    jr nc, jr_031_5898

jr_031_5868:
    jr nc, jr_031_589A

jr_031_586A:
    jr nc, @+$32

jr_031_586C:
    jr nc, @+$34

jr_031_586E:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_589B

    jr nz, jr_031_589D

    jr nz, jr_031_589F

    jr nz, jr_031_58A1

    jr nz, jr_031_58A3

    jr nz, jr_031_58A5

jr_031_5885:
    jr nz, jr_031_58F7

    ld h, c
    ld [hl], a

jr_031_5889:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_58C6

    ld h, l
    dec [hl]
    ld h, l
    jr nc, jr_031_58F5

    inc [hl]
    ld h, [hl]
    jr nz, @+$39

jr_031_5898:
    ld h, l
    inc [hl]

jr_031_589A:
    inc sp

jr_031_589B:
    ld [hl], $37

jr_031_589D:
    jr nc, jr_031_58D4

jr_031_589F:
    jr nz, @+$32

jr_031_58A1:
    jr nc, @+$32

jr_031_58A3:
    jr nc, jr_031_58D5

jr_031_58A5:
    jr nc, jr_031_58D7

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_58E6

    ld h, d
    ld a, [bc]
    jr nz, jr_031_58D5

    jr nz, jr_031_58D7

    jr nz, jr_031_58D9

jr_031_58B9:
    jr nz, jr_031_58DB

    jr nz, jr_031_58DD

    jr nz, jr_031_58DF

    jr nz, jr_031_5931

    ld h, c
    ld [hl], a

jr_031_58C3:
    ld l, $78
    ld l, l

jr_031_58C6:
    ld l, c
    jr nz, jr_031_5901

    jr c, @+$67

    ld h, c
    ld h, d
    ld h, e
    jr c, jr_031_5931

    jr nz, @+$3A

    jr c, jr_031_5939

jr_031_58D4:
    ld h, c

jr_031_58D5:
    ld h, c
    ld h, c

jr_031_58D7:
    inc sp
    ld h, h

jr_031_58D9:
    jr nz, jr_031_590B

jr_031_58DB:
    jr nc, jr_031_590D

jr_031_58DD:
    jr nc, @+$32

jr_031_58DF:
    jr nc, jr_031_5911

    inc sp
    jr nz, jr_031_5914

    jr nc, jr_031_5916

jr_031_58E6:
    jr nc, jr_031_5918

    jr nc, jr_031_591A

    jr nc, jr_031_591C

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_5911

    jr nz, @+$22

    jr nz, @+$22

jr_031_58F5:
    jr nz, jr_031_5967

jr_031_58F7:
    ld h, c
    ld [hl], a
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h

jr_031_5901:
    jr nz, @+$37

    scf
    ld h, h
    add hl, sp
    ld h, e
    add hl, sp
    dec [hl]
    jr nc, jr_031_592B

jr_031_590B:
    dec [hl]
    scf

jr_031_590D:
    ld h, [hl]
    jr c, jr_031_5946

    ld h, c

jr_031_5911:
    ld h, c
    jr c, jr_031_5934

jr_031_5914:
    jr nc, jr_031_5946

jr_031_5916:
    jr nc, jr_031_5948

jr_031_5918:
    jr nc, jr_031_594A

jr_031_591A:
    jr nc, @+$33

jr_031_591C:
    jr nz, jr_031_594E

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5949

    jr nz, jr_031_594B

jr_031_592B:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_59A1

jr_031_5931:
    ld h, c
    ld [hl], a
    ld e, a

jr_031_5934:
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_5939:
    inc sp
    ld h, h
    jr nz, @+$63

    ld [hl], $35
    inc [hl]
    inc [hl]
    inc sp
    ld h, e
    dec [hl]
    jr nz, jr_031_59A7

jr_031_5946:
    ld [hl], $35

jr_031_5948:
    scf

jr_031_5949:
    dec [hl]

jr_031_594A:
    ld h, l

jr_031_594B:
    ld h, c
    ld [hl], $20

jr_031_594E:
    jr nc, jr_031_5980

    jr nc, jr_031_5982

    jr nc, jr_031_5984

    jr nc, jr_031_5987

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5994

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5983

    jr nz, jr_031_5985

    jr nz, jr_031_5987

jr_031_5967:
    ld [hl], b
    ld h, c
    ld [hl], a
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_59AA

    ld h, c
    ld h, c
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, d
    jr nz, jr_031_59B3

jr_031_5980:
    ld h, c
    ld h, c

jr_031_5982:
    ld h, l

jr_031_5983:
    ld h, [hl]

jr_031_5984:
    ld h, l

jr_031_5985:
    ld h, e
    inc sp

jr_031_5987:
    jr nz, @+$32

    jr nc, jr_031_59BB

    jr nc, @+$32

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_5994:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_59CA

    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_59C1

jr_031_59A1:
    ld [hl], b
    ld h, c
    ld [hl], a
    ld e, a
    ld [hl], e
    ld l, a

jr_031_59A7:
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_031_59AA:
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_59E4

    ld h, h
    add hl, sp

jr_031_59B3:
    jr nc, jr_031_59EE

    ld sp, $3563
    jr nz, jr_031_59ED

    ld h, h

jr_031_59BB:
    add hl, sp
    jr nc, jr_031_59F7

    jr nc, jr_031_59F7

    ld h, e

jr_031_59C1:
    jr nz, @+$32

    jr nc, jr_031_59F5

    jr nc, jr_031_59F7

    jr nc, jr_031_59F9

    inc sp

jr_031_59CA:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_59F7

    jr nz, jr_031_59F9

    jr nz, jr_031_59FB

    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e

jr_031_59E4:
    ld [hl], h
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$37

    add hl, sp
    inc [hl]

jr_031_59ED:
    ld [hl-], a

jr_031_59EE:
    jr c, @+$39

    jr nc, jr_031_5A58

    jr nz, jr_031_5A29

    add hl, sp

jr_031_59F5:
    dec [hl]
    ld h, [hl]

jr_031_59F7:
    dec [hl]
    ld h, l

jr_031_59F9:
    jr nc, jr_031_5A33

jr_031_59FB:
    jr nz, @+$32

    jr nc, jr_031_5A2F

    jr nc, jr_031_5A31

    jr nc, jr_031_5A33

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5A42

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5A31

    jr nz, jr_031_5A33

    jr nz, @+$22

    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_5A8A

    add hl, sp
    ld [hl], $63
    ld h, e

jr_031_5A29:
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_5A93

    add hl, sp

jr_031_5A2F:
    ld [hl], $63

jr_031_5A31:
    ld h, e
    ld h, [hl]

jr_031_5A33:
    dec [hl]
    jr nc, jr_031_5A56

    jr nc, jr_031_5A68

    jr nc, jr_031_5A6A

    jr nc, jr_031_5A6C

    jr nc, @+$34

    jr nz, @+$32

    jr nc, @+$32

jr_031_5A42:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_5A6B

    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], h
    ld e, a

jr_031_5A56:
    ld h, e
    ld l, b

jr_031_5A58:
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5AC0

    jr nc, jr_031_5AC2

    ld h, e
    ld h, [hl]
    ld [hl-], a
    inc sp
    dec [hl]
    jr nz, jr_031_5AC9

jr_031_5A68:
    jr nc, jr_031_5AA2

jr_031_5A6A:
    ld h, c

jr_031_5A6B:
    ld [hl-], a

jr_031_5A6C:
    ld h, l
    ld h, l
    ld h, [hl]
    jr nz, @+$32

    jr nc, jr_031_5AA3

    jr nc, @+$32

    jr nc, jr_031_5AA7

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$22

    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c

jr_031_5A8A:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], h
    ld e, a
    ld l, a
    ld h, d
    ld l, d

jr_031_5A93:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5ACB

    dec [hl]
    ld h, d
    add hl, sp
    ld h, [hl]
    ld h, [hl]
    ld [hl], $63
    jr nz, jr_031_5AD4

jr_031_5AA2:
    dec [hl]

jr_031_5AA3:
    ld h, d
    ld sp, $6365

jr_031_5AA7:
    jr c, jr_031_5ADB

    jr nz, jr_031_5ADB

    jr nc, jr_031_5ADD

    jr nc, @+$32

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    ld [hl], b
    ld h, l
    ld [hl], d

jr_031_5AC0:
    ld l, l
    ld h, c

jr_031_5AC2:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], h
    ld e, a
    ld [hl], e

jr_031_5AC9:
    ld l, [hl]
    ld h, h

jr_031_5ACB:
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_5B09

jr_031_5AD4:
    ld sp, $3231
    ld [hl], $35
    add hl, sp
    ld h, [hl]

jr_031_5ADB:
    jr nz, jr_031_5B12

jr_031_5ADD:
    ld sp, $3231
    ld [hl], $35
    ld h, c
    ld [hl-], a
    jr nz, jr_031_5B16

    jr nc, jr_031_5B18

    jr nc, jr_031_5B1A

    jr nc, jr_031_5B1C

    inc sp
    jr nz, jr_031_5B1F

    jr nc, jr_031_5B21

    jr nc, jr_031_5B23

    jr nc, jr_031_5B25

    jr nc, jr_031_5B27

    ld a, [bc]
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, l
    ld h, c
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_031_5B09:
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$3B

    ld h, c
    ld [hl-], a
    inc [hl]

jr_031_5B12:
    ld h, l
    ld [hl-], a
    dec [hl]
    ld [hl-], a

jr_031_5B16:
    jr nz, jr_031_5B51

jr_031_5B18:
    ld h, c
    ld [hl-], a

jr_031_5B1A:
    inc [hl]
    ld h, l

jr_031_5B1C:
    ld sp, $3166

jr_031_5B1F:
    jr nz, jr_031_5B51

jr_031_5B21:
    jr nc, @+$32

jr_031_5B23:
    jr nc, jr_031_5B55

jr_031_5B25:
    jr nc, @+$32

jr_031_5B27:
    inc sp
    jr nz, jr_031_5B5A

    jr nc, jr_031_5B5C

    jr nc, jr_031_5B5E

    jr nc, jr_031_5B60

    jr nc, jr_031_5B62

    ld a, [bc]
    jr nz, jr_031_5B55

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], b
    ld l, c
    ld h, e
    ld l, e
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_5B7B

    jr c, jr_031_5B7C

    ld h, d
    ld h, [hl]
    ld h, d
    add hl, sp
    jr c, jr_031_5B71

jr_031_5B51:
    ld [hl-], a
    jr c, jr_031_5B85

    ld h, d

jr_031_5B55:
    ld h, h
    jr c, jr_031_5B90

    jr c, jr_031_5B7A

jr_031_5B5A:
    jr nc, jr_031_5B8C

jr_031_5B5C:
    jr nc, jr_031_5B8E

jr_031_5B5E:
    jr nc, jr_031_5B90

jr_031_5B60:
    jr nc, @+$35

jr_031_5B62:
    jr nz, jr_031_5B94

    jr nc, jr_031_5B96

    jr nc, jr_031_5B98

    jr nc, jr_031_5B9A

    jr nc, jr_031_5B9C

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_5B91

jr_031_5B71:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], c

jr_031_5B7A:
    ld h, e

jr_031_5B7B:
    ld h, c

jr_031_5B7C:
    ld [hl], h
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5BBA

    jr c, @+$65

jr_031_5B85:
    ld h, d
    dec [hl]
    jr c, jr_031_5BC2

    jr nc, jr_031_5BAB

    scf

jr_031_5B8C:
    jr c, jr_031_5BF1

jr_031_5B8E:
    ld [hl], $35

jr_031_5B90:
    add hl, sp

jr_031_5B91:
    scf
    jr nc, jr_031_5BB4

jr_031_5B94:
    jr nc, jr_031_5BC6

jr_031_5B96:
    jr nc, jr_031_5BC8

jr_031_5B98:
    jr nc, jr_031_5BCA

jr_031_5B9A:
    jr nc, @+$33

jr_031_5B9C:
    jr nz, jr_031_5BCE

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5BDA

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5BC9

    jr nz, @+$22

jr_031_5BAB:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], c

jr_031_5BB4:
    ld h, e
    ld h, c
    ld [hl], h
    ld l, $78
    ld l, l

jr_031_5BBA:
    ld l, c
    jr nz, jr_031_5BEF

    jr c, jr_031_5C24

    ld h, h
    ld h, d
    ld h, [hl]

jr_031_5BC2:
    ld h, d
    ld sp, $3220

jr_031_5BC6:
    jr c, jr_031_5C2D

jr_031_5BC8:
    ld h, h

jr_031_5BC9:
    ld h, c

jr_031_5BCA:
    jr c, jr_031_5C04

    ld [hl], $20

jr_031_5BCE:
    jr nc, jr_031_5C00

    jr nc, @+$32

    jr nc, jr_031_5C04

    jr nc, jr_031_5C09

    jr nz, @+$32

    jr nc, @+$32

jr_031_5BDA:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_5C03

    jr nz, jr_031_5C05

    jr nz, jr_031_5C07

    jr nz, jr_031_5C09

    ld [hl], c
    ld h, e
    ld h, c
    ld [hl], h
    ld e, a
    ld h, e

jr_031_5BEF:
    ld l, b
    ld [hl], d

jr_031_5BF1:
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$3B

    ld h, l
    ld [hl-], a
    dec [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], $65
    jr nz, jr_031_5C39

jr_031_5C00:
    ld h, l
    jr nc, jr_031_5C33

jr_031_5C03:
    ld h, h

jr_031_5C04:
    dec [hl]

jr_031_5C05:
    jr c, jr_031_5C6C

jr_031_5C07:
    jr nz, jr_031_5C39

jr_031_5C09:
    jr nc, jr_031_5C3B

    jr nc, jr_031_5C3D

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5C3D

    jr nz, @+$22

    jr nz, jr_031_5C41

    jr nz, jr_031_5C43

    ld [hl], c

jr_031_5C24:
    ld h, e
    ld h, c
    ld [hl], h
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_5C2D:
    inc sp
    ld h, h
    jr nz, jr_031_5C95

    ld h, l
    ld h, [hl]

jr_031_5C33:
    ld h, e
    ld h, l
    ld h, d
    ld sp, $2037

jr_031_5C39:
    ld h, h
    ld h, l

jr_031_5C3B:
    ld h, [hl]
    ld h, l

jr_031_5C3D:
    ld sp, $3537
    ld h, d

jr_031_5C41:
    jr nz, jr_031_5C73

jr_031_5C43:
    jr nc, jr_031_5C75

    jr nc, jr_031_5C77

    jr nc, jr_031_5C79

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, jr_031_5C77

    jr nz, jr_031_5C79

    jr nz, @+$73

    ld h, e
    ld h, c
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_5C9B

    ld h, e

jr_031_5C6C:
    jr c, jr_031_5CD1

    ld h, [hl]
    ld [hl-], a
    inc [hl]
    ld [hl], $20

jr_031_5C73:
    jr nc, jr_031_5CD8

jr_031_5C75:
    jr c, @+$65

jr_031_5C77:
    ld h, [hl]
    ld [hl-], a

jr_031_5C79:
    ld [hl], $32
    jr nz, jr_031_5CAD

    jr nc, @+$32

    jr nc, jr_031_5CB1

    jr nc, @+$32

    inc sp
    jr nz, jr_031_5CB6

    jr nc, jr_031_5CB8

    jr nc, jr_031_5CBA

    jr nc, jr_031_5CBC

    jr nc, jr_031_5CBE

    ld a, [bc]
    jr nz, jr_031_5CB1

    jr nz, @+$22

    jr nz, @+$73

jr_031_5C95:
    ld h, e
    ld h, c
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, a

jr_031_5C9B:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_5D09

    jr nc, @+$67

    ld h, [hl]
    ld h, h
    inc [hl]
    ld h, l
    jr c, jr_031_5CCD

jr_031_5CAD:
    ld h, h
    jr nc, jr_031_5D15

    ld h, [hl]

jr_031_5CB1:
    ld h, h
    ld [hl], $32
    jr nc, jr_031_5CD6

jr_031_5CB6:
    jr nc, jr_031_5CE8

jr_031_5CB8:
    jr nc, jr_031_5CEA

jr_031_5CBA:
    jr nc, jr_031_5CEC

jr_031_5CBC:
    jr nc, @+$35

jr_031_5CBE:
    jr nz, jr_031_5CF0

    jr nc, jr_031_5CF2

    jr nc, jr_031_5CF4

    jr nc, jr_031_5CF6

    jr nc, jr_031_5CF8

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_5CED

jr_031_5CCD:
    jr nz, @+$22

    jr nz, @+$22

jr_031_5CD1:
    jr nz, jr_031_5D44

    ld h, l
    ld a, c
    ld [hl-], a

jr_031_5CD6:
    ld l, b
    ld l, b

jr_031_5CD8:
    ld sp, $732E
    inc sp
    ld h, h
    jr nz, jr_031_5D41

    ld h, l
    ld h, h
    inc sp
    scf
    ld h, h
    ld h, c
    ld sp, $6220

jr_031_5CE8:
    ld h, l
    ld h, e

jr_031_5CEA:
    ld [hl], $62

jr_031_5CEC:
    ld h, l

jr_031_5CED:
    add hl, sp
    jr c, jr_031_5D10

jr_031_5CF0:
    jr nc, jr_031_5D22

jr_031_5CF2:
    jr nc, jr_031_5D24

jr_031_5CF4:
    jr nc, @+$32

jr_031_5CF6:
    jr nc, jr_031_5D29

jr_031_5CF8:
    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5D36

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_5D27

    jr nz, jr_031_5D29

jr_031_5D09:
    jr nz, jr_031_5D2B

    jr nz, jr_031_5D7E

    ld h, l
    ld a, c
    ld [hl-], a

jr_031_5D10:
    ld l, b
    ld l, b
    ld sp, $782E

jr_031_5D15:
    ld l, l
    ld l, c
    jr nz, jr_031_5D4B

    jr c, jr_031_5D4C

    ld sp, $3033
    ld h, c
    add hl, sp
    jr nz, @+$34

jr_031_5D22:
    jr c, @+$33

jr_031_5D24:
    ld sp, $6637

jr_031_5D27:
    scf
    ld h, e

jr_031_5D29:
    jr nz, @+$32

jr_031_5D2B:
    jr nc, @+$32

    jr nc, jr_031_5D5F

    jr nc, jr_031_5D61

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_5D36:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_5D5F

    jr nz, jr_031_5D61

jr_031_5D41:
    jr nz, jr_031_5DB4

    ld h, l

jr_031_5D44:
    ld a, c
    ld [hl-], a
    ld l, b
    ld l, b
    ld sp, $635F

jr_031_5D4B:
    ld l, b

jr_031_5D4C:
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5D85

    ld sp, $3837
    ld h, l
    ld [hl-], a
    ld [hl], $35
    jr nz, jr_031_5D8E

    ld sp, $3035

jr_031_5D5F:
    dec [hl]
    ld h, e

jr_031_5D61:
    dec [hl]
    ld sp, $3020
    jr nc, jr_031_5D97

    jr nc, jr_031_5D99

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5D99

    jr nz, @+$22

    jr nz, jr_031_5DEE

    ld h, l

jr_031_5D7E:
    ld a, c
    ld [hl-], a
    ld l, b
    ld l, b
    ld sp, $6F5F

jr_031_5D85:
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5DF3

    ld h, [hl]

jr_031_5D8E:
    ld [hl], $37
    dec [hl]
    ld h, e
    jr nc, jr_031_5DC8

    jr nz, @+$68

    ld h, [hl]

jr_031_5D97:
    ld [hl], $61

jr_031_5D99:
    inc [hl]
    jr nc, jr_031_5DD1

    jr c, jr_031_5DBE

    jr nc, jr_031_5DD0

    jr nc, jr_031_5DD2

    jr nc, jr_031_5DD4

    jr nc, jr_031_5DD7

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_5DE4

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    ld [hl], c

jr_031_5DB4:
    ld h, l
    ld a, c
    ld [hl-], a
    ld l, b
    ld l, b
    ld sp, $735F
    ld l, [hl]
    ld h, h

jr_031_5DBE:
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$67

    ld h, h

jr_031_5DC8:
    ld h, [hl]
    jr c, jr_031_5DFD

    inc [hl]
    dec [hl]
    ld sp, $6520

jr_031_5DD0:
    ld h, h

jr_031_5DD1:
    ld h, [hl]

jr_031_5DD2:
    jr c, @+$34

jr_031_5DD4:
    inc [hl]
    jr nc, @+$37

jr_031_5DD7:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_5E0D

    jr nc, @+$32

    inc sp
    jr nz, jr_031_5E12

    jr nc, jr_031_5E14

jr_031_5DE4:
    jr nc, jr_031_5E16

    jr nc, jr_031_5E18

    jr nc, jr_031_5E1A

    ld a, [bc]
    jr nz, jr_031_5E0D

    ld [hl], c

jr_031_5DEE:
    ld h, l
    ld a, c
    ld [hl-], a
    ld l, b
    ld l, b

jr_031_5DF3:
    ld sp, $735F
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65

jr_031_5DFD:
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_5E32

    ld sp, $6233
    ld sp, $6534
    ld h, [hl]
    jr nz, jr_031_5E3B

    ld sp, $6233

jr_031_5E0D:
    ld sp, $3536
    jr c, jr_031_5E32

jr_031_5E12:
    jr nc, jr_031_5E44

jr_031_5E14:
    jr nc, @+$32

jr_031_5E16:
    jr nc, jr_031_5E48

jr_031_5E18:
    jr nc, jr_031_5E4D

jr_031_5E1A:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_5E49

    jr nz, jr_031_5E4B

    jr nz, jr_031_5E4D

    jr nz, jr_031_5E4F

    ld [hl], c
    ld h, l
    ld a, c

jr_031_5E32:
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5E6B

jr_031_5E3B:
    inc [hl]
    ld [hl-], a
    ld [hl], $38
    ld sp, $3531
    jr nz, @+$32

jr_031_5E44:
    inc [hl]
    ld sp, $3132

jr_031_5E48:
    ld h, [hl]

jr_031_5E49:
    ld h, l
    ld h, d

jr_031_5E4B:
    jr nz, @+$32

jr_031_5E4D:
    jr nc, jr_031_5E7F

jr_031_5E4F:
    jr nc, jr_031_5E81

    jr nc, jr_031_5E83

    ld sp, $3020
    inc sp
    ld [hl], $63
    ld h, c
    ld [hl], $32
    jr nc, @+$3B

    ld a, [bc]
    jr nz, jr_031_5E81

    jr nz, jr_031_5E83

    jr nz, jr_031_5E85

    jr nz, jr_031_5E87

    jr nz, jr_031_5E89

    ld [hl], c
    ld h, l

jr_031_5E6B:
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_5EA7

    ld h, c
    ld h, l
    jr c, jr_031_5EB0

    scf
    ld h, e
    ld h, e
    jr nz, jr_031_5EB0

    ld h, c

jr_031_5E7F:
    ld h, l
    add hl, sp

jr_031_5E81:
    ld [hl], $31

jr_031_5E83:
    ld [hl], $38

jr_031_5E85:
    jr nz, @+$32

jr_031_5E87:
    jr nc, jr_031_5EB9

jr_031_5E89:
    jr nc, jr_031_5EBB

    jr nc, jr_031_5EBD

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_5EBB

    jr nz, jr_031_5EBD

    jr nz, jr_031_5EBF

    jr nz, jr_031_5EC1

    jr nz, jr_031_5F14

    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a

jr_031_5EA7:
    ld [hl], e
    ld [hl-], a
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_5EE2

    ld h, d

jr_031_5EB0:
    scf
    inc [hl]
    dec [hl]
    jr c, jr_031_5F1B

    ld sp, $3320
    ld h, d

jr_031_5EB9:
    ld [hl], $66

jr_031_5EBB:
    scf
    add hl, sp

jr_031_5EBD:
    ld [hl-], a
    ld h, l

jr_031_5EBF:
    jr nz, jr_031_5EF1

jr_031_5EC1:
    jr nc, @+$32

    jr nc, jr_031_5EF5

    jr nc, jr_031_5EF7

    ld sp, $3020
    inc sp
    ld [hl], $63
    ld h, c
    ld [hl], $32
    jr nc, @+$3B

    ld a, [bc]
    jr nz, jr_031_5EF5

    jr nz, jr_031_5EF7

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_5F4E

    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e

jr_031_5EE2:
    ld [hl-], a
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_5F1C

    jr nc, jr_031_5F51

    inc sp
    ld [hl], $64
    ld sp, $2035

jr_031_5EF1:
    inc sp
    jr nc, jr_031_5F5A

    inc sp

jr_031_5EF5:
    ld h, l
    ld h, l

jr_031_5EF7:
    ld sp, $2038
    jr nc, jr_031_5F2C

    jr nc, @+$32

    jr nc, jr_031_5F30

    jr nc, @+$35

    jr nz, jr_031_5F34

    jr nc, jr_031_5F36

    jr nc, jr_031_5F38

    jr nc, jr_031_5F3A

    jr nc, jr_031_5F3C

    ld a, [bc]
    jr nz, jr_031_5F2F

    jr nz, @+$22

    jr nz, jr_031_5F84

    ld h, l

jr_031_5F14:
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld [hl-], a
    ld e, a
    ld h, e

jr_031_5F1B:
    ld l, b

jr_031_5F1C:
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h

Call_031_5F21:
    jr nz, jr_031_5F88

    ld sp, $6136
    jr nc, jr_031_5F5F

    scf
    ld [hl], $20
    ld h, l

jr_031_5F2C:
    ld sp, $6634

jr_031_5F2F:
    ld h, d

jr_031_5F30:
    ld [hl], $33
    jr c, jr_031_5F54

jr_031_5F34:
    jr nc, jr_031_5F66

jr_031_5F36:
    jr nc, jr_031_5F68

jr_031_5F38:
    jr nc, @+$32

jr_031_5F3A:
    jr nc, jr_031_5F6D

jr_031_5F3C:
    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_5F69

    jr nz, jr_031_5F6B

    jr nz, jr_031_5FBE

    ld h, l

jr_031_5F4E:
    ld a, c
    ld l, [hl]
    ld l, a

jr_031_5F51:
    ld [hl], e
    ld [hl-], a
    ld e, a

jr_031_5F54:
    ld l, a
    ld h, d
    ld l, d
    ld l, $73
    inc sp

jr_031_5F5A:
    ld h, h
    jr nz, jr_031_5F8D

    jr nc, jr_031_5F95

jr_031_5F5F:
    ld h, e
    ld h, e
    ld [hl], $39
    ld h, l
    jr nz, @+$32

jr_031_5F66:
    jr nc, jr_031_5F9E

jr_031_5F68:
    ld h, d

jr_031_5F69:
    jr nc, @+$67

jr_031_5F6B:
    inc [hl]
    ld h, [hl]

jr_031_5F6D:
    jr nz, @+$32

    jr nc, jr_031_5FA1

    jr nc, @+$32

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$22

    ld [hl], c

jr_031_5F84:
    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a

jr_031_5F88:
    ld [hl], e
    ld [hl-], a
    ld e, a
    ld [hl], e
    ld l, [hl]

jr_031_5F8D:
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]

jr_031_5F95:
    jr nz, jr_031_5FFD

    ld h, c
    ld sp, $3634
    jr nc, jr_031_5FCE

    ld h, e

jr_031_5F9E:
    jr nz, @+$68

    ld h, c

jr_031_5FA1:
    ld sp, $3634
    jr nc, jr_031_5FDB

    jr nc, jr_031_5FC8

    jr nc, jr_031_5FDA

    jr nc, jr_031_5FDC

    jr nc, jr_031_5FDE

    jr nc, jr_031_5FE3

    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_5FEA

    ld a, [bc]
    jr nz, @+$22

    ld [hl], c

jr_031_5FBE:
    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld [hl-], a
    ld e, a

Jump_031_5FC5:
    ld [hl], e
    ld l, a
    ld [hl], l

jr_031_5FC8:
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]

jr_031_5FCE:
    ld h, [hl]
    jr nz, @+$3B

    ld h, d
    add hl, sp
    jr nc, jr_031_600C

    ld h, [hl]
    ld h, c
    ld h, h
    jr nz, @+$3B

jr_031_5FDA:
    ld h, d

jr_031_5FDB:
    add hl, sp

jr_031_5FDC:
    jr nc, jr_031_6015

jr_031_5FDE:
    ld h, l
    jr nc, jr_031_6017

    jr nz, @+$32

jr_031_5FE3:
    jr nc, jr_031_6015

    jr nc, jr_031_6017

    jr nc, jr_031_6019

    inc sp

jr_031_5FEA:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6017

    jr nz, jr_031_6019

    jr nz, jr_031_601B

    ld [hl], c
    ld h, l

jr_031_5FFD:
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6043

    ld h, l

jr_031_600C:
    ld h, d
    ld h, c
    inc sp
    scf
    scf
    scf
    jr nz, jr_031_604C

    ld h, l

jr_031_6015:
    add hl, sp
    ld [hl-], a

jr_031_6017:
    ld h, e
    ld h, c

jr_031_6019:
    ld h, d
    ld [hl-], a

jr_031_601B:
    jr nz, @+$32

    jr nc, jr_031_604F

    jr nc, jr_031_6051

    jr nc, jr_031_6053

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, jr_031_6051

    jr nz, jr_031_6053

    jr nz, jr_031_6055

    ld [hl], c
    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h

jr_031_6043:
    jr nz, jr_031_6077

    ld h, [hl]
    inc [hl]
    ld h, c
    ld h, [hl]
    ld sp, $3563

jr_031_604C:
    jr nz, @+$34

    ld h, [hl]

jr_031_604F:
    inc [hl]
    scf

jr_031_6051:
    ld [hl-], a
    ld h, h

jr_031_6053:
    jr nc, jr_031_60B6

jr_031_6055:
    jr nz, jr_031_6087

    jr nc, @+$32

    jr nc, jr_031_608B

    jr nc, jr_031_608D

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, jr_031_608B

    jr nz, @+$73

    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d

jr_031_6077:
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_60B3

    jr nc, jr_031_60B3

    ld h, l
    ld h, h
    inc [hl]
    ld h, c
    ld [hl], $20

jr_031_6087:
    inc [hl]
    jr nc, jr_031_60BC

    ld h, l

jr_031_608B:
    ld h, h
    inc [hl]

jr_031_608D:
    ld h, h
    ld h, h
    jr nz, @+$32

    jr nc, jr_031_60C3

    jr nc, jr_031_60C5

    jr nc, @+$32

    inc sp
    jr nz, jr_031_60CA

    jr nc, jr_031_60CC

    jr nc, jr_031_60CE

    jr nc, jr_031_60D0

    jr nc, jr_031_60D2

    ld a, [bc]
    jr nz, jr_031_60C5

    jr nz, @+$73

    ld h, l
    ld a, c
    ld l, [hl]
    ld l, a
    ld [hl], e
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_031_60B3:
    ld l, $65
    ld h, [hl]

jr_031_60B6:
    ld h, [hl]
    jr nz, jr_031_60F0

    inc [hl]
    jr c, @+$64

jr_031_60BC:
    ld h, [hl]
    inc sp
    ld [hl], $36
    jr nz, jr_031_60F9

    inc [hl]

jr_031_60C3:
    jr c, jr_031_6127

jr_031_60C5:
    ld h, [hl]
    jr nc, @+$66

    jr c, jr_031_60EA

jr_031_60CA:
    jr nc, jr_031_60FC

jr_031_60CC:
    jr nc, jr_031_60FE

jr_031_60CE:
    jr nc, jr_031_6100

jr_031_60D0:
    jr nc, jr_031_6105

jr_031_60D2:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_60FF

    jr nz, @+$22

    jr nz, jr_031_6103

    jr nz, jr_031_6105

    ld [hl], c
    ld h, l
    ld a, c
    ld [hl], h
    ld l, a

jr_031_60EA:
    ld [hl], c
    ld [hl], d
    ld h, a
    ld l, $73
    inc sp

jr_031_60F0:
    ld h, h
    jr nz, @+$37

    add hl, sp
    ld h, l
    ld sp, $3634
    ld h, l

jr_031_60F9:
    ld sp, $3520

jr_031_60FC:
    add hl, sp
    ld h, l

jr_031_60FE:
    ld h, l

jr_031_60FF:
    ld [hl-], a

jr_031_6100:
    jr nc, jr_031_6164

    ld h, d

jr_031_6103:
    jr nz, @+$32

jr_031_6105:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_613B

    ld sp, $3020
    inc sp
    ld [hl], $63
    ld h, c
    ld [hl], $32
    jr nc, @+$3B

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_613B

    jr nz, @+$22

    jr nz, jr_031_613F

    ld [hl], c
    ld h, l
    ld a, c
    ld [hl], h
    ld l, a
    ld [hl], c
    ld [hl], d
    ld h, a

jr_031_6127:
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_615D

    jr c, jr_031_6168

    ld [hl], $32
    add hl, sp
    scf
    inc [hl]
    jr nz, @+$32

    jr c, jr_031_6171

    ld [hl], $35
    ld h, [hl]

jr_031_613B:
    inc [hl]
    ld sp, $3020

jr_031_613F:
    jr nc, jr_031_6171

    jr nc, jr_031_6173

    jr nc, jr_031_6175

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6173

    jr nz, jr_031_6175

    ld [hl], c
    ld h, l
    ld a, c
    ld [hl], h
    ld l, a
    ld [hl], c
    ld [hl], d
    ld h, a

jr_031_615D:
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp

jr_031_6164:
    ld h, h
    jr nz, jr_031_6198

    inc [hl]

jr_031_6168:
    ld h, h
    inc [hl]
    jr c, @+$36

    ld h, l
    ld h, d
    jr nz, jr_031_61A1

    inc [hl]

jr_031_6171:
    ld h, [hl]
    ld [hl-], a

jr_031_6173:
    ld h, [hl]
    ld h, c

jr_031_6175:
    ld h, e
    inc sp
    jr nz, @+$32

    jr nc, jr_031_61AB

    jr nc, jr_031_61AD

    jr nc, jr_031_61AF

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_61AD

    jr nz, jr_031_61AF

    ld [hl], c
    ld h, l
    ld a, c
    ld [hl], h
    ld l, a
    ld [hl], c
    ld [hl], d
    ld h, a
    ld e, a

jr_031_6198:
    ld l, a
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6206

jr_031_61A1:
    dec [hl]
    inc [hl]
    ld h, h
    inc sp
    add hl, sp
    jr nc, jr_031_61DD

    jr nz, jr_031_620F

    dec [hl]

jr_031_61AB:
    inc [hl]
    add hl, sp

jr_031_61AD:
    add hl, sp
    ld h, c

jr_031_61AF:
    dec [hl]
    scf
    jr nz, @+$32

    jr nc, jr_031_61E5

    jr nc, jr_031_61E7

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_61F8

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6238

    ld h, l
    ld a, c
    ld [hl], h
    ld l, a
    ld [hl], c
    ld [hl], d
    ld h, a
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_620B

    ld h, l
    inc [hl]

jr_031_61DD:
    ld h, d
    ld h, d
    ld sp, $6562
    jr nz, @+$32

    ld h, l

jr_031_61E5:
    inc [hl]
    ld h, d

jr_031_61E7:
    ld h, d
    ld sp, $3265
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_6221

    jr nc, jr_031_6223

    inc sp
    jr nz, jr_031_6226

    jr nc, jr_031_6228

jr_031_61F8:
    jr nc, jr_031_622A

    jr nc, jr_031_622C

    jr nc, jr_031_622E

    ld a, [bc]
    jr nz, jr_031_6272

    ld h, l
    ld a, c
    ld [hl], h
    ld l, a
    ld [hl], c

jr_031_6206:
    ld [hl], d
    ld h, a
    ld e, a
    ld [hl], e
    ld l, a

jr_031_620B:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_031_620F:
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_627B

    jr c, jr_031_6249

    ld h, l
    ld [hl-], a
    ld h, d
    ld [hl], $38
    jr nz, @+$68

    jr c, jr_031_6252

    ld h, l

jr_031_6221:
    ld [hl-], a
    add hl, sp

jr_031_6223:
    ld sp, $2036

jr_031_6226:
    jr nc, jr_031_6258

jr_031_6228:
    jr nc, @+$32

jr_031_622A:
    jr nc, jr_031_625C

jr_031_622C:
    jr nc, @+$35

jr_031_622E:
    jr nz, jr_031_6260

    jr nc, jr_031_6262

    jr nc, jr_031_6264

    jr nc, jr_031_6266

    jr nc, jr_031_6268

jr_031_6238:
    ld a, [bc]
    jr nz, jr_031_625B

    jr nz, jr_031_625D

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_62B8

    ld [hl], d
    ld h, a

jr_031_6249:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_62B5

    dec [hl]
    jr c, jr_031_6283

jr_031_6252:
    ld h, c
    inc sp
    scf
    ld h, [hl]
    jr nz, @+$68

jr_031_6258:
    dec [hl]
    jr c, jr_031_62C1

jr_031_625B:
    add hl, sp

jr_031_625C:
    ld h, e

jr_031_625D:
    ld h, l
    jr nc, @+$22

jr_031_6260:
    jr nc, jr_031_6292

jr_031_6262:
    jr nc, jr_031_6294

jr_031_6264:
    jr nc, jr_031_6296

jr_031_6266:
    jr nc, jr_031_6299

jr_031_6268:
    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_62A6

    ld h, d

jr_031_6272:
    ld a, [bc]
    jr nz, jr_031_6295

    jr nz, jr_031_6297

    jr nz, jr_031_6299

    jr nz, jr_031_629B

jr_031_627B:
    jr nz, jr_031_629D

    jr nz, jr_031_629F

    jr nz, jr_031_62F2

    ld [hl], d
    ld h, a

jr_031_6283:
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_62C1

    inc [hl]
    scf
    add hl, sp
    ld h, [hl]
    ld h, l
    add hl, sp
    inc sp
    jr nz, @+$3A

jr_031_6292:
    inc [hl]
    scf

jr_031_6294:
    add hl, sp

jr_031_6295:
    ld h, d

jr_031_6296:
    inc [hl]

jr_031_6297:
    ld [hl-], a
    ld h, l

jr_031_6299:
    jr nz, jr_031_62CB

jr_031_629B:
    jr nc, jr_031_62CD

jr_031_629D:
    jr nc, @+$32

jr_031_629F:
    jr nc, jr_031_62D1

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_62A6:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_62D1

    jr nz, jr_031_62D3

    jr nz, jr_031_62D5

jr_031_62B5:
    jr nz, jr_031_6328

    ld [hl], d

jr_031_62B8:
    ld h, a
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h

jr_031_62C1:
    jr nz, jr_031_62F9

    ld h, e
    inc sp
    ld h, e
    scf
    ld [hl], $62
    ld [hl], $20

jr_031_62CB:
    ld [hl], $63

jr_031_62CD:
    ld sp, $3138
    add hl, sp

jr_031_62D1:
    dec [hl]
    dec [hl]

jr_031_62D3:
    jr nz, @+$32

jr_031_62D5:
    jr nc, @+$32

    jr nc, jr_031_6309

    jr nc, jr_031_630B

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6309

    jr nz, jr_031_630B

    jr nz, jr_031_630D

    jr nz, jr_031_630F

    jr nz, jr_031_6362

    ld [hl], d

jr_031_62F2:
    ld h, a
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_62F9:
    inc sp
    ld h, h
    jr nz, jr_031_6335

    ld sp, $6564
    jr c, jr_031_6335

    inc sp
    ld sp, $3820
    ld sp, $3864

jr_031_6309:
    ld h, d
    ld h, c

jr_031_630B:
    ld h, d
    ld h, [hl]

jr_031_630D:
    jr nz, @+$32

jr_031_630F:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6345

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6354

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_6345

    jr nz, jr_031_6347

    ld [hl], c

jr_031_6328:
    ld [hl], d
    ld h, a
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]

jr_031_6335:
    jr nz, jr_031_639D

    ld [hl], $63
    ld sp, $6234
    jr c, jr_031_6371

    jr nz, @+$68

    ld [hl], $63
    ld sp, $6234

jr_031_6345:
    ld h, h
    ld h, c

jr_031_6347:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_637D

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6354:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_638A

    ld a, [bc]
    jr nz, jr_031_637D

    jr nz, @+$22

    jr nz, jr_031_6381

    ld [hl], c

jr_031_6362:
    ld [hl], d
    ld h, a
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_63A9

jr_031_6371:
    jr nc, jr_031_63A8

    inc [hl]
    inc sp
    jr nc, jr_031_63A8

    ld [hl-], a
    jr nz, @+$3A

    jr nc, jr_031_63B1

    inc [hl]

jr_031_637D:
    inc sp
    ld sp, $3962

jr_031_6381:
    jr nz, jr_031_63B3

    jr nc, @+$32

    jr nc, jr_031_63B7

    jr nc, jr_031_63B9

    inc sp

jr_031_638A:
    jr nz, jr_031_63BC

    jr nc, jr_031_63BE

    jr nc, jr_031_63C0

    jr nc, jr_031_63C2

    jr nc, jr_031_63C4

    ld a, [bc]
    jr nz, jr_031_63B7

    jr nz, jr_031_63B9

    jr nz, @+$22

    jr nz, @+$22

jr_031_639D:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld [hl], h
    ld l, [hl]
    ld l, $73
    inc sp

jr_031_63A8:
    ld h, h

jr_031_63A9:
    jr nz, @+$3B

    ld sp, $3963
    add hl, sp
    dec [hl]
    ld h, [hl]

jr_031_63B1:
    ld [hl], $20

jr_031_63B3:
    add hl, sp
    ld sp, $6564

jr_031_63B7:
    ld h, l
    inc sp

jr_031_63B9:
    scf
    ld [hl], $20

jr_031_63BC:
    jr nc, jr_031_63EE

jr_031_63BE:
    jr nc, jr_031_63F0

jr_031_63C0:
    jr nc, jr_031_63F2

jr_031_63C2:
    jr nc, jr_031_63F5

jr_031_63C4:
    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6402

    ld h, d
    ld a, [bc]
    jr nz, jr_031_63F1

    jr nz, jr_031_63F3

    jr nz, jr_031_63F5

    jr nz, jr_031_63F7

    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld [hl], h
    ld l, [hl]
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$3B

    add hl, sp
    ld h, c
    ld h, c
    ld h, [hl]
    jr c, jr_031_644C

    ld [hl], $20
    add hl, sp

jr_031_63EE:
    add hl, sp
    ld h, c

jr_031_63F0:
    ld h, c

jr_031_63F1:
    ld h, e

jr_031_63F2:
    dec [hl]

jr_031_63F3:
    ld h, h
    ld h, d

jr_031_63F5:
    jr nz, @+$32

jr_031_63F7:
    jr nc, jr_031_6429

    jr nc, jr_031_642B

    jr nc, jr_031_642D

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6402:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_642B

    jr nz, jr_031_642D

    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld [hl], h
    ld l, [hl]
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6451

    ld h, l
    jr c, jr_031_6485

    ld sp, $6164
    ld h, [hl]
    jr nz, jr_031_645A

    ld h, l

jr_031_6429:
    ld h, c
    ld h, c

jr_031_642B:
    ld h, h
    ld h, d

jr_031_642D:
    ld h, [hl]
    ld h, e
    jr nz, jr_031_6461

    jr nc, jr_031_6463

    jr nc, jr_031_6465

    jr nc, jr_031_6467

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6465

    jr nz, jr_031_6467

    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l

jr_031_644C:
    ld l, l
    ld [hl], h
    ld l, [hl]
    ld e, a
    ld l, a

jr_031_6451:
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_648D

    scf

jr_031_645A:
    ld h, h
    inc sp
    add hl, sp
    jr nc, jr_031_64C0

    ld [hl], $20

jr_031_6461:
    inc [hl]
    scf

jr_031_6463:
    ld h, h
    ld h, l

jr_031_6465:
    jr c, @+$36

jr_031_6467:
    ld h, e
    inc sp
    jr nz, @+$32

    jr nc, jr_031_649D

    jr nc, @+$32

    jr nc, jr_031_64A1

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_64B0

    ld h, d
    ld a, [bc]
    jr nz, jr_031_64F1

    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld [hl], h

jr_031_6485:
    ld l, [hl]
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e

jr_031_648D:
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$3B

    add hl, sp
    ld h, [hl]
    jr nc, @+$63

    scf
    jr nc, @+$3A

    jr nz, @+$3B

    add hl, sp

jr_031_649D:
    ld h, [hl]
    jr nc, jr_031_6501

    scf

jr_031_64A1:
    inc [hl]
    dec [hl]

Call_031_64A3:
    jr nz, @+$32

    jr nc, jr_031_64D7

    jr nc, jr_031_64D9

    jr nc, jr_031_64DB

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_64B0:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_64E6

    ld a, [bc]
    jr nz, jr_031_652B

    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld [hl], h
    ld l, [hl]

jr_031_64C0:
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_64FE

    ld h, c
    jr c, jr_031_6534

    ld h, [hl]
    jr nc, jr_031_6534

    ld h, c
    jr nz, jr_031_6507

    ld h, c

jr_031_64D7:
    jr c, jr_031_653D

jr_031_64D9:
    ld h, [hl]
    inc sp

jr_031_64DB:
    ld h, d
    ld h, d
    jr nz, @+$32

    jr nc, jr_031_6511

    jr nc, jr_031_6513

    jr nc, jr_031_6515

    inc sp

jr_031_64E6:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6520

    ld a, [bc]

jr_031_64F1:
    jr nz, jr_031_6513

    jr nz, jr_031_6515

    jr nz, jr_031_6517

    jr nz, jr_031_6519

    jr nz, jr_031_651B

    ld [hl], d
    ld h, l
    ld h, c

jr_031_64FE:
    ld h, h
    ld l, l
    ld h, l

jr_031_6501:
    ld l, $74
    ld a, b
    ld [hl], h
    jr nz, jr_031_6537

jr_031_6507:
    ld h, e
    ld h, h
    inc sp
    add hl, sp
    inc sp
    scf
    ld h, l
    jr nz, @+$32

    ld h, e

jr_031_6511:
    ld h, h
    inc sp

jr_031_6513:
    add hl, sp
    dec [hl]

jr_031_6515:
    ld h, h
    inc [hl]

jr_031_6517:
    jr nz, @+$32

jr_031_6519:
    jr nc, @+$32

jr_031_651B:
    jr nc, @+$32

    jr nc, jr_031_654F

    inc sp

jr_031_6520:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_655A

    ld a, [bc]

jr_031_652B:
    jr nz, @+$22

    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, c

jr_031_6534:
    ld l, [hl]
    ld h, a
    ld e, a

jr_031_6537:
    ld h, d
    ld [hl], l
    ld h, a
    ld [hl], e
    ld l, $74

jr_031_653D:
    ld a, b
    ld [hl], h
    jr nz, jr_031_65A7

    jr nc, jr_031_65A5

    jr c, jr_031_6578

    ld h, h
    inc [hl]
    ld h, e
    jr nz, @+$68

    jr nc, jr_031_65AE

    jr c, jr_031_6581

    add hl, sp

jr_031_654F:
    add hl, sp
    ld h, l
    jr nz, @+$32

    jr nc, jr_031_6585

    jr nc, jr_031_6587

    jr nc, jr_031_6589

    inc sp

jr_031_655A:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6594

    ld a, [bc]
    jr nz, jr_031_6587

    jr nz, jr_031_6589

    jr nz, jr_031_658B

    jr nz, jr_031_658D

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $74
    ld a, b

jr_031_6578:
    ld [hl], h
    jr nz, @+$37

    inc [hl]
    add hl, sp
    ld h, d
    ld [hl-], a
    ld h, e
    dec [hl]

jr_031_6581:
    ld [hl-], a
    jr nz, @+$37

    inc [hl]

jr_031_6585:
    add hl, sp
    ld h, d

jr_031_6587:
    ld [hl-], a
    ld [hl-], a

jr_031_6589:
    scf
    ld h, l

jr_031_658B:
    jr nz, @+$32

jr_031_658D:
    jr nc, @+$32

    jr nc, jr_031_65C1

    jr nc, @+$32

    inc sp

jr_031_6594:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_65C1

    jr nz, @+$22

    jr nz, jr_031_65C5

jr_031_65A5:
    jr nz, jr_031_6619

jr_031_65A7:
    ld l, c
    halt
    ld h, l
    ld [hl], d
    halt
    ld h, c
    ld l, h

jr_031_65AE:
    ld h, l
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_661B

    jr nc, jr_031_65EB

    ld h, e
    jr nc, jr_031_65EF

    ld h, l
    ld h, e
    jr nz, @+$68

    jr nc, @+$37

    inc [hl]

jr_031_65C1:
    ld sp, $3735
    ld h, h

jr_031_65C5:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_65FB

    jr nc, jr_031_65FD

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_660C

    ld h, d
    ld a, [bc]
    jr nz, jr_031_65FB

    jr nz, jr_031_65FD

    jr nz, jr_031_65FF

    jr nz, jr_031_6653

    ld l, c
    halt
    ld h, l
    ld [hl], d
    halt
    ld h, c
    ld l, h
    ld h, l
    ld l, $78

jr_031_65EB:
    ld l, l
    ld l, c
    jr nz, jr_031_6623

jr_031_65EF:
    ld sp, $3931
    ld h, c
    ld h, h
    jr nc, jr_031_662F

    jr nz, jr_031_662C

    ld sp, $3931

jr_031_65FB:
    jr c, jr_031_662E

jr_031_65FD:
    dec [hl]
    ld h, d

jr_031_65FF:
    jr nz, @+$32

    jr nc, jr_031_6633

    jr nc, jr_031_6635

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_660C:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6635

    jr nz, jr_031_6689

    ld l, c
    halt

jr_031_6619:
    ld h, l
    ld [hl], d

jr_031_661B:
    halt
    ld h, c
    ld l, h
    ld h, l
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d

jr_031_6623:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_665F

    ld [hl-], a
    jr nc, jr_031_6690

jr_031_662C:
    ld h, d
    add hl, sp

jr_031_662E:
    inc sp

jr_031_662F:
    ld h, [hl]
    jr nz, jr_031_6668

    ld [hl-], a

jr_031_6633:
    ld [hl-], a
    ld h, l

jr_031_6635:
    inc [hl]
    ld sp, $3762
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_666F

    jr nc, jr_031_6671

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_666F

    jr nz, jr_031_66C3

    ld l, c
    halt

jr_031_6653:
    ld h, l
    ld [hl], d
    halt
    ld h, c
    ld l, h
    ld h, l
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_665F:
    inc sp
    ld h, h
    jr nz, jr_031_6693

    jr c, @+$35

    dec [hl]
    ld h, c
    add hl, sp

jr_031_6668:
    ld [hl-], a
    ld h, e
    jr nz, @+$32

    jr c, @+$35

    ld h, h

jr_031_666F:
    ld [hl], $63

jr_031_6671:
    ld h, h
    ld h, c
    jr nz, jr_031_66A5

    jr nc, jr_031_66A7

    jr nc, jr_031_66A9

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_66BA

    ld h, d
    ld a, [bc]
    ld [hl], d
    ld l, c

jr_031_6689:
    halt
    ld h, l
    ld [hl], d
    halt
    ld h, c
    ld l, h
    ld h, l

jr_031_6690:
    ld e, a
    ld [hl], e
    ld l, [hl]

jr_031_6693:
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_66FF

    ld h, h
    dec [hl]
    add hl, sp
    ld sp, $3163

Call_031_66A3:
    jr c, jr_031_66C5

jr_031_66A5:
    ld h, d
    ld h, h

jr_031_66A7:
    dec [hl]
    add hl, sp

jr_031_66A9:
    ld sp, $3563
    ld h, h
    jr nz, jr_031_66DF

    jr nc, jr_031_66E1

    jr nc, jr_031_66E3

    jr nc, jr_031_66E5

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_66BA:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_66F0

    ld a, [bc]
    ld [hl], d
    ld l, c

jr_031_66C3:
    halt
    ld h, l

jr_031_66C5:
    ld [hl], d
    halt
    ld h, c
    ld l, h
    ld h, l
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_6707

    ld [hl-], a
    inc [hl]
    ld [hl-], a
    inc sp
    ld h, l
    ld h, d
    ld [hl], $20

jr_031_66DF:
    jr nc, @+$34

jr_031_66E1:
    inc [hl]
    ld [hl-], a

jr_031_66E3:
    inc sp
    ld h, [hl]

jr_031_66E5:
    dec [hl]
    ld h, c
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_671D

    jr nc, jr_031_671F

    inc sp

jr_031_66F0:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_671D

    jr nz, jr_031_671F

jr_031_66FF:
    jr nz, jr_031_6721

    jr nz, jr_031_6723

    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]

jr_031_6707:
    ld a, c
    ld h, l
    ld a, c
    ld h, l
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6749

    ld sp, $3362
    inc [hl]
    ld [hl-], a
    ld h, e
    scf
    jr nz, jr_031_6752

    ld sp, $6461

jr_031_671D:
    ld h, c
    inc [hl]

jr_031_671F:
    dec [hl]
    dec [hl]

jr_031_6721:
    jr nz, @+$32

jr_031_6723:
    jr nc, @+$32

    jr nc, jr_031_6757

    jr nc, jr_031_6759

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6768

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6757

    jr nz, jr_031_6759

    jr nz, jr_031_675B

    jr nz, jr_031_675D

    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld h, l
    ld a, c
    ld h, l
    ld l, $78
    ld l, l
    ld l, c

jr_031_6749:
    jr nz, jr_031_6783

    jr c, jr_031_67B2

    ld h, c
    ld h, d
    ld h, e
    jr c, jr_031_67B3

jr_031_6752:
    jr nz, jr_031_678C

    jr c, jr_031_67BB

    ld h, c

jr_031_6757:
    ld h, c
    ld h, c

jr_031_6759:
    inc sp
    ld h, h

jr_031_675B:
    jr nz, @+$32

jr_031_675D:
    jr nc, @+$32

    jr nc, jr_031_6791

    jr nc, jr_031_6793

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6768:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6791

    jr nz, jr_031_6793

    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld h, l
    ld a, c
    ld h, l
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h

jr_031_6783:
    jr nz, jr_031_67E9

    ld sp, $3031
    dec [hl]
    ld sp, $6534

jr_031_678C:
    jr nz, jr_031_67F2

    ld sp, $6430

jr_031_6791:
    jr c, jr_031_67CC

jr_031_6793:
    ld h, d
    add hl, sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_67CB

    jr nc, jr_031_67CD

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_67CB

    jr nz, jr_031_67CD

    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c

jr_031_67B2:
    ld h, l

jr_031_67B3:
    ld a, c
    ld h, l
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_67BB:
    inc sp
    ld h, h
    jr nz, jr_031_67F7

    ld sp, $3238
    ld h, c
    ld h, e
    ld [hl], $31
    jr nz, jr_031_6800

    ld sp, $3438

jr_031_67CB:
    dec [hl]

jr_031_67CC:
    ld [hl-], a

jr_031_67CD:
    ld h, e
    ld h, h
    jr nz, @+$32

    jr nc, jr_031_6803

    jr nc, jr_031_6805

    jr nc, jr_031_6807

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6816

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6857

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c

jr_031_67E9:
    ld h, l
    ld a, c
    ld h, l
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]

jr_031_67F2:
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]

jr_031_67F7:
    jr nz, @+$65

    scf
    ld [hl], $35
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_031_6800:
    jr nz, jr_031_6865

    scf

jr_031_6803:
    ld [hl], $35

jr_031_6805:
    add hl, sp
    inc [hl]

jr_031_6807:
    ld h, l
    scf
    jr nz, @+$32

    jr nc, jr_031_683D

    jr nc, @+$32

    jr nc, jr_031_6841

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6816:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_684C

    ld a, [bc]
    jr nz, jr_031_6891

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld h, l
    ld a, c
    ld h, l
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_6865

    inc sp
    ld h, d
    jr c, jr_031_6869

    dec [hl]
    dec [hl]
    ld [hl-], a
    jr nz, jr_031_686E

    inc sp

jr_031_683D:
    ld h, d
    jr c, jr_031_6872

    scf

jr_031_6841:
    jr c, @+$65

    jr nz, @+$32

    jr nc, jr_031_6877

    jr nc, @+$32

    jr nc, @+$32

    inc sp

jr_031_684C:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6886

    ld a, [bc]

jr_031_6857:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_687D

    jr nz, jr_031_687F

    jr nz, @+$75

    add hl, sp
    jr c, jr_031_689D

    ld [hl], d

jr_031_6865:
    ld h, l
    ld h, a
    ld l, $74

jr_031_6869:
    ld a, b
    ld [hl], h
    jr nz, @+$3B

    ld h, h

jr_031_686E:
    ld sp, $3465
    ld h, [hl]

jr_031_6872:
    ld h, c
    scf
    jr nz, @+$3B

    ld h, h

jr_031_6877:
    ld sp, $3565
    jr c, jr_031_68DF

    add hl, sp

jr_031_687D:
    jr nz, @+$32

jr_031_687F:
    jr nc, jr_031_68B1

    jr nc, jr_031_68B3

    jr nc, jr_031_68B5

    inc sp

jr_031_6886:
    jr nz, jr_031_68B8

    jr nc, jr_031_68BA

    jr nc, jr_031_68BC

    jr nc, jr_031_68BE

    jr nc, jr_031_68C0

    ld a, [bc]

jr_031_6891:
    jr nz, jr_031_68B3

    jr nz, jr_031_68B5

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$75

    ld h, l
    ld h, d

jr_031_689D:
    ld l, c
    ld l, h
    ld l, c
    ld [hl], e
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_6915

    add hl, sp

jr_031_68B1:
    ld [hl], $63

jr_031_68B3:
    ld h, e
    ld h, [hl]

jr_031_68B5:
    dec [hl]
    jr nc, @+$22

jr_031_68B8:
    jr nc, jr_031_68EA

jr_031_68BA:
    jr nc, @+$32

jr_031_68BC:
    jr nc, @+$32

jr_031_68BE:
    jr nc, @+$34

jr_031_68C0:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_68ED

    jr nz, jr_031_68EF

    jr nz, @+$22

    jr nz, jr_031_68F3

    jr nz, jr_031_68F5

    jr nz, jr_031_68F7

    jr nz, jr_031_694C

    ld l, e
    ld a, c
    ld l, $73
    inc sp
    ld h, h

jr_031_68DF:
    jr nz, jr_031_6917

    ld h, l
    ld [hl], $61
    scf
    inc [hl]
    inc [hl]
    scf
    jr nz, jr_031_6920

jr_031_68EA:
    ld h, l
    ld [hl], $38

jr_031_68ED:
    ld [hl], $61

jr_031_68EF:
    ld h, h
    ld sp, $3020

jr_031_68F3:
    jr nc, jr_031_6925

jr_031_68F5:
    jr nc, jr_031_6927

jr_031_68F7:
    jr nc, jr_031_6929

    ld sp, $3020
    inc sp
    scf
    add hl, sp
    ld h, h
    ld h, d
    ld h, h
    ld [hl], $31
    ld a, [bc]
    jr nz, jr_031_6927

    jr nz, jr_031_6929

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_6982

    ld l, e
    ld a, c
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l

jr_031_6915:
    ld l, $78

jr_031_6917:
    ld l, l
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]

jr_031_6920:
    inc [hl]
    dec [hl]
    jr nz, jr_031_6989

    add hl, sp

jr_031_6925:
    ld [hl], $63

jr_031_6927:
    ld h, e
    ld h, [hl]

jr_031_6929:
    dec [hl]
    jr nc, jr_031_694C

    jr nc, jr_031_695E

    jr nc, @+$32

    jr nc, jr_031_6962

    jr nc, @+$34

    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_696E

    ld a, [bc]
    jr nz, jr_031_6961

    jr nz, jr_031_6963

    jr nz, @+$75

    ld l, e
    ld a, c
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ld e, a

jr_031_694C:
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6985

    ld [hl-], a
    scf
    add hl, sp
    inc sp
    ld h, l
    ld [hl-], a
    ld h, d
    jr nz, @+$32

jr_031_695E:
    ld [hl-], a
    ld [hl], $62

jr_031_6961:
    inc [hl]

jr_031_6962:
    ld h, d

jr_031_6963:
    jr nc, jr_031_699D

    jr nz, @+$32

    jr nc, jr_031_6999

    jr nc, jr_031_699B

    jr nc, jr_031_699D

    ld [hl-], a

jr_031_696E:
    jr nz, @+$32

    inc sp
    jr c, jr_031_69D4

    add hl, sp
    jr c, jr_031_69D9

    ld h, d
    jr nc, jr_031_6983

    jr nz, jr_031_699B

    jr nz, jr_031_699D

    jr nz, jr_031_699F

    jr nz, jr_031_69A1

    ld [hl], e

jr_031_6982:
    ld l, l

jr_031_6983:
    ld h, c
    ld h, e

jr_031_6985:
    ld l, e
    ld [hl], a
    inc sp
    ld [hl-], a

jr_031_6989:
    ld l, $64
    ld l, h
    ld l, h
    jr nz, jr_031_69BF

    ld h, [hl]
    scf
    inc [hl]
    inc sp
    inc [hl]
    dec [hl]
    ld sp, $3020
    ld h, [hl]

jr_031_6999:
    scf
    inc [hl]

jr_031_699B:
    jr c, @+$37

jr_031_699D:
    ld [hl-], a
    ld h, h

jr_031_699F:
    jr nz, jr_031_69D1

jr_031_69A1:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_69D7

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_69D7

    jr nz, jr_031_69D9

    jr nz, jr_031_69DB

    jr nz, jr_031_69DD

    jr nz, jr_031_69DF

jr_031_69BF:
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld sp, $702E
    ld h, [hl]
    ld [hl], e
    jr nz, jr_031_69FA

    inc [hl]
    ld h, d
    ld h, d
    ld [hl], $30
    ld h, [hl]
    ld [hl], $20

jr_031_69D1:
    ld sp, $6234

jr_031_69D4:
    ld [hl], $37
    scf

jr_031_69D7:
    add hl, sp
    inc [hl]

jr_031_69D9:
    jr nz, @+$32

jr_031_69DB:
    jr nc, jr_031_6A0D

jr_031_69DD:
    jr nc, jr_031_6A0F

jr_031_69DF:
    jr nc, jr_031_6A11

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6A0F

    jr nz, jr_031_6A11

    jr nz, jr_031_6A13

    jr nz, jr_031_6A15

    jr nz, jr_031_6A17

    jr nz, jr_031_6A19

    ld [hl], e

jr_031_69FA:
    ld l, [hl]
    ld h, h
    ld [hl-], a
    ld l, $70
    ld h, [hl]
    ld [hl], e
    jr nz, @+$67

    dec [hl]
    ld [hl], $33
    add hl, sp
    ld sp, $6466
    jr nz, jr_031_6A71

    dec [hl]

jr_031_6A0D:
    scf
    add hl, sp

jr_031_6A0F:
    dec [hl]
    add hl, sp

jr_031_6A11:
    add hl, sp
    ld h, d

jr_031_6A13:
    jr nz, @+$32

jr_031_6A15:
    jr nc, @+$32

jr_031_6A17:
    jr nc, jr_031_6A49

jr_031_6A19:
    jr nc, jr_031_6A4B

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6A49

    jr nz, jr_031_6A4B

    jr nz, jr_031_6A4D

    jr nz, jr_031_6A4F

    jr nz, jr_031_6A51

    jr nz, jr_031_6A53

    ld [hl], e
    ld l, [hl]
    ld h, h
    inc sp
    ld l, $70
    ld h, [hl]
    ld [hl], e
    jr nz, jr_031_6A6E

    jr c, jr_031_6A75

    ld h, l
    jr c, @+$64

    inc [hl]
    ld h, c
    jr nz, jr_031_6A77

    jr c, jr_031_6A7D

    ld [hl-], a

jr_031_6A49:
    ld h, e
    ld [hl-], a

jr_031_6A4B:
    ld h, l
    add hl, sp

jr_031_6A4D:
    jr nz, jr_031_6A7F

jr_031_6A4F:
    jr nc, jr_031_6A81

jr_031_6A51:
    jr nc, jr_031_6A83

jr_031_6A53:
    jr nc, jr_031_6A85

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6A83

    jr nz, jr_031_6A85

    jr nz, jr_031_6A87

    jr nz, jr_031_6A89

    jr nz, jr_031_6A8B

    jr nz, jr_031_6A8D

    ld [hl], e

jr_031_6A6E:
    ld l, [hl]
    ld h, h
    inc [hl]

jr_031_6A71:
    ld l, $70
    ld h, [hl]
    ld [hl], e

jr_031_6A75:
    jr nz, jr_031_6AD9

jr_031_6A77:
    dec [hl]
    ld h, [hl]
    dec [hl]
    ld [hl], $31
    scf

jr_031_6A7D:
    jr c, jr_031_6A9F

jr_031_6A7F:
    ld h, d
    dec [hl]

jr_031_6A81:
    ld h, h
    ld h, c

jr_031_6A83:
    ld [hl-], a
    ld h, e

jr_031_6A85:
    add hl, sp
    ld h, l

jr_031_6A87:
    jr nz, @+$32

jr_031_6A89:
    jr nc, jr_031_6ABB

jr_031_6A8B:
    jr nc, jr_031_6ABD

jr_031_6A8D:
    jr nc, jr_031_6ABF

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6ABD

    jr nz, jr_031_6ABF

jr_031_6A9F:
    jr nz, jr_031_6AC1

    jr nz, jr_031_6AC3

    jr nz, jr_031_6AC5

    jr nz, jr_031_6AC7

    ld [hl], e
    ld l, [hl]
    ld h, h
    dec [hl]
    ld l, $70
    ld h, [hl]
    ld [hl], e
    jr nz, jr_031_6B15

    dec [hl]
    dec [hl]
    dec [hl]
    inc sp
    ld [hl], $66
    ld [hl-], a
    jr nz, jr_031_6B1E

    dec [hl]

jr_031_6ABB:
    ld [hl], $31

jr_031_6ABD:
    ld h, l
    add hl, sp

jr_031_6ABF:
    add hl, sp
    ld h, l

jr_031_6AC1:
    jr nz, @+$32

jr_031_6AC3:
    jr nc, jr_031_6AF5

jr_031_6AC5:
    jr nc, jr_031_6AF7

jr_031_6AC7:
    jr nc, jr_031_6AF9

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6AF7

    jr nz, jr_031_6AF9

jr_031_6AD9:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], e
    ld l, [hl]
    ld h, h
    ld [hl], $2E
    ld [hl], b
    ld h, [hl]
    ld [hl], e
    jr nz, @+$3B

    scf
    dec [hl]
    ld sp, $6135
    ld h, d
    ld [hl-], a
    jr nz, @+$3B

    scf

jr_031_6AF5:
    ld [hl], $62

jr_031_6AF7:
    ld h, d
    scf

jr_031_6AF9:
    ld h, d
    ld [hl], $20
    jr nc, jr_031_6B2E

    jr nc, @+$32

    jr nc, jr_031_6B32

    jr nc, @+$33

    jr nz, jr_031_6B36

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6B31

    jr nz, jr_031_6B33

    jr nz, @+$22

jr_031_6B15:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], e
    ld l, [hl]
    ld h, h

jr_031_6B1E:
    scf
    ld l, $70
    ld h, [hl]
    ld [hl], e
    jr nz, jr_031_6B57

    ld h, l
    ld [hl], $30
    ld [hl-], a
    ld h, d
    ld h, l
    scf
    jr nz, @+$34

jr_031_6B2E:
    ld h, l
    ld [hl], $35

jr_031_6B31:
    scf

jr_031_6B32:
    ld h, [hl]

jr_031_6B33:
    ld h, [hl]
    jr c, jr_031_6B56

jr_031_6B36:
    jr nc, jr_031_6B68

    jr nc, jr_031_6B6A

    jr nc, jr_031_6B6C

    jr nc, @+$34

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6B6B

    jr nz, @+$22

    jr nz, jr_031_6B6F

    jr nz, jr_031_6B71

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l

jr_031_6B56:
    ld l, [hl]

jr_031_6B57:
    ld h, a
    ld h, c
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6B96

    jr c, jr_031_6B9A

    inc [hl]
    add hl, sp
    inc sp
    jr c, jr_031_6BCB

    jr nz, jr_031_6B9F

jr_031_6B68:
    jr c, jr_031_6BCC

jr_031_6B6A:
    scf

jr_031_6B6B:
    ld h, l

jr_031_6B6C:
    jr nc, jr_031_6BCF

    ld h, d

jr_031_6B6F:
    jr nz, @+$32

jr_031_6B71:
    jr nc, jr_031_6BA3

    jr nc, jr_031_6BA5

    jr nc, jr_031_6BA7

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6BB6

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6BA5

    jr nz, jr_031_6BA7

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, c
    ld l, $78
    ld l, l

jr_031_6B96:
    ld l, c
    jr nz, jr_031_6BFE

    add hl, sp

jr_031_6B9A:
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]

jr_031_6B9F:
    dec [hl]
    jr nz, jr_031_6C07

    add hl, sp

jr_031_6BA3:
    ld [hl], $63

jr_031_6BA5:
    ld h, e
    ld h, [hl]

jr_031_6BA7:
    dec [hl]
    jr nc, jr_031_6BCA

    jr nc, jr_031_6BDC

    jr nc, jr_031_6BDE

    jr nc, jr_031_6BE0

    jr nc, jr_031_6BE4

    jr nz, jr_031_6BE4

    jr nc, jr_031_6BE6

jr_031_6BB6:
    jr nc, jr_031_6BE8

    jr nc, jr_031_6BEA

    jr nc, jr_031_6BEC

    ld a, [bc]
    jr nz, jr_031_6BDF

    jr nz, jr_031_6BE1

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, c
    ld e, a

jr_031_6BCA:
    ld h, e

jr_031_6BCB:
    ld l, b

jr_031_6BCC:
    ld [hl], d
    ld l, $73

jr_031_6BCF:
    inc sp
    ld h, h
    jr nz, jr_031_6C35

    ld [hl-], a
    ld h, h
    jr c, jr_031_6C3C

    add hl, sp
    ld h, [hl]
    ld h, e
    jr nz, jr_031_6C3E

jr_031_6BDC:
    ld [hl-], a
    ld h, e

jr_031_6BDE:
    dec [hl]

jr_031_6BDF:
    dec [hl]

jr_031_6BE0:
    dec [hl]

jr_031_6BE1:
    ld sp, $2031

jr_031_6BE4:
    jr nc, jr_031_6C16

jr_031_6BE6:
    jr nc, @+$32

jr_031_6BE8:
    jr nc, jr_031_6C1A

jr_031_6BEA:
    jr nc, jr_031_6C1D

jr_031_6BEC:
    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6C19

    jr nz, @+$22

    ld [hl], e
    ld l, a
    ld l, h

jr_031_6BFE:
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, c
    ld e, a
    ld l, a
    ld h, d
    ld l, d

jr_031_6C07:
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$37

    add hl, sp
    jr nc, jr_031_6C48

    ld [hl-], a
    ld [hl], $34
    ld [hl], $20
    dec [hl]

jr_031_6C16:
    add hl, sp
    jr nc, @+$32

jr_031_6C19:
    add hl, sp

jr_031_6C1A:
    jr c, jr_031_6C81

    inc [hl]

jr_031_6C1D:
    jr nz, @+$32

    jr nc, jr_031_6C51

    jr nc, jr_031_6C53

    jr nc, jr_031_6C55

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$75

    ld l, a
    ld l, h

jr_031_6C35:
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, c
    ld e, a
    ld [hl], e

jr_031_6C3C:
    ld l, [hl]
    ld h, h

jr_031_6C3E:
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_6C7E

    ld h, e

jr_031_6C48:
    ld [hl], $38
    ld h, h
    ld h, h
    inc [hl]
    ld h, d
    jr nz, jr_031_6C87

    ld h, e

jr_031_6C51:
    ld [hl], $38

jr_031_6C53:
    ld h, h
    ld h, h

jr_031_6C55:
    scf
    inc [hl]
    jr nz, @+$32

    jr nc, jr_031_6C8B

    jr nc, jr_031_6C8D

    jr nc, jr_031_6C8F

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6C9A

    ld a, [bc]
    jr nz, @+$75

    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, c
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]

jr_031_6C7E:
    ld h, [hl]
    jr nz, jr_031_6CB5

jr_031_6C81:
    ld h, [hl]
    inc sp
    ld h, l
    ld h, h
    ld h, l
    inc sp

jr_031_6C87:
    ld h, d
    jr nz, jr_031_6CBE

    ld h, [hl]

jr_031_6C8B:
    inc sp
    ld h, l

jr_031_6C8D:
    ld h, h
    ld h, e

jr_031_6C8F:
    jr c, jr_031_6CF7

    jr nz, @+$32

    jr nc, jr_031_6CC5

    jr nc, @+$32

    jr nc, jr_031_6CC9

    inc sp

jr_031_6C9A:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_6CC9

    jr nz, jr_031_6CCB

    jr nz, jr_031_6CCD

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, d

jr_031_6CB5:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6CEE

    scf
    jr nc, jr_031_6D24

jr_031_6CBE:
    inc [hl]
    ld h, l
    ld h, e
    ld h, [hl]
    jr nz, jr_031_6CF7

    scf

jr_031_6CC5:
    ld sp, $3238
    dec [hl]

jr_031_6CC9:
    inc [hl]
    ld h, e

jr_031_6CCB:
    jr nz, @+$32

jr_031_6CCD:
    jr nc, jr_031_6CFF

    jr nc, @+$32

    jr nc, jr_031_6D03

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6D12

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_6D03

    jr nz, jr_031_6D05

    jr nz, jr_031_6D07

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a

jr_031_6CEE:
    ld h, d
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_6D5A

    add hl, sp
    add hl, sp

jr_031_6CF7:
    ld [hl], $62
    inc [hl]
    ld h, l
    ld h, d
    jr nz, jr_031_6D63

    add hl, sp

jr_031_6CFF:
    add hl, sp
    ld [hl], $64
    add hl, sp

jr_031_6D03:
    ld h, d
    ld h, e

jr_031_6D05:
    jr nz, @+$32

jr_031_6D07:
    jr nc, jr_031_6D39

    jr nc, @+$32

    jr nc, jr_031_6D3D

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6D12:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_6D3D

    ld [hl], e
    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a

jr_031_6D24:
    ld h, d
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$37

    ld h, l
    ld h, d
    scf
    ld [hl], $30
    ld [hl-], a
    ld h, c
    jr nz, jr_031_6D6D

    ld h, l

jr_031_6D39:
    add hl, sp
    ld sp, $3835

jr_031_6D3D:
    dec [hl]
    ld [hl-], a
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6D77

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_6D77

    ld [hl], e
    ld l, a
    ld l, h

jr_031_6D5A:
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, d
    ld e, a
    ld l, a
    ld h, d
    ld l, d

jr_031_6D63:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6DCB

    jr c, jr_031_6DD0

    ld h, h
    ld h, e

jr_031_6D6D:
    ld h, l
    ld [hl], $66
    jr nz, jr_031_6DD4

    jr c, jr_031_6DD9

    jr nc, @+$64

    ld h, d

jr_031_6D77:
    jr nc, @+$34

    jr nz, @+$32

    jr nc, jr_031_6DAD

    jr nc, jr_031_6DAF

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$75

    ld l, a
    ld l, h
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, d
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_6DD6

    scf
    add hl, sp
    ld h, d
    inc sp
    jr c, @+$35

    dec [hl]
    jr nz, jr_031_6DDF

    scf

jr_031_6DAD:
    add hl, sp
    ld h, d

jr_031_6DAF:
    inc sp
    jr c, jr_031_6DE2

    ld h, l
    jr nz, jr_031_6DE5

    jr nc, jr_031_6DE7

    jr nc, jr_031_6DE9

    jr nc, jr_031_6DEB

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6DF6

    ld a, [bc]
    jr nz, @+$75

    ld l, a
    ld l, h

jr_031_6DCB:
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, d

jr_031_6DD0:
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l

jr_031_6DD4:
    ld l, [hl]
    ld h, h

jr_031_6DD6:
    ld [hl], e
    ld l, $65

jr_031_6DD9:
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_6E41

    scf
    inc sp

jr_031_6DDF:
    dec [hl]
    ld h, [hl]
    inc [hl]

jr_031_6DE2:
    ld h, e
    jr nc, jr_031_6E05

jr_031_6DE5:
    ld h, h
    scf

jr_031_6DE7:
    inc sp
    dec [hl]

jr_031_6DE9:
    ld h, [hl]
    scf

jr_031_6DEB:
    jr c, jr_031_6E1D

    jr nz, @+$32

    jr nc, jr_031_6E21

    jr nc, jr_031_6E23

    jr nc, jr_031_6E25

    inc sp

jr_031_6DF6:
    jr nz, jr_031_6E28

    jr nc, jr_031_6E2A

    jr nc, jr_031_6E2C

    jr nc, jr_031_6E2E

    jr nc, jr_031_6E30

    ld a, [bc]
    jr nz, jr_031_6E23

    jr nz, jr_031_6E25

jr_031_6E05:
    jr nz, @+$22

    jr nz, jr_031_6E7C

    ld l, a
    ld l, h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_6E7C

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]

jr_031_6E1D:
    dec [hl]
    jr nz, jr_031_6E85

    add hl, sp

jr_031_6E21:
    ld [hl], $63

jr_031_6E23:
    ld h, e
    ld h, [hl]

jr_031_6E25:
    dec [hl]
    jr nc, jr_031_6E48

jr_031_6E28:
    jr nc, jr_031_6E5A

jr_031_6E2A:
    jr nc, jr_031_6E5C

jr_031_6E2C:
    jr nc, @+$32

jr_031_6E2E:
    jr nc, @+$34

jr_031_6E30:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6E5D

    jr nz, @+$22

    jr nz, jr_031_6EB4

jr_031_6E41:
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d

jr_031_6E48:
    ld h, c
    ld l, [hl]
    ld h, c
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_6EB2

    add hl, sp
    ld h, c
    jr nc, @+$33

    add hl, sp
    inc sp
    ld h, [hl]
    jr nz, jr_031_6EBB

jr_031_6E5A:
    add hl, sp
    ld h, d

jr_031_6E5C:
    ld h, l

jr_031_6E5D:
    ld sp, $3936
    dec [hl]
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_6E97

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6EA8

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6E97

    jr nz, @+$22

    jr nz, jr_031_6EEE

    ld l, a

jr_031_6E7C:
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, c

jr_031_6E85:
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_6EEE

    jr c, jr_031_6EBD

    scf
    jr c, jr_031_6EF6

    inc sp
    scf
    jr nz, jr_031_6EF7

    jr c, jr_031_6EC6

    scf

jr_031_6E97:
    ld h, l
    ld sp, $3533
    jr nz, @+$32

    jr nc, jr_031_6ECF

    jr nc, jr_031_6ED1

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_6EA8:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_6F24

    ld l, a

jr_031_6EB2:
    ld [hl], l
    ld [hl], h

jr_031_6EB4:
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, c

jr_031_6EBB:
    ld e, a
    ld h, e

jr_031_6EBD:
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$3B

    ld h, e

jr_031_6EC6:
    ld h, c
    ld h, h
    jr c, jr_031_6F2B

    ld h, h
    ld h, [hl]
    jr nz, @+$3B

    ld h, e

jr_031_6ECF:
    jr c, jr_031_6F33

jr_031_6ED1:
    ld h, d
    ld sp, $3433
    jr nz, @+$32

    jr nc, jr_031_6F09

    jr nc, @+$32

    jr nc, jr_031_6F0D

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_6F5E

    ld l, a
    ld [hl], l
    ld [hl], h

jr_031_6EEE:
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, c
    ld e, a

jr_031_6EF6:
    ld l, a

jr_031_6EF7:
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$39

    ld h, l
    ld h, h
    ld h, [hl]
    inc [hl]
    add hl, sp
    ld [hl-], a
    ld h, c
    jr nz, jr_031_6F3F

    ld h, l

jr_031_6F09:
    ld h, h
    jr c, jr_031_6F42

    ld h, d

jr_031_6F0D:
    jr nc, @+$38

    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_6F56

    ld h, d
    ld a, [bc]
    ld [hl], e

jr_031_6F24:
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d

jr_031_6F2B:
    ld h, c
    ld l, [hl]
    ld h, c
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d

jr_031_6F33:
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$39

    ld [hl], $32
    jr c, jr_031_6F78

jr_031_6F3F:
    ld sp, $6138

jr_031_6F42:
    jr nz, jr_031_6F7B

    ld [hl], $32
    jr c, jr_031_6F81

    ld sp, $6665
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_6F81

    jr nc, jr_031_6F83

    inc sp
    jr nz, jr_031_6F86

jr_031_6F56:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

jr_031_6F5E:
    ld a, [bc]
    ld [hl], e
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, e
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, c
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$63

    ld h, e

jr_031_6F78:
    jr nc, jr_031_6FAD

    ld h, d

jr_031_6F7B:
    ld h, d
    ld [hl], $33
    jr nz, jr_031_6FE1

    ld h, e

jr_031_6F81:
    jr nc, jr_031_6FB6

jr_031_6F83:
    ld h, d
    jr c, jr_031_6FBD

jr_031_6F86:
    ld sp, $3020
    jr nc, jr_031_6FBB

    jr nc, jr_031_6FBD

    jr nc, jr_031_6FBF

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_6FCA

    ld a, [bc]
    jr nz, jr_031_6FBD

    jr nz, jr_031_6FBF

    jr nz, jr_031_6FC1

    jr nz, jr_031_6FC3

    jr nz, jr_031_6FC5

    jr nz, @+$75

    ld [hl], b
    ld h, h
    ld h, c
    ld [hl], h
    ld l, $65

jr_031_6FAD:
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$65

    ld h, d
    ld h, e
    ld h, [hl]
    ld h, l
    scf

jr_031_6FB6:
    ld h, e
    jr nc, jr_031_6FD9

    ld h, e
    ld h, d

jr_031_6FBB:
    ld h, e
    ld h, l

jr_031_6FBD:
    ld h, d
    ld h, d

jr_031_6FBF:
    jr c, jr_031_7023

jr_031_6FC1:
    jr nz, @+$32

jr_031_6FC3:
    jr nc, jr_031_6FF5

jr_031_6FC5:
    jr nc, jr_031_6FF7

    jr nc, @+$32

    inc sp

jr_031_6FCA:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_7004

    ld a, [bc]
    jr nz, jr_031_6FF7

    jr nz, @+$22

jr_031_6FD9:
    jr nz, jr_031_6FFB

    jr nz, jr_031_6FFD

    jr nz, jr_031_6FFF

    ld [hl], e
    ld [hl], b

jr_031_6FE1:
    ld h, l
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_7022

    inc sp
    inc sp
    ld h, h
    inc sp
    ld h, h
    ld h, h
    scf
    jr nz, jr_031_702B

    inc sp

jr_031_6FF5:
    inc sp
    ld h, h

jr_031_6FF7:
    ld sp, $3239
    ld h, [hl]

jr_031_6FFB:
    jr nz, @+$32

jr_031_6FFD:
    jr nc, jr_031_702F

jr_031_6FFF:
    jr nc, jr_031_7031

    jr nc, jr_031_7033

    inc sp

jr_031_7004:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_7031

    jr nz, jr_031_7033

    jr nz, jr_031_7035

    jr nz, jr_031_7037

    jr nz, jr_031_7039

    jr nz, jr_031_703B

    jr nz, jr_031_7090

    ld [hl], d
    ld l, a
    ld l, $73
    inc sp

jr_031_7022:
    ld h, h

jr_031_7023:
    jr nz, jr_031_7087

    ld h, h
    ld h, d
    ld sp, $6461
    inc [hl]

jr_031_702B:
    ld h, l
    jr nz, jr_031_7090

    ld h, h

jr_031_702F:
    ld h, d
    scf

jr_031_7031:
    jr nc, @+$39

jr_031_7033:
    jr nc, jr_031_7069

jr_031_7035:
    jr nz, @+$32

jr_031_7037:
    jr nc, jr_031_7069

jr_031_7039:
    jr nc, jr_031_706B

jr_031_703B:
    jr nc, jr_031_706D

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_707C

    ld h, d
    ld a, [bc]
    jr nz, jr_031_706B

    jr nz, jr_031_706D

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_70CA

    ld [hl], d
    ld l, a
    ld l, $78
    ld l, l
    ld l, c
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_70CD

    add hl, sp

jr_031_7069:
    ld [hl], $63

jr_031_706B:
    ld h, e
    ld h, [hl]

jr_031_706D:
    dec [hl]
    jr nc, jr_031_7090

    jr nc, jr_031_70A2

    jr nc, jr_031_70A4

    jr nc, @+$32

    jr nc, @+$34

    jr nz, @+$32

    jr nc, @+$32

jr_031_707C:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_70A5

    jr nz, jr_031_70A7

jr_031_7087:
    jr nz, jr_031_70A9

    jr nz, jr_031_70AB

    jr nz, jr_031_7100

    ld [hl], d
    ld l, a
    ld e, a

jr_031_7090:
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_70FD

    add hl, sp
    ld h, h
    ld [hl], $30
    jr c, jr_031_70D3

    ld [hl-], a
    jr nz, jr_031_7106

jr_031_70A2:
    add hl, sp
    ld h, [hl]

jr_031_70A4:
    inc sp

jr_031_70A5:
    ld [hl], $35

jr_031_70A7:
    ld h, h
    add hl, sp

jr_031_70A9:
    jr nz, @+$32

jr_031_70AB:
    jr nc, @+$32

    jr nc, jr_031_70DF

    jr nc, jr_031_70E1

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_70DF

    jr nz, jr_031_70E1

    jr nz, jr_031_70E3

    jr nz, jr_031_70E5

    jr nz, jr_031_713A

    ld [hl], d
    ld l, a
    ld e, a

jr_031_70CA:
    ld l, a
    ld h, d
    ld l, d

jr_031_70CD:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_710A

jr_031_70D3:
    jr c, jr_031_7107

    ld h, [hl]
    add hl, sp
    ld h, e
    ld [hl], $63
    jr nz, jr_031_7113

    jr c, jr_031_7110

    dec [hl]

jr_031_70DF:
    ld h, [hl]
    inc [hl]

jr_031_70E1:
    inc [hl]
    dec [hl]

jr_031_70E3:
    jr nz, @+$32

jr_031_70E5:
    jr nc, jr_031_7117

    jr nc, jr_031_7119

    jr nc, jr_031_711B

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_712A

    ld h, d
    ld a, [bc]
    jr nz, jr_031_7119

    jr nz, jr_031_711B

    jr nz, jr_031_711D

jr_031_70FD:
    ld [hl], e
    ld [hl], d
    ld l, a

jr_031_7100:
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]

jr_031_7106:
    ld l, e

jr_031_7107:
    ld l, $65
    ld h, [hl]

jr_031_710A:
    ld h, [hl]
    jr nz, jr_031_7143

    ld [hl-], a
    ld h, e
    scf

jr_031_7110:
    jr c, jr_031_7147

    ld h, l

jr_031_7113:
    ld h, l
    jr nz, jr_031_714C

    ld [hl-], a

jr_031_7117:
    ld h, e
    scf

jr_031_7119:
    jr c, jr_031_7150

jr_031_711B:
    ld h, c
    ld h, [hl]

jr_031_711D:
    jr nz, @+$32

    jr nc, jr_031_7151

    jr nc, @+$32

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_712A:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_7160

    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_7157

    ld [hl], e
    ld [hl], d
    ld l, a

jr_031_713A:
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65

jr_031_7143:
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_71AB

jr_031_7147:
    ld h, d
    ld h, l
    ld [hl], $61
    dec [hl]

jr_031_714C:
    dec [hl]
    ld h, h
    jr nz, jr_031_71B4

jr_031_7150:
    ld h, d

jr_031_7151:
    ld h, l
    ld [hl], $61
    ld [hl], $65
    ld h, [hl]

jr_031_7157:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_718D

    jr nc, jr_031_718F

    inc sp

jr_031_7160:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_718D

    jr nz, jr_031_718F

    jr nz, jr_031_7191

    jr nz, jr_031_71E6

    ld [hl], h
    ld h, l
    ld h, c
    ld l, l
    ld h, [hl]
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_71B4

    ld [hl], $61
    add hl, sp
    dec [hl]
    ld h, [hl]
    inc [hl]
    scf
    jr nz, @+$35

    ld [hl], $61
    dec [hl]

jr_031_718D:
    add hl, sp
    ld h, l

jr_031_718F:
    inc [hl]
    ld h, e

jr_031_7191:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_71C7

    jr nc, jr_031_71C9

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_71D8

    ld h, d
    ld a, [bc]
    jr nz, jr_031_71C7

    jr nz, jr_031_71C9

    jr nz, jr_031_71CB

jr_031_71AB:
    jr nz, jr_031_7220

    ld [hl], h
    ld h, l
    ld h, c
    ld l, l
    ld h, [hl]
    ld l, a
    ld l, [hl]

jr_031_71B4:
    ld [hl], h
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_71ED

    ld sp, $6335
    ld h, l
    scf
    inc [hl]
    ld sp, $3220
    ld sp, $6335

jr_031_71C7:
    scf
    ld [hl-], a

jr_031_71C9:
    ld h, e
    ld h, d

jr_031_71CB:
    jr nz, @+$32

    jr nc, jr_031_71FF

    jr nc, jr_031_7201

    jr nc, jr_031_7203

    ld [hl-], a
    jr nz, @+$32

    jr nc, @+$32

jr_031_71D8:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_7201

    jr nz, jr_031_7256

    ld [hl], h
    ld h, l
    ld h, c

jr_031_71E6:
    ld l, l
    ld h, [hl]
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld e, a
    ld h, e

jr_031_71ED:
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_722C

    ld [hl-], a
    ld h, d
    ld h, h
    jr c, @+$3B

    ld h, h
    ld h, l
    jr nz, jr_031_7235

    ld [hl-], a

jr_031_71FF:
    add hl, sp
    add hl, sp

jr_031_7201:
    ld [hl], $34

jr_031_7203:
    jr c, jr_031_723B

    jr nz, @+$32

    jr nc, jr_031_7239

    jr nc, jr_031_723B

    jr nc, jr_031_723D

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_723B

    jr nz, jr_031_7290

    ld [hl], h
    ld h, l
    ld h, c

jr_031_7220:
    ld l, l
    ld h, [hl]
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld e, a
    ld l, a
    ld h, d
    ld l, d
    ld l, $73
    inc sp

jr_031_722C:
    ld h, h
    jr nz, jr_031_7294

    ld h, c
    inc sp
    dec [hl]
    jr nc, jr_031_726D

    ld h, c

jr_031_7235:
    scf
    jr nz, jr_031_729D

    ld h, c

jr_031_7239:
    inc sp
    inc sp

jr_031_723B:
    ld h, h
    dec [hl]

jr_031_723D:
    scf
    ld h, [hl]
    jr nz, @+$32

    jr nc, @+$32

    jr nc, jr_031_7275

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_7286

    ld h, d
    ld a, [bc]
    ld [hl], e
    ld [hl], h
    ld h, l

jr_031_7256:
    ld h, c
    ld l, l
    ld h, [hl]
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_729B

    ld [hl], $65
    ld h, c
    ld h, c

jr_031_726D:
    ld [hl], $37
    ld h, l
    jr nz, jr_031_72A4

    ld [hl], $65
    ld h, c

jr_031_7275:
    ld h, c
    ld [hl], $33
    scf
    jr nz, jr_031_72AB

    jr nc, jr_031_72AD

    jr nc, @+$32

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_7286:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_72BC

    ld a, [bc]
    ld [hl], e
    ld [hl], h
    ld h, l

jr_031_7290:
    ld h, c
    ld l, l
    ld h, [hl]
    ld l, a

jr_031_7294:
    ld l, [hl]
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_031_729B:
    ld h, h
    ld [hl], e

jr_031_729D:
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_72D6

    scf

jr_031_72A4:
    ld [hl-], a
    jr nc, jr_031_72DB

    dec [hl]
    ld h, h
    jr c, jr_031_72CB

jr_031_72AB:
    inc sp
    scf

jr_031_72AD:
    ld [hl-], a
    jr nc, jr_031_72E4

    ld sp, $3461
    jr nz, @+$32

    jr nc, jr_031_72E7

    jr nc, jr_031_72E9

    jr nc, jr_031_72EB

    inc sp

jr_031_72BC:
    jr nz, jr_031_72EE

    jr nc, jr_031_72F0

    jr nc, jr_031_72F2

    jr nc, jr_031_72F4

    jr nc, jr_031_72F6

    ld a, [bc]
    jr nz, jr_031_72E9

    jr nz, @+$75

jr_031_72CB:
    ld [hl], a
    ld h, c
    ld l, l
    ld [hl], b
    ld l, a
    ld h, [hl]
    ld l, [hl]
    ld l, a
    ld l, b
    ld l, a
    ld [hl], b

jr_031_72D6:
    ld h, l
    ld l, $78
    ld l, l
    ld l, c

jr_031_72DB:
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]

jr_031_72E4:
    jr nz, jr_031_734B

    add hl, sp

jr_031_72E7:
    ld [hl], $63

jr_031_72E9:
    ld h, e
    ld h, [hl]

jr_031_72EB:
    dec [hl]
    jr nc, jr_031_730E

jr_031_72EE:
    jr nc, jr_031_7320

jr_031_72F0:
    jr nc, @+$32

jr_031_72F2:
    jr nc, jr_031_7324

jr_031_72F4:
    jr nc, @+$34

jr_031_72F6:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_7330

    ld a, [bc]
    jr nz, jr_031_7323

    jr nz, jr_031_7325

    jr nz, jr_031_7327

    jr nz, jr_031_7329

    ld [hl], e
    ld a, c
    ld l, [hl]
    ld [hl], h
    ld l, b

jr_031_730E:
    ld [hl], l
    ld [hl], e
    ld [hl], d
    ld l, $64
    ld l, h
    ld [hl], e
    jr nz, jr_031_7379

    add hl, sp
    ld sp, $6334
    add hl, sp
    inc sp
    scf
    jr nz, jr_031_7382

jr_031_7320:
    add hl, sp
    jr nc, jr_031_735A

jr_031_7323:
    dec [hl]

jr_031_7324:
    ld h, [hl]

jr_031_7325:
    jr nc, @+$65

jr_031_7327:
    jr nz, @+$32

jr_031_7329:
    jr nc, jr_031_735B

    jr nc, jr_031_735D

    jr nc, @+$32

    inc sp

jr_031_7330:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_736A

    ld a, [bc]
    jr nz, jr_031_735D

    jr nz, @+$22

    jr nz, jr_031_7361

    jr nz, jr_031_7363

    ld [hl], e
    ld a, c
    ld l, [hl]
    ld [hl], h
    ld l, b
    ld [hl], l
    ld [hl], e
    ld [hl], d

jr_031_734B:
    ld l, $73
    ld h, d
    ld l, e
    jr nz, jr_031_7383

    inc sp
    ld [hl], $65
    ld h, l
    inc [hl]
    ld [hl], $62
    jr nz, jr_031_738C

jr_031_735A:
    inc sp

jr_031_735B:
    ld [hl], $38

jr_031_735D:
    dec [hl]
    ld [hl], $35
    ld h, l

jr_031_7361:
    jr nz, @+$32

jr_031_7363:
    jr nc, jr_031_7395

    jr nc, jr_031_7397

    jr nc, @+$32

    inc sp

jr_031_736A:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_73A4

    ld a, [bc]
    jr nz, jr_031_7397

    jr nz, @+$22

jr_031_7379:
    jr nz, jr_031_739B

    jr nz, jr_031_739D

    ld [hl], e
    ld a, c
    ld l, [hl]
    ld [hl], h
    ld l, b

jr_031_7382:
    ld [hl], l

jr_031_7383:
    ld [hl], e
    ld [hl], d
    ld l, $73
    ld h, [hl]
    ld [hl-], a
    jr nz, jr_031_73BD

    inc sp

jr_031_738C:
    ld [hl], $65
    ld h, l
    inc [hl]
    ld [hl], $62
    jr nz, jr_031_73C6

    inc sp

jr_031_7395:
    ld [hl], $38

jr_031_7397:
    dec [hl]
    ld [hl], $35
    ld h, l

jr_031_739B:
    jr nz, @+$32

jr_031_739D:
    jr nc, jr_031_73CF

    jr nc, jr_031_73D1

    jr nc, jr_031_73D3

    inc sp

jr_031_73A4:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_73DE

    ld a, [bc]
    jr nz, jr_031_73D1

    jr nz, jr_031_73D3

    jr nz, jr_031_73D5

    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], c
    ld l, [hl]
    ld h, l

jr_031_73BD:
    ld [hl], a
    ld [hl], e
    ld l, $74
    ld a, b
    ld [hl], h
    jr nz, @+$65

    add hl, sp

jr_031_73C6:
    ld h, c
    ld h, e
    dec [hl]
    ld h, [hl]
    inc [hl]
    ld [hl-], a
    jr nz, jr_031_7431

    add hl, sp

jr_031_73CF:
    ld h, c
    ld h, e

jr_031_73D1:
    dec [hl]
    scf

jr_031_73D3:
    ld h, d
    inc sp

jr_031_73D5:
    jr nz, jr_031_7407

    jr nc, jr_031_7409

    jr nc, @+$32

    jr nc, jr_031_740D

    ld [hl-], a

jr_031_73DE:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_7418

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_7461

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $65
    ld a, b
    ld h, l
    jr nz, jr_031_7437

    ld [hl-], a
    ld sp, $6366
    ld h, h
    ld sp, $2034

jr_031_7407:
    jr c, @+$34

jr_031_7409:
    ld sp, $6565
    dec [hl]

jr_031_740D:
    dec [hl]
    ld h, e
    jr nz, @+$32

    jr nc, jr_031_7443

    jr nc, jr_031_7445

    jr nc, jr_031_7447

    inc sp

jr_031_7418:
    jr nz, jr_031_744A

    jr nc, jr_031_744C

    jr nc, jr_031_744E

    jr nc, jr_031_7450

    jr nc, jr_031_7452

    ld a, [bc]
    jr nz, jr_031_7445

    jr nz, jr_031_7447

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], h
    ld l, c
    ld l, l
    ld l, a
    ld [hl], d
    ld l, a

jr_031_7431:
    ld [hl], l
    ld [hl], e
    ld l, $78
    ld l, l
    ld l, c

jr_031_7437:
    jr nz, @+$67

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_74A7

    add hl, sp

jr_031_7443:
    ld [hl], $63

jr_031_7445:
    ld h, e
    ld h, [hl]

jr_031_7447:
    dec [hl]
    jr nc, @+$22

jr_031_744A:
    jr nc, jr_031_747C

jr_031_744C:
    jr nc, jr_031_747E

jr_031_744E:
    jr nc, @+$32

jr_031_7450:
    jr nc, @+$34

jr_031_7452:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_747F

    jr nz, jr_031_7481

jr_031_7461:
    jr nz, jr_031_7483

    jr nz, jr_031_7485

    jr nz, jr_031_7487

    jr nz, jr_031_7489

    jr nz, jr_031_74DF

    ld l, a
    ld a, b
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_74D9

    ld h, [hl]
    ld h, e
    ld h, c
    ld h, c
    jr nc, jr_031_74B2

    ld [hl], $20
    ld h, [hl]

jr_031_747C:
    ld h, [hl]
    ld h, e

jr_031_747E:
    inc [hl]

jr_031_747F:
    ld [hl], $65

jr_031_7481:
    ld h, h
    ld h, c

jr_031_7483:
    jr nz, jr_031_74B5

jr_031_7485:
    jr nc, jr_031_74B7

jr_031_7487:
    jr nc, @+$32

jr_031_7489:
    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_74CA

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_7519

    ld l, a
    ld a, b

jr_031_74A7:
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_74E4

    ld h, c
    dec [hl]
    ld [hl], $38
    inc sp

jr_031_74B2:
    ld h, d
    jr c, jr_031_74D5

jr_031_74B5:
    scf
    ld h, c

jr_031_74B7:
    dec [hl]
    ld [hl], $63
    jr nc, @+$38

    ld [hl], $20
    jr nc, jr_031_74F0

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_74F9

    jr nz, @+$32

    jr nc, @+$32

jr_031_74CA:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_74F3

    jr nz, @+$22

jr_031_74D5:
    jr nz, jr_031_74F7

    jr nz, jr_031_74F9

jr_031_74D9:
    jr nz, jr_031_754F

    ld l, a
    ld a, b
    ld e, a
    ld h, e

jr_031_74DF:
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp

jr_031_74E4:
    ld h, h
    jr nz, jr_031_7519

    ld [hl-], a
    inc [hl]
    dec [hl]
    ld h, l
    jr nc, @+$35

    ld sp, $3220

jr_031_74F0:
    ld [hl-], a
    ld [hl], $36

jr_031_74F3:
    ld sp, $3637
    ld h, [hl]

jr_031_74F7:
    jr nz, jr_031_7529

jr_031_74F9:
    jr nc, jr_031_752B

    jr nc, jr_031_752D

    jr nc, @+$32

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_752D

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_7589

    ld l, a
    ld a, b
    ld e, a
    ld l, a

jr_031_7519:
    ld h, d
    ld l, d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$65

    ld h, l
    jr c, jr_031_7559

    ld h, d
    inc [hl]
    inc sp
    jr c, jr_031_7549

jr_031_7529:
    ld h, e
    ld h, l

jr_031_752B:
    jr c, jr_031_7560

jr_031_752D:
    ld sp, $6461
    jr c, jr_031_7552

    jr nc, jr_031_7564

    jr nc, jr_031_7566

    jr nc, jr_031_7568

    jr nc, jr_031_756B

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_7578

    ld h, d
    ld a, [bc]
    jr nz, jr_031_7567

    jr nz, jr_031_7569

jr_031_7549:
    jr nz, jr_031_756B

    ld [hl], h
    ld l, a
    ld a, b
    ld e, a

jr_031_754F:
    ld [hl], e
    ld l, [hl]
    ld h, h

jr_031_7552:
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]

jr_031_7559:
    jr nz, jr_031_758B

    ld h, c
    ld h, c
    ld [hl-], a
    ld [hl-], a
    add hl, sp

jr_031_7560:
    inc sp
    ld h, l
    jr nz, @+$32

jr_031_7564:
    ld h, c
    ld h, c

jr_031_7566:
    ld [hl-], a

jr_031_7567:
    ld [hl-], a

jr_031_7568:
    add hl, sp

jr_031_7569:
    ld [hl], $64

jr_031_756B:
    jr nz, jr_031_759D

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_75A3

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_7578:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_75AE

    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_75A3

    jr nz, jr_031_75A5

    ld [hl], h
    ld l, a
    ld a, b
    ld e, a

jr_031_7589:
    ld [hl], e
    ld l, a

jr_031_758B:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_75F9

    jr nc, jr_031_75D0

    ld sp, $3733
    ld h, d
    ld [hl], $20

jr_031_759D:
    ld h, h
    jr nc, jr_031_75D9

    ld sp, $3433

jr_031_75A3:
    ld [hl-], a
    add hl, sp

jr_031_75A5:
    jr nz, @+$32

    jr nc, jr_031_75D9

    jr nc, jr_031_75DB

    jr nc, jr_031_75DD

    inc sp

jr_031_75AE:
    jr nz, jr_031_75E0

    jr nc, jr_031_75E2

    jr nc, jr_031_75E4

    jr nc, jr_031_75E6

    jr nc, jr_031_75E8

    ld a, [bc]
    jr nz, jr_031_75DB

    jr nz, jr_031_75DD

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, e
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_7634

    add hl, sp

jr_031_75D0:
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_763D

    add hl, sp

jr_031_75D9:
    ld [hl], $63

jr_031_75DB:
    ld h, e
    ld h, [hl]

jr_031_75DD:
    dec [hl]
    jr nc, jr_031_7600

jr_031_75E0:
    jr nc, @+$32

jr_031_75E2:
    jr nc, jr_031_7614

jr_031_75E4:
    jr nc, jr_031_7616

jr_031_75E6:
    jr nc, @+$34

jr_031_75E8:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_7615

    jr nz, @+$22

    jr nz, jr_031_7619

jr_031_75F9:
    jr nz, jr_031_761B

    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld l, a
    ld [hl], d

jr_031_7600:
    ld l, c
    ld h, c
    ld l, h
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_7639

    jr nc, jr_031_766F

    ld h, e
    ld h, h
    ld h, e
    inc [hl]
    ld [hl], $20
    jr nc, jr_031_7643

    ld h, h

jr_031_7614:
    inc sp

jr_031_7615:
    ld [hl-], a

jr_031_7616:
    jr c, jr_031_7679

    ld h, c

jr_031_7619:
    jr nz, @+$32

jr_031_761B:
    jr nc, jr_031_764D

    jr nc, jr_031_764F

    jr nc, jr_031_7651

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, jr_031_764F

    jr nz, jr_031_7651

    ld [hl], h
    ld [hl], l
    ld [hl], h

jr_031_7634:
    ld l, a
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h

jr_031_7639:
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d

jr_031_763D:
    ld l, $73
    inc sp
    ld h, h
    jr nz, jr_031_76A8

jr_031_7643:
    dec [hl]
    ld h, d
    scf
    jr nc, jr_031_76AA

    scf
    ld h, h
    jr nz, jr_031_76B1

    dec [hl]

jr_031_764D:
    ld h, d
    dec [hl]

jr_031_764F:
    ld h, e
    ld h, d

jr_031_7651:
    ld h, h
    jr c, jr_031_7674

    jr nc, jr_031_7686

    jr nc, @+$32

    jr nc, jr_031_768A

    jr nc, @+$34

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$22

    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld l, a

jr_031_766F:
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld e, a

jr_031_7674:
    ld l, a
    ld h, d
    ld l, d
    ld l, $73

jr_031_7679:
    inc sp
    ld h, h
    jr nz, jr_031_76DE

    ld [hl-], a
    ld sp, $3238
    inc sp
    ld h, c
    jr nc, jr_031_76A5

    ld h, c

jr_031_7686:
    ld [hl-], a
    ld sp, $6663

jr_031_768A:
    ld sp, $6664
    jr nz, @+$32

    jr nc, jr_031_76C1

    jr nc, jr_031_76C3

    jr nc, jr_031_76C5

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    inc sp
    ld h, [hl]
    scf
    ld h, c
    ld a, [bc]
    jr nz, jr_031_7717

    ld [hl], l
    ld [hl], h

jr_031_76A5:
    ld l, a
    ld [hl], d
    ld l, c

jr_031_76A8:
    ld h, c
    ld l, h

jr_031_76AA:
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e

jr_031_76B1:
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, @+$63

    ld [hl-], a
    jr c, jr_031_76EA

    ld [hl], $30
    jr c, jr_031_76F3

    jr nz, jr_031_7721

    ld [hl-], a

jr_031_76C1:
    jr c, jr_031_76F3

jr_031_76C3:
    ld [hl], $30

jr_031_76C5:
    ld h, e
    ld h, l
    jr nz, @+$32

    jr nc, jr_031_76FB

    jr nc, jr_031_76FD

    jr nc, @+$32

    inc sp
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_770A

    ld a, [bc]
    jr nz, jr_031_7751

    ld [hl], l

jr_031_76DE:
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_031_76EA:
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_7727

    scf
    ld h, c

jr_031_76F3:
    ld h, h
    add hl, sp
    ld sp, $3530
    jr nz, jr_031_7730

    scf

jr_031_76FB:
    ld h, c
    ld h, h

jr_031_76FD:
    add hl, sp
    jr nc, jr_031_7734

    ld h, [hl]
    jr nz, @+$32

    jr nc, jr_031_7735

    jr nc, jr_031_7737

    jr nc, jr_031_7739

    inc sp

jr_031_770A:
    jr nz, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    jr nc, @+$32

    ld a, [bc]
    jr nz, jr_031_7737

jr_031_7717:
    jr nz, jr_031_7739

    jr nz, jr_031_773B

    jr nz, jr_031_773D

    jr nz, jr_031_773F

    ld [hl], l
    ld l, [hl]

jr_031_7721:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $73

jr_031_7727:
    inc sp
    ld h, h
    jr nz, jr_031_7790

    inc [hl]
    jr c, jr_031_7766

    ld h, l
    dec [hl]

jr_031_7730:
    ld h, [hl]
    add hl, sp
    jr nz, jr_031_7799

jr_031_7734:
    inc [hl]

jr_031_7735:
    add hl, sp
    inc [hl]

jr_031_7737:
    jr c, jr_031_7769

jr_031_7739:
    jr c, jr_031_776B

jr_031_773B:
    jr nz, jr_031_776D

jr_031_773D:
    jr nc, jr_031_776F

jr_031_773F:
    jr nc, jr_031_7771

    jr nc, jr_031_7773

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_7771

jr_031_7751:
    jr nz, jr_031_7773

    jr nz, @+$22

    ld [hl], l
    ld l, [hl]
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld e, a
    ld h, e
    ld l, b
    ld [hl], d
    ld l, $73
    inc sp
    ld h, h
    jr nz, @+$3B

    dec [hl]

jr_031_7766:
    ld h, [hl]
    jr nc, jr_031_779D

jr_031_7769:
    add hl, sp
    ld h, e

jr_031_776B:
    jr nc, jr_031_778D

jr_031_776D:
    add hl, sp
    dec [hl]

jr_031_776F:
    ld h, h
    inc sp

jr_031_7771:
    inc [hl]
    ld h, c

jr_031_7773:
    ld h, l
    ld [hl], $20
    jr nc, jr_031_77A8

    jr nc, @+$32

    jr nc, jr_031_77AC

    jr nc, jr_031_77AF

    jr nz, @+$32

    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, @+$37

    ld h, d
    ld a, [bc]
    jr nz, jr_031_77AB

    jr nz, jr_031_77AD

jr_031_778D:
    jr nz, jr_031_77AF

    ld [hl], l

jr_031_7790:
    ld l, [hl]
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld e, a
    ld l, a
    ld h, d
    ld l, d

jr_031_7799:
    ld l, $73
    inc sp
    ld h, h

jr_031_779D:
    jr nz, jr_031_7805

    ld h, e
    jr nc, @+$34

    ld [hl], $32
    inc [hl]
    inc sp
    jr nz, @+$68

jr_031_77A8:
    ld h, e
    jr nc, jr_031_77DF

jr_031_77AB:
    scf

jr_031_77AC:
    ld h, [hl]

jr_031_77AD:
    ld [hl], $33

jr_031_77AF:
    jr nz, @+$32

    jr nc, jr_031_77E3

    jr nc, @+$32

    jr nc, jr_031_77E7

    ld sp, $3020
    inc sp
    ld [hl], $61
    ld h, h
    ld [hl-], a
    jr c, jr_031_77F6

    ld h, d
    ld a, [bc]
    jr nz, @+$22

    jr nz, @+$77

    ld l, [hl]
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, [hl]
    ld l, e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_783B

    ld h, d
    scf
    ld sp, $3337
    dec [hl]

jr_031_77DF:
    ld h, d
    jr nz, @+$64

    ld h, d

jr_031_77E3:
    scf
    ld sp, $3337

jr_031_77E7:
    jr nc, jr_031_784A

    jr nz, @+$32

    jr nc, jr_031_781D

    jr nc, jr_031_781F

    jr nc, jr_031_7821

    inc sp
    jr nz, @+$32

    jr nc, @+$32

jr_031_77F6:
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_031_782C

    ld a, [bc]
    jr nz, jr_031_781F

    jr nz, @+$77

    ld l, [hl]
    ld [hl], d
    ld h, l
    ld [hl], e

jr_031_7805:
    ld [hl], h
    ld e, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $65
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_031_7848

    ld h, l
    ld h, [hl]
    ld h, c
    jr nc, jr_031_7848

    jr c, jr_031_787C

    jr nz, jr_031_7851

    ld h, l

jr_031_781D:
    ld h, [hl]
    ld h, c

jr_031_781F:
    jr nc, jr_031_7853

jr_031_7821:
    add hl, sp
    dec [hl]
    jr nz, jr_031_7855

    jr nc, jr_031_7857

    jr nc, jr_031_7859

    jr nc, jr_031_785B

    ld [hl-], a

jr_031_782C:
    jr nz, jr_031_785E

    jr nc, jr_031_7860

    jr nc, jr_031_7862

    jr nc, jr_031_7864

    jr nc, jr_031_7866

    ld a, [bc]
    jr nz, jr_031_7859

    jr nz, jr_031_785B

jr_031_783B:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld [hl], l
    ld [hl], b
    ld h, h

jr_031_7848:
    ld h, c
    ld [hl], h

jr_031_784A:
    ld h, l
    jr nz, jr_031_787D

    scf
    inc sp
    ld h, [hl]
    ld h, [hl]

jr_031_7851:
    ld h, e
    ld h, c

jr_031_7853:
    jr nc, jr_031_7875

jr_031_7855:
    jr nc, jr_031_788E

jr_031_7857:
    inc sp
    ld h, [hl]

jr_031_7859:
    ld h, l
    inc sp

jr_031_785B:
    inc sp
    jr c, jr_031_787E

jr_031_785E:
    jr nc, jr_031_7890

jr_031_7860:
    jr nc, @+$32

jr_031_7862:
    jr nc, jr_031_7894

jr_031_7864:
    jr nc, jr_031_7898

jr_031_7866:
    jr nz, jr_031_7898

    jr nc, jr_031_789A

    jr nc, jr_031_789C

    jr nc, jr_031_789E

    jr nc, jr_031_78A0

    ld a, [bc]
    jr nz, jr_031_7893

    jr nz, jr_031_7895

jr_031_7875:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_031_78F1

    ld h, l

jr_031_787C:
    ld h, l

jr_031_787D:
    ld [hl], e

jr_031_787E:
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_78EC

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]

jr_031_788E:
    jr nz, jr_031_78F5

jr_031_7890:
    add hl, sp
    ld [hl], $63

jr_031_7893:
    ld h, e

jr_031_7894:
    ld h, [hl]

jr_031_7895:
    dec [hl]
    jr nc, jr_031_78B8

jr_031_7898:
    jr nc, jr_031_78CA

jr_031_789A:
    jr nc, @+$32

jr_031_789C:
    jr nc, jr_031_78CE

jr_031_789E:
    jr nc, jr_031_78D2

jr_031_78A0:
    jr nz, jr_031_78D2

    jr nc, jr_031_78D4

    jr nc, jr_031_78D6

    jr nc, jr_031_78D8

    jr nc, jr_031_78DA

    ld a, [bc]
    jr nz, jr_031_78CD

    jr nz, jr_031_78CF

    ld [hl], a
    ld h, c
    ld [hl], d
    ld [hl], e
    ld l, h
    ld l, c
    ld l, e
    ld [hl], e
    ld [hl], a

jr_031_78B8:
    ld l, a
    ld l, a
    ld h, h
    ld l, $78
    ld l, l
    ld l, c
    jr nz, jr_031_7926

    add hl, sp
    ld [hl], $63
    ld h, e
    ld h, [hl]
    inc [hl]
    dec [hl]
    jr nz, jr_031_792F

jr_031_78CA:
    add hl, sp
    ld [hl], $63

jr_031_78CD:
    ld h, e

jr_031_78CE:
    ld h, [hl]

jr_031_78CF:
    dec [hl]
    jr nc, jr_031_78F2

jr_031_78D2:
    jr nc, jr_031_7904

jr_031_78D4:
    jr nc, jr_031_7906

jr_031_78D6:
    jr nc, jr_031_7908

jr_031_78D8:
    jr nc, jr_031_790C

jr_031_78DA:
    jr nz, jr_031_790C

    jr nc, jr_031_790E

    jr nc, jr_031_7910

    jr nc, jr_031_7912

    jr nc, jr_031_7914

    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_78EC:
    nop
    nop
    nop
    nop
    nop

jr_031_78F1:
    nop

jr_031_78F2:
    nop
    nop
    nop

jr_031_78F5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7904:
    nop
    nop

jr_031_7906:
    nop
    nop

jr_031_7908:
    nop
    nop
    nop
    nop

jr_031_790C:
    nop
    nop

jr_031_790E:
    nop
    nop

jr_031_7910:
    nop
    nop

jr_031_7912:
    nop
    nop

jr_031_7914:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7926:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_792F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    ld b, e
    ld c, l
    ld b, h
    ld a, [hl-]
    jr nz, jr_031_7A6F

    ld l, l
    ld [hl-], a
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_031_7A3D

    ld b, a
    jr nz, @+$4F

    ld c, c
    ld b, h
    ld c, c
    ld h, [hl]
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    ld e, h
    ld h, c
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld h, l
    ld l, $6D
    ld l, c
    ld h, h
    jr nz, jr_031_7A6F

    ld a, [hl-]
    ld e, h
    ld l, c
    ld l, c
    ld e, h
    ld b, l
    ld l, l
    ld e, h
    ld d, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld h, e
    ld h, l
    ld e, h
    ld d, e
    ld a, c

jr_031_7A3D:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    ld b, h
    ld h, c
    ld [hl], h
    ld h, c
    ld e, h
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld e, h
    ld h, c
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld h, l
    ld l, $73
    ld l, a
    ld l, [hl]
    ld h, a
    dec c
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_7A81

    ld c, c
    ld b, h
    dec a
    ld [hl-], a
    ld sp, $0A0D
    jr nz, jr_031_7A8A

    jr nz, @+$22

    ld b, e
    ld l, b
    ld h, c

jr_031_7A6F:
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e
    jr nc, jr_031_7AD3

    ld a, [hl-]
    jr nz, jr_031_7AE9

    ld [hl], d
    ld h, a
    dec a
    jr c, jr_031_7AAE

    jr nz, jr_031_7AF6

    ld l, a

jr_031_7A81:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7AF8

    ld h, c
    ld l, [hl]

jr_031_7A8A:
    dec a
    ld [hl], $34
    jr nz, jr_031_7B01

    ld h, l
    halt
    dec a
    jr nc, jr_031_7AB4

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7AA7

    ld a, [bc]
    jr nz, jr_031_7ABD

    jr nz, @+$22

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7AA7:
    ld sp, $3A5D
    jr nz, @+$72

    ld [hl], d
    ld h, a

jr_031_7AAE:
    dec a
    jr c, jr_031_7AE2

    jr nz, jr_031_7B29

    ld l, a

jr_031_7AB4:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, @+$72

    ld h, c
    ld l, [hl]

jr_031_7ABD:
    dec a
    ld [hl], $34
    jr nz, @+$74

    ld h, l
    halt
    dec a
    jr nc, jr_031_7AE7

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7ADA

    ld a, [bc]
    jr nz, jr_031_7AF0

    jr nz, @+$22

    ld b, e

jr_031_7AD3:
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7ADA:
    ld [hl-], a
    ld e, l
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a

jr_031_7AE2:
    inc sp
    add hl, sp
    jr nz, jr_031_7B5C

    ld l, a

jr_031_7AE7:
    ld l, h
    dec a

jr_031_7AE9:
    ld sp, $3732
    jr nz, jr_031_7B5E

    ld h, c
    ld l, [hl]

jr_031_7AF0:
    dec a
    ld [hl], $34
    jr nz, jr_031_7B67

    ld h, l

jr_031_7AF6:
    halt
    dec a

jr_031_7AF8:
    jr nc, jr_031_7B1A

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7B0D

    ld a, [bc]

jr_031_7B01:
    jr nz, jr_031_7B23

    jr nz, jr_031_7B25

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7B0D:
    inc sp
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7B82

    ld [hl], d
    ld h, a
    dec a
    inc sp
    jr nz, jr_031_7B8E

    ld l, a
    ld l, h

jr_031_7B1A:
    dec a
    ld sp, $3732
    jr nz, jr_031_7B90

    ld h, c
    ld l, [hl]
    dec a

jr_031_7B23:
    ld [hl], $34

jr_031_7B25:
    jr nz, jr_031_7B99

    ld h, l
    halt

jr_031_7B29:
    dec a
    jr nc, jr_031_7B4C

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7B3F

    ld a, [bc]
    jr nz, jr_031_7B55

    jr nz, jr_031_7B57

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7B3F:
    inc [hl]
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7BB4

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7B69

    halt
    ld l, a
    ld l, h

jr_031_7B4C:
    dec a
    ld sp, $3732
    jr nz, jr_031_7BC2

    ld h, c
    ld l, [hl]
    dec a

jr_031_7B55:
    ld [hl], $34

jr_031_7B57:
    jr nz, jr_031_7BCB

    ld h, l
    halt
    dec a

jr_031_7B5C:
    jr nc, jr_031_7B7E

jr_031_7B5E:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7B71

    ld a, [bc]
    jr nz, jr_031_7B87

jr_031_7B67:
    jr nz, jr_031_7B89

jr_031_7B69:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7B71:
    dec [hl]
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7BE6

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7B9B

    halt
    ld l, a
    ld l, h

jr_031_7B7E:
    dec a
    ld sp, $3732

jr_031_7B82:
    jr nz, jr_031_7BF4

    ld h, c
    ld l, [hl]
    dec a

jr_031_7B87:
    ld [hl], $34

jr_031_7B89:
    jr nz, jr_031_7BFD

    ld h, l
    halt
    dec a

jr_031_7B8E:
    jr nc, jr_031_7BB0

jr_031_7B90:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7BA3

    ld a, [bc]
    jr nz, jr_031_7BB9

jr_031_7B99:
    jr nz, jr_031_7BBB

jr_031_7B9B:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7BA3:
    ld [hl], $5D
    ld a, [hl-]
    jr nz, jr_031_7C18

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7BCD

    halt
    ld l, a
    ld l, h

jr_031_7BB0:
    dec a
    ld sp, $3732

jr_031_7BB4:
    jr nz, jr_031_7C26

    ld h, c
    ld l, [hl]
    dec a

jr_031_7BB9:
    ld [hl], $34

jr_031_7BBB:
    jr nz, jr_031_7C2F

    ld h, l
    halt
    dec a
    jr nc, jr_031_7BE2

jr_031_7BC2:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7BD5

    ld a, [bc]
    jr nz, jr_031_7BEB

jr_031_7BCB:
    jr nz, jr_031_7BED

jr_031_7BCD:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7BD5:
    scf
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7C4A

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7BFF

    halt
    ld l, a
    ld l, h

jr_031_7BE2:
    dec a
    ld sp, $3732

jr_031_7BE6:
    jr nz, jr_031_7C58

    ld h, c
    ld l, [hl]
    dec a

jr_031_7BEB:
    ld [hl], $34

jr_031_7BED:
    jr nz, jr_031_7C61

    ld h, l
    halt
    dec a
    jr nc, jr_031_7C14

jr_031_7BF4:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7C07

    ld a, [bc]
    jr nz, jr_031_7C1D

jr_031_7BFD:
    jr nz, jr_031_7C1F

jr_031_7BFF:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7C07:
    jr c, jr_031_7C66

    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7C31

    halt
    ld l, a
    ld l, h

jr_031_7C14:
    dec a
    ld sp, $3732

jr_031_7C18:
    jr nz, @+$72

    ld h, c
    ld l, [hl]
    dec a

jr_031_7C1D:
    ld [hl], $34

jr_031_7C1F:
    jr nz, @+$74

    ld h, l
    halt
    dec a
    jr nc, jr_031_7C46

jr_031_7C26:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7C39

    ld a, [bc]
    jr nz, jr_031_7C4F

jr_031_7C2F:
    jr nz, jr_031_7C51

jr_031_7C31:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7C39:
    add hl, sp
    ld e, l
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7C63

    halt
    ld l, a
    ld l, h

jr_031_7C46:
    dec a
    ld sp, $3732

jr_031_7C4A:
    jr nz, jr_031_7CBC

    ld h, c
    ld l, [hl]
    dec a

jr_031_7C4F:
    ld [hl], $34

jr_031_7C51:
    jr nz, jr_031_7CC5

    ld h, l
    halt
    dec a
    jr nc, jr_031_7C78

jr_031_7C58:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7C6B

    ld a, [bc]
    jr nz, jr_031_7C81

jr_031_7C61:
    jr nz, @+$22

jr_031_7C63:
    ld b, e
    ld l, b
    ld h, c

jr_031_7C66:
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7C6B:
    ld sp, $5D30
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7C96

    halt
    ld l, a

jr_031_7C78:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7CEF

    ld h, c
    ld l, [hl]

jr_031_7C81:
    dec a
    ld [hl], $34
    jr nz, jr_031_7CF8

    ld h, l
    halt
    dec a
    jr nc, jr_031_7CAB

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7C9E

    ld a, [bc]
    jr nz, jr_031_7CB4

    jr nz, @+$22

jr_031_7C96:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7C9E:
    ld sp, $5D31
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7CC9

    halt
    ld l, a

jr_031_7CAB:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7D22

    ld h, c
    ld l, [hl]

jr_031_7CB4:
    dec a
    ld [hl], $34
    jr nz, jr_031_7D2B

    ld h, l
    halt
    dec a

jr_031_7CBC:
    jr nc, jr_031_7CDE

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7CD1

    ld a, [bc]

jr_031_7CC5:
    jr nz, jr_031_7CE7

    jr nz, @+$22

jr_031_7CC9:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7CD1:
    ld sp, $5D32
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7CFC

    halt
    ld l, a

jr_031_7CDE:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7D55

    ld h, c
    ld l, [hl]

jr_031_7CE7:
    dec a
    ld [hl], $34
    jr nz, jr_031_7D5E

    ld h, l
    halt
    dec a

jr_031_7CEF:
    jr nc, jr_031_7D11

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7D04

    ld a, [bc]

jr_031_7CF8:
    jr nz, jr_031_7D1A

    jr nz, @+$22

jr_031_7CFC:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7D04:
    ld sp, $5D33
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7D2F

    halt
    ld l, a

jr_031_7D11:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7D88

    ld h, c
    ld l, [hl]

jr_031_7D1A:
    dec a
    ld [hl], $34
    jr nz, jr_031_7D91

    ld h, l
    halt
    dec a

jr_031_7D22:
    jr nc, jr_031_7D44

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7D37

    ld a, [bc]

jr_031_7D2B:
    jr nz, jr_031_7D4D

    jr nz, @+$22

jr_031_7D2F:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7D37:
    ld sp, $5D34
    ld a, [hl-]
    jr nz, jr_031_7DAD

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7D62

    halt
    ld l, a

jr_031_7D44:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, @+$72

    ld h, c
    ld l, [hl]

jr_031_7D4D:
    dec a
    ld [hl], $34
    jr nz, jr_031_7DC4

    ld h, l
    halt
    dec a

jr_031_7D55:
    jr nc, jr_031_7D77

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7D6A

    ld a, [bc]

jr_031_7D5E:
    jr nz, jr_031_7D80

    jr nz, @+$22

jr_031_7D62:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7D6A:
    ld sp, $5D35
    ld a, [hl-]
    jr nz, jr_031_7DE0

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7D95

    halt
    ld l, a

jr_031_7D77:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7DEE

    ld h, c
    ld l, [hl]

jr_031_7D80:
    dec a
    ld [hl], $34
    jr nz, jr_031_7DF7

    ld h, l
    halt
    dec a

jr_031_7D88:
    jr nc, jr_031_7DAA

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7D9D

    ld a, [bc]

jr_031_7D91:
    jr nz, jr_031_7DB3

    ld c, l
    ld c, c

jr_031_7D95:
    ld b, h
    ld c, c
    ld [hl], e
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld a, [hl-]

jr_031_7D9D:
    dec c
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_031_7DC3

    ld c, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld a, [hl-]
    jr nz, @+$3E

jr_031_7DAA:
    ld l, l
    ld h, c
    ld a, d

jr_031_7DAD:
    ld h, l
    ld a, $0D
    ld a, [bc]
    jr nz, jr_031_7DD3

jr_031_7DB3:
    jr nz, jr_031_7DD5

    ld b, [hl]
    ld l, c
    ld l, h
    ld h, l
    ld a, [hl-]
    jr nz, jr_031_7DF8

    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $6D
    ld l, c

jr_031_7DC3:
    ld h, h

jr_031_7DC4:
    ld a, $0D
    ld a, [bc]
    ld d, l
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_031_7E33

    ld a, b
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]

jr_031_7DD3:
    ld h, c
    ld l, h

jr_031_7DD5:
    jr nz, jr_031_7E4B

    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_031_7E50

    ld l, a
    jr nz, jr_031_7E42

    ld l, a

jr_031_7DE0:
    ld l, [hl]
    halt
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_031_7E23

    ld c, l
    ld c, c
    ld b, h
    ld c, c
    ld h, [hl]
    ld l, c
    ld l, h

jr_031_7DEE:
    ld h, l
    ld [hl], e
    ld e, h
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $6D

jr_031_7DF7:
    ld l, c

jr_031_7DF8:
    ld h, h
    ld a, $2E
    ld l, $2E
    dec c
    ld a, [bc]
    ld b, e
    ld c, l
    ld b, h
    ld a, [hl-]
    jr nz, jr_031_7E6C

    ld l, l
    ld [hl-], a
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_031_7E3A

    ld b, a
    jr nz, jr_031_7E5D

    ld c, c
    ld b, h
    ld c, c
    ld h, [hl]
    ld l, c
    ld l, h
    ld h, l
    ld [hl], e
    ld e, h
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $6D
    ld l, c
    ld h, h
    jr nz, @+$45

jr_031_7E23:
    ld a, [hl-]
    ld e, h
    ld l, c
    ld l, c
    ld e, h
    ld b, l
    ld l, l
    ld e, h
    ld d, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld h, e
    ld h, l
    ld e, h
    ld d, e

jr_031_7E33:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    ld b, h
    ld h, c

jr_031_7E3A:
    ld [hl], h
    ld h, c
    ld e, h
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e

jr_031_7E42:
    ld e, h
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $73
    ld l, a
    ld l, [hl]

jr_031_7E4B:
    ld h, a
    dec c
    ld a, [bc]
    jr nz, @+$22

jr_031_7E50:
    jr nz, jr_031_7E72

    ld c, c
    ld b, h
    dec a
    ld [hl-], a
    ld [hl-], a
    dec c
    ld a, [bc]
    jr nz, jr_031_7E7B

    jr nz, @+$22

jr_031_7E5D:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e
    jr nc, jr_031_7EC4

    ld a, [hl-]
    jr nz, jr_031_7EDA

    ld [hl], d
    ld h, a

jr_031_7E6C:
    dec a
    jr c, jr_031_7E9F

    jr nz, jr_031_7EE7

    ld l, a

jr_031_7E72:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, jr_031_7EE9

    ld h, c
    ld l, [hl]

jr_031_7E7B:
    dec a
    ld [hl], $34
    jr nz, jr_031_7EF2

    ld h, l
    halt
    dec a
    jr nc, jr_031_7EA5

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7E98

    ld a, [bc]
    jr nz, jr_031_7EAE

    jr nz, @+$22

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7E98:
    ld sp, $3A5D
    jr nz, @+$72

    ld [hl], d
    ld h, a

jr_031_7E9F:
    dec a
    jr c, jr_031_7ED3

    jr nz, jr_031_7F1A

    ld l, a

jr_031_7EA5:
    ld l, h
    dec a
    ld sp, $3732
    jr nz, @+$72

    ld h, c
    ld l, [hl]

jr_031_7EAE:
    dec a
    ld [hl], $34
    jr nz, @+$74

    ld h, l
    halt
    dec a
    jr nc, jr_031_7ED8

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7ECB

    ld a, [bc]
    jr nz, jr_031_7EE1

    jr nz, @+$22

    ld b, e

jr_031_7EC4:
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7ECB:
    ld [hl-], a
    ld e, l
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a

jr_031_7ED3:
    inc sp
    add hl, sp
    jr nz, jr_031_7F4D

    ld l, a

jr_031_7ED8:
    ld l, h
    dec a

jr_031_7EDA:
    ld sp, $3732
    jr nz, jr_031_7F4F

    ld h, c
    ld l, [hl]

jr_031_7EE1:
    dec a
    ld [hl], $34
    jr nz, jr_031_7F58

    ld h, l

jr_031_7EE7:
    halt
    dec a

jr_031_7EE9:
    jr nc, jr_031_7F0B

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7EFE

    ld a, [bc]

jr_031_7EF2:
    jr nz, jr_031_7F14

    jr nz, jr_031_7F16

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7EFE:
    inc sp
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7F73

    ld [hl], d
    ld h, a
    dec a
    inc sp
    jr nz, jr_031_7F7F

    ld l, a
    ld l, h

jr_031_7F0B:
    dec a
    ld sp, $3732
    jr nz, jr_031_7F81

    ld h, c
    ld l, [hl]
    dec a

jr_031_7F14:
    ld [hl], $34

jr_031_7F16:
    jr nz, jr_031_7F8A

    ld h, l
    halt

jr_031_7F1A:
    dec a
    jr nc, jr_031_7F3D

    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7F30

    ld a, [bc]
    jr nz, jr_031_7F46

    jr nz, jr_031_7F48

    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7F30:
    inc [hl]
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7FA5

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7F5A

    halt
    ld l, a
    ld l, h

jr_031_7F3D:
    dec a
    ld sp, $3732
    jr nz, jr_031_7FB3

    ld h, c
    ld l, [hl]
    dec a

jr_031_7F46:
    ld [hl], $34

jr_031_7F48:
    jr nz, jr_031_7FBC

    ld h, l
    halt
    dec a

jr_031_7F4D:
    jr nc, jr_031_7F6F

jr_031_7F4F:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7F62

    ld a, [bc]
    jr nz, jr_031_7F78

jr_031_7F58:
    jr nz, jr_031_7F7A

jr_031_7F5A:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7F62:
    dec [hl]
    ld e, l
    ld a, [hl-]
    jr nz, jr_031_7FD7

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7F8C

    halt
    ld l, a
    ld l, h

jr_031_7F6F:
    dec a
    ld sp, $3732

jr_031_7F73:
    jr nz, jr_031_7FE5

    ld h, c
    ld l, [hl]
    dec a

jr_031_7F78:
    ld [hl], $34

jr_031_7F7A:
    jr nz, jr_031_7FEE

    ld h, l
    halt
    dec a

jr_031_7F7F:
    jr nc, jr_031_7FA1

jr_031_7F81:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7F94

    ld a, [bc]
    jr nz, jr_031_7FAA

jr_031_7F8A:
    jr nz, jr_031_7FAC

jr_031_7F8C:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7F94:
    ld [hl], $5D
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7FBE

    halt
    ld l, a
    ld l, h

jr_031_7FA1:
    dec a
    ld sp, $3732

jr_031_7FA5:
    jr nz, @+$72

    ld h, c
    ld l, [hl]
    dec a

jr_031_7FAA:
    ld [hl], $34

jr_031_7FAC:
    jr nz, @+$74

    ld h, l
    halt
    dec a
    jr nc, jr_031_7FD3

jr_031_7FB3:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7FC6

    ld a, [bc]
    jr nz, jr_031_7FDC

jr_031_7FBC:
    jr nz, jr_031_7FDE

jr_031_7FBE:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7FC6:
    scf
    ld e, l
    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
    jr nc, jr_031_7FF0

    halt
    ld l, a
    ld l, h

jr_031_7FD3:
    dec a
    ld sp, $3732

jr_031_7FD7:
    jr nz, @+$72

    ld h, c
    ld l, [hl]
    dec a

jr_031_7FDC:
    ld [hl], $34

jr_031_7FDE:
    jr nz, @+$74

    ld h, l
    halt
    dec a
    jr nc, @+$22

jr_031_7FE5:
    ld h, e
    ld l, b
    ld l, a
    dec a
    jr nc, jr_031_7FF8

    ld a, [bc]
    jr nz, @+$22

jr_031_7FEE:
    jr nz, @+$22

jr_031_7FF0:
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld l, h
    ld e, e

jr_031_7FF8:
    jr c, @+$5F

    ld a, [hl-]
    jr nz, @+$72

    ld [hl], d
    ld h, a
    dec a
