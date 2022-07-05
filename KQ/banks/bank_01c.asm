; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ld bc, $834E
    ld e, [hl]
    inc bc
    ld a, $4E
    ld a, $82
    ld c, [hl]
    rlca
    ld a, $4E
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld a, $85
    dec e
    ld [$4E5E], sp
    ld e, l
    ld c, [hl]
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    add e
    ld c, [hl]
    adc d
    dec e
    ld [bc], a
    ld e, [hl]
    ld c, [hl]
    add d
    ld c, a
    ld bc, $8C5E
    dec e
    rlca
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld c, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    adc a
    ld l, [hl]
    add e
    dec e
    adc l
    ld l, [hl]
    adc b
    dec e
    add [hl]
    ld l, [hl]
    ld [bc], a
    dec d
    ld d, $88
    dec e
    ld [bc], a
    dec d
    ld d, $84
    ld l, [hl]
    inc bc
    ld c, [hl]
    ld e, [hl]
    ld l, a
    adc b
    ld a, e
    ld bc, $867C
    ld a, e
    inc b
    ld l, l
    dec e
    dec e
    ld a, [hl-]
    add l
    ld a, e
    ld bc, $867C
    ld a, e
    ld [bc], a
    ld l, l
    ld l, [hl]
    add l
    dec e
    ld b, $6F
    ld a, e
    ld a, e
    ld a, h
    ld a, e
    ld a, e
    inc b
    add hl, sp
    sbc l
    xor d
    sub h
    add d
    ld a, [hl]
    ld bc, $84FD
    ld a, [hl]
    ld b, $63
    sbc a
    ld l, h
    inc e
    ld l, h
    add hl, hl
    add d
    ld c, [hl]
    ld bc, $871A
    ld a, e
    ld bc, $861C
    ld a, e
    dec b
    inc e
    ld a, e
    ld l, l
    dec e
    ld a, [hl-]
    adc [hl]
    ld a, e
    ld bc, $846D
    dec e
    ld [bc], a
    ccf
    ld a, [hl+]
    add l
    ld a, e
    inc b
    xor l
    xor [hl]
    sbc l
    adc h
    add d
    adc [hl]
    ld c, $AA
    adc [hl]
    adc e
    sbc [hl]
    sbc a
    xor a
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    rla
    ld e, [hl]
    ld a, [de]
    inc e
    adc a
    ld a, e
    inc bc
    add hl, hl
    ld l, [hl]
    ld a, [hl-]
    add l
    ld a, e
    add d
    ld c, d
    ld bc, $861C
    ld a, e
    ld bc, $8339
    dec e
    add d
    ld c, [hl]
    ld bc, $852A
    ld a, e
    inc b
    inc e
    ld a, e
    xor l
    sbc l
    add h
    sbc [hl]
    inc bc
    sbc a
    xor [hl]
    xor a
    add h
    ld a, e
    inc b
    dec de
    ld e, a
    ld c, [hl]
    ld a, [de]
    add e
    ld a, e
    ld bc, $857C
    ld a, e
    inc bc
    ld c, c
    ld c, d
    ld c, d
    add e
    ld c, c
    ld [bc], a
    ld a, e
    ld a, h
    add e
    ld a, e
    rlca
    inc e
    ld a, e
    ld a, e
    add hl, sp
    ld c, [hl]
    ccf
    dec hl
    add a
    ld a, e
    inc bc
    ld l, l
    dec e
    dec e
    add d
    ld c, [hl]
    ld bc, $842A
    ld a, e
    dec b
    ld l, h
    ld a, e
    inc e
    ld a, e
    xor l
    add h
    xor [hl]
    ld [bc], a
    xor a
    ld a, h
    add h
    ld a, e
    ld b, $29
    ld c, [hl]
    ld c, a
    ld c, [hl]
    jr z, jr_01C_415D

    add d
    ld a, e
    ld b, $1C
    ld a, e
    ld a, e
    ld a, h
    ld a, e
    dec de
    add [hl]
    dec e
    ld bc, $872B
    ld a, e
    ld [bc], a
    add hl, sp
    ld e, l
    add d
    ccf
    ld bc, $862B
    ld a, e
    inc bc
    add hl, sp
    dec e
    dec e
    add d
    ld c, [hl]
    ld bc, $862A
    ld a, e
    dec b
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    add d
    ld c, c
    inc bc
    ld c, d
    ld a, e
    ld e, h
    add e
    ld a, e
    ld bc, $8329
    ld c, [hl]
    inc bc
    ld e, a
    ccf
    ld c, e
    add l
    ld a, e
    ld b, $39
    dec e
    dec e
    dec d
    ld a, [hl]
    ld a, [hl]
    inc b
    ld d, $1D
    dec e
    ld a, [hl-]
    add a
    ld a, e
    ld [bc], a

jr_01C_415D:
    ld l, l
    ld e, l
    add d
    ccf
    ld [bc], a
    ld a, e
    ld a, h
    add e
    ld a, e
    inc b
    inc e
    ld a, e
    ld l, l
    dec e
    add d
    ld c, [hl]
    ld a, [bc]
    ld a, [hl+]
    ld a, e
    ld a, h
    inc e
    ld a, e
    dec sp
    rlca
    ld [$4E3F], sp
    add d
    ld c, l
    dec b
    ld a, $5E
    daa
    jr z, jr_01C_41CB

    add e
    ld a, e
    ld [$5D29], sp
    ld c, [hl]
    dec e
    ld e, [hl]
    ld c, a
    ld a, [hl-]
    ld c, h
    add h
    ld a, e
    inc b
    add hl, hl
    dec e
    dec d
    sbc h
    add d
    adc [hl]
    inc b
    sbc e
    ld d, $1D
    ld a, [hl-]
    adc b
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add h
    ld a, e
    inc bc
    ld a, h
    inc e
    add hl, hl
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    db $10
    ld a, h
    ld a, e
    add hl, sp
    rla
    jr jr_01C_41C9

    add a
    adc b
    adc c
    ld a, [hl]
    ld d, $5D
    jr c, jr_01C_41F6

    ld a, h
    ld e, h
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld c, a
    add d
    dec e
    ld [bc], a
    ld e, [hl]
    dec hl
    add l

jr_01C_41C9:
    ld a, e
    inc bc

jr_01C_41CB:
    add hl, hl
    dec e
    adc l
    add d
    adc [hl]
    dec b
    adc d
    adc [hl]
    adc a
    dec e
    ld a, [hl-]
    add d
    ld a, e
    ld bc, $867C
    ld a, e
    inc b
    ld l, l
    ld c, a
    ccf
    ld a, [hl+]
    add l
    ld a, e
    inc b
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld l, a
    add l
    ld a, e
    dec c
    add hl, sp
    ld c, [hl]
    dec d
    sbc h
    sub a
    sbc b
    sbc c
    adc [hl]
    sbc e
    ld d, $27

jr_01C_41F6:
    jr z, jr_01C_4243

    add e
    ld a, e
    ld [bc], a
    add hl, hl
    ld c, [hl]
    add e
    dec e
    ld [bc], a
    ccf
    dec hl
    add h
    ld a, e
    inc bc
    add hl, hl
    dec e
    sbc l
    add h
    sbc [hl]
    inc bc
    sbc a
    dec e
    dec hl
    add a
    ld a, e
    ld b, $7C
    ld a, e
    add hl, hl
    ld e, [hl]
    ld c, [hl]
    ld a, [hl+]
    add h
    ld a, e
    ld b, $7C
    add hl, sp
    ld e, l
    ld c, [hl]
    ccf
    ld a, [hl+]
    add h
    ld a, e
    inc bc
    add hl, sp
    ld c, [hl]
    adc l
    add d
    adc [hl]
    dec c
    cp c
    adc [hl]
    sbc d
    adc [hl]
    sbc e
    ld d, $38
    ld a, [hl+]
    ld a, e
    inc e
    ld a, h

jr_01C_4234:
    dec de
    ld e, a
    add d
    dec e
    inc b
    ld [$3F5E], sp
    ld a, [hl+]
    add e
    ld a, e
    inc bc
    add hl, sp
    dec e
    xor l

jr_01C_4243:
    add h
    xor [hl]
    inc b
    xor a
    dec e
    dec e
    ld a, [hl+]
    adc b
    ld a, e
    inc b
    add hl, sp
    jr c, jr_01C_429E

    dec hl
    add [hl]
    ld a, e
    inc b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    dec hl
    add h
    ld a, e
    rlca
    add hl, sp
    scf
    adc l
    sbc d
    adc [hl]
    ret z

    sbc d
    add e
    adc [hl]
    inc bc
    adc a
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld e, a
    add d
    dec e
    inc bc
    jr jr_01C_42E1

    ld l, a
    add h
    ld a, e
    inc b
    add hl, sp
    dec e
    ld a, [hl+]
    inc e
    add h
    ld a, e
    inc bc
    ld l, l
    dec e
    dec hl
    adc b
    ld a, e
    dec b
    add hl, sp
    ld e, l
    ld c, [hl]
    ccf
    ld a, [hl-]
    add l
    ld a, e
    dec bc
    add hl, sp
    ld e, l
    ld c, [hl]
    ccf
    ld a, [hl+]
    ld a, e
    ld l, h
    ld a, e
    add hl, sp
    jr c, jr_01C_4234

    add a
    sbc [hl]
    inc bc
    sbc a
    ld c, [hl]
    ld a, [hl-]
    add d

jr_01C_429E:
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    add d
    dec e
    dec b
    ld a, $3A
    ld c, h
    ld a, e
    ld a, h
    add d
    ld a, e
    inc bc
    add hl, sp
    ld e, [hl]
    ld a, [hl+]
    add d
    ld a, h
    add e
    ld a, e
    dec b
    add hl, sp
    ld e, l
    ccf
    dec hl
    inc e
    add a
    ld a, e
    inc b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    add [hl]
    ld a, e
    inc b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    add e
    ld a, e
    inc bc
    add hl, sp
    ld c, [hl]
    xor l
    add a
    xor [hl]
    ld b, $AF
    ld e, [hl]
    ld a, [hl+]
    ld a, e
    inc e
    add hl, hl
    add d
    ld c, [hl]
    dec b
    dec e
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    inc e
    add e

jr_01C_42E1:
    ld a, e
    dec b
    inc e
    add hl, sp
    ld e, [hl]
    ld a, [hl+]
    inc e
    add l
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add a
    ld a, e
    inc b
    add hl, sp
    ld a, $4E
    ld a, [hl-]
    add a
    ld a, e
    add d
    ld c, [hl]
    ld bc, $832A
    ld a, e
    dec d
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    ld a, h
    ld a, e
    ld l, h
    ld a, e
    ld c, h
    ld a, e
    inc e
    dec de
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld a, h
    add hl, hl
    ld e, l
    ld e, a
    dec e
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    ld b, $4A
    ld c, c
    ld c, d
    dec de
    ccf
    ld a, [hl-]
    add h
    ld a, e
    rlca
    ld a, h
    ld a, e
    ld a, e
    ld l, l
    ld e, l
    ccf
    dec hl
    add [hl]
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    add [hl]
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    add e
    ld a, e
    ld b, $39
    ld a, $2A
    ld a, e
    inc e
    ld c, h
    add e
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld c, a
    ld a, [hl-]
    add e
    ld a, e
    dec b
    ld l, l
    rla
    dec e
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $831B
    dec e
    inc bc
    dec a
    ld c, [hl]
    ld a, [hl+]
    adc b
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add h
    ld a, e
    dec b
    add hl, hl
    ld c, [hl]
    ld a, $4E
    ld a, [hl-]
    add d
    ld a, e
    rlca
    inc e
    ld a, e
    ld a, e
    add hl, sp
    dec a
    ld c, [hl]
    ld l, a
    add h
    ld a, e
    inc bc
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $837C
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    dec hl
    add e
    ld a, e
    ld c, $29
    ld c, [hl]
    dec e
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec e
    dec b
    ld c, $2E
    ld b, $4E
    ld a, [hl-]
    add d
    ld a, e
    ld bc, $864A
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    ld a, [hl-]
    add e
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    ld a, $4E
    ld a, [hl+]
    add l
    ld a, e
    ld b, $1B
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld a, e
    dec b
    ld c, h
    ld a, e
    add hl, sp
    ld a, $2B
    add [hl]
    ld a, e
    dec b
    add hl, hl
    rla
    ld e, [hl]
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    rlca
    add hl, hl
    rla
    dec e
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, sp
    add d
    dec e
    ld a, [bc]
    dec d
    ld a, [hl]
    ld d, $5E
    ld a, [hl+]
    ld a, e
    add hl, hl
    ccf
    ld a, [hl-]
    inc e
    add l
    ld a, e
    inc b
    ld l, l
    ld l, a
    ld a, e
    ld a, h
    add d
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    ld a, $4E
    ld a, [hl-]
    add h
    ld a, e
    ld [bc], a
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    ld bc, $842A
    ld a, e
    inc b
    add hl, sp
    ld c, [hl]
    ccf
    ld a, [hl+]
    add [hl]
    ld a, e
    inc b
    ld l, l
    ld c, a
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    dec b
    add hl, hl
    ld c, a
    dec e
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    dec c
    ld l, l
    dec e
    adc l
    db $FD
    adc a
    ccf
    ld a, [hl-]
    ld a, e
    add hl, sp
    ld c, [hl]
    dec hl
    ld a, e
    inc e
    add a
    ld a, e
    ld [$7B1C], sp
    ld a, e
    dec de
    ld c, [hl]
    ld a, $4E
    ld a, [hl+]
    add h
    ld a, e
    ld [bc], a
    dec de
    dec e
    add d
    ld c, [hl]
    inc bc
    ld a, [hl+]
    ld a, e
    ld c, h
    add d
    ld a, e
    ld b, $1B
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld a, e
    dec b
    ld a, h
    ld a, e
    ld a, e
    inc e
    add hl, sp
    add d
    ld c, [hl]
    ld [$7B3A], sp
    ld a, e
    add hl, hl
    ld c, [hl]
    dec e
    ld c, [hl]
    dec hl
    add e
    ld a, e
    dec bc
    ld l, l
    sbc l
    sbc [hl]
    sbc a
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, sp
    ld e, l
    ccf
    dec hl
    adc b
    ld a, e
    inc bc
    ld a, h
    ld a, e
    dec de
    add h
    ld c, [hl]
    ld bc, $843A
    ld a, e
    add e
    dec e
    rlca
    ld e, a
    ld a, [hl+]
    ld a, e
    ld c, h
    ld a, e
    add hl, hl
    dec a
    add d
    ld c, [hl]
    ld bc, $862A
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    inc bc
    add hl, hl
    ld e, a
    dec e
    add d
    ld c, [hl]
    add hl, bc
    ld a, [hl-]
    ld a, e
    inc e
    ld a, e
    xor l
    xor [hl]
    xor a
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    add [hl]
    ld a, e
    inc bc
    inc e
    ld a, e
    dec de
    add h
    ld c, [hl]
    ld bc, $836F
    ld a, e
    ld [bc], a
    dec sp
    dec c
    add e
    ld c, $01
    rrca
    add h
    ld a, e
    inc b
    add hl, sp
    ld c, a
    ld c, [hl]
    ld l, a
    add a
    ld a, e
    inc bc
    add hl, hl
    ld e, [hl]
    ld a, [hl-]
    add e
    ld a, e
    ld [bc], a
    dec de
    ld c, [hl]
    add d
    dec e
    inc bc
    ld [$4C2B], sp
    add e
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld c, [hl]
    dec hl
    add e
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld a, $3F
    dec hl
    add l
    ld c, d
    ld b, $1B
    ld c, [hl]
    ld c, [hl]
    ld a, $4E
    ld l, a
    add h
    ld a, e
    ld [$1D76], sp
    dec d
    ld a, [hl]
    ld d, $1F
    ld [hl], l
    ld c, h
    add d
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    adc b
    ld a, e
    inc bc
    dec de
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    add d
    dec e
    ld b, $18
    ld c, [hl]
    dec hl
    ld c, d
    ld l, d
    dec de
    add e
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add e
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld e, l
    add d
    ld c, [hl]
    ld bc, $853F
    ld c, [hl]
    add d
    ld a, $02
    ld c, [hl]
    ld a, [hl-]
    add e
    ld a, e
    add hl, bc
    dec sp
    dec c
    dec e
    adc l
    db $FD
    adc a
    rra
    rrca
    ld c, e
    add d
    ld a, e
    inc b
    add hl, sp
    ld a, $4E
    dec hl
    add [hl]
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    add d
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld e, a
    add d
    dec e
    rlca
    ld c, [hl]
    daa
    daa
    ld c, [hl]
    ld a, $4E
    ld a, $82
    dec e
    ld [bc], a
    ld c, [hl]
    ccf
    add l
    ld a, e
    dec c
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld e, l
    ld e, [hl]
    ld a, $5E
    ld a, $5E
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld a, [hl-]
    add e
    ld a, e
    ld [$2D39], sp
    cpl
    sbc l
    sbc [hl]
    sbc a
    dec l
    cpl
    add e
    ld a, e
    dec b
    dec de
    ld c, a
    ld c, [hl]
    ccf
    inc e
    add l
    ld a, e
    inc bc
    add hl, hl
    dec a
    ld c, [hl]
    add e
    ld a, e
    inc bc
    add hl, hl
    ld e, l
    ld e, a
    add e
    dec e
    inc b
    scf
    ld c, a
    dec b
    ld c, $83
    dec e
    dec b
    ld l, $1D
    ccf
    ld a, [hl-]
    ld l, h
    add [hl]
    ld a, e
    ld bc, $856D
    ld l, [hl]
    dec b
    ld e, l
    ld e, [hl]
    ccf
    dec hl
    ld e, h
    add e
    ld a, e
    rlca
    ld l, l
    ld l, a
    xor l
    xor [hl]
    xor a
    ld l, l
    ld l, a
    add d
    ld a, e
    ld [bc], a
    add hl, sp
    dec a
    add e
    ld c, [hl]
    ld bc, $852B
    ld a, e
    dec b
    add hl, hl
    ld c, [hl]
    ld l, a
    inc e
    ld c, h
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld c, [hl]
    add [hl]
    dec e
    ld [$7E15], sp
    ld d, $1D
    ld l, $1D
    ld c, [hl]
    dec hl
    adc l
    ld a, e
    dec b
    ld l, l
    ld l, [hl]
    ld e, l
    ccf
    ld a, [hl-]
    add h
    ld a, e
    dec b
    inc e
    ld a, e
    ld c, h
    ld a, e
    inc e
    add e
    ld a, e
    rlca
    dec de
    ld c, [hl]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ccf
    ld a, [hl-]
    add h
    ld a, e
    inc b
    dec de
    ld c, [hl]
    dec hl
    ld c, h
    add e
    ld a, e
    ld [bc], a
    add hl, sp
    ld c, [hl]
    add d
    dec e
    add e
    ld l, [hl]
    dec b
    dec l
    adc l
    sbc d
    adc a
    ld l, $82
    ld c, [hl]
    inc bc
    ld e, l
    ccf
    dec hl
    adc h
    ld a, e
    dec b
    ld a, h
    ld a, e
    ld l, l
    ld c, [hl]
    dec hl
    adc e
    ld a, e
    ld [$3D39], sp
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    ld l, l
    ld e, a
    ld a, [hl-]
    add e
    ld a, e
    inc b
    add hl, hl
    dec a
    ld c, [hl]
    ccf
    add e
    ld a, e
    dec b
    ld c, h
    add hl, sp
    ld e, a
    dec e
    ld l, a
    add e
    ld a, e
    inc b
    ld l, l
    sbc l
    sbc [hl]
    sbc a
    add h
    ld l, [hl]
    inc bc
    ld e, l
    ccf
    dec hl
    adc d
    ld a, e
    add d
    ld a, h
    dec b
    ld a, e
    add hl, sp
    ld e, l
    ccf
    dec hl
    adc d
    ld a, e
    ld [$4E39], sp
    ld c, [hl]
    ld l, a
    ld a, e
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add e
    ld a, e
    ld bc, $831B
    ld c, [hl]
    ld [bc], a
    dec hl
    ld c, h
    add d
    ld a, e
    ld b, $39
    ld c, [hl]
    dec e
    ld a, [hl-]
    ld a, e
    inc e
    add d
    ld a, e
    inc bc
    xor l
    xor [hl]
    xor a
    add d
    ld a, e
    ld b, $7C
    ld a, e
    ld l, l
    ld e, l
    ccf
    dec hl
    add d
    ld c, d
    adc e
    ld a, e
    inc b
    ld l, l
    ld e, l
    ccf
    dec hl
    adc c
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld a, $2A
    add l
    ld a, e
    ld [bc], a
    add hl, hl
    dec a
    add e
    ld c, [hl]
    add hl, bc
    ccf
    ld a, [hl-]
    ld a, e
    dec sp
    rlca
    ld [$3A1D], sp
    ld a, h
    adc e
    ld a, e
    rlca
    ld l, l
    ld e, l
    ccf
    ld c, [hl]
    ccf
    dec hl
    ld c, d
    adc d
    ld a, e
    inc b
    ld l, l
    ld e, l
    dec e
    dec hl
    add a
    ld a, e
    inc bc
    inc e
    ld a, e
    ld l, l
    add d
    ld c, [hl]
    ld bc, $843A
    ld a, e
    inc bc
    dec sp
    rlca
    ld [$4E83], sp
    add hl, bc
    ld l, a
    ld a, e
    ld a, e
    add hl, sp
    rla
    jr jr_01C_46B0

    ld a, [hl-]
    inc e
    add e
    ld a, e
    add h
    ld c, d
    add l
    ld a, e
    ld [bc], a
    ld l, l
    ld e, l
    add e
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add d
    ld c, d
    adc b
    ld a, e
    dec b
    ld l, l
    dec e
    dec e
    dec hl
    inc e
    add h
    ld a, e
    add e

jr_01C_46B0:
    ld c, d
    inc b
    dec de
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    add h
    ld a, e
    ld b, $39
    rla
    jr jr_01C_46F5

    ld l, [hl]
    ld l, a
    add e
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    dec e
    dec hl
    add e
    ld l, c
    ld bc, $831B
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add l
    ld a, e
    ld b, $6D
    ld l, [hl]
    ld l, [hl]
    ld e, l
    ld e, [hl]
    ld e, [hl]
    inc bc
    ld c, [hl]
    ccf
    dec hl
    add d
    ld a, e
    ld bc, $845C
    ld a, e
    ld bc, $8339
    dec e
    ld bc, $832B
    ld c, d
    ld bc, $841B
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    add d
    ld a, e
    ld [bc], a

jr_01C_46F5:
    inc e
    ld c, h
    add d
    ld a, e
    dec b
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, e
    inc e
    add e
    ld a, e
    ld [bc], a
    add hl, sp
    ld c, [hl]
    add h
    dec e
    add d
    ld e, [hl]
    ld bc, $8317
    dec e
    inc b
    ld c, [hl]
    daa
    jr z, jr_01C_475C

    add l
    ld a, e
    inc b
    ld a, h
    ld l, l
    ld l, [hl]
    ld e, l
    add d
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add a
    ld a, e
    ld bc, $836D
    dec e
    inc bc
    ld c, [hl]
    ld e, a
    ld c, [hl]
    add d
    ld e, [hl]
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    add e
    ld a, e
    ld [bc], a
    ld c, h
    inc e
    add l
    ld a, e
    ld [bc], a
    ld l, h
    ld c, h
    add e
    ld a, e
    ld bc, $8529
    dec e
    ld bc, $85A9
    dec e
    inc b
    rla
    scf
    jr c, jr_01C_4772

    adc b
    ld a, e
    ld b, $6D
    ld e, l
    ld c, [hl]
    ld e, l
    ccf
    dec hl
    add [hl]
    ld a, e
    inc bc
    add hl, sp
    dec e
    dec e
    add e
    ld c, [hl]
    ld bc, $845F
    ld l, [hl]

jr_01C_475C:
    ld bc, $8E6F
    ld a, e
    inc bc
    inc e
    ld l, h
    add hl, hl
    add e
    dec e
    rlca
    ld c, [hl]
    dec d
    ret z

    xor d
    ld a, [hl]
    ld d, $1D
    add d
    ld e, [hl]
    add d
    ld c, [hl]

