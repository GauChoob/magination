; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    nop
    nop
    ld [$1404], sp
    ld a, [bc]
    dec b
    ld d, $2C
    ld e, c
    ld e, [hl]
    and c
    ld h, b
    rst $18
    ld h, c
    cp $79
    add [hl]
    nop
    rst $38
    add b
    ld a, a
    ld h, [hl]
    add hl, de
    ld e, b
    dec a
    ld hl, $1864
    ld b, h
    add h
    ld a, b
    ld [hl], $A8
    ret nc

jr_01F_4023:
    db $18, $80
    ld [$08F0], sp
    nop
    ld hl, sp+$08
    ldh a, [$F0]
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    ld b, b
    ld hl, $5122
    ld hl, $2952
    ld d, d
    ld sp, $006A
    add b
    add b
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b

jr_01F_4049:
    ret nz

    add b
    ret nz

    add b
    ld b, b
    and b
    ret nz

    ld sp, $354B
    ld l, d
    ld sp, $256E
    ld a, e
    add hl, hl
    halt
    add hl, hl
    halt
    jr z, jr_01F_40D5

    inc c
    ld a, e
    ret nz

    jr nz, jr_01F_4023

    and b
    ret nz

    and b
    ret nc

    jr nz, jr_01F_4049

    sub b
    ldh [rNR10], a
    add sp, $30
    ldh a, [rOBP0]
    inc e
    ld l, e
    ld d, $61
    ld de, $3442
    ld b, h
    dec hl
    ld d, e
    inc b
    ld e, b
    xor a
    ld d, b
    ld [hl], l

jr_01F_407F:
    xor d
    ld h, b
    xor b
    inc [hl]
    ret z

    ld [bc], a
    db $FC
    call nz, $153A
    ld a, [hl+]
    jp z, Jump_01F_6AC1

    ld l, c
    call nz, $3303
    db $EC
    ld e, d
    sub l
    ld b, c
    and [hl]
    jr z, @-$2B

    adc [hl]
    ld [hl], c
    ld b, b
    ccf
    jr z, jr_01F_40B5

    rra
    nop
    ld l, [hl]
    sub c
    ld a, [$B405]
    ld c, e
    jr z, jr_01F_407F

    ld bc, $06FE
    ld hl, sp+$08
    ldh a, [$F0]
    nop
    ld [bc], a
    ld bc, $0201
    dec b

jr_01F_40B5:
    ld [bc], a
    ld [bc], a
    dec b
    dec bc
    inc b
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    ld c, $00
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    jr nz, @-$3E

    ld bc, $90E0
    ld h, c
    nop
    nop
    nop
    nop
    nop

jr_01F_40D5:
    nop
    ld bc, $0200
    ld bc, $4384
    ld c, b
    rst $20
    ret nc

    xor a
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    and b
    ld d, b
    and b
    ldh [rNR10], a
    add sp, $50
    ldh [$58], a
    rla
    rrca
    rrca
    dec d
    dec c
    ld d, $05
    dec de
    dec l
    rla
    dec e
    cpl
    inc e
    dec hl
    inc c
    dec sp
    add d
    ld [hl], c
    adc c
    ld [hl], e
    add c
    ld a, [hl]
    ret z

    scf
    ld c, h

jr_01F_4109:
    or e
    call c, $8EAB
    db $FD
    adc $BD
    pop bc
    cp [hl]
    push bc
    ld a, [hl-]
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    jr jr_01F_4109

    dec e
    ld [$56B9], a
    add hl, sp
    sub $E0
    ret c

    db $F4
    adc b
    ldh a, [$4C]
    ldh a, [$6C]
    ld [c], a
    ld e, h
    ldh a, [$AE]
    ldh [$7E], a
    ldh a, [$EE]
    ld d, h
    inc sp
    inc a
    ld e, e

jr_01F_4134:
    inc [hl]

jr_01F_4135:
    ld d, e
    or h
    ld d, e
    ld l, h
    xor e
    ld h, h
    and e
    ld b, h
    add e
    ld c, d
    adc c
    db $EB
    ld d, d
    rst $20
    ld e, d
    or c
    dec l
    ld d, b
    adc h
    ld e, e
    sub l
    ld c, d
    add h
    ld a, [hl+]
    call nz, $806B
    ld a, [hl+]
    call nz, $E41A
    sub [hl]
    ld l, d
    sbc h
    ld h, h
    reti


    jr nz, jr_01F_4135

    jr z, jr_01F_4134

    jr nz, @+$7D

    inc b
    db $E4
    jp c, $1A25

    ld c, d
    ld sp, $31CA
    sub d
    ld h, c
    sub d
    ld h, c
    ld h, $C1
    ld b, h
    add e
    ld b, d
    and l
    ld [hl], $C1
    ld c, h
    or e
    ld [hl], $C9
    adc h
    ld [hl], e
    ld h, b
    rra
    ld [$0307], sp
    nop
    dec hl
    call nz, $C23D
    cpl
    ret nc

    ld a, [de]
    push hl
    inc d
    db $EB
    ld [$00F7], sp
    rst $38
    add b
    ld a, a
    adc $21
    db $FD
    nop
    xor [hl]
    ld d, b
    dec d
    ld [$FC03], a
    nop
    rst $38
    ld bc, $2CFE
    ret nc

    adc [hl]
    ld bc, $0B34
    jp hl


    ld d, $B0
    ld c, [hl]
    ld b, d
    cp h
    ld [$40F0], sp
    add b
    nop
    nop
    rlca
    nop
    rra
    rlca
    ccf
    rra
    ld a, a
    ccf
    ld a, [hl]
    ccf
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]
    ei
    ld a, h
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$20
    dec e
    ld hl, sp-$12
    dec e
    rst $30
    ld c, $FB
    ld b, $FD
    inc bc
    nop
    nop
    jr nc, jr_01F_41D4

jr_01F_41D4:
    db $FC

jr_01F_41D5:
    jr nc, jr_01F_41D5

    db $FC
    cp a
    cp $63
    cp $5D
    ld [c], a
    cp a
    ld b, c
    nop
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
    db $FC
    ld a, b
    cp $FC
    ld a, [$FA7C]
    ld a, h
    ld a, [$7A7C]
    inc a
    ld a, l
    ld a, $69
    ld a, $7D
    ld a, $5A
    ccf
    db $FD
    inc bc
    ld a, [hl]
    ld bc, $013E
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    adc a
    nop
    rst $18
    inc bc
    rst $08
    add e
    call Call_01F_7F87
    rst $00
    ld a, d
    rst $08
    ld a, l
    adc $B5
    ld l, [hl]
    cp d
    ld l, l
    and $FC
    db $DB
    and $BD
    jp nz, $825D

    db $FD
    ld [bc], a
    ld a, l
    add d
    ld a, d
    add h
    ld a, [$2E04]
    rra
    dec [hl]
    rra
    ld [hl-], a
    rra
    inc d
    rrca
    ld [de], a
    dec c
    ld [$3E07], sp
    ld bc, $3E7F
    adc a
    nop
    ld c, a
    add b
    ld c, a
    add b
    xor a
    ret nz

    xor a
    ld b, b
    sbc a
    ldh [rVBK], a
    or b
    xor a
    ld d, b
    or e
    ld l, h
    or a
    ld l, b
    cp a
    ld b, b
    sub a
    ld l, b
    cp a

jr_01F_4259:
    ld b, b
    or a
    ld c, b
    or a
    ld c, c
    cpl
    db $D3
    db $F4
    ld [$08F4], sp
    add sp, $10
    ret nc

    jr nz, jr_01F_4259

    nop
    db $FC
    ld [hl], b
    cp $FC
    rst $20
    cp $F7
    ld a, c
    xor a
    ld [hl], b
    jp hl


    jr nc, jr_01F_42CB

    jr c, jr_01F_42DC

    inc e
    jr c, @+$09

    ld c, $01
    inc bc
    nop
    rst $30
    adc b
    sub $69
    ld a, [$7415]
    dec bc
    dec [hl]
    ld a, [bc]
    rst $08
    jr nc, jr_01F_42CC

    ret nz

    ei
    nop
    ld a, l
    add a
    ld a, a
    adc a
    ld l, d
    sbc a
    push af
    ld e, $EB
    inc a
    db $D3
    inc l
    add sp, $17
    cp a
    nop
    sbc e
    and $6D
    add d
    sbc l
    ld [bc], a
    dec sp
    inc b
    ld a, [$E704]
    jr @-$5F

    ld h, b
    db $FC
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    cp h
    ld hl, sp+$4C
    cp b
    halt

jr_01F_42CB:
    adc h

jr_01F_42CC:
    or $0C
    ld a, [$FE04]
    ld a, a
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]
    db $FD
    ld a, [hl]

jr_01F_42DC:
    db $DD
    ld a, [hl]
    db $FD
    ld a, [hl]
    ei
    ld b, $FB
    ld b, $FD
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    push af
    ld a, [hl]
    db $DD
    ld a, [hl]
    xor l
    ld a, [hl]
    reti


    ld a, $51
    ld a, $6A
    ccf

Jump_01F_42FC:
    ld d, h
    ccf
    ld l, b
    rra
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld a, e
    inc b
    ld a, [$FA04]
    inc b
    ld a, [$FA04]
    inc b
    ld [hl+], a
    rra
    jr z, jr_01F_432B

    dec [hl]
    ld c, $14
    dec bc
    dec sp
    inc b
    db $FC
    inc bc
    ld a, a
    nop
    rra
    nop

jr_01F_4320:
    or $08
    db $F4
    ld [$8874], sp
    ld l, h
    sub b
    inc c
    ldh a, [$9E]

jr_01F_432B:
    ld h, b
    ccf
    ret nz

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
    inc e
    nop
    ld a, [hl-]
    inc e
    ld [hl], l
    ld a, [hl-]
    nop
    nop
    inc e
    nop
    ld a, [hl-]
    inc e
    halt
    jr c, @+$79

    ld a, [hl-]
    rst $28
    ld [hl], b
    call $AD72
    ld [hl], d
    ld l, a
    jr nc, jr_01F_43C2

    jr nc, jr_01F_43C4

    jr nc, @+$4F

    ld [hl-], a
    ld l, a
    jr nc, jr_01F_4320

    ld a, [hl-]
    db $E3
    inc e
    ld a, a
    nop
    adc e
    ld [hl], h
    xor d
    ld [hl], h
    add $38
    rst $38
    nop
    inc a
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    rlca
    nop
    rra
    rlca
    ld a, $1F
    ld a, l
    ld a, $6A
    inc a
    cp d
    ld a, h
    db $E4
    ld a, b
    call nc, $E078
    nop
    ld hl, sp-$20
    inc e
    ld hl, sp-$12
    inc e
    halt
    inc c
    ld a, e
    ld b, $39
    ld b, $3B
    ld b, $E4
    ld a, b
    sub h
    ld a, b
    ld [$423C], a
    inc a
    ld h, c
    ld e, $F0
    rrca
    ld a, $01
    rrca
    nop
    add hl, sp
    ld b, $7B
    ld b, $77
    inc c
    ld a, [c]
    inc c
    and $18
    rst $08
    jr nc, @+$21

    ldh [$F8], a
    nop
    nop
    nop
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    ld a, [de]
    rrca
    ld a, $1F
    dec [hl]
    ld e, $29
    ld e, $00
    nop

jr_01F_43C2:
    ldh [rP1], a

jr_01F_43C4:
    sub b
    ldh [rBCPS], a
    sub b
    or h
    ld c, b
    call nc, Call_01F_7428
    ld [$0874], sp
    dec a
    ld b, $75
    ld a, [hl-]
    ld l, e
    inc [hl]
    ld l, [hl]
    ld sp, $3857
    dec hl
    inc e
    rra
    nop
    rrca
    nop
    ld [hl], h
    ld [$0874], sp
    db $EC
    db $10
    ret c

    jr nz, @+$3E

    ret nz

    db $FC
    nop
    ld hl, sp+$00

jr_01F_43EE:
    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    cpl
    rra
    cpl
    rra
    ld e, [hl]
    ccf
    ld e, a
    ccf
    ld e, e
    ccf
    ret nz

    nop
    jr nc, jr_01F_43C4

    adc h
    ldh a, [$E2]
    db $FC
    jp c, $F5FC

    cp $A9
    cp $51
    cp $46
    ccf
    ld b, e
    ccf
    ld h, b
    rra
    ld [hl+], a
    rra
    jr c, jr_01F_4421

    rra
    nop
    ld e, $01
    rrca
    nop
    add l

jr_01F_4421:
    cp $23
    db $FC
    ld b, $F8
    inc c
    ldh a, [$38]
    ret nz

    ldh a, [rP1]
    jr nc, jr_01F_43EE

    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    jr jr_01F_443D

    daa
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    cp a

jr_01F_443D:
    ld a, a
    cp [hl]
    ld a, a
    nop
    nop
    ret nz

    nop
    jr nz, @-$3E

    sub b
    ldh [$C8], a
    ldh a, [$64]
    ld hl, sp-$2C
    ld hl, sp-$6E
    db $FC
    cp e
    ld a, a
    sub h
    ld a, a
    ld b, c
    ccf
    ld [hl+], a
    rra
    inc d
    dec bc
    jr jr_01F_4463

    rra
    nop
    rra
    nop
    ld c, d
    db $FC
    pop bc

jr_01F_4463:
    cp $29
    cp $83
    db $FC
    add hl, bc
    or $D2
    inc l
    inc l
    ret nc

    ldh a, [rP1]
    add hl, de
    ld b, $13
    ld c, $26
    rra
    inc h
    rra
    ld a, [hl+]
    dec e
    ld [hl], l
    ld a, [bc]
    ld a, [hl]
    ld bc, $003F
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    and b
    ld b, b

jr_01F_4488:
    ld h, b
    add b
    or b
    ld b, b
    ld [hl], b
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0709
    rla
    rrca
    cpl
    rra
    cpl
    rra
    nop
    nop

jr_01F_44A2:
    nop
    nop
    ldh [rP1], a
    jr jr_01F_4488

    call nz, $E2F8
    db $FC
    ld a, [c]
    db $FC
    pop af
    cp $5F
    ccf
    ld e, a
    ccf
    ld e, l
    ccf
    or a
    ld a, a
    xor l
    ld a, a
    sbc d
    ld a, a
    pop bc
    ccf
    ld b, b
    ccf
    reti


    cp $E9
    cp $91
    cp $6B
    db $FC
    add d
    db $FC

jr_01F_44CA:
    ld d, $F8
    inc b
    ld hl, sp+$0C
    ldh a, [$60]
    rra
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0305
    dec b
    inc bc
    dec bc
    rlca
    jr c, jr_01F_44A2

    ld hl, sp+$00
    ld hl, sp+$00
    ld a, b
    add b
    jr jr_01F_44CA

    xor b
    ret nc

    adc b
    ldh a, [rOBP0]
    ldh a, [$0A]
    rlca
    ld d, $0F
    dec d
    ld c, $28
    rra
    inc h
    dec de
    ld a, d
    dec b
    ld a, a
    nop
    rra
    nop
    db $10
    ldh [$50], a
    and b
    jr nz, @-$3E

    ld h, b
    add b
    or b
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    ret nz

    nop
    inc e
    nop
    ld [hl+], a
    inc e
    ld e, c
    ld a, $5D
    ld a, $54
    ccf
    ld l, b
    rra
    ld h, l
    ld e, $73
    inc c
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_4526:
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ccf
    nop
    ld e, $01
    dec c
    inc bc
    dec c
    inc bc
    ld c, $01
    rlca
    nop
    inc bc
    nop
    ld bc, $F000
    nop
    ld [$E4F0], sp
    ld hl, sp+$54
    ld hl, sp-$54
    ldh a, [rNR34]
    ldh [$FC], a
    nop
    ldh a, [rP1]
    nop
    nop
    ld bc, $0600
    ld bc, $0709
    rla
    rrca
    ld d, $0F
    jr z, jr_01F_457D

    jr nz, @+$21

    nop
    nop
    ret nz

    nop
    jr nc, jr_01F_4526

    ret z

    ldh a, [$A4]
    ld hl, sp+$04
    ld hl, sp-$64
    ldh [rSVBK], a
    add b
    inc hl
    inc e
    rra
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0100

jr_01F_457D:
    nop
    ld bc, $C000
    nop
    ret nz

    nop
    and b
    ld b, b
    jr nz, @-$3E

    ld d, b
    ldh [$D0], a
    ld h, b
    or b
    ld h, b
    ldh a, [rNR41]
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0106
    rlca
    nop
    inc bc

jr_01F_459F:
    nop
    ld c, b
    or b
    ld l, b
    or b
    ld [$58F0], sp
    and b
    adc b
    ldh a, [$5C]
    and b
    inc a
    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$C8], a
    ldh a, [$E4]
    ld hl, sp-$0C
    ld hl, sp-$2E
    db $FC
    and d
    db $FC
    dec b
    inc bc
    dec bc
    rlca
    ld a, [bc]
    rlca
    ld [$0807], sp
    rlca
    dec c
    ld [bc], a
    inc b
    inc bc
    rlca
    nop
    jp z, Jump_01F_42FC

    db $FC
    ld [de], a
    db $FC
    and d
    db $FC
    ld a, [bc]
    db $F4
    ld b, $F8
    inc h
    ret c

    ld c, h
    or b
    rlca
    nop
    ld b, $01
    dec b
    inc bc
    dec bc
    rlca
    ld c, $07
    dec bc
    ld b, $0A
    rlca
    ld a, [bc]
    rlca
    ld hl, sp+$00
    ldh a, [rP1]
    ld [hl], b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ret nc

    jr nz, jr_01F_459F

    ld h, b
    ld a, [bc]
    dec b
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    xor b
    ld [hl], b
    xor b
    ld [hl], b

