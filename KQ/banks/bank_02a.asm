; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

Jump_02A_4000:
    jr nz, jr_02A_4022

    ld bc, $1615
    nop
    inc b
    add l
    dec e
    inc b
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    add d
    ld e, [hl]
    ld [bc], a
    ld c, [hl]
    ld e, a
    add l
    dec e
    rlca
    ld c, l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld e, a
    add d
    ld e, [hl]
    add [hl]
    dec e
    inc bc

jr_02A_4022:
    dec d
    ld a, [hl]
    ld d, $87
    ld l, [hl]
    rlca
    rra
    ld l, [hl]
    ld l, [hl]
    dec d
    ld a, [hl]
    ld d, $6D
    add h
    ld l, [hl]
    ld bc, $851D
    ld l, [hl]

Jump_02A_4035:
    inc bc
    dec d
    ld a, [hl]
    ld d, $82
    dec e
    inc b
    adc l
    rst $38
    adc a
    ld a, [hl-]
    add [hl]
    ld a, e
    rlca
    xor h
    ld a, e
    add hl, de
    adc l
    rst $38
    adc a
    ld a, [hl+]
    add h
    ld a, e
    ld bc, $84AC
    ld a, e
    inc b
    add hl, hl
    adc l
    rst $38
    adc a
    add d
    dec e
    rlca
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    ld a, e
    ld a, h
    ld a, e
    add d
    ld c, h
    add hl, bc
    ld a, e
    cp h
    ld a, e
    add hl, de
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    inc e
    add e
    ld a, e
    ld bc, $83BC
    ld a, e
    dec b
    ld a, h
    add hl, sp
    adc l
    adc [hl]
    adc a
    add d
    dec e
    inc b
    xor l
    xor [hl]
    xor a
    inc e
    add [hl]
    ld a, e
    ld b, $CC
    ld a, e
    ld a, e
    xor l
    xor [hl]
    xor a
    add l
    ld a, e
    inc b
    call z, $1C7B
    ld c, h
    add d
    ld a, e
    rlca
    sbc l
    sbc [hl]
    sbc a
    dec e
    ld e, a
    ld a, [hl+]
    ld a, e
    add d
    ld a, h
    add l
    ld a, e
    inc b
    add hl, sp
    rra
    ld a, [hl+]
    ld c, h
    add e
    ld a, e
    add d
    ld c, c
    add d
    ld c, h
    inc bc
    add hl, hl
    dec e
    dec hl
    add e
    ld c, d
    rlca
    ld a, e
    xor l
    xor [hl]
    xor a
    dec e
    ld c, [hl]
    ld a, [hl+]
    add a
    ld a, e
    add hl, de
    ld c, h
    add hl, sp
    ld c, [hl]
    dec hl
    ld a, e
    inc e
    ld a, e
    add hl, hl
    dec a
    ccf
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld e, l
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    jr z, jr_02A_4117

    ld a, e
    add hl, hl
    ld c, [hl]
    dec e
    dec hl
    add l
    ld c, d
    add e
    ld a, e
    add hl, bc
    add hl, sp
    ld c, [hl]
    ccf
    ld a, [hl+]
    ld c, h
    ld a, h
    add hl, hl
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    ld bc, $836D
    ld l, [hl]
    ld b, $34
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    add hl, hl
    ld e, a
    add d
    dec e
    add d
    ld e, [hl]
    rlca
    ld c, [hl]
    ld e, [hl]
    daa
    jr z, jr_02A_4141

    ld a, e
    add hl, sp
    add d
    ld c, [hl]
    ld b, $2B
    ld a, e
    ld a, e
    add hl, hl
    ld c, a
    ld a, [hl+]
    add a
    ld a, e
    ld [$6E6D], sp
    ld a, [hl-]
    ld a, h

Call_02A_4108:
    add hl, hl
    ld c, [hl]
    dec e
    dec d
    add d
    ld a, [hl]
    ld de, $5D16
    scf
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, sp
    ld e, l

jr_02A_4117:
    ld e, [hl]
    ccf
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld e, [hl]
    ld a, [hl+]
    ld a, e
    ld a, h
    add e
    ld a, e
    ld b, $1C
    ld a, e
    ld a, e
    ld c, d
    ld a, e
    ld a, e
    ld [$5F29], sp
    dec e
    adc l
    add a
    adc b
    adc c
    ld d, $82
    ld c, [hl]
    inc c
    ld a, [hl+]
    inc e
    ld a, e
    ld l, l
    ld l, [hl]
    ld e, [hl]
    db $DD
    sbc $DF
    dec e
    ld a, [hl+]
    ld a, e

jr_02A_4141:
    add [hl]
    ld c, d
    inc c
    dec de
    ccf
    ld a, [hl+]
    inc e
    add hl, hl
    ld c, [hl]
    dec e
    adc l
    sub a
    sbc b
    sbc c
    adc a
    add d
    ld c, [hl]
    ld bc, $832A
    ld a, e
    ld [bc], a
    add hl, hl
    dec e
    add e
    ld a, d
    ld b, $5A
    ld a, e
    add hl, hl
    dec a
    ld c, [hl]
    ld e, [hl]
    add d
    ld c, [hl]
    ld de, $4E5F
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld c, [hl]
    dec e
    adc l
    adc [hl]
    cp c
    adc [hl]
    sbc e
    ld d, $4E
    dec hl
    ld c, d
    add d
    ld a, e
    add hl, bc
    add hl, hl
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld c, d
    dec de
    ld c, [hl]
    add e
    ld l, [hl]
    add e
    ld c, [hl]
    inc b
    dec e
    ld a, [hl+]
    ld a, e
    add hl, hl
    add d
    dec e
    dec bc
    adc l
    adc [hl]
    ret z

    adc [hl]
    adc e
    sbc a
    ld c, [hl]
    ld e, [hl]
    ccf
    dec hl
    ld c, d
    add d
    ld a, e
    rlca
    adc l
    sbc d
    adc a
    add hl, hl
    ld c, [hl]
    ld e, [hl]
    ld e, a
    add e
    ld a, e
    rlca
    add hl, sp
    ld c, [hl]
    ld a, [hl-]
    ld e, d
    ld a, l
    ld a, [hl]
    ld a, a
    add d
    dec e
    ld e, $8D
    db $FD
    adc e
    sbc [hl]
    sbc a
    xor a
    dec l
    ld b, $5D
    ld c, a
    ccf
    dec hl
    ld c, d
    sbc l
    sbc [hl]
    sbc a
    ld a, e
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, e
    ld c, c
    inc e
    add hl, sp
    ld e, [hl]
    ld a, [hl-]
    add hl, hl
    adc l
    rst $38
    adc a
    add d
    dec e
    ld de, $9E9D
    sbc a
    xor [hl]
    xor a
    ld a, e
    ld l, l
    dec l
    ld c, $06
    ld e, l
    ld c, [hl]
    dec e
    xor l
    xor [hl]
    xor a
    ld c, d
    add e
    ld a, e
    ld a, [bc]
    add hl, hl
    ld a, $2A
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add hl, sp
    sbc l
    sbc [hl]
    sbc a
    add d
    dec e
    inc bc
    xor l
    xor [hl]
    xor a
    add h
    ld c, d
    dec bc
    ld l, l
    ld l, [hl]
    dec l
    ld c, $06
    dec e
    ld a, [hl+]
    ld a, e
    add hl, hl
    dec e
    dec hl
    add d
    ld c, d
    ld a, [bc]
    dec de
    ld e, [hl]
    ld a, [hl+]
    ld a, e
    ld e, d
    ld a, e
    ld c, d
    xor l
    xor [hl]
    xor a
    adc c
    dec e
    inc c
    dec hl
    ld a, e
    ld l, l
    ld l, [hl]
    rra
    ld e, a
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld e, l
    ld a, $5D
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    dec hl
    add d
    ld c, d
    ld b, $1B
    dec e
    ld a, [hl-]
    ld a, e
    add hl, sp
    ld c, [hl]
    add e
    dec e
    add e
    ld c, [hl]
    ld b, $3F
    dec e
    dec e
    dec hl
    ld a, e
    ld a, e
    inc bc
    ld l, l
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld c, [hl]
    add d
    ld l, [hl]
    add e
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld c, a
    add d
    ld c, [hl]
    inc b
    db $DD
    sbc $DF
    ld e, a
    add d
    dec e
    ld [bc], a
    daa
    ld e, a
    add d
    ld l, [hl]
    ld [bc], a
    ld e, l
    ccf
    add d
    dec e
    inc c
    cp l
    cp [hl]
    cp a
    ld e, [hl]
    ld a, [hl+]
    inc e
    ld a, e
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld l, l
    add l
    ld l, [hl]
    ld [bc], a
    ld e, a
    ld a, [hl-]
    add d
    ld a, d
    dec b
    ld e, [hl]
    ccf
    ld c, [hl]
    ld e, a
    ld l, a
    add d
    ld a, e
    add hl, bc
    ld l, l
    ld e, l
    ld c, [hl]
    ld e, a
    call $CFCE
    dec e
    ld a, [hl+]
    add d
    ld a, e
    dec b
    dec de
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld l, h
    add h
    ld a, e
    dec b
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    ld l, h
    add hl, sp
    add d
    ld c, [hl]
    ld [bc], a
    ld l, [hl]
    ld l, a
    add h
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    add e
    ld a, d
    inc c
    ld a, c
    ld a, e
    ld a, e
    add hl, hl
    ld e, l
    ld c, [hl]
    dec hl
    ld a, e
    ld a, h
    ld c, h
    ld a, e
    ld l, h
    add d
    ld a, e
    rlca
    ld e, d
    ld c, h
    ld a, e
    add hl, sp
    ld e, [hl]
    ld a, $2A
    add a
    ld a, e
    ld bc, $874C
    ld a, e
    ld [$5D6D], sp
    ld e, a
    ld a, [hl-]
    ld c, h
    ld a, e
    ld a, h
    ld a, e
    add e
    ld c, c
    add d
    ld a, e
    rlca
    add hl, sp
    ld e, a
    ld e, a
    ld a, [hl+]
    inc e
    ld a, e
    ld a, h
    add d
    ld c, d
    add d
    ld a, e
    add d
    ld c, d
    add d
    ld a, e
    ld [bc], a
    inc e
    ld a, h
    add e
    ld a, e
    ld [bc], a
    ld l, l
    ld l, a
    add e
    ld a, e
    dec d
    ld c, d
    dec de
    ld c, [hl]
    ld c, a
    ccf
    cp l
    cp [hl]
    cp a
    ld c, a
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    dec sp
    rlca
    ld [$2B3F], sp
    dec de
    ld c, [hl]
    ccf
    dec hl
    adc b
    ld a, e
    ld e, $6C
    ld a, e
    add hl, hl
    rla
    jr jr_02A_434F

    ld b, e
    ld b, h
    call $CFCE
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    ld a, e
    add hl, hl
    rla
    jr @+$50

    daa
    ld c, a
    ld c, [hl]
    ld c, a
    ccf
    dec hl
    ld a, e
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    add d
    ld l, c
    add d
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    add e
    dec e
    add e
    ld a, d
    ld b, $4F
    dec e
    dec hl
    ld a, e
    add hl, hl
    dec e
    add d
    ld c, [hl]
    inc bc
    scf
    jr c, jr_02A_4391

    add e
    ld c, [hl]
    ld [de], a
    rrca
    adc l
    rst $38
    adc a
    add hl, hl
    ld c, [hl]
    ccf
    ld a, [hl-]
    ld a, e
    add hl, hl
    ld e, l
    ld c, [hl]
    ld c, a
    dec e
    cpl
    ld a, [hl-]
    ld l, h
    add hl, hl
    add d
    dec e
    inc b
    dec d
    ld a, [hl]
    ld a, a
    ld l, l
    adc b

jr_02A_434F:
    ld l, [hl]
    ld [$9D1D], sp
    sbc [hl]
    sbc a
    add hl, hl
    ld l, [hl]
    ld l, a
    ld c, h
    add d
    ld a, e
    ld bc, $836D
    ld l, [hl]
    inc b
    ld l, a
    ld a, l
    ld a, [hl]
    ld d, $82
    dec e
    inc b
    adc l
    rst $38
    adc a
    ld a, [hl+]
    add h
    ld a, e
    ld bc, $831C
    ld a, e
    inc b
    xor h
    xor l
    xor [hl]
    xor a
    adc d
    ld a, e
    inc b
    add hl, hl
    adc l
    rst $38
    xor c
    add d
    dec e
    dec b
    adc l
    adc [hl]
    adc a
    ld a, [hl+]
    ld c, h
    add h
    ld a, e
    inc b
    inc e
    ld a, e
    ld a, e
    cp h
    add h
    ld a, e
    inc bc
    ld c, h
    ld a, e

jr_02A_4391:
    inc e
    add h
    ld a, e
    ld b, $6C
    ld a, e
    add hl, hl
    adc l
    adc [hl]
    ret z

    add d
    dec e
    dec b
    sbc l
    sbc [hl]
    sbc a
    ld l, c
    ld l, d
    add [hl]
    ld l, c
    ld [bc], a
    ld l, d
    call z, $4982
    ld [bc], a
    ld c, d
    ld c, c
    add d
    ld c, d
    add d
    ld c, c
    add d
    ld c, d
    add e
    ld c, c
    inc b
    dec de
    inc bc
    ld [bc], a
    inc b
    add [hl]
    dec e
    inc c
    ld e, a
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld e, a
    dec l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    add d
    ld c, l
    add hl, bc
    ld e, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    ccf
    dec e
    add e
    ld c, $01
    ld b, $00
    ld a, [bc]
    ld e, d
    nop
    rst $38
    cp [hl]
    ret nc

    rlca
    ld bc, $882F
    rst $38
    ld [bc], a
    cpl
    ccf
    adc b
    rst $38
    ld [bc], a
    ccf
    ld c, a
    adc b
    rst $38
    ld [bc], a
    ld c, a
    cpl
    adc b
    rst $38
    ld [bc], a
    cpl
    ccf
    adc b
    rst $38
    ld [bc], a
    ccf
    ld c, a
    adc b
    rst $38
    ld [bc], a
    ld c, a
    cpl
    adc b

Jump_02A_4402:
    rst $38
    inc b
    cpl
    ccf
    cp $D0
    add h
    rst $38
    inc b
    push de
    cp $3F
    ld c, a
    add a
    rst $38
    inc bc
    cp $4F
    cpl
    adc b
    rst $38
    add d
    cpl
    ld [$00FE], sp
    ld bc, $0302
    inc b
    dec b
    ld e, a
    add d
    ccf
    ld bc, $86FE
    rst $38
    inc bc
    cp $4F
    ld c, a
    add a
    rst $38
    add hl, bc
    cp $2F
    cpl
    rst $38
    push af
    or $F7
    ld hl, sp-$07
    add d
    rst $38
    ld [bc], a
    cpl
    ccf
    add a
    rst $38
    inc bc
    cp $3F
    ld c, a
    add [hl]
    rst $38
    add d
    cp $82
    ld c, a
    ld b, $FE
    rst $38
    and b
    and c
    and d
    and e
    add d
    rst $38
    add d
    cpl
    add d
    rst $38
    inc b
    or b
    or c
    or d
    or e
    add d
    rst $38
    add d
    cpl
    ld bc, $86FE
    rst $38
    inc bc
    cp $3F
    ccf
    add e
    cp $84
    rst $38
    inc bc
    cp $4F
    ld c, a
    add a
    rst $38
    dec bc
    cp $2F
    cpl
    cp $06
    rlca
    ld [$0A09], sp
    dec bc
    cp $82
    cpl
    ld [$16FF], sp
    rla
    jr @+$1B

    ld a, [de]
    dec de
    cp $82
    ccf
    ld [$C0FE], sp
    pop bc
    jp nz, $C4C3

    push bc
    cp $82
    ld c, a
    ld [$D0FE], sp
    pop de
    jp nc, $D4D3

    push de
    cp $82
    cpl
    add a
    rst $38
    inc bc
    cp $3F
    cpl
    adc b
    rst $38
    jr nz, @+$51

    ccf
    rst $38
    inc h
    dec h
    ld h, $27
    jr z, @+$2B

    rst $38
    cpl
    ld c, a
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    cp $3F
    cpl
    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    ld c, a
    cpl
    adc b
    rst $38
    inc bc
    ld c, a
    ccf
    cp $87
    rst $38
    add d
    ld c, a
    ld [$E0FE], sp
    pop hl
    ld [c], a
    db $E3
    db $E4
    cp $FF
    add d
    cpl
    ld b, $FE
    ldh a, [$F1]
    ld a, [c]
    di
    db $F4
    add d
    rst $38
    add d
    ccf
    dec b
    cp $10
    ld de, $1312
    add e
    cp $82
    ld c, a
    adc b
    cp $03
    cpl
    ld c, a
    cp $84
    rst $38
    add e
    cp $07
    ccf
    cpl
    cp $6B

Jump_02A_4502:
    ld l, h
    ld l, l
    ld l, [hl]
    add e
    cp $08
    ld c, a
    ccf
    cp $7B
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add d
    cp $07
    ld c, a
    cpl
    cp $EB
    db $EC
    db $ED
    rst $38
    add e
    cp $02
    cpl
    ccf
    add h
    cp $01
    rst $38
    add e
    cp $02
    ccf
    ld c, a
    add [hl]
    cp $82
    rst $38
    ld [bc], a
    ld c, a
    cpl
    add a
    rst $38
    ld b, $FE
    ld c, a
    ccf
    rst $38
    ld h, [hl]
    ld h, a
    add e
    rst $38
    add d
    cp $82
    cpl
    dec b
    cp $20
    ld hl, $2322
    add d
    rst $38
    ld [$3FFE], sp
    ccf
    rst $38
    jr nc, jr_02A_457E

    ld [hl-], a
    inc sp
    add d
    rst $38
    add hl, bc
    cp $4F
    cpl
    rst $38
    add b
    add c
    add d
    add e
    add h
    add d
    cp $08
    cpl
    ccf
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub h
    add d
    cp $02
    ccf
    cpl
    adc b
    cp $02
    cpl
    ccf
    adc b
    cp $08
    ccf
    ld c, a
    cp $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    add d
    cp $08

jr_02A_457E:
    ld c, a
    cpl
    rst $38
    add b
    add c
    add d
    add e
    add h
    add d
    cp $82
    cpl
    ld b, $FE
    sub b
    sub c
    sub d
    sub e
    sub h
    add d
    rst $38
    add d
    ccf
    ld bc, $85FE
    rst $38
    add d
    cp $82
    cpl
    adc b
    cp $82
    ccf
    adc b
    cp $82
    cpl
    ld [$43FE], sp
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add d
    ccf
    ld [$53FE], sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    add d
    cpl
    dec b
    cp $10
    ld de, $1312
    add e
    cp $82
    ccf
    adc b
    cp $82
    cpl
    inc b
    cp $EB
    db $EC
    db $ED
    add h
    cp $82
    ccf
    adc b
    cp $20
    ld c, a
    cpl
    cp $CA
    set 1, h
    call $CFCE
    cp $2F
    ccf
    cp $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    cp $3F
    cpl
    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    cp $4F
    ccf
    adc b
    cp $82
    cpl
    adc b
    cp $82
    ccf
    dec bc
    cp $86
    add a
    adc b
    adc c
    adc d
    adc e
    cp $4F
    cpl
    cp $86
    rst $38
    ld [$2FFE], sp
    ccf
    cp $BA
    cp e
    cp h
    cp l
    add e
    cp $02
    ccf
    cpl
    adc b
    cp $02
    cpl
    ccf
    adc b
    cp $02
    ccf
    ld c, a
    adc b
    cp $82
    cpl
    ld b, $FE
    sub $D7
    ret c

    reti


    jp c, $FF82

    add d
    ccf
    ld b, $FE
    and $E7
    add sp, -$17
    ld [$FF82], a
    ld b, $2F
    ld c, a
    cp $40
    ld b, c
    ld b, d
    add d
    cp $82
    rst $38
    ld [$2F3F], sp
    cp $50
    ld d, c
    ld d, d
    ld d, e
    rst $38
    add d
    cp $02
    cpl
    ccf
    adc b
    cp $02
    ccf
    cpl
    adc b
    cp $07
    ld c, a
    ccf
    cp $96
    sub a
    sbc b
    sbc c
    add e
    cp $03
    cpl
    ld c, a
    cp $84
    rst $38
    add e
    cp $07
    ccf
    cpl
    cp $EB
    db $EC
    db $ED
    or e
    add e
    cp $20
    ld c, a
    ccf
    cp $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    cp $2F
    ld c, a
    cp $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    cp $3F
    cpl
    cp $CA
    set 1, h
    call $CFCE
    cp $2F
    ccf
    adc b
    cp $82
    cpl
    ld [$C0FE], sp
    pop bc
    jp nz, $C4C3

    push bc
    cp $82
    ccf
    rrca
    cp $D0
    pop de
    jp nc, $D4D3

    push de
    cp $4F
    cpl
    cp $10
    ld de, $1312
    add e
    cp $02
    cpl
    ccf
    adc b
    cp $02
    ccf
    cpl
    add h
    cp $01
    xor c
    add e
    cp $07
    cpl
    ccf
    rst $38
    and [hl]
    and a
    xor b
    xor c
    add d
    rst $38
    inc bc
    cp $3F
    cpl
    adc b
    cp $06
    cpl
    ccf
    cp $B6
    or a
    cp b
    add h
    cp $07
    ccf
    cpl
    cp $C6
    rst $00
    ret z

    ret


    add e
    cp $02
    cpl
    ccf
    adc b
    cp $02
    ccf
    cpl
    adc b
    cp $07
    cpl
    ccf
    cp $2A
    dec hl
    inc l
    dec l
    add e
    cp $07
    ccf

Jump_02A_4700:
    cpl
    cp $3A
    dec sp
    inc a
    dec a
    add e
    cp $07
    cpl
    ccf
    cp $4A
    ld c, e
    ld c, h
    ld c, l
    add e
    cp $07
    ccf
    ld c, a
    cp $5A
    ld e, e
    ld e, h
    ld e, l
    add e
    cp $82
    cpl
    adc b
    cp $82
    ccf
    ld bc, $85FE
    inc e
    add d
    cp $08
    cpl
    ld c, a
    cp $8C
    adc l
    adc [hl]
    adc a
    inc e
    add d
    cp $02
    ccf
    ld c, a
    adc b
    cp $82
    ccf
    ld b, $FE
    ei
    db $FC
    db $FD
    cp $1C
    add d
    cp $82
    ld c, a
    adc b
    cp $82
    ld c, a
    ld bc, $85FE
    inc e
    add d
    cp $82
    ccf
    dec b
    cp $0C
    dec c
    ld c, $0F
    add e
    cp $82
    ld c, a
    dec b
    cp $1C
    dec e
    ld e, $FA
    add e
    cp $82
    ccf
    inc d
    cp $9A
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp $4F
    ccf
    cp $AA
    xor e
    xor h
    xor l
    xor [hl]
    xor a

jr_02A_4777:
    cp $3F
    ld c, a
    adc b
    cp $82
    ld c, a
    adc b
    cp $82
    ccf
    adc b
    cp $02
    ld c, a
    ccf
    adc b
    cp $02
    ccf
    ld c, a
    adc b
    cp $02
    ccf
    ld c, a
    adc b
    cp $02
    ld c, a
    ccf
    adc b
    cp $82
    ccf
    adc b
    cp $02
    ccf
    ld c, a
    adc b
    cp $02
    ld c, a
    ccf
    adc b
    cp $02
    ccf
    ld c, a
    adc b
    cp $01
    ld c, a
    jp $FE02


    nop
    ld e, $0E
    ld bc, $1913
    ld a, [de]
    inc b
    add a
    ld l, e
    inc b
    ld d, $17
    jr z, jr_02A_47CC

    add [hl]
    ld e, $03
    rrca
    halt
    db $DB
    add d
    jr z, jr_02A_47CB

    halt
    dec c
    ret c