jr_01C_4772:
    ld [bc], a
    ccf
    dec hl
    adc b
    ld a, e
    ld [bc], a
    ld l, l
    ld e, l
    add d
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add d
    ld c, d
    add e
    ld a, e
    ld [bc], a
    ld e, h
    ld l, l
    add h
    ld l, [hl]
    ld bc, $876F
    ld a, e
    ld bc, $8D1C
    ld a, e
    ld a, [bc]
    add hl, hl
    dec e
    dec e
    ld c, [hl]
    ld e, a
    sbc l
    adc h
    ret z

    adc e
    sbc a
    add h
    ld l, [hl]
    inc b
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    adc b
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld e, l
    add e
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add d
    ld c, d
    sbc d
    ld a, e
    ld [bc], a
    ld l, h
    dec sp
    add e
    dec e
    rlca
    ld c, [hl]
    ld l, [hl]
    xor [hl]
    sbc l
    sbc [hl]
    sbc a
    xor a
    add d
    ld a, e
    ld [$7B1C], sp
    ld l, l
    ld l, [hl]
    ld c, [hl]
    ccf
    dec hl
    ld c, d
    add h
    ld a, e
    ld bc, $834A
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld e, l
    add e
    ld c, [hl]
    inc bc
    ld e, [hl]
    ccf
    dec hl
    add h
    ld c, d
    adc d
    ld a, e
    adc d
    ld c, d
    add [hl]
    dec e
    rlca
    ld c, [hl]
    ld a, [hl-]
    ld a, h
    xor l
    xor [hl]
    xor a
    ld a, e
    add e
    ld c, d
    add d
    ld a, e
    ld [bc], a
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    rlca
    ccf
    dec hl
    ld e, h
    ld a, e
    add hl, sp
    dec e
    ld a, [hl-]
    add h
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld e, l
    add d
    ld c, [hl]
    inc b
    ld e, l
    ld c, [hl]
    ld e, [hl]
    ccf
    add d
    ld c, [hl]
    ld b, $3F
    dec hl
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    add d
    ld c, c
    inc bc
    ld c, d
    dec de
    dec a
    add d
    ld c, [hl]
    add d
    ld e, [hl]
    ld bc, $8A4E
    dec e
    ld [bc], a
    ld c, [hl]
    ld a, [hl-]
    add h
    ld a, e
    dec b
    add hl, hl
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add d
    ld a, e
    dec bc
    ld l, l
    ld l, [hl]
    ld l, [hl]
    rla
    ld a, $2B
    ld a, e
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    ld e, h
    add l
    ld a, e
    ld bc, $856D
    ld l, [hl]
    ld [bc], a
    ld c, [hl]
    ld e, l
    add d
    ld c, [hl]
    rlca
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, l
    add e
    ld c, [hl]
    ld bc, $855F
    ld l, [hl]
    adc c
    dec e
    ld [bc], a
    ld c, [hl]
    ld a, [hl-]
    add l
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add h
    ld a, e
    rlca
    rla
    ld c, [hl]
    ld [$5C3A], sp
    ld a, e
    inc e
    adc h
    ld a, e
    ld bc, $866D
    ld l, [hl]
    add h
    ld c, [hl]
    inc b
    ld e, a
    ld c, [hl]
    ld e, a
    ld l, a
    add l
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, [hl]
    add [hl]
    dec e
    ld [bc], a
    ld c, [hl]
    dec hl
    add [hl]
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add e
    ld a, e
    dec b
    ld l, l
    rla
    jr jr_01C_48B9

    ld c, c
    add d
    ld c, d
    inc b
    ld c, c
    ld c, d
    ld a, e
    inc e
    adc a
    ld a, e
    inc b
    ld l, l
    ld l, [hl]
    ld c, [hl]
    ld e, [hl]
    add d
    ld l, [hl]
    inc b
    ld l, a
    ld a, e
    ld l, h
    ld c, h
    add h
    ld a, e
    inc b
    add hl, hl
    dec e
    dec e
    dec d
    add e
    ld a, [hl]
    ld [$4E1D], sp
    ld c, [hl]
    daa
    jr z, jr_01C_48BB

    jr z, jr_01C_4900

    add d
    ld a, e
    dec b

jr_01C_48B9:
    ld l, l
    ld c, [hl]

jr_01C_48BB:
    ld c, [hl]
    ccf
    ld a, [hl-]
    add d
    ld a, e
    rrca
    add hl, hl
    dec a
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ccf
    dec hl
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    add [hl]
    ld c, d
    add h
    ld a, e
    inc bc
    ld c, h
    ld a, e
    dec de
    add d
    ld c, [hl]
    inc b
    ld a, [hl-]
    ld a, e
    ld a, e
    ld c, h
    add h
    ld a, e
    add hl, bc
    ld c, h
    ld a, e
    dec de
    dec e
    dec d
    sbc h
    sbc d
    adc [hl]
    xor c
    add d
    dec e
    inc c
    ld c, [hl]
    scf
    jr c, jr_01C_4909

    jr jr_01C_4933

    dec hl
    ld a, e
    add hl, hl
    ld c, [hl]
    ld l, [hl]
    ld l, a
    add d
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld e, [hl]

jr_01C_4900:
    ld e, a
    add l
    ld l, [hl]
    add d
    dec e
    inc bc
    dec h
    ld h, $1D

jr_01C_4909:
    add d
    rra
    rlca
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ccf
    dec hl
    add h
    ld a, e
    dec b
    add hl, hl
    dec a
    dec a
    ld e, a
    ld a, [hl-]
    adc c
    ld a, e
    inc bc
    dec a
    dec e
    adc l
    add e
    adc [hl]
    ld bc, $84C8
    dec e
    add d
    ld c, [hl]
    add d
    dec e
    dec b
    ccf
    ld a, [hl-]
    add hl, hl
    ld l, [hl]
    ld a, [hl-]
    add d
    ld a, e

jr_01C_4933:
    dec b
    dec de
    ld c, [hl]
    ld e, [hl]
    ld e, a
    ld l, a
    add h
    ld a, e
    add hl, bc
    add hl, sp
    dec e
    ld c, $57
    ld e, b
    dec e
    rra
    dec e
    ld c, [hl]
    add e
    ld l, [hl]
    inc b
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add e
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    ld l, a
    add [hl]
    ld a, e
    dec bc
    ld c, h
    ld a, e
    ld a, e
    dec de
    dec a
    ld e, a
    sbc l
    adc h
    db $FD
    adc e
    sbc a
    add e
    dec e
    ld bc, $8305
    ld c, $03
    ld b, $4E
    ld a, [hl-]
    add e
    ld a, e
    ld bc, $831B
    ld c, [hl]
    ld [bc], a
    ld l, [hl]
    ld l, a
    add h
    ld a, e
    dec bc
    inc e
    add hl, sp
    ld l, [hl]
    dec e
    dec d
    ld a, [hl]
    ld d, $1D
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    dec e
    dec hl
    adc b
    ld a, e
    add hl, bc
    add hl, hl
    dec a
    ld e, a
    ld l, a
    xor l
    sbc l
    sbc [hl]
    sbc a
    xor a
    add h
    dec e
    ld b, $15
    ld a, [hl]
    ld d, $1D
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    dec b
    add hl, sp
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    add a
    ld a, e
    ld a, [bc]
    inc e
    add hl, sp
    dec e
    adc l
    db $FD
    adc a
    dec e
    ld c, a
    ld l, a
    inc e
    add e
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    add e
    ld a, e
    ld bc, $8329
    dec e
    ld bc, $874B
    ld a, e
    ld a, [bc]
    dec de
    ld c, [hl]
    ld l, a
    ld a, e
    ld c, h
    xor l
    xor [hl]
    xor a
    add hl, hl
    ld c, l
    add d
    dec e
    ld [$8D2F], sp
    sbc d
    adc a
    dec l
    dec e
    ld a, [hl-]
    ld e, h
    add d
    ld a, e
    ld [bc], a
    ld l, [hl]
    ld l, a
    add e
    ld a, e
    inc bc
    dec de
    dec a
    dec a
    add d
    ld a, $0A
    rrca
    ld a, e
    add hl, sp
    ld l, [hl]
    sbc l
    sbc [hl]
    sbc a
    dec e
    ld e, a
    ld a, [hl+]
    adc d
    ld a, e
    ld bc, $8329
    dec e
    ld bc, $864B
    ld a, e
    inc b
    dec de
    dec a
    ld c, [hl]
    ld a, [hl+]
    add e
    ld a, e
    dec c
    ld c, h
    inc e
    add hl, hl
    ld e, l
    dec e
    ld c, [hl]
    ld l, a
    sbc l
    sbc [hl]
    sbc a
    ld l, l
    dec e
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $835C
    ld a, e
    add hl, bc
    ld l, c
    halt
    dec a
    dec d
    add a
    adc b
    adc c
    dec e
    ld c, e
    add d
    ld a, e
    dec b
    xor l
    xor [hl]
    xor a
    ld c, [hl]
    ld e, a
    add h
    ld a, e
    ld bc, $864C
    ld a, e
    ld bc, $8339
    dec e
    ld bc, $853A
    ld a, e
    ld b, $29
    dec a
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    ld c, h
    add h
    ld a, e
    ld a, [de]
    add hl, hl
    ld c, [hl]
    dec e
    ld c, [hl]
    ld a, [hl+]
    xor l
    xor [hl]
    xor a
    dec de
    dec b
    ld l, b
    rrca
    ld c, d
    ld c, c
    ld c, d
    halt
    rlca
    ld [$174E], sp
    adc l
    sub a
    sbc b
    sbc c
    dec e
    ld a, [hl-]
    add e
    ld a, e
    inc b
    dec de
    dec a
    ld e, a
    ld l, a
    adc h
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    add [hl]
    ld a, e
    ld bc, $8329
    ld c, [hl]
    ld bc, $853A
    ld a, e
    inc c
    add hl, hl
    ld c, l
    ld c, [hl]
    jr c, jr_01C_4AA9

    inc e
    ld a, e
    dec de
    dec e
    ld [hl], a
    ld a, b
    dec e
    add h
    ld c, [hl]
    ld c, $17
    jr jr_01C_4ADB

    ld c, [hl]
    inc bc
    sub l
    rst $00
    sub [hl]
    dec e
    ld a, [hl-]
    ld e, h
    ld a, e
    dec de
    ld c, [hl]
    add d
    ld e, a
    sub [hl]
    ld a, e
    ld bc, $8329
    ld c, [hl]
    ld bc, $853A
    ld a, e
    ld [bc], a
    add hl, hl
    ld e, l
    add d
    ld c, [hl]
    inc bc

jr_01C_4AA9:
    ld a, [hl+]
    ld a, e
    add hl, sp
    add h
    ld c, [hl]
    ld bc, $836D
    ld l, [hl]
    ld b, $5D
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    add e
    dec e
    inc b
    cpl
    ld a, [hl-]
    ld a, e
    add hl, sp
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld l, a
    sub b
    ld a, e
    ld bc, $844C

jr_01C_4ACA:
    ld a, e
    dec b
    dec sp
    rlca
    ld c, [hl]
    ld c, a
    ld l, a
    add [hl]
    ld a, e
    dec bc
    dec de
    ld c, a
    ld c, [hl]
    daa
    ld a, [hl+]
    ld a, e
    add hl, sp

jr_01C_4ADB:
    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    add h
    ld a, e
    inc bc
    ld l, l
    ld e, l
    ld c, [hl]
    add [hl]
    ld l, [hl]
    rlca
    ld l, a
    ld a, e
    ld a, e
    add hl, hl
    ld c, l
    ld e, a
    ld l, a
    add l
    ld a, e
    inc b
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    add d
    ld c, c
    ld b, $4A
    ld a, e
    ld l, h
    inc e
    ld a, e
    ld c, d
    add l
    ld a, e
    dec b
    add hl, sp
    rla
    jr @+$61

    ld a, [hl-]
    add h
    ld a, e
    inc bc
    dec sp
    rlca
    ld [$4E82], sp
    ld [$2A37], sp
    ld a, e
    add hl, hl
    ld e, [hl]
    ld l, a
    ld e, h
    inc e
    add d
    ld a, e
    ld b, $4A
    ld a, e
    ld e, h
    ld l, l
    ld e, l
    ld a, [hl-]
    adc b
    ld a, e
    ld b, $1B
    ccf
    ld c, [hl]

jr_01C_4B27:
    ld e, a
    dec hl
    ld l, h
    add d
    ld a, e
    ld [bc], a
    rlca
    ld [$4E85], sp
    rlca
    ccf
    dec hl
    ld a, e

jr_01C_4B35:
    ld l, h
    dec de
    ccf
    dec hl
    add l
    ld a, e
    inc bc
    ld l, l
    xor [hl]
    ld l, a
    add e
    ld a, e
    add d
    ld c, d
    inc bc
    dec de
    rla
    jr jr_01C_4ACA

    ld c, [hl]
    ld b, $4F
    ld a, [hl+]
    ld a, e
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add e
    ld a, e
    rlca
    add hl, sp
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    add hl, de
    ld l, [hl]
    ld a, [hl-]
    add d
    ld a, e
    inc bc
    ld c, d
    ld a, e
    ld e, h
    add d
    ld a, e
    inc bc
    rlca
    ld [$835E], sp
    dec e
    rlca
    dec hl
    ld c, d
    dec de
    rla
    jr jr_01C_4B74

    rra
    add d
    ld l, [hl]
    add d
    ld c, [hl]

jr_01C_4B74:
    inc bc
    daa
    jr z, jr_01C_4B93

    add d
    ld c, [hl]
    inc b
    ccf
    dec hl
    ld c, d
    inc e
    add l
    ld a, e
    inc b
    ld c, h
    ld a, e
    dec de
    dec a
    add e
    ld c, [hl]
    ld bc, $834F
    ld c, [hl]
    ld [bc], a
    ld a, [hl+]
    ld a, e
    add [hl]
    ld c, c
    inc bc
    dec de

jr_01C_4B93:
    ld c, [hl]
    dec hl
    add l
    ld c, c
    ld [$4E1B], sp
    dec hl
    ld c, d
    ld c, c
    dec de
    rla
    jr jr_01C_4B27

    dec e
    add d
    ld c, [hl]
    inc bc
    dec e
    rra
    ld l, a
    add d
    ld a, e
    inc b
    add hl, sp
    ld c, [hl]
    scf
    jr c, jr_01C_4B35

    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add [hl]
    ld c, d
    inc b
    dec de
    dec a
    ld c, [hl]
    dec b
    add e
    ld c, $05
    ld b, $4E
    daa
    jr z, jr_01C_4BCA

    add e
    dec e
    inc bc
    ld c, a
    ld a, $3E
    add e

jr_01C_4BCA:
    ld c, [hl]
    inc bc
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    add d
    ld c, [hl]
    ld b, $5E
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ccf
    ld c, [hl]
    add d
    ld a, $01
    ld c, [hl]
    add h
    dec e
    ld bc, $8305
    ld c, $01
    ld b, $83
    ld a, e
    ld [bc], a
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld c, a
    add d
    ld c, [hl]
    ld bc, $834F
    ld c, [hl]
    inc b
    ld c, a
    ld c, [hl]
    ld c, [hl]
    ld c, a
    add e
    ld c, [hl]
    ld a, [bc]
    ld l, [hl]
    dec e
    dec d
    ld a, [hl]
    ld d, $1F
    ld c, [hl]
    scf
    jr c, jr_01C_4C0B

    add e
    ld l, $02
    ld b, $5F

jr_01C_4C0B:
    add e
    ld c, [hl]
    ld bc, $855F
    ld l, [hl]
    inc bc
    ld e, l
    ld c, [hl]
    ld e, a
    add l
    ld l, [hl]
    ld b, $5D
    ld c, [hl]
    ld c, [hl]
    ld e, a
    dec e
    dec e
    add hl, bc
    dec d
    ld a, [hl]
    ld d, $1F
    ld a, e
    ld l, d
    ld a, e
    inc e
    ld l, l
    add a
    ld l, [hl]
    ld bc, $875D
    ld c, [hl]
    ld [$6F5F], sp
    inc e
    dec l
    adc l
    db $FD
    adc a
    rra
    add d
    ld c, [hl]
    add d
    dec e
    inc b
    dec d
    ld a, [hl]
    ld d, $0E
    add h
    ld l, [hl]
    ld bc, $856F
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    add l
    ld a, e
    ld bc, $836D
    ld l, [hl]
    add hl, bc
    ld l, a
    dec l
    adc l
    db $FD
    adc a
    rra
    add hl, sp
    ld a, $3A
    add d
    ld a, e
    ld bc, $866C
    ld a, e
    ld bc, $876D
    ld l, [hl]
    ld [$1C6F], sp
    ld a, e
    ld l, l
    sbc l
    sbc [hl]

jr_01C_4C6B:
    sbc a
    rra
    add h
    dec e
    inc b
    adc l
    db $FD
    adc a
    ld l, a
    add d
    ld a, e
    ld bc, $856C
    ld a, e
    ld bc, $864C
    ld a, e
    ld bc, $861C
    ld a, e
    dec bc
    ld l, h
    ld l, l
    sbc l
    sbc [hl]
    sbc a
    ld l, a
    dec de
    ld c, [hl]
    dec hl
    ld a, e
    inc e
    adc c
    ld a, e
    ld bc, $881C
    ld a, e
    inc b
    ld l, h
    xor l
    xor [hl]
    xor a
    add d
    dec e
    add d
    ld l, [hl]
    inc b
    ld l, a
    sbc l
    sbc [hl]
    sbc a
    add d
    ld a, e
    ld bc, $8E1C
    ld a, e
    ld bc, $876C
    ld a, e
    add hl, bc
    xor l
    xor [hl]
    xor a
    ld a, e
    dec a
    ld c, [hl]
    daa
    jr z, jr_01C_4D2B

    add d
    ld c, c
    add d
    ld a, e
    ld bc, $8D6C
    ld a, e
    inc b
    ld c, h
    ld a, e
    ld l, h
    add hl, sp
    add d
    dec e
    ld b, $3A
    ld l, h
    ld a, e
    xor l
    xor [hl]
    xor a
    adc e
    ld a, e
    add d
    ld c, c
    ld [bc], a
    ld c, d
    ld c, c
    add d
    ld a, e
    ld bc, $831C
    ld a, e
    inc b
    ld c, h
    ld a, e
    ld a, e
    ld l, h
    add e
    ld a, e
    dec b
    dec de
    dec a
    ld c, [hl]
    scf
    jr c, jr_01C_4C6B

    dec e
    ld [bc], a
    ld [hl], l
    ld c, c
    add d
    ld a, e
    ld bc, $8D6C
    ld a, e
    inc d
    dec de
    dec e
    dec e
    dec hl
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    halt
    rlca
    add l
    dec e
    inc bc
    ld [hl], l
    ld l, d
    ld l, d
    add d
    ld l, c
    ld bc, $836A
    ld l, c
    add d
    ld l, d
    dec b
    dec de
    dec a
    ld c, [hl]
    jr c, @+$50

    adc b
    dec e
    ld c, $75
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    halt

jr_01C_4D2B:
    add l
    dec e
    add d
    ld a, $82
    ld c, [hl]
    inc bc
    ld a, $4E
    ld a, $82
    ld c, [hl]
    inc bc
    ld a, $4E
    ld a, $82
    ld c, [hl]
    ld bc, $883E
    dec e
    add d
    ld c, [hl]
    rlca
    ccf
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ccf
    ld c, [hl]
    ld c, a
    add h
    rra
    inc b
    dec e
    rra
    dec e
    rra
    add [hl]
    dec e
    inc bc
    ld a, $4E
    ld e, [hl]
    add d
    ld c, [hl]
    dec b
    ld e, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    add [hl]
    dec e
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    dec b
    dec e
    dec b
    ld b, $1D
    ld c, $82
    dec e
    inc bc
    ld e, [hl]
    ld a, $5E
    add d
    ld c, [hl]
    ld [$5F5E], sp
    ld a, $4E
    ld e, [hl]
    ld c, [hl]
    ld c, a
    ld e, a
    add d
    ld c, [hl]
    inc bc
    ld c, a
    ld e, [hl]
    ld e, [hl]
    add d
    ld c, [hl]
    inc bc
    ld e, a
    ld e, [hl]
    ld a, $82
    ld c, [hl]
    inc bc
    ld e, a
    ld c, [hl]
    ld c, a
    add e
    ld e, [hl]
    inc b
    ld c, a
    ld e, [hl]
    ld e, a
    ld e, l
    add d
    ld c, [hl]
    dec b
    ld e, l
    ld e, [hl]
    ld e, l
    ld c, [hl]
    ld e, [hl]
    add d
    dec e
    add d
    ld c, $82
    dec e
    inc bc
    ld l, $0E
    ld l, $83
    dec e
    ld b, $2E
    dec e
    dec e
    ld c, $15
    xor d
    add d
    ld a, [hl]
    ld bc, $9916
    ld l, [hl]
    ld bc, $855D
    ld c, [hl]
    sub b
    ld l, [hl]
    ld [bc], a
    dec h
    ld h, $82
    dec e
    ld a, [bc]
    ld c, $1D
    ld l, $1D
    ld c, $1D
    ld c, $1D
    adc l
    jp nc, $8E82

    ld [bc], a
    adc a
    ld a, [hl-]
    sbc b
    ld a, e
    ld b, $6D
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    adc a
    ld a, e
    inc b
    add hl, hl
    ld d, a
    ld e, b
    dec e
    add e
    ld l, $82
    dec e
    inc c
    ld c, $2E
    ld l, $1D
    adc l
    ret z

    adc [hl]
    xor d
    adc a
    ld a, [hl-]
    inc e
    ld e, h
    adc d
    ld a, e
    ld bc, $8B1C
    ld a, e
    inc b
    add hl, sp
    ld c, [hl]
    ld e, a
    ld l, a
    sub b
    ld a, e
    ld b, $1C
    ld a, e
    ld l, l
    ld l, [hl]
    dec h
    ld h, $82
    ld c, $02
    dec e
    ld c, $83
    dec e
    rlca
    ld c, $8D
    sbc d
    adc [hl]
    ret z

    adc a
    ld a, [hl-]
    add a
    ld c, c
    inc bc
    ld c, d
    ld c, c
    ld c, d
    add d
    ld c, c
    add d
    ld c, d
    ld bc, $8349
    ld c, d
    inc bc
    ld c, c
    ld c, d
    ld c, d
    add d
    ld a, e
    inc b
    ld e, h
    add hl, sp
    ld c, a
    ld l, a
    add a
    ld a, e
    ld bc, $874C
    ld a, e
    ld c, $6C
    inc e
    ld a, e
    inc e
    ld a, e
    add hl, hl
    ld d, a
    ld e, b
    dec e
    ld c, $1D
    ld c, $1D
    ld l, $82
    dec e
    ld b, $8D
    adc [hl]
    adc [hl]
    adc d
    adc a
    ld a, [hl-]
    add d
    ld c, [hl]
    ld a, [bc]
    ld a, $4E
    ld e, [hl]
    ld e, l
    ld a, $5E
    ld c, [hl]
    ld a, $5D
    ld e, [hl]
    add d
    ld c, [hl]
    ld b, $4F
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, [hl]
    rlca
    ld e, a
    ld a, [hl+]
    inc e
    ld a, e
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $8E4C
    ld a, e
    inc c
    ld l, h
    ld a, e
    inc e
    ld a, e
    ld l, l
    ld l, [hl]
    dec h
    ld h, $35
    ld [hl], $25
    ld h, $82
    dec e
    ld bc, $839D
    sbc [hl]
    inc bc
    sbc a
    ld a, e
    ld l, l
    adc d
    ld l, [hl]
    ld [bc], a
    ld c, [hl]
    ld e, l
    add e
    ld c, [hl]
    add h
    ld l, [hl]
    rlca
    ld l, a
    ld a, e
    ld a, e
    inc e
    dec de
    ld c, a
    ld a, [hl-]
    adc c
    ld a, e
    ld bc, $8A4C
    ld a, e
    db $10
    ld c, h
    ld a, e
    add hl, hl
    ld d, a
    ld e, b
    ld [hl], a
    ld a, b
    ld d, a
    ld e, b
    ld l, $1D
    xor l
    xor [hl]
    ld h, l
    xor [hl]
    xor a
    adc h
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld l, a
    add a
    ld a, e
    rlca
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    inc e
    ld l, h
    adc l
    ld a, e
    add d
    ld c, h
    inc de
    ld a, e
    ld c, h
    ld a, e
    ld c, h
    ld a, e
    ld l, l
    dec d
    ld a, [hl]
    ld d, $25
    ld h, $1D
    ld c, [hl]
    ld a, [hl+]
    add hl, bc
    ld c, [hl]
    ld a, [hl+]
    inc e
    ld l, h
    adc d
    ld a, e
    add d
    inc e
    inc b
    ld l, l
    ld a, $6F
    inc e
    add a
    ld a, e
    dec b
    add hl, sp
    ld e, [hl]
    daa
    jr z, jr_01C_4F3A

    add e
    ld a, e
    ld bc, $911C
    ld a, e
    dec c
    inc e
    add hl, hl
    adc l
    db $FD
    adc a
    ld d, a
    ld e, b
    dec e
    ld c, [hl]
    ld a, [hl+]
    add hl, de
    ld c, [hl]
    ld a, [hl-]
    adc b
    ld a, e
    dec c
    ld e, h
    ld a, e
    ld a, e
    ld l, h
    ld a, e
    ld l, h
    add hl, de
    ld e, [hl]
    ld a, [hl-]
    ld a, e
    inc e
    ld a, e
    ld c, c
    add l
    ld a, e
    inc b
    ld e, [hl]
    scf
    jr c, jr_01C_4F42

    add d
    ld c, c
    add e
    ld a, e
    add e
    ld l, d
    add h
    ld a, e
    add h
    ld c, c
    ld bc, $834C
    ld a, e
    ld c, $4C
    ld a, e
    dec de
    inc bc
    ld [bc], a
    inc b
    dec [hl]
    ld [hl], $2E
    ld e, a
    ld a, [hl+]
    add hl, hl
    ld e, a
    ld a, [hl+]
    adc h
    ld a, e
    ld a, [bc]

