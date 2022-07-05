; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld bc, $FF00
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ret nz

    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld e, e
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld e, h
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    cp $00
    db $FC
    nop
    ldh a, [rP1]
    pop bc
    ld bc, $00FE
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Call_01B_4100:
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    add hl, de
    ld e, $94
    sbc a
    sub $DF
    nop
    nop
    db $FC
    db $FC
    and $9E
    dec de
    rst $20
    push hl
    ei
    ld a, c
    rst $38
    xor l
    ld a, a
    or a
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $FD
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_01B_4171:
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
    add e
    nop
    ld a, c
    ld a, b
    rst $38
    nop
    rst $38
    nop

jr_01B_4184:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop bc
    nop
    sbc [hl]
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_419F:
    nop
    cp $00
    db $FD
    ld bc, $01FD
    db $FD
    ld bc, $03FB
    db $E3
    inc bc
    add a
    rlca
    rra
    rra
    add hl, sp
    add hl, sp
    or [hl]
    jr nc, jr_01B_4184

    nop
    call z, $EE03
    ld bc, $40A7
    and [hl]
    ld b, b
    and h
    ld b, b
    rrca
    rrca
    db $E4
    inc b
    ld [hl], c
    add b
    or c
    nop
    ld d, c
    add b
    sub d
    ld b, c
    jp nz, Jump_01B_6501

    ld [bc], a
    jp $B9C3


    add c
    inc l
    db $10
    ld l, h
    db $10
    ld c, h
    jr nc, jr_01B_419F

    jr c, jr_01B_4171

    ld l, b
    sub l
    ld l, b
    sbc h
    sbc h
    ld l, l
    inc c
    di
    nop
    inc sp
    ret nz

    ld [hl], a
    add b
    push hl
    ld [bc], a
    ld h, l
    ld [bc], a
    dec h
    ld [bc], a
    ld a, a
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $00
    ret nz

    pop hl
    ldh [$F8], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rra
    rra
    inc de
    rra
    dec [hl]
    dec sp
    ccf
    ccf
    ld hl, $4E3F
    ld [hl], c
    add b
    rst $38
    rra
    rst $38
    push af
    ei
    cp b
    rst $00
    ld h, e
    sbc a
    adc [hl]
    rst $38
    db $DD
    cp $F5
    cp $FA
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    rst $10
    rst $38
    or [hl]
    ld a, [hl]
    ld a, h
    db $FC
    jp c, $B1E6

    rst $08
    cp l
    rst $18
    xor l
    rst $18
    ld e, l
    db $E3
    and d
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    cp $00
    cp $00
    cp $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4360:
    cp $00
    rst $38
    ld bc, $01FD
    ei
    inc bc
    di
    inc bc
    rst $20
    rlca
    adc a
    rrca
    ccf
    ccf
    ld c, e
    inc bc
    sbc l
    ld bc, $09D5
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    ld a, [$FC04]
    nop
    ld [hl], b
    nop
    jp nc, $B9C0

    add b
    xor e
    sub b
    ld c, a
    jr nc, jr_01B_43D8

    jr nc, @+$61

    jr nz, @+$41

    nop
    ld c, $00
    ld a, a
    nop
    rst $38
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $08
    ret nz

    rst $20
    ldh [$F1], a
    ldh a, [$FC]
    db $FC
    jp nc, $B9C0

    add b
    xor e
    sub b
    ld c, c
    jr nc, jr_01B_43F2

    jr nc, jr_01B_4404

    jr nz, jr_01B_441E

    nop
    nop
    nop
    and c
    ld b, b
    ld hl, $33C0
    ret nz

    or d
    ld b, c
    call nc, $F723
    nop
    di
    nop
    ret nz

    nop
    dec h
    ld [bc], a
    add a
    nop
    ld c, a
    add b
    ld c, [hl]
    add b
    ret


    nop
    jp $0700


    nop
    jr nc, jr_01B_4400

    dec h
    ret c

    push bc
    jr c, jr_01B_4360

    ld [hl], b
    ld d, $E1

jr_01B_43D8:
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    jr c, jr_01B_4418

    add l
    ld [bc], a
    add h
    inc bc
    call z, Call_01B_4D03
    add d
    dec hl
    call nz, $00EF
    rst $08
    nop
    inc bc
    nop
    ld c, e
    inc bc

jr_01B_43F2:
    sbc l
    ld bc, $09D5
    sub d
    inc c
    sub d
    inc c
    sbc d
    inc b
    adc [hl]
    nop
    nop
    nop

jr_01B_4400:
    nop
    nop
    nop
    nop

jr_01B_4404:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4418:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_441E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld a, h
    or l
    cp $BB
    cp $BD
    cp $9A
    db $FD
    add l
    ei
    jp Jump_01B_7EFF


    ld a, a
    cp l
    cp $BD
    cp $BD
    cp $FF
    rst $38
    db $DB
    rst $20
    or l
    rst $08
    xor l
    rst $18
    jp $CBFF


    rst $38
    and $FF
    ld a, l
    cp $83
    ld a, h
    ld a, h
    add e
    add e
    rst $38
    cp $FF
    ld bc, $BEFF
    ld a, [hl]
    cp c
    ld a, a
    ld [hl], l
    ei
    ld [hl], l
    ei
    ld sp, hl
    rst $38
    cp $FE
    add $FE
    ld a, e
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
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
    nop
    cp $00
    cp $00
    cp $00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    rst $38
    nop
    rst $08
    nop
    sub a
    nop
    rst $38
    nop
    cp $00
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rrca
    nop
    rra
    nop
    ld bc, $0F00
    nop
    rra
    nop
    inc c
    nop
    sub d
    adc h
    xor a
    sub b
    inc sp
    nop
    ld h, b
    nop
    ld c, b
    nop
    inc d
    ld [$8896], sp
    ld bc, $0101
    ld bc, $0121
    inc sp
    inc bc
    ld d, e
    inc hl
    ld d, e
    inc hl
    sbc e
    ld h, e
    sbc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add h
    add b
    call z, $CAC0
    call nz, $C4CA
    reti


    add $D9
    add $30
    nop
    ld c, c
    ld sp, $09F5
    call z, $0600
    nop
    ld [de], a
    nop
    jr z, jr_01B_460E

    ld l, c
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_460E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], $39
    dec l
    inc sp
    dec hl
    scf
    jr nc, jr_01B_4729

    rra
    rra
    ld bc, $0001
    nop
    rst $38
    rst $38
    pop af
    rst $38
    ld l, [hl]
    pop af
    ld l, l
    cp $EF
    cp $E2
    db $FD
    ldh a, [rIE]
    rra
    rra
    ei
    add a
    cp $FF
    and $FF
    ld c, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    pop af
    pop af
    add b
    add b
    reti


    ccf
    or h
    ld a, a
    cp d
    ld a, a
    db $DD
    ld a, $62
    sbc l
    add c
    rst $38
    rst $38
    rst $38
    cp $FE
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4729:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh [rP1], a
    jp $CF00


    nop
    cp $00
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    adc a
    nop
    rst $08
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    xor [hl]
    sub b
    ld l, $10
    ld e, h
    jr nz, jr_01B_4820

    nop
    inc sp
    nop
    add d
    add c
    add c
    add b
    nop
    nop
    adc e
    ld [hl], e
    xor e
    ld d, e
    xor c
    ld d, c
    dec a
    pop bc
    ld a, l
    add c
    db $DD
    ld bc, $0189
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    adc $D5
    jp z, $8A95

    cp h
    add e
    cp [hl]
    add c
    cp e
    add b
    sub c
    add b
    add b
    add b
    ld [hl], l
    add hl, bc
    ld [hl], h
    ld [$043A], sp
    sbc [hl]
    nop
    call z, Call_01B_4100
    add c
    add c
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