jr_01F_4624:
    ld l, b
    ldh a, [rBCPS]
    ret nc

    ret c

    ld h, b
    inc l
    ret nc

    cp h
    ld b, b
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
    ld bc, $0300
    ld [bc], a
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
    ld b, b
    add b
    jr nz, @-$3E

    ld d, b
    and b
    nop
    ld bc, $0300
    ld [bc], a
    dec b
    ld b, $0B
    dec c
    ld d, $1D
    ld l, $39
    ld e, [hl]
    ld [hl], c
    cp [hl]
    ld b, b
    add b
    jr nz, jr_01F_4624

    ld d, b
    and b
    ld l, b
    or b
    or h
    ld e, b
    and d
    call c, $DE21
    ld [hl-], a
    db $DD
    ld b, $0B
    dec c
    ld d, $1D
    ld l, $39
    ld e, [hl]
    ld [hl], c
    cp [hl]
    inc hl
    call c, $AD53
    ld l, e
    sub l
    ld l, b
    or b
    or h
    ld e, b
    and d
    call c, $DE21

jr_01F_4688:
    ld [hl-], a
    db $DD
    inc d
    db $EB
    sbc d
    push hl
    ld d, [hl]
    db $EB
    inc hl
    call c, $AD53
    ld l, e
    sub l
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld e, e
    cp h
    ld c, e
    cp h
    ld b, d
    cp l
    inc d
    db $EB
    sbc d
    push hl
    ld d, [hl]
    db $EB
    xor $17
    inc e
    rst $20
    call c, $D82F
    rst $28
    ret c

    rst $28
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld [bc], a
    dec b
    ld b, $0B
    dec c
    ld d, $1D
    ld l, $00
    nop
    nop
    nop
    ld b, b
    add b
    jr nz, jr_01F_4688

    ld d, b
    and b
    ld l, b
    or b
    or h
    ld e, b
    and d
    call c, $8877
    ld a, b
    sub a
    ld e, e
    cp h
    ld c, e
    cp h
    ld b, d
    cp l
    ld d, d
    cp l
    ld d, d
    cp l
    ld b, d
    cp l
    xor $17
    inc e
    rst $20
    call c, $D82F
    rst $28
    ret c

    rst $28
    ret nc

    rst $28
    sub b
    rst $28
    ld [de], a
    rst $28
    ld d, d
    cp l
    ld d, d
    cp l
    ld b, d
    cp l
    ld d, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld h, e
    cp l
    ret nc

    rst $28
    sub b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    inc d

Jump_01F_4709:
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    ld e, $EF
    add hl, sp
    ld e, [hl]
    ld [hl], c
    cp [hl]
    inc hl
    call c, $AD53
    ld l, e
    sub l
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld e, e
    cp h
    ld hl, $32DE
    db $DD
    inc d
    db $EB
    sbc d
    push hl
    ld d, [hl]
    db $EB
    xor $17
    inc e
    rst $20
    ret c

    cpl
    ld l, d
    cp l
    ld a, e
    sbc l
    cp e
    ld e, l
    db $DB
    dec l
    ld l, e
    dec d
    inc sp
    inc c
    jr jr_01F_4745

    rrca
    nop
    ld d, [hl]
    rst $28
    ld e, [hl]
    db $ED
    ld e, l

jr_01F_4745:
    ld [$E4DB], a
    sub $E8
    call z, $1830
    ldh [$F0], a
    nop
    ld l, e
    cp l
    ld a, e
    sbc l
    cp e
    ld e, l
    db $DB
    dec l
    ld l, e
    dec d
    inc sp
    inc c
    jr jr_01F_4765

    rrca
    nop
    ld d, [hl]
    rst $28
    ld e, [hl]
    db $ED
    ld e, l

jr_01F_4765:
    ld [$E4DB], a
    sub $E8
    call z, $1830
    ldh [$F0], a
    nop
    ld c, e
    cp h
    ld b, d
    cp l
    or d
    ld e, l
    jp c, Jump_01F_6B2D

    dec d
    inc sp
    inc c
    jr jr_01F_4785

    rrca
    nop
    ret nc

    rst $28
    sub b
    rst $28
    dec e

jr_01F_4785:
    ld [$E45B], a
    sub $E8
    call z, $1830
    ldh [$F0], a
    nop
    add hl, bc
    ldh a, [$67]
    sbc b
    or d
    ld c, l
    ret c

    rlca
    ld l, l
    ld [de], a
    rra
    nop
    ld c, l
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
    nop
    nop
    nop
    nop

Jump_01F_47B0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_47EA:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    ld [bc], a
    ld b, b
    and b
    ld a, [$C804]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$08

    ccf
    nop
    nop
    nop
    ld h, c
    ld e, $FF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    stop
    nop
    jr nc, jr_01F_47EA

    call c, $6120
    nop
    nop
    nop
    ld hl, $87FE
    ld hl, sp+$1B
    ldh [$FD], a
    ld [bc], a
    rst $10
    jr nz, jr_01F_48B4

    nop
    ret nz

    nop
    nop
    nop
    ld l, b
    add a
    ld [hl], c
    adc a
    ld h, b
    sbc a
    ccf
    ret nz

    rst $38
    nop
    ld [hl+], a
    dec e
    ld a, a
    nop
    nop
    nop
    inc c
    db $DB
    dec l
    inc de
    sbc $31
    dec de
    ldh [$84], a
    ld a, b
    ld a, $00
    inc e
    nop
    nop
    nop
    ld h, a
    ld [$0639], sp
    rst $08
    nop
    db $E4
    nop
    inc bc
    nop
    ld de, $0000
    nop
    nop
    nop
    push bc
    dec sp
    ld l, l
    inc de
    ld a, $01
    ld e, $01
    inc c
    inc bc
    ld h, $01
    inc bc
    nop
    ld bc, $1B00
    nop
    ld a, [hl+]
    ld bc, $052A
    ld sp, $6604
    ld de, $0375
    ld e, d
    rlca
    ld l, c
    ld b, $3E
    ld bc, $0310
    ld hl, $720E
    inc c
    ld e, c
    inc b
    dec l
    nop
    ld [hl], $01
    ld a, [bc]
    dec b
    ld e, d
    rlca
    ld a, b
    rlca
    add hl, hl
    rla
    inc a
    inc bc
    inc l
    inc bc
    ld a, [de]
    ld bc, $0916
    ccf
    nop
    nop
    nop
    add b
    nop

jr_01F_48B4:
    nop
    add b
    ret nz

    nop
    ldh [$80], a
    ld hl, sp-$40
    db $FC
    add b
    ld h, [hl]
    sbc b
    db $FC
    adc a
    db $FD
    ld [c], a
    rst $30
    add sp, -$22
    ldh [rNR32], a
    ldh [rIE], a
    nop
    daa
    rra
    ld e, $FF
    db $DD
    add e
    db $D3
    adc a
    ld l, a
    sbc a
    jp nz, $1D3F

    ld [c], a
    or b
    rst $08
    cp $80
    db $D3
    and b
    adc a
    ld a, a
    and a
    ld a, a
    srl a
    ld h, d
    rra
    dec [hl]
    adc [hl]
    sub d
    call $EBD5
    dec d
    db $EB
    ld [bc], a
    rra
    inc c
    ccf
    xor h
    rra
    sub c
    ld c, $0A
    inc b
    nop
    nop
    db $FC
    nop
    nop
    ld hl, sp+$0F
    nop
    ld c, $01
    dec c
    inc bc
    dec b
    dec de
    ld a, [hl+]
    rra
    inc c
    rra
    inc bc
    rrca
    inc bc
    rlca

jr_01F_4910:
    sbc b
    rst $20
    rst $00
    ldh a, [$E3]
    db $FC
    ld h, b
    db $FC
    add [hl]
    ld hl, sp+$0D
    ldh a, [$F3]
    nop
    ld b, d
    ld bc, $FE3D
    ld c, l
    cp $95
    ld a, [hl]
    jp nz, Jump_01F_673C

    jr jr_01F_4969

    nop
    inc a
    nop
    sbc b
    nop
    ld l, d
    sub b
    ld a, c
    add d
    pop de
    ld [hl+], a
    and b
    ld b, e
    db $E4
    inc bc
    call nz, $9203
    ld bc, $0009
    add [hl]
    ld a, b
    ld b, c
    ld a, $30
    nop
    add e
    nop
    ld b, [hl]
    ld bc, $041B
    scf
    ld [$037C], sp
    ld a, b
    rlca
    or c
    rrca
    push bc
    rra
    ld b, b
    sbc a
    ld c, $D1
    sbc a
    ret nz

    adc d
    ret nz

    ld b, a
    add b
    dec c
    ld a, b
    inc h
    ld e, $10
    adc a
    xor b
    rst $00
    cp l

jr_01F_4969:
    add d
    rra
    ret nz

    add [hl]
    ret nz

jr_01F_496E:
    nop
    ldh [$A6], a
    rra
    ldh a, [rIF]
    or h
    rrca
    ld [hl], c
    ld c, $23
    inc e
    inc bc
    nop
    adc l
    ld [hl], b
    ld h, $F8
    ld a, [hl-]
    inc b
    ld a, [hl+]
    inc d
    or [hl]
    inc c
    sub $0C
    ld [de], a
    adc h
    adc h
    nop
    db $10
    add b
    jr jr_01F_4910

    ld e, [hl]
    add b
    ld e, h
    add d
    ld b, b
    sbc h
    ld b, b
    adc b
    add c
    nop
    ld l, a
    nop

jr_01F_499C:
    sub h
    ld h, e
    ld a, [bc]
    pop af
    nop
    nop
    add d
    nop
    ld b, c
    add b
    ld e, c
    add b
    and l
    ld e, b
    call z, $2631
    reti


    dec sp
    db $E4
    ld [hl], $08
    ret c

    ld b, $E3
    rra
    ld h, a
    sbc a
    scf
    rst $08
    jp hl


    rlca
    adc [hl]
    ld [hl], c
    di
    ld a, h
    adc h
    ld b, e
    rst $18
    nop
    ld b, b
    sbc a
    rst $20
    rra
    db $EB
    rra
    db $10
    rrca
    jr nc, jr_01F_49CE

jr_01F_49CE:
    adc c
    ld [hl], b
    ld [$00E0], sp
    nop
    jr nc, jr_01F_49D6

jr_01F_49D6:
    ld b, b
    jr nz, jr_01F_4969

    ld b, b
    jr nc, jr_01F_499C

    jr z, jr_01F_496E

    inc a
    add b
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rst $20
    inc e
    sub c
    ld l, [hl]
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld c, $01
    sub e
    nop
    add hl, hl
    nop
    ld a, c
    nop
    ld b, h
    nop
    jr c, jr_01F_4A04

    ccf
    ld c, $3B

Call_01F_4A03:
    inc e

jr_01F_4A04:
    ld [hl], a
    add hl, sp
    ld l, e
    scf
    inc bc
    dec a
    inc bc
    inc de
    rlca
    inc bc
    rrca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld l, $1F
    dec [hl]
    ld c, $3F
    nop
    inc bc
    inc e
    ld bc, $0300
    ld bc, $0707
    rrca
    rlca
    dec bc
    rlca
    ld [$1F07], sp
    nop
    inc d
    ld [$0718], sp
    inc b
    rra
    ld bc, $181F
    rlca
    rrca
    nop
    inc bc
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    sbc $20
    cp b
    ld b, c
    ld d, e
    and a
    rst $20
    rrca
    rst $08
    rra
    sbc a
    ccf
    cp a
    ccf
    rra
    ccf
    ccf
    nop
    dec bc
    call nz, $F1E6
    di
    ld hl, sp-$05
    ld hl, sp-$07
    db $FC
    push af
    db $FC
    ld sp, hl
    db $FC
    ld a, a
    ccf
    rra
    ld a, a
    inc l
    ld a, a
    ld [bc], a
    ld a, a
    ld l, b
    ccf
    inc bc
    ccf
    adc c
    ccf
    and b
    rra
    add b
    rra
    call nc, Call_01F_4A03
    add c
    and l
    ld b, b
    sub l
    ld h, b
    ld d, l
    and b
    ld [$9A01], a
    dec b
    nop
    nop
    inc a

jr_01F_4A83:
    nop
    ld b, d
    inc a
    cp l
    ld a, [hl]
    sbc c
    ld a, [hl]
    db $E3
    inc e
    ld a, a
    nop
    inc a
    nop
    nop
    nop
    inc b
    nop
    ld a, [bc]
    inc b
    ld l, [hl]
    nop
    sub b
    ld h, b
    adc b
    ld [hl], b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01F_4AA6

jr_01F_4AA6:
    ld b, h
    jr c, jr_01F_4A83

    inc a
    push hl
    ld a, [de]
    ld a, l
    ld [bc], a
    ld a, $00
    nop
    nop
    ld b, $00
    ld a, e
    ld b, $D9
    halt
    and [hl]
    ld l, b
    adc [hl]
    ld a, b
    ld a, h
    nop
    jr c, jr_01F_4AC0

jr_01F_4AC0:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld a, [bc]
    dec e
    ld de, $010E
    ld b, $06
    ld bc, $0403
    inc b
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld [$0670], sp
    ld [$02C1], sp

jr_01F_4AE6:
    inc a
    ld b, b
    rrca
    stop
    rrca
    nop
    nop
    jr nz, jr_01F_4AF0

jr_01F_4AF0:
    rlca
    nop
    inc e
    ld [bc], a
    jr c, jr_01F_4AFA

    ld b, b
    jr nc, jr_01F_4AF9

jr_01F_4AF9:
    nop

jr_01F_4AFA:
    ret nz

    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop

jr_01F_4B03:
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    rrca
    nop
    db $10
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp-$34
    di
    dec de
    rst $20
    or $0F
    ld h, l
    sbc a
    nop

jr_01F_4B21:
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
    and b
    ret nz

    ret nc

    ldh [rP1], a
    nop
    rlca
    nop
    dec c
    ld b, $3B
    inc b
    ld b, a
    jr c, jr_01F_4AE6

    ld a, h
    sbc d
    ld a, l
    or [hl]
    ld a, c
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    inc b
    ld hl, sp+$2A
    db $FC
    jp c, $ED3C

    ld e, $69
    sbc [hl]
    inc bc
    nop
    dec b
    ld [bc], a
    ld [$1207], sp
    dec c
    ld a, [hl+]
    dec e
    ld d, l
    dec sp
    xor l
    ld [hl], e
    sbc d
    ld h, a
    ret nz

    nop
    ld h, b
    add b
    ld d, b
    and b
    xor b
    ldh a, [rHDMA4]

jr_01F_4B69:
    cp b
    ld c, d
    cp h
    ld e, d

jr_01F_4B6D:
    cp h
    xor l
    sbc $00
    cp $01
    ld hl, sp+$06
    pop hl
    add hl, de
    rst $00
    daa
    sbc a
    jr c, jr_01F_4B03

    rrca
    ret nz

    nop
    ldh a, [rP1]
    rra
    ldh [rTAC], a
    jr jr_01F_4B69

    db $E4
    ld sp, hl
    jr jr_01F_4B6D

    ldh a, [rTAC]
    add b
    rlca
    nop
    inc bc
    ld [$0708], sp
    add b
    jr @-$77

    daa
    sbc a
    jr jr_01F_4B21

    rrca
    add b
    ld bc, $20A0
    and b
    rst $38
    nop
    rst $18
    jr nz, @-$0E

    rrca
    db $FC
    inc bc
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $FF
    nop
    rst $38
    nop
    ld a, h
    add e
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$F1]
    ld c, $FF
    nop
    rst $38
    nop
    add a
    ld a, b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, c
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_01F_4C16

    ret nz

    rst $38
    nop
    rst $28
    db $10
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
    rrca
    rrca
    rra
    ccf
    cpl
    ld a, a
    ccf
    ld a, a
    xor a
    ld a, a
    ld [hl], a
    jr jr_01F_4C1E

    inc e
    ld sp, $1A0E
    dec b
    dec c
    inc de
    dec bc
    rla
    dec bc
    rlca
    inc d
    dec de
    dec hl
    rra
    ld [hl], $0F
    dec de
    rlca
    inc e
    inc bc
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    sbc e
    rst $20
    db $ED
    di
    or [hl]
    ld sp, hl

jr_01F_4C16:
    ld l, e
    db $FC
    add a
    ld a, b
    rst $38
    nop
    rst $38
    nop

jr_01F_4C1E:
    cp $00
    ld e, b
    ldh [$B8], a
    ret nz

    ld [hl], b
    add b
    or b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop

Call_01F_4C30:
    sub h
    ld a, e
    xor l
    ld [hl], e
    xor l
    ld [hl], e
    sbc $21
    ld a, a
    nop
    ld l, l
    db $10
    add hl, sp
    nop
    ld bc, $B500
    adc $32
    call z, $CCB6
    ld [hl], d
    adc h
    ld a, [$EC04]
    db $10
    ld [hl], b
    nop
    jr nc, jr_01F_4C50

jr_01F_4C50:
    cp e
    ld b, a
    ld [hl], a
    rrca
    ld [hl], l
    rrca

jr_01F_4C56:
    ld d, a
    cpl
    ld d, l
    cpl
    ld a, [hl-]
    rlca
    add hl, bc
    ld b, $07
    nop
    ld d, l
    xor $D9
    and $DD
    ld [c], a
    or [hl]
    ret z

    ld l, h
    sub b
    call nc, $F820
    nop
    ret c

jr_01F_4C6F:
    nop
    nop
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    dec de
    inc c
    ld [hl], $19
    ld c, h
    ld [hl-], a
    ld e, e
    daa
    ld [hl], h
    dec c
    rst $38
    nop
    ld e, a
    ldh [$FB], a
    rrca
    jr jr_01F_4C6F

    cp a
    ret nz

    or b
    rst $08
    ld l, a
    sbc a

jr_01F_4C8E:
    call nc, $8034
    nop
    ldh [rP1], a
    jr c, jr_01F_4C56

    adc b
    ldh a, [$F8]
    nop

jr_01F_4C9A:
    inc c
    ldh a, [$F6]
    ld hl, sp-$36
    call z, $00FF
    rst $38
    nop
    rst $18
    jr nz, jr_01F_4C8E

    jr jr_01F_4C9A

    ld c, $F8
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    pop af
    ld c, $F8
    rlca
    db $FC
    inc bc
    cp $01
    ld a, a
    add b
    inc bc
    db $FC
    add c
    ld a, [hl]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld c, $F1
    db $FC
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    rst $30
    ld [$00FF], sp