jr_02A_47CB:
    add d

jr_02A_47CC:
    ld e, $03
    ret


    ld l, $2E
    add [hl]
    ld l, e
    rlca
    cp b

Call_02A_47D5:
    rla
    jr z, jr_02A_47E5

    ret c

    dec bc
    inc c
    add d
    ld e, $0D
    ret


    ld l, $F8
    rrca
    db $EB
    ld l, h
    dec c

jr_02A_47E5:
    ld c, $D8
    ld e, $C9
    ld l, $2F
    add d
    ld a, $83
    ld l, e
    inc b
    ld [$17B8], sp
    jr jr_02A_4777

jr_02A_47F5:
    jr z, jr_02A_4801

    dec e
    ret


    dec de
    inc e
    dec l
    ld l, $2F
    ld a, $2D
    reti


jr_02A_4801:
    add d
    ld c, $07
    ret c

    ld e, $C9
    ld l, $2F
    ld a, $3F
    add d
    ld c, [hl]
    inc bc
    ld l, e
    ld d, $17
    add d
    jr jr_02A_4822

    jr z, jr_02A_47F5

    ld e, l
    jr z, jr_02A_4836

    rra
    dec hl
    inc l
    dec a
    ld a, $3F
    ld c, [hl]
    dec a
    dec l

jr_02A_4822:
    add h
    ld l, $0B
    cpl
    ld a, $3F
    ld c, [hl]
    dec hl
    jr z, jr_02A_48A3

    ld d, $17
    jr z, jr_02A_483D

    add d
    ld c, $0D
    rrca
    ld l, l
    dec c

jr_02A_4836:
    ret c

    reti


    rrca
    jr z, jr_02A_4867

    ld c, [hl]
    dec hl

jr_02A_483D:
    jp c, $3D4D

    add h
    ld a, $04
    ccf
    ld c, [hl]
    dec hl
    ld [hl], a
    add e
    jr z, jr_02A_484E

    rla
    dec c
    ld c, $D8

jr_02A_484E:
    add d
    ld e, $03
    reti


    ld c, $D8
    add d
    ld e, $02
    rra
    ld d, [hl]
    add e
    jr z, jr_02A_485F

    halt
    jr z, jr_02A_488B

jr_02A_485F:
    add h
    ld c, [hl]
    ld bc, $832B
    jr z, jr_02A_486E

    ld e, l

jr_02A_4867:
    jr z, jr_02A_48D5

    dec c
    ret c

    ret


    dec bc
    inc c

jr_02A_486E:
    add d
    ld l, $01
    ret z

    add e
    ld e, $04
    reti


    rrca
    ld [$8277], a
    jr z, jr_02A_487D

    ld [hl], a

jr_02A_487D:
    add [hl]
    jr z, jr_02A_488B

    dec c
    rrca
    jr z, @+$6F

    dec c
    ld c, $D8
    ret


    cpl
    dec de
    inc e

jr_02A_488B:
    add d
    ld a, $02
    dec l
    ret z

    add e
    ld e, $03
    reti


    ld c, $0F
    add e
    jr z, jr_02A_489A

    dec c

jr_02A_489A:
    add l
    ld c, $02
    ret c

    reti


    add d
    ld c, $07
    ret c

jr_02A_48A3:
    ld e, $1E
    rra
    ccf
    ld c, a
    ld b, $82
    ld c, [hl]
    ld [bc], a
    dec a
    dec e
    add l
    ld e, $02
    reti


    rrca
    add d
    jr z, jr_02A_48B9

    dec a
    dec l
    ret z

jr_02A_48B9:
    adc d
    ld e, $02
    rra
    ld c, a
    add h
    jr z, jr_02A_48C3

    ld c, l
    dec l

jr_02A_48C3:
    add [hl]
    ld e, $06
    reti


    rrca
    ld [hl], a
    inc l
    dec a
    dec l
    add d
    ld l, $03
    dec bc
    inc c
    ret z

    add h
    ld e, $04

jr_02A_48D5:
    dec l
    reti


    rrca
    ld [hl], a
    add e
    jr z, jr_02A_48E1

    rst $08
    dec a
    dec l
    ld l, $C8

jr_02A_48E1:
    add h
    ld e, $05
    rra
    halt
    halt
    inc l
    dec a
    add d
    ld a, $03
    dec de
    inc e
    dec e
    add h
    ld e, $05
    dec a
    dec e
    rra
    jr z, jr_02A_4963

    add e
    jr z, jr_02A_48FE

    ld c, l
    dec a
    ld a, $2D

jr_02A_48FE:
    add d
    ld l, $03
    ret z

    ld e, $1F
    add d
    ld [hl], a
    ld [bc], a
    halt
    inc l
    add d
    ld c, [hl]
    inc de
    dec hl
    inc l
    dec l
    ret z

    ld e, $C9
    ld l, $2C
    dec l
    reti


    rrca
    jr z, jr_02A_4985

jr_02A_4919:
    dec c
    rrca
    jr z, jr_02A_4949

    ld c, [hl]
    dec a
    add d
    ld a, $03
    dec l
    ret z

    rra
    add h
    jr z, jr_02A_4929

    ld [hl], a

jr_02A_4929:
    add e
    jr z, jr_02A_4935

    dec a
    dec e
    ret


    cpl
    ld a, $77
    dec a
    dec l
    reti


jr_02A_4935:
    add d
    ld c, $03
    ret c

    reti


    rrca
    add d
    jr z, jr_02A_4945

    inc l
    ld c, [hl]
    ld c, [hl]
    dec a
    dec e
    reti


    rrca

jr_02A_4945:
    add h
    jr z, jr_02A_4954

    ld l, h

jr_02A_4949:
    jr z, jr_02A_4919

    ld c, l
    dec e
    rra
    ccf
    ld c, [hl]
    jr z, @+$4F

    dec a
    dec e

jr_02A_4954:
    add h
    ld e, $03
    reti


    ld c, $0F
    add e
    jr z, jr_02A_4965

    ld c, l
    dec e
    ld e, $D9
    ld c, $0F

jr_02A_4963:
    jr z, jr_02A_49D1

jr_02A_4965:
    add d
    jr z, jr_02A_496E

    sbc $0D
    ld sp, hl
    cpl
    ld c, a
    ld [hl], a

jr_02A_496E:
    add d
    jr z, jr_02A_4973

    ld c, l
    dec e

jr_02A_4973:
    add [hl]
    ld e, $02
    reti


    rrca
    add d
    jr z, jr_02A_497D

    dec c
    ret c

jr_02A_497D:
    add e
    ld e, $0F
    rra
    jr z, jr_02A_49AB

    ld [hl], a
    dec c

jr_02A_4985:
    ld c, $D8
    cpl
    ccf
    ld [hl], a
    inc b
    ld e, [hl]
    ld e, a
    ld d, a
    dec e
    add a
    ld e, $04
    rra
    ld d, [hl]
    ld d, a
    dec e
    add h
    ld e, $0E
    rra
    jr z, @+$2A

    dec c
    ld sp, hl
    ld l, $2F
    ccf
    ld c, a
    inc b
    add hl, sp
    ld l, [hl]
    ld l, a
    dec c
    adc b
    ld e, $04
    rra

jr_02A_49AB:
    ld h, [hl]
    ld h, a
    dec e
    add h
    ld e, $11
    rra
    jr z, jr_02A_49C1

    ld sp, hl
    cpl
    ld a, $3F
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    dec c
    ld c, $D8
    ld l, $0B

jr_02A_49C1:
    inc c
    add l
    ld e, $04
    rra
    ld d, [hl]
    ld d, a
    dec e
    add h
    ld e, $12
    rra
    jr z, jr_02A_49EC

    rra
    ccf

jr_02A_49D1:
    ld c, [hl]
    dec hl
    halt
    add hl, hl
    ld a, [hl+]
    ld l, e
    ret c

    ret


    cpl
    ld a, $1B
    inc e
    dec l
    add e
    ld l, $05
    ld e, $1F
    ld h, [hl]
    ld h, a
    dec e
    add h
    ld e, $12
    rra
    jr z, jr_02A_4A09

jr_02A_49EC:
    rra
    ld c, a
    jp c, $0428

    add hl, sp
    ld a, [hl-]
    ld l, e
    ld e, $1F
    ccf
    ld c, [hl]
    dec hl
    inc l
    dec a
    add e
    ld a, $07
    dec l
    cpl
    ld d, [hl]
    ld d, a
    dec l
    dec bc
    inc c
    add d
    ld l, $09
    cpl

jr_02A_4A09:
    jr z, jr_02A_4A28

    reti


    rrca
    jr z, jr_02A_4A13

    add hl, sp
    ld a, [hl-]
    add d
    ld l, e

jr_02A_4A13:
    inc bc
    ld e, $1F
    dec hl
    add e
    jr z, jr_02A_4A1B

    inc l

jr_02A_4A1B:
    add e
    ld c, [hl]
    rlca
    dec a
    ccf
    ld h, [hl]
    ld h, a
    dec a
    dec de
    inc e
    add d
    ld a, $08

jr_02A_4A28:
    ccf
    jr z, jr_02A_4A48

    ld e, $1F
    call $2A29
    add e
    ld l, e
    inc b
    ld e, $1F
    ld [hl], a
    call $2882
    ld bc, $8376
    jr z, jr_02A_4A40

    inc l
    dec hl

jr_02A_4A40:
    add d
    jr z, jr_02A_4A46

    inc l
    dec hl
    inc l

jr_02A_4A46:
    add d
    ld c, [hl]

jr_02A_4A48:
    ld [$282B], sp
    dec e
    ld e, $1F
    db $DD
    add hl, hl
    ld a, [hl+]
    add e
    ld l, e
    add d
    ld e, $02
    rrca
    db $DD
    add d
    jr z, jr_02A_4A5F

    ld e, [hl]
    ld e, a
    dec c
    rrca

jr_02A_4A5F:
    add l
    jr z, @+$03

    adc $84
    jr z, jr_02A_4A6D

    dec c
    ret c

    ret


    cpl
    halt
    add hl, hl
    ld a, [hl+]

jr_02A_4A6D:
    add e
    ld l, e
    add d
    ld e, $0A
    rra
    ld d, [hl]
    jr z, jr_02A_4AEC

    ld l, [hl]
    ld l, a
    dec e
    reti


    ld c, $0F
    add e
    jr z, @+$03

    sbc $84
    jr z, jr_02A_4A8A

    dec e
    ld e, $1F
    ccf
    jr z, jr_02A_4AB2

    ld a, [hl+]

jr_02A_4A8A:
    add e
    ld l, e
    add d
    ld l, $07
    cpl
    ld d, [hl]
    jr z, jr_02A_4B09

    jr z, jr_02A_4AA2

    ret c

    add d
    ld e, $01
    reti


    add e
    ld c, $01
    rrca
    add h
    jr z, jr_02A_4AA8

    dec e

jr_02A_4AA2:
    ld e, $1F
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]

jr_02A_4AA8:
    add e
    ld l, e
    add d
    ld a, $02
    ccf
    ld d, [hl]
    add d
    jr z, jr_02A_4AB5

jr_02A_4AB2:
    dec c
    ret c

    ret


jr_02A_4AB5:
    add e
    ld l, $0E
    ret z

    ld e, $1E
    reti


    rrca
    halt
    jr z, jr_02A_4ACD

    ret c

    ret


    cpl
    halt
    add hl, hl
    ld a, [hl+]
    add h
    ld l, e
    add d
    ld c, [hl]
    ld bc, $832B

jr_02A_4ACD:
    jr z, jr_02A_4AD2

    dec e
    ld e, $2F

jr_02A_4AD2:
    add e
    ld a, $01
    dec l
    add e
    ld l, $0A
    ld hl, sp+$0E
    ld c, $D8
    ret


    cpl
    ccf
    jr z, @+$2B

    ld a, [hl+]
    add h
    ld l, e
    add d
    jr z, jr_02A_4AEF

    halt
    jr z, jr_02A_4B13

    dec c

jr_02A_4AEC:
    ld sp, hl
    cpl
    ccf

jr_02A_4AEF:
    add e
    ld c, [hl]
    ld bc, $833D
    ld a, $01
    dec l
    add e
    ld l, $06
    cpl
    ccf
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    add h
    ld l, e
    add l
    ld c, $04
    ld sp, hl
    cpl
    ccf
    ld c, a

jr_02A_4B09:
    add d
    jr c, @+$04

    dec b
    jr z, @-$7B

    ld c, [hl]
    ld bc, $833D

jr_02A_4B13:
    ld a, $05
    ccf
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    add l
    ld l, e
    ld bc, $842D
    ld l, $09
    cpl
    ccf
    ld c, a
    add hl, hl
    ld c, d
    ld c, b
    scf
    jr c, jr_02A_4B2F

    add d
    jr z, jr_02A_4B2E

    inc l

jr_02A_4B2E:
    add e

jr_02A_4B2F:
    ld c, [hl]
    inc b
    dec hl
    inc b
    add hl, sp
    ld a, [hl-]
    add [hl]
    ld l, e
    ld bc, $843D
    ld a, $05
    ccf
    ld c, a
    ld e, h
    add hl, hl
    ld a, [hl+]
    add d
    ld l, e
    ld [bc], a
    ld c, b
    scf
    add d
    jr c, jr_02A_4B4C

    dec b
    jr z, jr_02A_4B50

jr_02A_4B4C:
    add d
    jr c, jr_02A_4B51

    add hl, sp

jr_02A_4B50:
    ld c, c

jr_02A_4B51:
    add a
    ld l, e
    ld bc, $842C
    ld c, [hl]
    inc b
    dec hl
    ld [hl], a
    inc b
    add hl, sp
    add l
    ld l, e
    add d
    ld c, b
    inc bc
    scf
    jr c, jr_02A_4B9D

    add d
    ld c, b
    ld bc, $8849
    ld l, e
    add h
    jr c, jr_02A_4B72

    dec b
    ld e, h
    inc b
    add hl, sp
    ld c, c

jr_02A_4B72:
    add a
    ld l, e
    inc bc
    ld b, a
    ld c, b
    ld c, c
    adc e
    ld l, e
    add h
    ld c, b
    inc b
    scf
    jr c, jr_02A_4BB9

    ld c, c
    sub [hl]
    ld l, e
    nop
    jr z, jr_02A_4BEE

    ld bc, $1E1D
    ld b, b
    ld b, $A9
    db $FD
    ld h, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_02A_4B9D:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $82
    db $FD
    ld bc, $A14D

jr_02A_4BB9:
    ld sp, $FD83
    inc b
    ld c, h
    db $FD
    db $FD
    ld e, l
    and c
    nop
    add e
    db $FD
    inc b
    ld e, h
    db $FD
    db $FD
    ld l, l
    and c
    nop
    add e
    db $FD
    ld [$FD6C], sp
    db $FD
    ld a, l
    nop
    jr nz, jr_02A_4BF7

    ld [hl+], a
    add e
    nop
    inc bc
    ld a, c
    ld a, d
    ld a, e
    adc a
    nop
    inc bc
    halt
    ld [hl], a
    ld a, b
    add l
    nop
    inc b
    jr nc, jr_02A_4C19

    ld [hl-], a
    ld a, h
    add d
    db $FD
    ld [bc], a
    ld l, l

jr_02A_4BEE:
    nop
    add e
    db $FD
    add e
    nop
    inc bc
    adc c
    adc d
    adc e

jr_02A_4BF7:
    adc a
    nop
    inc bc
    add [hl]
    add a
    adc b
    adc b
    nop
    dec b

Jump_02A_4C00:
    ld e, h
    db $FD
    db $FD
    ld c, l
    nop
    add e
    db $FD
    add h
    nop
    ld [bc], a
    sbc d
    sbc e
    add h
    nop
    ld bc, $8720
    ld hl, $2206
    nop
    nop
    sub [hl]
    sub a
    sbc b

jr_02A_4C19:
    adc b
    nop
    dec b
    ld l, h
    db $FD
    db $FD
    ld e, l
    nop
    add e
    db $FD
    add h
    nop
    ld bc, $84AA
    nop
    ld [$394C], sp
    add hl, sp
    inc c
    ld a, [bc]
    xor b
    dec c
    dec bc
    add d
    add hl, sp
    ld [$004D], sp
    and [hl]
    jp z, Jump_02A_7900

    ld a, d
    ld a, e
    add l
    nop
    ld [$FD7C], sp
    db $FD
    ld l, l
    nop
    jr nc, jr_02A_4C78

    ld [hl-], a
    add h
    nop
    ld bc, $84BA
    nop
    dec bc
    ld e, h
    inc c
    dec c
    inc e
    ld a, [de]
    nop
    dec e
    dec de
    inc c
    dec c
    ld e, l
    add h
    nop
    inc bc
    adc c
    adc d
    adc e
    add l
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    ld a, l
    adc b
    nop
    ld bc, $84CA
    nop
    dec bc
    ld l, h
    inc e
    dec e
    jr z, jr_02A_4C9D

    cp c
    dec l
    ld c, a
    inc e
    dec e

jr_02A_4C78:
    ld l, l
    add l
    nop
    ld [bc], a
    sbc d
    sbc e
    add d
    nop
    inc b
    halt
    ld [hl], a
    ld a, b
    ld e, h
    add d
    db $FD
    ld bc, $8D6D
    nop
    ld [bc], a
    ld a, h
    or $87
    db $FD
    ld [bc], a
    or $7D
    add l
    nop
    ld bc, $83AA
    nop
    inc b
    add [hl]
    add a
    adc b

jr_02A_4C9D:
    ld l, h
    add d
    db $FD
    ld bc, $847D
    nop
    inc bc
    halt
    ld [hl], a
    ld a, b
    add [hl]
    nop
    ld [bc], a
    ld a, h
    dec sp
    add a
    ld sp, $3C02
    ld l, l
    add l
    nop
    ld bc, $83BA
    nop
    inc b
    sub [hl]
    sub a
    sbc b
    ld a, h
    add d
    db $FD
    ld bc, $844D
    nop
    inc bc
    add [hl]
    add a
    adc b
    add [hl]
    nop
    inc bc
    ld l, h
    or $FD
    add l
    nop
    inc bc
    db $FD
    or $7D
    add l
    nop
    ld bc, $83CA
    nop
    inc b
    and [hl]
    jp z, Jump_02A_4C00

    add d
    db $FD
    ld [$765D], sp
    ld [hl], a
    ld a, b
    nop
    sub [hl]
    sub a
    sbc b
    add [hl]
    nop
    inc bc
    db $10
    dec a
    ld [hl-], a
    add l
    nop
    inc bc
    jr nc, jr_02A_4D31

    ld l, l
    adc h
    nop
    ld a, [bc]
    ld e, h
    db $FD
    db $FD
    ld l, l
    add [hl]
    add a
    adc b
    nop
    and [hl]
    jp z, $0088

    ld bc, $8712
    nop
    ld [bc], a
    db $10
    ld de, $008C
    rlca
    ld l, h
    db $FD
    db $FD
    ld a, l
    sub [hl]
    sub a
    sbc b
    add a
    nop
    ld [bc], a
    jr nz, jr_02A_4D3C

    adc d
    nop
    add d
    db $FD
    adc h
    nop
    ld b, $7C
    db $FD
    db $FD
    ld c, l
    and [hl]
    jp z, $0088

    add d
    db $FD
    add [hl]
    nop
    ld b, $76
    ld [hl], a

jr_02A_4D30:
    ld a, b

jr_02A_4D31:
    jr nz, jr_02A_4D30

    ld [hl-], a
    adc h
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    ld e, l
    adc d

jr_02A_4D3C:
    nop
    inc b
    jr nc, jr_02A_4D72

    ld hl, $8422
    nop
    inc bc
    add [hl]
    add a
    adc b
    add e
    db $FD
    add l
    nop
    inc bc
    jr nz, jr_02A_4D70

    ld [hl+], a
    add h
    nop
    inc b
    ld e, h
    db $FD
    db $FD
    ld c, l
    adc d
    nop
    add h
    db $FD
    add h
    nop
    ld b, $96
    sub a
    sbc b
    db $FD
    ld sp, $8532
    nop
    add e
    db $FD
    add h
    nop
    ld b, $6C
    db $FD
    db $FD
    ld e, l
    nop

jr_02A_4D70:
    nop
    inc bc

jr_02A_4D72:
    ld a, c
    ld a, d
    ld a, e
    add l
    nop
    add h
    db $FD
    ld [bc], a
    ld hl, $8222
    nop
    inc b
    and [hl]
    jp z, $1200

    add a
    nop
    add e
    db $FD
    add h
    nop
    ld b, $7C
    db $FD
    db $FD
    ld l, l
    nop
    nop
    inc bc
    adc c
    adc d
    adc e
    add l
    nop
    add [hl]
    db $FD
    adc l
    nop
    add e
    db $FD
    add h
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    ld a, l
    add e
    nop
    ld [bc], a
    sbc d
    sbc e
    add l
    nop
    ld [bc], a
    jr nc, @+$33

    add h
    db $FD
    add [hl]
    nop
    inc bc
    halt
    ld [hl], a
    ld a, b
    add h
    nop
    inc bc
    jr nc, jr_02A_4DEB

    ld [hl-], a
    add h
    nop
    inc b
    ld e, h
    db $FD
    db $FD
    ld c, l
    add e
    nop
    ld bc, $88AA
    nop
    inc b
    jr nc, jr_02A_4DFC

    ld sp, $8632
    nop
    inc bc
    add [hl]
    add a
    adc b
    adc e
    nop
    inc b
    ld l, h
    db $FD
    db $FD
    ld e, l
    add e
    nop
    ld bc, $92BA
    nop
    inc bc
    sub [hl]
    sub a
    sbc b
    adc e
    nop
    inc b
    ld a, h
    db $FD
    db $FD
    ld l, l

jr_02A_4DEB:
    add e
    nop
    ld bc, $92CA
    nop
    ld [bc], a
    and [hl]
    jp z, $008C

    inc b
    ld c, h
    db $FD
    db $FD
    ld a, l
    sub e

jr_02A_4DFC:
    nop
    ld bc, $8D21
    nop
    inc b
    jr nz, jr_02A_4E26

    nop
    ld e, h
    add d
    db $FD
    ld bc, $894D
    nop
    inc bc
    jr nz, jr_02A_4E30

    ld [hl+], a
    add a
    nop
    ld bc, $84FD
    nop
    inc bc
    ld a, c
    ld a, d
    ld a, e
    add [hl]
    nop
    add d
    db $FD
    ld [bc], a
    nop
    ld l, h
    add d
    db $FD
    ld bc, $895D

jr_02A_4E26:
    nop
    add e
    db $FD
    add a
    nop
    ld bc, $84FD
    nop
    inc bc

jr_02A_4E30:
    adc c
    adc d
    adc e
    add [hl]
    nop
    add d
    db $FD
    ld [bc], a
    nop
    ld a, h
    add d
    db $FD
    ld bc, $844D
    nop
    inc bc
    jr nz, jr_02A_4E64

    ld [hl+], a
    add d
    nop
    add e
    db $FD
    add a
    nop
    ld bc, $8512
    nop
    ld [bc], a
    sbc d
    sbc e
    add [hl]
    nop
    inc b
    jr nc, jr_02A_4E88

    nop
    ld c, h
    add d
    db $FD
    inc bc
    ld e, l
    jr nz, jr_02A_4E80

    add d
    nop
    add e
    db $FD
    add d
    nop

jr_02A_4E64:
    inc bc
    jr nc, jr_02A_4E64

    ld [hl-], a
    adc l
    nop
    ld bc, $8AAA
    nop
    ld b, $5C
    db $FD
    db $FD
    ld l, l
    db $FD
    db $FD
    add d
    nop

jr_02A_4E77:
    inc bc
    jr nc, jr_02A_4E77

    ld [hl-], a
    add e
    nop
    ld bc, $85FD

jr_02A_4E80:
    nop
    ld bc, $8320