jr_01B_4820:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, a
    ld a, c
    ret c

    rst $20
    and a
    rst $18
    sbc [hl]
    rst $38
    or l
    cp $ED
    cp $00
    nop
    ret nz

    ret nz

    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp-$08
    sbc b
    ld a, b
    add hl, hl
    ld sp, hl
    ld l, e
    ei
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    add e
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
    cp $00
    cp $00
    cp $00
    cp $00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop

jr_01B_4971:
    nop
    nop
    nop
    nop
    nop
    nop
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
    di
    nop
    ldh a, [rP1]

jr_01B_4988:
    ld hl, sp+$00
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop
    di
    nop
    jp hl


    nop
    rst $38
    nop
    ld a, a
    nop
    inc bc
    nop
    rlca
    nop
    rra

jr_01B_499F:
    nop
    jr jr_01B_49A2

jr_01B_49A2:
    ld [hl], $00
    ld l, h
    db $10
    ld e, h
    jr nz, jr_01B_4A02

    jr nz, jr_01B_4A14

    db $10
    ld l, c
    db $10
    ld [hl-], a
    nop
    ld hl, $3301
    inc bc
    or d
    ld [bc], a
    xor b
    db $10
    jr z, jr_01B_49CA

    ld l, c
    db $10
    ld c, c
    jr nc, jr_01B_4988

    jr nc, jr_01B_49E0

    rra
    ld c, a
    rrca
    rst $28
    rrca
    and d
    ld b, d
    or b
    ld b, b

jr_01B_49CA:
    sbc b
    ld h, b
    sbc c
    ld h, b
    add hl, sp
    ret nz

    jp $B9C3


    add c
    inc l
    db $10
    ld l, h
    db $10
    ld c, h
    jr nc, jr_01B_499F

    jr c, jr_01B_4971

    ld l, b
    sub l
    ld l, b

jr_01B_49E0:
    add h
    add b
    call z, Call_01B_4DC0
    ld b, b
    dec d
    ld [$0814], sp
    sub [hl]
    ld [$0C92], sp
    sub e
    inc c
    jr jr_01B_49F2

jr_01B_49F2:
    ld l, h
    nop
    ld [hl], $08
    ld a, [hl-]
    inc b
    sbc d
    inc b
    sub [hl]
    ld [$0896], sp
    ld c, h
    nop
    nop
    nop

jr_01B_4A02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4A14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    ld a, [hl]
    ld a, $3F
    ld e, e
    ld h, a
    adc l
    di
    cp l
    ei
    or l
    ei
    cp d
    rst $00
    ld b, l
    ld a, [hl]
    ld e, a
    rst $38
    ld a, $FF
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, l
    cp $FE
    rst $38
    db $EB
    rst $38
    ld bc, $F8FF
    rst $38
    xor a
    rst $18
    dec e
    db $E3
    add $F9
    ld [hl], c
    rst $38
    cp e
    ld a, a
    xor a
    ld a, a
    ret nz

    ret nz

    ldh [$E0], a
    ld hl, sp-$08
    ret z

    ld hl, sp-$54
    call c, $FCFC
    add h
    db $FC
    ld [hl], d
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4B60:
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop

jr_01B_4B6D:
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
    rst $38
    nop
    rlca
    nop
    nop
    nop
    db $FC
    nop
    ld hl, sp+$00
    pop af
    nop
    di
    nop
    or $00
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rrca
    nop
    rlca
    nop
    jp $F300


    nop

jr_01B_4B98:
    ld a, a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld a, a
    rlca
    add a
    rlca
    ld b, a
    add a
    daa
    inc bc
    di
    add c
    ld a, c
    and b
    inc e
    sbc c
    ld b, $D9
    jr nz, jr_01B_4B6D

    ld b, c
    ld a, [$7101]
    ld [bc], a
    ld h, $00
    rrca
    nop
    jp $F8C0


    ld hl, sp+$73
    add b
    ld h, e
    add b
    and [hl]
    nop
    ld h, l
    nop
    and $01
    db $E3
    nop
    inc bc
    nop
    ld a, b
    ld a, b
    dec h
    ret c

    push bc
    jr c, jr_01B_4B60

    ld [hl], b
    ld d, $E1
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    jr c, jr_01B_4C18

    sbc e
    inc b
    ld e, l
    add d
    ld e, a
    add b
    adc [hl]
    ld b, b
    ld h, h
    nop
    ldh a, [rP1]
    jp $1F03


    rra
    cp $FE
    ldh [$E1], a
    ldh [$E2], a
    pop hl
    db $E4
    ret nz

    rst $08
    add c
    sbc [hl]
    dec b
    jr c, jr_01B_4B98

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4C18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, [hl]
    sbc l
    cp $AE
    rst $18
    xor [hl]
    rst $18
    sbc a
    rst $38
    ld a, a
    ld a, a
    ld h, e
    ld a, a
    sbc $E1
    db $D3
    rst $38
    ld h, a
    rst $38
    cp [hl]
    ld a, a
    pop bc
    ld a, $3E
    pop bc
    pop bc
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp l
    ld a, a
    cp l

Call_01B_4D03:
    ld a, a
    cp l
    ld a, a
    rst $38
    rst $38
    db $DB
    rst $20
    xor l
    di
    or l
    ei
    jp $DAFF


    ld a, $AD
    ld a, a
    db $DD
    ld a, a
    cp l
    ld a, a
    ld e, c
    cp a
    and c
    rst $18
    jp Jump_01B_7EFF


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
    cp $00
    cp $00
    cp $00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    ld h, a
    nop
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    dec l
    inc sp
    ld b, [hl]
    ld a, c
    ld e, [hl]
    ld a, l
    ld e, d
    ld a, l
    ld [hl], e
    ld [hl], e
    rst $08
    rst $38
    cp a
    rst $30
    cp a
    rst $20
    ld a, a
    rst $08
    di
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38

Call_01B_4DC0:
    ldh [$E0], a
    ld d, e
    or e
    xor a
    rst $18
    cp $CF
    xor l
    sbc $19
    rst $38
    ld sp, hl
    rst $38
    db $FC
    rst $38
    inc c
    inc c
    sub e
    sbc a
    db $ED
    ei
    dec l
    ei
    db $D3
    ccf
    rst $38
    rst $18
    cp a
    rst $18
    ld a, a
    cp a
    adc $CE
    di
    rst $38
    db $FD
    rst $28
    db $FD
    rst $20
    cp $F3
    rst $08
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01B_4E30

    or h
    call z, $9E62
    ld a, d
    cp [hl]
    ld e, d
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_4E30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    db $FC
    dec l
    cp $5D
    cp $BB
    ld a, h
    ld b, [hl]
    cp c
    add c
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $18
    pop hl
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld [hl], d
    rst $38
    cp $FF
    cp $FF
    adc a
    adc a
    ld bc, $FF01
    rst $38
    adc a
    rst $38
    halt
    adc a
    or [hl]
    ld a, a
    rst $30
    ld a, a
    ld b, a
    cp a
    rrca
    rst $38
    ld hl, sp-$08
    cp $FE
    ld l, h
    sbc h
    or h
    call z, $ECD4
    inc c
    db $FC
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    nop