jr_01F_4CD4:
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$1F
    ldh [$7F], a
    add b
    db $FC
    inc bc
    db $FC
    inc bc
    rst $18
    jr nz, jr_01F_4CD4

    db $10
    rst $38
    nop
    db $FD
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    ldh [$A7], a
    ld a, b
    ret nc

    scf
    db $E4
    dec e
    add hl, sp
    rst $00
    ld c, $F1
    add a
    ld a, b
    nop
    xor a
    nop
    adc a
    ld b, b
    ld c, a
    nop
    rra
    add b
    adc a
    nop
    db $E3
    nop
    rst $00
    nop
    rra
    nop
    ld de, $B918
    ld [$00D8], sp
    ld [$F602], a
    ld [bc], a
    or $02
    or $02
    and $14
    add hl, bc
    jr z, jr_01F_4D3D

    jr jr_01F_4D61

    ld a, b
    add hl, sp
    jr z, jr_01F_4DA6

    inc e
    inc a
    nop
    adc c
    nop
    rst $20
    ld b, b
    ld l, c
    ld c, b
    ld e, e
    db $10
    scf
    db $10
    dec sp
    jr jr_01F_4D77

    inc c
    ld a, [hl]
    nop

jr_01F_4D3D:
    jr c, jr_01F_4D3F

jr_01F_4D3F:
    add e
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld sp, hl
    ld [bc], a
    ld [c], a
    ld [$0088], sp
    ret nz

    nop
    db $FC
    nop
    db $FC
    nop
    cp $00
    cp $00
    db $FC
    nop
    ld sp, hl
    ld bc, $04E3
    call nz, $F000
    sub b

jr_01F_4D61:
    or a
    jr nc, jr_01F_4DDB

    ld d, b
    ld [hl], a
    ld c, b
    ei
    inc h
    ld a, l
    nop
    dec l
    nop
    ld de, $C700
    ld h, c
    ld e, $7F
    nop
    ld a, e
    inc c
    inc sp

jr_01F_4D77:
    inc c
    rla
    ld [$001F], sp
    rlca
    nop
    nop
    nop
    and b
    ld h, b
    ld d, l
    push de
    ld b, d
    jp nz, $EF6F

    sbc h
    ld a, a
    db $E3
    inc e
    rst $38
    nop
    cp $00
    ld [hl], $38
    ld l, [hl]
    ld [hl], b

jr_01F_4D94:
    call c, $38E0
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_01F_4D94

    db $10

jr_01F_4DA6:
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $10
    jr z, @-$1E

    rra
    db $FC
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rNR44], a
    db $FC
    ret z

    ccf
    ld a, a
    add b
    rra
    ldh [$3F], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $10
    ccf
    ld hl, sp+$07
    ldh [$1F], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]

jr_01F_4DDB:
    ldh a, [$9F]
    ldh [rIE], a
    nop
    dec h
    and $C0
    ccf
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$0E
    ld sp, $C638
    db $FC
    inc bc
    cp $01
    ld sp, hl
    rlca
    db $E4
    rra
    sub e
    ld a, a
    cpl
    rst $38
    ld c, b
    ret z

    jr nc, jr_01F_4E35

    rlca
    ld hl, sp+$00
    db $FD
    inc bc
    ei
    ld b, $F7
    inc c
    xor $08
    call z, $C501
    ld bc, $00F1
    db $FC
    db $10
    or a
    ld [$049B], sp
    db $DD
    nop
    db $E4
    nop
    ldh [rP1], a
    jp hl


    nop
    db $EC
    inc b
    call c, $FF00
    nop
    pop hl
    ld [bc], a
    adc $0F
    sbc a
    ld a, [bc]
    sbc a
    jr jr_01F_4E86

    dec e
    ld e, l
    rrca
    xor a
    ld [$18D8], sp
    cp d
    ld [hl-], a

jr_01F_4E35:
    ld [hl], d
    add b
    add l
    ret z

    set 6, b
    ei
    add b
    add a
    nop
    ld a, a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $E3
    inc e
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ld sp, $7FCE
    add b
    cp a
    ld b, b
    db $FD
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, jr_01F_4EA8

    ret nz

    ld a, a
    add b
    db $FD
    ld [bc], a
    ei
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
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop

jr_01F_4E86:
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $01

jr_01F_4E92:
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    ccf
    cpl
    ld a, a
    ccf
    ld a, a
    xor a
    ld a, a
    ei
    inc b
    db $FC
    inc bc
    db $DD
    inc hl
    xor $11

jr_01F_4EA8:
    rst $18
    jr nz, jr_01F_4E92

    jr @+$01

    nop
    ei
    inc b
    rst $30
    rrca

jr_01F_4EB2:
    ei
    rlca
    ld a, [hl]
    add c
    sbc a
    ldh [$67], a
    ld hl, sp-$74
    ld [hl], e
    cp $01
    rst $38
    nop
    ccf
    ret nz

    sbc a
    ldh [$7F], a
    add b
    ld hl, sp+$07
    di
    rrca
    ld a, $C1
    add a
    ld hl, sp+$79
    cp $FF
    nop
    ld hl, sp+$07
    add e
    ld a, a
    ld a, a
    rst $38

jr_01F_4ED8:
    rla
    rla
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $FC
    rla
    ld hl, sp-$12
    pop af
    call c, $38E3
    rst $00
    ldh a, [rIF]
    pop hl
    ld e, $85
    ld a, [hl]
    rst $08
    jr nc, jr_01F_4EB2

    ld b, b
    rst $28
    db $10
    rst $18
    jr nz, jr_01F_4ED8

    jr nz, @-$3F

    ld b, b
    ei
    inc b
    rst $38
    nop
    ld h, [hl]
    cp l
    rst $20
    cp l
    ld a, [hl]
    cp l
    rst $38
    inc a
    ld a, [hl]
    inc a
    ld b, d
    inc a
    ld a, [hl]
    inc a
    ld b, d
    inc a
    ld e, d
    and h
    cp h
    jp nz, $9866

    jp c, Jump_01F_663C

    inc a
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    jr jr_01F_4F46

    inc a
    ld b, d
    ld h, [hl]
    jr jr_01F_4F81

    inc a
    ld h, [hl]
    inc a
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld e, d
    inc h
    inc a
    ld b, d
    ld h, [hl]
    jr jr_01F_4F91

    inc a
    ld h, [hl]
    inc a
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld h, [hl]
    dec a
    ld h, a
    dec a
    ld a, [hl]
    dec a

jr_01F_4F46:
    ld a, a
    inc a
    ld a, [hl]
    inc a
    ld b, d
    inc a
    ld a, [hl]
    inc a
    ld b, d
    inc a
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    call z, $673F
    ld hl, sp-$01
    nop
    db $FD
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, jr_01F_4FA4

    ret nz

    ld a, a
    add b
    ei
    inc b
    rst $30
    ld [$18E7], sp
    rst $00
    jr c, jr_01F_4F74

    nop
    rlca
    nop

jr_01F_4F74:
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rlca

jr_01F_4F81:
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    sbc e

jr_01F_4F91:
    ld a, a
    xor l
    ld a, a
    sbc e
    ld a, a
    add $3F
    ld l, c
    rra
    jr c, jr_01F_4FA3

    rra
    nop
    daa
    nop
    nop
    ld e, $00

jr_01F_4FA3:
    rrca

jr_01F_4FA4:
    ld [bc], a
    daa
    ld bc, $0001
    ld [$0404], sp
    nop
    ld bc, $0003
    inc bc
    nop
    inc c
    add e
    add hl, de
    rst $20
    sbc a
    ldh [$67], a
    jr @-$0E

    rrca
    rra
    db $E3
    rrca
    ldh a, [$C0]
    inc bc
    ld [hl], b
    add a
    ld a, [hl-]
    jp nz, $00FC

    ld [c], a
    inc e
    ld bc, $3FFE
    ld hl, sp-$02
    pop bc
    nop
    add b
    nop
    stop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld e, e
    db $FC
    ld [hl], $F9
    push hl
    ld [$F0EF], a
    rra
    jr nz, jr_01F_5022

    ret z

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
    rst $28
    db $10

jr_01F_4FF8:
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00FF
    rst $38
    db $E3
    db $FC
    db $FC
    ldh a, [$F0]
    di
    di
    rst $38
    rst $38
    db $FC
    rst $38
    rst $30
    ld hl, sp+$2F
    jr nc, jr_01F_4FF8

    push hl
    adc a
    ld hl, sp-$61
    ldh a, [rIE]
    ld [c], a
    rst $38
    rst $38

jr_01F_5022:
    rst $30
    rrca
    db $FD
    inc bc
    rst $38
    ld h, b
    rst $38
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    call nz, $20FF
    rst $38
    rst $38
    rst $30
    ld hl, sp-$71
    rst $38
    ld e, a
    ldh a, [rIE]
    db $FC
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rst $38
    ld b, $FE
    add hl, bc
    ld hl, sp+$16
    ldh a, [rNR23]
    ldh a, [$30]
    ldh a, [$50]
    ret nc

    or b
    sub b
    ret nz

    rst $38
    jr nc, jr_01F_50A3

    rst $28
    rrca
    inc d
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0308], sp
    rst $38
    inc a
    db $FC
    rst $10
    ret nc

    jr c, @+$12

    ret nc

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    inc bc
    inc bc

jr_01F_5086:
    dec b
    ld b, $04
    rlca
    ld [bc], a
    inc bc
    ld bc, $0F01
    rrca
    inc bc
    inc bc
    dec b
    ld b, $E6
    rst $20
    sub e
    ld [hl], e
    ld e, $FF
    jr nc, @+$01

    ld b, b
    rst $38
    ld a, d
    rst $38
    ldh [$E0], a
    sub b

jr_01F_50A3:
    ld [hl], b
    jr nz, jr_01F_5086

    pop af
    pop af
    ld a, [bc]
    ei
    ld [hl], $FF
    ld c, c
    rst $38
    inc a
    rst $38
    rrca
    rrca
    inc de
    inc e
    ld [$F10F], sp
    rst $38
    adc $3F
    add hl, bc
    rst $38
    db $10
    rst $38
    and e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_50C7:
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    ld [$1017], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ret nc

    db $10
    add sp, $08
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    rlca
    inc b
    rlca
    inc b
    nop
    nop
    ret nz

    ret nz

    and b
    jr nz, jr_01F_50C7

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    db $10
    ret nc

    db $10
    rlca
    rlca
    ld [$1608], sp
    db $10
    db $10
    db $10
    dec c
    dec c
    dec b
    dec b
    inc b
    inc b
    ld [hl], b
    ld [hl], b
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $0200
    cp $05
    db $FC
    ld e, $FC
    inc h
    db $E4
    ld e, d
    jp nz, $C060

    add b
    add b
    ret nz

    add b
    ret nc

    db $10
    ld [$0808], sp
    ld [$0404], sp
    nop
    nop
    ld bc, $8001
    add b
    nop
    nop
    ld [$0008], sp
    nop
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
    ld d, $19
    ld [hl], b
    ld a, a
    adc c
    rst $38
    ld a, l
    ld a, a
    dec b
    rlca
    dec a
    ccf
    ld b, h
    ld a, a
    add b
    rst $38
    add b
    add b
    cp h
    cp h
    ld e, d
    ld b, d
    ld b, d
    ld b, d
    inc h
    inc h
    call nc, $94D4
    sub h
    inc d
    inc d
    ld [bc], a
    ld [bc], a
    ld e, $1E
    inc hl
    inc hl
    ld e, c
    ld b, c
    ld b, d
    ld b, d
    inc [hl]
    inc [hl]
    inc d
    inc d
    db $10
    db $10
    and h
    and h
    and b
    and b
    jr nz, jr_01F_51D6

    sub b
    sub b
    ld c, h
    ld c, h
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    inc de
    db $10
    jr z, @+$2A

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_51CD:
    nop
    nop
    nop
    ret z

    ld [$0838], sp
    db $E4
    inc b

jr_01F_51D6:
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    dec bc
    ld [$080B], sp
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld [$0809], sp
    dec bc
    ld [$10D0], sp
    sub b
    db $10
    jr nc, jr_01F_5226

    ret nc

    ret nc

    db $10
    db $10
    ldh a, [$30]
    ret nc

    db $10
    xor b
    ld [$88A8], sp
    adc c
    adc c
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, c
    ld d, c
    adc c
    adc c
    nop
    nop
    nop
    nop
    ld [hl], a
    adc b
    rst $28
    ldh a, [rHDMA3]
    cp a
    inc [hl]
    rst $18
    dec h
    cp $82
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    rst $10
    jr z, jr_01F_51CD

    ld a, l
    ld e, l
    db $E3

jr_01F_5226:
    jp nz, $AFFF

    ld a, a
    jr nz, @+$01

    db $FC
    rst $38

jr_01F_522E:
    rst $38
    rst $38

jr_01F_5230:
    rst $38
    nop
    ccf
    ret nz

    reti


    and $D6
    ccf

jr_01F_5238:
    add hl, bc
    rst $38
    sub c
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    ret nc

    sub b
    xor b
    adc b
    ld l, b
    ret z

    ld h, b
    ret nz

    ld d, d
    jp nz, $C050

    jr nc, jr_01F_522E

    jr z, jr_01F_5230

    or h
    or h
    ld d, b
    ret nz

    jr nc, @-$1E

    jr z, jr_01F_5238

    jr @-$0E

    inc d
    ldh a, [$0D]
    db $FC
    inc bc
    rst $38
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
    ld a, e
    inc bc
    cp h
    ccf
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    xor $E0
    dec e
    db $FC
    inc bc
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    inc c
    rrca
    ld de, $111F
    rra
    inc a
    ccf
    ld b, b
    ld a, a
    inc a
    ccf
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    ld l, b
    ld [$0808], sp
    sub b
    sub b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    rst $38
    ld h, b
    ld a, a
    db $10
    rra
    dec a
    ccf
    ld b, b
    ld a, a
    ld a, $3F
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    jr c, @+$3A

    ld d, h
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_01F_52E4

    jr z, jr_01F_52E6

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc d
    inc d
    inc d
    inc d
    jr c, @+$3A

    ld b, h
    ld b, h
    or d
    add d
    add d
    add d
    ld l, h
    ld l, h
    jr z, jr_01F_5304

    jr z, @+$2A

    inc h
    inc h
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]

jr_01F_52E4:
    inc de
    db $10

jr_01F_52E6:
    db $10
    db $10
    inc de
    inc de
    db $10
    db $10
    add hl, de
    jr @+$19

    rla
    ld l, b
    ld [$08E8], sp
    adc b
    ld [$4848], sp
    xor b
    adc b
    ld l, b
    ld [$08C8], sp
    jr jr_01F_5308

    rst $38
    rst $38
    rst $38
    rra

jr_01F_5304:
    rst $38
    ld bc, $00FF

jr_01F_5308:
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00FF
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_5332:
    rst $38
    cp $FF
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_01F_5332

    ld d, b
    ret nc

    ld l, b
    ret z

    ld l, b
    ret z

    ld h, h
    call nz, $81A1
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    add b
    ld h, b
    ret nz

    ld d, b
    ret nz

    inc l
    ldh [rNR13], a
    ldh a, [$0C]
    db $FC
    inc bc
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
    add b
    nop
    jr nz, jr_01F_536E

jr_01F_536E:
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
    jr nz, jr_01F_537A

jr_01F_537A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [hl], d
    ld a, a
    ld [hl+], a
    ccf
    ld a, l
    ld a, a
    add c
    rst $38
    add b
    rst $38
    ld d, b
    ld d, b
    ld [$C008], sp
    ret nz

    and b
    jr nz, @+$22

    jr nz, @+$42

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    inc bc
    inc bc
    inc b
    rlca
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
    ldh [rIE], a
    nop
    rst $38
    ldh a, [rIE]
    inc e
    rra
    jr nz, jr_01F_53F9

    jr nz, jr_01F_53FB

    jr @+$21

    rlca
    rlca
    inc d
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    dec b
    db $FD
    ld [$F0F8], sp
    ldh a, [rNR41]
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $FF
    ld hl, sp-$01
    rlca
    rlca
    db $10
    db $10
    inc hl
    jr nz, jr_01F_5405

    jr nz, jr_01F_5407

    jr nz, jr_01F_5429

    ld b, b
    nop
    nop
    nop
    nop
    nop

jr_01F_53EF:
    nop
    ld h, h
    inc b
    call nz, $0404
    inc b
    ld [bc], a
    ld [bc], a
    nop

jr_01F_53F9:
    nop
    nop

jr_01F_53FB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201

jr_01F_5405:
    inc bc
    inc bc

jr_01F_5407:
    ld [bc], a
    dec b

jr_01F_5409:
    ld b, $05
    ld b, $07
    inc b
    rlca
    inc b
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_01F_5409

    db $10
    ldh a, [rNR10]
    ret nc

    jr nc, jr_01F_53EF

    jr nc, jr_01F_5421

jr_01F_5421:
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b

jr_01F_5429:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_01F_5458

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_01F_5470

    nop
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
    rlca
    ld [$1008], sp
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_5458:
    nop
    nop
    ldh [$E0], a
    db $10
    db $10
    ld [$0008], sp
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
    ld [$0000], sp
    nop

jr_01F_5470:
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
    jr nz, jr_01F_547E

jr_01F_547E:
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop

jr_01F_54A3:
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38

jr_01F_54C7:
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
    nop
    nop
    ccf
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_54ED:
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [$E0], a
    nop
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
    inc b
    dec bc
    inc c
    dec bc
    inc c

jr_01F_5506:
    ld a, [bc]
    dec c
    ld [$0A0F], sp
    dec c
    add hl, bc
    ld c, $1B
    inc c
    ret nc

    jr nc, jr_01F_54A3

    ld [hl], b
    jr nc, jr_01F_5506

    ret nc

    ldh a, [rNR10]
    ldh a, [$F0]
    jr nc, jr_01F_54ED

    jr nc, jr_01F_54C7

    ld e, b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld d, $16
    db $10
    db $10
    jr nz, jr_01F_554E

    nop
    nop
    sub b
    sub b
    db $10
    db $10
    ld [$0808], sp
    ld [$8484], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    db $10
    db $10
    jr z, jr_01F_556C

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_554E:
    nop
    nop
    ld [$0808], sp
    ld [$0404], sp
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01F_5562