Call_02A_4E84:
    ld hl, $2201
    add h

jr_02A_4E88:
    nop
    ld bc, $83BA
    nop
    inc bc
    ld a, c
    ld a, d
    ld a, e
    add h
    nop
    ld b, $6C
    db $FD
    db $FD
    ld a, l
    jr nc, jr_02A_4ECC

    add d
    nop
    add e
    db $FD
    add e
    nop
    ld bc, $8412
    nop
    ld bc, $8520
    db $FD
    ld bc, $8322
    nop
    ld bc, $83CA
    nop
    inc bc
    adc c
    adc d
    adc e
    add h
    nop
    inc b
    ld a, h
    db $FD
    db $FD
    ld c, l
    add h
    nop
    inc bc
    jr nc, jr_02A_4EF1

    ld [hl-], a
    add l
    nop
    inc bc
    halt
    ld [hl], a
    ld a, b
    add a
    db $FD
    adc b
    nop
    ld [bc], a

jr_02A_4ECC:
    sbc d
    sbc e
    add h
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    ld c, l
    adc h
    nop
    inc bc
    add [hl]
    add a
    adc b
    add a
    db $FD
    adc b
    nop
    ld bc, $85AA
    nop
    inc b
    ld c, h
    db $FD
    db $FD
    ld e, l
    adc h
    nop
    inc bc
    sub [hl]
    sub a
    sbc b
    add a
    db $FD
    adc b

jr_02A_4EF1:
    nop
    ld bc, $85BA
    nop
    inc b
    ld e, h
    db $FD
    db $FD
    ld l, l
    adc h
    nop
    inc bc
    and [hl]
    jp z, $8700

    db $FD
    adc b
    nop
    ld bc, $85CA
    nop
    inc b
    ld l, h
    db $FD
    db $FD
    ld a, l
    adc a
    ld hl, $FD87
    adc [hl]
    ld hl, $7C29
    db $FD
    db $FD
    inc c
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $39
    ld a, [hl-]
    dec sp
    inc a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $39
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc c
    xor c
    db $FD
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    ld [bc], a
    ld c, [hl]
    dec a
    add d
    ld c, [hl]
    ld b, $3F
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ccf
    add h
    ld c, [hl]
    ld [bc], a
    ccf
    ld e, a
    add d
    ld c, [hl]
    dec b
    dec a
    ld c, [hl]
    ld c, [hl]
    ccf
    ld e, a
    add d
    ld c, [hl]
    ld bc, $833D
    ld c, [hl]
    inc bc
    ccf
    dec a
    ld c, [hl]
    add a
    ld l, [hl]
    ld [bc], a
    ld c, [hl]
    ld e, a
    add l
    ld c, [hl]
    add e
    ld l, [hl]
    inc bc
    dec d
    ld a, [hl]
    ld d, $87
    ld l, [hl]
    add d
    ld c, [hl]
    ld bc, $866F
    ld a, e
    ld [$6D59], sp
    ld c, [hl]
    ld e, a
    ld c, [hl]
    jr c, jr_02A_4FD6

    ld l, a
    add d
    ld e, d
    inc b
    add hl, hl
    adc l
    adc [hl]
    sbc e
    add h
    ld a, [hl]
    inc bc
    ld a, a
    ld e, c
    add hl, bc
    add d
    ld c, [hl]
    inc bc
    ld a, [bc]
    inc e
    ld a, l
    add d
    ld a, [hl]
    ld a, [bc]
    ld a, a
    ld a, e
    ld e, h
    ld l, h
    ld l, l
    ld e, l
    ld c, l
    ld b, e
    ld b, h
    ld a, [bc]
    add d
    ld a, e
    inc b
    add hl, sp
    sbc l
    ld d, d
    adc h
    add e
    adc [hl]
    add hl, bc
    adc e
    sbc a
    ld a, [hl-]
    add hl, de
    ccf
    ld e, a
    ld a, [hl-]
    add hl, hl
    adc l
    add d
    adc [hl]
    dec bc
    adc a
    ld a, [hl+]
    inc e
    ld a, e
    ld e, h
    ld l, l
    ld e, a
    ld d, e
    ld d, h
    ld a, e
    ld e, h
    add d
    ld a, e
    rrca
    xor l
    ld h, d
    sbc l
    adc h
    adc d
    adc [hl]
    adc a
    xor a
    ld a, e

jr_02A_4FD6:
    add hl, hl
    ld c, [hl]
    ld e, a
    ld a, [bc]
    add hl, sp
    sbc l
    add d
    sbc [hl]
    ld b, $9F
    ld a, [hl-]
    ld d, l
    ld [hl], l
    inc e
    add hl, sp
    add d
    ld c, [hl]
    inc b
    ld a, [de]
    ld a, e
    ld l, h
    inc e
    add d
    ld a, e
    ld b, $72
    ld a, l
    sbc h
    adc e
    sbc [hl]
    sbc a
    add d
    ld a, e
    ld b, $39
    ld c, [hl]
    ld c, [hl]
    ld c, b
    ld a, e
    xor l
    add d
    xor [hl]
    add hl, bc
    xor a
    dec c
    ld c, $48
    ld [hl], l
    add hl, sp
    ld e, l
    ld e, a
    ld a, [bc]
    add d
    ld a, e
    add d
    ld e, h
    add hl, de
    ld a, e
    add hl, hl
    adc l
    adc e
    sbc a
    xor [hl]
    xor a
    ld a, e
    inc e
    add hl, bc
    ld c, [hl]
    ccf
    ld l, $48
    ld d, l
    ld l, c
    halt
    dec c
    dec d
    ld d, $2D
    rrca
    ld [hl], l
    ld l, l
    ld l, a
    add d
    ld a, e
    ld [$6C5C], sp
    ld a, e
    inc e
    add hl, sp
    adc l
    adc a
    xor a
    add h
    ld a, e
    inc b
    add hl, de
    ccf
    ld c, [hl]
    dec l
    add d
    ld l, $09
    ld c, $2E
    ld c, $8D
    xor c
    ld d, $2D
    ld c, b
    ld [hl], l
    add h
    ld a, e
    add hl, bc
    inc e
    ld a, e
    ld a, e
    add hl, sp
    adc l
    adc a
    ld a, [bc]
    ld l, h
    ld e, h
    add d
    ld a, e
    ld a, [de]
    add hl, hl
    dec a
    ld e, a
    ld l, l
    dec l
    ld c, $2E
    cpl
    dec d
    sbc h
    cp c
    sbc e
    ld d, $2D
    rrca
    ld c, e
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    add hl, sp
    adc l
    adc a
    ld a, [de]
    add h
    ld a, e
    dec c
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld a, [de]
    ld l, l
    dec l
    dec d
    ld a, [hl]
    sbc h
    adc [hl]
    ret z

    adc [hl]
    sbc e
    adc c
    ld a, [hl]
    ld b, $7F
    adc l
    adc a
    ld a, [bc]
    ld a, e
    ld e, h
    add d
    inc e
    ld [bc], a
    add hl, bc
    ld c, [hl]
    add h
    ld a, [hl]
    ld bc, $888A
    adc [hl]
    ld bc, $848B
    sbc [hl]
    ld b, $8C
    sbc d
    sbc e
    sbc h
    adc a
    ld a, [de]
    add d
    ld a, e
    inc b
    ld l, h
    ld a, e
    add hl, bc
    ld c, [hl]
    add e
    sbc [hl]
    ld bc, $858C
    adc [hl]
    dec b
    add a
    adc b
    adc c
    adc d
    adc a
    add h
    xor [hl]
    ld b, $8D
    adc [hl]
    xor c
    adc [hl]
    sbc e
    ld a, a
    add d
    ld a, e
    inc b
    ld l, h
    ld a, e
    add hl, de
    ld c, [hl]
    add e
    xor [hl]
    ld [bc], a
    sbc l
    adc h
    add d
    adc [hl]
    rlca
    sbc d
    adc [hl]
    sub a
    sbc b
    sbc c
    adc e
    sbc a
    add h
    ld a, e
    rlca
    adc l
    adc [hl]
    ret z

    sbc d
    adc e
    sbc a
    ld a, [hl-]
    add e
    ld a, e
    rlca
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    ld a, [de]
    ld a, e
    xor l
    adc l
    add l
    adc [hl]
    ld b, $B9
    adc e
    sbc a
    xor a
    ld a, e
    ld l, h
    add d
    ld a, e
    ld b, $9D
    ld d, d
    adc h
    adc e
    sbc a
    xor a
    add h
    ld a, e
    db $10
    add hl, sp
    dec a
    ld c, [hl]
    ld a, [hl+]
    inc e
    add hl, sp
    sbc l
    adc h
    sbc d
    adc [hl]
    sbc d
    adc [hl]
    ret z

    adc a
    ld sp, $8432
    ld a, e
    dec b
    xor l
    ld h, d
    adc l
    adc a
    xor a
    add d
    ld a, e
    add d
    ld e, h
    ld [bc], a
    ld a, e
    dec de
    add d
    ld c, [hl]
    dec b
    ld a, [hl-]
    ld a, e
    ld a, e
    xor l
    sbc l
    add d
    sbc [hl]
    ld [$9A8C], sp
    adc [hl]
    adc a
    ld b, c
    ld b, d
    ld a, e
    ld e, h
    add e
    ld a, e
    ld c, $72
    adc l
    adc a
    ld a, [hl+]
    ld e, h
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    dec a
    ccf
    ld c, [hl]
    ld a, [bc]
    ld e, h
    add d
    ld a, e
    ld b, $AD
    xor [hl]
    xor [hl]
    sbc l
    sbc [hl]
    sbc [hl]
    inc b
    sbc a
    ld a, [de]
    ld a, e
    ld e, h
    add d
    ld a, e
    rlca
    inc e
    ld a, e
    add hl, hl
    adc l
    adc a
    ld a, [hl-]
    inc e
    add e
    ld a, e
    dec b
    add hl, sp
    ld e, l
    ld c, [hl]
    ld e, a
    ld a, [de]
    add d
    ld a, e
    ld bc, $835C
    ld a, e
    inc b
    xor l
    xor [hl]
    xor [hl]
    xor a
    add e
    ld a, e
    ld a, [bc]
    ld e, h
    ld a, e
    ld a, e
    ld e, h
    add hl, sp
    adc l
    adc a
    ld a, [hl-]
    ld a, e
    inc e
    add e
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld a, [bc]
    ld e, h
    add e
    ld a, e
    add d
    ld e, h
    add l
    ld a, e
    inc bc
    inc e
    ld a, e
    ld e, h
    add e
    ld a, e
    inc b
    add hl, sp
    adc l
    sbc e
    ld a, a
    add d
    ld c, c
    ld b, $4A
    ld a, e
    ld a, e
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    dec b
    ld a, [de]
    ld a, e
    ld a, e
    inc e
    ld e, h
    add e
    ld a, e
    rlca
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld l, h
    ld a, e
    inc e
    add d
    ld a, e
    dec b
    ld de, $8D12
    sbc d
    sbc e
    add e
    ld a, [hl]
    ld [$7B7F], sp
    add hl, bc
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    ld a, l
    ld a, a
    add d
    ld a, e
    rlca
    inc e
    ld de, $8D12
    adc [hl]
    adc a
    ld a, [hl+]
    add d
    ld a, e
    add d
    ld c, c
    ld [de], a
    ld c, d
    ld hl, $8D22
    adc [hl]
    adc d
    add a
    adc b
    adc c
    adc a
    ld a, [hl+]
    add hl, de
    dec a
    ld l, a
    ld a, l
    sbc h
    adc a
    ld a, [bc]
    add d
    ld a, e
    ld [$2221], sp
    adc l
    adc [hl]
    adc a
    dec hl
    ld a, e
    ld a, l
    add l
    ld a, [hl]
    ld d, $9C
    adc [hl]
    adc [hl]
    sub a
    sbc b
    sbc c
    adc a
    ld a, [hl-]
    add hl, hl
    ccf
    ld a, [hl]
    sbc h
    adc [hl]
    adc a
    dec hl

jr_02A_51F7:
    inc e
    ld c, c
    ld c, d
    ld a, l
    sbc h
    adc e
    ld h, h
    add d
    ld a, [hl]
    ld bc, $8363
    sbc [hl]
    inc bc
    adc h
    adc [hl]
    sbc d
    add e
    adc [hl]
    ld a, [bc]
    res 3, d
    adc a
    ld a, [hl-]
    add hl, sp
    ld c, [hl]
    sbc [hl]
    adc h
    adc [hl]
    sbc e

jr_02A_5215:
    add h
    ld a, [hl]
    rlca
    sbc h
    adc e
    sbc a
    sbc l
    adc h
    adc e
    sbc a
    add e
    xor [hl]
    ld bc, $849D
    sbc [hl]
    dec bc
    adc h
    ret z

    adc e
    sbc a
    ld a, [hl-]
    add hl, bc
    dec a
    xor [hl]
    sbc l
    adc h
    adc e
    add l
    sbc [hl]
    ld b, $9F
    xor a
    xor l
    sbc l
    sbc a
    xor a
    add e
    ld a, e
    ld bc, $84AD
    xor [hl]
    dec bc
    sbc l
    sbc [hl]
    sbc a
    xor a
    ld a, e
    add hl, de
    ld c, [hl]
    jr z, jr_02A_51F7

    sbc l
    sbc a
    add l
    xor [hl]
    dec b
    xor a
    ld a, e
    inc e
    xor l
    xor a
    add d
    ld a, e
    ld bc, $845C
    ld a, e
    dec b
    ld e, h
    ld a, e
    xor l
    xor [hl]
    xor a
    add d
    ld a, e
    ld b, $29
    ld c, [hl]
    ld c, [hl]
    jr z, jr_02A_5215

    xor a
    add e
    ld a, e
    ld bc, $845C
    ld a, e
    inc bc
    inc e
    ld a, e
    inc e
    add h
    ld a, e
    add d
    ld e, h
    ld bc, $831C
    ld a, e
    inc b
    ld e, h
    ld a, e
    inc e
    add hl, sp
    add d
    ld c, [hl]
    ld [bc], a
    jr c, jr_02A_52AD

    add d
    ld l, c
    ld [bc], a
    ld l, d
    ld c, c
    add d
    ld a, e
    add [hl]
    ld c, c
    ld [bc], a
    ld c, d
    ld l, c
    add d
    ld c, c
    inc bc
    ld c, d
    ld l, c
    ld l, d
    add e
    ld a, e
    add e
    ld c, c
    inc c
    dec de
    ld c, [hl]
    ld c, [hl]
    scf
    jr c, jr_02A_5301

    ld c, [hl]
    ccf
    daa
    jr z, jr_02A_52AE

    ld [$4E82], sp
    inc b
    ld e, a
    dec a

jr_02A_52AD:
    ccf

jr_02A_52AE:
    ld e, a
    add d
    ld c, [hl]
    add hl, bc
    dec a
    ld c, [hl]
    ld c, [hl]
    daa
    jr z, @+$09

    ld [$3F4E], sp
    add d
    ld c, [hl]
    ld bc, $003D
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    ld [bc], a
    ld c, [hl]
    dec a
    add d
    ld c, [hl]
    ld b, $3F
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ccf
    add h
    ld c, [hl]
    ld [bc], a
    ccf
    ld e, a
    add d
    ld c, [hl]
    dec b
    dec a
    ld c, [hl]
    ld c, [hl]
    ccf
    ld e, a
    add d
    ld c, [hl]
    ld bc, $833D
    ld c, [hl]
    inc bc
    ccf
    dec a
    ld c, [hl]
    add a
    ld l, [hl]
    rlca
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld c, l
    ld c, [hl]
    add e
    ld l, [hl]
    inc bc
    dec d
    ld a, [hl]
    ld d, $87
    ld l, [hl]
    add d
    ld c, [hl]
    ld bc, $866F

jr_02A_5301:
    ld a, e
    ld [$6D59], sp
    ld c, [hl]
    ld e, a
    ld c, [hl]
    jr c, jr_02A_5358

    ld l, a
    add e
    ld e, d
    inc bc
    adc l
    adc d
    sbc e
    add h
    ld a, [hl]
    inc bc
    ld a, a
    ld e, c
    add hl, bc
    add d
    ld c, [hl]
    inc bc
    ld a, [bc]
    inc e
    ld a, l
    add d
    ld a, [hl]
    ld a, [bc]
    ld a, a
    ld a, e
    ld e, h
    ld l, h
    ld l, l
    ld e, l
    ld c, l
    ld b, e
    ld b, h
    ld a, [bc]
    add d
    ld a, e
    inc b
    add hl, bc
    sbc l
    ld d, d
    adc h
    add e
    adc [hl]
    add hl, bc
    adc e
    sbc a
    ld a, [hl-]
    add hl, de
    ccf
    ld e, a
    ld a, [hl-]
    add hl, hl
    adc l
    add d
    adc [hl]
    dec bc
    adc a
    ld a, [hl+]
    inc e
    ld a, e
    ld e, h
    ld l, l
    ld e, a
    ld d, e
    ld d, h
    ld a, e
    ld e, h
    add d
    ld a, e
    rrca
    xor l
    ld h, d
    sbc l
    adc h
    adc d
    adc [hl]
    adc a
    xor a
    ld a, e
    add hl, hl

jr_02A_5358:
    ld c, [hl]
    ld e, a
    ld a, [bc]
    add hl, sp
    sbc l
    add d
    sbc [hl]
    ld b, $9F
    ld a, [hl-]
    ld d, l
    ld [hl], l
    inc e
    add hl, sp
    add d
    ld c, [hl]
    inc b
    ld a, [de]
    ld a, e
    ld l, h
    inc e
    add d
    ld a, e
    inc bc
    ld [hl], d
    xor l
    sbc l
    add d
    sbc [hl]
    ld b, $9F
    ld a, e
    ld a, e
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    inc bc
    ld c, b
    ld a, e
    xor l
    add d
    xor [hl]
    add hl, bc
    xor a
    dec c
    ld c, $0F
    ld [hl], l
    add hl, sp
    ld e, l
    ld e, a
    ld a, [bc]
    add d
    ld a, e
    add d
    ld e, h
    add e
    ld a, e
    ld d, $AD
    xor [hl]
    xor [hl]
    xor a
    ld a, e
    inc e
    add hl, bc
    ld c, [hl]
    ccf
    ld l, $48
    ld d, l
    ld l, c
    halt
    dec c
    dec d
    ld d, $1F
    rrca
    ld [hl], l
    ld l, l
    ld l, a
    add d
    ld a, e
    inc b
    ld e, h
    ld l, h
    ld a, e
    inc e
    adc b
    ld a, e
    inc b
    add hl, de
    ccf
    ld c, [hl]
    dec l
    add d
    ld l, $09
    ld c, $2E
    ld c, $8D
    xor c
    ld d, $1F
    rrca
    ld [hl], l
    add h
    ld a, e
    ld bc, $861C
    ld a, e
    ld [bc], a
    ld l, h
    ld e, h
    add d
    ld a, e
    ld de, $3D29
    ld e, a
    ld l, l
    dec l
    ld c, $2E
    cpl
    dec d
    sbc h
    cp c
    sbc e
    ld d, $1F
    rrca
    ld c, e
    inc e
    add [hl]
    ld a, e
    ld bc, $865C
    ld a, e
    dec c
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld a, [de]
    ld l, l
    dec l
    dec d
    ld a, [hl]
    sbc h
    adc [hl]
    ret z

    adc [hl]
    sbc e
    add d
    ld a, [hl]
    ld bc, $847F
    ld a, e
    inc bc
    ld a, l
    ld a, [hl]
    ld a, a
    add h
    ld a, e
    dec b
    ld e, h
    inc e
    inc e
    add hl, bc
    ld c, [hl]
    add h
    ld a, [hl]
    ld bc, $888A
    adc [hl]
    ld a, [bc]
    adc a
    ld a, [hl-]
    ld a, e
    ld e, h
    add hl, bc
    adc l
    sbc d
    sbc e
    ld a, [hl]
    ld a, a
    add e
    ld a, e
    inc b
    ld l, h
    ld a, e
    add hl, bc
    ld c, [hl]
    add e
    sbc [hl]
    ld bc, $858C
    adc [hl]
    ld b, $87
    adc b
    adc c
    adc d
    adc a
    ld a, [hl-]
    add d
    ld a, e
    rlca
    add hl, de
    adc l
    adc [hl]
    xor c
    adc [hl]
    sbc e
    ld a, a
    add d
    ld a, e
    inc b
    ld l, h
    ld a, e
    add hl, de
    ld c, [hl]
    add e
    xor [hl]
    ld [bc], a
    sbc l
    adc h
    add d
    adc [hl]
    ld de, $8E9A
    sub a
    sbc b
    sbc c
    adc e
    sbc a
    ld a, [hl-]
    ld l, h
    ld a, e
    add hl, hl
    adc l
    adc [hl]
    ret z

    sbc d
    adc e
    sbc a
    add h
    ld a, e
    rlca
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    ld a, [de]
    ld a, e
    xor l
    adc l
    add l
    adc [hl]
    inc b
    cp c
    adc e
    sbc a
    xor a
    add e
    ld a, e
    inc bc
    add hl, sp
    sbc l
    ld d, d
    add d
    sbc [hl]
    ld [bc], a
    sbc a
    xor a
    add h
    ld a, e
    db $10
    add hl, sp
    dec a
    ld c, [hl]
    ld a, [hl+]
    inc e
    add hl, sp
    sbc l
    adc h
    sbc d
    adc [hl]
    sbc d
    adc [hl]
    ret z

    adc a
    add d
    ld [hl-], a
    add h
    ld a, e
    ld [bc], a
    xor l
    ld h, d
    add d
    xor [hl]
    inc bc
    xor a
    ld a, e
    ld a, e
    add d
    ld e, h
    ld [bc], a
    ld a, e
    dec de
    add d
    ld c, [hl]
    dec b
    ld a, [hl-]
    ld a, e
    ld a, e
    xor l
    sbc l
    add d
    sbc [hl]
    ld [$9A8C], sp
    adc [hl]
    adc a
    ld b, c
    ld b, d
    ld a, e
    ld e, h
    add e
    ld a, e
    ld bc, $8372
    ld a, e
    ld a, [bc]
    ld e, h
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    dec a
    ccf
    ld c, [hl]
    ld a, [bc]
    ld e, h
    add d
    ld a, e
    ld b, $AD
    xor [hl]
    xor [hl]
    sbc l
    sbc [hl]
    sbc [hl]
    inc b
    sbc a
    ld a, [de]
    ld a, e
    ld e, h
    add d
    ld a, e
    ld bc, $851C
    ld a, e
    ld bc, $831C
    ld a, e
    dec b
    add hl, sp
    ld e, l
    ld c, [hl]
    ld e, a
    ld a, [de]
    add d
    ld a, e
    ld bc, $835C
    ld a, e
    inc b
    xor l
    xor [hl]
    xor [hl]
    xor a
    add e
    ld a, e
    inc b
    ld e, h
    ld a, e
    ld a, e
    ld e, h
    add l
    ld a, e
    ld bc, $831C
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld a, [bc]
    ld e, h
    add e
    ld a, e
    add d
    ld e, h
    add l
    ld a, e
    inc bc
    inc e
    ld a, e
    ld e, h
    add h
    ld a, e
    inc bc
    ld a, l
    ld a, [hl]
    ld a, a
    add l
    ld a, e
    ld b, $39
    ld c, [hl]
    ld c, [hl]
    ld a, [de]
    ld a, e
    ld a, e
    ld [bc], a
    inc e
    ld e, h
    add e
    ld a, e
    rlca
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld l, h
    ld a, e
    inc e
    add d
    ld a, e
    dec b
    ld de, $8D12
    sbc d
    sbc e
    add e
    ld a, [hl]
    ld [$7B7F], sp
    add hl, bc
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    ld a, l
    ld a, a
    add d
    ld a, e
    rlca
    inc e
    ld de, $8D12
    adc [hl]
    adc a
    ld a, [hl+]
    add l
    ld a, e
    ld de, $2221
    adc l
    adc [hl]
    adc d
    add a
    adc b
    adc c
    adc a
    ld a, [hl+]
    add hl, de
    dec a
    ld l, a
    ld a, l
    sbc h
    adc a
    ld a, [bc]
    add d
    ld a, e
    ld c, $21
    ld [hl+], a
    adc l
    adc [hl]
    adc a
    dec hl
    ld a, e
    inc e
    ld a, e
    inc e
    ld a, e
    ld a, l
    ld a, [hl]
    sbc h
    add d
    adc [hl]
    dec c
    sub a
    sbc b
    sbc c
    adc a
    ld a, [hl-]
    add hl, hl
    ccf
    ld a, [hl]
    sbc h
    adc [hl]
    adc a
    ld a, [de]
    inc e
    add d
    ld a, e
    ld b, $7D
    sbc h