Jump_01B_4F21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FD
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FD
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    cp $00
    ccf
    nop
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    ld h, a
    nop
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld h, e
    ld [hl+], a
    ccf
    rra
    rra
    ld hl, $5A3F
    ld a, l
    ld d, [hl]
    ld a, c
    ld l, l
    ld [hl], e
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $E3
    rst $38
    sbc l
    ei
    cp a
    ld sp, hl
    or l
    ei
    set 6, a
    rst $38
    rst $38
    jp $9DFF


    db $E3
    xor a
    rst $18
    sbc $BF
    cp [hl]
    rst $18
    adc $FF
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    cp l
    jp $F937


    ld e, d
    db $FD
    cp d
    db $FD
    halt
    ld sp, hl
    adc l
    ld [hl], e
    inc sp
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    cp c
    rst $18
    db $FD
    sbc a
    xor l
    rst $18
    db $D3
    rst $28
    rst $38
    rst $38
    cp d
    add $44
    db $FC
    ld hl, sp-$08
    add h
    db $FC
    ld e, d
    cp [hl]
    ld l, d
    sbc [hl]
    or [hl]
    adc $FF
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    nop
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    ld bc, $0F8F
    sbc a
    rra
    rra
    rra
    pop hl
    pop hl
    ret nz

    ret nz

    adc h
    add b
    ld c, $00
    dec h
    ld [bc], a
    halt
    ld bc, $314A
    ld b, l
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, c
    ld a, c
    dec [hl]
    ld sp, $21A5
    add l
    ld bc, $00CC
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $E000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    and $00
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $18
    sub a
    rst $28
    cp h
    rst $28
    xor c
    cp $CB
    rst $38
    ei
    rst $38
    xor h
    rst $18
    and a
    rst $18
    di
    rst $38
    db $ED
    ei
    dec l
    ei
    sub e
    ld a, a
    ld e, a
    cp a
    and e
    db $FD
    ld c, h
    rst $38
    sbc $FD
    rst $38
    rst $38
    pop af
    rst $38
    rst $28
    ldh a, [$CD]
    cp $96
    rst $38
    xor [hl]
    rst $38
    sbc l
    cp $A3
    call c, $FFE1
    call z, $56F3
    rst $28
    xor $5F
    or c
    ld l, a
    cp a
    ld a, a
    xor a
    ld [hl], e
    ld a, e
    db $FD
    rst $08
    rst $38
    or a
    rst $18
    or h
    rst $18
    ret


    cp $FA
    db $FD
    push bc
    cp a
    ld [hl-], a
    rst $38
    ld a, e
    cp a
    rst $30
    ei
    jp hl


    rst $30
    dec a
    rst $30
    sub l
    ld a, a
    db $D3
    rst $38
    rst $18
    rst $38
    dec [hl]
    ei
    push hl
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_52BC:
    nop
    nop

jr_01B_52BE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $C0
    set 0, h
    ret


    add $90
    adc a
    sub b
    adc a
    ld [de], a
    dec c
    jr nc, @+$11

    ld [hl+], a
    dec e
    ld h, b
    rra
    jr nc, jr_01B_5303

    add hl, bc
    ld b, $87
    nop
    ld h, d
    add b
    jr nc, jr_01B_52BC

    jr c, jr_01B_52BE

    sbc h
    ld h, b
    adc h
    nop
    add h

jr_01B_5303:
    ld [$009C], sp
    add hl, de
    nop
    add hl, hl
    db $10
    ld a, [hl+]
    ld de, $2152
    jp nc, Jump_01B_4F21

    rrca
    ld h, a
    rlca
    and e
    ld b, e
    inc hl
    jp $8343


    ld d, e
    add e
    inc de
    add e
    or e
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
    pop af
    nop
    ret nz

    nop
    add a
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
    rlca
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
    ldh [rP1], a
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
    rst $38
    nop
    rrca
    nop
    nop
    nop
    ld a, a
    nop
    cp a
    nop
    sbc a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    ld h, a
    nop
    rst $20
    nop
    adc a
    rst $38
    ld a, a
    ld a, a
    db $FC
    rst $38
    sbc c
    cp $AB
    rst $18
    xor e
    rst $18
    sbc h
    rst $38
    rst $38
    rst $38
    jp c, $E5FD

    ei
    ccf
    rst $38
    sbc c
    ld a, a
    ld d, [hl]
    cp l
    or [hl]
    db $DD
    ld a, c
    cp a
    rst $38
    rst $38
    call z, $FEF3
    rst $38
    db $FC
    rst $38
    adc h
    rst $38
    ld [hl], h
    adc a
    ld l, [hl]
    rst $30
    ld [hl], a
    ei
    adc e
    rst $30
    rst $38
    db $FD
    dec b
    rst $38
    di
    rrca
    ld l, e
    rst $30
    di
    rst $38
    ld [hl], a
    adc a
    rrca
    rst $38
    rst $38
    rst $38
    ld e, e
    cp a
    and a
    rst $18
    db $FC
    rst $38
    sbc c
    cp $6A
    cp l
    ld l, l
    cp e
    sbc [hl]
    db $FD
    rst $38
    rst $38
    pop af
    rst $38
    cp $FE
    ccf
    rst $38
    sbc c
    ld a, a
    push de
    ei
    push de
    ei
    add hl, sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    add hl, de
    ld e, d
    ld hl, $0374
    ld h, h
    inc bc
    ld l, b
    rlca
    jr z, jr_01B_54F3

    ld [$0807], sp
    rlca
    cp b
    ld b, b
    ld sp, hl

jr_01B_54F3:
    nop
    ld [hl], c
    add b
    ld [hl], d
    add c
    ld [hl], c
    add b
    ld h, b
    add b
    ld [$E404], a
    ld [$41B2], sp
    inc de
    ldh [$39], a
    ret nz

    ld a, l
    add b
    ldh [rP1], a
    call z, $1600
    ld [$16E9], sp
    xor e
    inc de
    ld sp, hl
    ld bc, $00BC
    cp $00
    jp nz, $0800

    db $10
    ld [hl], h
    ld [$013D], sp
    add a
    nop
    ret nz

    nop
    pop af
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
    rlca
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
    ldh [rP1], a
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
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    ld h, a
    nop
    rst $20
    nop
    rst $38
    rst $38
    ld l, l
    ld [hl], e
    ld d, [hl]
    ld a, c
    ld e, d
    ld a, l
    ld hl, $1F3F
    rra
    ld [hl+], a
    ccf
    ld e, l
    ld h, e
    rst $38
    rst $38
    set 6, a
    or l
    ei
    cp a
    ld sp, hl
    sbc l
    ei
    db $E3
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    adc $FF
    cp [hl]
    rst $18
    sbc $BF
    xor a
    rst $18
    sbc l
    db $E3
    jp $33FF


    rst $08
    adc l
    ld [hl], e
    halt
    ld sp, hl
    cp d
    db $FD
    ld e, d
    db $FD
    scf
    ld sp, hl
    cp l
    jp $FFC7


    rst $38
    rst $38
    db $D3
    rst $28
    xor l
    rst $18
    db $FD
    sbc a
    cp c
    rst $18
    rst $00
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    or [hl]
    adc $6A
    sbc [hl]
    ld e, d
    cp [hl]
    add h
    db $FC
    ld hl, sp-$08
    ld b, h
    db $FC
    cp d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc [hl]
    add hl, de
    ld b, $8F
    add b
    add a
    add b
    ret nz

    ret nz

    and b
    and b
    ret nc

    ret nc

    rst $38
    rst $38
    ret


    nop
    jp nz, $8501

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    add b
    add b
    db $10
    db $10
    adc c
    adc c
    ld d, b
    adc a
    and b
    rra
    ld b, e
    inc a
    ld b, a
    jr c, jr_01B_5788

    nop
    jr c, jr_01B_570C