jr_01F_5562:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_01F_556C:
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
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $FF01
    rst $38
    rst $38
    rst $38
    db $FC
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    cp $FF
    rst $38
    rst $38
    cp a
    ld hl, sp+$7F
    ldh [rIE], a
    ret nz

    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00FF
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld c, l
    di
    ld b, c
    rst $38
    ld [hl], $FF
    inc d
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld d, h
    rst $28
    ld b, h
    rst $38
    jr z, @+$01

    jr z, @+$01

    dec c
    rrca
    dec de
    dec bc
    inc e
    db $10
    inc de
    db $10
    inc de

jr_01F_5609:
    inc de
    db $10
    db $10
    jr @+$1A

    rla
    rla
    ld a, b
    sbc b
    db $EC
    add sp, $18
    nop
    add sp, $08
    adc b
    adc b
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    jr nz, jr_01F_5609

    db $10
    ret nc

    db $10
    sub b
    db $10
    jr nc, jr_01F_5670

    ld hl, sp+$07
    db $FC
    cpl
    db $E3
    ld e, a
    rst $00
    rst $38
    xor a
    ld a, a
    rra
    rst $38
    sbc a
    rst $38
    rst $38
    ld a, a
    rra
    ldh [rTAC], a
    ld hl, sp-$1D
    db $FC
    or $FF
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ldh [$E0], a
    jr nc, @-$0E

    ret nc

    jr nc, @-$06

    ld a, b
    sbc a
    ld a, a
    rst $08
    ccf
    rst $28
    rst $18
    cpl
    rst $38

jr_01F_5670:
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    dec de
    inc e
    db $FD
    cp $F3
    db $FC
    rst $38
    db $FC
    di
    cp $9F
    di
    adc a
    ldh a, [rLCDC]
    ld a, a
    ld h, e
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    ld a, a
    add b
    cp a
    ret nz

    rst $08
    ldh a, [$F5]
    cp $CF
    ldh a, [$BF]
    ret nz

    ld a, a
    sbc b
    ld [hl], a
    xor h
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp nz, $ECFF

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add c
    rst $38
    ld e, [hl]
    cp $44
    db $FC
    adc b
    ld hl, sp+$3C
    db $FC
    ld [bc], a
    cp $02
    cp $06
    cp $E0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $E3
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
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
    db $10
    db $10
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01F_5728

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    ld [$0908], sp
    ld [$0808], sp

jr_01F_5728:
    ld d, $16
    db $10
    db $10
    jr nz, jr_01F_574E

    nop
    nop
    sub b
    sub b
    ld [hl], b
    db $10
    ret z

    ld [$0818], sp
    or h
    add h
    db $E4
    inc b
    ld [bc], a
    ld [bc], a

jr_01F_573E:
    nop
    nop
    sbc a
    rst $38
    rrca
    rst $38

jr_01F_5744:
    cpl
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    jr jr_01F_5744

    jr nc, jr_01F_573E

jr_01F_574E:
    ldh [$E0], a
    ld hl, sp-$01
    db $FC
    rst $38
    ld a, [$F2FF]
    rst $38
    ldh a, [rIE]
    jr nc, jr_01F_579B

    jr jr_01F_577D

    rrca
    rrca
    sub e
    ld a, a
    call z, $B137
    ld c, [hl]
    ld a, e
    add h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    ei
    inc bc
    db $FC
    pop af
    ld c, $FD
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01F_577D:
    nop
    rst $38
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    dec de
    rra
    ld [hl], d
    ld a, l
    sub c
    cp $7F
    and h
    scf
    call z, $FC8B
    rst $30
    ld hl, sp+$0F
    ldh a, [$7F]

jr_01F_579B:
    add b
    cp a
    ret nz

    ld c, a
    or b
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ld a, [c]
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    inc e
    db $FC
    ret z

    ld hl, sp-$5C
    ld a, h
    inc h
    db $FC
    ld c, a
    rst $38
    ld b, c
    rst $38
    ld e, [hl]
    cp $01
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    inc b
    rst $38
    inc b
    rst $38
    ld [$08FF], sp
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    ld de, $11FF
    rst $38
    ld de, $21FF
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld sp, $FFFF
    rst $38
    ld [$04FF], sp
    rst $38
    inc b
    rst $38
    ld [$88FF], sp
    rst $38
    ld hl, sp-$01
    db $FC
    rst $38
    rst $38
    rst $38
    ld l, d
    ld de, $3146
    call z, $9C33
    ld h, e
    inc d
    db $E3
    inc [hl]
    jp $CB3C


    ld [hl-], a
    pop bc
    ld l, d
    adc c
    ld a, d
    sbc c
    ld e, [hl]
    sbc c
    ld d, h
    sub e
    ld l, h
    add e
    ld a, b
    add a
    jr nc, @-$2F

    add b
    ld a, a
    ld a, [bc]
    push af
    dec e
    ld [c], a
    inc de
    ldh [rNR51], a
    ret nz

    inc de
    ld [c], a
    ld l, $CD
    ld a, [hl-]
    ret


    inc [hl]
    jp $FF00


    inc c
    di
    dec de
    db $E4
    ld sp, $1EC1
    ldh [rSB], a
    cp $60
    sbc a
    jp nz, $001D

    rst $38
    cp d
    ld b, l
    ld l, l
    sub d
    ld [de], a
    nop
    db $ED
    db $ED
    rst $38
    nop
    nop
    rst $38
    adc l
    ld [hl], d
    nop
    rst $38

jr_01F_5852:
    nop
    rst $38
    ret nz

    ccf
    or b
    ld c, a
    jr jr_01F_5881

    call z, $3803
    rst $00
    nop
    rst $38
    add hl, de
    and $10
    rst $28
    add d
    ld a, l
    add $39
    push bc
    ld a, [hl-]
    rst $08
    jr nc, jr_01F_5852

    ld a, [de]
    xor d
    dec d
    dec bc
    inc [hl]
    sub h
    ld h, b
    ld a, [de]
    ld [c], a
    dec h
    push de
    scf
    rst $00
    jr @-$1E

    rlca
    ld hl, sp+$00
    rst $38
    sub [hl]

jr_01F_5881:
    ld l, c
    sub e
    ld h, b
    ld c, c
    jr nc, @-$5A

    sbc b
    and [hl]
    sbc b
    inc hl
    inc e
    pop bc
    ld a, $00
    rst $38
    ret nz

    ccf
    and b
    ld e, a
    ld [hl], b
    rrca
    add sp, $17
    jr c, jr_01F_58A1

    sub h
    add e
    adc d
    dec b
    ld [$3425], a

jr_01F_58A1:
    set 3, e
    nop
    cp $00
    xor l
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    sub h
    rst $18
    nop
    rst $38
    nop
    xor l
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FD
    nop
    xor l
    db $10

jr_01F_58C4:
    cp c
    nop
    sub c
    nop

jr_01F_58C8:
    add l
    inc b
    sub e
    db $10
    ld c, d
    add hl, bc
    jp z, Jump_01F_4709

    add b
    ld d, [hl]
    sub c
    ld c, e
    adc b

jr_01F_58D6:
    ld d, e

jr_01F_58D7:
    sub b
    ld d, h
    sub l
    ld c, c
    adc b
    ld e, c
    sbc b

jr_01F_58DE:
    call nc, $DA14
    add hl, de
    sub d
    ld de, $199A
    jp nc, $9211

    ld de, $19DA
    sbc d
    add hl, de
    or d
    ld sp, $1CDC
    xor h
    inc l
    cp h
    inc a
    or h
    inc [hl]
    xor h
    inc l
    xor b
    jr z, jr_01F_58D7

    jr jr_01F_5952

    sub b
    or [hl]
    ld sp, $2324
    ld [hl], h
    ld [hl], e
    ld d, h
    ld d, e
    inc h
    inc hl
    xor h
    inc hl
    adc b
    rlca
    sbc b
    rlca
    nop
    rst $38
    nop
    rst $38
    nop

jr_01F_5915:
    rst $38
    ld bc, $10FE
    rst $28
    ld b, $F9
    dec de
    db $E4
    ld l, b
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld h, b
    sbc a
    jr jr_01F_5915

    ld [hl], h
    adc e
    ld e, e
    sbc b
    ld d, e

jr_01F_5933:
    sub b
    ld d, d
    sub c
    ld b, [hl]
    add c
    ld l, [hl]
    add c
    inc a
    jp $E718


    nop
    rst $38
    add b
    nop
    jr nz, jr_01F_58C4

    ld b, b
    add b
    jr nz, jr_01F_58C8

    ret nz

    nop
    ld b, b
    add b
    and b
    nop
    nop
    add b
    ld b, b
    add b

jr_01F_5952:
    ret nz

    nop
    jr nz, jr_01F_58D6

    ret nz

    nop
    add b
    nop
    nop
    add b
    jr nz, jr_01F_58DE

    ld b, b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03FE
    db $FC
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    cp b
    ld b, a
    ld e, h
    inc bc
    xor h
    inc bc
    add $01
    xor [hl]

jr_01F_597B:
    ld c, c
    ld d, [hl]
    or l
    ld a, $CD
    ld e, $E5
    ld b, $F9
    ld [bc], a
    db $FD
    ld h, b
    sbc a
    or b
    ld c, a
    jr c, jr_01F_5933

    ret c

    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08FE
    or $02
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10

jr_01F_59A3:
    rst $28
    inc e
    db $E3
    jr nz, jr_01F_597B

    ld c, h
    and e
    jr nc, jr_01F_597B

    nop
    rst $38
    inc [hl]
    rlc b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $00FE
    rst $38
    nop
    rst $38
    nop
    rst $38
    add $21
    ld [de], a
    pop bc
    ld [hl], $D5
    sbc [hl]
    ld l, l
    ld c, h
    inc sp
    and h
    sbc e
    ret nz

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
    rst $38
    ld bc, $03FE
    db $FC
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    cp b
    ld b, a
    ld e, h
    inc bc
    xor h
    inc bc
    add $01
    xor [hl]

jr_01F_59EB:
    ld c, c
    ld d, [hl]
    or l
    ld a, $CD
    ld e, $E5
    ld b, $F9
    ld [bc], a
    db $FD
    ld h, b
    sbc a
    or b
    ld c, a
    jr c, jr_01F_59A3

    ret c

    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08FE
    or $02
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10

jr_01F_5A13:
    rst $28
    inc e
    db $E3
    jr nz, jr_01F_59EB

    ld c, h
    and e
    jr nc, jr_01F_59EB

    nop
    rst $38
    inc [hl]
    rlc b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $00FE
    rst $38
    nop
    rst $38
    nop
    rst $38
    add $21
    ld [de], a
    pop bc
    ld [hl], $D5
    sbc [hl]
    ld l, l
    ld c, h
    inc sp
    and h
    sbc e
    ret nz

    ccf
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_01F_5A45:
    ret nz

    nop
    ldh [rP1], a
    db $FC
    jr c, jr_01F_5A13

    ld a, $D1
    ccf
    add $00
    nop
    nop
    nop
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

    ld e, a
    or e
    rra
    push hl
    dec bc
    db $F4
    ld b, l
    cp e
    inc sp
    call z, $FF00
    jr nz, @-$1F

    nop
    rst $38
    add b
    ld h, b
    ret nz

    and b
    ret nz

    and b
    ret nz

    jr nz, jr_01F_5AB9

    or b
    nop
    db $FC
    jr c, jr_01F_5A45

    cp $19
    ld bc, $00FE
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FD
    ld bc, $00FE
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [hl+]
    cp a
    ld b, l
    ld d, a
    xor b
    nop
    rst $38
    adc [hl]
    ld [hl], a
    ld e, $E9
    ld [$00F7], sp
    rst $38
    add b
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    nop
    ldh [rLCDC], a
    cp b
    jr nc, @-$32

    ld a, b
    or a
    cp $19
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_5AB8:
    nop

jr_01F_5AB9:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    inc b
    ei
    nop
    rst $38
    ld bc, $00FE
    rst $38
    inc b
    ei
    ld bc, $00FE
    rst $38
    nop
    rst $38
    rst $38
    ld a, $FF
    sub h
    ld a, [hl]
    xor c
    cp h
    ld d, e
    ld [hl], b

jr_01F_5AD9:
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    db $FC
    jr nc, jr_01F_5AB8

    ld a, b

jr_01F_5AEB:
    sub [hl]
    ld a, h
    cp e
    ld a, [hl]
    xor l
    ld a, [hl]
    sub l
    ld e, a
    and d
    scf
    call z, $F50A
    jr nz, jr_01F_5AD9

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
    ld [$40F7], sp
    cp a
    jr nz, jr_01F_5AEB

    inc e
    db $E3
    ld [$34F7], sp
    bit 1, [hl]
    or c
    inc bc
    db $FC
    ld d, $E9
    rlca
    ld hl, sp+$03
    db $FC
    dec b
    ld hl, sp+$05
    ld hl, sp+$14
    db $EB
    adc h
    ld [hl], e
    ld a, [bc]
    push af
    ld e, $E1
    inc d
    db $E3
    sbc b
    ld h, e
    ld d, d
    and c
    sub h
    ld h, e
    dec b
    ld hl, sp+$06
    ld hl, sp+$05
    ld hl, sp+$25
    ret c

    inc l
    ret nc

    ld c, d
    or d
    ld c, d
    or d
    dec hl
    db $D3
    ld d, $61
    jp nc, $8A21

    ld [hl], c
    add $31
    call nz, Call_01F_6C33
    inc de
    call nz, $2E33
    ld d, c
    ld c, d
    or d
    ld c, d
    or d
    dec hl
    db $D3
    ld l, c
    sub c
    ld c, e
    sub e
    dec l
    pop de
    ld b, l
    sbc c
    ld b, l
    sbc c
    add $39
    ld [c], a
    dec e
    ld [hl], d
    dec c
    jr nc, @+$11

    xor d
    sub l
    cp d
    add l
    xor b
    sub a
    ld e, b
    ld b, a
    ld d, [hl]
    adc b
    ld h, d
    adc h
    inc sp
    call z, $C639
    jr z, @-$37

    inc l
    jp $D33C


    ld c, h
    add e
    sbc h
    add e
    add sp, -$19
    dec l
    ld [hl+], a
    push de
    ld [bc], a
    cp $01
    ld d, $E9
    ld bc, $2AFE
    call nc, $0700
    inc bc
    sbc h
    rrca
    di
    rra
    rst $28
    rra
    db $ED
    ccf
    db $D3
    ccf
    ret


    rra
    ldh [rP1], a
    ldh a, [$E0]
    rra
    ld hl, sp-$19
    db $FC
    ei
    db $FC
    or e
    cp $CD
    cp $51
    ld a, [$0025]
    rrca
    rlca
    ld hl, sp+$1F
    rst $20
    ccf
    push de
    ccf
    ret z

    ld a, [hl]
    or l
    ld a, h
    add e
    inc l
    db $D3
    nop
    add b
    nop
    db $FD
    sbc b
    ld h, a
    cp h
    ld e, e
    inc a
    db $DB
    ld a, [hl]
    xor l
    ld a, [hl]

jr_01F_5BCD:
    sub l
    cp $09
    nop
    ld bc, $FB00
    ld sp, $7CCE
    or e
    ld a, [hl]
    cp l
    ld a, a
    sub h
    ccf
    jp z, $C03F

    nop
    ld hl, sp-$10

jr_01F_5BE3:
    rrca
    db $FC
    di
    cp $69
    ld a, [hl]
    add l
    cp [hl]
    ld b, c
    db $FC
    inc de
    call z, $2FB3
    call nc, $E917
    ld c, a
    or b
    inc bc
    db $FC
    ld h, b

jr_01F_5BF9:
    cp a
    ld d, b
    cp a
    jr nc, jr_01F_5BCD

    nop
    rst $38
    db $EC
    inc de
    ret c

    daa
    ld h, b
    sbc a
    add h
    ld a, e
    inc b
    ei
    ld c, b
    or a
    nop
    rst $38
    nop
    rst $38
    jr jr_01F_5BF9

    jr nc, jr_01F_5BE3

    db $10
    rst $28
    ld b, $F9
    inc b
    ei
    db $10
    rst $28
    nop