jr_02A_5571:
    adc e
    ld h, h
    ld a, [hl]
    ld a, a
    add e
    ld a, e
    inc b
    add hl, hl
    adc l
    adc [hl]
    sbc d
    add e
    adc [hl]
    dec bc
    res 3, d
    adc a
    ld a, [hl+]
    add hl, sp
    ld c, [hl]
    sbc [hl]
    adc h
    adc [hl]
    adc a
    ld a, [hl+]
    add d
    ld a, e
    ld [$8D29], sp
    adc e
    sbc a

jr_02A_5591:
    sbc l
    adc h
    adc a
    ld a, [hl+]
    add d
    ld a, e
    ld [bc], a
    add hl, sp
    sbc l
    add h
    sbc [hl]
    inc c
    adc h
    ret z

    adc e
    sbc a
    ld a, [hl-]
    add hl, bc
    dec a
    xor [hl]
    sbc l
    adc h
    adc a
    ld a, [hl-]
    add d
    ld a, e
    ld [$9D39], sp
    sbc a
    xor a
    xor l
    sbc l
    sbc a
    ld a, [hl-]
    add e
    ld a, e
    ld bc, $84AD
    xor [hl]
    inc c
    sbc l
    sbc [hl]
    sbc a
    xor a
    ld a, e
    add hl, de
    ld c, [hl]
    jr z, jr_02A_5571

    sbc l
    sbc a
    ld a, [hl-]
    add e
    ld a, e
    ld b, $AD
    xor a
    ld a, e
    inc e
    xor l
    xor a
    add d
    ld a, e
    ld bc, $845C
    ld a, e
    dec b
    ld e, h
    ld a, e
    xor l
    xor [hl]
    xor a
    add d
    ld a, e
    ld b, $29
    ld c, [hl]
    ld c, [hl]
    jr z, jr_02A_5591

    xor a
    add e
    ld a, e
    ld bc, $845C
    ld a, e
    inc bc
    inc e
    ld a, e
    inc e
    add h
    ld a, e
    add d
    ld e, h
    ld bc, $831C
    ld a, e
    inc b
    ld e, h
    ld a, e
    inc e
    add hl, sp
    add d
    ld c, [hl]
    ld [bc], a
    jr c, jr_02A_5629

    add d
    ld l, c
    ld [bc], a
    ld l, d
    ld c, c
    add d
    ld a, e
    add [hl]
    ld c, c
    ld [bc], a
    ld c, d
    ld l, c
    add d
    ld c, c
    inc bc
    ld c, d
    ld l, c
    ld l, d
    add e
    ld a, e
    add e
    ld c, c
    inc c
    dec de
    ld c, [hl]
    ld c, [hl]
    scf
    jr c, jr_02A_567D

    ld c, [hl]
    ccf
    daa
    jr z, jr_02A_562A

    ld [$4E82], sp
    inc b
    ld e, a
    dec a

jr_02A_5629:
    ccf

jr_02A_562A:
    ld e, a
    add d
    ld c, [hl]
    add hl, bc
    dec a
    ld c, [hl]
    ld c, [hl]
    daa
    jr z, @+$09

    ld [$3F4E], sp
    add d
    ld c, [hl]
    ld bc, $003D
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ret nz

    ld b, c
    inc h
    add e
    ld a, $89
    nop
    ld bc, $8F24
    nop
    ld bc, $9024
    nop
    add d
    inc h
    adc a
    nop
    add d
    inc h
    add e
    ld a, $89
    nop
    ld bc, $8F24
    nop
    ld bc, $A124

Jump_02A_5663:
    nop
    add d
    inc h
    add e
    ld a, $89
    nop
    ld bc, $8F24
    nop
    ld bc, $9524
    nop
    ld bc, $8B24
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24

jr_02A_567D:
    nop
    ld bc, $9624
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24
    nop
    ld bc, $9624
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24
    nop
    ld bc, $9624
    nop
    add d
    inc h
    adc c
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24
    nop
    ld bc, $9724
    nop
    ld bc, $8924
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8F24
    nop
    ld bc, $9824
    nop
    ld bc, $8824
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    add h
    inc h
    add l
    nop
    ld bc, $9824
    nop
    ld bc, $8824
    nop
    add d
    inc h
    adc h
    nop
    ld bc, $8624
    nop
    ld bc, $A124
    nop
    ld bc, $8824
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $AA24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $AA24
    nop
    add d
    inc h
    sub e
    nop
    ld bc, $AA24
    nop
    adc e
    inc h
    adc d
    nop
    ld bc, $AA24
    nop
    add d
    inc h
    sub d
    nop
    add d
    inc h
    xor d
    nop
    add d
    inc h
    sub d
    nop
    ld bc, $9424
    nop
    add h
    inc h
    sub e
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8A24
    nop
    add d
    inc h
    add e
    nop
    ld bc, $9224
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8A24
    nop
    ld bc, $8424
    nop
    ld bc, $9224
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8F24
    nop
    ld bc, $9224
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $8F24
    nop
    ld bc, $9224
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $9024
    nop
    ld bc, $9124
    nop
    add d
    inc h
    add a
    nop
    add a
    inc h
    adc l
    nop
    ld bc, $9024
    nop
    add l
    inc h
    adc l
    nop
    add d
    inc h
    sbc e
    nop
    ld bc, $9524
    nop
    add h
    inc h
    adc c
    nop
    add d
    inc h
    or l
    nop
    ld bc, $8824
    nop
    add d
    inc h
    or [hl]
    nop
    ld bc, $8724
    nop
    add d
    inc h
    sub h
    nop
    add d
    inc h
    and b
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor c
    nop
    ld bc, $8C24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor c
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8724
    nop
    add d
    inc h
    xor d
    nop
    ld bc, $8B24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $AB24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc d
    nop
    ld bc, $AB24
    nop
    ld bc, $8324
    nop
    add h
    ld a, $82
    inc h
    add h
    nop
    add a
    inc h
    add [hl]
    nop
    add h
    inc h
    and c
    nop
    ld bc, $8324
    nop
    add h
    ld a, $82
    inc h
    add h
    nop
    ld bc, $8524
    nop
    ld bc, $8924
    nop
    add e
    inc h
    sbc a
    nop
    ld bc, $8324
    nop
    add e
    ld a, $01
    rst $30
    add d
    inc h
    add h
    nop
    ld bc, $9224
    nop
    ld bc, $9E24
    nop
    ld bc, $8324
    nop
    add h
    ld a, $82
    inc h
    add h
    nop
    ld bc, $9224
    nop
    ld bc, $9E24
    nop
    ld bc, $8324
    nop
    add h
    ld a, $82
    inc h
    add h
    nop
    ld bc, $8624
    nop
    ld bc, $8B24
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8724
    nop
    add d
    inc h
    adc e
    nop
    ld bc, $8B24
    nop
    ld bc, $8D24
    nop
    add e
    inc h
    adc [hl]
    nop
    ld bc, $8724
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8624
    nop
    ld bc, $9024
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9724
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9724
    nop
    ld bc, $8D24
    nop
    ld bc, $8724
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $9724
    nop
    ld bc, $9524
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8924
    nop
    add a
    inc h
    add a
    nop
    ld bc, $9524
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8824
    nop
    ld bc, $8E24
    nop
    ld bc, $8724
    nop
    ld bc, $8D24
    nop
    add d
    inc h
    sub b
    nop
    ld bc, $8824
    nop
    ld bc, $8E24
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    adc a
    nop
    add d
    inc h
    adc b
    nop
    ld bc, $8E24
    nop
    ld bc, $8824
    nop
    add [hl]
    inc h
    add a
    nop
    add d
    inc h
    sbc c
    nop
    ld bc, $8E24
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    add l
    nop
    ld bc, $9324
    nop
    ld bc, $8E24
    nop
    ld bc, $8824
    nop
    ld bc, $8C24
    nop
    add d
    inc h
    add l
    nop
    ld bc, $9324
    nop
    ld bc, $8E24
    nop
    ld bc, $9524
    nop
    add d
    inc h
    add l
    nop
    add d
    inc h
    sub d
    nop
    ld bc, $8E24
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    add [hl]
    nop
    adc b
    inc h
    adc h
    nop
    ld bc, $8D24
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sbc d
    nop
    ld bc, $8D24
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sbc d
    nop
    ld bc, $8D24
    nop
    ld bc, $8F24
    nop
    ld bc, $8524
    nop
    add d
    inc h
    sbc d
    nop
    ld bc, $8E24
    nop
    ld bc, $8D24
    nop
    ld bc, $8624
    nop
    add d
    inc h

jr_02A_596C:
    sbc d
    nop
    ld bc, $8E24
    nop
    ld bc, $8D24
    nop
    ld bc, $8624
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    sbc c
    nop
    add d
    inc h
    and e
    nop
    add d
    inc h
    adc a
    nop
    adc e
    inc h
    and h
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    add d
    inc h
    cp [hl]
    nop
    ret nz

    ld b, c
    inc h
    nop
    ld e, $0E
    ld bc, $1913
    ld a, [de]
    inc b
    add a
    ld l, e
    inc b
    ld d, $17
    jr z, jr_02A_59C1

    add [hl]
    ld e, $03
    rrca
    halt
    db $DB
    add d
    jr z, jr_02A_59C0

    halt
    dec c
    ret c

jr_02A_59C0:
    add d

jr_02A_59C1:
    ld e, $03
    ret


    ld l, $2E
    add [hl]
    ld l, e
    rlca
    cp b
    rla
    jr z, jr_02A_59DA

    ld sp, hl
    dec bc
    inc c
    add d
    ld e, $0D
    ret


    ld l, $D9
    rrca
    db $EB
    ld l, h
    dec c

jr_02A_59DA:
    ld c, $D8
    ld e, $C9
    ld l, $2F
    add d
    ld a, $83
    ld l, e
    inc b
    ld [$17B8], sp
    jr jr_02A_596C

jr_02A_59EA:
    jr z, jr_02A_59F6

    dec e
    rra
    dec de
    inc e
    dec l
    ld l, $2F
    ld a, $2D
    reti


jr_02A_59F6:
    add d
    ld c, $07
    ret c

    ld e, $1E
    ret


    cpl
    ld a, $3F
    add d
    ld c, [hl]
    inc bc
    ld l, e
    ld d, $17
    add d
    jr jr_02A_5A17

    jr z, jr_02A_59EA

    ld e, l
    jr z, jr_02A_5A2B

    rra
    dec hl
    inc l
    dec a
    ld a, $3F
    ld c, [hl]
    dec a
    dec e

jr_02A_5A17:
    add l
    ld e, $0A
    rra
    ccf
    ld c, [hl]
    dec hl
    jr z, @+$79

    ld d, $17
    jr z, jr_02A_5A31

    add d
    ld c, $0D
    rrca
    ld l, l
    dec c
    ret c

jr_02A_5A2B:
    reti


    rrca
    jr z, jr_02A_5A5B

    ld c, [hl]
    dec hl

jr_02A_5A31:
    jp c, $1D4D

    add l
    ld e, $03
    rra
    ld c, a
    ld [hl], a
    add e
    jr z, jr_02A_5A41

    rla
    dec c
    ld c, $D8

jr_02A_5A41:
    add d
    ld e, $03
    reti


    ld c, $D8
    add d
    ld e, $02
    rra
    ld d, [hl]
    add e
    jr z, jr_02A_5A52

    halt
    ld d, a
    dec e

jr_02A_5A52:
    add l
    ld e, $0B
    reti


    rrca
    jr z, jr_02A_5AB6

    jr z, jr_02A_5AC7

jr_02A_5A5B:
    dec c
    ret c

    ret


    dec bc
    inc c
    add d
    ld l, $01
    ret z

    add e
    ld e, $04
    reti


    rrca
    ld [$8277], a
    jr z, jr_02A_5A70

    dec c
    ret c

jr_02A_5A70:
    add [hl]
    ld e, $0A
    reti


    rrca
    ld l, l
    dec c
    ld c, $D8
    ret


    cpl
    dec de
    inc e
    add d
    ld a, $02
    dec l
    ret z

    add e
    ld e, $01
    reti


    add h
    ld c, $01
    ret c

    adc b
    ld e, $03
    reti


    ld c, $D8
    add d
    ld e, $04
    rra
    ccf
    ld c, a
    ld b, $82
    ld c, [hl]
    ld [bc], a
    dec a
    dec e
    sub [hl]
    ld e, $02
    rra
    ld c, a
    add h
    jr z, jr_02A_5AA6

    ld c, l
    dec e

jr_02A_5AA6:
    adc c
    ld e, $01
    ret


    add h
    ld l, $03
    dec bc
    inc c
    ret z

    add h
    ld e, $04
    dec l
    ld hl, sp+$0F

jr_02A_5AB6:
    ld [hl], a
    add e
    jr z, jr_02A_5ABC

    rst $08
    dec e

jr_02A_5ABC:
    adc b
    ld e, $02
    ret


    cpl
    add h
    ld a, $03
    dec de
    inc e
    dec e

jr_02A_5AC7:
    add h
    ld e, $05
    dec a
    dec e
    rra
    jr z, jr_02A_5B3B

    add d
    jr z, jr_02A_5AD4

    dec c
    ret c

jr_02A_5AD4:
    adc b
    ld e, $02
    rra
    ccf
    add h
    ld c, [hl]
    rrca
    dec hl

jr_02A_5ADD:
    inc l
    dec l
    ret z

    ld e, $C9
    ld l, $2C
    dec l
    ld hl, sp+$0F
    jr z, jr_02A_5B45

    dec c
    ret c

    adc c
    ld e, $02
    rra
    dec hl
    add d
    jr z, jr_02A_5AF4

    ld [hl], a

jr_02A_5AF4:
    add e
    jr z, @+$0B

    dec a
    dec e
    ret


    cpl
    ld a, $77
    dec a
    dec l
    ld hl, sp-$7E
    ld c, $01
    ret c

    adc d
    ld e, $02
    reti


    rrca
    add e
    jr z, jr_02A_5B18

    ld l, h
    jr z, jr_02A_5ADD

    ld c, l
    dec e
    rra
    ccf
    ld c, [hl]
    jr z, jr_02A_5B63

    dec a
    dec e

jr_02A_5B18:
    adc [hl]
    ld e, $04
    reti


    rrca
    jr z, jr_02A_5B8B

    add d
    jr z, jr_02A_5B28

    sbc $0D
    ld sp, hl
    cpl
    ld c, a
    ld [hl], a

jr_02A_5B28:
    add d
    jr z, jr_02A_5B2D

    ld c, l
    dec e

jr_02A_5B2D:
    adc a
    ld e, $0F
    reti


    ld c, $0F
    ld [hl], a
    dec c
    ld c, $F9
    cpl
    ccf
    ld [hl], a
    inc b

jr_02A_5B3B:
    ld e, [hl]
    ld e, a
    ld d, a
    dec e
    sub c
    ld e, $0C
    reti


    ld c, $F9

jr_02A_5B45:
    ld l, $2F
    ccf
    ld c, a
    inc b
    add hl, sp
    ld l, [hl]
    ld l, a
    dec c
    sub h
    ld e, $0E
    cpl
    ld a, $3F
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    dec c
    ld c, $D8
    ld l, $0B
    inc c
    ret z

    adc a
    ld e, $0F
    rra

jr_02A_5B63:
    ccf
    ld c, [hl]
    dec hl
    halt
    add hl, hl
    ld a, [hl+]
    ld l, e
    ret c

    ret


    cpl
    ld a, $1B
    inc e
    dec l
    adc a
    ld e, $11
    rra
    ld c, a
    jp c, $0428

    add hl, sp
    ld a, [hl-]
    ld l, e
    ld e, $1F
    ccf
    ld c, [hl]
    dec hl
    inc l
    dec a
    dec l
    ret z

    add l
    ld e, $03
    ld l, $0B
    inc c

jr_02A_5B8B:
    add d
    ld l, $09
    ret z

    ld e, $1E
    reti


    rrca
    jr z, jr_02A_5B99

    add hl, sp
    ld a, [hl-]
    add d
    ld l, e

jr_02A_5B99:
    inc bc
    ld e, $1F
    dec hl
    add e
    jr z, jr_02A_5BA3

    inc l
    dec a
    dec e

jr_02A_5BA3:
    add e
    ld e, $05
    ret


    cpl
    ld a, $1B
    inc e
    add d
    ld a, $01
    dec l
    add e
    ld e, $04
    rra
    call $2A29
    add e
    ld l, e
    inc b

jr_02A_5BB9:
    ld e, $1F
    ld [hl], a
    call $2882
    inc bc
    halt
    inc l
    dec e
    add e
    ld e, $05
    rra
    ccf
    ld c, [hl]
    dec hl
    inc l
    add d
    ld c, [hl]
    ld [bc], a
    dec a
    ret z

    add d
    ld e, $04
    rra
    db $DD
    add hl, hl
    ld a, [hl+]
    add e
    ld l, e
    add d
    ld e, $02
    rrca
    db $DD
    add d
    jr z, jr_02A_5BE4

    ld e, [hl]
    ld e, a
    dec e

jr_02A_5BE4:
    add e
    ld e, $04

jr_02A_5BE7:
    rra
    dec hl
    jr z, jr_02A_5BB9

    add e
    jr z, jr_02A_5BF6

    ld c, l
    dec e
    ld e, $C9
    cpl
    halt
    add hl, hl
    ld a, [hl+]

jr_02A_5BF6:
    add e
    ld l, e
    add d
    ld e, $07
    rra
    ld d, [hl]
    jr z, jr_02A_5C75

    ld l, [hl]
    ld l, a
    dec e
    add e
    ld e, $04
    reti


    rrca
    jr z, jr_02A_5BE7

    add e
    jr z, jr_02A_5C14

    ld e, h
    dec e
    ld e, $1F
    ccf
    jr z, jr_02A_5C3C

    ld a, [hl+]

jr_02A_5C14:
    add e
    ld l, e
    add d
    ld l, $07
    cpl

jr_02A_5C1A:
    ld d, [hl]
    jr z, @+$78

    jr z, jr_02A_5C2C

    ret c

    add h
    ld e, $03
    reti


    ld c, $0F
    add h
    jr z, jr_02A_5C30

    dec e
    ld e, $1F

jr_02A_5C2C:
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]

jr_02A_5C30:
    add e
    ld l, e
    add d
    ld a, $02
    ccf
    ld d, [hl]
    add d
    jr z, jr_02A_5C3D

    dec c
    ret c

jr_02A_5C3C:
    ret


jr_02A_5C3D:
    add e
    ld l, $0E
    ret z

    ld e, $1E
    reti


    rrca
    halt
    jr z, jr_02A_5C55

    ret c

    ret


    cpl
    halt
    add hl, hl
    ld a, [hl+]
    add h
    ld l, e
    add d
    ld c, [hl]
    ld bc, $832B

jr_02A_5C55:
    jr z, jr_02A_5C5A

    dec e
    ld e, $2F

jr_02A_5C5A:
    add e
    ld a, $01
    dec l
    add e
    ld l, $0A
    ld hl, sp+$0E
    ld c, $D8
    ret


    cpl
    ccf
    jr z, @+$2B

    ld a, [hl+]
    add h
    ld l, e
    add d
    jr z, jr_02A_5C77

    halt
    jr z, jr_02A_5C9B

    dec c
    ld sp, hl

jr_02A_5C75:
    cpl
    ccf

jr_02A_5C77:
    add e
    ld c, [hl]
    ld bc, $833D
    ld a, $01
    dec l
    add e
    ld l, $06
    cpl
    ccf
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    add h
    ld l, e
    add l
    ld c, $04
    ld sp, hl
    cpl
    ccf
    ld c, a
    add d
    jr c, @+$04

    dec b
    jr z, jr_02A_5C1A

    ld c, [hl]
    ld bc, $833D

jr_02A_5C9B:
    ld a, $05
    ccf
    ld c, a
    inc b
    add hl, sp
    ld a, [hl-]
    add l
    ld l, e
    ld bc, $842D
    ld l, $09
    cpl
    ccf
    ld c, a
    add hl, hl
    ld c, d
    ld c, b
    scf
    jr c, jr_02A_5CB7

    add d
    jr z, jr_02A_5CB6

    inc l

jr_02A_5CB6:
    add e

jr_02A_5CB7:
    ld c, [hl]
    inc b
    dec hl
    inc b
    add hl, sp
    ld a, [hl-]
    add [hl]
    ld l, e
    ld bc, $843D
    ld a, $05
    ccf
    ld c, a
    ld e, h
    add hl, hl
    ld a, [hl+]
    add d
    ld l, e
    ld [bc], a
    ld c, b
    scf
    add d
    jr c, jr_02A_5CD4

    dec b
    jr z, jr_02A_5CD8

jr_02A_5CD4:
    add d
    jr c, jr_02A_5CD9

    add hl, sp

jr_02A_5CD8:
    ld c, c

jr_02A_5CD9:
    add a
    ld l, e
    ld bc, $842C
    ld c, [hl]
    inc b
    dec hl
    ld [hl], a
    inc b
    add hl, sp
    add l
    ld l, e
    add d
    ld c, b
    inc bc
    scf
    jr c, @+$3B

    add d
    ld c, b
    ld bc, $8849
    ld l, e
    add h
    jr c, jr_02A_5CFA

    dec b
    ld l, h
    inc b
    add hl, sp
    ld c, c

jr_02A_5CFA:
    add a
    ld l, e
    inc bc
    ld b, a
    ld c, b
    ld c, c
    adc e
    ld l, e
    add h
    ld c, b
    inc b
    scf
    jr c, jr_02A_5D41

    ld c, c
    sub [hl]
    ld l, e
    nop
    ld [hl-], a
    ret nc

    rlca
    xor b
    ld [$008A], sp
    xor b
    ld [$008A], sp
    add e
    ld [$0001], sp
    add a
    ld [$0094], sp
    ld bc, $8508
    nop
    add e
    ld [$008A], sp
    adc b
    ld [$4001], sp
    sub a
    ld [$0082], sp
    inc bc
    ret nz

    nop
    nop
    add e
    ld [$008A], sp
    adc b
    ld [$0082], sp
    ld bc, $93C7
    jp nz, $C602