jr_01C_4F3A:
    ld e, h
    ld a, e
    add hl, hl
    ld e, [hl]
    ld a, [hl-]
    ld a, e
    dec sp
    rlca

jr_01C_4F42:
    ccf
    ld a, [hl+]
    add e
    ld a, e
    ld [bc], a
    add hl, sp
    ld c, [hl]
    add h
    ld e, [hl]
    inc b
    ld c, [hl]
    cp l
    cp [hl]
    cp a
    add e
    ld c, [hl]
    inc b
    jr z, jr_01C_4FBF

    ld a, e
    dec de
    add h
    ld c, [hl]
    inc bc
    dec hl
    inc e
    ld a, e
    add d
    ld c, c
    dec c
    dec de
    dec h
    ld h, $25
    ld h, $77
    ld a, b
    dec e
    ld c, a
    ld a, [hl+]
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    adc [hl]
    ld a, e
    rlca
    add hl, sp
    ld e, l
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld c, [hl]
    ld l, a
    add h
    ld a, e
    inc bc
    add hl, sp
    ld e, l
    ld e, a
    add e
    ld l, [hl]
    dec b
    dec e
    call $CFCE
    dec e
    add d
    ld l, [hl]
    ld bc, $8A5D
    ld c, [hl]
    rrca
    dec a
    ld c, [hl]
    ld c, [hl]
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    dec h
    ld h, $2E
    ld c, [hl]
    ld a, [hl+]
    add hl, bc
    ld a, $2A
    adc [hl]
    ld a, e
    ld a, [bc]
    add hl, bc
    ld a, $3A
    ld a, e
    add hl, hl
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    ld l, h
    inc e
    add d
    ld a, e
    ld [bc], a
    ld l, l
    ld l, a
    add e
    ld a, e
    add l
    ld a, d
    add d
    ld a, e
    inc c
    ld l, l
    ld l, [hl]
    ld e, l
    ld c, [hl]
    ld e, a
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]

jr_01C_4FBF:
    ld e, a
    add [hl]
    ld l, [hl]
    ld [$5857], sp
    ld l, $5F
    ld a, [hl+]
    add hl, de
    ld c, l
    ld a, [hl-]
    adc [hl]
    ld a, e
    rlca
    add hl, de
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld e, [hl]
    ld a, [hl-]
    add a
    ld a, e
    ld bc, $861C
    ld a, e
    ld bc, $844C
    ld a, e
    ld bc, $886D
    ld l, [hl]
    ld bc, $866F
    ld a, e
    ld [$6E6D], sp
    dec e
    ld c, [hl]
    ld a, [hl+]
    add hl, bc
    ld a, $2A
    adc b
    ld a, e
    add d
    ld c, d
    add h
    ld a, e
    rlca
    add hl, bc
    ld e, [hl]
    ld a, [hl+]
    inc e
    add hl, hl
    ld e, a
    dec hl
    add h
    ld a, e
    dec b
    ld c, h
    ld a, e
    ld a, e
    ld l, h
    inc e
    adc b
    ld a, e
    ld bc, $921C
    ld a, e
    rlca
    add hl, de
    dec e
    ld c, a
    ld a, [hl+]
    add hl, de
    ld c, [hl]
    dec hl
    add a
    ld a, e
    dec b
    add hl, sp

jr_01C_5018:
    ld e, l
    ld c, [hl]
    jr z, jr_01C_5067

    add d
    ld a, e
    ld [$5E19], sp
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld e, [hl]
    ld e, a
    ld a, [de]
    and c
    ld a, e
    inc c
    inc e
    ld a, e
    add hl, hl
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add hl, hl
    ld c, [hl]
    daa
    jr z, jr_01C_5080

    inc e
    add l
    ld a, e
    inc b
    ld l, l
    ld e, l
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    ld [$5D29], sp
    cp l
    xor $BF
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add l
    ld a, e
    add d
    ld l, c
    add a
    ld a, e
    inc b
    inc e
    ld a, e
    ld a, e
    ld l, h
    adc h
    ld a, e
    ld bc, $841C
    ld a, e
    add hl, bc
    add hl, sp
    ld e, l
    ld c, [hl]
    ld a, [hl+]
    add hl, sp
    ld e, l
    scf
    jr c, jr_01C_508E

    add l
    ld a, e
    dec b
    ld l, h

jr_01C_5067:
    ld a, e
    ld l, l
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    ld [$1D39], sp
    call $CFCE
    ld e, [hl]
    ld e, a
    ld a, [de]
    add h
    ld a, e
    inc b
    add hl, sp
    dec a
    ccf
    dec hl
    add h
    ld c, d
    add e

jr_01C_5080:
    ld a, e
    ld bc, $8E4A
    ld a, e
    ld bc, $846C
    ld a, e
    ld a, [bc]
    add hl, bc
    ld c, l
    ld a, $2A

jr_01C_508E:
    ld a, e
    ld l, l
    ld l, [hl]
    ld e, l
    ld c, [hl]
    jr z, jr_01C_5018

    ld c, c
    add d
    ld a, e
    inc b
    inc e
    add hl, sp
    ld c, [hl]
    ld a, [hl-]
    add e
    ld a, e
    add h
    ld e, c
    inc bc
    ld c, [hl]
    ld e, a
    ld a, [hl+]
    add l
    ld a, e
    dec b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, a
    add d
    ld c, [hl]
    dec b
    cp l
    cp [hl]
    cp a
    ccf
    dec hl
    adc b
    ld a, e
    ld bc, $881C
    ld a, e
    dec bc
    ld l, h
    add hl, de
    ld e, [hl]
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    inc e
    ld a, e
    ld l, l
    ld l, [hl]
    ld e, l
    add e
    dec e
    ld b, $3A
    inc e
    ld a, e
    add hl, sp
    ld c, [hl]
    ld a, [hl-]
    add l
    ld a, e
    inc b
    inc e
    add hl, sp
    ld e, a
    ld l, a
    add a
    ld a, e
    ld [bc], a
    ld l, l
    ld e, [hl]
    add d
    ld c, [hl]
    add hl, bc
    ld l, [hl]
    ld e, l
    call $CFCE
    dec e
    ccf
    ld a, [hl+]
    ld l, h
    add [hl]
    ld a, e
    ld bc, $896C
    ld a, e
    inc b
    add hl, de
    dec e
    ld c, [hl]
    ld a, [hl+]
    add l
    ld a, e
    dec b
    ld l, l
    dec d
    ld a, [hl]
    ld d, $2A
    add d
    ld a, e
    inc bc
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add d
    ld a, e
    rlca
    ld e, h
    ld a, e
    ld a, e
    ld e, h
    add hl, sp
    ld e, [hl]
    ld a, [hl-]
    add a
    ld a, e
    ld b, $29
    ld c, [hl]
    ld c, [hl]
    ld l, a
    ld a, e
    ld e, d
    add e
    ld a, d
    inc bc
    ld l, l
    ld c, [hl]
    dec hl
    sub c
    ld a, e
    dec b
    dec de
    dec e
    ld a, $2A
    ld l, h
    add h
    ld a, e
    dec b
    add hl, sp
    adc l
    rst $38
    adc a
    ld a, [hl-]
    adc e
    ld a, e
    inc bc
    add hl, sp
    ld c, [hl]
    dec hl
    add l
    ld a, e
    ld b, $1C
    ld a, e
    add hl, hl
    ld e, [hl]
    ld l, a
    inc e
    add h
    ld a, e
    dec b
    inc e
    add hl, sp
    ld e, [hl]
    ccf
    dec hl
    add [hl]
    ld a, e
    add e
    ld c, d
    add e
    ld a, e
    ld [$7B1C], sp
    halt
    dec c
    rra
    ld c, $4E
    ld a, [hl+]
    add d
    ld a, e
    ld [$7B5C], sp
    ld a, e
    add hl, sp
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    adc d
    ld a, e
    rlca
    halt
    rlca
    ld [$2827], sp
    ld c, e
    inc e
    add h
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld a, [hl+]
    add e
    ld a, e
    ld de, $7B4A
    ld a, e
    add hl, sp
    daa
    ld c, [hl]
    ccf
    dec hl
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    dec de
    dec a
    ld c, [hl]
    ccf
    dec hl
    add e
    ld c, d
    rlca
    halt
    dec c
    dec e
    ld c, $1D
    ld e, a
    ld a, [hl+]
    add [hl]
    ld a, e
    inc bc
    ld b, [hl]
    xor [hl]
    xor a
    adc d
    ld a, e
    rlca
    add hl, sp
    dec a
    rla
    jr jr_01C_51CE

    jr c, jr_01C_51D3

    add d
    ld a, e
    ld b, $4A
    ld a, e
    ld a, e
    add hl, hl
    ld c, a
    ld a, [hl+]
    add d
    ld a, e
    rrca
    add hl, sp
    ld a, $2A
    ld a, e
    add hl, sp
    scf
    jr c, @+$60

    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, [hl]
    ld c, a
    add d
    ld c, [hl]
    inc b
    ld c, a
    ld e, [hl]
    ld c, [hl]
    ld e, a
    add d
    dec e
    ld b, $1F
    ld c, $1F
    dec e
    dec hl
    ld l, e
    add h
    ld a, e
    dec b
    add hl, hl
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    ld e, h
    add h
    ld a, e

jr_01C_51CE:
    ld bc, $845C
    ld a, e
    ld [bc], a

jr_01C_51D3:
    add hl, sp
    ld c, [hl]
    add e
    ld l, [hl]
    ld [de], a
    ld c, [hl]
    cp l
    rst $28
    cp a
    dec e
    ld a, [hl-]
    ld a, e
    add hl, hl
    ld c, [hl]
    ld a, [hl+]
    ld c, h
    ld a, e
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    ld c, h
    ld a, e
    ld l, l
    adc b
    ld l, [hl]
    ld bc, $835D
    ld c, [hl]
    add l
    ld l, [hl]
    rlca
    dec l
    dec e
    dec e
    ld c, $1D
    rrca
    ld [hl], l
    add d
    ld a, e
    inc b
    inc e
    add hl, hl
    ld c, [hl]

jr_01C_5200:
    ld a, [hl-]
    adc e
    ld a, e
    rrca
    add hl, sp
    ld e, l
    ld a, [hl-]
    ld a, e
    add hl, sp
    dec e
    call $CFCE
    ld c, [hl]
    ld a, [hl-]
    inc e
    add hl, hl
    ld l, [hl]
    ld a, [hl+]
    add d
    ld a, e
    inc b
    add hl, sp
    jr jr_01C_5243

    ld c, h
    adc d
    ld a, e
    inc b
    ld l, l
    ld e, l
    ld c, a
    ld l, a
    add l
    ld a, e
    ld bc, $846D
    ld c, $09
    ld l, $0F
    ld c, e
    ld a, e
    dec sp
    rlca
    jr c, @+$3C

    inc e
    add l
    ld a, e
    ld b, $4A
    ld a, e
    ld a, e
    inc e
    ld a, e
    ld a, e
    ld bc, $837A
    ld a, e
    ld bc, $837A
    ld e, c
    ld [bc], a

jr_01C_5243:
    ld c, [hl]
    ld a, [hl-]
    add l
    ld a, e
    ld b, $3B
    rlca
    ld c, [hl]
    dec hl
    ld a, e
    inc e
    add d
    ld a, e
    ld bc, $874C
    ld a, e
    inc b
    ld l, l
    ld e, a
    ld a, [hl-]
    inc e
    add d
    ld a, e
    rrca
    ld c, h
    ld a, e
    inc e
    dec l
    rra
    ld c, $2E
    ld c, $1F
    cp l
    rst $28
    cp a
    ld c, [hl]
    jr c, jr_01C_52B5

    add l
    ld a, e
    inc bc
    db $D3
    dec e
    dec hl
    add d
    ld c, d
    add d
    ld l, d
    add l
    ld a, e
    dec b
    inc e
    ld a, e
    add hl, sp
    ld c, [hl]
    jr z, jr_01C_5200

    ld a, e
    add d
    ld c, c
    ld [bc], a
    halt
    rlca
    add e
    ld c, [hl]
    inc bc
    dec hl
    ld c, d
    inc e
    add h
    ld a, e
    ld bc, $8369
    ld a, e
    inc b
    inc e
    add hl, sp
    ld e, [hl]
    ld a, [hl-]
    add d
    ld a, e
    ld bc, $834A
    ld a, e
    ld [bc], a
    ld l, l
    dec e
    add d
    ld c, $10
    dec e
    cpl
    call $CFCE
    ld e, l
    ld c, [hl]
    ccf
    jr z, jr_01C_52F6

    ld l, h
    ld e, h
    call nc, $1D0D
    ld c, $84
    dec e
    inc b
    ld a, [hl-]

jr_01C_52B5:
    ld a, l
    ld a, [hl]
    ld a, a
    add e
    ld a, e
    ld b, $39
    ld e, l
    ld c, [hl]
    ld a, [hl-]
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    rlca
    rla
    jr jr_01C_5315

    ld e, [hl]
    ld c, [hl]
    ccf
    ld a, [hl+]
    add e
    ld a, e
    inc bc
    add hl, sp
    ld a, $2A
    add e
    ld a, e
    rlca
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    ld a, e
    add hl, hl
    ld a, $0A
    add d
    ld a, e
    ld [bc], a
    add hl, bc
    ld e, [hl]
    add d
    dec e
    ld [bc], a
    ld l, [hl]
    ld l, a
    add e
    ld a, d
    ld [bc], a
    ld l, l
    ld e, l
    add d
    ld c, [hl]
    inc b
    ld a, [hl-]
    inc e
    ld a, e
    add hl, hl
    add d
    dec e
    ld bc, $832F

jr_01C_52F6:
    ld l, [hl]
    ld b, $6F
    add hl, sp
    adc l
    rst $38
    adc a
    ld a, [hl-]
    add e
    ld a, e
    dec b
    ld l, l
    ld l, a
    ld a, e
    add hl, sp
    ld e, [hl]
    add a
    ld l, [hl]
    ld bc, $846F
    ld a, e
    inc bc
    add hl, sp
    ld a, $2B
    add a
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]

jr_01C_5315:
    ld a, [de]
    add d
    ld a, e
    dec b
    add hl, de
    ld c, a
    rra
    cpl
    inc e
    add d
    ld a, e
    ld a, [bc]
    inc e
    ld a, e
    ld a, e
    ld l, l
    ld e, l
    ld a, $E4
    ld a, e
    ld a, h
    add hl, hl
    add d
    dec e
    ld bc, $843A
    ld a, e
    dec b
    add hl, hl
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    add [hl]
    ld a, e
    inc bc
    add hl, sp
    ld l, [hl]
    ld a, [hl+]
    adc e
    ld a, e
    inc b
    dec de
    ld a, $4E
    dec hl
    add l
    ld a, e
    rlca
    dec sp
    rlca
    ld [$1C0A], sp
    ld a, e
    add hl, hl
    add d
    ld e, [hl]
    ld bc, $876F
    ld a, e
    ld b, $6D
    dec e
    rrca
    ld [hl], l
    ld a, e
    db $D3
    add d
    dec e
    ld bc, $833A
    ld a, e
    dec b
    inc e
    ld a, e
    xor l
    xor [hl]
    xor a
    add e
    ld a, e
    ld bc, $841C
    ld a, e
    ld bc, $8969
    ld a, e
    add d
    ld c, d
    inc bc
    dec de
    dec e
    ld a, $82
    ld c, [hl]
    ld bc, $832B
    ld c, d
    dec b
    halt
    rlca
    rla
    jr jr_01C_539D

    add d
    ld a, e
    ld b, $39
    ld e, l
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    inc e
    add h
    ld a, e
    ld [bc], a
    ld a, h
    add hl, hl
    add d
    dec e
    inc bc
    rrca
    add h
    dec c
    add d
    dec e
    rlca
    cp l
    cp [hl]
    cp a

jr_01C_539D:
    jr z, jr_01C_53EA

    ld a, e
    ld l, h
    add a
    ld a, e
    add d
    ld c, d
    inc bc
    dec de
    dec e
    ld a, [bc]
    add e
    ld a, e
    ld b, $5C
    ld a, e
    ld a, e
    ld a, l
    ld a, [hl]
    ld d, $83
    dec e
    rlca
    ld c, [hl]
    ld a, $4E
    ld a, $4E
    ld e, [hl]
    ld e, a
    add e
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    ld b, $09
    ld e, [hl]
    ld e, [hl]
    ld a, [hl-]
    ld a, e
    ld a, e
    add d
    ld a, h
    add d
    ld a, e
    ld [bc], a
    inc e
    add hl, hl
    add a
    dec e
    dec b
    call $CFCE
    ld c, [hl]
    ld a, [hl-]
    adc b
    ld a, e
    inc bc
    add hl, hl
    dec e
    ld l, $82
    rra
    inc c
    ccf
    dec hl
    ld a, e
    inc e
    ld e, h
    ld a, e
    add hl, hl
    adc l

jr_01C_53EA:
    rst $38
    adc a
    dec e
    cpl
    adc e
    ld l, [hl]
    ld bc, $836F
    ld a, e
    inc b
    add hl, de
    ld c, [hl]
    ccf
    ld a, [hl-]
    add a
    ld a, e
    inc bc
    db $D3
    dec e
    cpl
    add h
    ld l, [hl]
    ld bc, $836F
    ld e, c
    ld [bc], a
    ld e, [hl]
    ld a, [hl-]
    adc c
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld l, $82
    dec e
    ld [bc], a
    ccf
    dec hl
    add e
    ld a, e
    ld b, $1B
    inc bc
    ld [bc], a
    inc b
    dec e
    ld l, a
    adc a
    ld a, e
    inc b
    db $D3
    dec e
    ld c, l
    ld a, [hl-]
    add [hl]
    ld a, e
    inc b
    call nc, $1D0D
    ld l, a
    add a
    ld a, e
    inc b
    add hl, hl
    ld c, a
    ld a, [hl-]
    ld a, e
    add d
    inc e
    add d
    ld a, e
    ld [bc], a
    ld a, h
    inc e
    add e
    ld a, e
    ld a, [bc]
    add hl, sp
    rra
    rra
    ld l, $4E
    ccf
    ld c, h
    ld a, e
    add hl, sp
    ld e, l
    add h
    dec e
    ld bc, $86E4
    ld a, e
    inc b
    ld c, h
    ld a, e
    ld l, h
    inc e
    add e
    ld a, e
    ld b, $4C
    call nc, $1D0D
    ld c, [hl]
    ld a, [hl-]
    add [hl]
    ld a, e
    rlca
    add hl, hl
    dec e
    dec e
    ld a, [de]
    ld a, h
    inc e
    ld e, h
    add h
    ld a, e
    ld [bc], a
    add hl, hl
    ld e, [hl]
    add e
    ld a, e
    ld bc, $871C
    ld a, e
    add hl, bc
    add hl, sp
    dec e
    dec e
    rra
    ld l, $4E
    dec hl
    ld c, c
    dec de
    add d
    ld a, $05
    ld e, a
    dec e
    dec e
    rrca
    ld [hl], l
    add e
    ld a, e
    ld [bc], a
    ld c, c
    ld a, e
    add h
    ld c, c
    add hl, bc
    ld a, e
    ld c, c
    ld c, d
    ld a, e
    db $D3
    dec e
    rra
    ld e, [hl]
    ld a, [hl-]
    add [hl]
    ld a, e
    dec b
    ld a, l
    ld a, [hl]
    ld d, $1A
    ld e, h
    add l
    ld a, e
    inc bc
    ld e, h
    add hl, hl
    ld e, [hl]
    adc b
    ld a, e
    ld b, $4A
    ld a, e
    ld a, e
    add hl, sp
    ld e, a
    ld e, [hl]
    add l
    ld e, l
    dec b
    ld c, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld c, a
    add e
    dec e
    ld c, $BD
    rst $28
    cp a
    ccf
    rlca
    ld [$3E4E], sp
    daa
    jr z, jr_01C_54FB

    ld a, $28
    dec c
    add d
    dec e
    ld [bc], a
    ld c, [hl]
    ld a, [hl-]
    add e
    ld a, e
    rlca
    ld e, h
    ld a, e
    add hl, sp
    adc l
    rst $38
    adc a
    ld a, [hl-]
    add a
    ld a, e
    inc bc
    add hl, hl
    ld c, a
    dec hl
    add d
    ld c, d
    dec bc
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    dec de
    ld c, [hl]
    cp l
    cp [hl]
    cp a
    ld c, [hl]
    ld c, a
    adc h
    ld l, [hl]
    inc de
    ld c, [hl]
    call $CFCE
    ld c, [hl]
    rla
    jr jr_01C_553E

    ld c, [hl]
    scf
    jr c, @+$50

    ld e, [hl]
    dec e
    ld c, $1F
    dec e
    ld e, [hl]
    ld a, [hl-]
    add l

jr_01C_54FB:
    ld a, e
    dec b
    add hl, sp
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    add l
    ld a, e
    inc bc
    inc e
    ld a, e
    dec de
    add d
    ld c, [hl]
    ld c, $5F
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld c, l
    ld e, a
    ld c, [hl]
    dec e
    call $CFCE
    ld c, [hl]
    ld e, [hl]
    ld a, [de]
    adc d
    ld a, e
    ld [bc], a
    add hl, hl
    ld e, a
    add e
    ld a, d
    dec b
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld c, [hl]
    ld e, a
    add l
    ld l, [hl]
    dec b
    dec l
    dec e
    ld c, $4E
    dec hl
    add d
    ld a, e
    ld bc, $835C
    ld a, e
    inc bc
    xor l
    xor [hl]
    xor a
    add a
    ld a, e
    inc bc
    dec de
    dec a
    ld c, [hl]