jr_01F_5C1D:
    rst $38
    nop
    rst $38
    cp $11
    ld a, [hl]
    adc c
    ld e, h
    and e
    ld [hl-], a
    call $F30C
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    add sp, $3F
    ret nz

    rra
    db $E4
    rla
    add sp, $0C
    di
    inc bc
    db $FC
    jr nz, jr_01F_5C1D

    nop
    rst $38
    ld hl, sp+$47
    and h
    db $DB
    ret z

    scf
    add b
    ld a, a
    ret nz

    ccf
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$11F7], sp
    xor $28
    rst $10
    ld sp, $52CE
    xor l
    add hl, hl
    sub [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    sub h
    ld l, e
    ld a, [de]
    push hl
    add $31
    add h
    ld [hl], e
    nop
    rst $38
    nop
    rst $38
    ld hl, $02DE
    db $FD
    inc hl
    call c, $AC52
    ld [hl+], a
    call c, $B649
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add h
    ld a, e
    add h
    ld a, e
    adc b
    ld [hl], a
    add h
    ld a, e
    ld bc, $41FE
    cp [hl]
    ld h, d
    sbc l
    ld [hl], c
    adc [hl]
    ld [hl], d
    adc l
    ld d, e
    adc h
    ld d, l

jr_01F_5C9D:
    adc d
    ld b, a
    sbc b
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
    ld [bc], a
    db $FD
    add [hl]
    ld a, c
    ld b, d
    cp c
    jp nz, $803D

    ld a, l
    ld d, e
    call z, $CC53
    ld h, $99
    ld h, l
    sbc b
    ld c, a
    or b
    dec bc
    ldh a, [$0A]
    ldh a, [rNR24]
    ldh [rSCY], a
    cp c
    and [hl]
    ld e, l
    ret nz

    dec a
    sub b
    ld l, a
    ldh [$1F], a
    ld d, b
    cpl
    ld hl, sp+$07
    ld l, b
    rla
    ld de, $6DEE
    sub d
    jr c, jr_01F_5C9D

    ld d, $E9
    ld l, $C1
    dec de
    db $E4
    cpl
    ret nz

    ld [hl], $C1
    ld a, [bc]
    push af
    ld c, $F1
    sbc h
    ld h, e
    ld [de], a
    push hl
    inc d
    db $E3
    ld [de], a
    pop hl
    inc d
    db $E3
    sbc b
    ld l, e
    daa
    ret c

    rrca
    ldh a, [$0D]
    ldh a, [rIF]
    ldh a, [$0D]
    ldh a, [$0B]
    ldh a, [rNR21]
    pop hl
    inc de
    ldh [rOBP0], a
    or a
    ret z

    scf
    sub b
    ld l, a
    sbc b
    ld h, a
    ld d, h
    xor e
    sbc b
    ld h, a
    sbc h
    ld h, e
    inc d
    db $E3
    ld [de], a
    ldh [$15], a
    db $E4
    ld [hl], $C4
    add hl, hl
    ret z

    dec l
    call z, $C82B
    add hl, hl
    ret z

    dec hl
    ret z

    ldh a, [rIF]
    ret c

    rlca
    or h
    ld c, e
    add sp, $07
    xor b
    ld b, a
    inc [hl]
    db $D3
    cp h

jr_01F_5D2D:
    ld d, e
    ld [de], a
    push hl
    cpl
    ret nz

    inc hl
    ret nz

    inc sp
    ret nz

    dec hl
    ret z

    dec hl
    ret z

    dec h
    call nz, $CC2D
    add hl, hl
    ret z

    sbc d
    ld l, c
    sub [hl]
    ld h, c
    ld e, d
    xor c
    sbc b
    ld l, e
    sbc d
    ld l, c
    ret nc

    inc hl
    adc b
    ld [hl], e
    jp z, $2731

    ret nz

    ld h, $C1
    dec hl
    ret nz

    ld d, a
    sub b
    ld d, d
    sub b
    ld e, c
    sbc b
    ld c, c
    adc b
    ld d, [hl]
    sub h
    inc h
    jp Jump_01F_47B0


    jr z, jr_01F_5D2D

    and b
    ld b, a
    xor h
    ld b, e
    add sp, $07
    add sp, $27
    ret c

    ld b, a
    ld l, e
    adc b
    ld d, a
    sub b
    ld e, a
    sub b
    ld c, d
    add c
    ld c, l
    add d
    ld e, [hl]
    add c
    ld e, d
    add l
    ld a, h
    add e
    sbc h
    ld l, e
    ld e, $E9
    inc d
    db $E3
    inc e
    db $EB
    ld a, [de]
    jp hl


    ld e, $E9
    ld [$0AF3], sp
    pop af
    ld l, $CE
    ld a, [hl+]
    jp z, $C434

    ld d, $E6
    inc d
    db $E4
    dec d
    db $E4
    add hl, de
    ldh [$09], a
    ldh a, [$8C]
    ld [hl], e
    adc h
    ld [hl], e
    call z, $8433
    ld a, e
    add h
    ld a, e
    or h
    ld l, e
    and b
    ld c, a
    nop
    rst $38
    ld e, b
    sbc b
    ld c, [hl]
    adc [hl]
    ld l, l
    adc l
    ld a, [hl+]
    jp z, $C424

    ld [hl-], a
    ret nz

    ld de, $19E0
    ldh [$28], a
    rla
    or d
    adc l
    ld d, d
    dec l
    ld h, [hl]
    add hl, de
    and b
    ld e, e
    adc b
    ld [hl], e
    ld c, d
    or c
    add [hl]
    ld [hl], c
    ld [hl+], a

jr_01F_5DD1:
    dec e
    inc h
    dec bc
    add hl, de
    ld b, $04
    dec bc
    ld h, $01
    ld [$0303], sp
    nop
    dec b
    nop
    ld [c], a
    dec e
    ld d, h
    dec hl
    add hl, de
    ld b, $04
    dec bc
    ld h, $00
    nop
    nop
    jr nz, jr_01F_5DEE

jr_01F_5DEE:
    nop
    nop
    ld [c], a
    dec e
    ld d, h
    dec hl
    ld e, c
    ld b, $04
    dec bc
    ld h, $01
    ld [$0303], sp
    nop
    dec b
    nop
    jr nc, jr_01F_5DD1

    add d
    ld a, l
    push hl
    ld a, [de]
    cp a
    ld b, b
    jp nc, $2D04

    nop
    ld b, d
    nop
    stop
    ld b, $F9
    sub h
    ld l, e
    pop hl
    ld e, $BE
    ld b, c
    ld [hl], e
    ld [$004C], sp
    ld de, $0000
    nop
    dec bc
    ldh a, [$AF]
    ld d, b
    add $39
    or d
    ld c, l
    add sp, $07
    ld e, a
    nop
    dec h
    nop
    ld [bc], a
    nop
    nop
    rst $38
    add hl, de
    and $3E
    pop bc
    ld d, a
    and b
    ld hl, sp+$00
    push hl
    nop
    add b
    nop
    nop
    nop
    dec c
    ldh a, [$67]
    sbc b
    or d
    ld c, l
    ret c

    rlca
    ld l, l
    ld [de], a
    rra
    nop
    ld c, l
    nop
    ld [bc], a
    nop
    adc h
    ld [hl], e
    ld bc, $05FE
    ld a, [$A45A]
    rst $20
    db $10
    ld a, b
    add b
    ld b, h
    nop
    ld de, $3900
    pop bc
    rla
    rst $20
    or h
    ld b, h
    xor e
    ld b, b
    ld a, a
    add b
    ld l, b
    sub a
    add b
    ld a, a
    ld d, h
    dec hl
    rst $38
    nop
    inc bc
    cp $F1
    ld c, $09
    or $05
    ld a, [bc]
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld b, $F9
    ld c, $F1
    cp $03
    cp $FF
    cp $5B
    cp $01
    cp $FF
    nop
    ld [bc], a
    ld bc, $0201
    dec b
    ld [bc], a
    inc bc
    ld b, $0B
    inc b
    inc de
    ld c, $07
    ld a, [de]
    daa
    ld a, [de]
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    add b
    ld b, b
    inc d
    jr z, jr_01F_5ECD

    inc h
    dec de
    inc h
    dec d
    ld [hl+], a
    ld d, d
    ld hl, $4435
    dec sp
    ld b, e
    cp c
    ld b, c
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    jr nz, @-$3E

    sub b
    ld h, b

jr_01F_5ECC:
    ld l, b

jr_01F_5ECD:
    db $10
    sub b
    adc b
    xor [hl]
    ld d, b
    sbc h
    ld h, b
    xor e
    ld d, h
    sbc [hl]
    ld h, b
    ld d, $69
    ld c, c
    ld [hl], $20
    rra
    rra
    nop
    ld d, h
    ld c, b
    adc b
    inc b
    jr z, jr_01F_5EEA

    ret nc

    inc l
    add h
    ld a, b

jr_01F_5EEA:
    jr jr_01F_5ECC

    ld h, b
    add b
    ret nz

    nop
    ld bc, $0200
    ld bc, $0205
    ld [bc], a

jr_01F_5EF7:
    inc b
    add hl, bc
    dec b
    rlca
    ld a, [bc]
    ld [de], a
    add hl, bc
    ld a, [bc]
    ld de, $0000
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a

jr_01F_5F09:
    dec b
    dec bc
    inc b
    rlca
    ld a, [bc]
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    add b
    ld b, b
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    add hl, bc
    rla
    add hl, bc
    rrca
    ld [de], a
    rrca
    inc de
    rrca
    ld [de], a
    rrca
    rla
    add b
    ld b, b
    and b
    ld b, b
    ret nz

    jr nz, jr_01F_5EF7

    jr nz, jr_01F_5F09

    and b
    ldh [$90], a
    ldh [$90], a
    add sp, -$70
    ld a, [hl+]
    ld [de], a
    ld e, $26
    ld d, $24
    inc d
    inc h
    ld d, c
    jr nz, jr_01F_5F7F

    ld b, l
    ld hl, $3D50
    ld b, b
    ret nc

    ld c, b
    ret nc

    ld [$08D0], sp
    sub h
    ld c, b
    xor b
    ld b, h
    xor b
    ld b, h
    adc d
    ld [hl], h
    inc e
    ld [c], a
    ld a, [hl+]
    ld d, b
    inc de
    ld l, b
    ld c, [hl]
    ld sp, $3B44
    ld hl, $181E
    rlca
    rlca
    nop

jr_01F_5F6E:
    nop
    nop
    sub h
    ld l, d
    ld c, b
    or [hl]
    add d
    ld a, h
    add h
    ld a, b
    ld [$10F0], sp
    ldh [$E0], a
    nop
    nop

jr_01F_5F7F:
    nop
    nop
    add b
    add b
    ld b, b
    and b
    ret nz

    ld b, b
    jr nz, jr_01F_5FD9

    jr nz, jr_01F_5FEB

    ld d, b
    xor b
    jr nc, @-$4A

    jr z, jr_01F_5FBE

    ld a, [de]
    ld d, l
    ld [hl+], a
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    ld de, $406E
    ccf
    jr nz, jr_01F_5FBD

    rra
    nop
    sbc b
    inc d
    ld e, d
    ld b, h
    inc a
    ld [bc], a
    ld a, b
    ld b, $E2
    inc e
    adc h
    ld [hl], b
    jr nc, jr_01F_5F6E

    ret nz

    nop
    db $10
    ld [$1408], sp
    ld a, [bc]
    inc d
    inc c
    ld a, [de]
    inc l
    ld a, [de]
    dec e
    ld l, $1E

jr_01F_5FBD:
    dec l

jr_01F_5FBE:
    ld d, $37
    nop
    nop
    db $10
    ld [$1408], sp
    ld a, [bc]
    inc e
    inc l
    ld e, $14
    ld [hl], $10
    ld [hl+], a
    inc d
    ld [hl+], a
    ld d, d
    inc sp
    ld h, $43
    or a
    ld d, b
    ld l, e
    add b
    ld l, a

jr_01F_5FD9:
    add b
    ld a, $C1
    sbc h
    ld h, e
    ld b, c
    ld a, $18
    ld h, $82
    inc a
    inc a
    add b
    nop
    add b
    ld [$1484], sp

jr_01F_5FEB:
    adc [hl]
    add h
    ld [de], a
    ld [de], a
    inc c
    nop
    nop
    jr nz, jr_01F_600C

    ld e, b
    inc h
    jr c, jr_01F_604C

    jr nc, jr_01F_606E

    ld [hl-], a
    ld [hl], h
    xor h
    ld c, d
    ld d, h
    add d
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF

jr_01F_600C:
    cp $FF
    db $FC
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $FC
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38

jr_01F_604C:
    ret nz

    rst $38
    add b
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FC
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    db $FC

jr_01F_606E:
    ld [hl], e
    ld [hl], b
    ld a, d
    inc b
    sub d
    add b
    rst $08
    add b
    cp $FC
    rst $38
    rst $38
    add b
    add b
    ld a, a
    nop
    rst $38
    nop
    rrca
    rrca
    rst $00
    rst $00
    ld b, c
    add c
    ld e, b
    jr @-$10

    adc $3F
    ccf
    rst $00
    rlca
    ld sp, hl
    ld bc, $417E
    ccf
    inc a
    rrca
    ld [$0707], sp
    db $10
    db $10
    ld e, $1E
    rrca
    rrca
    rlca
    rlca
    rrca
    ldh a, [$E3]
    inc e
    pop bc
    ld a, $FC
    add e
    rst $38
    db $FC
    inc bc
    inc bc
    ldh a, [$F0]
    sbc b
    sbc b
    rst $08
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $30
    ldh a, [$FC]
    nop
    db $FC
    nop

jr_01F_60C4:
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    pop bc
    pop bc
    add b
    cp b
    nop
    ld a, h
    ld a, h
    nop
    add d
    add d
    rst $10
    rst $00
    xor e
    sub e
    rst $00
    rst $00
    nop
    nop
    add b
    add b
    ld hl, $2121
    ld hl, $0001
    ld bc, $A100
    and b
    add c
    add c
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01F_60FF:
    rst $38
    ld a, a
    add b
    jr nc, jr_01F_60C4

    db $10
    ldh [$08], a
    ldh a, [rNR32]
    ldh [$FE], a
    add b
    rst $30
    nop
    rst $18
    nop
    cp a
    add b
    ld e, a
    ld b, b
    dec a
    inc a
    ld h, e
    add e
    and $18
    jr jr_01F_6123

    db $EC
    db $E3
    ei
    ld hl, sp-$01
    nop
    rst $38

jr_01F_6123:
    nop
    cp $00
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    db $FD
    rra
    ldh [$EF], a
    rrca
    ret nz

    nop
    pop hl
    ld bc, $FEFE
    inc b
    nop
    or a
    ld b, a
    rst $28
    rrca
    rst $18
    rra
    rst $38
    rst $38
    ccf
    ccf
    dec a
    dec a
    ld a, h
    ld a, h
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    db $FC
    db $FD
    db $FC
    sbc a
    nop
    adc a
    nop
    jp $E000


    nop
    ret c

    add b
    rst $00
    add b
    ldh a, [$C0]
    ret z

    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ldh a, [rP1]
    rra
    nop
    ei
    ld hl, sp+$07
    rlca
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
    rst $38
    nop
    cp $00
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
    call nz, $FFC4
    rst $38
    ldh [$E0], a
    nop
    nop
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    ld a, a
    ld a, h
    cp a
    cp h
    rst $38
    db $FC
    rst $38
    db $FC
    call nz, $C3F8
    db $FC
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    adc a
    nop
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rrca
    nop
    inc bc
    nop
    ret nz

    nop
    add hl, sp
    ret nz

    ld b, $F9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc e
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    inc bc
    db $FC
    ld bc, $00FE
    rst $38
    nop
    rst $38
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    ld a, a
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    db $FC
    db $FC
    ld hl, sp-$07
    ldh a, [rIE]
    rst $38
    cp $FC
    pop af
    ldh [$CF], a
    add b
    jr c, @+$09

    ld [hl], b
    rrca
    ldh [$1F], a
    ldh [$1F], a
    ldh [$C0], a
    rra
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$03]
    ld bc, $78FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    ld a, b
    ld a, b
    add a
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ccf
    rra
    rst $00
    inc bc
    pop af
    nop
    db $FC
    inc e
    ld a, [hl]
    cp [hl]
    ld a, a
    cp [hl]
    rst $38
    inc e
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
    ccf
    rra

jr_01F_624C:
    sbc a
    rrca
    rst $08
    rrca
    di
    di
    rst $30
    rst $20
    rst $20
    rst $20
    rst $20
    rst $00
    rst $08
    jp $C0CF


    ret z

    rst $00
    ret z

    rst $00
    ret nz

    ccf
    ret nz

    cp a
    jp $C4BC


    cp b
    adc b
    ld [hl], b
    jr jr_01F_624C

    ld de, $10E1
    ldh [rSVBK], a
    add b
    sub b
    nop
    ld [$0800], sp
    nop
    ld [$1000], sp
    nop
    rra
    nop
    dec a
    ld [bc], a
    ld bc, $0000
    nop
    jr nz, jr_01F_62A6

    nop
    nop
    nop
    nop
    ld bc, $FF00
    nop
    inc bc
    db $FC
    inc e
    inc bc
    add [hl]
    ld bc, $0093
    cp c
    nop
    cp h
    nop
    ld a, $08
    ld a, $00
    sbc h
    nop
    ld l, a
    add a
    daa
    jp $23D3


jr_01F_62A6:
    di
    ld bc, $01F9
    ld sp, hl
    add hl, de
    ld a, l
    dec a
    ld a, l
    dec a
    ret z

    rst $00
    call nz, $C4C3
    jp $C3C4


    ld [c], a
    pop bc
    pop hl
    ldh [$F0], a
    ldh [$F8], a
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR32], a
    ldh [$0E], a
    ldh a, [$87]
    ld a, b
    ld h, e
    inc e
    ld a, d
    dec b
    xor h
    inc de

jr_01F_62D4:
    ld d, b
    cpl
    xor b
    rla
    ld d, b
    rrca
    jr z, jr_01F_62E3

    add e
    nop
    ldh [rP1], a
    nop
    rst $38
    nop

jr_01F_62E3:
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
    nop
    ld h, b
    add b
    jr jr_01F_62D4

    inc b
    ld hl, sp+$02
    db $FC
    dec b
    ld hl, sp+$0B
    ldh a, [$E7]
    nop
    rra
    nop
    ld a, l
    dec a
    ld a, c
    add hl, de
    ld sp, hl
    ld bc, $01F3
    di
    inc bc
    rst $20
    inc bc
    rst $28
    rlca
    rst $08
    rrca
    db $FC
    ld hl, sp-$02
    db $FC
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    ld b, $1F
    nop
    rrca
    nop
    jp $F080


    ldh [$FE], a
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec c
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld bc, $E000
    ret nz

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
    db $FC
    nop
    inc bc
    ld bc, $FFFF
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    nop
    rst $00
    inc bc
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rrca
    ccf
    rra
    rst $38
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
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    inc bc
    rst $38
    ccf
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
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38