jr_02A_5D41:
    ld [$0085], sp
    add e
    ld [$008A], sp
    adc b
    ld [$0002], sp
    rst $00
    sub e
    pop bc
    ld [bc], a
    jp nz, $82C6

    nop
    add a
    ld [$008A], sp
    add [hl]
    ld [$C703], sp
    jp nz, $95C7

    pop bc
    add h
    jp nz, $C603

    ld [$8300], sp
    ld [$008A], sp
    add [hl]
    ld [$C501], sp
    sbc e
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add l
    ld [$C702], sp
    jp nz, $C19B

    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add l
    ld [$C501], sp
    add a
    pop bc
    add h
    jp $C185


    add h
    jp $C188


    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add l
    ld [$C501], sp
    add a
    pop bc
    inc b
    call nz, $0808
    push bc
    add l
    pop bc
    ld b, $C4
    ld [$C908], sp
    jp $86C3


    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$87C5], sp
    pop bc
    dec b
    call nz, $0808
    ret


    jp $C184


    ld bc, $84C4
    ld [$C501], sp
    add [hl]
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$87C5], sp
    pop bc
    ld [bc], a
    jp nz, $82C6

    ld [$C501], sp
    add h
    pop bc
    add d
    jp nz, $C604

    ld [$C508], sp
    add [hl]
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$88C5], sp
    pop bc
    ld b, $C4
    ld [$C908], sp
    jp $83C5


    pop bc
    ld [bc], a
    jp $82C8


    ld [$C902], sp
    push bc
    add l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$88C5], sp
    pop bc
    ld [bc], a
    jp nz, $82C6

    ld [$0002], sp
    push bc
    add e
    pop bc
    inc bc
    call nz, $0808
    add d
    nop
    ld bc, $85C5
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$89C5], sp
    pop bc
    dec b
    call nz, Call_02A_4108
    nop
    push bc
    add e
    pop bc
    ld b, $C4
    ld [$4208], sp
    nop
    push bc
    add l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$89C5], sp
    pop bc
    ld [bc], a
    jp nz, $82C6

    ld [$C501], sp
    add e
    pop bc
    ld bc, $84C4
    ld [$C501], sp
    add l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8AC5], sp
    pop bc
    dec b
    call nz, $0808
    ret


    jp $C182


    ld bc, $84C4
    ld [$C501], sp
    add l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8AC5], sp
    pop bc
    ld [bc], a
    jp nz, $82C6

    ld [$C506], sp
    pop bc
    pop bc
    call nz, $0808
    inc bc
    rst $00
    jp nz, $85C2

    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8BC5], sp
    pop bc
    ld b, $C4

Jump_02A_5ED2:
    ld [$C508], sp
    pop bc
    pop bc
    add h
    jp nz, $C187

    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8BC5], sp
    pop bc
    add h
    jp nz, $C18D

    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0004], sp
    ld [$C1C5], sp
    add h
    jp $C197


    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0005], sp
    ld [$C1C5], sp
    call nz, $0882
    ld bc, $97C5
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0005], sp
    ld [$C1C5], sp
    call nz, $0882
    inc bc
    ret


    jp $95C3


    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0004], sp
    ld [$C1C5], sp
    add d
    jp nz, $C604

    ld [$C508], sp
    sub l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$82C5], sp
    pop bc
    ld [bc], a
    jp $82C8


    ld [$C501], sp
    sub l
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$82C5], sp
    pop bc
    dec b
    call nz, $0808
    rst $00
    jp nz, $C195

    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$82C5], sp
    pop bc
    inc b
    call nz, $0808
    push bc
    sub [hl]
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$82C5], sp
    pop bc
    add h
    jp nz, $C186

    adc b
    jp $C188


    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8AC5], sp
    pop bc
    add d
    jp $C805


    ld [$C908], sp
    ret z

    add d
    ld [$C501], sp
    adc b
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8AC5], sp
    pop bc
    ld bc, $88C4
    ld [$C501], sp
    adc b
    pop bc
    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0003], sp
    ld [$8AC5], sp
    pop bc
    dec b
    call nz, $0808
    rst $00
    add $82
    ld [$C703], sp
    jp nz, $88C2

    pop bc
    ld [bc], a
    call nz, $8400
    ld [$008A], sp
    add e
    ld [$0004], sp
    ld [$C3C5], sp
    adc c
    pop bc
    adc b
    jp nz, $C18A

    inc bc
    call nz, $4300
    add e
    ld [$008A], sp
    add e
    ld [$0004], sp
    ld [$C508], sp
    sbc e
    pop bc
    ld [bc], a
    call nz, $8400
    ld [$008A], sp
    add [hl]
    ld [$0082], sp
    add e
    jp $C197


    inc bc
    call nz, RST_08
    add e
    ld [$008A], sp
    add e
    ld [$0084], sp
    add e
    ld [$C901], sp
    sub a
    jp $C803


    ld [$8300], sp
    ld [$008A], sp
    add e
    ld [$0083], sp
    sbc [hl]
    ld [$0001], sp
    add e
    ld [$008A], sp
    add h
    ld [$0082], sp
    add d
    ld [$009D], sp
    add e
    ld [$008A], sp
    xor b
    ld [$008A], sp
    xor b
    ld [$008D], sp
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc d
    nop
    rlca
    ld h, [hl]
    ld [hl], $16
    jr @+$58

    ld sp, $8766
    nop
    inc bc
    db $D3
    call nc, $84D5
    nop
    inc bc
    jp $C5C4


    add a
    nop
    rlca
    ld h, e
    ld d, $48
    ld [$4241], sp
    ld b, e
    add a
    nop
    ld bc, $8537
    nop
    inc bc
    db $D3
    call nc, $85D5
    nop
    add d
    ld [hl-], a
    rrca
    inc sp
    ld h, $39
    ld c, b
    ld [$3163], sp
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    inc sp
    and d
    nop
    ld b, a
    add [hl]
    nop
    ld bc, $8637
    nop
    ld de, $1036
    ld de, $1612
    rla
    ld c, b
    ld [$4241], sp
    ld b, e
    and d
    inc [hl]
    add c
    ld [hl-], a
    inc sp
    ld d, a
    add [hl]
    nop
    ld bc, $8347
    nop
    ld [$C4C3], sp
    push bc
    nop
    jr nz, jr_02A_60F6

    ld [hl+], a
    ld d, $82
    rla
    inc c
    jr jr_02A_6142

    nop
    ld sp, $0706
    ld [$3234], sp
    inc sp
    and $E7
    add d
    nop
    inc bc
    and $E7
    ld d, a
    add e
    nop
    dec b
    db $D3
    call nc, $34D5
    ld b, $82
    rlca

jr_02A_60F6:
    rrca
    ld c, c
    rla
    rla
    jr jr_02A_6141

    ld d, [hl]
    ld b, c
    ld d, $17
    jr jr_02A_6144

    ld b, e
    ld d, [hl]
    or $F7
    add d
    nop
    ld [bc], a
    or $F7
    add d
    nop
    rlca
    jp $C5C4


    scf
    nop
    ld h, e
    ld d, $84
    rla

jr_02A_6117:
    db $10
    jr c, jr_02A_6142

    nop
    ld b, d
    ld b, e
    ld h, $39
    jr jr_02A_6131

    ld de, $3212
    inc sp
    ld [hl-], a
    inc sp
    or c
    add e
    nop
    rlca
    db $D3
    call nc, Call_02A_47D5
    ld h, [hl]
    dec [hl]

jr_02A_6131:
    ld d, $83
    rla
    inc bc
    jr c, jr_02A_615F

    ld d, [hl]
    add e
    nop
    dec d
    add c
    ld d, $18
    jr nz, @+$23

    ld [hl+], a

jr_02A_6141:
    nop

jr_02A_6142:
    ret nz

    pop bc

jr_02A_6144:
    jp nz, $8100

    or c
    ld [hl-], a
    inc sp
    scf
    nop
    ld d, a
    ld d, [hl]
    ld b, $49
    add e
    rla
    add hl, bc
    jr jr_02A_6187

    inc sp
    nop
    jr nc, jr_02A_6159

jr_02A_6159:
    inc [hl]
    ld d, $48
    add d
    rlca
    rrca

jr_02A_615F:
    ld [$D067], sp
    pop de
    jp nc, Jump_02A_5663

    db $10
    ld de, $4712
    add c
    nop
    dec [hl]
    ld d, $83
    rla
    add hl, bc
    jr c, jr_02A_619B

    ld h, e
    nop
    ld sp, $E440
    push hl
    ld d, $83
    rla
    ld b, $18
    nop
    nop
    scf
    nop
    nop
    add hl, bc
    ld d, c
    jr nz, jr_02A_61A8

jr_02A_6187:
    ld [hl+], a
    ld d, a
    db $E4
    push hl
    ld b, $49
    add e
    rla
    add hl, bc
    jr jr_02A_61C7

    jr nc, jr_02A_6117

    ld b, c
    nop
    db $F4
    push af
    ld d, $82
    rla

jr_02A_619B:
    dec b
    jr c, jr_02A_61C6

    db $E4
    push hl
    ld b, a
    add d
    nop
    ld [bc], a
    dec [hl]
    ld b, $82
    rlca

jr_02A_61A8:
    inc b
    ld [$F5F4], sp
    ld d, $83
    rla
    dec d
    jr c, @+$2A

    nop
    ld b, b
    ld [hl-], a
    inc sp
    ld h, a
    jr nc, @+$69

    ld h, $39
    rla
    jr jr_02A_6225

    db $F4
    push af
    ld d, a

jr_02A_61C1:
    nop
    or c
    inc [hl]
    ld d, $82

jr_02A_61C6:
    rla

jr_02A_61C7:
    inc b
    jr @+$58

    ld d, c
    ld h, $83
    daa
    db $10
    jr z, jr_02A_6203

    inc sp
    nop
    db $10
    ld de, $4012
    ld [hl-], a
    inc sp
    ld d, $17
    ld c, b
    ld [$3332], sp
    add d
    nop
    inc bc
    ld d, [hl]
    ld d, c
    ld d, $82
    rla
    jr jr_02A_6201

    ret nz

    pop bc
    jp nz, $6351

    nop
    dec [hl]
    nop

jr_02A_61F1:
    jr nc, @+$69

    jr nz, @+$23

    ld [hl+], a
    ld b, [hl]
    ld sp, $2600
    add hl, sp

jr_02A_61FB:
    rla
    jr jr_02A_61C1

    call nz, $82C5

jr_02A_6201:
    nop
    ld [bc], a

jr_02A_6203:
    inc [hl]
    ld d, $82
    rla
    dec bc
    jr @-$2E

    pop de
    jp nc, $C300

    call nz, $00C5
    ld b, b
    ld b, $83
    rlca
    ld c, $08
    ld b, c
    db $E4
    push hl
    ld h, $27
    jr z, jr_02A_61F1

    call nc, $00D5
    ld h, e
    dec [hl]
    ld d, $82

jr_02A_6225:
    rla
    inc bc
    jr jr_02A_625E

    scf
    add d
    nop
    ld b, $D3
    call nc, $E6D5
    rst $20
    ld d, $83
    rla
    add hl, bc
    jr jr_02A_626A

    db $F4
    push af
    ld b, l
    db $E4
    push hl
    nop
    scf
    add d
    nop
    inc bc
    ld [hl], l
    ld d, [hl]
    ld h, $82
    daa
    inc b
    jr z, jr_02A_61FB

    ld b, a
    ld d, [hl]
    add d
    nop
    ld b, $37
    nop
    or $F7
    ld h, $39
    add d
    rla
    inc bc
    ld c, b
    ld [$8245], sp
    nop
    inc b

jr_02A_625E:
    db $F4
    push af
    nop
    ld b, a
    add e
    nop
    ld [$34B1], sp
    or c
    dec [hl]
    ld d, c

jr_02A_626A:
    nop
    ld d, a
    ld d, [hl]
    add d
    nop
    ld bc, $8347
    nop
    ld [bc], a
    or e
    ld d, $83
    rla
    ld [bc], a
    jr @+$36

    add l
    nop
    ld bc, $8457
    nop

jr_02A_6281:
    ld bc, $8363
    nop
    ld bc, $8363
    nop
    rlca
    ld h, a
    ld d, a
    nop
    inc [hl]
    nop
    dec [hl]
    ld d, $83
    rla
    ld [bc], a
    jr @+$69

    adc e
    nop
    ld bc, $8475
    nop
    add hl, bc
    ld [hl-], a
    inc sp
    dec [hl]

jr_02A_62A0:
    ld b, $07
    ld [$0045], sp
    ld d, $83
    rla
    inc bc
    jr @-$18

    rst $20
    add e
    nop
    ld bc, $89B0
    nop
    dec bc
    db $E4
    push hl
    db $10
    ld de, $1612
    rla
    jr jr_02A_62A0

    push hl
    ld d, $82
    rla
    ld a, [bc]
    jr c, jr_02A_62EB

    or $F7
    nop
    jp $C5C4


    db $E4
    push hl
    add l
    nop

jr_02A_62CD:
    ld de, $0063
    db $F4
    push af
    jr nz, jr_02A_62F5

    ld [hl+], a
    ld d, $17
    jr jr_02A_62CD

    push af
    ld h, $39
    rla
    jr @+$47

    add d
    nop
    add hl, bc

jr_02A_62E2:
    inc [hl]
    db $D3
    call nc, $F4D5
    push af
    or b
    nop
    ld [hl], l

jr_02A_62EB:
    add h
    nop
    inc bc
    ld sp, $0634
    add d
    rlca
    add hl, bc
    ld c, c

jr_02A_62F5:
    jr c, @+$2A

    ld h, a
    nop
    dec [hl]
    ld h, $27
    jr z, jr_02A_6281

    nop
    ld b, $52
    ld b, $07
    ld [$B034], sp
    add l
    nop
    dec b
    db $E4
    push hl
    ld b, c
    nop
    ld d, $82
    rla
    inc de
    jr c, jr_02A_633B

    add c
    jp $C5C4


    nop
    ld b, l
    add c
    nop
    db $E4
    push hl
    ld d, [hl]
    ld d, $17
    jr jr_02A_62E2

    pop bc
    jp nz, $0084

    dec c
    db $F4
    push af
    ld h, a
    ld h, e
    ld d, $17
    jr c, @+$2A

    inc [hl]
    nop
    db $D3

jr_02A_6332:
    call nc, $84D5
    nop
    add hl, bc
    db $F4
    push af
    ld b, $49

jr_02A_633B:
    jr c, @+$2A

    ret nc

    pop de
    jp nc, $0083

    ld a, [bc]
    ret nz

    pop bc
    jp nz, $0645

    ld c, c
    rla
    jr jr_02A_6332

    rst $20
    add d
    nop
    ld bc, $8437
    nop
    add hl, bc
    or b
    ld d, d
    ld b, $49
    rla
    jr jr_02A_63B1

    or b
    scf
    add d
    nop
    inc c
    and e
    nop
    ret nc

    pop de
    jp nc, $1634

    rla
    jr c, @+$2A

    or $F7
    add d
    nop
    ld bc, $8347
    nop
    ld a, [bc]
    jp $C5C4


    ld d, $17
    jr c, @+$2A

    ld d, d
    nop

jr_02A_637C:
    ld b, a
    add l
    nop
    ld [$0037], sp
    and d
    ld h, $27
    jr z, jr_02A_63CC

    ld sp, $0083
    ld bc, $8357
    nop
    ld a, [bc]
    db $D3
    call nc, $16D5
    rla
    jr jr_02A_637C

    rst $20
    nop
    ld d, a
    add l
    nop
    ld [$0047], sp
    inc [hl]
    ld h, e
    nop
    and $E7
    ld b, c

jr_02A_63A4:
    add a
    nop
    ld [$E5E4], sp
    ld b, [hl]
    ld d, $38
    jr z, jr_02A_63A4

    rst $30
    add l
    nop

jr_02A_63B1:
    inc bc
    and e
    nop
    ld d, a
    add h
    nop
    ld [bc], a
    or $F7
    adc b
    nop
    ld a, [bc]
    db $F4
    push af
    ld d, [hl]
    ld d, $18
    inc [hl]
    ld d, [hl]
    or b
    add c
    or b
    adc b
    nop
    nop
    inc hl
    dec sp

jr_02A_63CC:
    ld bc, $1918
    ret


    inc b
    and h
    nop
    and c
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    rla
    sbc l
    ld l, [hl]

jr_02A_63DC:
    ld [bc], a
    jr jr_02A_63DC

    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    sbc l
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    sbc l
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add e
    dec l
    add d
    dec a
    adc b
    dec l
    adc c
    dec a
    ld bc, $832C
    dec a
    add e
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc b
    cpl
    ld c, h
    ld e, c
    dec sp
    add [hl]
    dec a
    ld [bc], a
    ccf
    ld c, h
    adc b
    ld a, h
    dec b
    add hl, sp
    db $FD
    db $FD
    rst $38
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]

jr_02A_642C:
    add d
    dec l
    dec b
    cpl
    nop
    nop
    ld d, [hl]
    ld d, a
    add h
    ld a, h
    ld [bc], a
    ld e, c
    ld e, d
    adc c
    nop
    ld [bc], a
    dec hl
    rst $30
    add d
    db $FD
    dec b
    ld e, [hl]
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    ld l, c
    or e
    or h
    adc [hl]
    nop
    ld [$B2B1], sp
    or d
    daa
    jr z, jr_02A_642C

    db $FD
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    ld l, c
    jp $89C4


    nop
    ld [bc], a
    or b
    or c
    add e
    or d
    add d
    db $FD
    ld bc, $84D2
    ld [c], a
    dec b
    ld e, [hl]
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    rlca
    ld l, c
    jp nc, $00D4

    or b
    push hl
    or h
    add l
    nop
    ld bc, $86E6
    db $FD
    ld [bc], a
    db $E4
    ld c, h
    add d
    ld a, h
    ld [bc], a
    ld c, [hl]
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld [$D269], sp
    call nc, $E600
    db $FD
    call nz, $84B4
    nop
    inc bc
    ldh a, [$E0]
    pop hl
    add e
    ld [c], a
    ld [bc], a
    db $E4
    db $F4
    add h
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld [$D269], sp
    call nc, $F000
    ldh [$E4], a
    ld c, a
    add l
    nop
    ld [bc], a
    ld c, e
    ld c, h
    add d
    ld a, h
    ld [bc], a
    ld c, [hl]
    ld c, a
    add l
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    ld l, c
    jp nc, $82D4

    nop
    ld [bc], a
    ld c, e
    ld c, a
    adc d
    nop
    inc b
    or b
    or c
    or d
    or e
    add e
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    ld l, c
    db $E3
    db $E4
    add e
    nop
    dec b
    or b
    or c
    or d
    or e
    or h
    add l
    nop
    dec b
    or b
    ret nz

    pop bc
    db $FD
    call nc, $0083
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    ld e, a
    ld c, [hl]
    ld c, a
    add e
    nop
    dec b
    ret nz

    pop bc
    jp nz, $C4C3

    add l
    nop
    ld bc, $83C0
    db $FD
    dec b
    call nc, $E5B0
    or h
    dec hl
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $852F
    nop
    inc c
    ret nc

    jp nz, $C2D2

    call nc, $B1B0
    or d
    ld [hl], h
    nop
    ret nc

    jp nc, $FD82

    dec b
    call nc, $FDC0
    call nz, $825E
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc c
    cpl
    nop
    nop
    ld [hl], d
    ld [hl], h
    nop
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    or c
    add e
    db $FD
    ld [bc], a
    or e
    ldh [$83], a
    pop hl
    dec b
    db $E4
    sub d
    db $FD
    sub e
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    inc bc
    cpl
    or b
    or c
    add d
    db $FD
    rlca
    or e
    ld c, e
    ld c, h
    ld a, h
    ld c, [hl]
    ld c, a
    ret nc

    add e
    db $FD
    ld a, [bc]
    call nc, $4C4B
    ld a, h
    ld c, [hl]
    ld c, a
    ldh [$E2], a
    db $E4
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    ret nz

    add e
    db $FD
    ld bc, $85D4
    nop
    ld [bc], a
    ldh [$D1], a
    add d
    db $FD
    ld bc, $85E4
    nop
    inc b
    ld c, e
    ld c, c
    ld c, a
    dec hl
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld b, $5F
    ldh [$E2], a
    pop de
    db $FD
    call nc, $0085
    dec b
    ld c, e
    ldh [$FD], a
    db $E4
    ld c, a
    adc b
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld b, $2F
    nop
    ld l, e
    push bc
    ld [c], a
    db $E4
    add [hl]
    nop
    inc bc
    ld c, e
    ld c, c
    ld c, a
    add [hl]
    nop
    inc b
    or b
    or c
    or d
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld b, $2F
    nop
    nop
    ld l, e
    ld e, c
    ld e, d
    adc a
    nop
    inc b
    ret nz

    pop bc
    jp nz, $825E

    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $8B2F
    nop
    inc bc
    or b
    push hl
    or h
    add [hl]
    nop
    inc b
    ret nc

    jp nz, Jump_02A_5ED2

    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $845F
    or d
    ld bc, $86B3
    nop
    inc bc
    ret nz

    db $FD
    call nz, $0086
    inc b
    ldh [$E1], a
    ld [c], a
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $845F
    db $FD
    ld bc, $86D4
    nop
    inc bc
    ldh [$FD], a
    db $E4
    add d
    nop
    ld [$E5B0], sp
    or h
    nop
    ld c, e
    ld c, h
    ld c, l
    ld e, [hl]
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $845F
    db $FD
    ld bc, $86D4
    nop
    ld [$494B], sp
    ld c, a
    nop
    or b
    ret nz

    db $FD
    sub $84
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $845F
    db $FD
    ld bc, $8AD4
    nop
    inc b
    ld c, e
    ldh [$E4], a
    db $F4
    add h
    nop
    dec b
    dec hl
    dec l
    dec l
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add d
    dec l
    ld bc, $845F
    db $FD
    ld bc, $89C3
    or d
    ld a, [bc]
    or e
    or h
    ld c, e
    ld c, a
    nop
    or b
    or c
    or e
    or h
    dec hl
    add d
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    add e
    dec l
    adc a
    ld l, [hl]
    add h
    dec c
    add h
    ld l, [hl]
    add e
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    sbc l
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    ld e, [hl]
    sbc l
    dec l
    ld [bc], a
    ld e, a
    db $FD
    add d
    nop
    ld [bc], a
    db $FD
    daa
    sbc l
    ld a, $02
    jr z, @-$01

    add d
    nop
    and c
    db $FD
    xor e
    nop
    nop
    ld e, $0E
    ld bc, $1E13
    or b
    inc b
    sub l
    nop
    dec b
    ld d, $3B
    ld bc, $2F3C
    adc e
    nop
    inc b
    rlca
    dec bc
    inc c
    ld c, $8A
    nop
    dec b
    ld h, $3B
    ld bc, $3F3C
    add a
    nop
    add hl, bc
    ld b, e
    ld b, h
    ld b, l
    rlca
    rla
    dec de
    inc e
    ld e, $0E
    adc c
    nop
    dec b
    ld h, $3B
    ld bc, $3F3C
    add l
    nop
    dec bc
    rlca
    dec bc
    ld d, e
    ld d, h
    ld d, l
    rla
    daa
    dec hl
    inc l
    ld l, $1E
    adc c
    nop
    dec b
    ld c, d
    ld c, e
    ld bc, $4D3D
    add h
    nop
    ld [$1726], sp
    dec de
    ld h, e
    ld h, h
    ld h, l
    daa
    scf
    add d
    ld bc, $3E03
    ld l, $0F
    adc c
    nop
    inc bc
    ld c, d
    ld b, a
    ld c, l
    add l
    nop
    rlca
    ld [hl], $27
    dec hl
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add h
    ld bc, $8402
    rra
    sub c
    nop
    ld [bc], a
    ld d, $83
    adc c
    ld bc, $3C02
    cpl
    adc b
    nop
    inc b
    rlca
    dec bc
    inc c
    ld c, $85
    nop
    ld [bc], a
    ld h, $3B
    adc c
    ld bc, $3C02
    ccf
    add h
    nop
    add hl, bc
    ld b, e
    ld b, h
    ld b, l
    rlca
    rla
    dec de
    inc e
    ld e, $0E
    add h
    nop
    ld [bc], a
    ld [hl], $3B
    adc c
    ld bc, $3C02
    cpl
    add e
    nop
    dec bc
    rlca
    ld d, e
    ld d, h
    ld d, l
    rla
    daa
    dec hl
    inc l
    ld l, $1E
    rrca
    add e
    nop
    inc b
    ld h, $3B
    ld bc, $8768
    ld bc, $3C02
    ld c, $82
    nop
    rlca
    ld b, $17
    ld h, e
    ld h, h
    ld h, l
    daa
    scf
    add d
    ld bc, $3E03
    ld l, $1F
    add e
    nop
    ld [bc], a
    ld [hl], $3B
    add e
    ld bc, $6A06
    ld bc, $7901
    ld bc, $0701
    inc a
    ld e, $2F
    nop
    ld d, $27
    ld [hl], e
    add d
    ld [hl], h
    ld bc, $8437
    ld bc, $8402
    cpl
    add e
    nop
    ld [$3B16], sp
    ld bc, $0179
    ld a, d
    ld l, h
    ld l, l
    add e
    ld bc, $C706
    ld l, $0F
    nop
    ld h, $83
    add a
    ld bc, $A903
    inc a
    ccf
    add e
    nop
    ld [bc], a
    ld c, d
    ld a, [hl-]
    add h
    ld bc, $7C03
    ld a, l
    ld l, e
    add e
    ld bc, $8405
    rra
    nop
    ld [hl], $3B
    add l
    ld bc, $AF05
    ld bc, $3CB9
    ld c, $84
    nop
    ld [bc], a
    ld c, d
    ld a, [hl-]
    add l
    ld bc, $7B06
    ld bc, $0168
    inc a
    ccf
    add d
    nop
    ld bc, $853A
    ld bc, $BF06
    ld bc, $3C01
    ld e, $1F
    add h
    nop
    ld [bc], a
    ld c, d
    ld c, e
    adc b
    ld bc, $3D02
    ld c, l
    add d
    nop
    inc b
    ld c, d
    ld b, [hl]
    ld d, a
    ld c, e
    add l
    ld bc, $C703
    ld l, $2F
    add l
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    ld bc, $4C02
    ld c, l
    add [hl]
    nop
    ld [bc], a
    ld e, e
    ld a, [hl-]
    add d
    ld bc, $BB05
    ld bc, $8401
    rra
    add [hl]
    nop
    ld [$564A], sp
    ld d, a
    ld b, [hl]
    ld b, a
    ld c, b