jr_01C_553E:
    adc b
    ld l, [hl]
    ld bc, $836F
    ld a, d
    inc bc
    ld l, l
    ld c, [hl]
    ld a, [hl+]
    add h
    ld a, e
    ld bc, $845C
    ld a, e
    inc b
    inc e
    add hl, hl
    ld c, [hl]
    ld a, [hl+]
    add h
    ld a, e
    dec bc
    add hl, hl
    ld c, [hl]
    ld l, a
    ld a, e
    ld c, h
    ld a, e
    ld c, h
    ld a, e
    ld l, l
    dec l
    dec e
    add d
    ccf
    inc bc
    dec hl
    inc e
    ld e, h
    adc b
    ld a, e
    add e
    ld l, c
    inc bc
    ld l, d
    dec de
    dec a
    add d
    ld c, [hl]
    ld bc, $8A3A
    ld a, e
    inc b
    dec sp
    rlca
    ld e, a
    ld a, [hl-]
    add d
    ld a, e
    inc b
    ld e, h
    ld a, e
    ld a, e
    ld c, c
    add h
    ld a, e
    dec b
    add hl, hl
    ld c, [hl]
    jr z, jr_01C_55FD

    inc e
    add d
    ld a, e
    inc b
    add hl, hl
    ld e, a
    ld a, [hl-]
    inc e
    add h
    ld a, e
    inc bc
    inc e
    ld l, l
    dec e
    add d
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add e
    ld a, e
    db $10
    ld l, d
    halt
    rlca
    cp l
    cp [hl]
    cp a
    ld c, [hl]
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld a, [hl-]
    ld a, h
    adc b
    ld a, e
    inc b
    inc e
    add hl, sp
    ld c, l
    ld l, a
    add d
    ld a, e
    add d
    ld e, h
    inc b
    ld a, e
    add hl, bc
    ccf
    ld a, [hl+]
    add e
    ld a, e
    dec b
    add hl, hl
    ld e, l
    ld c, [hl]
    ld [$822A], sp
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld a, [hl-]
    ld c, h
    add l
    ld a, e
    ld [bc], a
    add hl, sp
    ld e, l
    add e
    ld c, [hl]
    dec b
    ccf
    ld l, c
    ld l, d
    dec de
    dec a
    add d
    ld c, [hl]
    inc b
    call $CFCE
    dec e
    add [hl]
    ld l, [hl]
    inc b
    ld l, a
    ld a, e
    inc e
    ld l, h
    adc b
    ld a, e
    inc bc
    add hl, hl
    ld e, [hl]
    ld a, [de]
    add l
    ld a, e
    inc bc
    add hl, bc
    ld c, [hl]
    ld a, [hl+]
    add h
    ld a, e
    ld b, $6D
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld a, e

jr_01C_55FD:
    inc bc
    rlca
    ld a, $3A
    add [hl]
    ld a, e
    ld [$5E09], sp
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld c, l
    ld c, [hl]
    add d
    ld e, a
    ld [bc], a
    ld l, [hl]
    ld c, [hl]
    add e
    ld a, d
    ld bc, $925A
    ld a, e
    inc bc
    add hl, hl
    ld c, [hl]
    ld a, [bc]
    add l
    ld a, e
    inc b
    dec de
    ld c, a
    ld a, [hl+]
    inc e
    add h
    ld a, e
    ld [bc], a
    ld l, l
    ld e, a
    add d
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld c, [hl]
    ld a, [hl-]
    add e
    ld a, e
    inc b
    ld c, c
    ld a, e
    ld a, h
    add hl, de
    add h
    ld c, [hl]
    add h
    ld l, [hl]
    ld b, $6F
    add hl, sp
    ld c, l
    ld a, [hl+]
    ld a, e
    ld a, h
    sub e
    ld a, e
    inc bc
    add hl, hl
    ld e, a
    dec hl
    add e
    ld a, e
    ld [bc], a
    ld c, d
    dec de
    add d
    ld c, [hl]
    inc bc
    jr z, jr_01C_56C5

    ld c, d
    add d
    ld a, e
    inc bc
    inc e
    add hl, hl
    ld c, [hl]
    add e
    ld a, e
    ld [bc], a
    ld l, l
    ld l, a
    add d
    ld a, e
    rlca
    dec sp
    rlca
    ld [$7B3A], sp
    add hl, hl
    ld e, [hl]
    add d
    ld c, [hl]
    ld bc, $856F
    ld a, e
    inc bc
    add hl, sp
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $861C
    ld a, e
    ld bc, $847C
    ld a, e
    ld bc, $845C
    ld a, e
    add hl, bc
    inc e
    ld l, h
    add hl, sp
    ld c, [hl]
    ccf
    ld a, [hl+]
    ld a, e
    add hl, sp
    dec a
    add d
    ld c, [hl]
    add hl, bc
    ld c, a
    ld c, [hl]
    ld c, [hl]
    ccf
    ld a, [hl-]
    ld a, e
    inc e
    add hl, hl
    ld c, [hl]
    add l
    ld a, e
    dec bc
    ld c, h
    ld a, e
    add hl, hl
    rla
    jr jr_01C_56C7

    ld a, e
    add hl, sp
    ld c, [hl]
    ld e, a
    ld c, [hl]
    add h
    ld a, e
    ld a, [bc]
    ld a, h
    inc e
    add hl, sp
    ld c, [hl]
    jr z, jr_01C_56F6

    ld a, e
    ld e, h
    ld a, e
    inc e
    add h
    ld a, e
    ld [bc], a
    inc e
    ld l, h
    adc d
    ld a, e
    inc b
    add hl, sp
    ld e, a
    ld c, [hl]
    ld a, [hl+]
    add d
    ld a, e
    ld bc, $846D
    ld l, [hl]
    inc bc
    ld c, [hl]
    ld c, a
    ld a, [hl-]

jr_01C_56C5:
    add d
    ld a, e

jr_01C_56C7:
    inc b
    add hl, sp
    ld e, [hl]
    ld a, e
    ld e, h
    add d
    ld a, e
    dec c
    ld a, h
    inc e
    ld a, e
    add hl, hl
    ld e, l
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    add hl, sp
    ld c, [hl]
    ld e, a
    ld l, a
    ld e, h
    add l
    ld a, e
    dec b
    add hl, sp
    ld e, l
    ld e, l
    jr z, @+$4D

    add a
    ld a, e
    ld bc, $8A7C

jr_01C_56E9:
    ld a, e
    ld [bc], a
    halt
    rlca
    add d
    ld c, [hl]
    ld bc, $862A
    ld a, e
    inc b
    add hl, sp
    ld e, a

jr_01C_56F6:
    ld c, [hl]
    ld a, [hl-]
    add d
    ld a, e
    ld [bc], a
    add hl, sp
    ld c, [hl]
    adc b
    ld a, e
    ld [$4E6D], sp
    ld a, [hl-]
    ld a, e
    add hl, sp
    ld e, [hl]
    ld c, [hl]
    ld a, [hl-]
    add a
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld e, l
    jr z, jr_01C_575B

    add l
    ld a, e
    ld bc, $835C
    ld a, e
    ld bc, $846C
    ld a, e
    rlca
    ld a, l
    ld a, [hl]
    ld a, a
    dec c
    ld e, a
    ld c, [hl]
    ld l, a
    add a
    ld a, e
    inc b
    inc e
    ld l, l
    ld e, [hl]
    ld a, [hl-]
    add d
    ld a, e
    ld [de], a
    add hl, sp
    daa
    jr z, jr_01C_57A5

    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    dec de
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    add hl, sp
    ld c, [hl]
    ld e, a
    ld a, [bc]
    add l
    ld a, e
    ld b, $5C
    ld a, e
    ld a, e
    ld l, l
    ld e, l
    ld e, l
    ld [bc], a
    jr z, @+$4D

    adc h
    ld a, e
    dec b
    add hl, hl
    adc l
    rst $38
    adc a
    rra
    add d
    ld c, [hl]
    inc bc
    ld a, [hl+]
    ld a, e
    ld e, h
    add h
    ld a, e
    dec b

jr_01C_575B:
    ld e, h
    ld a, e
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add d
    ld a, e
    inc bc
    add hl, sp
    ld e, l
    jr c, jr_01C_56E9

    ld c, [hl]
    add d
    ld a, $0B
    ld c, a
    ld c, [hl]
    ld c, a
    ld a, $5F
    ld a, [hl-]
    ld a, e
    add hl, sp
    ld e, l
    ld c, [hl]
    ld a, [de]
    add e
    ld a, e
    ld bc, $851C
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld e, l
    jr z, jr_01C_57CD

    add a
    ld a, e
    add d
    ld c, d
    dec bc
    ld a, e
    ld e, h
    add hl, hl
    inc bc
    ld [bc], a
    inc b
    rra
    ld e, [hl]
    ld c, [hl]
    ld a, [hl+]
    ld l, h
    add [hl]
    ld a, e
    ld bc, $865C
    ld a, e
    rlca
    ld l, l
    ld e, l
    ld c, [hl]
    dec e
    dec d
    ld a, [hl]
    ld d, $83
    ld l, [hl]
    rlca
    ld l, a
    ld a, e

jr_01C_57A5:
    ld a, e
    add hl, hl

jr_01C_57A7:
    ld c, a
    ld e, [hl]
    ld a, [hl+]
    add d
    ld a, e
    inc bc
    ld c, d
    ld a, e
    ld a, h
    add l
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld e, l
    jr z, jr_01C_5803

    add h
    ld a, e
    dec bc
    dec sp
    rlca
    ld c, [hl]
    ccf
    ld a, [hl-]
    ld a, e
    inc d
    dec l
    ld l, $0E
    rra
    add d
    ld c, [hl]
    ld [bc], a
    dec hl
    ld l, h
    adc [hl]
    ld a, e

jr_01C_57CD:
    rlca
    ld l, l
    ld c, [hl]
    dec e
    adc l
    rst $38
    adc a
    ld a, [hl+]
    add d
    ld a, e
    inc b
    ld c, h
    ld a, h
    inc e
    add hl, sp
    add d
    ld c, [hl]
    ld b, $3A
    ld a, e
    add hl, sp
    ld c, [hl]
    ld a, [hl-]
    inc e
    add [hl]
    ld a, e
    inc b
    ld l, l
    ld e, l
    ld c, [hl]
    ld a, [hl+]
    add h
    ld a, e
    inc b
    add hl, hl
    ld c, [hl]
    ld e, a
    ld l, a
    add e
    ld a, e
    ld [bc], a
    ld l, l
    ld e, l
    add h
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add e
    ld l, d
    add e
    ld a, e
    add e
    ld l, d

jr_01C_5803:
    dec c
    ld e, h
    ld a, e
    inc e
    ld e, h
    ld a, e
    add hl, de
    ld e, l
    dec e
    sbc l
    sbc [hl]
    sbc a
    ld a, [hl-]
    ld a, e
    add d
    ld c, d
    ld a, [bc]
    ld c, c
    halt
    rlca
    ld [$1A5F], sp
    ld a, e
    add hl, sp
    ld e, l
    jr z, jr_01C_57A7

    ld a, e
    inc b
    ld l, l
    ld e, l
    jr z, jr_01C_589A

    add e
    ld a, e
    inc bc
    add hl, hl
    ld c, a
    ld l, a
    add e
    ld a, e
    inc bc
    inc e
    ld a, e
    ld l, l
    add d
    ld l, [hl]
    inc bc
    ld e, l
    ld c, [hl]
    ld c, a
    add d
    ld c, [hl]
    dec b
    ld c, a
    ld c, [hl]
    cp l
    xor $BF
    add d
    ld c, [hl]
    inc bc
    ccf
    dec hl
    ld c, d
    add h
    ld a, e
    rrca
    ld l, l
    ld c, [hl]
    xor l
    xor [hl]
    xor a
    ld a, e
    add hl, hl
    ld c, l
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    rla
    jr jr_01C_58B4

    ld a, [hl+]
    add d
    ld a, e
    inc b
    ld l, l
    ld c, [hl]
    ccf
    ld a, [hl-]
    add e
    ld a, e
    ld bc, $835C
    ld a, e
    add hl, bc
    ld l, l
    ld e, l
    daa
    jr z, jr_01C_58B5

    ld e, h
    add hl, hl
    ld e, [hl]
    dec hl
    add d
    ld a, e
    ld bc, $857C
    ld a, e
    ld bc, $856D
    ld l, [hl]
    dec b
    ld e, l
    call $CFCE
    ld e, a
    add e
    ld c, [hl]
    ld [bc], a
    ccf
    ld a, [hl-]
    add e
    ld a, e
    dec b
    add hl, bc
    ld e, [hl]
    ld a, [hl+]
    ld c, h
    ld a, h
    add d
    ld a, e
    ld bc, $836D
    ld l, [hl]
    add e
    ld c, [hl]
    rlca
    ld a, [hl-]
    ld a, e
    ld a, e
    add hl, sp
    ld e, l
    ld c, [hl]

jr_01C_589A:
    dec hl
    add h
    ld a, e
    ld [bc], a
    inc e
    ld e, h
    add d
    ld a, e
    ld [$376D], sp
    jr c, jr_01C_58E1

    ld a, e
    add hl, sp
    ld c, a
    ccf
    add e
    ld a, e
    add d
    ld e, h
    adc c
    ld a, e
    ld bc, $835A

jr_01C_58B4:
    ld e, c

jr_01C_58B5:
    inc bc
    ld l, l
    ld l, [hl]
    ld e, a
    add d
    ld c, [hl]
    ld bc, $833A
    ld a, e
    ld b, $19
    ld e, l
    jr z, jr_01C_590F

    ld a, e
    inc e
    add l
    ld a, e
    dec b
    ld l, l
    ld e, [hl]
    ld e, a
    ld a, [hl-]
    ld e, h
    add d
    ld a, e
    dec b
    ld l, l
    ld e, l
    ld c, [hl]
    ccf
    dec hl
    add d
    ld a, e
    ld bc, $847C
    ld a, e
    ld [$6F6D], sp
    ld a, e
    inc e

jr_01C_58E1:
    add hl, sp
    ld e, [hl]
    ld c, [hl]
    dec hl
    add d
    ld a, e
    ld [bc], a
    inc e
    ld a, h
    adc c
    ld a, e
    ld bc, $851C
    ld a, e
    inc b
    ld l, l
    ld c, [hl]
    ld c, [hl]
    ld a, [hl-]
    add h
    ld a, e
    inc bc
    ld l, l
    ld c, [hl]
    ld [hl], l
    add d
    ld a, e
    add hl, bc
    inc e
    ld a, e
    ld a, e
    ld c, h
    ld a, e
    add hl, sp
    jr jr_01C_5923

    ld a, [hl+]
    add h
    ld a, e
    ld b, $6D
    ld l, [hl]
    ld e, l
    ld c, [hl]
    ccf

jr_01C_590F:
    dec hl
    add a
    ld a, e
    inc bc
    ld a, h
    ld a, e
    add hl, sp
    add d
    ld c, [hl]
    inc bc
    ccf
    dec hl
    ld l, c
    add d
    ld c, c
    add h
    ld c, d
    inc b
    ld c, c
    ld c, d

jr_01C_5923:
    ld c, c
    ld c, d
    add d
    ld c, c
    ld bc, $844A
    ld a, e
    inc b
    add hl, de
    ld c, [hl]
    ld c, a
    ld a, [hl-]
    add h
    ld a, e
    rlca
    add hl, sp
    ld e, l
    ld c, [hl]
    jr z, jr_01C_59AD

    ld c, c
    ld c, d
    add e
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    ld l, $E4
    ld a, h
    add l
    ld a, e
    ld b, $6D
    ld l, [hl]
    ld e, l
    ccf
    dec hl
    ld c, d
    add e
    ld c, c
    add e
    ld c, d
    ld [bc], a
    halt
    rlca
    add d
    ld c, [hl]
    dec b
    ld c, a
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld e, a
    add d
    ld c, [hl]
    ld [bc], a
    ld a, $4F
    add d
    ld e, a
    inc bc
    ld e, [hl]
    ld c, [hl]
    ld a, $82
    ld c, a
    ld [$7B3A], sp
    ld a, e
    inc e
    add hl, de
    ld c, [hl]
    dec e
    db $E4
    add l
    ld a, e
    inc bc
    ld l, l
    ld l, [hl]
    ld e, l
    add d
    ld c, [hl]
    ld [bc], a
    ld e, a
    ld a, [hl+]
    add d
    ld a, e
    dec b
    add hl, sp
    ld c, [hl]
    dec e
    rrca
    ld [hl], l
    add d
    ld a, e
    ld bc, $845C
    ld a, e
    inc b
    ld l, l
    ld e, l
    ld c, [hl]
    ld c, l
    add d
    ld c, [hl]
    rlca
    ld e, a
    ld c, l
    ld e, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, a
    sub b
    ld l, [hl]
    dec bc
    ld l, a
    ld a, e
    ld a, e
    inc e
    ld e, h
    db $D3
    dec e
    ld l, $0F
    ld a, e
    inc e
    add l
    ld a, e
    dec c
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, a

jr_01C_59AD:
    ld a, e
    ld c, h
    ld a, e
    add hl, hl
    jr jr_01C_59C1

    ld l, $0F
    ld [hl], l
    add d
    ld a, e
    ld [bc], a
    ld a, h
    inc e
    add e
    ld a, e
    ld bc, $8A6D
    ld l, [hl]

jr_01C_59C1:
    ld bc, $896F
    ld a, e
    ld bc, $875C
    ld a, e
    add hl, bc
    ld e, h
    ld a, e
    ld a, e
    halt
    dec c
    rra
    ld l, $1D
    db $E4
    adc l
    ld a, e
    ld [bc], a
    halt
    ld c, [hl]
    add e
    ld c, $03
    rrca
    ld [hl], l
    ld c, d
    add e
    ld l, c
    add h
    ld c, c
    add l
    ld c, d
    add d
    ld l, d
    add d
    ld c, d
    ld b, $6A
    ld c, d
    ld l, d
    ld c, d
    ld l, d
    ld c, d
    add e
    ld c, c
    dec b
    ld c, d
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    add d
    ld c, c
    ld bc, $834A
    ld c, c
    inc b
    halt
    dec c
    dec e
    ld l, $82
    dec e
    ld [bc], a
    rrca
    ld [hl], l
    add d
    ld c, c
    ld [bc], a
    ld c, d
    ld c, c
    add d
    ld c, d
    add d
    ld c, c
    ld b, $4A
    ld c, c
    halt
    rlca
    ld [$8218], sp
    dec e
    dec b
    ld c, $1D
    dec e
    rra
    dec e
    add e

jr_01C_5A20:
    ld c, [hl]
    ld a, [bc]
    ccf
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    ccf
    ld c, [hl]
    ld e, [hl]
    ccf
    ld c, [hl]
    ccf
    add d
    ld c, [hl]
    inc bc
    ld e, a
    ld e, [hl]
    ld c, [hl]
    add d
    ld e, [hl]
    inc b
    ld e, a
    ld c, [hl]
    ld a, $5F
    add d
    ld c, [hl]
    dec bc
    ld e, a
    ld e, [hl]
    ld e, a
    ld a, $4E
    ld e, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    dec e
    rra
    add e
    dec e
    add d
    ld l, $06
    dec e
    ld a, $5E
    ld e, l
    ld e, [hl]
    ld a, $82
    ld c, [hl]
    rlca
    ld e, [hl]
    ld c, [hl]
    ld e, l
    ld a, $17
    jr jr_01C_5AB9

    nop
    ld b, b
    nop
    db $10
    add a
    ld [$20AA], sp
    sub b
    ld [$0002], sp
    ld [$0083], sp

jr_01C_5A6B:
    add d
    ld bc, $A296
    ld bc, $86A3

jr_01C_5A72:
    jr nz, jr_01C_5A75

    and a

jr_01C_5A75:
    adc a
    and d
    adc h
    ld [$0003], sp
    ld [$82C3], sp
    nop
    add d
    ld bc, $A296
    add d
    and h
    add e
    jr nz, jr_01C_5A8B

    and l
    and b
    and a

jr_01C_5A8B:
    adc a
    and d
    adc h
    ld [$0005], sp
    ld [$0800], sp
    nop
    add d
    ld bc, $A295
    add e
    and h
    add d
    jr nz, jr_01C_5A20

    and h
    add d
    and b
    sub c
    and d
    adc d
    ld [$0005], sp
    pop bc
    nop
    ld [$8200], sp
    ld bc, $A294
    ld bc, $83A3
    and h
    ld bc, $8320
    and h
    add d
    and b

jr_01C_5AB9:
    add d
    and d
    add d
    and e
    adc l
    and d
    adc d
    ld [$0083], sp
    inc bc
    jp nz, Boot

    sub l
    jr nz, @-$7A

    and h
    ld bc, $8320
    and h
    add d
    and b
    add d
    and d
    add d
    and e
    add d
    and c
    add d
    and e
    adc d
    and d
    ld bc, $8801
    ld [$0085], sp
    add d

jr_01C_5AE2:
    ld bc, $A68A
    add l
    jr nz, jr_01C_5A6B

    and d
    add l
    and h

jr_01C_5AEB:
    ld [bc], a
    and l
    jr nz, jr_01C_5A72

    and h
    add d
    and b
    add d
    and d
    add d
    and e
    add d
    and c
    add d
    and e
    add d
    and c
    add d

jr_01C_5AFD:
    and e
    add [hl]
    and d
    ld bc, $8801
    ld [$0182], sp
    ld bc, $8408
    ld bc, $A68B
    add e
    jr nz, @-$7A

    and d
    add l
    and h
    add d

jr_01C_5B13:
    jr nz, jr_01C_5B18

    and e
    and h
    and h

jr_01C_5B18:
    add d
    and b
    add h
    and d
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    ld bc, $0083
    add e
    ld [$2004], sp
    ld bc, $2001
    add h

jr_01C_5B36:
    ld bc, $A687
    add d
    and a
    ld b, $A6
    and b
    and b
    jr nz, jr_01C_5AE2

    and b
    add e

jr_01C_5B43:
    and d
    add l
    and h
    add e
    jr nz, jr_01C_5B4B

    and e
    and h

jr_01C_5B4B:
    add d
    and b
    adc b
    and d
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    ld bc, $0003
    ret nz

    nop
    add e
    ld [$2004], sp
    and b
    and b
    jr nz, jr_01C_5AEB

    and h
    add d

jr_01C_5B69:
    and l
    add h
    and [hl]
    add h
    and a
    add d
    and b
    inc bc
    jr nz, jr_01C_5B13

    and b
    add e
    and d
    add l
    and h
    add h
    jr nz, jr_01C_5AFD

    and d
    ld bc, $8CA0
    and d
    add d
    and c
    add d
    and e
    add d
    and c
    add d
    ld bc, $0083
    add e

jr_01C_5B8B:
    ld [$2004], sp
    and b
    and b
    jr nz, jr_01C_5B18

    and h
    inc bc
    and l
    and [hl]
    and [hl]
    add l
    and a
    add d
    and b
    ld b, $20
    and b
    and b
    and c
    jr nz, jr_01C_5BC2

    ld bc, $84A3
    and h
    add [hl]
    jr nz, @-$7B

    ld [$2084], sp
    add e
    and d
    add h
    jr nz, jr_01C_5B36

    and d
    ld bc, $8701
    ld [$2004], sp
    and b
    and b
    jr nz, jr_01C_5B43

    and h
    ld [bc], a
    and l
    and [hl]
    add l
    and a

jr_01C_5BC2:
    add d
    and b
    ld bc, $8320
    and b
    ld bc, $8620
    and h
    add d
    jr nz, jr_01C_5BD2

    and l
    and [hl]
    and [hl]

jr_01C_5BD2:
    add l
    ld [$A402], sp
    and [hl]
    adc [hl]
    jr nz, @-$77

    ld [$2004], sp
    and b
    and b
    jr nz, jr_01C_5B69

    and h
    ld bc, $84A6
    and a
    add e
    and b
    ld bc, $8320
    and b
    ld bc, $8520
    and h
    add [hl]
    and [hl]
    ld bc, $85A5
    and a
    add e
    and [hl]

jr_01C_5BF8:
    adc d

jr_01C_5BF9:
    jr nz, jr_01C_5BFC

    and l

jr_01C_5BFC:
    add l
    and [hl]
    add e
    ld [$2004], sp
    and b
    and b
    jr nz, jr_01C_5B8B

    and h
    add d

jr_01C_5C08:
    and d
    ld [bc], a
    and h
    and [hl]
    add d
    and a
    ld bc, $84A6
    and b
    ld bc, $8320
    and b
    ld bc, $8520
    and h
    add [hl]
    and [hl]
    ld bc, $83A4
    and b

jr_01C_5C20:
    add e
    and a
    ld [bc], a
    and [hl]

jr_01C_5C24:
    and a
    sub b
    and [hl]
    add d
    and a
    ld [bc], a
    ld [$8220], sp
    and b
    ld bc, $8520
    and h
    add d
    and d
    ld bc, $84A4
    and [hl]
    add h
    and b
    ld bc, $8320
    and b
    ld bc, $8620
    and h
    add l
    and [hl]
    ld bc, $85A4
    and b
    add d
    and a
    sub c

jr_01C_5C4B:
    and [hl]
    add d
    and b
    ld [bc], a
    ld [$8220], sp
    and b
    inc b
    jr nz, jr_01C_5BF8

    and e
    and h
    add l
    and d
    ld bc, $83A4
    jr nz, jr_01C_5C60

    and a