jr_01B_570C:
    ld bc, $FF01
    rst $38
    add b
    nop
    ld [hl], c
    add c
    cp c
    ld b, c
    db $E3
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld c, e
    ld c, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    add c
    nop
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

jr_01B_5788:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld a, l
    ld e, [hl]
    ld a, l
    ld b, [hl]
    ld a, c
    dec l
    inc sp
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    jp hl


    rst $38
    jp hl


    rst $38
    di
    rst $38
    ld a, a
    rst $08
    cp a
    rst $20
    cp a
    rst $30
    rst $08
    rst $38
    ld [hl], e
    ld [hl], e
    db $FC
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    xor l
    sbc $FE
    rst $08
    xor a
    rst $18
    ld d, e
    or e
    ldh [$E0], a
    ld a, a
    cp a
    cp a
    rst $18
    rst $38
    rst $18
    db $D3
    ccf
    dec l
    ei
    db $ED
    ei
    sub e
    sbc a
    inc c
    inc c
    sub a
    rst $38
    sub a
    rst $38
    rst $08
    rst $38
    cp $F3
    db $FD
    rst $20
    db $FD
    rst $28
    di
    rst $38
    adc $CE
    ld e, d
    cp [hl]
    ld a, d
    cp [hl]
    ld h, d
    sbc [hl]
    or h
    call z, $3838
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FE
    sbc [hl]
    sbc [hl]
    xor h
    adc h
    and l
    add h
    and c
    add b
    inc sp
    nop
    add a
    add a
    inc bc
    inc bc
    ld sp, $7001
    nop
    and h
    ld b, b
    ld l, [hl]
    add b
    ld d, d
    adc h
    and d
    ld e, h
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    add e
    add b
    pop af
    ldh a, [$F9]
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    and $00
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    ld bc, $00C0
    ret nz

    nop

jr_01B_59A6:
    db $E4
    nop
    ldh [rP1], a
    sub $00
    db $DB
    nop
    ret z

    nop
    nop
    ldh [$E0], a
    dec e
    jr jr_01B_59B9

    inc bc
    nop
    nop

jr_01B_59B9:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr nc, jr_01B_5A02

    inc c
    di
    nop
    rst $38
    ldh [$1F], a
    inc sp
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
    rlca
    nop
    rst $38
    ld h, b
    sub b
    sbc h
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    cp b
    jr jr_01B_59A6

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5900
    add b
    inc bc
    nop
    inc bc
    nop
    daa
    nop
    rlca
    nop
    ld l, e
    nop
    db $DB
    nop
    inc de
    nop
    nop
    nop

jr_01B_5A02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ldh a, [$0C]
    ldh [rIF], a
    ldh [rNR22], a
    ldh a, [$0B]
    ld hl, sp+$04
    db $FC
    inc bc
    rst $38
    nop
    rrca
    jr nc, @+$09

    ret c

    inc bc
    ld l, h
    ld bc, $00BE
    ld a, [$3500]
    dec b
    adc $CF
    nop
    ldh a, [$0C]
    ldh [rNR31], a
    ret nz

    ld [hl], $80
    ld a, l
    nop
    ld e, a
    nop
    xor h
    and b
    ld [hl], e
    di
    nop
    ccf
    ret nz

    rrca
    jr nc, @+$09

    ldh a, [rTAC]
    add sp, $0F
    ret nc

    rra
    jr nz, jr_01B_5B1D

    ret nz

    rst $38
    ld a, [c]
    ldh a, [$E6]
    ldh [$C5], a
    jp nz, $C3C4

    jp nz, $CAC1

    pop bc
    ret z

    pop bc
    call $31C0
    nop
    ld hl, $3910
    nop
    sbc b
    nop
    sub h
    ld [$8854], sp
    ld c, d
    add h
    ld c, e
    add h
    ld b, $F8
    inc c
    ldh a, [$90]
    ld h, b
    pop hl
    nop
    ld b, [hl]
    ld bc, $030C
    inc e
    inc bc
    add hl, sp
    ld b, $63
    inc bc
    db $D3
    inc hl
    sub e
    ld h, e
    add hl, bc
    pop af
    add hl, bc
    pop af
    ld c, b
    or b
    inc c

jr_01B_5B1D:
    ldh a, [rLY]
    cp b
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
    ldh a, [rP1]
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
    rlca
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
    rst $38
    nop
    ldh [rP1], a
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
    adc a
    nop
    inc bc
    nop
    pop hl
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
    di
    nop
    add c
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $E4
    nop
    ld hl, sp+$00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_01B_5BB2

jr_01B_5BB2:
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    sub b
    nop
    ldh [rP1], a
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
    ld [bc], a
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
    nop
    nop
    ret nz

    nop
    inc b
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld b, $00
    add hl, bc
    nop
    rlca
    nop
    ld a, a
    nop
    daa
    nop
    rra
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ldh a, [$0C]
    ldh [rIF], a
    ldh [rNR22], a
    ldh a, [$0B]
    ld hl, sp+$04
    db $FC
    inc bc
    rst $38
    nop
    rrca
    jr nc, @+$09

    ret c

    inc bc
    ld l, h
    ld bc, $00BE
    ld a, [$3500]
    dec b
    adc $CF
    nop
    ldh a, [$0C]
    ldh [rNR31], a
    ret nz

    ld [hl], $80
    ld a, l
    nop
    ld e, a
    nop
    xor h
    and b
    ld [hl], e
    di
    nop
    ccf
    ret nz

    rrca
    jr nc, @+$09

    ldh a, [rTAC]
    add sp, $0F
    ret nc

    rra
    jr nz, jr_01B_5D1D

    ret nz

    rst $38
    push de
    ret z

    sbc a
    add b
    dec a
    nop
    ld a, a
    nop
    ld b, e
    nop
    db $10
    ld [$102E], sp
    cp h
    add b
    ld c, l
    add d
    ret z

    rlca
    sbc h
    inc bc
    cp [hl]
    ld bc, $0007
    inc sp
    nop
    ld l, b
    db $10
    sub a
    ld l, b
    dec e
    ld [bc], a
    sbc a
    nop
    adc [hl]
    ld bc, $814E
    adc [hl]
    ld bc, $0106
    ld d, a
    jr nz, jr_01B_5D36

    db $10
    ld h, [hl]
    sbc b
    ld e, d
    add h
    ld l, $C0
    ld h, $C0
    ld d, $E0
    inc d
    ldh [rNR10], a