jr_02A_6897:
    ld b, a
    ld c, l
    add h
    nop
    dec b
    rlca
    dec bc
    ld c, $00
    ld h, $85
    ld bc, $3D01
    sub d
    nop
    rlca
    ld [hl], $17
    dec de
    ld e, $0F
    ld e, e
    ld c, e
    add e
    ld bc, $3D02
    ld c, l
    add [hl]
    nop
    ld [$4443], sp
    ld b, l
    rlca
    ld [$0A09], sp
    ld c, $84
    nop
    ld [$2707], sp
    dec hl
    ld l, $1F
    nop
    ld e, e
    ld b, [hl]
    add d
    ld d, a
    ld bc, $864D
    nop
    add hl, bc
    rlca
    ld d, e
    ld d, h
    ld d, l
    rla
    jr jr_02A_68F1

    ld a, [de]
    ld e, $83
    nop
    add hl, bc
    rlca
    rla
    add e
    ld bc, $0E84
    ld b, e
    ld b, h
    ld b, l
    adc b
    nop
    rrca
    ld b, $17
    ld h, e
    ld h, h
    ld h, l
    daa
    jr z, jr_02A_691A

jr_02A_68F1:
    ld a, [hl+]
    ld l, $2F
    nop
    ld d, $17
    daa
    add d
    ld bc, $3C07
    ld e, $53
    ld d, h
    ld d, l
    inc c
    ld c, $86
    nop
    ld b, $16
    daa
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add e
    ld bc, $8406
    rrca
    nop
    ld h, $27
    jr c, jr_02A_6897

    ld bc, $C708
    ld l, $63

jr_02A_691A:
    ld h, h
    ld h, l
    inc e
    ld e, $1F
    add l
    nop
    ld [bc], a
    ld h, $83
    add l
    ld bc, $CF09
    ld bc, $1F3C
    nop
    ld b, $83
    ld bc, $8249
    ld bc, $3E07
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc l
    ld l, $2F
    add l
    nop
    ld [bc], a
    ld [hl], $3B
    add e
    ld bc, $CE09
    ld bc, $01DF
    inc a
    cpl
    nop
    ld d, $3B
    add h
    ld bc, $5A01
    add h
    ld bc, $8402
    ccf
    add l
    nop
    ld [bc], a
    ld d, $3B
    add e
    ld bc, $DE02
    call $0182
    dec b
    inc a
    ccf
    nop
    ld c, d
    ld a, [hl-]
    adc c
    ld bc, $3D02
    ld c, l
    add l
    nop
    inc b
    ld h, $3B
    ld bc, $82CF
    ld bc, $DD05
    ld bc, $4C01
    ld c, l
    add d
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add l
    ld bc, $4C04
    ld b, [hl]
    ld b, a
    ld c, l
    add [hl]
    nop
    inc b
    ld c, d
    ld a, [hl-]
    ld bc, $84DF
    ld bc, $3D02
    ld c, l
    add h
    nop
    rlca
    ld c, d
    ld b, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld c, l
    adc d
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add h
    ld bc, $4C02
    ld c, l
    sub a
    nop
    ld [bc], a
    ld b, $3B
    add d
    ld bc, $3D02
    ld c, l
    add h
    nop
    ld a, [bc]
    rlca
    dec bc
    inc c
    dec c
    dec bc
    inc c
    dec c
    dec bc
    inc c
    ld c, $8A
    nop
    dec b
    ld d, $56
    ld d, a
    ld e, b
    ld c, l
    add h
    nop
    inc c
    rlca
    rla
    dec de
    inc e
    dec e
    dec de
    inc e
    dec e
    dec de
    inc e
    ld e, $0E
    sub c
    nop
    ld c, $07
    rla
    daa
    dec hl
    inc l
    dec l
    dec hl
    inc l
    dec l
    dec hl
    inc l
    ld l, $1E
    ld c, $8C
    nop
    rlca
    ld b, e
    ld b, h
    ld b, l
    rlca
    rla
    daa
    scf
    adc b
    ld bc, $3E04
    ld l, $1E
    ld c, $8A
    nop
    rlca
    rlca
    ld d, e
    ld d, h
    ld d, l
    rla
    daa
    scf
    add d
    ld bc, $5A05
    ld bc, $5901
    ld l, e
    add e
    ld bc, $3E04
    ld l, $1E
    rrca
    adc b
    nop
    rlca
    ld b, $17
    ld h, e
    ld h, h
    ld h, l
    daa
    scf
    add h
    ld bc, $6E04
    ld l, a
    ld bc, $847B
    ld bc, $3E03
    ld l, $0F
    adc b
    nop
    ld b, $16
    daa
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add l
    ld bc, $7E02
    ld a, a
    add a
    ld bc, $8402
    rra
    adc b
    nop
    ld [bc], a
    ld h, $83
    adc [hl]
    ld bc, $5A01
    add e
    ld bc, $3C02
    cpl
    adc b
    nop
    inc bc
    ld [hl], $3B
    ld l, c
    sub c
    ld bc, $4C02
    ld c, l
    adc b
    nop
    ld [bc], a
    ld e, e
    ld a, [hl-]
    add e
    ld bc, $6901
    adc b
    ld bc, $3D03
    ld d, [hl]
    ld a, [hl-]
    add d
    ld bc, $3D02
    ld c, l
    adc d
    nop
    inc de
    ld e, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, b
    ld d, [hl]
    ld d, a
    ld c, l
    ld e, e
    ld b, $3B
    inc a
    cpl
    sbc d
    nop
    inc b
    ld d, $3B
    inc a
    ccf
    adc h
    nop
    nop
    ld e, $0E
    ld bc, $1E13
    or b
    inc b
    sub l
    nop
    dec b
    ld d, $3B
    ld bc, $2F3C
    adc e
    nop
    inc b
    rlca
    dec bc
    inc c
    ld c, $8A
    nop
    dec b
    ld h, $3B
    ld bc, $3F3C
    add a
    nop
    add hl, bc
    ld b, e
    ld b, h
    ld b, l
    rlca
    rla
    dec de
    inc e
    ld e, $0E
    adc c
    nop
    dec b
    ld h, $3B
    ld bc, $3F3C
    add l
    nop
    dec bc
    rlca
    dec bc
    ld d, e
    ld d, h
    ld d, l
    rla
    daa
    dec hl
    inc l
    ld l, $1E
    adc c
    nop
    dec b
    ld d, $3B
    ld bc, $4D3D
    add h
    nop
    ld [$1726], sp
    dec de
    ld h, e
    ld h, h
    ld h, l
    daa
    scf
    add d
    ld bc, $3E03
    ld l, $0F
    adc b
    nop
    inc b
    ld h, $3B
    inc a
    ccf
    add l
    nop
    rlca
    ld [hl], $27
    dec hl
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add h
    ld bc, $8402
    rra
    adc b
    nop
    inc b
    ld [hl], $3B
    inc a
    ccf
    add l
    nop
    ld [bc], a
    ld d, $83
    adc c
    ld bc, $3C02
    cpl
    adc b
    nop
    inc b
    rlca
    dec sp
    inc a
    ld c, $85
    nop
    ld [bc], a
    ld h, $3B
    adc c
    ld bc, $3C02
    ld c, $84
    nop
    add hl, bc
    ld b, e
    ld b, h
    ld b, l
    rlca
    rla
    dec sp
    inc a
    ld e, $0E
    add h
    nop
    ld [bc], a
    ld [hl], $3B
    adc c
    ld bc, $3C03
    ld e, $0E
    add d
    nop
    dec bc
    rlca
    ld d, e
    ld d, h
    ld d, l
    rla
    daa
    add $C7
    ld l, $1E
    rrca
    add e
    nop
    inc b
    ld h, $3B
    ld bc, $8868
    ld bc, $2E0A
    ld e, $0B
    inc c
    rla
    ld h, e
    ld h, h
    ld h, l
    daa
    scf
    add d
    ld bc, $3903
    ld l, $1F
    add e
    nop
    ld [bc], a
    ld [hl], $3B
    add e
    ld bc, $6A04
    ld bc, $7901
    add e
    ld bc, $3906
    ld l, $1B
    inc e
    daa
    ld [hl], e
    add d
    ld [hl], h
    ld bc, $8437
    ld bc, $8402
    cpl
    add e
    nop
    ld [$3B16], sp
    ld bc, $0179
    ld a, d
    ld l, h
    ld l, l
    add l
    ld bc, $3E04
    dec hl
    inc l
    scf
    add a
    ld bc, $A903
    inc a
    ccf
    add e
    nop
    ld [bc], a
    ld c, d
    ld a, [hl-]
    add h
    ld bc, $7C03
    ld a, l
    ld l, e
    adc l
    ld bc, $AF05
    ld bc, $3CB9
    ld c, $84
    nop
    ld [bc], a
    ld c, d
    ld a, [hl-]
    add l
    ld bc, $7B03
    ld bc, $8268
    ld bc, $4C04
    ld b, [hl]
    ld d, a
    ld a, [hl-]
    add l
    ld bc, $BF06
    ld bc, $3C01
    ld e, $1F
    add h
    nop
    ld [bc], a
    ld c, d
    ld c, e
    adc b
    ld bc, $3D02
    ld c, l
    add d
    nop
    ld [bc], a
    ld c, d
    dec sp
    add a
    ld bc, $C703
    ld l, $2F
    add l
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    ld bc, $4C02
    ld c, l
    add e
    nop
    dec b
    ld h, $3B
    ld bc, $3A4C
    add d
    ld bc, $BB05
    ld bc, $8401
    rra
    add [hl]
    nop
    ld [$564A], sp
    ld d, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, a
    ld c, l
    add h
    nop
    ld b, $36
    dec sp
    inc a
    rra
    ld h, $3B
    add h
    ld bc, $3D01
    sub d
    nop
    rlca
    ld [hl], $17
    dec sp
    inc a
    rrca
    ld e, e
    ld c, e
    add e
    ld bc, $3D02
    ld c, l
    add [hl]
    nop
    ld [$4443], sp
    ld b, l
    rlca
    ld [$0A09], sp
    ld c, $84
    nop
    ld [$2707], sp
    add $3C
    rra
    nop
    ld e, e
    ld b, [hl]
    add d
    ld d, a
    ld bc, $864D
    nop
    dec d
    rlca
    ld d, e
    ld d, h
    ld d, l
    rla
    jr jr_02A_6C4D

    ld a, [de]
    ld e, $0B
    inc c
    dec c
    inc c
    rla
    add e
    ld bc, $0E3C
    ld b, e
    ld b, h
    ld b, l
    adc b
    nop
    rrca
    ld b, $17
    ld h, e
    ld h, h
    ld h, l
    daa
    jr z, jr_02A_6C76

jr_02A_6C4D:
    ld a, [hl+]
    ld l, $1B
    inc e
    dec e
    inc e
    daa
    add d
    ld bc, $3C07
    ld e, $53
    ld d, h
    ld d, l
    inc c
    ld c, $86
    nop
    ld b, $16
    daa
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add e
    ld bc, $3E06
    dec hl
    inc l
    dec l
    inc l
    scf
    add d
    ld bc, $C708
    ld l, $63

jr_02A_6C76:
    ld h, h
    ld h, l
    inc e
    ld e, $1F
    add l
    nop
    ld [bc], a
    ld h, $83
    add l
    ld bc, $CF01
    add a
    ld bc, $490A
    ld bc, $3E01
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc l
    ld l, $2F
    add l
    nop
    ld [bc], a
    ld [hl], $3B
    add e
    ld bc, $CE03
    ld bc, $8ADF
    ld bc, $5A01
    add h
    ld bc, $8402
    ccf
    add l
    nop
    ld [bc], a
    ld d, $3B
    add e
    ld bc, $DE02
    call $0183
    inc b
    ld c, h
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    adc c
    ld bc, $3D02
    ld c, l
    add l
    nop
    inc b
    ld h, $3B
    ld bc, $82CF
    ld bc, $DD05
    ld bc, $3C01
    cpl
    add d
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add l
    ld bc, $4C04
    ld b, [hl]
    ld b, a
    ld c, l
    add [hl]
    nop
    inc b
    ld c, d
    ld a, [hl-]
    ld bc, $85DF
    ld bc, $3C02
    ld c, $83
    nop
    rlca
    ld c, d
    ld b, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld c, l
    adc d
    nop
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    ld bc, $3C03
    ld e, $0E
    sub h
    nop
    ld [bc], a
    ld b, $3B
    add d
    ld bc, $3D10
    ld a, [hl-]
    ld bc, $2EC7
    ld e, $0C
    dec bc
    inc c
    dec c
    dec bc
    inc c
    dec c
    dec bc
    inc c
    ld c, $8A
    nop
    dec d
    ld d, $56
    ld d, a
    ld e, b
    ld c, l
    ld c, d
    ld c, e
    ld bc, $2E39
    inc e
    dec de
    inc e
    dec e
    dec de
    inc e
    dec e
    dec de
    inc e
    ld e, $0E
    sub b
    nop
    rrca
    ld c, e
    ld bc, $2C3E
    dec hl
    inc l
    dec l
    dec hl
    inc l
    dec l
    dec hl
    inc l
    ld l, $1E
    ld c, $8C
    nop
    dec b
    ld b, e
    ld b, h
    ld b, l
    rlca
    dec sp
    adc d
    ld bc, $3E04
    ld l, $1E
    ld c, $8A
    nop
    ld b, $07
    ld d, e
    ld d, h
    ld d, l
    rla
    dec sp
    add e
    ld bc, $5A05
    ld bc, $5901
    ld l, e
    add e
    ld bc, $3E04
    ld l, $1E
    rrca
    adc b
    nop
    ld b, $06
    rla
    ld h, e
    ld h, h
    ld h, l
    daa
    add l
    ld bc, $6E04
    ld l, a
    ld bc, $847B
    ld bc, $3E03
    ld l, $0F
    adc b
    nop
    ld b, $16
    daa
    ld [hl], e
    ld [hl], h
    ld [hl], l
    scf
    add d
    ld bc, $6905
    ld bc, $7E01
    ld a, a
    add a
    ld bc, $8402
    rra
    adc b
    nop
    ld [bc], a
    ld h, $83
    add a
    ld bc, $5901
    add [hl]
    ld bc, $5A01
    add e
    ld bc, $3C02
    cpl
    adc b
    nop
    inc bc
    ld [hl], $3B
    ld l, c
    sub c
    ld bc, $4C02
    ld c, l
    adc b
    nop
    ld [bc], a
    ld e, e
    ld a, [hl-]
    add e
    ld bc, $6901
    adc b
    ld bc, $3D03
    ld d, [hl]
    ld a, [hl-]
    add d
    ld bc, $3D02
    ld c, l
    adc d
    nop
    inc de
    ld e, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, b
    ld d, [hl]
    ld d, a
    ld c, l
    ld e, e
    ld b, $3B
    inc a
    cpl
    sbc d
    nop
    inc b
    ld d, $3B
    inc a
    ccf
    adc h
    nop
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc d
    nop
    rlca
    ld h, [hl]
    ld [hl], $16
    jr @+$58

    ld sp, $8766
    nop
    inc bc
    db $D3
    call nc, $84D5
    nop
    inc bc
    jp $C5C4


    add a
    nop
    rlca
    ld h, e
    ld d, $48
    ld [$4241], sp
    ld b, e
    add a
    nop
    ld bc, $8537
    nop
    inc bc
    db $D3
    call nc, $85D5
    nop
    add d
    ld [hl-], a
    rrca
    inc sp
    ld h, $39
    ld c, b
    ld [$3163], sp
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    inc sp
    and d
    nop
    ld b, a
    add [hl]
    nop
    ld bc, $8637
    nop
    ld de, $1036
    ld de, $1612
    rla
    ld c, b
    ld [$4241], sp
    ld b, e
    and d
    inc [hl]
    add c
    ld [hl-], a
    inc sp
    ld d, a
    add [hl]
    nop
    ld bc, $8347
    nop
    ld [$C4C3], sp
    push bc
    nop
    jr nz, jr_02A_6E68

    ld [hl+], a
    ld d, $82
    rla
    inc c
    ld c, b
    ld [$3100], sp
    ld b, $07
    ld [$3234], sp
    inc sp
    and $E7
    add d
    nop
    inc bc
    and $E7
    ld d, a
    add e
    nop
    dec b
    db $D3
    call nc, $34D5
    ld b, $82
    rlca

jr_02A_6E68:
    ld bc, $8349
    rla
    dec bc
    ld c, b
    rlca
    rlca
    ld c, c
    rla
    jr @+$44

    ld b, e
    ld d, [hl]
    or $F7
    add d
    nop
    ld [bc], a
    or $F7
    add d
    nop
    rlca
    jp $C5C4


    scf
    nop
    ld h, e
    ld d, $84

jr_02A_6E88:
    rla
    ld bc, $8438
    daa
    dec bc
    add hl, sp
    rla
    jr jr_02A_6EA2

    ld de, $3212
    inc sp
    ld [hl-], a
    inc sp
    or c
    add e
    nop
    rlca
    db $D3
    call nc, Call_02A_47D5
    ld h, [hl]
    dec [hl]

jr_02A_6EA2:
    ld d, $83
    rla
    dec de
    jr c, jr_02A_6ED0

    ld d, [hl]
    nop
    inc [hl]
    dec [hl]
    ld h, $39
    jr jr_02A_6ED0

    ld hl, $0022
    ret nz

    pop bc
    jp nz, $8100

    or c
    ld [hl-], a
    inc sp
    scf
    nop
    ld d, a
    ld d, [hl]
    ld b, $49
    add e
    rla
    add hl, bc
    jr jr_02A_6EF8

    inc sp
    nop
    jr nc, jr_02A_6ECA

jr_02A_6ECA:
    inc [hl]
    ld d, $48
    add d
    rlca
    rrca

jr_02A_6ED0:
    ld [$D067], sp
    pop de
    jp nc, Jump_02A_5663

    db $10
    ld de, $4712
    add c
    nop
    dec [hl]
    ld d, $83
    rla
    add hl, bc
    jr c, jr_02A_6F0C

    ld h, e
    nop
    ld sp, $E440
    push hl
    ld d, $83
    rla
    ld b, $18
    nop
    nop
    scf
    nop
    nop
    add hl, bc
    ld d, c
    jr nz, jr_02A_6F19

jr_02A_6EF8:
    ld [hl+], a
    ld d, a
    db $E4
    push hl
    ld b, $49
    add e
    rla
    add hl, bc
    jr jr_02A_6F38

    jr nc, jr_02A_6E88

    ld b, c
    nop
    db $F4
    push af
    ld d, $82
    rla

jr_02A_6F0C:
    dec b
    jr c, jr_02A_6F37

    db $E4
    push hl
    ld b, a
    add d
    nop
    ld [bc], a
    dec [hl]
    ld b, $82
    rlca

jr_02A_6F19:
    inc b
    ld [$F5F4], sp
    ld d, $83
    rla
    dec d
    jr c, @+$2A

    nop
    ld b, b
    ld [hl-], a
    inc sp
    ld h, a
    jr nc, @+$69

    ld h, $39
    rla
    jr @+$69

    db $F4
    push af
    ld d, a
    nop

jr_02A_6F33:
    or c
    inc [hl]
    ld d, $82

jr_02A_6F37:
    rla

jr_02A_6F38:
    inc b
    jr @+$58

    ld d, c
    ld h, $83
    daa
    db $10
    jr z, jr_02A_6F74

    inc sp
    nop
    db $10
    ld de, $4012
    ld [hl-], a
    inc sp
    ld d, $17

jr_02A_6F4C:
    ld c, b
    ld [$3332], sp
    add d
    nop
    inc bc
    ld d, [hl]
    ld d, c
    ld d, $82
    rla
    ld [de], a
    jr @-$3E

    pop bc
    jp nz, $C051

    pop bc
    jp nz, $3000

jr_02A_6F63:
    ld h, a
    jr nz, jr_02A_6F87

    ld [hl+], a
    ld b, [hl]
    ld sp, $1600
    add d
    rla
    inc b

Jump_02A_6F6E:
    jr jr_02A_6F33

    call nz, $82C5
    nop

jr_02A_6F74:
    ld [bc], a
    inc [hl]
    ld d, $82
    rla
    dec bc
    jr jr_02A_6F4C

    pop de
    jp nc, $D000

    pop de
    jp nc, Jump_02A_4035

    ld b, $83
    rlca

jr_02A_6F87:
    ld c, $08
    ld b, c
    ld b, $49
    jr c, jr_02A_6FB5

    jr z, jr_02A_6F63

    call nc, $00D5
    ld h, e
    dec [hl]
    ld d, $82
    rla
    ld bc, $8948
    rlca
    ld bc, $8349
    rla
    add hl, bc
    ld c, b
    rlca
    ld c, c
    jr c, jr_02A_6FCE

    db $E4
    push hl
    nop
    scf
    add d
    nop
    inc bc
    ld [hl], l
    ld d, [hl]
    ld h, $8C
    daa
    ld bc, $8539

jr_02A_6FB5:
    rla
    rlca
    jr c, jr_02A_6FE1

    inc [hl]
    db $F4
    push af
    nop
    ld b, a
    add e
    nop
    db $10
    or c
    inc [hl]
    or c
    dec [hl]
    ld d, c
    nop
    ld h, a
    ld d, [hl]
    inc [hl]
    nop
    db $E4
    push hl
    nop

jr_02A_6FCE:
    inc [hl]
    ld h, $39
    add e
    rla
    inc b
    jr c, jr_02A_6FFE

    and $E7
    add e
    nop
    ld bc, $8457
    nop
    ld b, $63

jr_02A_6FE0:
    nop

jr_02A_6FE1:
    and $E7
    ld h, e
    inc [hl]
    add d
    nop
    rlca
    ld h, a
    db $F4
    push af
    inc [hl]
    nop
    dec [hl]
    ld d, $83
    rla
    inc b
    jr jr_02A_705B

    or $F7
    adc c
    nop

jr_02A_6FF8:
    inc bc
    ld [hl], l
    or $F7
    add d
    nop

jr_02A_6FFE:
    add hl, bc
    ld [hl-], a
    inc sp
    dec [hl]