jr_01C_5C60:
    add e
    and b
    ld bc, $8320
    and b
    add d
    jr nz, @-$79

    and h

jr_01C_5C6A:
    add l
    and [hl]
    ld bc, $85A4
    and b
    sub b
    and [hl]
    add l
    and b
    add d
    jr nz, jr_01C_5BF9

    and b

jr_01C_5C78:
    add e
    jr nz, jr_01C_5C7C

    and e

jr_01C_5C7C:
    add l
    and d
    ld [bc], a
    and h
    and e
    add d
    jr nz, jr_01C_5C08

    and b
    ld bc, $8320
    ld [$2082], sp
    add l
    and h
    ld bc, $84A5
    and [hl]
    ld bc, $85A4
    and d
    add [hl]
    and e
    adc d
    and [hl]
    add l
    and b
    add d
    jr nz, jr_01C_5C20

    and b
    add e
    jr nz, jr_01C_5C24

    and e
    add h
    and d
    add d
    and h
    ld [bc], a
    and e
    jr nz, @-$7A

    and b
    add h
    ld [$2082], sp
    add h
    and h
    add d
    and e
    add d
    jr nz, jr_01C_5CBA

    and a
    and [hl]
    and h

jr_01C_5CBA:
    add l
    and d
    ld bc, $85A1
    and d
    ld bc, $89A3
    and [hl]
    add l
    and b
    add d
    jr nz, jr_01C_5C4B

    and b
    add d
    and [hl]
    add e
    jr nz, jr_01C_5CD0

    and e

jr_01C_5CD0:
    add e
    ld bc, $A483
    ld bc, $8420
    and b
    ld bc, $83A6
    and a
    add d
    jr nz, @-$7A

    and h
    add d
    and e
    ld bc, $86A4
    jr nz, jr_01C_5C6A

    ld [$2002], sp
    and e
    add l
    and d
    add a

jr_01C_5CEE:
    and e
    add d
    and [hl]
    add l
    and b
    add d
    jr nz, jr_01C_5C78

    and b
    dec b
    and a
    and [hl]
    and a
    ld bc, $8320
    ld [$0182], sp
    inc bc
    and h
    and e
    jr nz, @-$7A

    and b
    ld bc, $83A7
    and b
    ld bc, $8520
    and h
    add d

jr_01C_5D10:
    and e
    add d
    and h

jr_01C_5D13:
    add e
    jr nz, @+$04

    and h
    jr nz, @-$7A

    ld [$2001], sp
    adc h
    and d
    add d
    and e
    add h
    and b
    inc bc
    and c
    ld [$8320], sp
    and b
    ld [bc], a

jr_01C_5D29:
    and a
    and [hl]

jr_01C_5D2B:
    add d
    ld bc, $0083
    add d
    ld bc, $A482
    add l
    and d
    add h
    and b
    ld bc, $8520
    and h
    ld bc, $83A3
    and h
    add d
    jr nz, jr_01C_5D45

jr_01C_5D42:
    and b
    and e
    and d

jr_01C_5D45:
    add e
    and c
    inc bc
    and h
    jr nz, jr_01C_5CEE

    adc a
    and d
    add e
    and c
    ld [bc], a
    ld [$8420], sp
    and b
    ld b, $A6

jr_01C_5D56:
    ld bc, $0001
    ld b, b
    nop
    add d
    ld bc, $A682
    add l
    and d
    add h
    and b
    inc bc
    jr nz, @-$5C

    and e
    add e
    and h
    ld bc, $83A3
    and h
    inc bc
    jr nz, jr_01C_5D10

    and b
    add l

jr_01C_5D72:
    and d
    inc b
    and h
    jr nz, @+$22

    and e
    adc [hl]
    and d
    ld bc, $83A1
    ld [$2001], sp
    add l
    and b
    add d
    ld bc, $0083
    add d

jr_01C_5D87:
    ld bc, $A682
    add l
    and d
    add e
    and b
    add h
    jr nz, jr_01C_5D13

    and h
    add d
    and e
    add e
    and h

jr_01C_5D96:
    ld bc, $8320
    and b
    add d
    and d
    inc bc
    and e
    and h
    and h
    add e
    jr nz, jr_01C_5D29

    and d
    add e
    jr nz, jr_01C_5D2B

    and d
    ld bc, $84A1
    ld [$2002], sp

jr_01C_5DAE:
    and a
    add h
    and b
    add d
    ld bc, $0801
    add h
    ld bc, $A083
    add h

jr_01C_5DBA:
    and d
    add d
    and b
    add l
    jr nz, jr_01C_5D42

    and h

jr_01C_5DC1:
    add d
    and e
    add e
    and h
    ld bc, $8420
    and b
    ld bc, $8320
    and h
    sub b
    jr nz, jr_01C_5D56

    ld [$A782], sp
    add h
    and b
    ld [bc], a
    ld bc, $8420
    ld bc, $A084
    add e
    and d
    add d
    and b
    dec b
    jr nz, jr_01C_5D87

    and a
    and h
    jr nz, @-$7A

    ld [$A482], sp
    ld [bc], a
    and e
    jr nz, jr_01C_5D72

    and b
    inc bc
    jr nz, jr_01C_5D96

    and h

jr_01C_5DF3:
    add d
    and e
    add a
    and d
    ld bc, $84A3
    jr nz, jr_01C_5DFD

    and c

jr_01C_5DFD:
    add e
    and d
    ld bc, $86A3

jr_01C_5E02:
    ld [$A701], sp
    add h
    and b
    inc b
    jr nz, jr_01C_5DAE

    and h
    and e
    add l
    and b
    add d
    and d
    rlca
    and c
    and b
    and a
    jr nz, jr_01C_5DBA

    and b
    and h
    add h
    ld [$2003], sp
    and h
    and h
    add d
    and d
    ld bc, $83A1
    and b
    inc bc
    jr nz, @-$5A

    and h
    add e
    and e
    add a
    and d
    dec b
    and e
    jr nz, jr_01C_5E50

    and c
    and b
    add h

jr_01C_5E33:
    and d
    ld bc, $86A3
    ld [$A703], sp

jr_01C_5E3A:
    and b
    and c
    add d
    jr nz, jr_01C_5DC1

    and h
    ld bc, $85A3
    and b
    add d
    and d
    ld [bc], a
    and c
    and b
    add a
    ld bc, $A682
    inc bc
    jr nz, jr_01C_5DF3

jr_01C_5E50:
    and h
    add h
    and d
    dec b
    and c
    jr nz, jr_01C_5E77

    and e
    and h
    add h
    and e
    add [hl]

jr_01C_5E5C:
    and d
    add d
    and h
    inc bc
    jr nz, jr_01C_5E02

    and b
    add h
    and d
    ld bc, $8901
    ld [$2082], sp
    inc bc
    and d
    and e
    and e
    add e
    and b
    ld [bc], a
    and c
    ld [$A282], sp
    ld [bc], a

jr_01C_5E77:
    and c
    and b

jr_01C_5E79:
    add a
    ld bc, $A682
    add d
    jr nz, jr_01C_5E82

    and d
    and c

jr_01C_5E82:
    add d
    and d
    ld bc, $84A1
    jr nz, jr_01C_5E8C

    and e
    and d

jr_01C_5E8B:
    and e

jr_01C_5E8C:
    add l
    and d
    ld bc, $84A3
    and h
    rlca
    jr nz, @-$5E

    and b
    and c
    and d
    and e
    and d
    add d
    and h
    adc b
    ld [$2084], sp
    ld bc, $83A4
    and b
    add a
    ld [$0101], sp
    add e
    nop
    add d
    ld bc, $A682
    add d
    jr nz, jr_01C_5E33

    and b
    adc c
    jr nz, jr_01C_5E3A

    and h
    ld [bc], a
    jr nz, jr_01C_5E5C

    add e
    and h
    inc bc
    and e
    and h
    and c
    add d
    and b
    ld bc, $8420
    and h
    inc bc
    jr nz, jr_01C_5ED0

    ld [$A185], sp
    ld bc, $83A3
    jr nz, jr_01C_5ED1

jr_01C_5ED0:
    and h

jr_01C_5ED1:
    add e
    and b
    add e
    ld [$A283], sp
    add d
    ld bc, $0003
    ld b, c
    nop
    add d
    ld bc, $A284
    inc b
    and c
    and b
    jr nz, jr_01C_5E8B

    adc b
    and [hl]
    add h
    and h
    ld [bc], a
    jr nz, @-$5B

    add e
    and h
    add h
    and d
    ld [bc], a
    and b
    jr nz, jr_01C_5E79

    and h
    inc b
    jr nz, jr_01C_5F01

    ld [$84A1], sp
    and b
    ld [bc], a
    and d
    and e
    add d

jr_01C_5F01:
    jr nz, jr_01C_5F04

    and h

jr_01C_5F04:
    add e
    and b
    add d

jr_01C_5F07:
    ld [$A182], sp
    add d
    and d
    add d
    ld bc, $0083
    add d
    ld bc, $A283
    inc bc
    and c
    and b
    and b
    add [hl]
    and [hl]
    add [hl]
    ld bc, $A402
    and l
    add d
    jr nz, jr_01C_5F24

    and d
    and e

jr_01C_5F24:
    add h
    and d
    inc bc
    and c
    jr nz, @+$22

jr_01C_5F2A:
    add h
    and h
    add d
    jr nz, jr_01C_5F30

    and c

jr_01C_5F30:
    add l
    and b
    inc bc
    and d
    and h
    and h
    add d
    ld [$A203], sp
    and b
    and b
    add d
    ld [$A084], sp
    add a
    ld bc, $A284
    add d
    and b
    add [hl]
    and [hl]
    add [hl]
    ld bc, $A502
    ld [$2083], sp
    add h
    and d
    ld bc, $83A1
    jr nz, @-$7A

    and h
    add d
    jr nz, @-$78

    and b
    inc bc
    and d
    and h
    and h
    add e
    ld [$A001], sp
    add [hl]
    ld [$2001], sp
    add a
    ld bc, $A083
    inc b
    and d
    and b
    and c
    ld [$A784], sp
    inc bc
    and [hl]
    ld bc, $8301
    nop
    add e
    ld [$208B], sp
    add h
    and h
    add d
    jr nz, jr_01C_5F07

    and b
    inc bc
    and d
    and h
    and h
    adc d
    ld [$2001], sp
    adc d
    and b
    add h
    ld [$2002], sp
    and b
    add d
    and a
    ld b, $A6
    ld bc, $0001
    ld b, h
    nop
    add d
    ld [$A501], sp
    adc e
    and [hl]
    add h
    and h
    add d
    jr nz, jr_01C_5F2A

    and b
    ld b, $A1
    and h
    and h
    and l
    ld [$8508], sp
    and [hl]
    add e
    and a
    ld bc, $8A20
    and b
    ld [bc], a
    and a

jr_01C_5FB7:
    and [hl]
    add e
    ld [$2004], sp
    and b
    and a
    and [hl]
    add d
    ld bc, $0083
    inc bc
    ld [$A4A4], sp
    add e
    and l
    adc c
    and [hl]
    add d
    and h
    inc bc
    and l
    ld [$8520], sp
    and b
    add e
    ld bc, $0882
    add d
    ld bc, $A684
    add e
    and b
    ld bc, $8C20
    and b
    add e
    ld [$2082], sp
    inc b
    and b
    and [hl]
    ld bc, $8420
    ld [$A382], sp
    add e
    and h
    adc d
    and [hl]
    inc b
    and l
    ld [$2008], sp
    add l
    and b
    add e
    ld bc, $0882
    add d
    ld bc, $A683
    add h

jr_01C_6002:
    and b
    ld bc, $8C20
    and b
    add h
    ld [$2002], sp
    and b
    add d
    and [hl]
    add e
    jr nz, @-$7B

    ld [$A301], sp
    add e
    and h
    ld bc, $8AA5
    and [hl]
    add d
    ld [$2001], sp
    add l
    and b

jr_01C_6020:
    add d
    ld bc, $0083
    add d
    ld bc, $A683
    add h

jr_01C_6029:
    and b
    ld bc, $8C20
    and b
    adc h
    jr nz, jr_01C_5FB7

    ld [$208A], sp
    add e
    ld [$2001], sp
    add l
    and b
    add d
    ld bc, $0003
    ld b, e
    nop
    add d
    ld bc, $A283
    add h
    and b
    ld bc, $8820
    and b
    ld bc, $8320
    ld [$2082], sp

jr_01C_6050:
    add d
    and l
    adc b
    and [hl]
    add d
    and a
    ld bc, $8320
    ld [$2089], sp
    add h
    ld [$2001], sp
    add l
    and b
    add d
    ld bc, $0083
    add d
    ld bc, $A284
    inc bc
    and b
    and c
    and b
    adc c
    jr nz, @-$7A

    ld [$2082], sp
    ld bc, $83A5
    and h
    add [hl]
    and [hl]
    inc bc

jr_01C_607B:
    and b
    and a
    jr nz, jr_01C_6002

    and h
    inc bc
    and d
    and e
    and e
    add d
    jr nz, jr_01C_6088

    and c

jr_01C_6088:
    add e
    and d
    ld bc, $83A3
    ld [$2002], sp
    and a

jr_01C_6091:
    add h
    and b
    add a
    ld bc, $A284

jr_01C_6097:
    add d
    and c
    add d
    jr nz, jr_01C_6020

    and l
    add l
    and [hl]
    add e
    and b
    ld [bc], a
    and [hl]
    jr nz, jr_01C_6029

jr_01C_60A5:
    and h
    add h
    and [hl]
    add h
    and b
    inc bc
    jr nz, jr_01C_6050

    and h
    add d
    and d
    inc bc
    and h
    and e
    jr nz, @-$7C

    and c
    add h
    and d
    inc bc
    and e
    ld [$8208], sp
    jr nz, jr_01C_60C0

    and a

jr_01C_60C0:
    add e

jr_01C_60C1:
    and b
    add a
    ld bc, $A284
    ld bc, $83A1
    jr nz, @-$7A

    and l

jr_01C_60CC:
    add l
    and [hl]
    add e
    and b
    add d
    jr nz, jr_01C_60D4

    and l

jr_01C_60D4:
    add h
    and h
    inc bc
    and l
    and [hl]
    and a
    add h
    and b
    add d
    jr nz, jr_01C_60E1

    and e
    and d

jr_01C_60E1:
    add e

jr_01C_60E2:
    and h
    inc b
    jr nz, @-$5E

    and b
    call nz, $A284
    ld [bc], a
    and e
    ld [$2083], sp
    ld bc, $83A7
    and [hl]
    inc bc
    and l
    and [hl]
    jr nz, jr_01C_607B

jr_01C_60F8:
    ld [$2088], sp
    add d
    and l
    add d
    and h
    add l
    and [hl]
    add e
    and b
    ld bc, $8720
    and h
    ld bc, $8520
    and b
    add e
    jr nz, jr_01C_6091

    and h
    ld [bc], a
    and l
    jr nz, jr_01C_6097

    and b
    add e
    and d
    ld bc, $85A4
    jr nz, jr_01C_611E

    and a
    and [hl]
    and [hl]

jr_01C_611E:
    add e
    jr nz, jr_01C_60A5

    ld [$A286], sp
    add d

jr_01C_6125:
    and l
    add e
    and h

jr_01C_6128:
    add h
    and [hl]

jr_01C_612A:
    add h
    and b
    ld bc, $8720
    and h

jr_01C_6130:
    ld bc, $8520
    and b
    inc bc
    and a
    jr nz, @+$22

    add e
    and h
    add d
    jr nz, jr_01C_60C1

    and b

jr_01C_613E:
    add d
    and d
    add d
    and h
    adc c

jr_01C_6143:
    jr nz, @+$04

    and h
    jr nz, jr_01C_60CC

    and c
    add [hl]
    and d
    add d
    and l
    add e

jr_01C_614E:
    and h
    add h
    and [hl]

jr_01C_6151:
    add h
    and b
    ld bc, $8720
    and h
    ld bc, $8620
    and b
    ld [bc], a
    and a
    jr nz, jr_01C_60E2

    and h
    add d
    jr nz, @-$7C

    and b
    ld b, $A1
    and d
    and d
    and e
    and h
    and h
    add h
    jr nz, @-$7C

    and c
    add e
    and d

jr_01C_6171:
    ld [bc], a
    and h
    jr nz, jr_01C_60F8

    and b
    ld bc, $85A1
    and [hl]
    inc bc
    and d

jr_01C_617C:
    and l
    and l
    add e
    and h
    add e
    and [hl]
    add l
    and b
    ld [bc], a
    jr nz, jr_01C_612A

    add d
    and h
    inc bc

jr_01C_618A:
    and l
    and [hl]
    and [hl]
    add e
    jr nz, @-$7C

    and b
    ld bc, $83A7
    and b

jr_01C_6195:
    ld bc, $8320

jr_01C_6198:
    and h
    add d
    and d
    inc bc
    and c
    and d
    and b
    add d
    jr nz, jr_01C_6125

    and h
    add e

jr_01C_61A4:
    jr nz, jr_01C_6128

    and c
    add h

jr_01C_61A8:
    and d
    ld [bc], a
    and h
    jr nz, jr_01C_6130

    and b
    add [hl]
    and [hl]
    ld bc, $85A2

jr_01C_61B3:
    and h
    add d
    and [hl]
    add [hl]
    and b
    add d
    jr nz, jr_01C_613E

jr_01C_61BB:
    and h
    add a
    jr nz, jr_01C_6143

    and b
    ld bc, $8320
    and h
    add e
    and d
    add d
    and b

jr_01C_61C8:
    add d
    jr nz, jr_01C_614E

    and h

jr_01C_61CC:
    add e
    jr nz, jr_01C_6151

    and c
    add h
    and d
    inc bc
    and h
    jr nz, jr_01C_61F6

    add h
    and a
    add h
    and [hl]
    ld bc, $85A2
    and h
    ld bc, $87A6
    ld bc, $2082
    add d
    and h
    ld bc, $85A3
    and h
    add d
    jr nz, jr_01C_6171

    and b
    inc bc
    jr nz, jr_01C_6195

    and h
    add e
    and d
    add e
    and b

jr_01C_61F6:
    add d
    jr nz, jr_01C_617C

    and h

jr_01C_61FA:
    add d
    jr nz, jr_01C_61FF

    and c
    and b

jr_01C_61FF:
    add h
    and d
    add d
    and h
    add e
    jr nz, jr_01C_618A

    and a
    add e
    and [hl]

jr_01C_6209:
    add a
    and d
    add [hl]
    ld bc, $2083
    adc b
    and h
    add d
    jr nz, jr_01C_6198

    and b
    inc bc
    jr nz, jr_01C_61BB

    and h
    add e
    and d
    add e
    and b
    ld [bc], a
    and a
    jr nz, jr_01C_61A4

    and h
    add d
    jr nz, jr_01C_61A8

    and b
    add d
    and d
    add e
    and h
    ld bc, $83A3
    jr nz, jr_01C_61B3

    and a
    add e

jr_01C_6231:
    and [hl]
    add [hl]
    and d
    add d
    ld bc, $0083
    inc bc
    ld [$2020], sp
    add l
    and e
    add h

jr_01C_623F:
    and h
    ld [bc], a
    and e
    jr nz, jr_01C_61C8

    and b
    add d
    jr nz, jr_01C_61CC

    and d
    add h
    and b
    ld bc, $8320
    and h
    add d
    jr nz, @-$7B

    and b
    add d
    and d
    add e
    and h
    add d
    and e
    add e
    jr nz, @-$7A

    and a
    add d
    and [hl]
    add [hl]
    and d
    add d
    ld bc, $0004
    ld b, l
    nop
    ld [$2082], sp
    add [hl]

jr_01C_626B:
    and e
    add d
    and h
    add e
    and d
    ld bc, $83A1
    and b
    adc e
    jr nz, jr_01C_61FA

    and h
    add d

jr_01C_6279:
    jr nz, jr_01C_61FF

    and b
    ld [bc], a
    and h
    and e
    add e
    and h
    add d
    and e
    add e
    jr nz, jr_01C_6209

    and a
    add l
    and [hl]
    add d
    and d
    inc bc
    and e
    ld bc, $8301
    nop
    inc bc
    ld [$2020], sp

jr_01C_6295:
    add a
    and e
    ld bc, $83A4

jr_01C_629A:
    and d
    add h
    and b
    inc b
    and a
    jr nz, @+$22

    ld [$0083], sp
    add d
    ld bc, $A682
    inc bc
    and l
    and h

jr_01C_62AB:
    and h
    add d
    jr nz, jr_01C_6231

    and b
    inc bc
    and c
    and b
    and h
    add e
    and e
    add d
    and h
    add d
    and e

jr_01C_62BA:
    add e
    jr nz, jr_01C_623F

    and a
    add e
    and b
    ld bc, $83A7
    jr nz, @+$05

    and h
    ld bc, $8401
    ld [$2082], sp
    adc b
    and e
    add e
    and d

jr_01C_62D0:
    add l
    and b
    ld b, $A7
    jr nz, jr_01C_62DE

    nop
    ld b, d
    nop
    add d
    ld bc, $A684
    inc bc

jr_01C_62DE:
    and l
    jr nz, @+$22

    add d
    and b
    ld [bc], a
    and c
    jr nz, jr_01C_626B

    and e
    inc bc
    and h
    and d
    and d
    add d
    and e
    add d
    jr nz, jr_01C_62F2

    and a

jr_01C_62F2:
    add l
    and b
    add d
    jr nz, jr_01C_6279

    and h
    add e
    ld bc, $2086
    add a
    and e
    add d
    and d
    ld bc, $86A1
    and b

jr_01C_6304:
    ld [bc], a
    jr nz, @+$0A

    add e
    nop
    add d
    ld bc, $A683
    ld bc, $83A5
    jr nz, jr_01C_6295

    and b
    add d
    jr nz, jr_01C_629A

    and e

jr_01C_6317:
    add e

jr_01C_6318:
    and d
    add d
    and e
    add d
    jr nz, @-$79

    and b
    ld bc, $8620
    and h
    add e
    and d
    add a
    jr nz, jr_01C_62AB

    ld [$2083], sp
    add d
    and b
    ld bc, $83A7
    and b
    ld [bc], a
    and a
    jr nz, jr_01C_62BA

    ld bc, $2087
    add e
    and b
    inc bc
    and a
    jr nz, jr_01C_635E

    add h
    and e

jr_01C_6340:
    add h
    and d
    ld bc, $83A3
    jr nz, @+$06

    and a
    and b
    and b
    jr nz, jr_01C_62D0

    and h
    adc e
    and d
    ld bc, $8320
    ld [$2085], sp

jr_01C_6355:
    add h
    and b
    ld [bc], a
    and [hl]
    jr nz, @-$79

    ld bc, $A283

jr_01C_635E:
    ld bc, $83A3
    jr nz, @-$7B

    and b
    inc bc
    and a
    jr nz, jr_01C_6388

    add l
    and e
    add h
    and d
    inc bc

jr_01C_636D:
    and e
    jr nz, @+$22

jr_01C_6370:
    add e
    and b
    ld [bc], a
    jr nz, jr_01C_6318

    add e
    and h
    adc h
    and d
    add h
    and h
    ld bc, $83A3
    jr nz, jr_01C_6304

    and b
    inc b
    and [hl]
    jr nz, jr_01C_63A5

    and h
    add a
    and d

jr_01C_6388:
    inc bc
    and e
    jr nz, jr_01C_63AC

    add h
    and b
    ld bc, $83A7
    jr nz, jr_01C_6317

    and e
    add [hl]
    and d
    inc bc
    and c
    and b
    and b
    add d
    jr nz, jr_01C_639F

    and e
    and h

jr_01C_639F:
    adc l
    and d
    add l
    and h
    inc bc
    and e

jr_01C_63A5:
    jr nz, @+$22

    add h
    and b
    dec b
    and [hl]
    and a

jr_01C_63AC:
    jr nz, @-$5C

    and e
    add l
    and d
    add d
    and h
    ld [bc], a
    jr nz, jr_01C_63BE

    add l
    and b
    add d
    and a
    add e
    jr nz, jr_01C_6340

    and e

jr_01C_63BE:
    add a

jr_01C_63BF:
    and d
    ld bc, $83A1
    jr nz, @-$6F

    and d
    ld bc, $84A3
    and h
    add d
    jr nz, @-$7A

    and b
    add d
    and [hl]
    add e
    jr nz, jr_01C_6355

    and d
    ld [bc], a
    and e
    and d
    add e
    and h
    ld [bc], a
    jr nz, @+$0A

    add h
    and b