jr_01B_5D1D:
    ldh [rNR10], a
    ldh [rP1], a
    nop
    ldh a, [rP1]
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
    rlca
    nop

jr_01B_5D36:
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
    ldh [rP1], a
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
    pop hl
    nop
    inc bc
    nop
    adc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    nop
    add c
    nop
    jp $8100


    nop
    nop
    nop
    ld h, a
    nop
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $01
    dec c
    inc bc
    ld a, [de]
    rlca
    rlca
    nop
    jr @+$09

    ld l, a
    rra
    cp e
    ld a, a
    ld a, h
    rst $38
    add sp, -$01
    ret nc

    rst $38
    add b
    rst $38
    rst $38
    nop
    ld d, a
    rst $38

jr_01B_5DC4:
    rst $38
    rst $38
    ld d, l
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
    ld [$FFFF], a
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rP1], a
    jr jr_01B_5DC4

    or $F8
    db $DD
    cp $3E
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    ld bc, $00FF
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    add b
    or b
    ret nz

    ld e, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8E00
    add c
    sbc l
    add d
    rst $00
    ret nz

    ret nz

    ret nz

    ldh [$E0], a
    jp nc, $FFD2

    rst $38
    ld a, [bc]
    pop af
    dec b
    ld hl, sp-$3E
    inc a
    ld [c], a
    inc e
    cp $00
    inc e
    nop
    add b
    add b
    rst $38
    rst $38
    sub e
    nop
    ld b, e
    add b
    and c
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld bc, $0801
    ld [$9191], sp
    adc c
    ld [hl], c
    sbc b
    ld h, b
    pop af
    ld bc, $01E1
    inc bc
    inc bc
    dec b
    dec b
    dec bc
    dec bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    rrca
    ld a, [hl+]
    rra
    ld l, l
    rra
    ld e, d
    ccf
    call c, $B83F
    ld a, a
    or h
    ld a, a
    xor b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $EC
    ldh a, [rHDMA4]
    ld hl, sp-$4A
    ld hl, sp+$5A
    db $FC
    dec sp
    db $FC
    dec e
    cp $2D
    cp $15
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$101F], sp
    rra
    nop
    rra
    nop
    ccf
    ld hl, $0000
    inc bc
    ld [bc], a
    ld a, a
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $30
    cp [hl]
    ld sp, hl
    rrca
    rst $38
    pop af
    nop
    nop
    cp $02
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ccf
    rst $38
    inc bc
    rst $38
    db $FC
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $FC
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    inc bc
    nop
    nop
    ret nz

    ld b, b
    cp $02
    rst $38
    ld b, b
    rst $38
    nop
    rst $28
    ld a, l
    sbc a
    ldh a, [rIE]
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld [hl], b
    or b
    sbc c
    add hl, de
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    jr z, jr_01B_61D2

    ld h, b
    jp nz, $80C0

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$7F]
    xor b
    ld a, a
    db $F4
    ld a, a
    cp b
    ld a, a
    db $F4
    ld a, a
    xor b
    ld a, a
    ldh a, [$7F]
    cp b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_61D2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $15
    cp $2F
    cp $1D
    cp $2F
    cp $15
    cp $0F
    cp $1D
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $FC
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
    ld a, $07
    jr c, jr_01B_62F3

    ld [hl], b
    ld e, a
    pop hl
    cp a
    rst $08
    ld a, [hl]
    cp a
    ld [hl], c
    db $FC
    ld b, a
    ld hl, sp+$0F
    rlca
    cp $3F

jr_01B_62F3:
    db $FC
    rst $38
    pop bc
    rst $28
    ccf
    rst $18
    ld hl, sp+$3F
    rst $20
    ld a, b
    rst $18
    ld [hl], a
    rst $18
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    inc c
    rst $38
    ld [hl], c
    sbc $E3
    dec a
    rst $20
    ei
    adc $FF
    nop
    rst $38
    ld [$03FF], sp
    rst $38
    jr nc, @+$01

    adc [hl]
    ld a, e
    rst $00
    cp h
    rst $20
    rst $18
    ld [hl], e
    ldh [$7F], a
    db $FC
    ccf
    rst $38
    add e
    rst $30
    db $FC
    ei
    rra
    db $FC
    rst $20
    ld e, $FB
    xor $FB
    ld a, h
    ldh [rNR32], a
    ldh a, [$0E]
    ld a, [$FD87]
    di
    ld a, [hl]
    db $FD
    adc [hl]
    ccf
    ld [c], a
    rra
    ldh a, [$0B]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld c, $0B
    ld l, l
    ld a, e
    or l
    sbc e
    dec de
    rrca
    dec c
    dec c
    nop
    nop
    jr nc, jr_01B_63CA

    ld a, b
    call z, $84C4
    add b
    nop
    add b
    nop
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
    ld [bc], a
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    ld d, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    ld l, b
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
    db $F4
    ld a, a
    cp b
    ld a, a
    db $F4
    ld a, a
    cp h
    ld a, a
    ld a, [$BC7F]
    ld a, a
    ld a, [$BC7F]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_63CA:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    cp $1D
    cp $2F
    cp $3D
    cp $5F
    cp $3D
    cp $5F
    cp $3D
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$9F]
    ld a, c
    ld e, a
    ccf
    rrca
    ccf
    nop
    ccf
    inc hl
    ld a, $27
    dec a
    cpl
    add hl, sp
    rra
    rst $38
    cp b
    cp $83
    ldh a, [$3F]
    pop bc
    ld a, a
    add e
    cp $87
    db $FC
    rlca
    ld sp, hl
    ld c, $FB
    rst $38

Jump_01B_6501:
    dec c
    ld a, a
    ret


    rst $38
    set 7, l
    rlca
    ld a, [$BA6F]
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $18
    rst $38
    or b
    cp $93
    ld a, a
    db $D3
    ccf
    ldh [$1F], a
    or $1D
    rst $30
    inc c
    rst $30
    inc c
    ei
    rst $38
    dec e
    ld a, a
    pop bc
    rrca
    db $FC
    add e
    cp $C1
    ld a, a
    pop hl
    ccf
    ldh [$9F], a
    ld [hl], b
    rst $18
    rrca
    ld sp, hl
    sbc [hl]
    ld a, [$F0FC]
    db $FC
    nop
    db $FC
    call nz, $E47C
    cp h
    db $F4
    sbc h
    ld hl, sp+$00
    nop
    nop
    nop
    inc d
    ld a, $06
    ld b, e
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
    ld b, $0E
    dec c
    sbc c
    sbc b
    sub b
    sub b
    ret nc

    ret nc

    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $FF
    dec bc
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    ccf
    ld a, a
    cp [hl]
    ccf
    sbc a
    ccf
    sbc a
    ccf
    ld c, a
    rra
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld c, b
    rst $38
    ldh a, [rIE]
    xor d
    rst $38
    ld d, l
    rst $38
    cp $FF
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
    ld b, b
    rst $38
    sub h
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
    ld [bc], a
    rst $38
    xor c
    rst $38
    ld bc, $00FF
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    cp $FC
    cp $BC
    cp $FC
    cp $7D
    db $FC
    ld sp, hl
    db $FC
    ld sp, hl
    db $FC
    ld a, [c]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
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
    rst $38
    nop
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
    rst $38
    nop
    cp $00
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld sp, $311F
    rra
    inc sp
    rra
    scf
    rra
    ccf
    jr jr_01B_672A

    daa
    nop