Call_01F_63E3:
    ld a, a
    rst $38
    ccf
    cp a
    ld e, a
    ld e, a
    cpl
    cpl
    inc de
    inc de
    inc c
    ld a, h
    inc bc
    rra
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    ld l, b
    nop
    add b
    add b
    ld hl, sp-$10
    rst $38
    adc a
    adc a
    ld [hl], b
    add b
    ld a, a
    ld a, b
    nop
    add a
    add e
    ld h, b
    rra
    nop
    nop
    db $EC
    nop
    sub b
    ld b, b
    inc hl
    ret nz

    ld e, a
    add e
    ccf
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [$F0]
    rst $08
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    or b
    adc a
    rst $08
    ret nz

    ldh a, [$E0]
    add a
    add b
    ld h, h
    inc bc
    add h
    add e
    ld [hl], a
    ld b, b
    ei
    ldh a, [$FC]
    ld hl, sp-$05
    ei
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    rra
    nop
    rlca
    rlca
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$01
    db $E3
    db $FC
    adc a
    ldh a, [$3F]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    ld a, l
    rst $38
    ld e, $01
    cpl
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    nop
    add b
    add b
    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp+$38
    db $FC
    ld e, b
    cp h
    ld a, [hl+]
    call c, $EC12
    ld c, $1F
    ld c, $1F
    ld c, $1F
    cpl
    rra
    ld l, e
    rra
    ld c, e
    ccf
    rst $10
    dec sp
    or c
    ld a, a
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, c
    add b
    or e
    ret nz

    call c, Call_01F_63E3
    db $FC
    dec hl
    nop
    dec d
    nop
    nop
    nop
    ld d, c
    nop
    rst $38
    nop
    xor c
    ld [hl], b
    ld d, $F8
    ld e, e
    db $FC
    ld d, $E8
    ld c, $F0
    add [hl]
    ld a, b
    inc bc
    db $FC
    or c
    cp $D9
    cp $5D
    cp $ED
    ld a, [hl]
    xor h
    ld a, e
    jp nc, $E73D

    jr jr_01F_6506

    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $FE
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ld b, a
    ccf
    jr nc, jr_01F_64ED

    rrca
    nop
    cp l
    ld a, [hl]
    ld a, $7F
    ld a, $7F
    cp h
    ld a, a
    jr @+$01

    nop
    rst $38
    rst $38

jr_01F_64ED:
    nop
    nop
    nop
    jp hl


    ld a, [hl]
    ld h, e
    db $FC
    ld c, [hl]
    ldh a, [$5C]
    ldh [$90], a
    ldh [$60], a
    add b
    ret nz

    nop
    nop
    nop
    rst $38
    rra
    rra
    ldh [rP1], a
    rst $30

jr_01F_6506:
    db $10
    rst $20
    ldh [rIF], a
    nop
    add hl, de
    db $E4
    ld [bc], a
    ei
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $18
    rrca
    rst $28
    rlca
    rst $30
    rlca
    ld [hl], e
    adc e
    inc de
    cp $00
    ld c, $00
    rlca
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    ccf
    nop
    inc a
    nop
    db $EB
    inc bc
    di
    inc bc
    ld [hl], e
    inc bc
    inc bc
    inc bc
    or a
    inc bc
    xor a
    rlca
    sbc a
    rrca
    ld a, a
    ccf
    inc bc
    ld bc, $EF1F
    rra
    rst $28

jr_01F_6546:
    ccf
    rst $08
    rst $38
    rra
    rst $38
    rra
    ccf
    rst $18
    ccf
    rst $18
    ld a, a
    sbc a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ld a, a
    cp a
    cp a
    ccf
    rst $38
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    rra
    rra
    sbc a
    ld e, a
    rra
    rst $18
    rra
    ld e, a
    adc a
    ld c, a
    adc a
    cpl
    rrca
    ld l, a
    add a
    daa
    rst $00
    rst $00
    rlca
    rla
    inc bc
    di
    inc bc
    db $D3
    ld hl, $E010
    jr c, jr_01F_6546

    db $ED
    db $10
    dec c
    ldh a, [rNR32]
    ldh [$F0], a
    nop
    rst $20
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rst $18
    rra
    rrca
    inc bc
    rst $20
    rst $20
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $20
    add sp, -$29
    and a
    sbc b
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    and a
    sbc b
    xor b
    add a
    sub b
    add b
    cp h
    add b
    call z, $F080
    ldh [$FC], a
    rst $38
    cp $FD
    db $FC
    ei
    db $FC
    ei
    ld a, [$FAF9]
    ld sp, hl
    or $F1
    or $F1
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ret nz

    ld bc, $F3FE
    ldh a, [$F3]
    ldh a, [$F9]
    ldh a, [$FA]
    ld hl, sp-$04
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    ret nc

    ldh a, [rP1]

jr_01F_6604:
    and e
    ld bc, $1F3F
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
    rst $38
    db $FC
    rst $38
    nop
    ldh [rP1], a
    ld a, [de]
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
    nop
    ld [bc], a
    nop
    rrca
    nop
    ldh a, [rIF]
    ldh a, [rIE]
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01F_663C:
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    nop
    rra
    ldh [$03], a
    db $FC
    ld bc, $00FE
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    db $EB
    rst $30
    db $E3
    rst $10
    rst $30
    jp $0115


    rst $10
    jp $C3D7


    add c
    add c
    ld a, [hl]
    nop
    ld b, d
    inc a
    ld c, [hl]
    jr nc, jr_01F_66D7

    jr nz, jr_01F_669B

    nop
    ld e, [hl]
    jr nz, jr_01F_66DD

    jr nz, jr_01F_6604

    cp e
    add e
    add e
    rst $00
    rst $00
    rst $10
    rst $00
    rst $10
    rst $00
    rla
    rlca
    daa
    rla
    rrca
    rrca
    rst $30
    db $E3
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_669B:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    jr nz, jr_01F_6701

    jr nz, jr_01F_6723

    nop
    ld a, [hl]
    nop
    ld e, [hl]
    jr nz, jr_01F_6709

    jr nz, jr_01F_670B

    jr nz, jr_01F_670D

    jr nz, jr_01F_6730

    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    db $E3
    rst $38
    jp $01FF


    rst $38
    jp $E3FF


    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    jr @+$80

    nop
    add c
    nop
    ld a, [hl]

jr_01F_66D7:
    nop
    nop
    nop
    ld b, d
    nop
    ld b, d

jr_01F_66DD:
    nop
    jr jr_01F_66F8

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e

jr_01F_66F8:
    add e
    add e
    nop
    nop
    rst $38
    add e
    add e
    add e
    ld sp, hl

jr_01F_6701:
    or $FF
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_6709:
    rst $38
    rst $38

jr_01F_670B:
    rst $38
    rst $38

jr_01F_670D:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    or a
    jp $F4A0


    jp $9BFC


    sbc a
    ld l, h
    add a
    ld b, c
    jp hl


    add [hl]
    rst $38
    sbc a
    sbc a

jr_01F_6723:
    ld l, a
    add a
    ld b, c
    jp hl


    ld b, $F9
    ld d, $9F
    ld l, c
    add a
    ld b, c
    jp hl


    add [hl]

jr_01F_6730:
    rst $38
    rst $38
    ccf
    ccf
    rra
    rst $18
    adc a
    ld l, a
    ld l, a
    rrca
    rra
    rra

Jump_01F_673C:
    ld b, e
    ld b, e
    ld bc, $003D
    ld a, l
    ld b, l
    jr c, jr_01F_677E

    nop
    add h
    add b
    xor b
    sub b
    ld de, $3761
    ld b, a
    sbc c
    adc c
    ld bc, $3D3D
    add c
    add e
    inc bc
    ld [$1110], sp
    dec c
    jp nc, $E7CA

    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08

jr_01F_6764:
    ldh a, [$F7]
    rst $20
    add sp, -$18
    ldh [$F0], a
    ldh a, [$C2]
    ret nz

    add d
    cp b
    rlca
    nop
    jr jr_01F_677B

    daa
    jr jr_01F_67D6

    daa
    cp a
    ld e, a
    cp a

jr_01F_677B:
    ld e, a
    cp a
    ld e, a

jr_01F_677E:
    cp a
    ld e, a
    ldh [rP1], a
    jr jr_01F_6764

    db $E4
    jr @-$04

    ld h, h
    ld a, l
    ld a, d
    ld a, l
    ld a, d
    ld a, l
    ld a, d
    ld a, l
    ld a, d
    or b
    ld b, b
    cp [hl]
    ld e, [hl]
    cp [hl]
    ld e, [hl]
    cp [hl]
    ld e, [hl]
    ld e, a
    ld h, $27
    jr jr_01F_67B5

    rlca
    rlca
    nop
    dec c
    ld [bc], a
    db $FD
    ld a, [$FAFD]
    db $FD
    ld a, [$E4FA]
    db $E4
    jr jr_01F_67C5

    ldh [$E0], a
    nop
    nop
    nop
    ld bc, $0001

jr_01F_67B5:
    inc e
    db $DD
    rst $38
    ld a, $7F
    ld e, l
    ld a, $62
    ld e, h
    inc a
    jr nz, jr_01F_67C1

jr_01F_67C1:
    nop
    nop
    nop
    ret nz

jr_01F_67C5:
    cp $BE
    rst $38
    ld e, l
    ld a, $3E
    nop
    ld b, [hl]
    ld b, [hl]
    nop
    jr c, jr_01F_67D4

    inc bc
    db $10
    inc de

jr_01F_67D4:
    ld h, e
    ld h, a

jr_01F_67D6:
    inc b
    inc bc
    inc bc
    nop
    inc b
    inc b
    nop
    nop
    ld b, $06
    cp b
    db $FC
    ld b, h
    cp b
    cp b
    ret nz

    ld b, b
    adc [hl]
    adc [hl]
    rra
    ld de, $FE0E
    ldh a, [rP1]
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_67FE:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF
    cp $FF
    nop
    nop
    rst $38
    nop
    ldh [$1F], a
    ret nz

    ccf
    adc $31
    rst $18
    ld l, $DF
    jr nz, jr_01F_67FE

    jr nz, jr_01F_6821

jr_01F_6821:
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    cpl
    rra
    ccf
    rra
    ld e, a
    ccf
    ld a, a
    ccf
    push de
    ld l, $D5
    ld l, $DE
    ld sp, $FF3F
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl-]
    db $FC
    inc a
    cp $7C
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $3F
    rst $38
    ccf
    rst $38
    ccf
    cp $3E
    db $FD
    ccf
    db $FC
    ccf
    db $FC
    ld a, $FD
    ld a, $FD
    db $FC
    cp $FC
    cp $FC
    ld a, $3C
    sbc $FC
    ld e, $EC
    ld e, $A4
    sbc $A4
    sbc $3F
    cp $3F
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    sbc $3F
    call z, $E03F
    rra
    nop
    nop
    ccf
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    ld hl, sp-$05
    db $E4
    and $98
    adc [hl]
    ld [hl], b
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ret z

    nop
    sbc a
    nop
    adc b
    rlca
    ret c

    rlca
    ccf
    inc bc
    rst $38
    inc bc
    db $DB
    rlca
    inc sp
    rrca
    jp $073F


    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    and b
    rra
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
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
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    nop
    ld e, [hl]
    rra
    ld e, h
    rra
    ld e, h
    rra
    ld e, c
    rra
    nop
    nop
    nop
    nop
    cp $00
    ld [bc], a
    nop
    ld h, d
    ld hl, sp-$16
    ld hl, sp-$36
    ld hl, sp-$66
    ld hl, sp+$5B
    rra
    ld e, a
    rra
    ld d, a
    rra
    ld e, [hl]
    rra
    ld e, h
    rra
    ld e, h
    rra
    ld e, c
    rra
    ld e, e
    rra
    sbc d
    ld hl, sp+$3A
    ld hl, sp+$3A
    ld hl, sp+$7A
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp+$5F
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    cp $FE
    ldh a, [$F0]
    add a
    add a
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    nop
    nop
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
    nop
    nop
    rst $38
    rst $38
    or c
    or b
    rst $08
    ret nz

    sbc a
    add b
    add b
    add b
    cp a
    cp a
    xor l
    xor l
    cp a
    xor l
    cp a
    xor l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $30
    ld d, a
    ld e, a
    rst $30
    ld e, h
    db $F4
    cp a
    cp a
    adc e
    add b
    cp a
    cp a
    cp a
    xor [hl]
    xor [hl]
    cp a
    and d
    or e
    cp a
    cp a
    add a
    add b
    rst $38
    rst $38
    ldh [$1F], a
    rst $38
    rst $38
    rst $30
    push af
    db $FD
    rst $30
    sbc l
    sub a
    rst $38
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    inc bc
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $BFFE
    cp a
    cp d
    xor d
    xor a
    cp d
    xor a
    cp d
    cp a
    cp a
    adc e
    add b
    cp a
    cp a
    ldh [$E0], a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    cp a
    ldh [$A0], a
    rst $38
    rst $38
    ldh [$1F], a
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    xor e
    xor e
    rst $38
    xor b
    db $FC
    rst $38
    rst $38
    rlca
    ld hl, sp-$01
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $20
    ldh [$DF], a
    ret nz

    cp a
    add b
    and b
    add b
    adc a
    adc a
    or b
    or b
    rst $08
    ret nz

    cp a
    add b
    add b
    add b
    cp a
    cp a
    xor l
    xor l
    cp a
    xor l
    cp a
    xor l
    cp a
    cp a
    or b
    adc a
    cp a
    cp a
    cp a
    xor [hl]
    xor [hl]
    cp a
    and d
    or e
    cp a
    cp a
    or b
    adc a
    db $FD
    db $FD
    dec c
    pop af
    db $FD
    db $FD
    db $FD
    db $FD
    db $FD
    db $FD
    add l
    add l
    db $FD
    db $FD
    dec c
    pop af
    cp a
    cp a
    cp e
    xor e
    xor a
    cp e
    xor a
    cp e
    cp a
    cp a
    or b
    adc a
    cp a
    cp a
    ldh [$E0], a
    nop
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld c, a
    ccf
    jr nc, @+$11

    rrca
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $22FE
    db $DD
    ld e, l
    and d
    ccf
    ret nz

jr_01F_6A70:
    ld bc, $02FE
    db $FD
    rla
    add sp, $0F
    ldh a, [$8F]
    ld [hl], b
    ld d, a
    xor b
    add e
    ld a, h
    and a
    ld e, b
    db $E3
    nop
    db $E3
    nop
    rst $00
    nop
    adc a
    nop
    ld c, a
    nop
    sbc a
    nop
    rra
    nop
    rra
    nop
    ld c, $F1
    ld c, $F1
    ld d, $E9
    inc c
    ld a, [c]
    inc e

jr_01F_6A99:
    ld [c], a
    jr z, jr_01F_6A70

    ld e, b
    and h
    ld [hl], b
    adc b
    cp a
    ld b, b
    ld [hl], h
    add b

jr_01F_6AA4:
    db $EB
    nop
    ret nz

    nop

jr_01F_6AA8:
    add b
    nop
    ld b, $00
    dec hl
    nop
    ld c, a
    nop
    db $EB
    inc d
    rst $38
    nop
    ccf
    nop
    ld e, $00
    nop
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    adc a

Jump_01F_6AC1:
    nop
    adc a
    nop
    ld b, a
    nop
    add a
    nop
    inc bc
    nop
    dec bc
    nop
    rst $00
    nop
    rst $38
    nop
    or b
    ld c, b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ld [hl], b
    adc b
    jr nc, jr_01F_6AA4

    ld d, b
    xor b
    jr nc, jr_01F_6AA8

    ret nz

    ccf
    ld bc, $05FE
    ld a, [$F40B]
    scf
    ret z

    call c, $F023
    inc c
    nop
    ldh a, [rHDMA4]
    xor e
    rst $38
    nop
    rst $38
    nop
    jp $003C


    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add c
    ld a, [hl]
    ld l, e
    sub h
    rst $30
    ld [$00FF], sp
    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [$08]
    ld [hl], b
    adc b
    ldh [rNR10], a
    ret nz

    jr nz, jr_01F_6A99

    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    ccf
    jr jr_01F_6B9F

    daa
    ld h, a
    jr jr_01F_6B76

    scf
    ld d, a

Jump_01F_6B2D:
    cpl
    ld [hl], a
    rrca
    db $FC
    di
    rst $30
    ldh a, [rIE]
    rst $38
    xor $E1
    ret nz

    jp $818E


    sub d
    adc h
    and c
    sbc [hl]
    or e
    adc h
    sbc a
    add b
    sbc [hl]
    add c
    or b
    add e
    add [hl]
    add c
    adc a
    add b
    sub e
    adc h
    and c
    sbc [hl]
    or e
    adc h
    sbc a
    add b
    ret nc

    ret nz

    rst $20
    rst $20
    ld hl, sp-$01
    ldh [$F8], a
    db $D3
    ldh a, [$E4]
    db $E3
    rst $00
    rrca

jr_01F_6B62:
    rst $00
    rra
    pop bc
    rrca
    pop bc
    rra
    ret nz

    rrca
    ld b, b
    add a
    and b
    ret nz

    rst $18
    ldh [$E0], a
    rst $38

jr_01F_6B72:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_6B76:
    rst $38
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
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rlca
    nop
    dec bc
    ldh a, [rTIMA]
    ld hl, sp+$05
    ld hl, sp-$10
    rst $08
    rst $18
    ret nz

    rst $38
    rst $38
    ld a, [hl]
    add c
    inc a
    jp $817E


    rst $20
    jr jr_01F_6B62

jr_01F_6B9F:
    inc a
    rst $20
    jr @+$01

    nop
    ld a, [hl]
    add c
    inc a
    jp $817E


    rst $38
    nop
    rst $20
    jr jr_01F_6B72

    inc a
    rst $20
    jr @+$01

    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    db $FC
    inc bc
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_6BE0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$30]
    ret nz

    ld c, a
    add b
    or b
    nop
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    rst $28
    ldh a, [$F0]
    ret nz

    rst $08
    add b
    or b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    inc c
    inc bc
    ld a, [c]
    ld bc, $000D
    ld c, d
    ld b, c
    ld b, h
    ld b, b
    ld b, d
    ld c, h
    ld c, l
    ld d, d
    ld e, l
    ld h, d
    db $10

jr_01F_6C1B:
    ld c, a
    ld c, [hl]
    ld d, c
    ld d, b
    ld b, c
    ld [bc], a
    add b
    ld a, [hl-]
    nop
    ld h, h
    jr jr_01F_6C69

    inc a
    ld b, d
    inc a
    inc h
    jr jr_01F_6C45

    ld b, b
    add d
    nop
    ld b, [hl]
    ld b, c
    ld c, b