jr_01C_63DE:
    add e
    and [hl]
    add d
    and a
    add d
    jr nz, jr_01C_636D

    and d
    ld bc, $93A1
    jr nz, jr_01C_6370

    and h
    inc bc
    jr nz, jr_01C_63F7

    and a
    add e
    and b
    add d
    and [hl]
    add d
    and a
    add h

jr_01C_63F7:
    jr nz, @-$7A

    and h
    dec b
    jr nz, jr_01C_6405

    ld [$A0A7], sp
    add [hl]
    and [hl]
    ld bc, $8CA7

jr_01C_6405:
    jr nz, jr_01C_6408

    and l

jr_01C_6408:
    sub b
    and [hl]
    ld [bc], a
    and h
    and [hl]
    add d
    and h
    ld bc, $83A5
    ld [$A703], sp
    and b
    and b
    add h
    and [hl]
    add d
    and a
    add e
    and [hl]
    add e
    and h
    ld bc, $8320
    ld [$A701], sp
    add a
    and [hl]
    ld bc, $8BA7
    and [hl]
    ld bc, $93A5
    and [hl]
    ld bc, $84A5
    ld [$A782], sp
    adc h
    and [hl]
    ld [bc], a
    and l
    jr nz, jr_01C_63BF

    ld [$A701], sp
    and [hl]
    and [hl]
    add [hl]
    ld [$A782], sp
    adc c
    and [hl]
    ld bc, $83A5
    jr nz, @-$77

    ld [$20A3], sp
    adc b
    ld [$208E], sp
    nop
    ld b, b

jr_01C_6454:
    nop
    db $10
    sub b
    jr nz, jr_01C_63DE

    ld [$208B], sp
    adc d
    ld [$2085], sp
    adc h
    ld [$2087], sp
    ld bc, $8EA5
    and a
    add e
    ld [$A201], sp
    add h
    and b
    add a
    and d
    ld bc, $88A3
    ld [$A284], sp
    add d
    ld bc, $0082
    adc b
    ld [$0082], sp
    add d
    ld bc, $A202
    and e
    add d
    jr nz, jr_01C_6408

    and l
    ld bc, $8DA7
    and [hl]
    inc bc
    and a
    ld [$8408], sp
    and b
    adc b
    and d
    add e
    and e

jr_01C_6495:
    add l
    ld [$A103], sp
    and a
    and b
    add d
    and d
    add d
    ld bc, $0002
    ld [$0083], sp
    ld bc, $86C3
    nop
    add d
    ld bc, $A482
    add d
    jr nz, @-$7C

    and l
    adc a
    and [hl]
    ld [bc], a
    and a
    ld [$A084], sp
    adc d
    and d
    add d

jr_01C_64BA:
    and e
    add h
    ld [$2001], sp
    add e
    and b
    ld bc, $84A2
    ld bc, $0084
    ld bc, $8408
    nop
    add e
    ld bc, $A482
    add d
    jr nz, jr_01C_6454

    and l
    add d
    and h
    adc l
    and [hl]
    add h
    and a
    add e
    and b

jr_01C_64DB:
    add h
    and d
    add [hl]
    and h
    ld bc, $83A3
    ld [$2082], sp

jr_01C_64E5:
    add h
    and b
    add l
    ld bc, $0086
    add h
    ld bc, $A482
    inc bc
    and l
    jr nz, jr_01C_6513

    add d
    and e
    add h
    and h
    dec b
    and [hl]
    and h
    and h
    and [hl]
    and l
    add [hl]
    and [hl]
    add h
    and a
    add e
    and b
    inc b
    and c
    jr nz, @+$22

jr_01C_6507:
    and e
    add a
    and h
    inc bc
    and e
    ld [$8208], sp
    jr nz, jr_01C_6495

    and b
    add d

jr_01C_6513:
    and d
    adc l
    ld bc, $A482
    add h
    jr nz, jr_01C_651C

    and e

jr_01C_651C:
    add a
    and h
    ld bc, $86A5
    ld [$A785], sp
    add e
    and b
    ld bc, $83A1
    jr nz, jr_01C_652C

    and e

jr_01C_652C:
    add [hl]
    and h
    inc bc

jr_01C_652F:
    and e
    ld [$8208], sp
    jr nz, jr_01C_64BA

    and b
    ld [bc], a
    and c
    and d
    adc d
    ld bc, $A484
    add l
    jr nz, jr_01C_6541

    and e

jr_01C_6541:
    add l
    and h
    inc bc
    and l
    ld [$8408], sp
    nop
    add d
    ld [$A784], sp
    add h
    and b
    ld bc, $83A6
    jr nz, jr_01C_64DB

    and h
    ld [bc], a

jr_01C_6556:
    and e
    ld [$2082], sp
    add l
    and b
    ld bc, $8AA1
    jr nz, jr_01C_64E5

    and h
    ld b, $A3

jr_01C_6564:
    jr nz, @+$22

    ld [$2020], sp
    ld bc, $86A3
    and h
    ld bc, $8608
    nop
    ld [bc], a
    ld [$83A0], sp
    and a
    add l
    and b
    inc b
    and a
    jr nz, jr_01C_659C

    and e
    add a
    and h
    add e
    jr nz, jr_01C_6507

    and b
    inc bc
    and c
    jr nz, @+$22

jr_01C_6587:
    add [hl]
    nop
    add d
    jr nz, jr_01C_658D

    and e

jr_01C_658D:
    add l
    and h
    ld b, $20
    ld [$2008], sp
    and e
    and e
    add l
    and h
    ld bc, $8608
    nop

jr_01C_659C:
    ld [bc], a
    ld [$84A0], sp
    and a
    add h
    and b
    add d
    and a
    add d
    jr nz, jr_01C_652F

    and h
    add d
    jr nz, jr_01C_65AD

    and c

jr_01C_65AD:
    add l

jr_01C_65AE:
    and b
    ld [bc], a

jr_01C_65B0:
    and c
    jr nz, @-$76

    nop
    add d
    jr nz, @-$79

    and h
    ld bc, $8320
    ld [$2002], sp
    and e
    add l
    and h
    ld bc, $8608
    nop
    ld [bc], a
    ld [$84A0], sp
    and a
    add [hl]
    and b
    add d
    jr nz, jr_01C_6556

    and h
    add e
    jr nz, jr_01C_65D4

    and a

jr_01C_65D4:
    add l
    and b
    ld bc, $8920
    nop
    ld bc, $8420
    and h
    ld [bc], a
    and l

jr_01C_65E0:
    jr nz, jr_01C_6564

    ld [$2083], sp
    ld bc, $84A5
    and h
    ld bc, $8608
    ld bc, $0882
    ld bc, $83A0
    and a
    add [hl]
    and b
    add d
    jr nz, jr_01C_65F9

    and e

jr_01C_65F9:
    add l
    and h
    ld [bc], a
    and e
    and h
    add d
    jr nz, jr_01C_6587

    and b
    ld bc, $8320
    nop
    ld bc, $8508
    nop
    ld bc, $8420
    and h

jr_01C_660E:
    add d
    jr nz, @-$7C

    ld [$2003], sp
    and l
    and l
    add l
    and h
    ld bc, $8708
    ld bc, $0803
    and b
    and b
    add e
    and a
    add l
    and b
    add e
    jr nz, jr_01C_65AE

    and h
    add e
    jr nz, jr_01C_65B0

    and b
    ld bc, $8920
    nop
    ld bc, $8420
    and h
    add d
    jr nz, @-$7C

    ld [$2002], sp
    and l

jr_01C_663B:
    add l
    and h
    ld [bc], a
    and e
    jr nz, @-$7C

    and b
    ld bc, $84A1
    and h
    add d

jr_01C_6647:
    jr nz, jr_01C_664B

    and a
    and b

jr_01C_664B:
    add d
    and a
    add l
    and b
    inc bc
    and a
    jr nz, jr_01C_6673

    add [hl]
    and h
    ld [bc], a
    and e
    and h
    add d
    jr nz, jr_01C_65E0

    and b
    ld bc, $8920
    ld bc, $2001
    add h
    and h
    add d
    jr nz, jr_01C_666B

    ld [$2020], sp

jr_01C_666A:
    and l

jr_01C_666B:
    add h
    and h

jr_01C_666D:
    add d
    and e
    inc b
    jr nz, @-$5E

    and b

jr_01C_6673:
    and c
    add h
    and h
    ld b, $A3
    jr nz, jr_01C_669A

    and a
    and b
    and a
    add [hl]
    and b
    add d
    jr nz, @-$78

    and h
    ld [bc], a
    and e
    and h
    add d
    jr nz, jr_01C_660E

    and b
    ld bc, $8920
    ld bc, $2001
    add e
    and h
    ld b, $A3

jr_01C_6694:
    jr nz, jr_01C_66B6

    ld [$A520], sp
    add d

jr_01C_669A:
    and h
    add l

jr_01C_669C:
    and l
    ld b, $20
    and b
    and b
    and c
    and h

jr_01C_66A3:
    and h
    ld [bc], a
    ret


    and h
    add d

jr_01C_66A8:
    and e
    add d
    jr nz, jr_01C_66AF

    and a
    and b
    ret nz

jr_01C_66AF:
    add l
    and b
    add d
    jr nz, jr_01C_663B

    and h
    inc bc

jr_01C_66B6:
    and l
    jr nz, jr_01C_66D9

    add l
    and b

jr_01C_66BB:
    ld bc, $8820
    and h
    add d
    jr nz, jr_01C_6647

    and h
    inc bc
    jr nz, @+$0A

    jr nz, jr_01C_664B

    and h

jr_01C_66C9:
    ld bc, $83A5
    ld [$2082], sp

jr_01C_66CF:
    add d
    and b
    ld [bc], a
    and c
    and e

jr_01C_66D4:
    add h
    and h
    add d
    and e
    add d

jr_01C_66D9:
    jr nz, jr_01C_66DC

    and a

jr_01C_66DC:
    add h
    and b
    ld bc, $83A1

jr_01C_66E1:
    jr nz, jr_01C_666A

    and h
    add d
    jr nz, jr_01C_666D

    and b
    ld bc, $8820
    and h
    add d
    jr nz, jr_01C_66F0

    and e

jr_01C_66F0:
    add h
    and h
    inc b

jr_01C_66F3:
    jr nz, jr_01C_66FD

    jr nz, jr_01C_669C

    add d
    and h
    add l
    ld [$2001], sp

jr_01C_66FD:
    add e
    and b
    ld bc, $85A3
    and h
    add d
    and e
    add d
    jr nz, jr_01C_6709

    and a

jr_01C_6709:
    add h
    and b
    add e
    jr nz, jr_01C_6694

    and h
    inc bc
    and l
    jr nz, jr_01C_6733

    add [hl]

jr_01C_6714:
    and b
    ld [bc], a
    jr nz, jr_01C_66BB

    add [hl]
    and h
    ld bc, $83A3
    jr nz, jr_01C_66A3

    and h
    inc bc
    jr nz, @+$0A

    jr nz, jr_01C_66A8

    and h
    add d
    ld [$0083], sp
    ld b, $20
    and b
    and b
    and c
    jr nz, jr_01C_66D4

    add e
    and h

jr_01C_6733:
    add e
    and d
    add d
    and c
    add l
    and b
    add e
    jr nz, @+$04

    and h

jr_01C_673D:
    jp z, $A484

    add e
    jr nz, jr_01C_66C9

    and b
    add d
    jr nz, jr_01C_66CF

    and h
    add d
    jr nz, jr_01C_66CF

    and h
    inc c
    jr nz, jr_01C_6757

    jr nz, @-$59

    and h
    and e
    ld bc, $0008
    pop bc

jr_01C_6757:
    nop
    jr nz, jr_01C_66DC

    and b
    ld [bc], a
    and c
    jr nz, jr_01C_66E1

    and e
    add d
    and h
    add e
    and d
    add d
    and c

jr_01C_6766:
    add e
    and b

jr_01C_6768:
    ld [bc], a
    and c
    and b
    add e
    jr nz, jr_01C_66F3

    and h
    ld [bc], a
    and l
    ld [$2082], sp
    add [hl]
    and b
    add d
    jr nz, @-$76

    and h
    add d
    jr nz, jr_01C_677E

    and l

jr_01C_677E:
    add e

jr_01C_677F:
    and h
    ld b, $20
    ld [$A320], sp
    and h
    and e
    add d
    ld bc, $0083
    ld bc, $8320
    and b
    add d
    jr nz, jr_01C_6714

jr_01C_6792:
    and e
    ld bc, $84A4
    and d
    add h
    and c
    ld bc, $84A0
    jr nz, jr_01C_67A1

    and l
    and h
    and h

jr_01C_67A1:
    add d
    and l
    add e
    ld [$2001], sp
    add h

jr_01C_67A8:
    and b
    ld bc, $83A1
    jr nz, jr_01C_67AF

    and l

jr_01C_67AF:
    add a
    and h
    ld bc, $8520
    and h
    ld [bc], a
    jr nz, jr_01C_67C0

    add d
    jr nz, jr_01C_673D

    and d
    add l
    ld bc, $2001

jr_01C_67C0:
    add e
    and b
    inc bc
    and a
    jr nz, jr_01C_67E6

    add e
    and e
    add d
    and d
    add d
    and c
    add d
    and d
    ld bc, $84A0
    jr nz, @-$7C

    and h
    add e
    and l
    add l

jr_01C_67D7:
    ld [$A085], sp
    add d
    jr nz, jr_01C_6766

    and h
    ld bc, $8420
    and h
    ld [bc], a
    and l
    jr nz, jr_01C_6768

jr_01C_67E6:
    ld [$2003], sp
    and d
    and d
    add h

jr_01C_67EC:
    ld bc, $2082
    add d
    and b
    add e
    and a
    add e
    jr nz, @-$78

    and d
    ld bc, $84A0
    jr nz, jr_01C_677F

    and h
    add e
    and l
    ld bc, $8308
    nop
    ld bc, $8508
    and b
    add d
    jr nz, jr_01C_6792

    and h
    ld [bc], a
    and l
    jr nz, jr_01C_6792

    and h
    inc bc
    and e
    jr nz, jr_01C_6834

    add d
    ld [$2082], sp
    ld [bc], a
    and d
    and e
    add d
    and d
    add h
    jr nz, jr_01C_6821

    and b

jr_01C_6821:
    add l
    and a
    adc h
    jr nz, jr_01C_67A8

    and h
    add e
    and l
    add d
    ld [$0003], sp
    jp nz, $8200

    ld [$A084], sp
    add d

jr_01C_6834:
    jr nz, jr_01C_6837

    and e

jr_01C_6837:
    add a
    and h
    add d
    jr nz, @-$7B

    and h
    inc bc
    and e
    jr nz, @+$22

    add d
    ld [$2087], sp
    add d
    ld [$2082], sp
    ld [bc], a
    and a
    and b
    add d
    and [hl]
    add e
    and a
    ld bc, $89A6
    jr nz, jr_01C_67D7

    and h
    inc bc
    and l
    and h
    and h
    add d
    ld [$0083], sp
    add d
    ld [$A084], sp
    add e

jr_01C_6863:
    jr nz, jr_01C_67EC

    and h
    add d
    jr nz, jr_01C_686F

    and l
    and h
    and h
    and e
    jr nz, @+$22

jr_01C_686F:
    add e
    ld [$2082], sp
    add a
    ld [$2003], sp
    and a
    and b
    add e
    and [hl]
    add l

jr_01C_687C:
    and a
    add h
    and [hl]
    add e
    jr nz, jr_01C_6883

    and e

jr_01C_6883:
    add e
    and h
    ld bc, $87A2
    ld bc, $A103
    and b
    and c
    add h
    jr nz, jr_01C_6891

    and e

jr_01C_6891:
    add [hl]
    and h
    ld bc, $8620
    and h
    ld bc, $8620
    ld [$0083], sp
    add e
    ld [$2002], sp
    and a
    add a
    and [hl]
    add a
    and a
    dec b
    and [hl]
    jr nz, @+$22

    and e
    and h
    add d

jr_01C_68AD:
    and d
    add a
    ld bc, $A103
    and b
    and b
    add d
    jr nz, jr_01C_68BA

jr_01C_68B7:
    and b
    jr nz, jr_01C_68DA

jr_01C_68BA:
    add l
    and h
    inc bc
    and l
    jr nz, jr_01C_6863

    add l
    and h
    rlca
    jr nz, @+$0A

    ld [$A6A4], sp
    ld bc, $8308
    nop
    ld bc, $8408
    jr nz, jr_01C_68D2

    and a

jr_01C_68D2:
    adc b
    and [hl]
    add a
    and a
    inc bc
    jr nz, jr_01C_687C

    and h

jr_01C_68DA:
    adc d
    and d
    ld bc, $83A1
    jr nz, jr_01C_6863

    and a
    ld bc, $8520
    and h
    add e
    jr nz, @-$79

    and h
    ld [bc], a
    jr nz, jr_01C_68F5

    add d
    and h
    inc bc
    and a
    ld bc, $8301
    nop

jr_01C_68F5:
    add d
    ld bc, $A202
    and e
    add d
    jr nz, jr_01C_68FE

    and a

jr_01C_68FE:
    add a
    and [hl]
    add a
    and a
    add d
    jr nz, @-$7A

    and e
    add a
    and d
    inc b
    and b
    jr nz, jr_01C_692C

    and [hl]
    add e
    and a
    ld bc, $83A5
    and h
    ld bc, $83A5

jr_01C_6916:
    jr nz, jr_01C_6919

    and e

jr_01C_6919:
    add e
    and h
    inc b
    and l
    jr nz, jr_01C_6927

    and h
    add d
    and a
    add a
    ld bc, $A203
    and e

jr_01C_6927:
    and e
    add d
    jr nz, jr_01C_68AD

    and a

jr_01C_692C:
    add l
    and [hl]
    adc b
    and a
    add d
    jr nz, jr_01C_68B7

    and e

jr_01C_6934:
    add l
    and d
    add d
    and c
    add e
    jr nz, jr_01C_693C

    and a

jr_01C_693C:
    add l
    and h
    ld bc, $85A5
    jr nz, jr_01C_6946

    and l
    and h
    and e

jr_01C_6946:
    add d
    jr nz, @+$04

    ld [$82A4], sp
    and d
    add a
    ld bc, $A201
    add e
    and e
    add h
    jr nz, jr_01C_6959

    and a
    and [hl]
    and [hl]

jr_01C_6959:
    adc d
    and a
    ld [bc], a
    jr nz, jr_01C_6966

    add e
    and e
    add l
    and d
    add d
    and c
    inc bc
    and a

jr_01C_6966:
    jr nz, jr_01C_6988

    add [hl]
    and h
    add l
    jr nz, jr_01C_696E

    and l

jr_01C_696E:
    add e
    and h
    add d
    jr nz, jr_01C_6976

    ld [$A3A4], sp

jr_01C_6976:
    adc d
    and d
    add e
    and e
    add l
    jr nz, jr_01C_6981

    and a
    and [hl]
    and a
    and l

jr_01C_6981:
    adc b
    and a
    add d
    ld [$A301], sp
    add l

jr_01C_6988:
    and d
    add h
    and c
    add d
    jr nz, jr_01C_698F

    and l

jr_01C_698F:
    add l
    and h
    add e
    jr nz, jr_01C_6916

    and l
    add h
    and h
    add d
    jr nz, @+$03

    ld [$A284], sp
    ld bc, $84A1
    jr nz, jr_01C_69A3

    and d

jr_01C_69A3:
    add h
    and e
    add e
    and d
    ld bc, $85A3
    jr nz, jr_01C_6934

    and a
    ld bc, $83A0
    ld [$A285], sp
    add l
    jr nz, jr_01C_69B7

    and l

jr_01C_69B7:
    add [hl]
    and [hl]
    add e
    and a
    add d
    and l
    add h
    and h
    ld bc, $8420
    ld [$2083], sp
    add e
    ld [$2083], sp
    add [hl]
    and e
    add d
    and d
    ld bc, $84A3
    jr nz, jr_01C_6959

    and a
    add d
    and b
    add e
    ld [$2088], sp
    ld bc, $88A5
    and [hl]
    add e
    and a
    ld [bc], a
    and [hl]
    and l
    add e
    and h
    adc e
    ld [$2083], sp
    ld bc, $89A2
    and e
    add h
    jr nz, jr_01C_6976

    and a
    inc bc
    and b
    ld [$8408], sp
    jr nz, jr_01C_69F8

    and l

jr_01C_69F8:
    add h
    and a
    adc l
    and [hl]
    ld bc, $83A5
    and h
    add e
    ld [$2002], sp
    nop
    add d
    ld [$0082], sp
    ld bc, $8508
    jr nz, jr_01C_6A0F

    and d

jr_01C_6A0F:
    adc c
    and e
    add h
    jr nz, jr_01C_6A15

    and a

jr_01C_6A15:
    add e
    and [hl]
    add e
    and a
    add d
    and [hl]

jr_01C_6A1B:
    add h
    and a
    sub e
    and [hl]
    add e
    and l
    add d
    ld [$2082], sp
    add d
    nop
    inc bc
    ld [$0000], sp
    add d
    ld bc, $A202
    and h
    add e
    jr nz, jr_01C_6A34

    and d

jr_01C_6A34:
    adc b
    and e
    ld [bc], a
    and d
    and e
    add l
    jr nz, jr_01C_6A3F

    and a
    and [hl]
    and [hl]

jr_01C_6A3F:
    add d
    and a

jr_01C_6A41:
    sbc b
    and [hl]
    add d
    and l
    add e
    ld [$2003], sp
    ld bc, $8301
    nop
    add e
    ld bc, $A204

jr_01C_6A51:
    and e
    and d
    and h
    add d
    jr nz, jr_01C_6A58

    and d

jr_01C_6A58:
    add h
    and e
    add e
    and d
    add d
    and e
    ld [bc], a
    and d
    and e
    add [hl]
    jr nz, jr_01C_6A65

    and a

jr_01C_6A65:
    add e
    and [hl]
    add d
    and l
    adc c

jr_01C_6A6A:
    and [hl]
    ld bc, $89A5
    and [hl]
    add [hl]
    ld [$2001], sp
    add a
    ld bc, $A282
    add d
    and e
    ld bc, $84A4
    jr nz, @+$07

    and d
    and e
    and e
    and h
    ld [$A385], sp
    ld [bc], a
    and d
    and e
    adc d
    jr nz, jr_01C_6A8C

    and a

jr_01C_6A8C:
    adc b
    and [hl]
    add [hl]
    jr nz, jr_01C_6A1B

    ld [$2001], sp
    add [hl]
    ld bc, $2083
    inc bc
    and e

jr_01C_6A9A:
    and h
    and h
    add e
    and d
    add d
    jr nz, jr_01C_6AA4

    and d
    and e
    and h

jr_01C_6AA4:
    add [hl]
    and e
    add a
    and d
    ld bc, $8FA3
    jr nz, jr_01C_6AB2

    and c
    and d
    and c
    and d
    and e

jr_01C_6AB2:
    adc c

jr_01C_6AB3:
    ld [$2001], sp

jr_01C_6AB6:
    add l
    and h
    ld [bc], a
    and e
    and h
    add e
    jr nz, jr_01C_6A41

    and d
    ld [bc], a
    and h
    and d
    add e
    jr nz, jr_01C_6AC6

    and d

jr_01C_6AC6:
    add [hl]
    and e
    adc a
    and d
    ld bc, $87A3
    jr nz, jr_01C_6A51

    and c
    add d
    and d
    add l
    and h
    add [hl]
    ld [$2001], sp
    add l
    and d
    add e
    and e
    add e
    jr nz, jr_01C_6AE0

    and d

jr_01C_6AE0:
    add h
    and h
    add d
    jr nz, jr_01C_6A6A

    and d
    add d
    and e
    adc e
    and d
    add d
    and e
    add h
    and h
    ld b, $A3
    jr nz, jr_01C_6B12

    and c
    and d
    and c
    add d
    and d
    add [hl]
    and h
    add d
    ld [$0083], sp
    add d
    ld [$2085], sp
    add d
    and d
    add e
    and e
    add e
    jr nz, jr_01C_6B0A

    and h
    and [hl]

jr_01C_6B0A:
    add d
    and h
    adc b
    jr nz, jr_01C_6A9A

    and d
    add h
    and e