jr_01B_66ED:
    nop
    nop
    nop
    inc e

jr_01B_66F1:
    di
    inc e
    rst $30
    jr jr_01B_66ED

    jr c, @+$01

    cp c
    rst $28
    ei
    ld l, a
    rst $38
    sub [hl]
    rrca
    add hl, bc
    ld [hl], b
    rst $18
    ld [hl], d
    rst $18
    ld [hl], b
    rst $08
    ld hl, sp-$71
    ld hl, sp-$71
    db $FC
    rlca
    rst $38
    ld b, e
    ccf
    jr nz, @+$10

    ei
    ld c, $FB
    ld c, $F3
    rra
    pop af
    rra
    pop af
    ccf
    ldh [rIE], a
    jp nz, $04FC

    jr c, jr_01B_66F1

    jr c, @-$0F

    jr @-$0F

    inc e
    rst $38
    sbc l
    rst $30

jr_01B_672A:
    rst $18
    or $FF
    ld l, c
    ldh a, [$90]
    adc h
    ld hl, sp-$74
    ld hl, sp-$34
    ld hl, sp-$14

jr_01B_6737:
    ld hl, sp-$04
    jr jr_01B_6737

    db $E4
    nop
    nop
    nop
    nop
    inc c
    ld e, $1E
    inc sp
    inc hl
    ld hl, $0001
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    ret nc

    ld d, b
    ret nc

    ld d, b
    ld [hl], b
    ret nc

    or [hl]
    sbc $AD
    reti


    ret c

    ldh a, [$B0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    rrca
    and e
    rlca
    sub c
    inc bc
    ret z

    ld bc, $00E2
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    db $EB
    rst $38
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rrca
    rra
    ld hl, $0003
    nop
    ld l, d
    rst $38
    or l
    rst $38
    ld [$B5FF], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld d, [hl]
    rst $38
    xor l
    rst $38
    rst $10
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    cp $D7
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FC
    cp $F0
    ld hl, sp-$7C
    ret nz

    nop
    nop
    and $F0
    push bc
    ldh [$89], a
    ret nz

    inc de
    add b
    ld b, a
    nop
    sbc a
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0708
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01B_6919

    rrca
    ldh a, [$3F]
    adc $7F
    cp a
    nop
    rlca
    ld [$1007], sp
    rrca
    ld b, b
    ccf
    ld [bc], a
    db $FD
    rra
    ldh [$9F], a
    ld l, a
    adc a
    ld [hl], e
    nop
    cp $00
    cp $00
    cp $02
    db $FC
    and b

jr_01B_6919:
    ld e, h
    ld b, h
    cp b
    ldh [rNR23], a
    ret z

    jr nc, jr_01B_69A0

    ld b, a
    rst $38
    sbc b
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    inc bc
    ldh a, [$1F]
    ld h, a
    ccf
    ld c, [hl]
    dec sp
    db $FC
    inc b
    cp $72
    cp $00
    cp $00
    rst $38
    sbc l
    rst $38
    add $3F
    ldh a, [rIF]
    ld hl, sp+$3F
    jr nz, jr_01B_69C2

    ld c, [hl]
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    cp c
    rst $38
    ld h, e
    db $FC
    rrca
    ldh a, [$1F]
    cp $E2
    rst $38
    add hl, de
    rst $38
    inc a
    rst $38
    ld c, $FF
    ret nz

    rrca
    ld hl, sp-$1A
    db $FC
    ld [hl], d
    call c, RST_00
    jr nz, jr_01B_6983

    sbc $01
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
    ld h, b
    add b
    ccf
    ld b, b
    nop
    ld a, h
    ret c

    nop
    jr nc, jr_01B_697E

jr_01B_697E:
    rrca
    nop
    ret nz

    ret nz

    cp a

jr_01B_6983:
    add b
    ld a, a
    nop
    ld d, l
    ld a, [hl+]
    ld l, d
    dec d
    ld d, b
    cpl
    ld h, b
    rra
    ld b, b
    ccf
    inc bc
    inc bc
    db $FD
    ld bc, $00FE
    ld d, [hl]
    xor b
    xor d
    ld d, h
    ld d, $E8
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC

jr_01B_69A0:
    call nz, $C200
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    or b
    nop
    ldh a, [rP1]
    ret z

    nop
    adc b
    ld b, a
    inc b
    inc sp
    add d
    add hl, de
    db $10
    inc c
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_01B_69C2:
    nop
    rst $38
    nop
    rst $38
    xor h
    ld d, e
    nop
    jr c, jr_01B_69CE

    inc c
    nop
    inc bc

jr_01B_69CE:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    inc c
    add c
    ld a, [hl]
    nop
    ldh [rP1], a
    nop
    ld de, $20E2
    call z, $9841
    ld [$A030], sp
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    ld b, e
    nop
    add a
    nop
    rlca
    nop
    rlca
    nop
    dec c
    nop
    rrca
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rla
    ld a, [bc]
    rlca
    dec de
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    inc de
    rlca
    jr jr_01B_6B70

    sub l
    ccf
    ret nz

    add l
    ld a, d
    ret nz

    ccf
    ld [c], a
    sbc h
    call nz, $88B8
    ld [hl], b
    nop
    ldh a, [$87]
    ld a, b
    add b
    ld a, a
    nop
    rst $38
    inc b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh [rLCDC], a
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
    rst $38
    halt
    rst $38
    ld c, l
    rst $30
    dec de
    ld l, a
    dec sp
    ld c, a
    add hl, sp
    rst $18
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $00
    db $FD
    db $E3
    cp [hl]
    ld [hl], e
    sbc $73
    sbc $7B
    adc $BF
    call $82FE
    ld hl, sp+$00
    db $E3
    cp a
    rst $00
    ld a, l
    adc $7B
    adc $7B
    sbc $73
    db $FD
    or e
    ld a, a
    ld b, c
    rra
    nop
    rst $38
    ld l, [hl]
    rst $38
    or d
    rst $28
    ret c

    or $DC
    ld a, [c]
    sbc h
    ei
    ld c, $FF
    ld b, $FF
    add hl, bc
    ld hl, sp+$00
    rlca
    nop
    ldh a, [rP1]
    ld c, $00
    inc bc
    nop
    rlca
    nop
    nop
    rra
    nop
    nop

jr_01B_6B70:
    nop
    nop
    inc e
    nop
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rrca
    add b
    nop
    ret nz

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    db $E4
    nop
    ld hl, sp+$00
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
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $FC
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
    nop
    nop
    daa
    nop
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
    ld c, $00
    or c
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    daa
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    dec b
    ld a, [hl-]
    ld [hl+], a
    dec e
    rlca
    jr jr_01B_6D02

    inc c
    nop
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [rSC]
    db $FC
    ld b, b
    cp a
    ld hl, sp+$07
    ld sp, hl
    or $F1
    adc $00
    nop

jr_01B_6D02:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld hl, sp-$10
    rrca
    db $FC
    ld [hl], e
    cp $FD
    nop
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
    ld b, b
    add b
    db $10
    ldh [rIF], a

jr_01B_6D21:
    rla
    rrca
    inc d
    ld b, $19
    nop
    rra
    inc de
    inc c
    rlca
    ld a, [bc]
    dec bc
    dec b
    dec b
    ld [bc], a
    ldh [rNR10], a
    ret nz

    jr nc, jr_01B_6D35

jr_01B_6D35:
    ldh a, [$C0]
    jr nc, jr_01B_6D21

    ld d, b
    ldh a, [$A8]
    db $F4
    add sp, -$08
    db $F4
    rlca
    ld [$0C03], sp
    nop
    rrca
    inc bc
    inc c
    rla
    ld a, [bc]
    rrca
    dec d
    cpl
    rla
    rra
    cpl
    ldh a, [$E8]
    ldh a, [$28]
    ld h, b
    sbc b
    nop
    ld hl, sp-$38
    jr nc, @-$1E

jr_01B_6D5B:
    ld d, b
    ret nc

    and b
    and b
    ld b, b
    nop
    rrca
    ld bc, $000E
    rrca
    inc bc
    inc c
    rla
    ld a, [bc]
    rrca
    dec d
    cpl
    rla
    rra
    cpl
    nop
    ld hl, sp-$40
    jr c, jr_01B_6D95

    ret c

    nop
    ld hl, sp-$38
    jr nc, jr_01B_6D5B

    ld d, b
    ret nc

    and b
    and b
    ld b, b
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a

jr_01B_6D95:
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ret nz

    ret nz

    xor b
    sub a
    ld d, b
    cpl
    ld h, b
    rra
    ld d, b
    cpl
    ld h, b
    rra
    ld d, b
    cpl
    ld l, b
    rla
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    inc bc
    inc bc
    dec d
    jp hl


    ld a, [bc]
    db $F4
    ld b, $F8
    ld a, [bc]
    db $F4
    ld b, $F8
    ld a, [bc]
    db $F4
    ld d, $E8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0207], sp
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
    pop hl
    ld e, $01
    cp $00
    rst $38
    jr nz, @+$21

    nop
    nop
    nop