jr_02A_7002:
    ld b, $07
    ld [$0045], sp
    ld d, $83
    rla
    inc bc
    jr @-$18

    rst $20
    add e
    nop
    ld bc, $89B0
    nop
    dec bc
    db $E4
    push hl
    db $10
    ld de, $1612
    rla
    jr jr_02A_7002

    push hl
    ld d, $82
    rla
    ld a, [bc]
    jr c, jr_02A_704D

    or $F7
    nop
    jp $C5C4


    db $E4
    push hl
    add l
    nop
    ld a, [bc]
    ld h, e
    nop
    db $F4
    push af
    jr nz, jr_02A_7057

    ld [hl+], a
    ld d, $17
    ld c, b
    add d
    rlca
    dec b
    ld c, c
    rla
    rla
    jr @+$47

    add d
    nop
    add hl, bc

jr_02A_7045:
    inc [hl]
    db $D3
    call nc, $F4D5
    push af
    or b
    nop

jr_02A_704D:
    ld [hl], l
    add h
    nop
    inc bc
    ld sp, $0634
    add d
    rlca
    ld [bc], a

jr_02A_7057:
    ld c, c
    jr c, jr_02A_6FE0

    daa

jr_02A_705B:
    ld bc, $8328
    nop
    ld b, $52
    ld b, $07
    ld [$B034], sp
    add d
    nop
    ld [$E7E6], sp
    nop
    db $E4
    push hl
    ld b, c
    nop
    ld d, $82
    rla
    ld h, $38
    jr z, jr_02A_6FF8

    jp $C5C4


    nop
    ld b, l
    add c
    nop
    db $E4
    push hl
    ld d, [hl]
    ld d, $17
    jr jr_02A_7045

    pop bc
    jp nz, $F600

    rst $30
    nop
    db $F4
    push af
    ld h, a
    ld h, e
    ld d, $17
    jr c, jr_02A_70BB

    inc [hl]
    nop
    db $D3
    call nc, $E6D5
    rst $20
    add d
    nop
    add hl, bc
    db $F4
    push af
    ld b, $49
    jr c, @+$2A

    ret nc

    pop de
    jp nc, $0083

    ld a, [de]
    ret nz

    pop bc
    jp nz, $0645

    ld c, c
    rla
    ld c, b
    ld [$34E7], sp
    nop
    scf
    nop
    or $F7
    inc [hl]
    dec [hl]

jr_02A_70BB:
    ld d, d
    ld b, $49
    rla
    jr jr_02A_7117

    or b
    scf
    add d
    nop
    rlca
    and e
    nop
    ret nc

    pop de
    jp nc, $1634

    add e
    rla
    ld bc, $8A48
    rlca
    rlca
    ld c, c
    rla
    jr c, jr_02A_7100

    ld d, d
    nop
    ld b, a
    add l
    nop
    inc b
    scf
    nop
    and d
    ld h, $8D
    daa
    ld [$1739], sp
    rla
    jr @-$18

    rst $20
    nop
    ld d, a
    add l
    nop
    rla
    ld b, a
    nop
    inc [hl]
    ld h, e
    nop
    and $E7
    jr nc, jr_02A_70F9

jr_02A_70F9:
    ld sp, $E7E6
    nop
    dec [hl]
    nop
    db $E4

jr_02A_7100:
    push hl
    ld h, $39
    jr c, jr_02A_712D

    or $F7
    add l
    nop
    inc bc
    and e
    nop
    ld d, a
    add h
    nop
    rlca
    or $F7
    ld b, b
    nop
    ld b, c
    or $F7

jr_02A_7117:
    add e
    nop
    ld a, [bc]
    db $F4
    push af
    ld d, [hl]
    ld d, $18
    inc [hl]
    ld d, [hl]
    or b
    add c
    or b
    adc b
    nop
    nop
    ld [hl-], a
    jp nz, $2701

    ld e, $D0

jr_02A_712D:
    rlca
    add [hl]
    ld e, $01
    ret


    add e
    ld l, $01
    ret z

    sub e
    ld e, $01
    ret


    add l
    ld l, $01
    ret z

    add e
    ld e, $8A
    nop
    add e
    ld e, $04
    ret


    ld l, $2E
    cpl
    add e
    ld a, $01
    dec l
    sub e
    ld l, $01
    cpl
    add l
    ld a, $02
    dec l
    ret z

    add d
    ld e, $8A
    nop
    add d
    ld e, $02
    ret


    cpl
    add d
    ld a, $05
    ccf
    rst $18
    rst $18
    ld [$933D], a
    ld a, $02
    ccf
    call Call_02A_4E84
    ld [bc], a
    dec a
    dec e
    add d
    ld e, $8A
    nop
    add d
    ld e, $02
    rra
    ccf
    add d
    ld c, [hl]
    dec b
    ld a, [hl]
    ld a, a
    rst $38
    rst $18
    inc l
    sub e
    ld c, [hl]
    ld [bc], a
    ld c, a
    adc $82
    jr z, jr_02A_718E

    ei
    jr z, jr_02A_71DA

    dec e

jr_02A_718E:
    add d
    ld e, $8A
    nop
    add d
    ld e, $02
    rra
    dec hl
    add d
    rst $18
    ld [bc], a
    adc [hl]
    adc a
    add d
    jr z, @-$69

    ld [hl], a
    ld bc, $84DE
    jr z, jr_02A_71A7

    add hl, hl
    dec e

jr_02A_71A7:
    add d
    ld e, $8A
    nop
    add d
    ld e, $04
    rra
    ld h, [hl]
    ld a, [hl]
    ld a, a
    add d
    rst $18
    ld bc, $9628
    ld [hl], a
    add d
    jr z, jr_02A_71C0

    ld [$DFCF], a
    dec c
    ret c

jr_02A_71C0:
    add d
    ld e, $8A
    nop
    add d
    ld e, $04
    rra
    rst $18
    adc [hl]
    adc a
    sbc e
    ld [hl], a
    add d
    jr z, jr_02A_71D2

    ld d, a
    dec e

jr_02A_71D2:
    add e
    ld e, $8A
    nop
    add d
    ld e, $04
    rra

jr_02A_71DA:
    ld l, h
    ld [$9D6C], a
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add d
    ld e, $03
    rra
    ld e, [hl]
    ld e, a
    sbc [hl]
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add d
    ld e, $03

jr_02A_71F8:
    rra
    ld l, [hl]
    ld l, a
    sbc [hl]
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e

jr_02A_7201:
    ld e, $8A
    nop
    add d
    ld e, $03
    reti


    rrca
    jr z, @-$75

    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    add a
    ld [hl], a
    ld [bc], a
    ld a, [hl]

jr_02A_7213:
    ld a, a
    adc d
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A

jr_02A_721C:
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc c
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    add a
    ld [hl], a
    inc b
    adc [hl]
    adc a
    rst $18
    ld [$7788], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    adc d
    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    adc b
    ld [hl], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    adc b
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc d
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    adc b
    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    adc b
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc e
    ld [hl], a
    inc bc
    ld e, l
    rst $18
    jr z, jr_02A_71F8

    ld [hl], a
    ld [bc], a
    rst $18
    adc $82
    jr z, jr_02A_7201

    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc e
    ld [hl], a
    inc bc
    ld l, l
    rst $38
    jr z, jr_02A_7213

    ld [hl], a
    inc b
    db $DB
    sbc $FF
    jr z, jr_02A_721C

    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    adc h
    ld [hl], a
    ld [bc], a
    ld l, h
    adc $85
    ld [hl], a
    inc b
    db $EB
    rst $18
    ld e, [hl]
    ld e, a
    add a
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc h
    ld [hl], a
    ld [bc], a
    ld [$85DE], a
    ld [hl], a
    inc b
    ld e, l
    jp c, Jump_02A_6F6E

    add a
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    adc l
    ld [hl], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    add h
    ld [hl], a
    ld [bc], a
    ld l, l
    ld e, h
    adc c
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc l
    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    adc a
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    sbc [hl]
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    sbc [hl]
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    add e
    ld [hl], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    sbc c
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    add e
    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    sbc c
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    add l
    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    sub a
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    add l
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    sub a
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    add h
    ld [hl], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    sbc b
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    add h
    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    sbc b
    ld [hl], a
    ld [bc], a
    ld d, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    sbc [hl]
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld d, [hl]
    adc [hl]
    ld [hl], a
    ld [bc], a
    ld e, l
    jp c, $7782

    ld [bc], a
    call c, $8AEA
    ld [hl], a

jr_02A_73A9:
    inc bc
    ld d, a
    dec l
    ret z

    add d
    ld e, $8A
    nop
    add e
    ld e, $02
    rra
    ld h, [hl]
    adc h
    ld [hl], a
    ld [$5F5E], sp
    ld l, l
    ld e, h
    call $ECCF
    rst $18
    adc d
    ld [hl], a
    inc bc
    inc d
    dec a
    dec e
    add d
    ld e, $8A
    nop
    add e
    ld e, $02
    reti


    rrca
    adc h
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    add d
    ld [hl], a
    ld [bc], a
    db $DD
    ld e, h
    adc h
    ld [hl], a
    inc bc
    jr z, jr_02A_742C

    dec e
    add d
    ld e, $8A
    nop
    add h
    ld e, $02
    cpl
    ld h, [hl]
    sbc l
    ld [hl], a
    inc bc
    jr z, @+$01

    dec e
    add d
    ld e, $8A
    nop
    add d
    ld e, $04
    ret


    cpl
    ccf
    ld c, a
    sbc l
    ld [hl], a
    inc bc
    jr z, jr_02A_7456

    dec e
    add d
    ld e, $8A
    nop
    add d
    ld e, $02
    rra
    ccf
    add d
    rst $08
    add d
    jr z, jr_02A_73A9

    ld [hl], a
    inc bc
    jr z, jr_02A_741F

    ret c

    add d
    ld e, $8A
    nop
    add d
    ld e, $02
    rra
    ld c, a
    add e
    jr z, jr_02A_7422

jr_02A_741F:
    rst $08
    dec c
    rrca

jr_02A_7422:
    sbc c
    ld [hl], a
    ld [bc], a
    ld h, a
    dec e
    add e
    ld e, $8A
    nop
    add d

jr_02A_742C:
    ld e, $01
    rra
    add e
    jr z, jr_02A_7437

    ld [$1DCF], a
    reti


    rrca

jr_02A_7437:
    sbc b
    jr z, jr_02A_743C

    dec c
    ret c

jr_02A_743C:
    add e
    ld e, $8A
    nop
    add d
    ld e, $02
    reti


    rrca
    add d
    jr z, jr_02A_744D

    rst $08
    dec c
    ret c

    ld e, $D9

jr_02A_744D:
    sbc b
    ld c, $01
    ret c

    add h
    ld e, $8A
    nop
    add e

jr_02A_7456:
    ld e, $01
    reti


    add e
    ld c, $01
    ret c

    and b
    ld e, $8A
    nop
    xor b
    ld e, $91
    nop
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    add h
    ld e, c
    add d
    rrca
    sub b
    ld e, c
    ld bc, $8727
    ld l, $85
    ld e, c
    inc b
    rrca
    ld c, $0E
    rrca
    add e
    ld e, c
    ld b, $27
    ld l, $2E
    sub [hl]
    sub a
    sbc b
    add e
    ld e, c
    ld [bc], a
    rra
    cpl
    add a
    ld a, $02
    ld e, c
    daa
    add e
    ld l, $03
    ld h, $0E
    ld c, $82
    rrca
    add d
    ld e, c
    rlca
    cpl
    ld a, $3E
    and [hl]
    and a
    xor b
    dec e
    add d
    ld e, c
    dec bc
    rra
    ccf
    add hl, hl
    adc [hl]
    ld l, d
    ld c, l
    ld e, [hl]
    ld c, a
    adc [hl]
    daa
    cpl
    add e
    ld a, $0E
    dec l
    ld h, $59
    rra
    ld e, c
    rrca
    rra
    ccf
    add hl, hl
    sbc e
    or [hl]
    or a
    cp b
    dec l
    add d
    ld l, $06
    cpl
    adc [hl]
    adc [hl]
    ld c, l
    ld e, [hl]
    ld e, [hl]
    dec b
    ld l, [hl]
    ld e, [hl]
    add hl, hl
    cpl
    ccf
    add e
    ld e, c
    dec b
    dec a
    dec l
    ld l, $2F
    ld e, c
    add d
    rra
    rlca
    adc [hl]
    ld c, l
    ld e, [hl]
    ld c, a
    ld c, l
    ld c, a
    dec a
    add d
    ld a, $03
    ccf
    adc [hl]
    dec c
    add [hl]
    ld c, $01
    ccf
    add h
    ld l, $05
    ld h, $3D
    ld a, $3F
    ld e, c
    add d
    rra
    ld bc, $834D
    ld e, [hl]
    add d
    ld e, a
    add h
    adc [hl]
    ld [bc], a
    dec c
    dec e
    add d
    ld e, c
    ld bc, $831E
    ld e, c
    ld bc, $842F
    ld a, $01
    dec l
    add h
    ld l, $09
    cpl
    rra
    ld l, l
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld e, a
    ld l, a
    dec c
    add e
    ld c, $02
    ld e, c
    dec l
    add l
    ld l, $02
    ld h, $3F
    add h
    ld e, c
    ld bc, $843D
    ld a, $09
    ccf
    ld e, c
    rrca
    adc [hl]
    adc h
    ld l, l
    ld e, [hl]
    adc [hl]
    dec e
    add h
    ld e, c
    ld bc, $853D
    ld a, $07
    dec l
    ld e, c
    ld e, c
    ld l, $96
    sub a
    sbc b
    add d
    ld e, c
    ld bc, $848E
    ld e, c
    add d
    ld c, $08
    rrca
    ld l, l
    ld c, a
    dec l
    ld l, $26
    ld e, c
    daa
    add d
    ld l, $0B
    sub [hl]
    sub a
    sbc b
    ld e, c
    dec a
    ld e, c
    rra
    ld a, $A6
    and a
    xor b
    add e
    ld l, $01
    ld h, $85
    ld e, c
    ld [$8E1F], sp
    ld e, c
    dec a
    ld a, $2D
    ld l, $2F
    add d
    ld a, $04
    and [hl]
    and a
    xor b
    dec e
    add d
    ld e, c
    dec b
    rra
    add hl, hl
    or [hl]
    or a
    cp b
    add e
    ld a, $04
    dec l
    ld h, $59
    ld [hl], a
    add e
    ld e, c
    dec c
    rrca
    adc [hl]
    ld e, c
    adc [hl]
    dec a
    ld a, $3F
    adc [hl]
    ld l, d
    or [hl]
    or a
    cp b
    dec e
    add d
    ld e, c
    ld bc, $831F
    adc [hl]
    ld [$5E4D], sp
    ld l, l
    adc [hl]
    dec a
    dec l
    ld l, $26
    add h
    ld e, c
    ld [bc], a
    ld c, $0F
    add h
    adc [hl]
    ld b, $4D
    ld c, a
    ld c, l
    ld e, [hl]
    ld e, c
    dec e
    add d
    ld e, c
    inc bc
    rra
    ld a, e
    ld c, l
    add e
    ld e, [hl]
    ld [$8E6F], sp
    adc [hl]
    dec a
    ld a, $2D
    ld l, $26
    add h
    ld e, c
    add d
    ld c, $02
    rrca
    ld c, l
    add h
    ld e, [hl]
    ld bc, $830D
    ld e, c
    dec b
    rra
    adc [hl]
    ld e, l
    ld e, [hl]
    ld l, a
    add h
    adc [hl]
    ld [$4E4D], sp
    dec a
    ld a, $2D
    ld l, $26
    ld [hl], a
    add h
    ld e, c
    ld [bc], a
    rrca
    ld l, l
    add d
    ld e, [hl]
    ld [bc], a
    ld l, a
    dec e
    add h
    ld e, c
    ld de, $8E0F
    ld l, l
    ld e, [hl]
    adc [hl]
    dec c
    rrca
    adc h
    ld e, l
    ld e, [hl]
    ld l, l
    adc [hl]
    dec a
    ld a, $2D
    ld l, $26
    add e
    ld e, c
    rlca
    rra
    ld e, c
    sbc e
    ld e, [hl]
    ld c, a
    dec l
    ld h, $84
    ld e, c
    inc b
    rrca
    add hl, hl
    adc [hl]
    dec c
    add d
    ld e, c
    dec b
    rrca
    ld e, c
    ld l, l
    ld e, c
    ld e, d
    add d
    adc [hl]
    dec b
    dec a
    ld a, $2D
    ld l, $26
    add d
    ld e, c
    rlca
    rrca
    ld e, c
    ld l, l
    ld l, a
    dec a
    dec e
    dec c
    add h
    ld e, c
    ld [bc], a
    rrca
    ld c, $84
    ld e, c
    inc c
    ld c, $0F
    ld c, [hl]
    ld c, a
    ld e, c

jr_02A_7638:
    ld c, l
    ld c, a
    adc [hl]
    dec a
    ld a, $2D
    ld h, $82
    ld e, c
    inc bc
    ld c, $0F
    adc [hl]
    add d
    dec c
    add l
    ld e, c
    ld bc, $871F
    ld e, c
    add d
    ld c, $08
    rrca
    ld l, l
    ld l, [hl]
    adc [hl]
    ld c, l
    adc [hl]
    dec a
    dec l
    add e
    ld e, c
    ld [bc], a
    rra
    adc [hl]
    add d
    dec e
    add h
    ld e, c
    ld [bc], a
    daa
    cpl
    adc d
    ld e, c
    add d
    ld c, $0A
    rrca
    ld e, e
    adc [hl]
    ld e, d
    dec a
    sub [hl]
    sub a
    sbc b
    cpl
    adc [hl]
    add d
    dec e
    add e
    ld e, c
    inc b
    daa
    cpl
    ccf
    daa
    add [hl]
    ld l, $03
    sub [hl]
    sub a
    sbc b
    add e
    ld e, c
    add d
    ld c, $07
    rrca
    ld e, c
    and [hl]
    and a
    xor b
    ccf
    ld e, c
    add d
    dec e
    add e
    ld e, c
    inc b
    rra
    ccf
    ld l, $2F
    add e
    ld a, $07
    add hl, bc
    ld a, $3E
    and [hl]
    and a
    xor b
    dec e
    add h
    ld e, c
    add hl, bc
    rra
    ld e, c
    or [hl]
    ld a, [hl]
    cp b
    adc [hl]
    dec c
    ld e, c
    dec e
    add e
    ld e, c
    add d
    rra
    inc bc
    ld a, $3F
    jr z, jr_02A_7638

    adc [hl]
    rlca
    add hl, de
    adc [hl]
    ld a, d
    or [hl]
    ld a, [hl]
    cp b
    dec e
    add h
    ld e, c
    add hl, bc
    rra
    ld e, c
    ld c, l
    ld e, [hl]
    ld c, a
    adc [hl]
    dec e
    ld e, c
    dec e
    add e
    ld e, c
    add d
    rra
    inc bc
    jr z, jr_02A_774D

    ld c, l
    add d
    ld c, [hl]
    add d
    ld c, a
    dec b
    sbc e
    ld c, l
    ld l, a
    adc [hl]
    dec l
    add h
    ld l, $08
    cpl
    ld b, $5E
    ld c, l
    ld e, [hl]
    ld c, a
    dec l
    dec c
    add h
    ld e, c
    add d
    rra
    ld [bc], a
    adc [hl]
    ld c, l
    add h
    ld e, [hl]
    ld [bc], a
    ld l, l
    ld c, [hl]
    add d
    ld c, a
    ld [bc], a
    ld e, d
    dec a
    add h
    ld a, $03
    ccf
    ld d, $6D
    add d
    ld e, [hl]
    inc bc
    ld e, a
    dec a
    dec e
    add h
    ld e, c
    add d
    rra
    ld [$6D8E], sp
    ld e, a
    ld l, a
    ld l, l
    ld e, [hl]
    ld l, a
    ld l, l
    add d
    ld e, [hl]
    ld bc, $864F
    adc [hl]
    ld [bc], a
    ld l, d
    ld c, l
    add d
    ld e, [hl]
    inc bc
    ld l, a
    ld a, [hl+]
    dec e
    add h
    ld e, c
    add d
    rra
    ld [$5F8E], sp
    ld e, a
    ld a, e
    ld c, l
    ld l, [hl]
    ld e, d
    ld c, l
    add d
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec c
    add e
    ld c, $09
    rrca
    adc [hl]
    ld c, l
    ld e, [hl]
    ld l, a
    add hl, hl
    adc [hl]
    add hl, hl
    dec e
    add h
    ld e, c
    add d
    rra
    inc bc
    adc [hl]
    ld e, a
    ld l, a
    add e
    adc [hl]
    ld [bc], a
    ld l, [hl]
    ld l, a
    add d

jr_02A_774D:
    adc [hl]
    ld [bc], a
    sbc h
    dec e
    add h
    ld e, c
    inc b
    rrca
    ld l, l
    ld l, a
    sbc e
    add d
    adc [hl]
    ld bc, $850D
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld [bc], a
    dec c
    rrca
    add h
    adc [hl]
    inc bc
    dec c
    ld c, $0E
    add l
    ld e, c
    ld bc, $850D
    ld c, $86
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld [bc], a
    dec e
    ld e, c
    add h
    ld c, $84
    ld e, c
    ld bc, $830D
    ld c, $8C
    ld e, c
    add d
    rra
    add d
    adc [hl]
    ld bc, $871D
    ld e, c
    ld [bc], a
    dec c
    ld c, $8E
    ld e, c
    nop
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    sub b
    dec d
    ld bc, $833E
    dec h
    ld bc, $983F
    dec d
    ld [bc], a
    ld a, $26
    add e
    jr z, jr_02A_77AD

    inc h
    dec h
    dec h
    ccf

jr_02A_77AD:
    sub h
    dec d
    rlca
    ld a, $26
    add hl, hl
    rlca
    ld [$2709], sp
    add d
    jr z, jr_02A_77BC

    inc h
    ccf

jr_02A_77BC:
    adc h

jr_02A_77BD:
    dec d
    ld b, $3E
    dec h
    dec h
    ccf
    dec d
    dec d
    dec c
    ld a, $26
    add hl, hl
    rlca
    pop af
    jr jr_02A_77BD

    ld [$5409], sp
    daa
    inc h
    ccf
    adc d
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, jr_02A_77E3

    inc h
    dec h
    dec h
    ld h, $29
    ld d, h
    daa
    pop hl

jr_02A_77E3:
    add e
    jr jr_02A_77EC

    add hl, de
    ld d, h
    ld [$2427], a
    ccf

jr_02A_77EC:
    add [hl]
    dec d
    dec b
    ld a, $25
    dec h
    ld h, $29
    add d
    ld d, h
    dec b
    daa
    jr z, @+$2A

    add hl, hl
    ld [$5482], a
    dec b
    rla
    ld a, l
    ld a, [hl]
    ld a, a
    add hl, de
    add e
    ld d, h
    ld [bc], a
    rla
    inc d
    add l
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, @+$04

    add hl, hl
    ld [$5482], a
    inc bc
    rlca
    ld [$8309], sp
    ld d, h
    rlca
    rlca
    pop af
    adc l
    adc [hl]
    adc a
    ldh a, [$09]
    add d
    ld d, h
    inc bc
    daa
    inc h
    ccf
    add h
    dec d
    ld [bc], a
    ld d, $19
    add l
    ld d, h
    ld [$0407], sp
    dec b
    ld b, $09
    ld d, h
    ld [$8517], a
    jr jr_02A_783E

    ldh a, [$09]

jr_02A_783E:
    add d
    ld d, h
    inc bc
    daa
    inc h
    ccf
    add e
    dec d
    dec b
    ld d, $19
    ld d, h
    inc [hl]
    dec [hl]
    add d
    ld d, h
    dec b
    daa
    inc h
    ccf
    ld d, $19
    add d
    ld d, h
    ld [bc], a
    daa
    pop hl
    add l
    jr jr_02A_7863

    add hl, de
    ld d, h
    ld a, [bc]
    inc c
    daa
    inc h
    ccf