jr_01C_6B12:
    add e
    and h
    ld b, $A5
    jr nz, @+$22

    and b
    and c
    and c
    add d
    and d
    add l
    and h
    ld [bc], a
    and l
    ld [$0085], sp
    add d
    ld [$2086], sp
    inc b
    and d
    and e
    and h
    jr nz, jr_01C_6AB3

    and [hl]
    add e
    jr nz, jr_01C_6AB6

    and d
    ld bc, $87A3
    ld [$2086], sp
    ld bc, $85A2
    and h
    add e
    jr nz, jr_01C_6B43

    and b
    and c
    and c

jr_01C_6B43:
    add d
    and d
    add h
    and h
    inc bc
    and l
    jr nz, @+$0A

    add l
    nop
    add h
    ld [$2082], sp
    add d
    ld [$2001], sp
    add e
    and h
    add d
    and l
    add d
    and [hl]
    add e
    jr nz, jr_01C_6B5F

    and c

jr_01C_6B5F:
    add l
    and d
    add a
    ld [$2002], sp
    and h
    add d
    and a
    add e
    jr nz, jr_01C_6B6C

    and d

jr_01C_6B6C:
    add h
    and h
    add d
    jr nz, jr_01C_6B73

    and c
    and b

jr_01C_6B73:
    add d
    and c
    add d
    and d
    add h
    and h
    inc bc
    and l
    jr nz, jr_01C_6B9D

    add d
    nop
    inc bc
    ret z

    nop
    nop
    adc b
    ld [$2001], sp
    add e

jr_01C_6B88:
    and h
    add d
    and l
    add e
    jr nz, jr_01C_6B90

    and d
    and c

jr_01C_6B90:
    add [hl]
    and d
    ld [bc], a
    ld bc, $8308
    nop
    dec b
    ld [$2020], sp
    and h
    and l

jr_01C_6B9D:
    add d
    and a
    add e
    jr nz, @-$7A

    and h
    inc b
    jr nz, jr_01C_6BAE

    and b
    and a
    add d
    and c
    add d
    and d
    add e
    and h

jr_01C_6BAE:
    inc bc
    and l
    jr nz, @+$22

    add d
    ld bc, $0083
    ld bc, $8401
    ld [$0083], sp
    ld [bc], a
    ld [$8420], sp
    and h
    add d
    jr nz, @+$05

    and d
    and c
    res 0, [hl]
    and d
    ld [$01A3], sp
    ld [$C400], sp
    nop
    ld [$8820], sp
    and l
    ld bc, $83A3

jr_01C_6BD7:
    and h
    add e
    ld [$A003], sp
    and c
    and c
    add d
    and d

jr_01C_6BE0:
    add e
    and h
    inc bc
    and l
    jr nz, jr_01C_6B88

    add [hl]
    ld bc, $2001
    add e
    ld [$0083], sp
    add d
    ld [$A483], sp
    add d
    and d
    inc bc
    and c
    and d
    and d
    add d
    and c
    add h
    jr nz, @+$04

    ld [$82A3], sp
    ld bc, $0083
    ld [bc], a

jr_01C_6C04:
    ld [$8820], sp
    and l
    ld bc, $83A3
    and h
    add e

jr_01C_6C0D:
    ld [$A183], sp
    add d
    and d
    add d
    and h
    inc b
    and l
    jr nz, jr_01C_6C38

    and b
    add [hl]

jr_01C_6C1A:
    ld bc, $2004
    ld [$0120], sp
    add e
    nop
    inc bc
    ld bc, $0108
    add [hl]
    and d
    add d
    and c
    ld bc, $8420
    nop
    ld [bc], a
    ld [$85A2], sp
    ld bc, $2082
    add a
    and l
    add d

jr_01C_6C38:
    and e
    add d
    and h
    ld bc, $83A3
    ld [$A183], sp
    add d
    and d
    ld [bc], a
    and h
    and l
    add e

jr_01C_6C47:
    jr nz, jr_01C_6C4A

    and b

jr_01C_6C4A:
    add l
    and c
    inc b
    and b
    jr nz, @+$0A

    jr nz, jr_01C_6BD7

jr_01C_6C52:
    ld bc, $0883
    add e
    and d
    ld bc, $84A1
    jr nz, jr_01C_6BE0

    nop
    ld [bc], a
    ld [$84A0], sp

jr_01C_6C61:
    ld bc, $2082
    add a
    and l
    add e

jr_01C_6C67:
    and e
    add d
    and h
    ld bc, $83A3
    and d
    add e
    and c
    add d
    and d
    ld [bc], a
    and h
    and l
    add e
    jr nz, jr_01C_6C79

    and b

jr_01C_6C79:
    add l
    and c
    ld bc, $83A0
    jr nz, jr_01C_6C04

    ld bc, $0882
    ld [bc], a
    jr nz, jr_01C_6C8E

    adc b
    jr nz, jr_01C_6C0D

    nop
    ld bc, $8408
    and b

jr_01C_6C8E:
    add e
    jr nz, jr_01C_6C1A

jr_01C_6C91:
    and l
    add e
    and h
    add h
    and d
    add e
    and c

jr_01C_6C98:
    add d

jr_01C_6C99:
    and d
    ld [bc], a
    and h
    and l
    add e
    jr nz, jr_01C_6CA1

    and b

jr_01C_6CA1:
    add l
    and c
    ld bc, $83A0
    jr nz, jr_01C_6CAB

    and l
    and h
    and h

jr_01C_6CAB:
    add h
    jr nz, @-$7B

    and d
    ld bc, $86A3
    jr nz, jr_01C_6C38

    ld [$A083], sp
    add e
    jr nz, @-$78

    and l
    sub b
    and d
    ld bc, $83A4
    jr nz, jr_01C_6C47

    and c
    inc bc
    and e
    and c
    and b
    add e
    jr nz, jr_01C_6CCD

    and l
    and h
    and h

jr_01C_6CCD:
    add d
    jr nz, jr_01C_6C52

    and c
    add d
    and d
    inc bc
    call z, $A3A2

jr_01C_6CD7:
    add d
    jr nz, jr_01C_6C61

jr_01C_6CDA:
    and d
    add e

jr_01C_6CDC:
    and b
    add d
    jr nz, jr_01C_6C67

    and l
    add l
    and d
    add h
    and e
    add a
    and d
    ld bc, $83A4
    jr nz, jr_01C_6CED

    and b

jr_01C_6CED:
    add l
    and c
    add l
    jr nz, jr_01C_6CF8

jr_01C_6CF2:
    and l
    and h
    and h
    jr nz, jr_01C_6C98

    and c

jr_01C_6CF8:
    add e
    and b
    ld b, $A2
    and h
    and h
    and e
    jr nz, jr_01C_6CA1

    add [hl]
    and d
    add d
    and b
    ld bc, $83A1
    jr nz, jr_01C_6C8E

    and l
    adc b
    jr nz, jr_01C_6C91

    and d

jr_01C_6D0F:
    ld [bc], a
    and c
    jr nz, jr_01C_6C99

    and d
    ld bc, $83A3
    and d

jr_01C_6D18:
    ld bc, $83A1
    and e

jr_01C_6D1C:
    ld bc, $85A0
    jr nz, jr_01C_6D22

    and l

jr_01C_6D22:
    add h
    and d
    add h
    and b
    inc bc
    jr nz, jr_01C_6CCD

    and h
    add h
    and d
    ld [bc], a
    and b
    and e
    add e
    and d
    ld bc, $83A0
    jr nz, @-$7B

    ld [$A583], sp
    add d
    jr nz, @-$7C

    ld [$A202], sp
    and e
    add h
    jr nz, jr_01C_6D44

    and c

jr_01C_6D44:
    add e
    jr nz, @-$76

    and d
    inc bc
    and c
    and d
    and b
    adc b
    jr nz, jr_01C_6CD7

    and d
    ld [bc], a
    and c
    jr nz, jr_01C_6CDA

    and d
    ld [bc], a
    and c
    jr nz, jr_01C_6CDC

    and d
    inc bc
    and c
    jr nz, jr_01C_6D7E

    add [hl]
    ld [$2082], sp
    add d
    ld [$A282], sp
    add d
    and e
    adc c
    jr nz, jr_01C_6CF2

    and d
    inc bc
    and b
    jr nz, @+$22

    add l
    ld [$2084], sp
    add e
    ld [$2094], sp
    adc c
    ld [$A282], sp
    add d
    and e

jr_01C_6D7E:
    sub d
    jr nz, @+$04

    ld bc, $8308
    nop
    ld bc, $8308
    jr nz, jr_01C_6D0F

    ld [$2085], sp
    add h
    and d
    ld bc, $83A3
    jr nz, jr_01C_6D18

    and d
    ld bc, $84A3
    jr nz, jr_01C_6D1C

    ld [$0083], sp
    inc b
    ld [$A2A0], sp
    and e
    add a
    and d
    add d
    and e
    adc c
    jr nz, @+$09

    and c
    ld bc, $0008
    rst $00

jr_01C_6DAE:
    nop
    ld [$2082], sp
    add d
    ld [$0083], sp
    ld [bc], a
    ld [$8301], sp
    and d
    ld bc, $87A1
    and d
    ld bc, $89A1
    and d
    add hl, bc
    ld bc, $0008
    add $00
    ld [$2001], sp
    and h
    sub c
    and d
    ld [bc], a
    and c
    and d
    add d
    ld bc, $0083
    add l
    ld [$0003], sp
    push bc
    nop
    add d
    ld bc, $A295
    add d
    ld bc, $0083
    add d
    ld bc, $2003
    and d
    and e
    sub d
    and d
    add l
    ld bc, $0882
    inc bc
    and d
    ld bc, $8301
    nop
    add d
    ld bc, $A295
    add [hl]
    ld bc, $2084
    inc b
    and e
    and d
    and d
    and e
    adc [hl]
    and d
    add l
    ld bc, $0882
    ld bc, $87A2
    ld bc, $A295
    add [hl]
    ld bc, $2084
    add h
    ld [$A282], sp
    ld bc, $8FA3
    and d
    inc bc
    and b
    ld [$8208], sp
    and d
    add [hl]
    ld bc, $A287
    ld [bc], a
    and c
    jr nz, jr_01C_6DAE

    ld [$A28B], sp
    ld bc, $84A1
    jr nz, @-$76

    ld [$A28D], sp
    ld bc, $85A0
    ld [$208F], sp
    adc b
    ld [$208D], sp
    adc d
    ld [$208A], sp
    add [hl]
    ld [$FF00], sp
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    jp $C37F


    ccf
    db $E3
    ccf
    db $E3
    ccf
    pop hl
    ccf
    ldh [$5F], a
    ldh a, [$5F]
    ld hl, sp-$61
    cp $91
    rst $38
    and b
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
    rra
    rst $38
    rrca
    rst $38
    adc a
    ld hl, sp-$01
    rst $08
    rst $38
    adc a
    db $FC
    sbc a
    ldh a, [rIE]
    ldh [$BF], a
    pop hl
    ld a, a
    jp $C37F


    rst $38
    pop af
    rst $38
    db $E3
    rst $38
    db $E3
    rst $38
    rst $00
    rst $38
    rst $00
    db $FC
    adc h
    ldh a, [$90]
    di
    sub e
    ld a, [$F9BA]
    reti


    db $FC
    call z, $C7FF
    rst $38
    db $E3
    rst $38
    db $E3
    rst $38
    pop af
    rst $38
    pop af
    ld e, e
    and h
    ld h, a
    sbc b
    or a
    ret c

    ld [hl], a
    sbc b
    ld d, e
    cp h
    dec a
    cp $5E
    db $E3
    and e
    call c, $FF00
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

jr_01C_6F3D:
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
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $13
    inc e
    rla
    dec de
    inc bc
    inc bc
    inc c
    rrca
    rla
    jr jr_01C_6F8B

    jr nc, jr_01C_6F3D

    push hl
    adc a
    ld hl, sp-$61
    ldh a, [rIE]
    ld [c], a
    ld hl, sp-$08
    or $0E
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
    rrca
    rrca
    ld [hl], a
    ld a, b
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01C_6F8B:
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    cp $F3
    db $FC
    rst $30
    ei
    rst $38
    rst $38
    db $FC
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$DF]
    push hl
    adc a
    ld hl, sp-$61
    ldh a, [rIE]
    ld [c], a
    rst $38
    rst $38
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
    ccf
    ccf
    ld b, d
    ld a, a
    add c
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
    ldh [$E0], a
    inc e
    db $FC
    adc a
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
    ld bc, $0601
    rlca
    db $FC
    rst $38
    rst $38
    pop af
    rst $38
    db $E3
    rst $38
    db $E3
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    inc b
    db $FC
    add d
    cp $C2
    cp $F6
    cp $FC
    db $FC
    ldh [$E0], a
    ret nz

    ret nz

    ret nz

    ret nz

    jr c, jr_01C_7066

    ld c, h
    ld a, a
    add d
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    and e
    cp $5F
    db $FC
    ccf
    ldh a, [rIE]
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    inc e
    rra
    inc sp
    inc a
    ld c, e
    ld a, l
    ld d, a
    ld a, c
    cp [hl]
    db $DD
    cp e
    rst $20
    cp [hl]
    db $E3
    db $FC
    rst $00
    rst $38
    ld [$D0FF], sp
    ld a, a
    and b
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ret nz

    ccf
    ldh [$7F], a
    and b
    rst $38

jr_01C_7066:
    db $10
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    db $FC
    rst $38
    di
    db $FC
    set 7, l
    rst $10
    ld sp, hl
    cp [hl]
    db $DD
    cp e
    rst $20
    cp [hl]
    db $E3
    db $FC
    rst $00
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    rrca
    ld [$080F], sp
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rSVBK]
    ld hl, sp-$78
    ld hl, sp+$48
    ret z

    ld a, b
    ld e, b
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    inc b
    rlca
    dec bc
    rrca
    inc c
    rrca
    rrca
    rrca
    ld [$100F], sp
    rra
    ld de, $1E1F
    rra
    ld e, a
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
    ldh a, [rIE]
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
    inc bc
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
    adc a
    rst $38
    rst $00
    db $FD
    rst $00
    cp $C3
    cp $E3
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$E0], a
    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0C
    db $FC
    rst $38
    ret nz

    rst $38
    ld bc, $07FF
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
    nop
    nop
    rra
    rra
    ccf
    jr nz, jr_01C_71BB

    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld a, a
    ld h, b
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    sbc a
    di
    adc a
    ldh a, [rBGP]
    ld a, b
    ld a, e
    ld a, h
    ld [hl], a
    ld c, h
    rst $38
    sub h
    cp a
    push de
    sbc e
    db $ED
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ld h, b
    rst $38
    ld [hl], h
    rst $08
    ld [hl], b
    cp a
    ret nz

    ld a, a
    sbc b
    rst $30
    inc l
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    rra
    inc e
    ccf
    ld [hl+], a
    ld a, a
    ld c, d
    ld e, a
    ld l, e
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    sbc a
    di
    adc a
    ldh a, [$C7]
    ld hl, sp-$05
    db $FC
    rst $30
    call z, $94FF
    cp a
    push de
    sbc e
    db $ED
    ld c, $0F
    ld [hl], $37
    ld a, c
    ld c, c
    ld a, b
    ld c, b
    ld c, h
    ld a, h
    ld [hl-], a
    ld a, $32
    ld a, $1E
    ld e, $70
    ldh a, [$88]
    ld hl, sp-$48
    ld hl, sp-$68
    ld hl, sp-$30
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop

jr_01C_71BB:
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld b, d
    ld a, a
    inc l
    ccf
    jr nc, @+$41

    jr nz, jr_01C_7214

    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    rst $00
    ld a, a
    db $E3
    ccf
    db $E3
    ccf
    pop hl
    ccf
    pop af
    ccf
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    nop
    nop
    nop
    nop
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
    and b
    nop
    jr nz, jr_01C_7246

    ld b, b
    ld a, a
    ld b, c
    ld a, a
    add c
    rst $38
    add e
    rst $38
    ld a, [hl]
    ld a, a
    jr jr_01C_7232

    ld h, b

jr_01C_7214:
    ld a, a
    rst $38
    adc a
    rst $38
    add [hl]
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3F], a
    rst $38
    ld [hl], $FF
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld bc, $80FF
    ld a, a
    ldh [$3F], a

jr_01C_7232:
    ld hl, sp+$37
    cp $FF
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
    rst $38
    ccf
    rst $38
    rra
    sub c

jr_01C_7246:
    rst $38
    ld e, l
    ld [hl], a
    ld a, [hl]
    ld [hl], e
    ld d, [hl]
    ld a, e
    xor h
    rst $18
    ei
    adc a
    or e
    call c, $FE91
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    adc b
    ld a, a
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $08
    jr nc, jr_01C_72B5

    ld a, d
    inc h
    ccf
    inc h
    ccf
    rla
    rra
    ld d, $1E
    inc c
    inc c
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ret nz

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
    sub c
    rst $38
    db $DD
    rst $30
    cp $F3
    sub $FB
    xor h
    rst $18
    ei
    adc a
    or e
    call c, $FE91
    nop
    nop
    rrca
    rrca
    rra
    db $10
    ld a, a
    ld h, h
    rst $38
    and a
    rst $38
    sub c
    rst $38
    cp d
    rst $38
    add $00
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$90]
    ld hl, sp+$08
    db $FC
    db $EC
    cp $12
    cp $0A

jr_01C_72B5:
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
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld hl, $123F
    rra
    inc e
    rra
    jr jr_01C_72F2

    jr nc, @+$41

    ld a, a
    pop af
    rst $38
    db $E3
    cp a
    db $E3
    ld a, a
    jp $C77F


    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    ld hl, sp+$00
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

jr_01C_72F2:
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    add b
    rst $38
    ld a, b
    ld a, a
    rlca
    rlca
    ld b, $07
    ld [$060F], sp
    rlca
    ld bc, $4201
    rst $38
    ld b, d
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $FF
    ei
    ei
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld b, a
    rst $38
    ld c, l
    rst $38
    sbc c
    rst $38
    sub b
    rst $38
    and b
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    sub b
    rst $38
    adc h
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    ld b, e
    ld a, a
    inc h
    ccf
    ld a, b
    ld a, a
    jp c, $F7DF

    ld [$E0FF], sp
    ld e, a
    or d
    ld a, $D5
    dec l
    ld a, [c]
    sbc a
    db $EC
    sbc a
    ldh a, [$90]
    rst $38
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld b, c
    rst $38
    jp nz, $2FFF

    di
    inc e
    push af
    sbc [hl]
    di
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $18
    ldh [$FE], a
    rla
    rst $28
    add hl, de
    push de
    cp d
    sbc a
    ld a, [c]
    inc c
    ei
    sub b
    rst $38
    adc h
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    add e
    cp a
    call nz, $F0DF
    rst $30
    ret c

    db $DD
    rst $38
    sub b
    cp a
    add sp, -$75
    db $FD
    db $F4
    rst $38
    ld b, a
    ld a, a
    inc a
    ccf
    rra
    rra
    nop
    nop
    ld a, [$F6CE]
    sbc [hl]
    db $E4
    db $FC
    ld b, h
    db $FC
    call z, $F8FC
    ld hl, sp-$20
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
    add b
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_01C_7406

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    inc hl
    ccf
    inc e
    rra
    ld [$FF0F], sp
    adc a
    rst $38
    add [hl]
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ldh [$3F], a
    rst $38
    ld b, [hl]
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00FF
    rst $38
    ldh [$3F], a
    rst $38
    inc de
    rst $38
    ld de, $FFFF
    rst $38
    rst $38
    cp $FF
    ldh [rIE], a
    nop
    rst $38
    inc bc
    cp $0F
    db $FC
    rst $38
    adc b
    rst $38
    rst $38

jr_01C_7406:
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38

jr_01C_741A:
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    cp $FF
    db $FC
    rst $38
    ld hl, sp-$01
    jr c, jr_01C_7466

    ld c, a
    ld a, a
    adc a
    db $FC
    sbc a
    ldh a, [rIE]
    ldh [$BF], a
    pop hl
    ld a, a
    jp $C37F


    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
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
    ld a, [hl-]
    ccf
    ld c, c
    ld c, a
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    adc h
    rst $28
    ld [de], a
    rst $18
    jr nz, jr_01C_741A

    jp hl


    rst $38
    and [hl]
    cp a
    ld [hl], b
    ld a, a
    jr jr_01C_7482

    rrca
    rrca
    adc b

jr_01C_7466:
    rst $38
    inc b
    rst $38
    inc h
    rst $38

jr_01C_746B:
    call nz, $07FC
    rst $38
    rrca
    rst $38
    jr jr_01C_746B

    ldh a, [$F0]
    jr c, @+$01

    ld b, h
    rst $38
    ld h, d
    ld a, a
    sub d
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ret nz

jr_01C_7482:
    rst $38
    ld a, a
    ld a, a
    jp z, $E9CF

    db $EB
    db $FC
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $28
    ld [de], a
    rst $18
    jr nz, @-$3F

    jp hl


    rst $38
    ld h, $3F
    and b
    xor a
    ldh a, [$F7]
    db $FC
    db $FC
    adc b
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    call nz, $07FC
    rst $38
    inc b
    db $F4
    ld [$3FE8], sp
    ccf
    jr c, @+$01

    ld b, h
    rst $38
    ld h, d
    ld a, a
    sub d
    rst $38
    sub b
    rst $38
    add b
    cp a
    ld b, b
    ld e, a
    ldh a, [$F0]
    rlca
    rlca
    inc b
    rlca
    ld [$080F], sp
    rrca
    ld [$060F], sp
    rlca
    ld bc, $0001
    nop
    inc b
    rst $38
    inc b
    rst $38
    ld [$08FF], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add sp, -$11
    rlca
    rlca
    ld de, $11FF
    rst $38
    ld de, $21FF
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld sp, $CEFF
    adc $08
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$88FF], sp
    rst $38
    ld hl, sp-$01
    adc h
    adc a
    rlca
    rlca
    rra
    rst $38
    rra
    rst $38

jr_01C_7509:
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    jr c, jr_01C_7509

    jr nz, @-$1E

    ret nz

    ret nz

    ld hl, sp-$01
    db $FC
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, jr_01C_7560

    inc c
    rrca
    rlca
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld hl, sp-$08
    rlca
    rlca
    dec bc
    inc c
    rra
    inc e
    ccf
    ld [hl+], a
    daa
    jr c, jr_01C_7560

    rra
    ld c, $0F
    inc b
    rlca
    ret nz

    ret nz

    and b
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$78
    ret z

    jr c, jr_01C_7570

jr_01C_7560:
    ldh a, [$E0]
    ldh [rLCDC], a
    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    ld [$131F], sp
    rra
    inc de
    rra

jr_01C_7570:
    jr jr_01C_7591

    rra
    jr @+$21

jr_01C_7575:
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [$F0]
    jr nc, jr_01C_7575

    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld e, c
    ld b, c

jr_01C_7591:
    ld b, c
    ld b, c
    ld [hl], $36
    nop
    nop
    nop
    nop
    jr nc, jr_01C_75CB

    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, bc
    add hl, bc
    ld bc, $0201
    ld [bc], a
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld e, c
    ld b, c
    ld b, c
    ld b, c
    ld [hl], $36
    inc d
    inc d
    add b
    add b
    ld b, b
    ld b, b
    jr c, @+$3A

    ld b, h
    ld b, h
    nop
    nop
    ld h, b
    ld h, b
    sub b
    sub b
    jr jr_01C_75DD

    nop
    nop
    nop
    nop
    ld c, $0E

jr_01C_75CB:
    dec d
    ld de, $1111
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0008], sp
    nop
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a

jr_01C_75DD:
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld [hl+], a
    ld hl, sp-$08
    ld b, h
    db $FC
    or e
    rst $08
    sub d
    rst $38
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    ld [$29FF], a
    rst $38
    rrca
    rrca
    ld [de], a
    rra
    db $ED
    di
    ld hl, $F2FF
    rst $38
    jp z, $0A3F

    rst $38
    ld a, [de]
    rst $38
    ld l, l
    ld a, a
    cpl
    ld a, $03
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $FC00
    inc b
    cp $72
    cp $72
    cp $06
    cp $FE
    ld b, $FE
    ld h, [hl]
    cp $64
    db $FC
    rrca
    ld a, [bc]
    rrca
    ld [$090F], sp
    rra
    ld de, $0E0E
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$A0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh [$E0], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    rra
    dec bc
    rrca
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $3000
    ldh a, [rNR41]
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
    inc d
    inc d
    inc d
    inc d
    ld [de], a
    ld [de], a
    db $10
    db $10
    jr nz, jr_01C_76AF

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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    ld [de], a
    ld [de], a
    jr nz, jr_01C_76CD

    nop
    nop