jr_01B_6EFB:
    nop
    nop
    nop
    nop
    nop
    cp $A9
    db $FC
    inc bc
    and c
    ld e, [hl]
    inc bc
    db $FC
    ld b, a
    add hl, sp
    inc hl
    dec e
    ld de, $000E
    rrca
    ret nz

    jr nc, jr_01B_6EFB

    ld d, b
    ldh [$D8], a
    ldh a, [$E8]
    ldh a, [$E8]
    ldh a, [$E8]
    ldh a, [$C8]
    ldh [rNR23], a
    nop
    inc bc
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    rlca
    add hl, bc
    ld b, $03
    dec c
    rla
    dec bc
    rlca
    dec de
    ld hl, sp+$74
    ld [hl], b
    adc h
    nop
    db $FC
    ld h, b
    sbc h
    db $F4
    ld l, b
    add sp, -$30
    add sp, -$30
    add sp, -$30
    rra
    ld l, $0E
    ld sp, $3F00
    add $39
    rst $28
    ld d, $F7
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    nop
    ret nz

    nop
    ret nz

    or b
    ld b, b
    rra
    ldh [$9F], a
    ld h, b
    rst $08
    or b
    rst $28
    ret nc

    rst $20
    ret c

    rra
    ld l, $0E
    ld sp, $3F00
    ld b, $39
    cpl
    ld d, $17
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    nop
    ret nz

    nop
    ret nz

    and b
    ld b, b
    nop
    ldh [$90], a
    ld h, b
    ret nz

    or b
    ldh [$D0], a
    add sp, -$30
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld d, h
    dec hl
    jr z, jr_01B_6FBB

    nop
    nop
    dec d
    nop
    dec bc
    nop
    rla
    nop
    adc e
    add b
    ret nz

    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01B_6FBB:
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    ld a, [hl+]
    call nc, $E814
    nop
    nop
    xor b
    nop
    ret nc

    nop
    add sp, $00
    pop de
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    add hl, de
    jp $C03C


    ccf
    add e
    ld a, h
    rlca
    ld sp, hl
    add a
    ld a, e
    rrca
    rst $30
    adc a
    ld [hl], e
    rst $20
    sbc b
    jp $033C


    db $FC
    pop bc
    ld a, $E0
    sbc a
    pop hl
    sbc $F0
    rst $28
    pop af
    adc $07
    add hl, de
    inc bc
    inc a
    ld b, b
    ccf
    add e
    ld a, h
    rlca
    ld sp, hl
    add a
    ld a, e
    rrca
    rst $30
    adc a
    ld [hl], e
    ldh [$98], a
    ret nz

    inc a
    ld [bc], a
    db $FC
    pop bc
    ld a, $E0
    sbc a
    pop hl

jr_01B_711B:
    sbc $F0
    rst $28
    pop af
    adc $07
    ld [$0C03], sp
    nop
    rrca
    inc bc
    inc c
    rla
    ld a, [bc]
    rrca
    dec d
    cpl
    rla
    rra
    cpl
    ldh a, [$E8]
    ldh a, [$28]
    ld h, b
    sbc b
    nop
    ld hl, sp-$38
    jr nc, jr_01B_711B

    ld d, b
    ret nc

    and b
    and b
    ld b, b
    rrca

jr_01B_7141:
    rla
    rrca
    inc d
    ld b, $19
    nop
    rra
    inc de
    inc c
    rlca
    ld a, [bc]
    dec bc
    dec b
    dec b
    ld [bc], a
    ldh [rNR10], a
    ret nz

    jr nc, jr_01B_7155

jr_01B_7155:
    ldh a, [$C0]
    jr nc, jr_01B_7141

    ld d, b
    ldh a, [$A8]
    db $F4
    add sp, -$08
    db $F4
    rlca
    ld [$0C03], sp
    nop
    rrca
    inc bc
    inc c
    rla
    ld a, [bc]
    rrca
    dec d
    cpl
    rla
    rra
    cpl
    ldh a, [$E8]
    ldh a, [$28]
    ld h, b
    sbc b
    nop
    ld hl, sp-$38
    jr nc, @-$1E

    ld d, b
    ret nc

    and b
    and b
    ld b, b
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ldh a, [$F0]
    ldh a, [$F0]
    ld a, [c]
    ldh a, [$F1]
    ldh a, [$F3]
    ldh a, [$F4]
    ldh a, [$F3]
    db $F4
    db $F4
    di
    nop
    nop
    rrca
    rrca
    adc a
    rrca
    ld c, a
    rrca
    rst $08
    rrca
    cpl
    rrca
    rst $08
    cpl
    cpl
    rst $08
    nop
    nop
    ldh a, [$F0]
    ld a, [c]
    ldh a, [$F1]
    ldh a, [$F3]
    ldh a, [$F4]
    ldh a, [$F3]
    db $F4
    db $F4
    di
    nop
    nop
    rrca
    rrca
    adc a
    rrca
    ld c, a
    rrca
    rst $08
    rrca
    cpl
    rrca
    rst $08
    cpl
    cpl
    rst $08
    nop
    nop
    ldh a, [$F0]
    pop af
    ldh a, [$F2]
    ldh a, [$F3]
    ldh a, [$F4]
    ldh a, [$F3]
    db $F4
    db $F4
    di
    rrca
    rrca
    rrca
    rrca
    ld c, a
    rrca
    adc a
    rrca
    rst $08
    rrca
    cpl
    rrca
    rst $08
    cpl
    cpl
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    cp b
    sub b
    ld l, a
    db $EB
    inc d
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
    ld [c], a
    dec e
    add hl, bc
    or $D7
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, a
    cp b
    sub b
    ld l, a
    ld l, e
    inc d
    rrca