Call_01F_6C33:
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, d
    ld c, h
    ld d, c
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld c, c
    ld b, [hl]
    ld b, [hl]
    ld b, b
    adc l
    adc c
    rla
    ld h, l
    rlca

jr_01F_6C45:
    push af
    sub l
    ld h, l
    db $ED
    adc l
    db $FD
    db $FD
    or l
    add l
    ld c, a
    dec [hl]
    cp a
    nop
    reti


    nop
    and a
    nop
    sbc b
    jr nz, jr_01F_6BE0

    jr c, jr_01F_6C1B

    sbc a
    ldh a, [$CF]
    rst $38
    ldh a, [$0D]
    nop
    sbc e
    nop
    push hl
    nop
    add hl, de
    nop
    pop hl

jr_01F_6C69:
    inc b
    ld [bc], a
    ld sp, hl
    inc c
    di
    ldh a, [rIF]
    dec c
    nop
    sbc e
    nop
    push hl
    nop
    add hl, de
    inc b
    pop hl
    inc e
    inc bc
    ld sp, hl
    rrca
    di
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $EB
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $FC
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $FF
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ret nz

    db $FC
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    db $FD
    ld a, b
    db $FD
    ld [bc], a
    jp nz, $BF9F

    cp a
    cp a
    sbc a
    cp a
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
    ld [$E70C], sp
    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ldh [$F8], a
    db $FC
    db $FD
    ld sp, hl
    ei
    ei
    rst $38
    ld sp, hl
    ei
    cp $FF
    pop hl
    rst $38
    rst $18
    rst $38
    ld b, b
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    cp $10
    pop de
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    add hl, bc
    cp a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    rst $38
    nop
    rra
    db $E3
    rst $38
    db $FD
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
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
    rst $18
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rra
    ld a, a
    cp a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ccf
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    db $FC
    pop af
    cp $F9
    cp $F9
    cp $F9
    cp $F9
    cp $F1
    cp $02
    db $FC
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rst $38
    rst $38
    ld bc, $F101
    ld bc, $0101
    db $FD
    db $FD
    rst $38
    rst $38
    add b
    rst $38
    ld a, a
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
    add b
    ld a, a
    add b
    ld bc, $FEFF
    nop
    cp $00
    ldh a, [$0E]
    db $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $7F
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], c
    add b
    ld [hl], c
    adc h
    ld [hl], c
    adc h
    rst $38
    add b
    inc e
    ld c, $9C
    adc $9C
    adc $9C
    adc $9C
    adc $9C
    adc $9C
    adc $FF
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01F_6FEF:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    sub b
    ld h, b
    or b
    nop
    rra
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    inc c
    nop
    sbc b
    nop
    sub $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    pop af
    ld [hl-], a
    and a
    dec h
    add d
    add b
    nop
    sbc a
    nop
    jr nz, jr_01F_705B

    ld e, a
    jr nz, jr_01F_6FEF

    ld e, h
    jr jr_01F_7051

    sub [hl]
    ret c

    ld a, [bc]
    rlca
    ld bc, $F901
    nop
    inc b
    ld hl, sp-$06
    inc b
    dec d
    ld a, [hl-]
    rst $10

jr_01F_7051:
    inc e
    dec b
    sbc $2D
    ld e, $C9
    ld a, $00
    nop
    db $FC

jr_01F_705B:
    nop
    inc b
    ld hl, sp-$02
    nop
    ld c, c
    jr jr_01F_70A6

    sbc b
    ld b, [hl]
    ret


    push bc
    jp $A38D


    ld c, $01
    dec c
    ld [bc], a
    inc c
    inc bc
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    ld [$00FF], a
    rst $38
    rst $38
    nop
    ldh [rP1], a
    cp h
    ret nz

    sub $E0
    ld [$4BF0], a
    ldh a, [$97]
    ldh [$33], a
    call z, $14EB
    ccf
    nop
    ld l, a
    rra
    rst $18
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    db $DD
    ccf
    ldh [$1F], a
    cp a
    ld b, b
    db $FC
    nop
    or $F8
    ei
    db $FC

jr_01F_70A6:
    db $FD
    cp $A9
    cp $52
    db $FD
    ld b, $F9
    cp $01
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    cp a
    ld e, a
    sub a
    cpl
    rst $18
    db $10
    rst $20
    rrca
    or b
    ld b, b
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_01F_70D3:
    rst $38
    rst $38
    rst $38
    ld a, [$FDFF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    pop af
    ld a, [$FAA1]
    ld c, c
    ld a, [c]
    or a
    ld [c], a
    ld h, e
    sub $EE
    inc h
    sub l
    call z, $083D
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    and a
    ld l, b
    rst $00
    ld c, b
    ld bc, $8C8E
    add l
    adc h
    add l
    ret nc

    ld h, b
    sub b
    ld h, b
    ldh a, [$60]
    sub b
    ld h, b
    or b
    ld h, b
    sub b
    nop
    rst $28
    nop
    adc h
    ld h, e
    nop
    nop
    nop
    nop
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
    rra
    nop
    inc e
    nop
    ld [hl-], a
    inc e
    ld a, l
    ld a, $7F
    ld c, $1E
    nop
    ld b, $08
    db $EC
    ld [$C82C], sp
    db $D3
    jr c, jr_01F_70D3

    ld a, e
    or h
    ld a, b
    or e
    ld a, h
    nop
    nop
    ccf
    nop
    jr nz, jr_01F_716D

    ld a, a
    nop
    ei
    db $FC
    di
    db $FC
    rlca
    ld hl, sp-$03
    ld [bc], a
    ret


    cp $63
    db $FC
    cp $00
    nop
    nop
    dec c
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca

jr_01F_716D:
    inc bc
    rrca
    inc bc
    ccf
    ret nz

    nop
    rst $38
    ret c

    rst $38
    ldh [rIE], a
    ld a, [hl-]
    rst $38
    pop af
    rst $38
    call z, Call_01F_60FF
    rst $38
    dec b
    ld hl, sp-$07
    db $FC
    ld sp, hl
    db $FC
    di

jr_01F_7187:
    ld hl, sp-$0E
    ld sp, hl
    ld a, [c]
    ld sp, hl
    ldh a, [$FB]
    pop af
    ld a, [$7FA0]
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld hl, sp+$07
    nop
    rst $38
    ld bc, $07FF
    rst $38
    rra
    rst $38
    ld [hl], $FF
    dec bc
    rst $38
    rla
    rst $38
    and b
    ld a, a
    sbc b
    ld e, a
    and a
    ld h, a
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_01F_7187

    inc a
    db $E3
    rra
    ld hl, sp+$07
    nop
    rst $38
    ccf
    rst $38
    ld h, b
    ld h, b
    and b
    ldh [$B0], a
    ldh a, [$5F]
    ld a, a
    db $EC
    di
    ccf

jr_01F_71CF:
    ret nz

    nop
    rst $38
    ldh a, [rIE]
    add a
    add a
    nop
    nop
    add c
    add c
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld d, $F9
    ld a, e
    db $FC
    ld b, a
    ld b, a
    add b
    ret nz

    and b
    ldh [$DF], a
    rst $38
    inc c
    di
    rst $38
    nop
    ld a, h
    push af
    db $FC
    dec b
    adc h
    push af
    ld d, $19
    ld c, $0F
    ldh [$E1], a
    ld bc, $FFFE
    nop
    xor e
    ld h, a
    daa
    ld l, a
    rla
    rrca
    ld d, a
    rrca
    ld e, e
    rlca
    sbc h
    ld b, e
    and b
    ld b, b
    xor [hl]
    ld a, a
    ret nc

    ldh [$E8], a
    ldh a, [$E8]
    ldh a, [$E8]
    ldh a, [$C8]
    ldh [rNR23], a
    add b
    ld l, b
    jr nc, jr_01F_71CF

    ret nz

    jr nc, jr_01F_7231

    cpl
    rra
    inc hl
    rlca
    jr c, jr_01F_722B

    inc a
    nop
    inc sp

jr_01F_722B:
    inc c
    inc a
    rlca
    dec hl
    rla
    ld c, d

jr_01F_7231:
    db $EC
    db $FD
    cp $F3
    db $FC
    ld b, $F0
    ld c, $00
    cp $00
    ld a, [$B400]
    ret nz

    ld sp, hl
    ld b, $FC
    inc bc
    rst $38
    nop
    db $FC
    inc bc
    ld hl, sp+$07
    ld a, [c]
    ld c, $F9
    rlca
    cp $01
    rra
    ldh [$5F], a
    ldh [$2F], a
    or b
    xor a
    or b
    and a
    cp b
    inc de
    inc e
    rlca
    jr jr_01F_727E

    ldh [rIF], a
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    dec bc
    dec b
    dec bc
    dec b
    dec c
    ld b, $0B
    inc bc
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$FDFF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_01F_727E:
    nop
    nop
    rlca
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0102
    ld b, $01
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca

jr_01F_7298:
    dec d
    ld c, $16
    inc c
    ld e, $00
    ld e, $3F
    nop
    nop
    add b
    nop
    ld a, a
    add b
    add b
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
    nop
    nop
    ldh [rP1], a
    jr jr_01F_7298

    and h
    ld a, b
    ld d, b
    inc a
    jr z, jr_01F_72DA

    jr jr_01F_72CC

    ld e, $00
    inc sp
    ld c, $6C
    rra
    ld e, [hl]
    ccf

jr_01F_72C8:
    ld a, [hl]
    ccf
    ld e, [hl]
    ccf

jr_01F_72CC:
    ccf
    nop
    inc e
    ccf
    nop
    nop
    nop
    db $10
    add d
    adc d
    add b
    add b
    add b
    add d

jr_01F_72DA:
    add c
    add c
    ld [$200B], sp
    jr nz, jr_01F_72C8

    inc d
    rst $20
    inc d
    rst $20
    inc d
    rst $20
    inc d
    rst $20
    sub h
    rst $20
    inc d
    rst $20
    inc d
    rst $20
    inc d
    nop
    nop
    db $10
    ld b, b
    pop bc
    ldh a, [$E6]
    ld sp, hl
    db $EC
    di
    sub a
    ldh [$71], a
    adc [hl]
    rst $08
    ld a, $7F
    nop
    nop
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld l, $04
    ld [hl], l
    inc b
    ld e, a
    ccf
    inc a
    inc bc
    nop
    ret nz

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
    ld b, b
    nop
    add b
    inc h
    dec de
    ld h, b
    db $10
    ld c, a
    cpl
    ld c, a
    cpl
    ld c, l
    dec l
    ld c, a
    cpl
    ld c, a
    cpl
    ld d, b

jr_01F_732F:
    jr nz, @+$6A

    ret nz

    ld [$9860], sp
    and b
    xor b
    sub b
    xor b
    sub b
    xor h
    sub b
    xor h
    sub b
    ld c, h
    jr nc, @+$01

    nop
    rst $38
    nop
    db $DB
    inc a
    and l
    ld h, [hl]
    ld b, l
    add $45
    add $45
    add $45
    add $FF
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
    ldh [rP1], a
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
    rrca
    db $10
    rrca
    nop
    ld b, l
    add $65
    and $55
    sub $6D
    xor $55
    sub $6D
    xor $DB
    inc a
    cp l
    ld b, d
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
    add b
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld e, $E0
    cp $00
    ld [hl], b
    ld b, $04
    ld c, b
    ld [$15B1], sp
    db $E3
    sbc l
    ld b, c
    jr c, jr_01F_732F

    pop bc
    add e
    ld b, b
    add a
    rst $20
    inc d
    rst $20
    inc d
    rst $20
    sub h
    rst $20
    sub h
    rst $20
    sub h
    rst $20
    sub h
    rst $20
    inc d
    rst $20
    inc d
    inc e

jr_01F_73C1:
    ld [$0814], sp
    inc d
    ld [$1038], sp
    jr c, @+$12

    ld [hl], b
    jr nz, jr_01F_743D

    jr nz, jr_01F_743F

    jr nz, jr_01F_7441

    jr nz, jr_01F_7443

    jr nz, jr_01F_7445

    jr nz, jr_01F_7447

    jr nz, jr_01F_7449

    jr nz, jr_01F_740B

    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    nop
    ld hl, sp+$00
    nop
    nop
    sub b
    nop
    add b
    nop
    nop
    nop
    ld l, h
    nop
    ld a, [c]
    nop
    db $FD
    or b
    ldh [$C0], a
    ldh [$E8], a
    ldh a, [$9C]
    ret z

    jp nz, $E0EC

    di
    db $F4
    ld hl, sp+$1F
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    inc e
    nop

jr_01F_740B:
    daa
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
    jr c, jr_01F_7419

jr_01F_7419:
    ld b, b
    nop
    ldh a, [rP1]
    ret c

    nop
    nop
    nop
    ld hl, sp-$08
    db $FC
    db $FC
    cp $FE
    rst $38

Call_01F_7428:
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    call z, Call_01F_4C30
    jr nc, jr_01F_73C1

    or b
    adc h
    or b
    sbc h
    or b
    adc h
    or b
    sub h

jr_01F_743D:
    cp b
    ld d, h

jr_01F_743F:
    jr c, jr_01F_7486

jr_01F_7441:
    add $45

jr_01F_7443:
    add $45

jr_01F_7445:
    add $45

jr_01F_7447:
    add $45

jr_01F_7449:
    add $45
    add $45
    add $45
    add $00
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    db $FC
    nop
    ld e, $E0
    ld c, $F0

jr_01F_746E:
    ld c, $F0

jr_01F_7470:
    sbc c
    ld a, [hl]
    and l
    ld h, [hl]
    and l
    ld h, [hl]
    and h
    ld h, a
    sub b
    ld [hl], e
    adc b
    ld a, a
    and b
    ld a, a
    or h
    ld a, a
    rst $38
    nop
    add b
    ld h, b
    add b
    ld b, b

jr_01F_7486:
    rst $38
    nop
    nop
    rst $38
    inc de
    di
    jr nz, jr_01F_746E

    jr nz, jr_01F_7470

    pop af
    ld c, $0B
    ld b, $09
    ld b, $FB
    ld b, $09
    or $0D
    ld a, [c]
    adc a
    ldh a, [$87]
    ld hl, sp-$20
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$F8]
    ldh a, [$F8]
    ldh a, [$E8]
    ldh a, [rP1]
    ldh [$C0], a
    rst $18
    inc l
    dec a
    rra
    ld a, a
    ld a, a
    rst $38
    cpl
    rst $38
    push bc
    rst $38
    ld [de], a
    rra
    ld bc, $0001
    ld a, a
    ret nc

    sub $E0
    db $FD

jr_01F_74C6:
    ldh a, [$FA]
    ld c, h
    db $FC
    add b
    db $F4
    jr nz, jr_01F_74C6

    nop
    add b
    rrca
    nop
    jr nc, jr_01F_74E3

    ld e, a

jr_01F_74D5:
    ccf
    rlca
    ld a, a
    jr nc, jr_01F_7559

    ld sp, $4C7F
    ccf
    ld [hl], b
    rrca
    adc a
    ld c, a
    ret nz

jr_01F_74E3:
    jr nc, jr_01F_74D5

    rrca
    rst $28
    db $10
    db $F4
    ld a, [de]
    add sp, $18
    rst $30
    rrca
    rst $38
    nop
    ld b, a
    ccf
    adc a
    ld a, a
    sbc [hl]
    ld a, a
    sbc h
    ld a, [hl]
    cp b
    ld a, h
    cp b
    ld a, h
    cp b
    ld a, h
    ld e, b
    inc a
    nop
    dec c
    nop
    ld e, $00
    jr nz, jr_01F_7507

jr_01F_7507:
    ld bc, $0E00
    nop
    jr c, jr_01F_750D

jr_01F_750D:
    nop
    nop
    nop
    nop
    cp [hl]
    nop
    ld [$0000], sp
    nop
    ld hl, sp+$00
    nop
    nop
    inc b
    nop
    ret nz

    nop
    inc e
    cpl
    db $10
    jr nz, jr_01F_7543

    daa
    rra
    cpl
    rra
    ld b, a
    ccf
    ld h, b
    rra
    ccf
    nop
    rlca
    nop
    cp d
    ld a, h
    ld a, d
    db $FC
    ld a, [c]
    db $FC
    and $F8
    adc h
    ldh a, [$38]
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    ld b, l
    add $45

jr_01F_7543:
    add $45
    add $45
    add $45
    add $45
    add $45
    add $45
    add $80
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_01F_7559:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    ld c, $F0
    cp h
    ld a, a
    cp b
    ld a, a
    or d
    ld a, [hl]
    and h
    ld a, h
    or [hl]
    ld a, [hl]
    sbc e
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    pop de
    pop af
    ld c, $3F
    db $10
    rra
    add hl, de
    rra
    inc [hl]
    ccf
    rst $28
    rst $38
    nop
    rst $38
    rst $38
    nop
    rlca
    db $FC
    ld [hl], c
    cp $C9
    adc $85
    add [hl]
    push bc
    add $39
    cp $03
    db $FC
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    inc hl
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    add b
    ld a, a
    ccf
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
    db $FC
    nop
    inc bc
    db $FC
    and $E1
    ld sp, hl
    ld hl, sp-$04
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
    ldh a, [rP1]
    ld c, h
    ldh a, [$84]
    ld a, b
    ei
    db $FC
    ld l, b
    ldh a, [$C0]
    nop
    nop
    nop
    ld a, [hl]
    rlca
    nop
    nop
    inc b
    ld bc, $1144
    ld b, $FE
    inc bc
    rlca
    ld bc, $0001
    nop
    add b
    db $FC
    nop
    nop
    ld d, $10
    ld d, $10
    rrca
    nop
    jr nc, jr_01F_7613

    ld e, a
    ccf
    rlca
    ld a, a
    jr nc, jr_01F_7689

    ld sp, $4C7F
    ccf
    ld [hl], b
    rrca
    ldh a, [rP1]
    inc c