jr_01C_76AF:
    ld h, b
    ld h, b
    sub b
    sub b
    nop
    nop
    ld h, h
    ld h, h
    or d
    add d
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_01C_76E7

    jr z, jr_01C_76E9

    jr z, jr_01C_76EB

    ld b, h
    ld b, h
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38

jr_01C_76CD:
    inc b
    db $FC
    inc b
    db $FC
    ld [$F0F8], sp
    ldh a, [rNR43]
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    ldh [rIE], a
    inc a
    ccf
    ld b, b
    ld a, a
    ccf
    ccf
    jr z, jr_01C_770F

jr_01C_76E7:
    inc h
    inc h

jr_01C_76E9:
    ld b, b
    ld b, b

jr_01C_76EB:
    jr nc, jr_01C_771D

    ld c, c
    ld c, c
    nop
    nop
    rlca
    rlca
    ld [$AA08], sp
    xor d
    xor c
    xor c
    or b
    or b
    and b
    and b
    db $10
    db $10
    ld b, $06
    add hl, bc
    add hl, bc
    add b
    add b
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

jr_01C_770F:
    nop
    nop
    nop
    nop
    ld bc, $1C00
    nop
    jr nz, jr_01C_7719

jr_01C_7719:
    ld c, b
    nop
    ret nz

    nop

jr_01C_771D:
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    jr nc, jr_01C_7727

jr_01C_7727:
    ld [$0200], sp
    nop
    inc b
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
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    db $10
    ret nz

    ld b, c
    ret nz

    add e
    nop
    ld bc, $8501
    and d
    add e
    and e
    ld bc, $83C0
    and b
    adc h
    and d
    ld bc, $86C0
    and d
    add e
    and e
    ld bc, $86A4
    and d
    add d
    ret nz

    adc a
    and d
    add d
    ret nz

    add e
    nop
    ld bc, $8501
    and d
    add e
    and e
    ld bc, $83C0
    and b
    adc h
    and d
    ld bc, $86C0
    and d
    add e
    and e
    ld bc, $87A4
    and d
    ld bc, $8FA1
    and d
    add d
    ret nz

    add e
    nop
    ld bc, $8601
    and d
    add d
    and e
    ld bc, $83C0
    and b
    add e
    and c
    adc c
    and e
    ld bc, $87C0
    and d
    add d
    and e
    ld bc, $87A4
    and d
    add e
    and c
    ld [bc], a
    and d
    ret nz

    add h
    and d
    add e
    and e
    ld bc, $83A4
    and e
    add d
    ret nz

    add h
    ld bc, $A303
    and h
    and h
    add d
    and l
    add d
    and h
    ld [bc], a
    and e
    ret nz

    add e
    and b
    add e
    and c
    adc c
    and e
    ld bc, $84C0
    and d
    inc bc
    and c
    and d
    and d
    add d
    and e
    ld bc, $88A4
    and d
    ld bc, $83A1
    and d
    ld [bc], a
    ret nz

    and d
    add h
    and e
    add e
    and h
    add d
    and e
    add d
    ret nz

    add e
    and h
    add d
    and e
    add d
    and d
    add d
    and l
    add e
    and h
    ld bc, $83C0
    and b
    add e
    and c
    adc c
    and e
    ld bc, $84C0
    and d
    inc bc
    and c
    and d
    and c
    add d
    and e
    ld bc, $8CA4
    and d
    ld [bc], a
    ret nz

    and d
    add d
    and e
    add l
    and h
    add d
    and e
    add d
    ret nz

    add e
    and h
    ld b, $A1
    and d
    and e
    and d
    and h
    and l
    add e
    and h
    ld bc, $83C0
    and b
    add e
    and c
    add h
    and e
    add h
    and h
    ld [bc], a
    and e
    ret nz

    add h
    and d
    ld b, $A1
    and d
    and c
    ret nz

    and l
    and h
    adc h
    and d
    add d
    ret nz

    add d
    and e
    add a
    and h
    add d
    ret nz

    add e
    and h
    inc b
    and b
    and c
    ret nz

    and l
    add l
    and h
    ld bc, $83C0
    and b
    add e
    and c
    add h
    and e
    add h
    and h
    ld [bc], a
    and e
    ret nz

    add h
    and d
    ld [bc], a
    and c
    and b
    add d
    and a
    add d
    and l
    adc e
    and d
    add d
    and e
    inc bc
    ret nz

    and e
    and e
    add a
    and h
    add d
    ret nz

    add e
    and h
    add d
    and b
    ld [bc], a
    and a
    and l
    add l
    and h
    ld bc, $83C0
    and b
    add e
    and c
    add h
    and e
    add e
    and h
    add d
    and e
    ld bc, $84C0
    and d
    add d
    and b
    add h
    and [hl]
    adc c
    and d
    add l
    and e
    ld [bc], a
    ret nz

    and e
    add a
    and h
    add d
    ret nz

    add e
    and h
    ld [bc], a
    and c
    and b
    add e
    and [hl]
    ld bc, $83A5
    and h
    ld bc, $83C0
    and b
    add d
    and c
    ld bc, $84A2
    ret nz

    add d
    and h
    add e
    and e
    ld bc, $84C0
    and c
    add e
    and b
    add e
    and [hl]
    adc c
    and d
    add l
    and e
    ld [bc], a
    ret nz

    and e
    add a
    and h
    add d
    ret nz

    add e
    and h
    add d
    and c
    add d
    and [hl]
    add d
    and a
    add e
    and h
    ld bc, $83C0
    and b
    add d
    and c
    ld [bc], a
    and d
    ret nz

    add l
    and h
    inc bc
    and d
    and e
    and d
    add a
    and c
    add e
    and b
    adc d
    and d
    add l
    and e
    ld [bc], a
    ret nz

    and e
    add a
    and h
    add d
    ret nz

    add d
    and e
    ld bc, $86A4
    and d
    add h
    and e
    add [hl]
    and d
    ld bc, $85C0
    and h
    add e
    and d
    add e
    and c
    sub c
    and d
    add a
    and e
    add [hl]
    and h
    inc bc
    and l
    ret nz

    ret nz

    add e
    and e
    add [hl]
    and d
    add h
    and e
    add [hl]
    and d
    ld bc, $85C0
    and h
    ld [bc], a
    and d
    and e
    sub e
    and d
    adc h
    and e
    add e
    and h
    inc bc
    and l
    ret nz

    ret nz

    add e
    and e
    add [hl]
    and d
    ld bc, $83A5
    and e
    add [hl]
    and d
    ld bc, $85C0
    and h
    add d
    and e
    sub d
    and d
    add h
    and e
    add d
    and h
    ld bc, $86A5
    and e
    add d
    and h
    add d
    and l
    adc e
    ret nz

    ld bc, $83A5
    and e
    add [hl]
    and d
    ld bc, $85C0
    and h
    add e
    and e
    sub c
    and d
    add h
    and e
    add d
    and h
    inc bc
    and l
    and e
    and e
    add d
    and c
    ld [bc], a
    and d
    and e
    add d
    and h
    add d
    and l
    add d
    ret nz

    adc d
    and [hl]
    add d
    and l
    ld bc, $85A3
    and d
    add d
    ret nz

    add l
    and h
    add h
    and e
    adc b
    and d
    ld bc, $86A1
    and d
    add e
    and e
    add d
    and d
    inc bc
    and e
    and h
    and l
    add d
    and e
    add e
    and c
    ld bc, $84C0
    and l
    add d
    ret nz

    adc d
    and [hl]
    add d
    and l
    ld bc, $85A3
    and d
    ld bc, $88C0
    and h
    add d
    and e
    add [hl]
    and h
    ld [bc], a
    and e
    and d
    add d
    and c
    add h
    ret nz

    add e
    and e
    inc b
    and c
    and d
    and c
    ret nz

    add d
    and l
    add d
    and e
    add d
    and c
    inc bc
    and b
    and a
    and a
    add d
    and l
    inc bc
    and h
    ret nz

    ret nz

    add d
    and [hl]
    adc d
    and l
    ld bc, $85A3
    and d
    adc c
    and e
    inc bc
    ret nz

    and h
    and h
    add a
    and e
    rlca
    and h
    ret nz

    ret nz

    and d
    and e
    and h
    ret nz

    add d
    and e
    add d
    and c
    inc b
    and b
    and a
    and [hl]
    and l
    add d
    and e
    add d
    and c
    ld [bc], a
    and a
    and [hl]
    add d
    and a
    add d
    and h
    add d
    ret nz

    adc [hl]
    and h
    adc l
    and e
    inc bc
    ret nz

    and h
    and h
    adc b
    and e
    ld b, $C0
    and c
    and d
    and e
    and h
    ret nz

    add d
    and e
    add d
    and c
    add e
    and [hl]
    ld bc, $84A5
    and c
    add h
    and a
    add d
    and h
    add d
    ret nz

    adc [hl]
    and h
    adc l
    and e
    ld bc, $8AC0
    and e
    ld [bc], a
    and c
    and d
    add d
    and e
    ld [bc], a
    and h
    ret nz

    add e
    and e
    ld bc, $83A1
    and [hl]
    add h
    and c
    add a
    and h
    add d
    ret nz

    adc [hl]
    and h
    adc l
    and e
    ld bc, $8AC0
    and e
    ld bc, $83A2
    and e
    ld [bc], a
    and h
    ret nz

    add [hl]
    and e
    add h
    and c
    ld bc, $87A3
    and h
    add d
    ret nz

    adc [hl]
    and h
    adc l
    and e
    ld bc, $90C0
    and e
    ld bc, $85C0
    and e
    add h
    and c
    ld bc, $87A3
    and h
    add d
    ret nz

    add a
    and h
    add a
    ret nz

    adc l
    and e
    ld bc, $90C0
    and e
    add l
    ret nz

    add d
    and e
    add d
    and c
    add d
    and e
    add a
    and h
    add d
    ret nz

    add [hl]
    and h
    ld bc, $87A3
    and d
    adc l
    and e
    ld bc, $91C0
    and e
    add h
    and h
    add h
    ret nz

    add d
    and e
    add a
    and h
    add d
    ret nz

    add [hl]
    and h
    ld bc, $87A3
    and d
    sbc a
    and e
    add [hl]
    and h
    add d
    and e
    ld [bc], a
    ret nz

    and e
    add a
    and h
    add d
    ret nz

    add [hl]
    and h
    ld bc, $88A3
    and d
    sbc l
    and e
    add a
    and h
    add e
    and e
    ld bc, $87C0
    and h
    add d
    ret nz

    add l
    and h
    add d
    and e
    adc b
    and d
    add l
    and e
    add d
    ret nz

    sub [hl]
    and e
    add a
    and h
    add e
    and e
    ld bc, $87C0
    and h
    add d
    ret nz

    add l
    and h
    ld [bc], a
    and e
    and d
    add d
    and h
    add [hl]
    and d
    adc a
    and e
    add h
    and d
    add d
    and l
    add l
    and e
    ld [bc], a
    ret nz

    and e
    adc b
    and h
    add e
    and e
    ld bc, $87C0
    and h
    add d
    ret nz

    add h
    and h
    add d
    and e
    inc bc
    and d
    and h
    and h
    add a
    and d
    adc [hl]
    and e
    ld b, $A2
    and c
    and c
    and e
    and h
    and l
    add l
    and e
    add d
    ret nz

    adc b
    and h
    add e
    and e
    ld bc, $87C0
    and h
    add d
    ret nz

    add h
    and h
    inc bc
    and e
    and d
    and d
    add d
    and h
    add a
    and d
    adc [hl]
    and e
    ld b, $A2
    and c
    and c
    ret nz

    and l
    and l
    add [hl]
    and e
    ld bc, $88C0
    and h
    add e
    and e
    ld bc, $87C0
    and h
    add d
    ret nz

    add h
    and h
    inc bc
    and e
    and d
    and d
    add d
    and h
    ld [bc], a
    and d
    ret nz

    add e
    and e
    add d
    and d
    adc [hl]
    and e
    ld [bc], a
    and d
    and c
    add d
    and a
    add d
    and l
    add a
    and e
    adc b
    and h
    add e
    and e
    inc bc
    ret nz

    and d
    and d
    add l
    ld bc, $C082
    add h
    and h
    inc bc
    and e
    and d
    and d
    add d
    and h
    inc bc
    and d
    ret nz

    and d
    add d
    and e
    add d
    and d
    adc [hl]
    and e
    inc bc
    and d
    and c
    and c
    add e
    and a
    add [hl]
    and e
    adc c
    and h
    add e
    and e
    inc b
    ret nz

    and d
    and d
    ld bc, $0084
    add d
    ret nz

    add h
    and h
    add a
    ret nz

    inc bc
    and d
    and e
    and e
    add e
    and d
    add h
    ret nz

    adc c
    and e
    ld [bc], a
    and d
    and c
    add d
    and b
    add d
    and a
    add [hl]
    and e
    adc d
    and h
    add d
    and e
    inc b
    ret nz

    and d
    and d
    ld bc, $0084
    add d
    ret nz

    add h
    and h
    inc bc
    ret nz

    and d
    and d
    add d
    and h
    ld [bc], a
    and d
    ret nz

    adc c
    and e
    add e
    ret nz

    sub d
    and e
    adc e
    and h
    add d
    and e
    inc b
    ret nz

    and d
    and d
    ld bc, $0083
    inc bc
    pop bc
    ret nz

    ret nz

    add h
    and h
    inc bc
    ret nz

    and d
    and d
    add d
    and h
    add d
    and d
    adc h
    and e
    ld bc, $91C0
    and e
    adc e
    and h
    add d
    and e
    inc b
    ret nz

    and d
    and d
    ld bc, $0084
    add d
    ret nz

    add h
    and h
    inc bc
    ret nz

    and d
    and d
    add d
    and h
    add e
    and d
    adc e
    and e
    ld bc, $91C0
    and e
    adc e
    and h
    add d
    and e
    inc b
    ret nz

    and d
    and d
    ld bc, $0084
    add d
    ret nz

    add h
    and h
    inc bc
    ret nz

    and d
    and d
    add d
    and h
    add d
    and d
    ld bc, $8BC0
    and e
    ld bc, $8CC0
    and e
    add d
    ret nz

    add e
    and e
    adc e
    and h
    add d
    and e
    inc bc
    ret nz

    and d
    and d
    add l
    ld bc, $C082
    add h
    and h
    inc bc
    and e
    and d
    and d
    add d
    and h
    add d
    and d
    ld bc, $84C0
    and d
    add a
    and e
    ld bc, $8DC0
    and e
    add e
    ret nz

    ld bc, $8BA3
    and h
    add d
    and e
    ld [bc], a
    ret nz

    and d
    add e
    and c
    add e
    and b
    add d
    ret nz

    add h
    and h
    add d
    and e
    inc bc
    and d
    and h
    and h
    add e
    and d
    dec b
    and h
    and c
    and c
    and b
    ret nz

    add [hl]
    and e
    ld bc, $90C0
    and e
    ld bc, $8BC0
    and h
    add d
    and e
    ld [bc], a
    ret nz

    and d
    add e
    and c
    add e
    and b
    add d
    ret nz

    add h
    and h
    add e
    and e
    add e
    and h
    add d
    and d
    dec b
    and h
    and c
    and d
    and b
    ret nz

    add [hl]
    and e
    add d
    and d
    adc a
    and e
    ld bc, $8BC0
    and h
    add d
    and e
    ld bc, $84C0
    and c
    add e
    and b
    add d
    ret nz

    add h
    and h
    add e
    and e
    add e
    and h
    add d
    and d
    ld bc, $83A4
    and d
    ld bc, $86C0
    and e
    add a
    and d
    adc d
    and e
    ld bc, $8BC0
    and h
    add d
    and e
    ld bc, $84C0
    and c
    add e
    and b
    add d
    ret nz

    add h
    and h
    add e
    and e
    add e
    and h
    add d
    and d
    ld bc, $83A4
    and d
    ld bc, $88C0
    and e
    adc b
    and d
    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $8BC0
    and h
    add d
    and e
    add l
    and d
    add e
    and b
    add d
    ret nz

    add e
    and h
    add h
    and e
    add e
    and h
    add d
    and d
    ld bc, $83A4
    and d
    ld bc, $89C0
    and e
    add a
    ret nz

    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $8BC0
    and h
    add a
    and d
    add e
    and b
    add d
    ret nz

    add e
    and h
    add h
    and e
    add e
    and h
    add d
    and d
    ld bc, $83A4
    and d
    ld bc, $88C0
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add d
    and e
    ld [bc], a
    and d
    ret nz

    add d
    and e
    add l
    and h
    ld bc, $83C0
    and h
    add a
    and d
    add e
    and b
    add d
    ret nz

    add e
    and h
    add h
    and e
    add e
    and h
    add d
    and d
    ld bc, $83A4
    and d
    ld bc, $88C0
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $85C0
    and e
    add e
    and h
    inc bc
    ret nz

    and h
    and d
    add [hl]
    and c
    add h
    and b
    add d
    ret nz

    add h
    and h
    add e
    and e
    add e
    and h
    add d
    and d
    inc bc
    and h
    and d
    and d
    add d
    ret nz

    adc b
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $86C0
    and e
    add d
    and h
    add [hl]
    ret nz

    add e
    and c
    add h
    and b
    add d
    ret nz

    add h
    and h
    add e
    and e
    add e
    and h
    add d
    and d
    ld bc, $84A4
    and d
    adc b
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add d
    and e
    ld [bc], a
    and d
    ret nz

    adc b
    and e
    ld bc, $88C0
    and c
    add h
    and b
    add d
    ret nz

    add h
    and h
    ld [bc], a
    and e
    ret nz

    add d
    and e
    add d
    and h
    add d
    and d
    ld bc, $84A4
    and d
    adc b
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $88C0
    and e
    ld bc, $88C0
    and c
    add h
    and b
    add d
    ret nz

    add h
    and h
    ld [bc], a
    and e
    ret nz

    add e
    and e
    inc b
    and h
    and d
    and d
    and h
    add h
    and d
    adc b
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add d
    and e
    ld [bc], a
    and d
    ret nz

    sub b
    and d
    ld bc, $84A1
    and b
    add d
    ret nz

    add h
    and h
    inc bc
    and e
    ret nz

    ret nz

    add d
    and e
    inc b
    and h
    and e
    and d
    and h
    add h
    and d
    adc b
    and e
    inc b
    ret nz

    and b
    and b
    and c
    add h
    and d
    add d
    and e
    add d
    and h
    add e
    and e
    ld bc, $8DC0
    and c
    add d
    and d
    ld [bc], a
    ret nz

    and c
    add h
    and b
    add d
    ret nz

    add h
    and h
    add d
    and e
    adc b
    ret nz

    add e
    and d
    ld [bc], a
    and e
    and c
    add d
    and e
    add l
    and d
    ld bc, $85C0
    and d
    add l
    and h
    add d
    and e
    ld [bc], a
    and d
    ret nz

    adc l
    and c
    add d
    and d
    ld [bc], a
    ret nz

    and c
    add h
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $8BA3
    and d
    add h
    and e
    ld bc, $83A2
    and h
    ld [bc], a
    and e
    ret nz

    add h
    and e
    add [hl]
    and h
    add e
    and e
    ld bc, $8FC0
    and c
    ld [bc], a
    ret nz

    and c
    add h
    and b
    add d
    ret nz

    add l
    and h
    adc h
    and d
    add e
    and c
    ld [bc], a
    and d
    and c
    add e
    and h
    ld [bc], a
    and e
    ret nz

    adc d
    and h
    add d
    and e
    inc bc
    and d
    ret nz

    and d
    add [hl]
    and c
    add d
    and l
    add [hl]
    and c
    ld [bc], a
    ret nz

    and c
    add h
    and b
    add d
    ret nz

    add l
    and h
    adc e
    and d
    add e
    and c
    ld [$A1A0], sp
    ret nz

    and l
    and h
    and l
    and e
    ret nz

    adc d
    and h
    add h
    and e
    ld [bc], a
    ret nz

    and c
    add e
    and e
    ld bc, $83A4
    and l
    add l
    and c
    ld [bc], a
    ret nz

    and c
    add l
    and b
    add d
    ret nz

    add l
    and h
    adc d
    and d
    add l
    and c
    inc b
    and b
    and a
    and [hl]
    and l
    add d
    and e
    ld bc, $8AC0
    and h
    add h
    and e
    ld [bc], a
    ret nz

    and c
    add e
    and e
    ld bc, $83A4
    and l
    add l
    and c
    ld [bc], a
    ret nz

    and c
    add l
    and b
    add d
    ret nz

    add l
    and h
    add l
    and d
    adc c
    and c
    ld bc, $83A7
    and [hl]
    add d
    and d
    ld [bc], a
    and e
    and d
    adc d
    and h
    add h
    and e
    add d
    and d
    add d
    and e
    inc bc
    and d
    and e
    and h
    add d
    and l
    add l
    and d
    add d
    and c
    add l
    and b
    add d
    ret nz

    add l
    and h
    add h
    and d
    adc d
    and c
    ld bc, $83A7
    and [hl]
    add e
    and c
    ld bc, $8AA2
    and h
    add h
    and e
    add h
    and d
    inc bc
    and c
    ret nz

    and l
    add d
    and [hl]
    add l
    and d
    add e
    and c
    add h
    and b
    add d
    ret nz

    add l
    and h
    add e
    and d
    sub c
    and c
    add d
    ret nz

    adc [hl]
    and e
    add d
    and d
    add d
    and c
    inc bc
    and b
    and a
    and [hl]
    add d
    and a
    add [hl]
    and d
    add e
    and c
    add e
    and b
    add d
    ret nz

    add l
    and h
    add d
    and d
    adc b
    and c
    adc e
    ret nz

    sub c
    and d
    add e
    and c
    ld bc, $83A0
    and a
    adc b
    and d
    add d
    and c
    add d
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $88A2
    and c
    sub a
    and d
    add d
    and c
    add h
    and d
    add e
    and c
    ld bc, $83A0
    and a
    adc b
    and d
    add e
    and c
    inc bc
    and b
    ret nz

    ret nz

    add l
    and h
    adc b
    and c
    sbc b
    and d
    add d
    and c
    sub l
    and d
    add d
    and c
    add d
    ret nz

    add l
    and h
    add a
    and c
    sbc d
    and d
    add l
    and c
    sub e
    and d
    add d
    ret nz

    add l
    and h
    add [hl]
    and c
    sbc h
    and d
    add h
    and c
    sub e
    and d
    ret nz

    ld b, c
    ret nz

    nop
    inc c
    db $E4
    nop
    sub b
    ld [$0003], sp
    jp z, $8A00

    ld [$CA01], sp
    add a
    ld [$0086], sp
    add [hl]
    ld [$0001], sp
    adc e
    ld [$0009], sp
    ld [$C808], sp
    call z, $CCC8
    ret z

    nop
    add e
    ld [$0003], sp
    ld [$8300], sp
    ret


    add d
    ld [$C702], sp
    nop
    add d
    ld [$0082], sp
    ld bc, $83CB
    nop
    inc b
    ld [$C7C6], sp
    nop
    add d
    ld [$0082], sp
    add h
    ld [$0004], sp
    add $C7
    nop
    add [hl]
    ld [$0006], sp
    push bc
    nop
    add $C7
    nop
    add d
    ld [$0085], sp
    dec b
    push bc
    nop
    add $C7
    nop
    add d
    ld [$C485], sp
    inc b
    nop
    ld [$C7C6], sp
    add e
    ld [$0084], sp
    add e
    ld [$0001], sp
    add h
    ld [$0082], sp
    add a
    ld [$0001], sp
    add e
    ld [$0082], sp
    inc bc
    ld [$C000], sp
    add d
    nop
    ld [bc], a
    ld [$8200], sp
    ld [$0001], sp
    add h
    jp nz, $C102

    ld [$0083], sp
    add e
    ld [$0084], sp
    ld [bc], a
    ret nz

    ld [$0083], sp
    add l
    ld [$0004], sp
    ld [$0800], sp
    add d
    nop
    adc [hl]
    db $08
    nop