jr_01B_7307:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [c], a
    dec e
    add hl, bc
    or $D6
    jr z, jr_01B_7307

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
    ld l, $0E
    ld sp, $3F00
    ld b, $39
    cpl
    ld d, $17
    dec bc
    rla
    dec bc
    rla
    dec bc
    nop
    ret nz

    nop
    ret nz

    and b
    ld b, b
    nop
    ldh [$90], a
    ld h, b
    ret nz

    or b
    add sp, -$30
    ldh [$D8], a
    nop
    inc bc
    nop
    inc bc
    dec c
    ld [bc], a
    ld hl, sp+$07
    ld sp, hl
    ld b, $F3
    dec c
    rst $30
    dec bc
    rst $20
    dec de
    ld hl, sp+$74
    ld [hl], b
    adc h
    nop
    db $FC
    ld h, e
    sbc h
    rst $30
    ld l, b
    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    ret nc

    rra
    ld l, $0E
    ld sp, $3F00
    ld b, $39
    cpl
    ld d, $17
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    nop
    ret nz

    nop
    ret nz

    and b
    ld b, b
    nop
    ldh [$90], a
    ld h, b
    ret nz

    or b
    add sp, -$30
    ldh [$D8], a
    ld b, b
    ccf
    ld h, b
    rra
    ld d, b
    cpl
    ld l, d
    dec d
    ld d, l
    ld a, [hl+]
    ld a, a
    nop
    cp a
    add b
    ret nz

    ret nz

    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld b, $F8
    xor d
    ld d, h
    ld d, [hl]
    xor b
    cp $00
    db $FD
    ld bc, $0303
    inc e
    inc e
    dec sp
    dec sp
    inc a
    inc a
    ccf
    rra
    rra
    inc de
    rrca
    ld c, $00
    nop
    nop
    nop
    jr c, jr_01B_73EA

    call c, $3CDC
    inc a
    db $FC
    db $FC
    db $FC
    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    dec sp
    dec sp
    inc a
    inc a
    ccf
    rra
    rra
    inc de
    rrca
    ld c, $00
    nop
    nop
    nop
    jr c, jr_01B_740A

    call c, $3CDC
    inc a
    db $FC
    db $FC
    db $FC
    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    dec sp
    dec sp
    inc a
    inc a
    ccf
    rra
    rra
    inc de

jr_01B_73EA:
    rrca
    ld c, $00
    nop
    nop
    nop
    jr c, jr_01B_742A

    call c, $3CDC
    inc a
    db $FC
    db $FC
    db $FC
    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_740A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_742A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld b, $00
    ld bc, $0000
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
    inc c
    nop
    ret c

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
    ldh a, [rIF]
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    inc c
    ldh a, [$F0]
    ld c, $03
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
    jr nc, jr_01B_75EA

jr_01B_75EA:
    dec de
    nop
    nop
    nop
    nop
    nop
    cp $00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0E00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    inc b
    nop
    ld [$0107], sp
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    db $10
    inc c
    add b
    ld b, b
    jr c, jr_01B_77D0

jr_01B_77D0:
    nop
    ld hl, sp-$80
    ld a, [hl]
    nop
    ld bc, $E000
    nop
    ld [$0000], sp
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    jr nz, jr_01B_77F0

jr_01B_77F0:
    nop
    nop
    nop
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
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_79B5:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_79BB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    db $E3
    ld [de], a
    ret nz

    add hl, de
    ret nz

    ld h, $C9
    ld d, b
    adc a
    cp b
    rlca
    ld h, b
    rlca
    nop
    nop
    sub b
    rrca
    ld h, b
    rrca
    ld b, b
    adc a
    sub b
    rrca
    ld c, b
    add a
    inc d
    db $E3
    jp z, $0031

    nop
    add hl, bc
    ldh a, [rTMA]
    ldh a, [rSC]
    pop af
    add hl, bc
    ldh a, [rNR12]
    pop hl
    jr z, jr_01B_79B5

    ld d, e
    adc h
    nop
    nop
    jr nz, jr_01B_79BB

    ld c, b
    inc bc
    sbc b
    inc bc
    ld h, h
    sub e
    ld a, [bc]
    pop af
    dec e
    ldh [rTMA], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_7B62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, $02
    inc b
    ld [bc], a
    inc b
    or $00
    or $00
    ld a, [c]
    nop
    ld hl, sp+$00
    nop
    nop
    inc e
    ld bc, $0001
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    jr c, jr_01B_7B62

    add b
    nop
    nop
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add d
    ld h, b
    ld b, b
    jr nz, jr_01B_7C35

    jr nz, jr_01B_7C66

    nop
    ld l, a
    nop
    ld c, a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_7C35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01B_7C66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ldh [$C0], a
    rst $08
    add b
    sbc a
    adc a
    jr c, jr_01B_7DC1

    ld [hl], b
    cpl
    ld h, b
    ccf
    ld h, b
    ccf
    rst $38
    cp $07
    inc bc
    di
    ld bc, $F1F9
    inc e
    add sp, $0E
    db $F4
    ld b, $FC
    ld b, $FC
    add b

jr_01B_7DC1:
    nop
    ccf
    nop
    ld l, h
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld b, b
    nop
    jr nz, jr_01B_7DEF

    ld bc, $FC00
    nop
    ld [hl], $00
    ld e, $00
    sbc [hl]
    nop
    sbc $00
    ld [bc], a
    nop
    inc b
    ld hl, sp-$80
    nop
    jr nz, jr_01B_7E03

    ld b, b
    ccf
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    ld b, e
    nop
    ld a, c

jr_01B_7DEF:
    nop
    ld bc, $0400
    ld hl, sp+$02
    db $FC
    ld [bc], a
    db $FC
    db $FC
    nop
    nop
    nop
    jp nz, $9E00

    nop
    nop
    nop
    nop

jr_01B_7E03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01B_7EFF:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    cpl
    jr c, jr_01B_7FBB

    ld e, a
    ld c, a
    xor a
    and b
    ret nc

    sub b
    rst $28
    xor a
    ldh a, [$C0]
    rst $38
    ld a, a
    ld c, $F4
    inc e
    add sp, -$06
    ld a, [c]
    push af
    dec b
    dec bc
    add hl, bc
    rst $30

jr_01B_7FBB:
    push af
    rrca
    inc bc
    rst $38
    cp $40
    ccf
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, a
    ld e, a
    rra
    rra
    add b
    nop
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    db $FC
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [$F8FA]
    ld hl, sp+$01
    nop
    ld a, b
    nop
    ld l, h
    nop
    ccf
    nop
    ld b, b
    ld b, b
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rra
    rra
    add b
    nop
    ld e, $00
    ld [hl], $00
    db $FC
    nop
    ld [bc], a
    ld [bc], a
    ld a, [$FAFA]
    ld a, [$F8F8]
    db $01
    nop