jr_01F_7613:
    ldh a, [$FA]
    db $FC
    db $FC
    cp $FC
    cp $1C
    cp $E2
    db $FC
    ld c, $F0
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld bc, $7FFF
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    and b
    ld e, a
    sbc a
    ld h, b
    and b
    ld a, a
    ld e, a
    ccf
    dec c
    ld a, [bc]
    ei
    inc b
    dec b
    ld a, [$F619]
    db $ED
    and $1B
    inc e
    rst $30
    ld hl, sp+$0F
    ldh a, [$0B]
    inc c
    rst $38
    nop
    dec b
    ld a, [$F6E9]
    dec e
    ld d, $2B
    inc a
    rst $00
    ld hl, sp-$01
    nop
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add a
    ld a, a
    sbc h
    ld a, a
    or b
    ld a, a
    ret nz

    ld a, a
    add e
    ld a, a
    or h
    ld a, b
    ld e, d
    inc a
    ld a, $9C
    xor l
    sbc [hl]
    sub a
    ld c, [hl]
    ld e, e
    ld h, $26
    ld de, $8813
    jr nc, jr_01F_7682

jr_01F_7682:
    inc hl
    db $10
    ld [hl-], a
    add hl, sp
    ld d, l
    inc sp
    ld l, e

jr_01F_7689:
    rlca
    ld bc, $0003
    ld bc, $0000
    ld e, b

jr_01F_7691:
    inc a
    ld e, l
    ld a, $6D
    ld e, $2D
    ld e, $2D
    ld e, $2D
    ld e, $3D
    ld c, $15
    ld c, $50
    inc d
    ld d, b
    inc d
    nop
    nop
    rlca
    rst $38
    nop
    nop
    xor h
    inc c
    inc l
    inc c
    inc l
    inc c
    ld d, $10
    ld d, $10
    nop
    nop
    cp $FF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    adc l
    jr z, @-$78

    dec b
    inc bc
    ld [bc], a
    pop af
    ld bc, $2100
    jr z, jr_01F_76EE

    jr z, jr_01F_76F0

    jr z, jr_01F_7691

    nop
    ld h, b
    add b
    sub b
    ldh [$C8], a
    ldh a, [$64]
    ld hl, sp+$74
    ld hl, sp+$74
    ld hl, sp+$7C
    ld hl, sp+$15
    ld c, $15
    ld c, $15
    ld c, $05
    ld c, $25
    ld c, $45
    ld l, $8D
    ld e, [hl]

jr_01F_76EE:
    adc l
    ld e, [hl]

jr_01F_76F0:
    inc c
    inc c
    nop
    nop
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    jr nz, jr_01F_76FC

jr_01F_76FC:
    jr nz, jr_01F_76FE

jr_01F_76FE:
    jr nz, jr_01F_7700

jr_01F_7700:
    adc a
    ld c, a
    ret nz

    jr nc, @-$0E

    rrca
    rst $28
    db $10
    db $F4
    ld a, [de]
    add sp, $18

jr_01F_770C:
    rst $30
    rrca
    rst $38
    nop
    pop af
    ld a, [c]
    inc bc
    inc c
    rrca
    ldh a, [$F7]
    ld [$582F], sp
    rla
    jr jr_01F_770C

    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    rst $38
    cp $FF
    db $FC
    rst $38
    ldh [rIE], a
    sbc c
    rst $38
    ldh [rIE], a
    ret nc

    jr nc, @+$01

    nop
    and b
    ld e, a
    sub c
    ld l, c
    cp c
    ld l, c
    jp nc, $E03B

    rra
    rst $38
    nop
    cp $FF
    cp $FF
    db $FD
    cp $FB
    db $FC
    dec b
    ld a, [$06F9]
    dec b
    cp $FA
    db $FC
    dec e
    cp $71
    cp $E1
    cp $01
    cp $1D
    cp $39
    cp $F9
    cp $D1
    cp $FF
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld bc, $00FF
    nop
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    dec bc
    ld [$080B], sp
    dec bc
    ld [$080B], sp
    ld hl, $0128
    nop
    rst $08
    ldh a, [rSB]
    nop
    ld b, c
    ld b, b
    ld b, l
    ld d, b
    ld b, l
    ld d, b
    ld b, c
    ld d, b
    ld a, d
    db $FC
    ld a, d
    db $FC
    ld a, d
    db $FC
    ld [hl], l
    ld hl, sp+$75
    ld hl, sp+$69
    ld a, [c]
    ld l, c
    ld a, [c]
    ld h, c
    ld a, [c]
    ld a, c
    jp hl


    inc c
    sub h
    ld d, [hl]
    ret c

    ld bc, $A2C6
    ld d, e
    call c, $FC24
    inc bc
    rst $38
    nop
    ld a, a
    add b
    cp b
    rst $00
    ld c, l
    ld [hl], e
    cp e
    inc a
    ld h, a
    add a
    nop
    nop
    ld c, $FE
    db $FC
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    xor $1F
    call c, $3FE3
    ccf
    inc bc
    ld [bc], a
    nop
    rst $38
    cp $01
    db $FC
    inc bc
    pop af
    rst $08
    ld c, $FE
    ld sp, hl
    ld sp, hl
    rlca
    inc b
    db $E4
    ld a, e
    rlca
    ld hl, sp+$00
    nop
    rst $38
    nop
    nop
    rst $38
    ld b, h
    rst $00
    inc b
    add a
    ld c, c
    rst $08
    jr nc, @+$01

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
    nop
    rst $38
    rst $38
    nop
    nop
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
    cp $01
    db $FD
    inc bc
    db $FD
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $00
    ld hl, sp-$48
    cp a
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_7824:
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $7CCE
    add e
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
    pop af
    nop
    ldh [rP1], a
    rra
    ldh [$C0], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $FD
    inc bc
    db $FD
    inc bc
    ld b, b
    ccf
    ld b, a
    jr c, jr_01F_7824

    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp $00
    db $FC
    nop
    db $E4
    nop
    cp b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    ld [c], a
    nop
    call $8200
    nop
    add b
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
    ccf
    nop
    dec e
    nop
    jr nz, jr_01F_78B6

jr_01F_78B6:
    ld [$0000], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    pop bc
    ccf
    cp [hl]
    ld a, [hl]
    db $FD
    inc bc
    ld a, [$F406]
    inc c
    jp hl


    add hl, de
    db $D3
    inc sp
    daa
    rst $20
    adc a
    adc a
    ccf
    ccf
    ld a, a
    add b
    rst $38
    nop
    ei
    nop
    cp $00
    db $FD
    nop
    ld hl, sp+$00
    rla
    nop
    ldh a, [rP1]
    ret nz

    nop
    and b
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
    ld b, b
    ccf
    ld a, b
    ld b, a
    rra
    db $10
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld a, [hl]
    ld a, [hl]
    ld a, $3E
    ld a, $3E
    cp $00
    ccf
    ret nz

    adc a
    ld [hl], b
    rst $20
    jr jr_01F_798C

    ld l, h
    dec de
    inc d
    inc de
    inc e
    scf
    jr z, @+$4A

    nop
    xor b
    nop
    ret nc

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $00
    ldh a, [rP1]
    inc a
    inc a
    ld sp, $0F31
    inc c
    inc a
    inc sp
    ld h, c
    ld e, [hl]
    ld a, b
    ld b, a
    ld a, a
    ld [hl], b
    rra
    inc e
    ld h, a
    ld e, b
    rst $08
    or b
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    and b
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    stop
    jr nz, jr_01F_795E

jr_01F_795E:
    ldh [rP1], a
    ld h, a
    ld h, [hl]
    ld [hl], c
    ld [hl], c
    ld a, h
    ld a, h
    ld a, $3E
    jr c, jr_01F_79A2

    ld sp, $0731
    ld b, $3C
    inc sp
    rst $28
    db $10
    rst $20
    jr @-$07

    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $20
    sbc b
    adc a
    ld [hl], b
    ccf
    ret nz

    ret nc

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nc

    nop
    ldh [rP1], a

jr_01F_798C:
    add b
    nop
    ret nz

    nop
    ld [hl], c
    ld c, [hl]
    ld h, a
    jr jr_01F_79E4

    jr nc, jr_01F_79BE

    jr jr_01F_79B0

    ld [$1827], sp
    ld c, a
    jr nc, jr_01F_79E0

    ld a, $FE
    nop

jr_01F_79A2:
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
    nop

jr_01F_79B0:
    add b
    nop
    nop
    nop
    nop
    nop
    jp z, $FC00

    nop
    ld a, [$EC00]
    nop

jr_01F_79BE:
    or $00
    ld a, h
    ld b, e
    ccf
    inc a
    add a
    add a

jr_01F_79C6:
    ldh a, [$F0]
    rst $38
    rst $38
    db $FC
    db $FC
    cp $FE
    ld hl, sp-$08
    rrca
    ldh a, [$E3]
    inc e
    db $FC
    db $E3
    ld e, $1D
    add e
    add d
    jp $21C2


    ld hl, $1010

jr_01F_79E0:
    rst $30
    nop
    rst $38
    nop

jr_01F_79E4:
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, @-$0F

    sub b
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    and b
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    pop bc
    ld bc, $00F0
    sbc e
    ld h, e
    pop af
    ld bc, $00F8
    sbc h
    ld h, b
    adc $30
    rst $30
    ld [$0000], sp

jr_01F_7A12:
    nop
    nop
    add c
    add c
    ld bc, $0101
    nop
    ld bc, $8100
    add b
    add c
    add c
    rst $28
    sub b
    rst $28
    sub b
    rst $08
    jr nc, jr_01F_79C6

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_01F_7A12

    inc e
    jp c, $FD00

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
    ld [bc], a
    nop
    ld bc, $8400
    nop
    xor e
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    stop
    adc a
    nop
    rst $38
    nop
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $EC
    nop
    ret nz

    nop
    sbc c
    ld h, c
    db $EC
    db $10
    db $F4
    ld [$008E], sp
    pop hl
    nop
    ret nz

    ret nz

    jp nz, $83C2

    add e
    inc bc
    inc bc

jr_01F_7A78:
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    add e
    jp $F8C3


    rst $00
    rra
    inc e
    inc bc
    inc bc
    add b
    add b
    db $FC
    db $FC
    rst $38
    rst $38
    db $FC
    db $FC
    cp $FE
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    sub b
    ld [hl], a
    ld c, b
    dec sp
    inc h
    add hl, de
    ld d, $8C
    adc e
    ld b, $05
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    inc bc
    pop af
    ld c, $CF
    ld sp, $669E
    jr c, jr_01F_7A78

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ccf
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld sp, hl
    ld bc, $708C
    db $E4

jr_01F_7AC7:
    jr jr_01F_7AC7

    nop
    db $F4
    nop
    ldh [rP1], a

jr_01F_7ACE:
    nop
    nop
    ld a, l
    ld a, h
    rst $38
    db $FC
    rst $38
    db $FC
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ccf
    inc a
    ccf
    inc a
    ld a, a
    ld a, h
    db $FC
    nop
    ld b, d
    nop
    db $FC
    nop
    add [hl]
    ld a, b
    di
    inc c
    rst $28
    nop
    jr jr_01F_7ACE

jr_01F_7AEE:
    db $E4
    jr jr_01F_7AEE

    db $FD
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    sbc a
    rra
    rst $18
    rra
    rrca
    rrca
    adc $CE
    add hl, sp
    add hl, sp
    pop hl
    pop hl
    jp nz, $81C2

    add b
    sbc [hl]
    add b
    cp h
    add b
    add sp, $10
    add b
    add b
    nop
    nop
    inc e
    inc e
    ld hl, sp-$08
    ldh [$E0], a
    ret nz

    ret nz

    ldh [$E0], a
    ret nz

    ret nz

    inc bc
    nop
    ld l, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $FC
    ld bc, $00FE
    rst $38
    nop
    rst $38
    cp $FD
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    db $FD
    db $FC
    cp $FD
    db $FD
    db $FC
    db $FD
    db $FC
    ld a, [$1204]

jr_01F_7B43:
    ldh [$8D], a
    ld [hl], b
    db $E4
    jr jr_01F_7B43

    inc b
    rst $38
    nop
    ld e, $E0
    add [hl]
    ld a, b
    rrca
    rrca
    rst $00
    rst $00
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    rra
    rra
    rra
    rra
    sbc a
    rra
    ld e, a
    rra
    sub b
    ld h, b
    and d
    ld b, b
    db $FC
    nop
    ret z

    jr nc, @-$4E

    ld b, b
    ldh [rP1], a
    jp nz, $AC00

    nop
    sub b
    sub b
    ld h, b
    ld h, b
    ret nz

    ret nz

    cp b
    cp b
    ldh [$E0], a
    ret nz

    ret nz

    sbc b
    sbc b
    ldh a, [$F0]
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
    rst $38
    inc a
    ret nz

    inc e
    ldh [rNR32], a
    ldh [$0C], a
    ldh a, [$0C]
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp-$1D
    inc e
    db $FC
    ld [bc], a
    rst $20
    nop
    or c
    ld b, b
    ld c, b
    jr nc, @+$26

    jr @+$18

    nop
    inc bc
    inc bc
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    sbc a
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    db $F4
    ld [$30C8], sp
    sbc b
    ld h, b
    or b
    ld b, b
    ldh [rP1], a
    add sp, $00
    ret nc

    nop
    or $00
    ldh [$E0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ldh [$E0], a
    ldh a, [$F0]
    ldh [$E0], a
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    nop
    ld bc, $0700
    ldh [rSB], a
    db $FC
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
    rst $38
    nop
    ccf
    add b
    rra
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [$CC]
    jr nc, @-$46

    ld b, b
    ldh a, [rP1]
    ret nz

    nop
    and $00
    db $FC
    nop
    ld [hl], b
    nop
    and b
    nop
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ld b, b
    ld hl, sp-$08
    ldh [$E0], a
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $FC
    ld bc, $01FE
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    db $10
    rrca
    jr nz, jr_01F_7C8B

    ret nz

    ccf
    nop
    rst $38
    ld a, a
    nop
    ldh [$1F], a
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01F_7C8B:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $FC
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
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    jr nz, jr_01F_7CCA

jr_01F_7CCA:
    ld bc, $0D00
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01F_7CD6

jr_01F_7CD6:
    inc bc
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
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
    ld hl, sp+$07
    pop hl
    ld e, $C2
    inc a
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
    nop
    nop
    ret nz

    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $E100
    nop
    ccf
    nop
    inc c
    nop
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [$0600], sp
    nop
    rst $38
    nop
    ld h, c
    nop
    jp nc, RST_00

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
    jr jr_01F_7D4E

jr_01F_7D4E:
    inc c
    nop
    inc bc
    nop
    nop
    nop

jr_01F_7D54:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0000
    nop
    jr nc, jr_01F_7D62

jr_01F_7D62:
    rst $08
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld e, e
    nop
    adc h
    nop
    ld b, [hl]
    nop
    ld b, b
    nop
    ldh [rP1], a
    rra
    nop
    ld b, $00
    ld a, b
    nop
    ldh a, [rP1]
    nop
    nop
    ccf
    nop
    add $00
    dec a
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ld c, $00
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    inc sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    ccf
    ld b, a
    jr c, jr_01F_7D54

    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp $00
    db $FD
    nop
    db $F4
    nop
    ld hl, sp+$00
    db $FC
    nop
    ld a, [$FA00]
    nop
    rst $28
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nc, jr_01F_7DD8

jr_01F_7DD8:
    inc c
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, a
    add b
    rst $38
    nop
    ei
    nop
    cp $00
    db $FD
    nop
    ld hl, sp+$00
    rla
    nop
    ldh a, [rP1]
    cp $00
    ld [c], a
    nop
    ld sp, $DA00
    nop
    ld b, $00
    add d
    nop
    ld [bc], a
    nop
    di
    nop
    jr c, jr_01F_7E02

jr_01F_7E02:
    nop
    nop
    add b
    nop
    jr nz, jr_01F_7E08

jr_01F_7E08:
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop

jr_01F_7E1A:
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    add a
    ld a, b
    jr jr_01F_7E1A

    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38

jr_01F_7E46:
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    xor $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld h, b
    nop
    ret c

    nop
    and b
    nop
    add b
    nop
    nop
    nop
    ldh a, [rP1]
    and b
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
    cp $00
    db $FC
    nop
    db $E4
    nop
    cp b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    ld [c], a
    nop
    ret nz

    nop

jr_01F_7E92:
    and b
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
    rst $28
    sub b
    rst $28
    sub b
    rst $08
    jr nc, jr_01F_7E46

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_01F_7E92

    inc e
    ld e, $00
    call nz, $BF00
    nop
    ldh [rP1], a
    db $FC
    nop
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    nop
    stop
    jr nz, jr_01F_7EC6

jr_01F_7EC6:
    ret nz

    nop
    jr nz, jr_01F_7ECA

jr_01F_7ECA:
    ret nz

    nop
    nop
    nop

jr_01F_7ECE:
    nop
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, jr_01F_7ECE

    sub b
    add e
    nop
    and $00
    ld a, b
    nop
    ld a, [c]
    nop
    sbc l
    nop
    db $FC
    nop
    rst $38
    nop
    db $FD
    nop
    cp [hl]
    nop
    cpl
    nop
    ld [de], a
    nop
    ld a, [de]
    nop
    inc d
    nop
    ldh [rP1], a
    stop
    pop af
    nop
    jr c, jr_01F_7F02

jr_01F_7F02:
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    jr nc, jr_01F_7F0C

jr_01F_7F0C:
    ld b, b
    nop
    add b
    nop
    inc bc
    nop
    inc b
    nop
    rst $38
    nop
    db $FC
    nop
    ld hl, sp+$00
    db $FC
    nop
    cp $00
    rst $38
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld hl, sp+$00
    ld h, b
    nop
    ld e, $00
    rrca
    nop
    nop
    nop
    ld a, h
    nop
    inc c
    nop
    di
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    jp c, $3100

    nop
    ld h, d
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
    jr nz, jr_01F_7F4C

jr_01F_7F4C:
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0FFF
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01F_7F87:
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
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
    ret nz

    ret nz

    ret nz

    ret nz

    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    nop
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

    ret nz

    add b
    add b
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    db $FC
    db $FC
    cp $FE
    db $FC
    db $FC
    ldh a, [$F0]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