jr_02A_7863:
    add d
    dec d
    dec b
    ld c, [hl]
    ld b, $09
    ld b, h
    ld b, l
    add e
    ld d, h
    inc b
    rla
    inc d
    ld d, $19
    add e
    ld d, h
    ld bc, $8527
    jr z, @+$06

    add hl, hl
    ld a, [bc]
    ld [hl], h
    ld bc, $0283
    add e
    dec d
    inc bc
    ld c, [hl]
    ld b, $09
    add e
    ld d, h
    ld b, $EA
    rla
    inc d
    ld c, [hl]
    ld b, $09
    add d
    ld d, h
    ld bc, $8307
    ld [$0909], sp
    ld d, h
    ld [$001A], a
    ld d, e
    ld bc, $0302
    add h
    dec d
    ld [bc], a
    ld c, [hl]
    ld b, $84
    ld [$0408], sp
    ld c, a
    dec d
    ld c, [hl]
    ld b, $09
    rlca
    inc b
    add e
    dec b
    add hl, bc
    ld b, $09
    ld a, [bc]
    ld [hl], h
    nop
    ld d, e
    ld de, $507C
    add l
    dec d
    ld bc, $844E
    dec b
    inc d
    ld c, a
    dec d
    ld a, $25
    ld h, $29
    daa
    inc h
    ccf
    dec d
    ld a, $26
    add hl, hl
    ld a, [de]
    xor l
    nop
    ld de, $3221
    inc de
    add [hl]
    dec d
    add hl, bc
    ld a, $25
    dec h
    ccf
    dec d
    ld a, $26
    jr z, jr_02A_790A

    add d
    ld d, h
    rlca
    rla
    inc d
    ld a, $26
    add hl, hl
    ld a, [bc]
    ld [hl], h
    add d
    nop
    inc b
    ld b, d
    ld b, e
    ld hl, $8523
    dec d
    ld [bc], a
    ld a, $26
    add d
    jr z, jr_02A_78FF

    inc h
    ccf
    ld d, $19
    dec c

jr_02A_78FF:
    add d

Jump_02A_7900:
    ld c, $09
    rrca
    rla
    inc d
    ld d, $19
    ld a, [bc]
    sbc l
    sbc [hl]

jr_02A_790A:
    sbc a
    add d
    nop
    inc bc
    ld d, e
    xor l
    ld a, h
    add d
    dec d
    dec b
    ld a, $25
    dec h
    ld h, $29
    add d
    ld d, h
    jr jr_02A_7934

    inc d
    ld d, $19
    dec e
    jr c, jr_02A_795C

    rra
    rla
    inc d
    ld d, $19
    ld a, [de]
    xor l
    xor [hl]
    xor a
    xor l
    nop
    ld de, $AD7C
    dec d
    ld a, $26

jr_02A_7934:
    add d
    jr z, jr_02A_794A

    add hl, hl
    ld a, [bc]
    dec bc
    inc c
    rla
    inc d
    ld d, $19
    dec e
    ld c, b
    ld c, c
    rra
    rla
    inc d
    ld d, $19
    ld a, [de]
    xor l
    rst $28

jr_02A_794A:
    add e
    xor l
    rlca
    ld hl, $AD32
    dec d
    ld d, $19
    ld a, [bc]
    add d
    dec bc
    ld [$9C9B], sp
    inc e
    rla
    inc d

jr_02A_795C:
    ld d, $19
    dec l
    add d
    ld l, $06
    cpl
    rla
    inc d
    ld d, $19
    ld a, [hl+]
    add l
    dec hl
    rlca
    sub h
    ld b, d
    ld b, e
    dec d
    ld d, $19
    ld a, [de]
    add d
    xor h
    rlca
    xor e
    xor h
    inc e
    daa
    inc h
    ld a, c
    ld b, $84
    ld [$0405], sp
    adc c
    ld h, $29
    rlca
    add h
    ld [$0909], sp
    ld a, [hl+]
    sub h
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld bc, $0282
    ld b, $03
    ld h, h
    inc c
    daa
    inc h
    ld a, c
    add h
    dec b
    dec b
    ld c, a
    ld d, $19
    rlca
    inc b
    add h
    dec b
    add hl, bc
    ld b, $09
    ld a, [hl+]
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld de, $7C82
    ld b, $50
    xor h
    ld h, h
    inc c
    daa
    inc h
    add l
    dec h
    inc b
    ld h, $29
    daa
    inc h
    add d
    dec h
    ld c, $3F
    dec d
    ld c, [hl]
    ld b, $09
    ld d, e
    dec d
    ld d, $19
    ld a, [de]
    ld hl, $7C32
    ld d, b
    add d
    xor h
    inc bc
    ld h, h
    inc c
    daa
    add l
    jr z, jr_02A_79DD

    add hl, hl
    ld d, h
    ld d, h
    daa
    jr z, @+$2A

jr_02A_79DD:
    ld c, $24
    ccf
    dec d
    ld d, $19
    ld d, e
    dec d
    ld d, $19
    ld a, [hl+]
    sub h
    ld hl, $1332
    add e
    xor h
    inc bc
    ld h, h
    dec bc
    inc c
    adc b
    ld d, h
    ld de, $54EA
    daa
    inc h
    ccf
    ld d, $19
    ld d, e
    dec d
    ld d, $19
    ld d, h
    ld a, [de]
    xor h
    ld hl, $8441
    add h
    dec hl
    ld b, $2C
    ld d, h
    ld d, h
    cp l
    cp [hl]
    cp a
    add l
    ld d, h
    dec bc
    ld [$1417], a
    ld d, $19
    ld d, e
    dec d
    ld c, [hl]
    ld b, $09
    ld a, [de]
    add d
    xor h
    inc bc
    add h
    inc l
    rlca
    add e
    ld [$0906], sp
    ld d, h
    ld d, h
    cp l
    adc $BF
    add d
    ld d, h
    ld bc, $8307
    ld [$0405], sp
    ld c, a
    ld d, $19
    ld d, e
    add d
    dec d
    inc bc
    ld d, $19
    ld a, [de]
    add d
    xor h
    inc bc
    inc e
    rlca
    inc b
    add e
    dec b
    ld [bc], a
    ld b, $09
    add l
    ld d, h
    ld [bc], a
    rlca
    inc b
    add e
    dec b
    rrca
    ld c, a
    ld a, $26
    add hl, hl
    ld d, e
    dec d
    ld a, $26
    add hl, hl
    ld a, [de]
    db $ED
    xor h
    inc e
    daa
    inc h
    add d
    dec h
    inc bc
    ccf
    ld c, [hl]
    ld b, $85
    ld [$0403], sp
    ld c, a
    ld a, $83
    dec h
    add hl, bc
    ld h, $29
    ld a, [bc]
    ld d, e
    dec d
    ld d, $19
    ld a, [bc]
    ld [hl], h
    add d
    xor h
    inc bc
    ld h, h
    inc c
    daa
    add d
    jr z, jr_02A_7A84

    inc h
    ccf
    ld c, [hl]

jr_02A_7A84:
    add l
    dec b
    inc bc
    ld c, a
    ld a, $26
    add e
    jr z, @+$0B

    add hl, hl
    ld a, [bc]

jr_02A_7A8F:
    ld [hl], h
    ld d, e
    ld a, $26
    add hl, hl
    ld a, [de]
    ld bc, $0282
    ld [$6403], sp
    dec bc
    inc c
    ld [$2427], a
    ccf
    add l
    dec d
    ld a, [bc]
    ld a, $26
    add hl, hl
    ld [$54EC], a
    ld a, [bc]
    ld [hl], h
    ld bc, $8463
    ld [bc], a
    inc b
    ld h, e
    ld a, h
    xor h
    ld h, b
    sub h
    ld [bc], a
    ld [bc], a
    ld h, e
    xor h
    nop

jr_02A_7ABB:
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    adc b
    nop
    inc bc
    ld a, [hl]
    ld a, a
    ld [hl], a
    adc e
    nop
    ld [bc], a
    ld a, [hl]
    ld a, a
    adc e
    nop
    dec b
    add a
    adc b
    adc c
    adc [hl]
    adc a
    add d
    nop
    ld c, $3B
    inc a
    dec a
    ld c, c
    ld a, h
    nop
    add a
    adc b
    adc c
    nop
    adc [hl]
    adc a
    dec sp
    ld c, c
    adc b
    nop
    jr jr_02A_7B02

    sub a
    sbc b
    sbc c
    jr jr_02A_7AFC

    ld a, d
    ld a, e
    ld c, e
    ld c, h
    ld c, l
    ld a, l
    adc h
    jr jr_02A_7A8F

    sbc b
    sbc c
    jr jr_02A_7B38

jr_02A_7AFC:
    dec a
    ld c, e
    nop
    ld a, h
    ld l, d
    add l

jr_02A_7B02:
    nop
    add hl, de
    inc a
    jr z, @-$57

    xor b
    xor c
    jr z, jr_02A_7B16

    adc d
    adc e
    nop
    ld e, h
    ld e, l
    adc l
    nop
    jr z, jr_02A_7ABB

    xor b
    xor c

jr_02A_7B16:
    jr z, jr_02A_7B64

    ld c, l
    inc a
    dec a
    adc h
    ld c, b
    add l
    nop
    inc bc
    ld c, h
    ld c, l
    inc c
    add d
    ld [$0182], sp
    add d
    ld [$0D06], sp
    ld l, h
    ld l, l
    ld a, [hl]
    ld a, a
    inc c
    add e
    ld [$0D07], sp
    ld e, h
    ld e, l
    ld c, h
    ld c, l

jr_02A_7B38:
    ld a, [hl]
    ld a, a
    add l
    nop
    inc bc
    ld e, h
    ld e, l
    ld b, d
    add l
    ld bc, $0902
    rrca
    add d
    nop
    inc bc
    adc [hl]
    adc a
    ld b, d
    add e
    ld bc, $0B08
    ld l, h
    ld l, l
    ld e, h
    ld e, l
    adc [hl]
    adc a
    ld l, d
    add d
    nop
    dec b
    ld a, h
    nop
    ld l, h
    ld l, l
    ld c, $84
    ld bc, $0F05

jr_02A_7B62:
    dec de
    dec e

jr_02A_7B64:
    dec sp
    ld a, h
    add d
    nop

jr_02A_7B68:
    ld bc, $840E
    ld bc, $0D0F
    ld c, b
    ld l, h
    ld l, l
    nop
    ld a, d
    ld a, e
    ld a, h
    nop
    adc h
    ld c, c
    nop
    ld a, l
    dec hl
    ld b, d
    add d
    ld bc, $0F0A
    dec hl
    ld a, [hl]
    ld a, a
    ld c, e
    adc h
    nop
    dec sp
    dec hl
    ld b, d
    add h
    ld bc, $0883
    ld de, $8A0D
    adc e
    adc h

jr_02A_7B92:
    ld a, [hl]
    ld a, a
    dec sp
    nop
    adc l
    ld l, d
    ld c, $09
    rrca
    dec hl
    nop
    adc [hl]
    adc a
    add d
    nop
    inc b
    ld a, [hl-]
    ld c, e
    ld e, e
    ld c, $88
    ld bc, $0D13
    nop
    ld a, l
    adc [hl]
    adc a
    ld c, e
    ld a, [hl]
    ld a, a
    nop
    dec de
    inc e
    dec e
    dec sp
    add a
    adc b
    adc c
    dec sp
    ld a, l
    ld c, d
    add d
    nop
    ld [bc], a
    dec hl
    ld b, d
    adc b
    ld bc, $0D02
    adc l
    add d
    ld [$0D03], sp
    adc [hl]
    adc a
    add h
    nop
    dec bc
    jr jr_02A_7B68

    sbc b
    sbc c
    jr jr_02A_7B62

    nop
    ld a, h
    nop
    dec sp
    ld c, $88
    ld bc, $0B02
    dec sp
    add e
    ld bc, $0804
    dec c
    ld [hl], a
    dec sp
    add d
    nop
    inc c
    jr z, jr_02A_7B92

    xor b
    xor c
    jr z, @+$0F

    ld a, [hl-]
    adc h
    nop
    ld c, e
    dec hl
    ld b, d
    add a
    ld bc, $0B02
    ld c, e
    add l
    ld bc, $0D06
    ld c, e
    ld a, h
    nop
    ld a, l
    inc c
    add d
    ld [$0103], sp
    dec bc
    ld c, d
    add d
    nop
    inc bc
    ld a, [hl]
    ld a, a
    ld c, $88
    ld bc, $0801
    add e
    ld bc, $0982
    ld b, $0F
    nop
    adc h
    nop
    adc l
    ld b, d
    add e
    ld bc, $0B08
    inc a
    dec a
    nop
    adc [hl]
    adc a
    dec hl
    ld c, $85
    add hl, bc
    add e
    ld bc, $0982
    add hl, bc
    rrca
    dec de
    inc e
    dec e
    inc a
    dec a
    dec sp
    nop
    ld b, d
    add e
    ld bc, $0B03
    ld c, h
    ld c, l
    add e
    nop
    ld [bc], a
    ld a, [hl-]
    dec de
    add h
    inc e
    ld [bc], a
    dec e
    ld c, $82
    add hl, bc
    add d
    inc e
    add hl, bc
    dec e
    ld a, [hl]
    ld a, a
    nop
    ld c, h
    ld c, l
    ld c, e
    ld c, b
    ld c, $83
    ld bc, $0B07
    ld e, h
    ld e, l
    nop
    ld a, h
    nop
    ld c, d
    add d
    nop
    dec b
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    dec de
    add d
    inc e
    ld [$7C00], sp
    dec sp
    adc [hl]
    adc a

jr_02A_7C71:
    nop
    ld e, h
    ld e, l
    add d
    nop
    ld [bc], a
    dec hl
    ld c, $82
    ld bc, $0F05
    ld l, h
    ld l, l
    nop
    adc h
    add e
    nop
    dec b
    ld a, l
    ld a, d
    ld a, e
    adc [hl]
    adc a
    add e
    nop
    inc bc
    ld c, c
    adc h
    ld c, e
    add d
    nop
    inc bc
    dec sp
    ld l, h
    ld l, l
    add e
    nop
    ld b, $2B
    ld c, $0F
    dec hl

jr_02A_7C9C:
    nop
    ld c, b
    add l
    nop
    add hl, bc
    adc l
    adc d
    adc e
    nop
    inc a
    dec a
    ld a, h
    nop
    ld a, h
    add d
    nop
    inc bc
    ld a, d
    ld a, e
    ld c, e
    add l
    nop
    rlca
    ld e, e
    dec de
    dec e
    ld a, [hl]
    ld a, a
    nop
    ld e, e
    add d
    nop
    dec bc
    add a
    adc b
    adc c
    inc c
    dec c
    ld c, b
    ld c, h
    ld c, l
    adc h
    nop

jr_02A_7CC7:
    adc h
    add d
    nop
    ld [bc], a
    adc d
    adc e
    add [hl]
    nop
    dec b
    inc a
    dec a
    nop
    adc [hl]
    adc a
    add e
    nop
    add hl, bc
    jr jr_02A_7C71

    sbc b
    sbc c
    jr jr_02A_7CDF

    dec c

jr_02A_7CDF:
    ld e, h
    ld e, l
    add [hl]
    nop
    ld bc, $837D
    nop
    ld b, $87
    adc b
    adc c
    ld c, h
    ld c, l
    ld a, l
    add l
    nop
    dec b
    jr z, @-$57

    xor b
    xor c
    jr z, @-$7C

    ld bc, $6C04
    ld l, l
    nop
    ld a, d
    add h
    nop
    ld a, [bc]
    adc l
    nop
    ld a, d
    jr jr_02A_7C9C

    sbc b
    sbc c
    jr jr_02A_7D66

    adc l
    add h
    nop
    inc bc
    ld a, [hl]
    ld a, a
    inc c
    add d
    ld [$0183], sp
    inc b
    dec c
    ld a, [hl-]
    nop
    adc d
    add l
    nop
    ld a, [bc]
    ld c, b
    adc d
    jr z, jr_02A_7CC7

    xor b
    xor c
    jr z, jr_02A_7D91

    inc a
    dec a
    add e
    nop
    inc bc
    adc [hl]
    adc a
    ld c, $85
    ld bc, $0B02
    ld c, d
    add h
    nop
    ld b, $7C
    nop
    nop
    ld a, [hl]
    ld a, a
    inc c
    add h
    ld [$0D04], sp
    ld c, h
    ld c, l
    ld l, d
    add d
    nop
    inc b
    ld a, l
    nop
    dec hl
    ld b, d
    add h
    ld bc, $0F03
    inc a
    dec a
    add e
    nop
    ld b, $8C
    nop
    nop
    adc [hl]
    adc a
    ld b, d
    add h
    ld bc, $0B04
    ld e, h
    ld e, l
    ld a, l
    add d
    nop
    inc b
    adc l
    inc a
    dec a
    ld b, d
    add e

jr_02A_7D66:
    ld bc, $0F04
    dec hl
    ld c, h
    ld c, l
    add a
    nop
    ld [bc], a
    ld l, d
    ld b, d
    add h
    ld bc, $0F04
    ld l, h
    ld l, l
    adc l
    add e
    nop
    inc bc
    ld c, h
    ld c, l
    ld c, $82
    add hl, bc
    dec b
    rrca
    dec hl
    ld e, e
    ld e, h
    ld e, l
    adc b
    nop
    ld bc, $830E
    ld bc, $0F02
    dec hl
    add d
    nop

jr_02A_7D91:
    ld bc, $833A
    nop
    inc bc
    ld e, h
    ld e, l
    dec de
    add d
    inc e
    dec b
    dec e
    ld a, [hl-]
    nop
    ld l, h
    ld l, l
    adc b
    nop
    ld a, [bc]
    dec hl
    ld c, $09
    rrca
    dec hl
    ld l, d
    ld a, [hl]
    ld a, a
    ld c, d
    ld a, h
    add d
    nop
    rlca
    ld l, h
    ld l, l
    nop
    ld a, [hl]
    ld a, a
    nop
    ld c, d
    adc d
    nop
    dec bc
    ld a, [hl]
    ld a, a
    dec de
    inc e
    dec e
    ld a, d
    ld a, e
    adc [hl]
    adc a
    nop
    adc h
    add e
    nop
    inc b
    ld e, e
    nop
    adc [hl]
    adc a
    add h
    nop
    ld bc, $873A
    nop
    ld [bc], a
    adc [hl]
    adc a
    add e
    nop
    ld [bc], a
    adc d
    adc e
    adc a
    nop
    ld bc, $884A
    nop
    nop
    ld e, $84
    inc bc
    and l
    jp nz, $0083

    ld [bc], a
    jp $8208


    nop
    dec b
    jp RST_08


    jp $8208


    nop
    add d
    ld [$C28E], sp
    inc bc
    nop
    call nz, $8208
    nop
    ld [bc], a
    call nz, $8208
    nop
    ld [bc], a
    call nz, $8308
    nop
    add d
    ld [$C282], sp
    add e
    ld [$C289], sp
    add e
    nop
    ld [bc], a
    push bc
    ld [$0082], sp
    ld [bc], a
    push bc
    ld [$0082], sp
    inc bc
    push bc
    ld [$82C0], sp
    ld [$C201], sp
    add l
    nop
    adc b
    jp nz, $0003

    add $08
    add d
    nop
    ld [bc], a
    add $08
    add d
    nop
    ld [bc], a
    add $08
    add e
    nop
    add d
    ld [$C206], sp
    nop
    ld b, b
    ld b, c
    ld b, d
    nop
    adc b
    jp nz, $0083

    ld [bc], a
    rst $00
    ld [$0082], sp
    dec b
    rst $00
    ld [$C700], sp
    ld [$0082], sp
    add d
    ld [$C201], sp
    add h
    nop
    ld bc, $AAC1
    jp nz, $0082

    add h
    jp nz, $0084

    add [hl]
    jp nz, $0082

    adc h
    jp nz, $008B

    add l
    jp nz, $0082

    adc h
    jp nz, $0086

    add d
    add b
    ld bc, $83C2
    nop
    add h
    jp nz, $0082

    sub b
    jp nz, $0082

    ld bc, $8380
    jp nz, $0083

    add d
    jp nz, $0083

    sub b
    jp nz, $0082

    add l
    jp nz, $0082

    add d
    jp nz, $0083

    add l
    jp nz, $0083

    add [hl]
    jp nz, $0084

    adc c
    jp nz, $0082

    add [hl]
    jp nz, $0003

    ld b, e
    nop
    add [hl]
    jp nz, $0084

    add d
    jp nz, Jump_02A_4402

    nop
    add [hl]
    jp nz, $0082

    add l
    jp nz, $0083

    add [hl]
    jp nz, $0084

    add d
    jp nz, $8082

    add [hl]
    jp nz, $0082

    add d
    jp nz, $0082

    ld bc, $83C2
    nop
    inc bc
    jp nz, RST_00

    add l
    jp nz, $0082

    adc d
    jp nz, $0082

    add d
    jp nz, Jump_02A_4502

    nop
    add d
    jp nz, $0808

    jp nz, $00C2

    ld b, [hl]
    jp nz, Jump_02A_4700

    add d
    jp nz, $0087

    ld bc, $83C2
    nop
    inc bc
    jp nz, LCDCInterrupt

    add d
    jp nz, $0082

    add l
    jp nz, $0082

    ld b, $C2
    nop
    nop
    jp nz, $0080

    add l
    add b
    add d
    jp nz, $0083

    adc a
    jp nz, $0082

    inc bc
    jp nz, $0080

    add a
    jp nz, $0002

    add b
    add d
    nop
    adc [hl]
    jp nz, $0082

    inc b
    jp nz, $0080

    jp nz, $0082

    ld b, $80
    nop
    nop
    jp nz, $8000

    sub b
    jp nz, $0083

    add l
    add b
    inc b
    nop
    add b
    nop
    jp nz, $0082

    sub b
    jp nz, $0001

    add e
    add b
    inc bc
    ld [$0000], sp
    add l
    jp nz, $0082

    ld bc, $83C2
    nop
    sub h
    jp nz, $8082

    add h
    nop
    inc b
    jp nz, $4900

    nop
    add e
    jp nz, $CB01

    adc a
    ld [$0082], sp
    ld bc, $8308
    add b
    ld [bc], a
    nop
    jp nz, $0083

    add e
    jp nz, $0084

    add d
    ld [$0083], sp
    ld bc, $8508
    nop
    ld bc, $8608
    nop
    ld b, $C2
    ld [$4A00], sp
    nop
    ld [$C282], sp
    inc b
    ld [$0080], sp
    ld [$0083], sp
    add d
    ld [$0083], sp
    add d
    ld [$0004], sp
    jp nz, $C800

    add l
    jp nz, $0801

    add e
    nop
    inc bc
    ld [$C2C2], sp
    add d
    nop
    inc b
    ld [$0000], sp
    ld [$0088], sp
    dec b
    jp z, $80C2

    nop
    add b
    add l
    jp nz, $0003

    ld c, e
    nop
    add e
    jp nz, $0803

    add b
    add b
    add h
    nop
    ld b, $08
    nop
    nop
    ld [$0000], sp
    ld [bc], a
    ld [$8200], sp
    jp nz, $C902

    add b
    add l
    jp nz, $8083

    add e
    jp nz, $8082

    ld bc, $8308
    add b
    ld bc, $8608
    add b
    ld [bc], a
    ld [$8280], sp
    jp nz, $0002

    add b
    and a
    jp nz, Jump_02A_4000

    nop
    dec b
    ret nz

    ld b, c
    nop
    ld [bc], a
    ld [$8301], sp
    ld [$00BB], sp
    ld bc, $8408
    ld bc, $00BB
    ld [bc], a
    ld [$C401], sp
    ld b, b
    nop
    nop
    rst $38
    rst $38
