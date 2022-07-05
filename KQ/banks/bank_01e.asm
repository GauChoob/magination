; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $18
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $18
    cp a
    cp a
    rst $18
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    ei
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
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ei
    rst $30
    ei
    rst $38
    di
    rst $18
    di
    rst $30
    db $DB
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    rst $38
    rst $20
    rst $28
    rst $30
    db $EB
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    ld sp, hl
    rst $38
    rst $38
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
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    db $D3
    rst $38
    db $D3
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $E3
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01E_40C7:
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
    sbc a
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
    ld a, h
    rst $38
    inc a
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $18
    cp a
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    db $FD
    rst $38
    ld sp, hl
    push af
    ei
    rst $38
    di
    ei
    rst $30
    ei
    rst $30
    rst $38
    di
    rst $30
    ei
    ei
    rst $30
    rst $28
    rst $30
    rst $30
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $10
    rst $28
    rst $38

Jump_01E_413F:
    rst $20
    rst $30
    db $DB
    rst $28
    db $DB
    ei
    rst $08
    ei
    rst $08
    reti


    rst $28
    ld sp, hl
    rst $28
    push af
    rst $28
    db $FC
    rst $20
    db $EB
    rst $30
    ei
    rst $20
    rst $10
    rst $28
    rst $30
    rst $08
    rst $28
    rst $18
    xor a
    rst $18
    rst $38
    sbc a
    rst $18
    cp a
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    db $D3
    rst $38
    set 7, a
    set 7, a
    set 7, a
    ret


    rst $38
    jp hl


    rst $38
    push hl
    rst $38
    db $E4
    rst $38
    db $E3
    rst $38
    db $E3
    rst $38
    rst $00
    rst $38

jr_01E_41B6:
    rst $00
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $FF
    push af
    cp $F3
    cp $FA
    rst $38
    ld sp, hl
    rst $38
    cp h
    rst $38
    db $D3
    db $FC
    ld c, a
    or b
    rst $38
    ld [bc], a
    db $FD
    rlca
    push af
    rrca
    pop de
    ccf
    ld l, [hl]
    cp a
    inc bc
    rst $38
    cp $11
    rst $28
    jr c, jr_01E_41B6

    ld a, c
    cp $73
    adc d
    ld [hl], a
    db $F4
    rrca
    db $E4
    rra
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, c
    rst $38
    ld d, e
    rst $38
    ld l, a
    rst $18
    ld a, a
    rst $08
    or a
    rst $08
    rst $38
    rst $38
    cp $FF
    rst $38
    cp $FF
    cp $FD
    cp $FD
    cp $DD
    cp $DC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    cp a
    ld [hl], a
    db $FD
    ei
    rst $38
    ld sp, hl
    ei
    db $FD
    cp $FD
    cp $FD
    cp $FD
    cp $FD
    cp $FD
    rst $28
    rst $30
    db $EB
    rst $30
    rst $38
    di
    rst $30
    ei
    rst $30
    ei
    rst $30
    ei
    di
    rst $38
    di
    rst $38
    db $FC
    rst $20
    call nc, $FCEF
    rst $08
    xor h
    rst $18
    cp l
    rst $18
    cp c
    rst $18
    cp c
    rst $18
    xor c
    rst $18
    rst $18
    cp a
    rst $18
    cp a
    adc a
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    db $D3
    rst $38
    db $D3
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    db $FC
    rst $38
    call c, $DCFF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    scf
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    rst $20
    rst $38
    db $E3
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $E4
    rst $38
    call nz, $CCFF
    rst $38
    adc b
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    db $E3
    rst $38
    db $D3
    rst $38
    rst $30
    rst $38
    xor $F1
    rst $20
    ld hl, sp-$60
    rst $38
    db $E4
    rst $38
    ld [$F9FF], a
    rst $38
    db $EC
    rst $38
    ld c, c
    cp $48
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    rlca
    rst $38
    inc bc
    db $FC
    nop
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    ld h, a
    sbc a
    srl a
    inc de
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    ld d, a
    rst $38
    sub a
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc $FF
    sbc $FF
    cp $FF
    xor a
    ld [hl], a
    and a
    ld a, a
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $FD
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $28
    db $DB
    rst $28
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $E3
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc $FF
    sbc $FF
    cp $FF
    daa
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    db $E3
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    rst $38
    set 7, a
    set 7, a
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $D3
    rst $38
    db $D3
    rst $38
    di
    rst $38
    db $E3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, $E9FF

    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $83FF
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp z, $DAFF

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    db $FC
    or e
    cp $FD
    xor $FE
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rra
    ei
    ld c, a
    or a
    rst $28
    or a
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
    ld bc, $0101
    ld bc, $0000
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
    pop bc
    ld b, c
    pop hl
    ld hl, $93F3
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8301
    add d
    rst $00
    ld b, h
    rst $20
    inc h
    rst $38
    db $FD
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    rlca
    rlca
    ld a, h
    ld b, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, a
    ld a, a
    ld [hl], a
    ld a, h
    ld [hl], a
    ld e, a
    ld [hl], h
    ld a, h
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, [hl]
    jp nz, $FEC2

    jp nz, $C27E

    cp $7E
    ld a, [hl]
    rra
    rra
    rra
    db $10
    rra
    db $10
    ld a, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, a
    ld a, a
    ld a, a
    ld a, h
    db $FC
    db $FC
    db $FC
    inc b
    db $FC
    inc b
    inc b
    db $FC
    inc b
    db $FC
    inc b
    db $FC
    db $FC
    db $FC
    db $FC
    inc b
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    rra
    rla
    ld e, a
    ld d, h
    rst $38
    or d
    ei
    db $EC
    ld a, a
    ld h, b
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    db $E4
    db $E4
    cp $1A
    cp $4A
    db $FC
    and h
    db $FC
    or h
    nop
    nop
    nop
    nop
    nop
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
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_01E_452A

    ld c, b
    ld a, b
    jr nc, jr_01E_452E

    nop
    nop
    rst $38
    jp nz, $C2FF

    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    rra
    rst $38
    add hl, sp
    rst $38
    ld h, l
    rst $38
    push bc
    rst $38
    add c
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $38
    db $DD
    di
    ret nc

    rst $38
    ret z

    rst $38
    push af
    rst $38
    cp $FF

jr_01E_452A:
    cp $FF
    rst $38
    rst $38

jr_01E_452E:
    rst $38
    rst $38
    dec hl
    rst $38
    set 7, a
    dec bc
    rst $38
    rla
    rst $38
    adc e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    rra
    rla
    rra
    ld d, $1F
    ld [de], a
    rrca
    ld a, [bc]
    rra
    add hl, de
    rst $18
    cp h
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld de, $2EFB
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    jr z, @+$01

    ld c, c
    rst $18
    ld [hl], d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    add b
    add b
    ret nz

    ret nz

    and $E6
    rst $38
    ld a, c
    cp $52
    db $FC
    ld c, h
    ld hl, sp+$48
    db $FC
    add h
    ld a, h
    ld a, h
    inc e
    inc d
    inc e
    inc e
    rst $18
    rra
    nop
    nop
    inc c
    nop
    nop
    nop
    jr nc, jr_01E_4590

jr_01E_4590:
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, a
    ld a, l
    ld a, l
    ld b, l
    ld b, l
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld a, h
    ld a, h
    nop
    nop
    db $FC
    db $FC
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    db $FC
    db $FC
    nop
    nop
    add b
    nop

Jump_01E_45BC:
    jr nc, jr_01E_45BE

jr_01E_45BE:
    nop
    nop
    ld a, a
    ld d, c
    rst $38
    ret nc

    rst $38

Jump_01E_45C5:
    ret z

    ld l, e
    ld [hl], l
    ld d, e
    ld a, [hl]
    ld h, e
    ld e, [hl]
    ld [hl-], a
    dec l
    rra
    rra
    cp $2A
    ld a, a
    set 7, a
    dec bc
    cp $16
    or $8A
    adc h
    db $F4
    sbc b
    ld l, b
    ldh a, [$F0]
    ld [hl+], a
    ld a, $1C
    inc e
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    add b
    add b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld h, [hl]

Jump_01E_4627:
    ld h, l
    sub e
    di
    adc [hl]
    db $FD
    ld e, a
    ld a, e
    ld a, $27
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $DB
    rst $38
    set 7, a

Jump_01E_463B:
    jp $C3FF


    rst $38
    jp $171C


    ccf
    jr nc, jr_01E_46C4

    ld h, b
    rst $38
    and b
    ld a, a
    ld h, h
    ccf
    ld a, [hl+]
    cpl
    add hl, sp
    dec sp
    inc l
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    inc h
    rst $20
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    add h
    db $FD
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    sub b
    rst $38

jr_01E_466D:
    ld d, b
    rst $18
    jr nz, jr_01E_466D

    inc b
    cp $0A
    cp $12
    or $0E
    cp $02
    cp $22
    ld a, [$FA56]
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl+], a
    ld a, $22
    ld a, $22
    ld a, $3E
    ld a, $3E
    ld [hl+], a
    ld a, $3E
    rst $38
    add b
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $28
    cp a
    add sp, -$01
    add sp, -$01
    ld l, b
    ld e, a
    cp [hl]
    cp [hl]
    and d
    cp [hl]
    ld [c], a
    ld a, $22
    cp $BE
    cp $BE
    ld [c], a
    cp [hl]
    cp $E2
    ld [c], a
    nop
    nop
    nop
    nop

jr_01E_46C4:
    ld bc, $1C01
    inc e
    ld [hl+], a
    ld a, $1C
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1E

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
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $1C
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $ED
    rst $38
    add sp, -$01
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld h, $3B
    ld [hl], l
    ld a, [hl]
    sbc l
    rst $38
    and l
    rst $20
    db $FD
    rst $18
    halt
    ld l, e
    rra
    rra
    ld bc, $FF01
    jp $83FF


    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38

jr_01E_473B:
    rrca
    rst $38
    adc a
    rst $38
    rst $38
    inc d
    rra
    dec de
    rla
    inc c
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    jp z, $E91F

    dec c
    rst $30
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp-$19
    rra
    rra
    nop
    nop
    rst $38
    ld bc, $837C
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld sp, hl
    cp $FE
    nop
    nop
    call nc, $A43C
    ld a, h
    call z, $18F4
    add sp, -$10
    jr nc, jr_01E_473B

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3E
    nop
    nop
    inc c
    nop
    nop
    nop
    ld c, a
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ld a, a
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    rrca
    rrca
    and d
    and d
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    cp [hl]
    cp [hl]
    add b
    add b
    add [hl]
    add b
    or b
    add b
    add b
    add b
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    jr nc, jr_01E_47FA

    ld c, b
    ld a, b
    jr nc, jr_01E_47FE

    nop
    nop
    ldh [$E0], a
    db $10
    ldh a, [$E0]
    ldh [$0C], a
    inc c
    ld [de], a
    ld e, $0C
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01E_480C

    inc h
    inc a
    jr jr_01E_4810

    nop
    nop

jr_01E_47FA:
    nop
    nop
    nop
    nop

jr_01E_47FE:
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

jr_01E_480C:
    ldh a, [$F7]
    ret nz

    ret c

jr_01E_4810:
    rst $38
    rst $38
    cp $FE
    ret nz

    rst $18
    nop
    ld a, b
    ldh [$E4], a
    ld hl, sp-$06
    ldh a, [$F4]
    add b
    cp b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    call z, $ECFF
    rst $38
    or $FF
    db $10
    rst $38
    db $10
    rst $38
    ld [$88FF], sp
    rst $38
    adc b
    rst $38
    call c, $E2FF
    rst $38
    pop bc
    rrca
    rrca
    rra
    db $10
    dec a
    ld [hl+], a
    dec sp
    inc h
    ccf
    inc [hl]
    rra
    ld e, $23
    ccf
    ld l, $31
    ret nz

jr_01E_4851:
    ldh [$F8], a
    jr c, jr_01E_4851

    inc c
    db $FC
    inc b
    db $FC
    inc b
    ld hl, sp+$0C
    db $F4
    db $FC
    inc e
    db $E4
    rst $38
    rst $38
    cp $FE
    ld hl, sp-$05
    ldh [$EE], a
    ldh a, [$F4]
    ld hl, sp-$06
    db $FC
    db $FD
    ldh a, [$F6]
    add b
    add b
    ret nz

    call c, $FBF8
    cp $CE
    rst $38
    add a
    rst $38
    sub e
    rst $38
    ld c, a
    ldh a, [$37]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    and b
    ret nz

    ret nc

    add b
    and b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    db $FC
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    set 7, a
    db $DB
    rst $38
    sub e
    rst $38
    or e
    rst $38
    di
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    db $E3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    ld de, $11FF
    rst $38
    inc d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$88FF], sp
    rst $38
    adc h
    rst $38
    add c
    rst $38
    ld bc, $03FF
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$05
    ldh [$E4], a
    ldh [$EF], a
    cp $FE
    rst $38
    rst $38
    cp $FE
    ld hl, sp-$05
    add b
    cp h
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    rst $38
    cp $FF
    ei
    rst $38
    db $FD
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
    ld h, c
    rst $38
    jr nc, @+$01

    cp b
    rst $38
    ld hl, sp-$01
    db $FC
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp $5F
    ld h, b
    ld [hl], a
    ld c, b
    xor l
    jp nc, $B25D

    ccf
    ld a, [c]
    ld a, [hl]
    db $D3
    rst $38
    and a
    ld a, h
    ld a, a
    ld l, [hl]
    sub d
    or [hl]
    ld c, d
    cp a
    ld c, c
    rst $38
    ld c, l
    rst $38
    ld b, l
    cp $27
    ld a, [hl]
    sbc d
    db $E4
    cp $C0
    ret c

    add b
    and b
    add b
    sub b
    ldh [$EC], a
    ld hl, sp-$06
    db $FC
    db $FD
    cp $FE
    rst $38
    rst $38
    ret nz

    ld e, h
    ld hl, sp+$7A
    db $FC
    db $DD
    db $FC
    adc l
    ld hl, sp-$66
    ldh [$AC], a
    ret nz

    ld d, b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $28
    ccf
    cp a
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    ld e, a
    rst $38
    or $FF
    db $F4
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    or $FF
    call z, $D8FF
    rst $38
    or e
    rst $38
    and $FF
    db $EC
    rst $38
    db $DD
    rst $38
    rst $38
    rst $38
    ld [$18FF], sp
    rst $38
    ld a, b
    rst $38
    sbc b
    rst $38
    jr nc, @+$01

    ld h, e
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    ld h, [hl]
    rst $38
    or $FF
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add $FF
    ld b, [hl]
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    cp h
    ld hl, sp-$08
    db $FC
    cp l
    ld hl, sp-$66
    ldh [$AC], a
    ldh a, [$37]
    rst $38
    xor a
    rst $38
    ld hl, $0000
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

    add b
    cp b
    ld hl, sp-$06
    nop
    nop
    ld [hl], $36
    ld e, c
    ld l, a
    adc a
    rst $38
    db $DD
    cp e
    ld a, d
    ld [hl], a
    ld [hl], h
    ld e, a
    ld c, [hl]
    ld a, l
    ld bc, $E201
    db $E3
    or d
    db $D3
    rla
    rst $30
    sbc [hl]
    ld a, d
    xor $FA
    ld e, h
    db $F4
    db $F4
    cp h
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    ld h, b
    ld h, b
    or b
    ret nc

    ld hl, sp-$78
    ld hl, sp+$48
    ld hl, sp+$18
    ldh a, [$F0]
    db $10
    ld hl, sp-$01
    rst $20
    rst $38
    jp $C2FF


    rst $38
    jp nz, $C2FF

    rst $38
    ld [c], a
    rst $38
    pop af
    rst $38
    pop af
    ldh [$E8], a
    ldh a, [$F4]
    ld hl, sp-$05
    ldh a, [$B7]
    rst $38
    rra
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$0501], sp
    inc bc
    ld a, [$7E7F]
    ccf
    cp d
    rst $38
    ld a, [c]
    rst $38
    inc [hl]
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    add b
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    jr @+$09

    dec b
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    jr @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
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
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $83FF
    rst $38
    rst $38
    rst $38
    jp $87FF


    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $10
    rst $38
    ld hl, $33FF
    rst $38
    ld e, [hl]
    rst $38
    ld c, h
    rst $38
    ret c

    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$F7]
    ld hl, sp-$06
    ldh [$EC], a
    add b
    sub b
    nop
    ret nz

    nop
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld de, $11FF
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $08FF
    db $FC
    ld a, l
    ld hl, sp-$06
    add b
    cp h
    nop
    ld b, b
    add b
    cp b
    ldh a, [$74]
    db $FC
    inc e
    rst $38
    adc a
    daa
    dec sp
    ld e, $1E
    inc [hl]
    inc l
    inc hl
    ccf
    ld h, $3D
    rra
    rra
    nop
    nop
    nop
    nop
    sbc d
    xor $4A
    ld a, [hl]
    dec sp
    ccf
    add hl, bc
    rrca
    db $FC
    rst $38
    ld a, $FF
    add [hl]
    ei
    ld a, [hl]
    ld a, a
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    add hl, bc
    rrca
    dec bc
    inc b
    rrca
    nop
    ld bc, $0000
    nop
    nop
    add sp, -$68
    ld hl, sp-$78
    db $FC
    inc h
    cp $32
    db $EC
    cp [hl]
    ldh [$B0], a
    ld b, b
    ldh [rP1], a
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    cp $FF
    cp $FF
    rst $38
    rst $38
    nop
    rst $38
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
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
    rst $38
    nop
    ccf
    jr nz, @+$21

    db $10
    rrca
    inc c
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
    rst $38
    inc h
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    sub b
    ld a, a
    ld h, b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ccf
    rst $38
    ld [$09FF], sp
    rst $38
    add hl, bc
    rst $38
    ld [$04FF], sp
    rst $38
    rlca
    ld hl, sp+$08
    ldh a, [$F0]
    rst $38
    ld [$08FF], sp
    rst $38
    ld [$90FF], sp
    rst $38
    ldh a, [$BF]
    and b
    ccf
    jr nz, jr_01E_4BEE

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $18
    ldh [$E8], a
    ret nz

    pop de
    add b
    and b
    add b
    add b
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    rst $38
    rst $38
    add sp, -$01
    rst $38

jr_01E_4BEE:
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$05
    nop
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
    rst $38
    db $10
    rst $38
    ld hl, $F3FF
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc l
    rst $38
    cp a
    ld bc, $0301
    ld [bc], a
    ld b, $05
    dec c
    ld a, [bc]
    dec de
    inc c

jr_01E_4C1A:
    dec sp
    inc d
    ld [hl], a
    inc l
    rst $28
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    rst $20
    jr jr_01E_4C1A

    db $10
    xor $11
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$10EF], sp
    sbc a
    ld h, b
    rra
    ldh [$3F], a
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0103
    rlca
    ld [bc], a
    rlca
    inc b
    dec c
    rlca
    dec e
    dec bc
    ld a, e
    dec [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01FF
    rst $38
    ld [$00FF], sp
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    ld c, b
    rst $38
    ld [$08FF], sp
    rst $38
    db $10
    add b
    cp h
    ld hl, sp-$08
    db $FC
    cp l
    ld hl, sp-$66
    ldh [$AC], a
    ldh a, [$B7]
    rst $38
    xor a
    rst $38
    and c
    nop
    nop
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

    add b
    cp b
    ld hl, sp-$06
    nop
    nop
    add b
    and b
    ret nz

    ret c

    ldh a, [$B7]
    rst $38
    adc a
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    or b
    ldh [$E8], a
    ldh a, [$F4]
    add b
    cp [hl]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    db $FC
    rst $38
    cp $FF
    cp $FF
    sub b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    call c, $E2FF
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl

jr_01E_4CEC:
    rst $38
    db $FC
    rst $38
    cp $FF
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    rra
    rst $38
    sbc e

jr_01E_4CFC:
    rst $38
    ret z

    rst $38
    ld a, b
    inc bc
    ld bc, $060F
    inc a
    dec de
    ld a, e
    ld h, h
    rst $28
    ret nc

    rst $38
    sub b
    cp a
    ldh [rIE], a
    adc b
    rst $18
    xor b
    ccf
    ret nc

    rst $38
    nop
    rst $38
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
    cp $01
    cp $01
    db $FC
    inc bc
    pop af
    ld c, $E7
    jr jr_01E_4CFC

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $20
    jr jr_01E_4CEC

    ld d, b
    rst $38
    nop
    nop
    nop
    ld bc, $0700
    inc bc
    ld c, $05
    dec e
    ld a, [bc]
    dec sp
    inc [hl]
    ld h, a
    ld e, b
    rst $18
    and b
    rst $20
    ld e, d
    rst $18
    and d
    cp a
    ld b, h
    ld a, a
    adc c
    rst $38
    ld bc, $02FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$30FF], sp
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$04
    ld a, l
    ld hl, sp-$06
    add b
    cp h
    nop
    ld b, b
    add b
    cp b
    ldh a, [$74]
    db $FC
    inc e
    rst $38
    adc a
    cp $E2
    rst $38
    db $E3
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rP1]
    ld hl, sp-$10
    rst $30
    cp $0E
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    cp e
    ld bc, $FF75
    ld h, c
    rst $38
    or b
    rst $38
    ret c

    rst $38
    add sp, -$01
    db $F4
    rst $38
    db $F4
    rst $38
    or $FF
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
    rst $38
    rst $38
    ldh [$EF], a
    ret nz

    ret nc

    rst $38
    ld [$DCFF], sp
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
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
    rst $38
    rst $38
    rst $38
    db $FC
    db $FD
    ldh a, [$F6]
    ret nz

    ret c

    nop
    ld h, b
    add b
    or b
    ldh [$E0], a
    ret nz

    ret nz

    nop
    ld h, b
    nop
    add b
    nop
    nop
    nop
    nop
    cp $22
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01FF
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp-$10
    rst $30
    cp $0E
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    inc bc
    rst $38
    ld bc, $01FF
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$E0]
    add sp, -$40
    ret nc

    add b
    cp h
    ld hl, sp-$06
    rst $38
    add a
    rst $38
    ld b, [hl]
    rst $38
    db $E3
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
    rst $38
    ld [$9CFF], sp
    rst $38
    rst $38
    rst $38
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
    add b
    and b
    ret nz

    ret c

    ldh a, [$B7]
    rst $38
    adc a
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    or b
    ldh [$E8], a
    ldh a, [$F4]
    add b
    cp [hl]
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    ld de, $19FF
    rst $38
    ld [$8CFF], sp
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    rra
    rst $38
    sbc e
    rst $38
    ret z

    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld [$04FF], sp
    rst $38
    call nz, $E2FF
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld sp, $58FF
    rst $38
    call z, $EFFF
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    jr @+$01

    ld [$FCFF], sp
    rst $38
    db $F4
    rst $38
    or $FF
    ei
    rst $38
    ld bc, $06FF
    db $FC
    dec de
    ei
    ld h, h
    rst $28
    ret nc

    rst $38
    sub b
    cp a
    ldh [rIE], a
    adc b
    rst $18
    xor b
    ccf
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FF
    cp $05
    db $FD
    ld a, [bc]
    ei
    inc c
    ei
    inc d
    rst $30
    inc l
    rst $28
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $05
    db $FD
    ld a, [bc]
    ei
    inc [hl]
    rst $20
    ld e, b
    rst $18
    and b
    rst $20
    ld e, d
    rst $18
    and d
    cp a
    ld b, h
    ld a, a
    adc c
    rst $38
    ld bc, $02FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $02FF
    rst $38
    inc b
    db $FD
    rlca
    db $FD
    dec bc
    ei
    dec [hl]
    rst $38
    db $FD
    rst $38
    or $FC
    db $DB
    ei
    db $E4
    rst $28
    ret nc

    rst $38
    sub b
    cp a
    ldh [rIE], a
    adc b
    rst $18
    xor b
    ccf
    ret nc

    rst $38
    nop
    rst $38
    nop
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
    cp $FE
    db $FD
    db $FD
    ld a, [$ECFB]

jr_01E_4F8A:
    ei
    call nc, $ACF7
    rst $28
    ld d, h
    rst $38
    rst $38
    rst $38
    cp $FF
    ei
    cp $F5
    db $FD
    ld [$F4FB], a
    rst $20
    ret c

    rst $18
    and b
    rst $20
    ld e, d
    rst $18
    and d
    cp a
    ld b, h
    ld a, a
    adc c
    rst $38
    ld bc, $02FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    ld a, [$FCFF]
    db $FD
    rst $30
    db $FD
    db $EB
    ei
    or l
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld h, c
    ccf
    add hl, de
    ld c, $07
    dec b
    ld b, $03
    inc bc
    ld bc, $BB00
    or $BD
    ei
    ld a, l
    cp a
    ld a, l
    rst $38
    db $FD
    ld a, a
    db $FD
    rst $38
    db $FD
    ei
    ei
    cp $FB
    ld a, [hl]
    ld a, e
    ld [hl], $37
    inc l
    daa
    inc e
    ld c, a
    jr c, jr_01E_4F8A

    ld [hl], b
    rst $38
    ld h, b
    ld a, a
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
    inc c
    nop
    add hl, de
    nop
    ld h, d
    ld bc, $6395
    ld c, e
    scf
    dec [hl]
    inc bc
    ld b, b
    inc bc

jr_01E_5010:
    ld l, c
    ld b, $56
    cpl
    xor a
    ld a, a
    inc hl
    rst $38
    call $EEFF
    rst $38
    add $FF
    inc de
    rst $38
    rst $00
    rrca
    adc h
    inc sp
    ld [hl-], a
    ld a, l
    push hl
    ei
    adc e
    rst $30
    rrca
    rlca
    ld d, e
    daa
    inc a
    ld b, e
    ld a, a
    rst $38
    rst $38
    ld a, a
    inc bc
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $E3
    rst $38
    rra
    rst $38
    ld sp, hl
    ld b, $8F
    nop
    ld h, [hl]
    jr jr_01E_5010

    jr nc, @-$2D

    jr nz, jr_01E_50B8

    nop
    ld e, l
    nop
    ld e, $00
    adc e
    ld [hl], h
    add hl, bc
    rst $30
    inc sp
    rst $08
    db $E3
    rla
    and e
    ld b, a
    push hl
    inc bc
    adc $01
    adc a
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld c, [hl]
    rst $38
    pop af
    rst $38
    ld l, a
    rst $38
    ld e, $00
    dec a
    nop
    dec [hl]
    ld [bc], a
    ld hl, $0906
    ld b, $0A
    inc b
    inc e
    nop
    nop
    nop
    sbc e
    inc b
    ld [hl], h
    sbc a
    add hl, de
    rst $38
    dec sp
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    add hl, de
    ldh [$D6], a
    ld sp, hl
    jr c, @+$01

    cp b
    rst $38
    cp d
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    db $DD
    rst $38
    db $DB
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01E_50B8:
    rst $30
    rst $38
    ei
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    dec sp
    rst $38
    cp c
    rst $38
    rst $10
    cp a
    or c
    adc $26
    db $DD
    ld l, $DD
    ld l, e
    inc e
    ld [hl], a
    ld [$FFB8], sp
    jr nc, @+$01

    ld e, h
    di
    or d
    ld c, a
    rla
    xor $15
    xor $13
    db $EC
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $00
    inc c
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
    nop
    ld b, $01
    inc a
    inc bc
    ld a, c
    rlca
    db $E3
    rra
    ld c, h
    ccf
    ld de, $3BFF
    rst $38
    add sp, $07
    ld d, [hl]
    rrca
    cpl
    rra
    cpl
    rra
    ld b, b
    rrca
    dec sp
    rlca
    rst $30
    rlca
    rst $30
    rrca
    rst $28
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38

jr_01E_5116:
    sbc a
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ld a, d
    add c
    pop af
    inc bc
    add e
    rlca
    dec de
    daa
    ld l, b
    ld [hl], a
    adc $F1
    rrca
    di
    ld a, [de]
    rst $20
    rst $38
    rst $38
    db $FD
    rst $38
    db $E3
    rst $38
    ld c, $FF
    ld e, l
    cp a
    ld e, e
    cp a
    ld l, e
    sbc a
    pop de
    cpl
    inc a
    nop
    nop
    nop
    add hl, bc
    nop
    dec de
    nop
    jr c, jr_01E_514A

jr_01E_514A:
    jr c, jr_01E_514C

jr_01E_514C:
    stop
    nop
    nop
    ld l, a
    nop
    sub $20
    jr nc, jr_01E_5116

    adc $00
    ld a, [de]
    inc b
    ld b, $18
    inc e
    nop
    nop
    nop
    rst $08
    rst $38
    add a
    rst $38
    jr nc, @+$01

    sbc a
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    dec c
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    and a
    rst $38
    call $FBFF
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
    rst $38
    db $FD
    cp $CD
    cp $F5
    cp $FA
    db $FC
    ld a, [bc]
    db $FC
    pop bc
    cp $67
    ld hl, sp-$68
    ldh [$EE], a
    ldh a, [$F2]
    db $FC
    pop af
    cp $01
    rst $38
    inc bc
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld l, a
    nop
    db $F4
    inc bc
    or $01
    pop af
    nop
    ld [hl], d
    nop
    daa
    nop
    inc bc
    nop
    nop
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, l
    add b
    sbc $00
    ld e, $00
    adc h
    nop
    adc b
    nop
    nop
    nop
    add hl, bc
    ld b, $3F
    ld bc, $0F71
    dec hl
    rra
    jr nc, jr_01E_51F9

    ld h, c
    rra
    ld e, e
    scf
    or a
    ld a, a
    ld [hl], a
    rst $38
    cp e
    ld a, a
    dec h
    rst $38
    sbc h
    rst $38
    dec sp

jr_01E_51F9:
    rst $38
    rlca
    rst $38
    xor a
    rst $38
    ld l, h
    rst $38
    add $3F
    ld [hl], h
    rrca
    add hl, hl
    rra
    ld l, e
    rra
    add e
    ld a, a
    db $DB
    daa

Jump_01E_520C:
    cp h
    ld b, e
    db $D3
    cpl
    ret nc

    rst $28
    dec bc
    rst $30
    rst $00
    rst $38
    rst $28
    rst $38
    adc $FF
    ld bc, $CFFF
    rst $38
    rst $28
    rst $38
    ld e, e
    dec h
    db $FC
    inc bc
    ld [hl], h
    dec bc
    inc [hl]
    dec bc
    dec bc
    inc b
    ld [de], a
    dec c
    inc h
    jr jr_01E_523C

    db $10
    inc a
    rst $38
    inc a
    rst $38
    ld a, l
    cp e
    or d
    ld c, l
    ld l, $DD
    ld a, [hl-]
    db $DD

jr_01E_523C:
    db $E4
    dec de
    ld sp, hl
    ld b, $7E
    rst $38
    call $D1FF
    rst $38
    sbc c
    rst $38
    inc a
    rst $38
    ld a, [hl-]
    db $FD
    ld [hl], h
    cp e
    adc b
    ld a, a
    or $FF
    ldh a, [rIE]
    db $EC
    rst $38
    call c, $3CFF
    rst $38
    jr @+$01

    ld h, $FF
    xor a
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ld hl, $431E
    inc a
    sbc c
    ld h, a
    ld h, e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $18
    ld b, c
    ld a, $33
    inc c
    inc e
    inc bc
    dec bc
    rlca
    ld b, $01
    dec e
    inc bc
    ld a, e
    rlca
    push bc
    dec sp
    add hl, de
    rst $38
    cp [hl]
    ld a, a
    rst $08
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld c, $00
    ld hl, $5E1E
    ccf
    cp h
    ld a, a
    ld h, a
    rst $38
    rst $38
    rst $38
    ld bc, $0200
    ld bc, $0305
    dec b
    inc bc
    inc bc
    nop
    rlca
    ld bc, $0305
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rst $00
    nop
    stop
    jr nc, jr_01E_52C4

jr_01E_52C4:
    inc a
    nop
    ld a, $00
    ccf
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01E_52E4

jr_01E_52E4:
    ld h, b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, c
    nop
    inc sp
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    rst $10
    ccf
    or a
    ld a, a
    ld [hl], b
    cp a
    xor $1F
    ld c, l
    ccf
    ld c, e
    ccf
    jp $A03F


    rra

jr_01E_5310:
    jp nz, $31FF

    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld c, $FF
    xor $FF
    pop bc
    rst $38
    dec de
    rst $38
    add hl, de
    nop
    ld bc, $0C00
    nop
    ld e, $00
    inc e
    nop
    stop
    nop
    nop
    nop
    nop
    di
    inc c
    ld h, a
    add b
    jp $0B04


    inc b
    add $00
    ld [c], a
    nop
    ldh [rP1], a
    ld b, b
    nop
    push bc
    ccf
    add a
    ld a, e
    sbc [hl]
    ld h, e
    inc a
    inc bc
    ld a, h
    nop
    ld a, l
    nop
    ld [hl], c
    nop
    nop
    nop
    cpl
    rst $18
    ld b, [hl]
    cp a
    ld c, c
    or [hl]
    rst $20
    jr jr_01E_5310

    ld c, b
    scf
    ret nz

    ld h, a
    add b
    add $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01E_5368

jr_01E_5368:
    xor h
    db $10
    ld b, [hl]
    cp b
    cp h
    cp $DF
    rst $38
    ld d, $0F
    ld h, c
    rra
    adc a
    ld a, a
    ld e, a
    ccf
    ld l, $1F
    ld b, c
    ccf
    or a
    ld a, a
    rst $38
    ld a, a
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    jr jr_01E_5392

jr_01E_5392:
    ld a, b
    nop
    ldh a, [rP1]
    db $E4
    jr jr_01E_53EB

    cp h
    sbc b
    cp $CF
    cp $FF
    rst $38
    add hl, bc
    rlca
    rlca
    nop
    inc bc
    nop
    rlca
    ld bc, $030D
    dec bc
    rlca
    inc b
    inc bc
    inc bc
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
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
    ldh [rP1], a
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
    rlca
    nop
    ccf
    nop
    rlca
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    nop
    ld [bc], a

jr_01E_53EB:
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

    nop
    ldh [rP1], a
    jr nz, jr_01E_53FA

jr_01E_53FA:
    jr nc, jr_01E_53FC

jr_01E_53FC:
    inc a
    nop
    rra
    nop
    rst $00
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    cp [hl]
    nop
    add [hl]
    nop
    add $00
    ld a, [hl]
    nop
    ld [hl], b
    nop
    jr c, jr_01E_5414

jr_01E_5414:
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, c
    nop
    jr c, jr_01E_5428

jr_01E_5428:
    jr c, jr_01E_542A

jr_01E_542A:
    inc e
    nop
    stop
    jr nc, jr_01E_5430

jr_01E_5430:
    rst $38
    nop
    sbc a
    nop
    rst $08
    nop
    xor $00
    inc e
    nop
    jr c, jr_01E_543C

jr_01E_543C:
    stop
    jr nc, jr_01E_5440

jr_01E_5440:
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    pop af
    nop
    ld a, a
    nop
    add hl, bc
    nop
    rrca
    nop
    ld e, $00
    ld a, b
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, $00
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $1000
    nop
    jr nz, jr_01E_5474

jr_01E_5474:
    ld c, d
    nop
    inc e
    nop
    inc [hl]
    ld [$041A], sp
    ld h, [hl]
    jr jr_01E_54AB

    stop
    nop
    ld [hl+], a
    nop
    ld c, e
    nop
    sbc h
    inc bc
    dec [hl]
    ld a, [bc]
    dec de
    inc b
    ld h, $00
    nop
    nop
    nop
    nop
    ld b, l
    nop
    rst $18
    nop
    ld [hl-], a
    call Call_01E_7689
    sbc $21
    ld h, l
    nop
    nop
    nop
    nop
    nop
    ld bc, $0B00
    nop
    inc bc
    nop
    ld b, $01
    inc c

jr_01E_54AB:
    inc bc
    rlca
    nop
    ld b, $01
    call nz, $8000
    nop
    ccf
    ret nz

    ldh [$03], a
    ld e, a
    and b
    and [hl]
    ld e, c
    nop
    rst $38
    ld e, h
    rst $38
    inc c
    nop
    rst $38
    nop
    xor a
    ld d, b
    db $FC
    inc bc
    ld h, e
    sbc h
    rra
    ldh [$84], a
    rst $38
    ld d, e
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    scf
    ret z

    add hl, bc
    or $07
    ld hl, sp+$01
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0B00
    nop
    rla
    nop
    dec c
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    ld hl, sp+$07
    and b
    ld e, a
    ld b, b
    cp a
    ld a, $00
    ld b, $00
    ld b, $00
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc e
    nop
    sbc b
    nop
    db $FC
    nop
    ld a, a
    nop
    ld bc, $7000
    nop
    ret nz

    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_01E_5532

jr_01E_5532:
    jr nz, jr_01E_5534

jr_01E_5534:
    jr nz, jr_01E_5536

jr_01E_5536:
    ldh a, [rP1]
    stop
    ld [$0800], sp
    nop
    ld [$3F00], sp
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    ld [$8400], sp
    nop
    call nz, $FF00
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
    sbc $00
    ret c

    nop
    ld [hl], b
    nop
    jr nc, jr_01E_556C

jr_01E_556C:
    ld h, b
    nop
    ldh [rP1], a
    ld l, d
    inc d
    inc [hl]
    ld [$1866], sp
    inc l
    db $10
    inc [hl]
    ld [$0C12], sp
    ld h, [hl]
    jr jr_01E_55AB

    stop
    nop
    ld [$0700], sp
    nop
    ld e, b
    rlca
    inc hl
    inc e
    dec [hl]
    ld a, [bc]
    cpl
    db $10
    inc a
    nop
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    inc c
    inc bc
    rlca
    nop
    inc e
    inc bc
    ld b, $01
    inc bc
    nop
    dec bc

jr_01E_55AB:
    nop
    ld bc, $0000
    nop
    rlca
    rst $38
    ld d, b
    cp a
    pop hl
    ld e, $3F
    ret nz

    ldh [$03], a
    rst $38
    nop
    add b
    nop
    call nz, $0D00
    rst $38
    ld [c], a
    dec e
    ccf
    ret nz

jr_01E_55C6:
    ld h, b
    sbc a
    rst $08
    jr nc, jr_01E_55C6

    inc b
    rst $38
    nop
    inc c
    nop
    ld b, b
    rst $38
    inc a
    rst $38
    sbc [hl]
    rst $38
    jp $B8FF


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $01
    inc e
    inc bc
    ld a, [hl-]
    dec b
    jr c, jr_01E_55EF

    ld sp, $700F
    rrca
    ld h, c
    rra
    ld l, h

jr_01E_55EF:
    inc de
    ld h, $FF
    inc c
    rst $38
    ld h, b
    rst $38
    ld d, c
    cp $04
    ei
    add c
    cp $66
    ld hl, sp+$0F
    ldh a, [rP1]
    nop
    add b
    nop
    jr nz, jr_01E_5606

jr_01E_5606:
    inc [hl]
    nop
    inc a
    nop
    cp a
    nop
    ld l, $11
    inc l
    inc de
    nop
    nop
    ld bc, $4400
    nop
    ld c, h
    nop
    inc a
    nop
    db $FD
    nop
    db $F4
    ld [$48B4], sp
    ld [hl], d
    dec c
    ld a, d
    dec b
    ld l, [hl]
    ld de, $1B64
    push af
    dec bc
    push de
    dec hl
    halt
    add hl, bc
    ld [hl], l
    dec bc
    ld c, [hl]

jr_01E_5631:
    ldh a, [$9A]
    db $E4
    ld e, $E0
    xor d
    call nc, $D02F
    ld l, a
    ret nc

    or [hl]
    ret z

    or [hl]
    ret z

    ld b, $00
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc a
    inc bc
    rlca
    nop
    inc e
    inc bc
    ld c, $01
    call nz, $8000
    nop
    rst $38
    nop
    ldh [$03], a
    rst $38
    nop
    rst $20
    jr jr_01E_566B

    pop af
    jr c, @-$37

    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, jr_01E_5631

    ccf

jr_01E_566B:
    ret nz

    ldh [$1F], a
    ld [hl], b
    adc a
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld l, d
    nop
    ld a, e
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    ld [hl], h
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    db $FD
    nop
    rst $38
    nop
    and a
    ld e, b
    ld [hl], d
    dec c
    ld [hl], e
    inc c
    ld a, a
    nop
    ld a, l
    ld [bc], a
    db $FC
    inc bc
    db $F4
    dec bc
    ld [hl], h
    dec bc
    ld [hl], h
    dec bc
    dec de
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    scf
    rst $38
    ld d, l
    rst $38
    dec d
    rst $38
    cp a
    ld a, a
    sbc e
    ld a, a
    ld a, h
    inc bc
    ld [hl], h
    dec bc
    ld [hl], h
    dec bc
    ld a, b
    rlca
    jr c, jr_01E_56C1

    inc a
    inc bc
    dec a
    ld [bc], a
    ld e, $01
    ccf

jr_01E_56C1:
    rst $38
    ld d, a
    rst $38
    ld c, a
    rst $38
    inc sp
    rst $38
    add hl, sp
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    adc l
    ld a, a
    db $EC
    rst $38
    pop af
    rst $38
    cp $FF
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    or b
    rst $38
    sbc b
    rst $38
    ret c

    rst $38
    ret z

    rst $38
    ld h, h
    rst $38
    ld [hl-], a
    rst $38
    sbc c
    rst $38
    reti


    rst $38
    db $F4
    dec bc
    or [hl]
    add hl, bc
    inc a
    inc bc
    ld a, [hl+]
    rlca
    jr z, jr_01E_5711

    xor c
    rlca
    add hl, hl
    rla
    dec l
    inc de
    dec hl

jr_01E_5711:
    call nc, $E499
    inc l
    ret nc

    sub h
    ldh [$94], a
    ldh [$B5], a
    ret nz

    inc [hl]
    ret z

    inc d
    add sp, $72
    dec c
    dec sp
    inc b
    rrca
    nop
    inc h
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
    or b
    ld e, h
    and b
    ldh a, [rP1]
    and h
    nop
    jr nz, jr_01E_573A

jr_01E_573A:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld c, $01
    rlca
    nop
    ld c, $01
    ld b, $01
    rlca
    nop
    inc de
    nop
    rlca
    nop
    ret nz

    ccf
    nop
    rst $38
    pop hl
    rst $38
    rrca
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $FC
    rst $38
    inc bc
    db $FC
    ld [$72FF], sp
    rst $38
    sbc a
    rst $38
    db $E3
    rst $38
    ld e, $FF
    di
    rst $38
    rst $38
    rst $38
    db $FC
    inc bc
    cp h
    inc bc
    dec a
    ld [bc], a
    add hl, hl
    ld b, $2B
    inc b
    xor [hl]
    ld bc, $112E
    inc l
    inc de
    xor a
    ld a, a
    xor a
    ld a, a
    daa
    rst $38
    dec b
    rst $38
    rla
    rst $38
    rla
    rst $38
    ld d, $FF
    ld a, $FF
    ld [hl], d
    dec c
    dec sp
    inc b
    ld l, $01
    rlca
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    rst $38
    dec hl
    rst $38
    or e
    ld l, a
    sbc $21
    rst $38
    nop
    rst $38
    nop
    scf
    nop
    nop
    nop
    ld c, $01
    rlca
    nop
    dec b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add $3F
    ld h, e
    sbc a
    or b
    ld c, a
    ret c

    daa
    ld l, h
    inc de
    ld a, l
    ld [bc], a
    cp [hl]
    ld bc, $003F
    cp a
    rst $38
    ld l, a
    rst $38
    cp e
    rst $38
    ld c, $FF
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld e, a
    nop
    cpl
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    db $FC
    inc bc
    cp a
    nop
    rst $08
    nop
    jr nc, jr_01E_57FA

jr_01E_57FA:
    rst $08
    nop
    nop
    nop
    nop
    nop
    dec sp
    nop
    add b
    nop
    ld de, $2200
    ld de, $3102
    ld d, d
    ld sp, $712A
    dec h
    ld a, b
    nop
    nop
    and [hl]
    ld b, b
    add hl, de
    ret nz

    ld [bc], a
    pop bc
    and d
    pop bc
    sub h
    db $E3
    db $DD
    di
    ld l, l
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc de
    nop
    add b
    nop
    or $00
    ld b, $00
    call c, RST_00
    nop
    ldh a, [rP1]

jr_01E_5836:
    ld b, $00
    or a
    nop
    add b
    nop
    or $00
    cp $00
    rra

jr_01E_5841:
    nop
    ld [hl], c
    ld c, $E1
    ld e, $7F
    add b
    push bc
    ld [bc], a
    cp a
    ld b, b
    db $ED
    inc de
    and h
    ld e, e
    dec sp
    nop
    add e
    nop
    ret c

    nop
    sbc $00
    nop
    nop
    ldh a, [rP1]
    ld b, $00
    or a
    nop
    dec sp
    nop
    add h
    inc bc
    pop de
    ld [$1EC0], sp
    ld e, $00
    add hl, bc
    ldh a, [$09]
    ld b, $48
    or a
    dec sp
    nop
    inc bc
    add b
    jr jr_01E_5836

    ld e, $C0
    ldh a, [rP1]
    ld [$F1F0], sp
    ld b, $48
    or a
    db $EC
    inc bc
    ld l, l
    add e
    daa
    ret nz

    dec l
    jp nz, $00C1

    rrca
    ldh a, [$F8]
    rlca
    ld c, a
    or a
    ldh a, [rP1]
    ld b, h
    add e
    and a
    ret c

    dec l
    sbc $F1
    ld e, $06
    ld sp, hl
    ldh a, [rIF]
    ld b, a
    cp a
    ld b, h
    ld [bc], a
    add hl, de
    nop
    ld d, h
    ld [bc], a
    nop
    add hl, bc
    jr nz, jr_01E_58AE

    ld c, b
    ld bc, $0234

jr_01E_58AE:
    jr jr_01E_58B1

    ld l, b

jr_01E_58B1:
    nop
    add [hl]
    nop
    ld a, b
    nop
    inc bc
    add b
    ld c, b
    jr nz, jr_01E_5841

    nop
    ld a, b
    nop
    add e
    nop
    ld b, h
    ld [bc], a
    ld [$4511], sp
    ld [de], a
    ld b, d
    add hl, bc
    ld h, e
    inc b
    ld l, d
    ld bc, $2255
    ld c, h
    inc sp
    rla
    ld l, b
    ld a, c
    add [hl]
    or l
    ld a, b
    ld a, l
    add e
    sub [hl]
    ld l, b
    ld a, c
    add [hl]

Call_01E_58DC:
    or h
    ld a, b
    ld a, h
    add e
    and a
    rra
    ld e, h
    ccf
    or a
    ld a, b
    ld l, b
    ldh a, [$D1]
    ldh [$C0], a
    pop hl
    or [hl]
    call $D7AA
    and a
    rra
    ld e, h
    ccf
    or a
    ld a, b
    ld l, b
    ldh a, [$D0]
    ldh [$C0], a
    ldh [$A0], a
    ret nz

    and b
    ret nz

    ld [hl], $6C
    dec hl
    ld [hl], a
    dec [hl]
    ld a, e

jr_01E_5906:
    ld e, e
    inc a
    ld e, a
    ld a, $AF
    rra
    rla
    rrca
    adc h
    inc bc
    cp [hl]
    ld l, c
    jp hl


    nop
    push bc
    add e
    db $EB
    rst $00
    reti


    daa
    ld a, h
    add e
    and a
    ret nz

    ld l, b
    sub b
    ld c, $00
    nop
    nop
    rst $28
    nop
    rlca
    nop
    rst $28
    nop
    rra
    nop
    ld [hl], c
    ld c, $E1
    ld e, $EF
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $F1
    ld c, $B7
    ld c, b
    ld a, a
    add b
    cp a
    ld b, b
    ld [hl], h
    adc e
    ld a, [hl-]

jr_01E_5941:
    ld bc, $8102
    jr jr_01E_5906

    ld [de], a
    call z, RST_00
    ldh a, [rP1]
    ld b, $00
    or a
    nop
    add b
    nop
    ld b, b
    nop
    adc d
    nop
    dec sp
    nop
    ld [bc], a
    nop
    ld bc, $8100
    nop
    ld bc, $4480
    dec sp
    ld b, b
    add e
    dec h
    ret c

    ld hl, $71DE
    nop
    adc e
    ld [hl], b
    ld [hl], c
    ld b, $A9
    ld d, $84
    dec sp
    ld b, b
    add e
    inc h
    ret c

    ld hl, $E0DE
    nop
    ld [$06F0], sp
    nop
    ld c, a
    or b
    call nc, Call_01E_7D3B
    add e
    and a
    ret c

    dec l
    sbc $D8
    jr nz, jr_01E_5A01

    ld hl, sp-$07
    ld b, $5A
    cp h
    sbc $3F
    ld a, h
    add e
    daa
    ret c

    ld hl, $00DE
    nop
    adc e
    ld [hl], b
    ei
    ld b, $29
    ld d, $44
    ld [bc], a
    add hl, de
    nop
    ld d, h
    ld [bc], a
    nop
    add hl, bc
    jr nz, jr_01E_59AE

    ld c, b
    ld bc, $0234

jr_01E_59AE:
    jr jr_01E_59B1

    ld l, b

jr_01E_59B1:
    nop
    add [hl]
    nop
    ld a, b
    nop

jr_01E_59B6:
    inc bc
    add b
    ld c, b
    jr nz, jr_01E_5941

    nop
    ld a, b
    nop
    add e
    nop
    ld e, c
    scf
    halt
    add hl, de
    add hl, hl
    ld e, $34
    rrca
    sbc b
    rlca
    ld c, $01
    db $E3
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    and $FF
    ld [hl], e
    rst $38
    ld b, h
    cp e
    rst $28
    nop
    adc $00
    nop
    nop
    and c
    jp $C1A0


    ld [hl], $CD
    xor d
    rst $10
    ld hl, $43C3
    add b

jr_01E_59EC:
    rst $38
    nop
    cp a
    ld a, a
    and b
    ret nz

    and b
    ret nz

    jr nz, jr_01E_59B6

    and b
    ret nz

    jr nz, @-$3E

    ld b, b
    add b
    rst $38
    nop
    cp a
    ld a, a
    sub d

jr_01E_5A01:
    ld h, c
    add hl, bc
    ld a, [c]
    db $F4
    nop
    ld c, b
    jr nc, jr_01E_59EC

    nop
    ld h, $C1
    call $9B03
    rlca
    ld a, [c]
    nop
    add b
    nop
    rra
    nop
    rst $30
    rrca
    cp a
    ld a, a
    db $FC
    rst $38
    rst $18
    ldh [$E0], a
    add b
    xor a
    ret nc

    ld b, a
    ld hl, sp-$76

jr_01E_5A25:
    rst $38
    add hl, sp
    rst $38
    ld a, [de]
    rst $20
    db $E4
    rra
    and c
    sbc $92
    db $FC
    rst $00
    ccf
    ccf
    rst $38
    ld hl, sp-$01
    add a
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    rlca
    nop
    jr c, jr_01E_5A47

    inc h
    res 5, h
    jp $C8E7


jr_01E_5A46:
    pop hl

jr_01E_5A47:
    adc $2F
    ret nz

    rst $28
    ret nz

    add hl, hl
    add $A8
    rst $00
    dec h
    res 5, h
    jp $C9E7


    ldh [$CF], a
    cpl
    pop bc
    rst $28
    pop bc
    jr z, jr_01E_5A25

    xor c
    add $EC
    inc bc
    ld l, l
    add e
    daa
    ret nz

    inc l
    ret nz

    pop bc
    nop
    inc bc
    ldh a, [$E7]
    ld bc, $A345
    ldh a, [rP1]
    ld b, b
    add b
    rla
    rrca
    ld a, c
    ld e, $E8
    ld [hl], b
    and e
    ret nz

    ld d, c
    add a
    cp l
    ld [hl-], a
    rst $20
    ld [bc], a
    ld h, d
    add b
    jr nz, jr_01E_5A46

    jr nz, @-$3E

    jp nz, $0C04

    add [hl]
    inc l
    ld b, $2D
    ld b, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$7F]
    add b
    ld a, b
    ldh [$7F], a
    add b
    ld h, b
    ldh [$3F], a
    rst $38
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $28
    rst $38
    xor $FF
    nop
    rst $38
    cp $FF
    ld a, a
    rst $38
    ld b, b
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $FF
    nop
    rst $38
    rst $38
    nop
    rlca
    nop
    ldh a, [$84]
    rlca
    adc h
    rst $20
    sub $EE
    cp $00
    rst $38
    cp $FF
    ld a, a
    nop
    ld b, b
    nop
    rra
    ld bc, $11C0

jr_01E_5AD8:
    rst $38
    jr jr_01E_5ADB

jr_01E_5ADB:
    ccf
    cp $3F
    nop
    ld a, a
    nop
    nop
    ld a, [hl]
    nop
    cp $00
    cp $00
    db $FC
    ld [bc], a
    ld [bc], a
    db $FC
    add h
    ld a, b
    nop
    nop
    ld a, a
    inc bc
    ld b, b
    ld bc, $001F
    ret nz

    inc bc
    rst $38
    ld bc, $0100
    cp $00
    nop
    ld [$0F17], sp
    cp a
    ld c, $2E
    inc e
    ld a, [hl]
    inc e
    ld l, [hl]
    jr jr_01E_5B87

    nop
    or [hl]
    ld a, b
    ld a, [de]
    db $FC
    ld [hl], b
    adc a
    call nz, $9038
    ld h, b
    jr nz, jr_01E_5AD8

    ld b, b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    inc h
    ld hl, sp-$17
    ldh a, [$CB]
    ldh a, [$D5]
    ld [c], a
    rla
    ldh [$EF], a
    ret nz

    add hl, hl
    add $A8
    rst $00
    inc h
    ld hl, sp-$17
    ldh a, [$CA]
    pop af
    push de
    db $E3
    rla
    pop hl
    xor $C1
    add hl, hl
    rst $00
    xor c
    rst $00
    ld l, $DC
    or $0C
    sub $0C
    ld h, $0C
    ld h, l
    ld c, $4A
    daa
    ld e, e
    jr nc, jr_01E_5BB3

    jr jr_01E_5B8F

    nop
    ld d, e
    inc l
    ld e, e
    ld h, $4C
    inc sp
    ld h, a
    jr jr_01E_5B98

    ld [bc], a
    ld d, d
    ld hl, $1029
    rst $00
    ld [hl+], a
    ld l, d
    add a
    and [hl]
    jp nz, $C227

    jp z, Jump_01E_4627

    jp nz, $02E7

    ld b, a
    add d
    ld e, $29
    dec hl
    inc b
    ld d, a
    nop
    pop hl
    ld c, b
    xor b
    ld b, l
    xor $4D
    and a
    ld c, l
    ld d, d
    inc h
    ld h, d
    rlca
    ld h, e
    rlca
    ld h, l
    inc bc
    ld [hl+], a

jr_01E_5B87:
    ld b, c
    ld hl, $6040
    ld b, b
    ld [hl], h
    ld a, b
    nop

jr_01E_5B8F:
    nop
    add b
    nop
    ld h, b
    add b
    add b
    rst $38
    rst $38
    rst $38

jr_01E_5B98:
    add b
    ld a, a
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
    ldh a, [rP1]
    rlca
    nop
    rst $28
    nop
    xor $00
    nop
    nop
    cp $00
    ld a, a
    nop
    ld b, b

jr_01E_5BB3:
    nop
    rra
    nop
    ret nz

    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    rst $38
    ccf
    rlca
    rrca
    ldh a, [rTAC]
    rlca
    rrca
    rst $28
    rra
    xor $3F
    nop
    rrca
    cp $03
    rst $38
    nop
    rlca
    ld bc, $07F0
    rlca
    rra
    rst $28
    rrca
    xor $07
    nop
    rlca
    cp $0F
    rst $38
    nop
    rlca
    ld b, $F0
    nop
    rlca
    inc bc
    rst $28
    add e
    xor $C3
    nop
    di
    cp $F7
    ld a, a
    inc e
    ld b, b
    rrca
    rra
    rlca
    ret nz

    rlca
    rst $38
    jp $FF00


    cp $FF
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld c, [hl]
    rst $38
    ld b, c
    rst $38
    ld c, h
    rst $38
    ld e, c
    rst $38
    ld b, e
    rst $38
    ret nz

    nop
    jr nz, @-$3E

    ldh a, [$E0]
    ld [hl], b
    ldh [$50], a
    and b
    ldh a, [rP1]
    ret nz

    nop
    nop
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
    rst $38
    nop
    nop
    nop
    ld [bc], a
    nop
    and $72
    adc [hl]
    ld h, [hl]
    add h
    ld c, [hl]
    xor h
    ld c, $6C
    ld l, $EC
    ld l, [hl]
    ld c, h
    xor $D6
    rst $20
    rst $10
    ldh [$C0], a
    ldh a, [$E0]
    ld [hl], b
    ld l, h
    ld [hl], b
    ld a, b
    nop
    ld bc, $0300
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ld e, a
    ccf
    rst $38
    ld a, a
    rst $28
    ldh a, [$B8]
    ret nz

    ld c, h
    add b
    and a
    ld b, b
    ld [hl], $00
    ld [de], a
    nop
    ld a, [$FFFC]
    cp $F7
    rrca
    adc l
    inc bc
    sbc [hl]
    ld bc, $00FC
    add hl, de
    nop
    stop
    nop
    nop
    nop
    nop

jr_01E_5C84:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $E1
    ld sp, hl
    or $F8
    jp $00FE


    jp $1824


    and l
    nop
    sbc c
    jp Jump_01E_7FA4


    adc a
    sbc a
    ld h, e
    rra
    ret nz

    ld [hl], e
    inc c
    call z, $C033
    sbc [hl]
    di
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    jr jr_01E_5C84

    inc l
    rst $20
    sub c
    cp $13
    rst $38
    dec a
    rst $38
    sbc h
    rst $38
    rlca
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld [hl], b
    ccf
    ret nz

    ccf
    ld e, h
    ld sp, hl
    cp d
    di
    inc b
    rst $38
    ld c, h
    dec h
    ld hl, sp-$16
    ldh a, [$C8]
    ldh a, [$D0]
    ldh [rNR22], a
    ld [c], a
    db $EC
    call nz, $C026
    and b
    ret nz

    or e
    ld c, h
    ld a, [hl]
    add c
    rst $00
    ld a, [hl-]
    sbc e
    ld b, h
    add $2B
    db $FC
    ld h, d
    ld h, [hl]
    sbc c
    jp $1F24


    ldh [rPCM34], a
    ld [$950E], sp
    db $FC
    ld a, [bc]
    ld c, $D1
    rst $20
    ld a, [bc]
    dec e
    ld [hl-], a
    rst $30
    ld [$FF49], sp
    ld b, b
    rst $38
    ld a, a
    rst $38
    ld c, h
    rst $38
    ld a, a
    rst $38
    ld d, d
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    and d
    rst $38
    ld [bc], a
    rst $38
    cp $FF
    ld c, d
    rst $38
    cp $FF
    add d
    rst $38
    cp $FF
    nop
    rst $38
    call z, $CCEE
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CC
    xor $CD
    xor $CD
    xor $CC
    rst $28
    adc $E7
    add $00
    adc h
    nop
    jr jr_01E_5D46

jr_01E_5D46:
    jr nc, jr_01E_5D48

jr_01E_5D48:
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $00

jr_01E_5D5E:
    nop
    nop
    nop
    nop
    dec l
    ld [de], a
    ld h, c
    ld e, $B8
    ld b, a
    cp h
    ld b, e

jr_01E_5D6A:
    rst $00
    jr c, jr_01E_5DEC

    rst $38
    jr nz, jr_01E_5D8F

    nop
    nop
    sbc c
    ld h, [hl]
    rst $08
    jr nc, jr_01E_5D5E

    jr jr_01E_5DB4

    call nz, $7887
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    stop
    jr z, @+$12

    db $10
    jr c, @-$6E

    jr c, jr_01E_5D6A

    jr nc, jr_01E_5E05

    add a
    rst $38

jr_01E_5D8F:
    rst $38
    db $FC
    jp $81FC


    rst $08
    jr nc, jr_01E_5DCA

    call z, Call_01E_7903

jr_01E_5D9A:
    rst $08
    nop
    rst $38
    ld b, $FF
    adc a
    rst $08
    ld [hl-], a
    rrca
    rst $20
    ccf
    nop
    jp $1824


    and l
    nop
    sbc c
    jp $FF24


    add e
    di
    ld l, e
    add hl, sp
    or a

jr_01E_5DB4:
    sbc a
    ld h, b
    rst $38
    adc h
    di
    ld a, [bc]
    ld sp, hl
    call nz, $10EF
    di
    adc h
    rst $38
    ld [hl], b
    rst $08
    ld d, d
    sbc l
    and $FB
    inc b
    rst $38
    ld e, b

jr_01E_5DCA:
    rst $08
    ldh a, [$9F]
    ld a, b
    rst $38
    ld b, $20
    ret nz

    and b
    ret nz

    ldh [$C0], a
    ldh [$C0], a
    jr nz, jr_01E_5D9A

    ldh [$C0], a
    ld hl, $A3C0
    ret nz

    ret nz

    nop
    ld [hl], b
    ret nz

    or b
    ld a, a
    rst $28
    rra
    ld a, a
    nop
    ld a, b
    rlca

jr_01E_5DEC:
    ccf
    nop
    sbc b
    rlca
    rst $38
    call c, $C03F
    rst $38
    sbc h
    db $E3
    dec [hl]
    rst $28
    ld [$739F], sp
    rst $08
    ld hl, sp-$01
    inc bc
    rst $30
    rrca
    cp a
    ld a, a
    rst $38

jr_01E_5E05:
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add a
    ld hl, sp+$3F
    ret nz

    ld [hl], a
    adc b
    ld a, l
    cp $7D
    cp $3D
    cp $BE
    ld a, a
    sbc [hl]
    ld a, a
    ld e, [hl]
    ccf
    cpl
    rra
    cpl
    rra
    ld hl, sp+$07
    rst $00
    ccf
    ccf
    rst $38
    cp $FF
    ld hl, sp-$01
    pop hl
    cp $03
    db $FC
    rra
    ldh [$84], a
    ld a, d
    ld a, [hl-]
    db $FC
    ld a, l
    cp $7D
    cp $39
    cp $82
    ld a, h
    add $38
    ld a, h
    add b
    or h
    ld a, b
    ld [hl], h
    ld hl, sp+$7A
    db $FC
    ld a, c
    cp $7D
    cp $BC
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $00
    ld h, l
    jr jr_01E_5E97

    inc a
    add e
    ld a, h
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    inc c
    ldh a, [$0C]
    ldh a, [rP1]
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_01E_5E8A

    ld e, $00
    nop
    rlca
    nop
    rra
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    jr nc, jr_01E_5E88

jr_01E_5E88:
    jr nz, jr_01E_5E8A

jr_01E_5E8A:
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, jr_01E_5E90

jr_01E_5E90:
    ld [hl], b
    nop
    ld b, b
    nop
    ld e, $00
    ret nz

jr_01E_5E97:
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    adc c
    ld [hl], b
    ld [hl], e
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0081
    ldh [rP1], a
    nop
    nop
    cp $00
    sbc e
    nop
    sbc e
    nop
    add b
    nop
    cp b
    rlca
    add b
    nop
    sbc e
    nop
    sbc e
    nop
    add b
    nop
    ld [hl], b
    adc a
    call nz, $9038
    ld h, b
    jr nz, jr_01E_5E88

    ld b, a
    add b
    add hl, de
    add [hl]
    inc hl
    ld e, $47
    ld a, $83
    ld a, h
    ld a, l
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $7D
    cp $FF
    nop
    nop
    ccf
    rrca
    rlca
    nop
    nop
    jr c, jr_01E_5EE8

jr_01E_5EE8:
    nop
    ccf
    rrca
    rlca
    nop
    nop
    jr c, jr_01E_5EF0

jr_01E_5EF0:
    nop
    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    nop
    nop
    ld [hl], l
    adc [hl]
    ld e, e
    and h
    ld d, [hl]
    cp c
    ld l, d
    sbc l
    ld a, a
    add b
    rst $10
    ccf
    nop
    rst $38
    rst $38
    nop
    ld l, a
    nop
    ld [hl], b

jr_01E_5F13:
    nop
    ld [hl], b
    nop
    ld e, b
    jr nz, jr_01E_5F78

    jr nz, @+$5A

    daa
    ld a, a
    rrca
    ldh [$1F], a
    or $01
    dec c
    inc bc
    dec c
    inc bc
    add hl, de
    rlca
    ld hl, sp+$07
    jr jr_01E_5F13

    db $FC
    di
    rlca
    ld hl, sp+$60
    add b
    or d
    ret nz

    or [hl]
    ret nz

    sbc d
    db $E4
    ld a, [de]
    db $E4
    ld e, $E4
    ld a, [hl-]
    call z, $18E4
    ldh a, [rP1]
    ld [bc], a
    nop
    ld c, $00
    ld a, [de]
    inc b
    ld a, [c]
    inc c
    ld b, $FC
    ld a, [$04FC]
    ld hl, sp+$0C
    ldh a, [$0C]
    ldh a, [$86]
    ld a, b
    add [hl]
    ld a, b
    add e
    ld a, h
    ld b, e
    inc a
    ld b, c
    ld a, $41
    ld a, $3F
    nop
    rra
    nop
    ld d, $09
    adc c
    ld b, $80
    nop
    ld bc, $E200
    ld bc, $0001
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    inc e
    nop

jr_01E_5F78:
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    inc [hl]
    nop
    db $FC
    inc bc
    cp h
    inc bc
    dec a
    ld [bc], a
    add hl, hl
    ld b, $0B
    inc b
    ld b, $01
    ld [hl], c
    nop
    ld hl, sp+$00
    db $FC
    nop
    ld a, [$F404]
    ld [$D029], sp
    ld [de], a
    pop hl
    ld h, c
    nop
    nop
    nop
    nop
    nop
    adc e
    ld a, a
    db $E3
    rra
    sbc b
    rlca
    add b
    nop
    add c
    nop
    adc e
    nop
    sbc e
    nop
    sbc e
    nop
    or h
    dec bc
    add b
    nop
    sbc e
    nop
    sbc e
    nop
    sbc e
    nop
    sbc d
    nop
    nop
    nop
    nop
    nop
    rlca
    ld a, [hl]
    scf
    ld a, [hl]
    rla
    ld a, [hl]
    scf
    ld c, [hl]
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    scf
    ld a, [hl]
    rla
    ld a, [hl]
    scf
    ld c, [hl]

jr_01E_5FD6:
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]

jr_01E_5FDA:
    rlca
    ld a, [hl]
    ld b, e
    ld a, $3F
    nop
    ld d, b
    db $10
    ld c, a
    rrca

jr_01E_5FE4:
    jr jr_01E_5FE6

jr_01E_5FE6:
    add l
    ld c, $C7
    rrca
    ld [bc], a
    rlca

jr_01E_5FEC:
    pop bc
    ld [bc], a
    nop
    nop
    inc b
    nop
    cp b
    ret nz

    inc b
    nop
    add sp, $00
    ld e, b
    add b
    ret nc

    nop
    ldh [rP1], a
    ld [bc], a
    nop
    db $FC
    ld bc, $0FF3
    rrca
    call c, $609F
    db $EC
    rra
    rst $38
    jr nc, jr_01E_5FEC

    jr c, jr_01E_5FD6

    ld a, a
    rra
    ldh [$CF], a
    ldh a, [$EF]
    jr nc, jr_01E_5FE4

    ld l, $9E
    ld b, c
    ld a, b
    add a
    ld sp, hl
    ld b, a
    add hl, hl
    call nc, $00FF
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp-$05
    ld hl, sp-$05

jr_01E_602B:
    inc b
    db $FD
    inc b
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$1F]
    rst $28
    jr c, @-$1F

    jr nc, jr_01E_5FDA

    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    nop
    rst $38
    add b
    rst $38
    adc b
    rst $38
    call z, $DCFF
    rst $38
    db $FD
    cp $F8
    db $FD
    ei
    db $FC
    nop
    rst $38
    ld c, b
    rst $38
    jp nc, $02FF

    rst $38
    jp z, $0007

    di
    inc b
    db $E3
    inc e
    ld bc, $FFFF
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    jr c, jr_01E_602B

    ld b, b
    cp [hl]
    pop bc
    ld a, $E3
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $24C3


    jr jr_01E_607C

    ld b, b

jr_01E_607C:
    ld bc, $8080
    ld bc, $FFFF
    db $FC
    rst $38
    ldh a, [$FD]
    db $E4
    ei
    and $F9
    ld h, e
    ld hl, sp+$01
    db $FC
    nop
    add [hl]
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $28
    add hl, bc
    rst $30
    ld a, [de]
    rst $20
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rTMA]
    jr c, jr_01E_60DA

    push hl
    push hl
    ret nz

    ret nz

    ld [hl], d
    ld [hl], d
    ldh [$E0], a
    reti


    reti


    di
    di
    rst $28
    rst $28
    ldh [$E0], a
    db $FC
    db $FC
    add sp, -$18
    cp $FE
    rst $38
    rst $38
    db $FC
    db $FC
    rst $38
    rst $38
    add sp, -$18
    rst $38
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
    ccf
    ccf
    ccf
    call z, $F0CC
    ldh a, [$D8]
    ret c

    ld h, h
    ld h, h
    sub b
    sub b

jr_01E_60DA:
    ret nz

    ret nz

    ld b, $00
    add e
    adc h
    ld c, [hl]
    or c
    dec a
    add b
    add hl, sp
    add d
    ld [de], a
    pop bc
    inc de
    ret nz

    ld de, $00C2
    ld [c], a
    nop
    ld [c], a
    rlca
    jr jr_01E_616E

    add h
    db $FD
    nop
    db $FD
    ld [bc], a
    di
    inc b
    inc bc
    inc e
    inc bc
    cp $07
    cp $7F
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    add a
    ld a, c
    inc bc
    rst $38
    add [hl]
    ld a, e
    db $FD
    ld b, $C1
    ld a, $6C
    sub $F4
    rst $00
    db $FC
    add e
    ld a, [hl]
    add e
    cp e
    ld a, l
    ld a, l
    add d
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ei
    ld [bc], a
    inc bc
    ld b, $03
    cp $07
    db $FC
    rlca
    ld hl, sp-$71
    ld hl, sp-$71
    ldh a, [$DF]
    ld [hl], b
    jr nc, @-$5F

    rra
    adc $0F
    ret nz

    rrca
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    ld h, $C6
    ld b, c
    add hl, de
    ld sp, hl
    db $FC
    ld hl, sp-$04
    db $FC
    cp $C1
    cp $A2
    pop bc
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    cp $03
    cp $03
    rst $38
    ld bc, $9EE1
    ret nz

    rst $38
    ld h, c
    sbc $BF
    ld h, b
    add e
    ld a, h
    ld a, a
    add c
    ld a, a
    add e
    ld sp, $A0CE
    rst $18
    ldh a, [$6F]
    rst $38
    ld h, b
    rst $18
    ld [hl], b

jr_01E_616E:
    rst $18
    ld [hl], b
    ld b, b
    ret c

    ld h, c
    pop hl
    ld h, c
    ld h, c
    ld [hl-], a
    or d
    ccf
    cp a
    ld a, [hl]
    ld a, a
    cp $7F
    cp $FF
    push bc
    nop
    ld bc, $1084
    ldh [rP1], a
    ret nz

    nop
    add b
    add b
    nop
    ret nz

    nop
    ld h, e
    nop
    rst $38
    sbc a
    ldh a, [rIE]
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20

jr_01E_619A:
    ld a, a
    ldh [$DF], a
    ldh a, [$DF]
    ldh a, [$FE]
    cp $FD
    db $FD
    ei
    ei
    db $FC
    db $FC
    cp $FE
    db $FC
    db $FC
    ldh [$E0], a
    db $FC
    db $FC
    db $10
    ld a, [c]
    jr nz, jr_01E_619A

    ld hl, $23EF
    call z, $D41F
    ld [hl], e
    and b
    adc c
    ld [hl], b
    inc b
    ldh a, [rIE]
    rst $38
    cp $FE
    db $FC
    db $FC
    ld sp, hl
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$03
    db $FC
    db $FC
    db $FC
    nop
    rst $38
    add hl, sp
    and $CE
    pop af
    inc b
    ei
    ld [bc], a
    pop af
    ld bc, $80C2
    add d
    add b
    add c
    add b
    db $F4
    add h
    di
    ld b, d
    ld sp, hl
    adc h

jr_01E_61E7:
    ldh [rSCY], a
    sbc h
    nop
    ld a, [hl]
    ld bc, $03FE
    ld a, b
    db $FC
    rlca
    db $FC
    add a
    ld a, h
    rst $20
    jr nc, jr_01E_61E7

    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    sbc $7F
    db $E3
    ccf
    pop af
    ccf
    ld a, [hl]
    cp a
    ld a, $FF
    ld e, $FF
    inc e
    rst $38
    inc e
    rst $38
    ret nz

    ld a, a
    ld [hl], e
    sbc h
    ld a, h
    add e
    db $FC
    inc bc
    cp $09
    rst $28
    jr jr_01E_628C

    cp b
    rrca
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    rst $38
    ld bc, $81FF
    cp $53
    rst $38
    ld e, a
    pop hl
    cp a
    jp $C33E


    adc $F1
    pop hl
    or [hl]
    rst $08
    ld [hl], d
    sbc e
    db $E4
    add hl, de
    and $BC
    ld h, a
    cp $03
    rst $38
    ld a, c
    nop
    rst $38
    ld bc, $00FF
    rst $28
    add hl, bc
    rst $30
    jr @-$17

    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rTMA]
    adc a
    ld hl, sp+$0F
    db $FC
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc $00
    sbc $00
    adc h
    nop
    nop
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
    sbc $3F
    ldh [$1F], a
    pop af
    ld c, $FB
    nop
    rst $38
    nop
    rst $38

jr_01E_628C:
    nop
    rst $38
    nop
    rst $38
    adc a
    ld hl, sp-$79
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01E_629F:
    rst $38
    db $FC
    db $FC

jr_01E_62A2:
    cp $FE
    cp $FE
    rst $38
    rst $38
    cp $FE
    rst $38
    rst $38
    db $FC
    db $FC
    rst $38
    rst $38
    inc c
    ldh a, [$98]
    ld a, [c]
    ld a, h
    pop bc
    ld e, $C0
    rlca
    ldh [$03], a
    ldh a, [rSB]
    ld hl, sp+$00
    db $FC
    ld hl, sp-$05
    ldh a, [$F4]
    db $E4
    ldh [$82], a
    add l
    dec de
    nop
    ld h, b
    nop
    nop
    nop
    add b
    ld bc, $BE00
    ld b, b
    rra
    nop
    ld e, a
    jr z, jr_01E_629F

    inc d
    db $E3
    adc e
    ld [hl], b
    ld c, e
    jr nc, @+$47

    jr c, jr_01E_62A2

    ld e, $BE
    pop bc
    rst $38
    add b
    ld a, a
    ld h, c
    inc e
    rst $38
    add b
    ld a, a
    add c
    ld a, a
    rst $00
    ld a, a
    nop

jr_01E_62F1:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc e
    nop
    jr jr_01E_6304

jr_01E_6304:
    ld [$0000], sp
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
    di
    ld e, $FF
    ld e, $FF
    inc e
    rst $38
    add hl, bc
    rst $38
    ld bc, $01FF
    rst $38
    nop
    rst $38
    nop
    ld a, l
    ld [bc], a
    ld hl, sp+$00
    ld a, [$E314]
    jr z, jr_01E_62F1

    pop de
    ld c, $D2
    inc c
    and d
    inc e
    call c, $2823
    rst $10
    jr nz, @+$01

    ldh [$5F], a
    ret c

    rst $38
    ld b, $FF
    nop
    rst $38
    add c
    ld a, a
    push bc
    nop
    ld bc, $1084
    ldh [rP1], a
    ret nz

    nop
    add b
    add b
    nop
    ret nz

    nop
    ld h, e
    nop
    rst $38
    sbc a
    ldh a, [rIE]
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    ld a, a
    ldh [$DF], a
    ldh a, [$DF]
    ldh a, [$FC]
    ld bc, $0FF3
    rrca
    call c, Call_01E_689F
    rst $20
    ld [$0DE2], sp
    db $E4
    rrca
    jp hl


    ld e, $1F
    ldh [$CF], a
    ldh a, [$EF]
    jr nc, @-$31

    ld l, $9E
    ld b, c
    jr c, @-$37

    add hl, de
    rst $00
    jp hl


    inc d
    ret nz

    rlca
    nop
    ld a, a
    ld h, b
    rra
    ld b, b
    rra
    nop
    rrca
    ld [hl], b
    rrca
    add h
    inc bc
    add e
    nop
    and d
    inc e
    or d
    inc c
    ccf
    add b
    ccf
    add b
    ld e, a
    add b
    ld c, [hl]
    add b
    ret nz

    nop
    ret nz

    nop
    nop
    rst $00
    ld hl, sp-$0D
    inc b
    add hl, bc
    nop
    ld sp, hl
    inc b
    ld sp, hl
    ld e, $E1
    cp $E1
    rst $38
    nop
    pop hl
    ccf
    cp a
    ld h, b
    ld a, a
    ret nz

    ld a, h
    jp Jump_01E_463B


    add hl, de
    sbc d
    add c
    ld l, h
    call nz, $FE7E
    ld bc, $81FC
    dec a
    jp nz, $F0EE

    rst $30
    add hl, de
    rst $30
    add hl, bc
    rst $20
    dec c
    rrca
    inc a
    rra
    ldh [rIE], a
    db $10
    rst $38
    ld de, $139E
    inc e
    ld a, [c]
    dec e
    ldh a, [rNR33]
    ldh a, [$9C]
    ld a, [c]
    ld a, b
    cp [hl]
    inc sp
    db $EC
    ld h, a
    sub b
    ld l, a

jr_01E_63E7:
    sbc b
    dec h
    rst $18
    jr nc, @-$31

    ld a, e

jr_01E_63ED:
    ret nz

    rst $38
    db $EC
    nop
    ret nz

    nop
    jr nz, @+$42

    jr nz, jr_01E_6467

    add b
    adc b
    ld [hl], b
    inc b
    jr jr_01E_6401

    ld [$0C02], sp
    ld [hl], b

jr_01E_6401:
    rst $08
    ld a, b
    rst $00
    ld a, a
    ret nz

    rst $38
    ldh [$FD], a
    ld a, [$FF78]
    jr c, @+$01

    inc c
    ei
    cpl
    rst $18
    rst $08
    ccf
    rst $18
    ccf
    ld a, $FF
    cp a

jr_01E_6419:
    ld [hl], b
    ld [hl], b
    adc a
    jr nc, jr_01E_63ED

    jr c, jr_01E_63E7

    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr c, jr_01E_6419

    ccf
    db $E3
    ccf
    ldh a, [$3F]
    ldh a, [rNR44]
    rst $38
    rra
    rst $38
    ld e, $F3
    ld e, $F3
    ld a, $E3
    db $FC
    rst $10
    db $FC
    rla
    ld hl, sp+$2F
    ccf
    sbc $3F
    ldh [$1F], a
    pop af
    ld c, $FB
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    ld hl, sp-$79
    rst $38
    nop
    rst $38
    nop
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
    add a
    ret z

    rlca
    ret z

    rlca
    adc b

jr_01E_6467:
    rlca
    adc b
    rra
    add [hl]
    rra
    add a
    dec de
    add c
    jr c, jr_01E_6484

    jp hl


    dec bc
    ld hl, sp+$03
    db $FC
    add hl, bc
    db $FC
    db $10
    or $20
    rst $20
    ldh [$C7], a
    ldh [rTAC], a
    rst $00

jr_01E_6481:
    rst $38
    ld a, [hl]
    ei

jr_01E_6484:
    ld a, $F3
    ld a, [hl]
    jp $A7DC


    call c, $DC27
    scf
    adc b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    cp $FE
    di
    di
    db $FC
    db $FC
    jr nc, @+$11

    jr nz, jr_01E_64BC

    ld [$191F], sp
    ld c, $CF
    ld b, $CB
    nop
    push hl
    nop
    db $F4
    ld [bc], a
    ld b, $39
    inc hl
    inc e
    sub e
    inc c
    adc c
    ld b, $C9
    ld b, $44
    add e

jr_01E_64BC:
    ld h, d
    add c
    jr c, jr_01E_6481

    rrca
    db $FC
    rlca
    cp $87
    cp $8F
    ldh a, [rIE]
    ret nz

    rst $38
    adc a
    rst $38
    sbc b
    sbc a
    ret nc

    di
    sbc [hl]
    pop af
    sbc [hl]
    pop af
    sbc a
    ld [hl], b
    rst $18
    jr nc, @+$01

    add c
    ld a, a
    ld b, c
    cp a
    ld e, c
    rst $38
    rst $30
    ldh [rIE], a
    add sp, $77
    add sp, -$04
    ld h, h
    ld l, $F7
    ccf
    ei
    rra
    db $FD
    rrca
    cp $1C
    ldh [$3E], a
    ret nz

    ld a, a
    add c
    ei
    ld b, $FA
    rlca
    ei
    ld bc, $08F1
    ld l, h
    jr jr_01E_6520

    ld hl, sp+$1F
    ldh a, [$1F]
    ldh a, [$1F]
    ldh a, [rIF]
    db $FD
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    pop hl
    cp a
    di
    ld a, $FF
    inc c
    rst $38
    nop
    rst $38

jr_01E_6520:
    ccf
    ld hl, sp+$3F
    ldh a, [$3F]
    pop af
    inc a
    rst $30
    add hl, de
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    call c, $867F
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    call $F8FF
    rst $38

jr_01E_653C:
    pop af
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FD
    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_01E_6554:
    rst $38
    ld bc, $02FE
    db $FD
    ld [bc], a
    dec sp
    call nz, $14CF
    push af
    ld c, $FF

jr_01E_6561:
    jp $C3FF


    ld hl, sp-$71
    rst $20
    sbc b
    rst $28
    db $10
    rst $18
    jr c, jr_01E_6554

    db $10
    ld [c], a
    jr jr_01E_6561

    inc b
    pop af
    nop
    ld a, [c]
    ld bc, $C372
    add hl, de
    ret nz

    jr jr_01E_653C

    ld a, b
    ret nz

    ret c

    add b
    nop
    rst $38
    ld [$08F6], sp
    cp $08
    cp $10
    or $E8
    jp nz, $0318

    ld hl, sp+$03
    pop bc
    cp $81
    ld a, a
    add c
    ld a, a
    pop bc
    ld a, $F3
    rra
    rst $38
    add c
    rst $38
    add e
    ld a, [hl]
    add e
    call $CCFE
    or $D1
    rst $28
    db $EC
    sbc a
    ld a, [hl]
    or c
    ld a, $E1
    inc e
    jp $E301


    ld a, d
    nop
    call nz, $8408
    sbc l

jr_01E_65B6:
    add a
    cp d
    rst $38
    ld a, b
    ld sp, $1824
    ld b, d
    jr jr_01E_6602

    sbc a
    ret nz

    adc a
    ld h, b
    jr nc, jr_01E_65B6

    ld [hl], b
    rst $18
    ld a, b
    rst $18
    ld a, e
    rst $08
    ld [hl], e
    adc $77
    call nz, $D9A6
    ld h, $D8
    ld [hl], $D9
    scf
    ld sp, hl
    ld l, a
    cp b
    db $EB
    db $F4
    rst $30
    jr @+$01

    ld [$8FFD], sp
    ld a, [hl]
    rst $08
    ld e, $FF
    rrca
    rst $30
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00FF
    rst $38
    rst $28
    call $D9DF
    sbc $50
    call c, $E073
    xor e
    adc h
    rst $18
    halt
    adc a
    ei
    rrca
    rst $38
    rst $38

jr_01E_6602:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    db $FD
    cp $F8
    db $FD
    ei
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlc a
    nop
    di
    inc b
    db $E3
    inc e
    ld bc, $E0F7
    rst $38
    add sp, $77
    add sp, -$04
    ld h, h
    ld l, $F7
    ccf
    ei
    rra
    db $FD
    rrca
    db $FD
    inc e
    ldh [$3E], a
    ret nz

    ld a, a
    add c
    ei
    ld b, $FA
    rlca

jr_01E_663A:
    ei
    ld bc, $08F1
    ld l, h
    jr jr_01E_663A

    inc b
    ld sp, hl
    ld c, $F8
    rrca
    ldh a, [$1F]
    ldh a, [$3F]
    and $79
    rst $28
    ldh a, [$EF]
    ldh a, [$F5]
    ld c, $F6
    dec bc
    rst $30
    dec bc
    cpl
    jp $F31F


    rra
    di
    ccf
    pop hl
    rst $38
    ld h, c
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
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
    nop
    add h
    ld a, b
    ret z

    jr nc, jr_01E_66B5

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    add e
    ld a, b
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ldh [$1F], a
    ld hl, sp+$07
    db $FC
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nc, Jump_01E_520C

    adc h
    ld l, c

jr_01E_66B5:
    add [hl]
    dec sp
    call nz, $8076
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ret z

    cp c
    db $EC
    cp h
    ld l, [hl]
    db $FC
    ld l, a
    cp $3F
    cp $1F
    rst $38
    ld bc, $00FF
    di
    inc c
    rst $20
    inc e
    rra
    ld a, b
    rra
    ldh a, [$3F]
    ldh a, [$7F]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

jr_01E_66E7:
    ret nz

    nop
    nop
    ret nc

    ret nc

    ld b, $06
    ld hl, sp-$08
    di
    rrca
    ld h, a
    dec c
    add e
    ld a, $E1
    ccf
    ld hl, sp+$1F
    db $FC
    rrca
    cp $07
    rst $38
    ld bc, $C0C0
    ldh [$E0], a
    ld [bc], a
    ld [bc], a
    ld hl, sp-$08
    rst $38
    rst $38
    ld hl, sp-$08
    db $E4
    db $E4
    pop af
    pop af
    rst $38
    rst $38
    ld hl, sp-$08
    cp $FE
    db $FC
    db $FC
    ldh a, [$F0]
    ldh [$E0], a
    db $FC
    db $FC
    cp $FE
    ei
    adc a
    ld a, h
    rr [hl]
    db $FD
    rrca
    di
    ld h, e
    cp l
    add c
    rst $38
    ld bc, $84FE
    db $FD
    rst $28
    call $D9DF
    sbc $50
    call c, $E073
    xor e
    adc h
    rst $18
    halt
    adc a
    ei
    rrca
    rst $28
    ldh a, [$F7]
    ld hl, sp+$31
    ld a, h
    jr nz, jr_01E_66E7

    and b
    rra
    jr nz, @+$81

    ld [hl], e
    rst $28
    rst $08
    and $FF
    ld h, c
    rst $38
    ld b, c
    cp [hl]
    ld b, c
    ld a, a
    ld c, h
    ld a, a
    add d
    rst $38
    ret nz

    rst $38
    add c
    sbc [hl]
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld b, h
    ld b, h
    ld d, b
    ld d, b
    push de
    push de
    rst $18
    rst $18
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    sub b
    sub b
    add h
    add h
    inc d
    inc d
    ld e, [hl]
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    dec bc
    nop
    stop
    db $10
    ld [$1C23], sp
    jr nz, jr_01E_67AD

    jr nz, jr_01E_67AF

    ld hl, $42E1
    jp $C342


    ld b, l
    rst $00
    add l
    add a
    set 1, [hl]
    di
    cp $77
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1101
    ld de, $3030
    ld [hl+], a

jr_01E_67AD:
    ld [hl+], a
    ld l, [hl]

jr_01E_67AF:
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld de, $0011
    nop
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    xor e
    xor e
    ei
    ei
    rst $30
    or b
    ld a, [$7A99]
    dec bc
    ld a, [hl-]
    rst $08
    ld b, $D5
    ld sp, $6EFB
    pop af
    rst $18
    ldh a, [rIF]
    pop hl
    inc bc

jr_01E_67D3:
    ld a, [$FC0F]
    rra
    ldh a, [$7F]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call nz, $38C4
    jr c, jr_01E_67D3

    xor $F0
    ldh a, [$E3]
    db $E3
    cp $FE
    db $FC
    db $FC
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld [$6008], sp
    ld h, b
    jp nz, $00C2

    nop
    ld d, b
    ld h, b
    inc h
    jr c, jr_01E_6819

    inc e
    ld a, [de]
    inc e
    add hl, bc
    ld c, $09
    ld c, $0C
    rrca
    ld c, h
    ld [hl], h
    ld e, [hl]
    ld h, d
    dec hl
    dec [hl]
    ld [hl], $39
    add hl, sp

jr_01E_6819:
    ld [hl], $34
    dec sp
    add hl, sp
    ld a, $3C
    dec sp
    ret nz

    ret nz

    ld h, b
    ld h, b
    db $10
    stop
    nop
    nop
    nop
    add h
    add h
    inc b
    add h
    add h
    inc b
    ld c, h
    ld [hl], b
    ld d, h
    ld l, b
    ld c, b
    ld [hl], h
    ld d, h
    ld l, h
    ld b, b
    ld a, b
    and b
    ret c

    adc b
    ld hl, sp-$40
    ldh a, [rP1]
    jr nz, jr_01E_6863

    jr nc, jr_01E_6855

    jr jr_01E_6857

    jr jr_01E_6851

    ld [$1818], sp
    db $10
    db $10
    ld [$5C08], sp

jr_01E_6851:
    ld [hl], h
    ld h, [hl]
    ld a, [hl]
    dec hl

jr_01E_6855:
    ccf
    dec [hl]

jr_01E_6857:
    ccf
    ld a, $3F
    dec d
    rla
    ld a, $3E
    ld a, [bc]
    ld a, [bc]
    adc b
    adc b
    ld c, b

jr_01E_6863:
    ld c, b
    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    db $10
    stop
    nop
    ld c, h
    ld [hl], b
    ld d, h
    ld l, b
    ld c, h
    ld [hl], b
    xor b
    db $F4

jr_01E_6878:
    call c, $B0EC
    ld hl, sp-$78
    cp b
    ld l, b
    ld hl, sp+$00
    nop
    inc bc
    inc bc
    ld b, $07
    nop
    rrca
    dec bc
    ld a, [de]
    jr jr_01E_6894

    inc d
    inc c
    ld [de], a
    ld c, $00
    nop
    add b
    add b

jr_01E_6894:
    ld b, b
    ret nz

    jr nz, jr_01E_6878

    sub b
    ld [hl], b
    ret z

    cp b
    jr nc, jr_01E_68C6

    inc d

Call_01E_689F:
    inc e
    inc b
    inc bc
    dec b
    inc bc
    ld bc, $0207
    rlca
    inc bc
    rlca
    dec b
    rlca
    ld b, $06
    dec bc
    dec bc
    adc b
    adc b
    inc b
    add h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    ld [$0808], sp
    ld [$0404], sp
    call c, Call_01E_6ADC
    ld l, d
    ld d, h
    ld d, h

jr_01E_68C6:
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld [$0008], sp
    nop
    db $10
    db $10
    jr jr_01E_68EA

    inc e
    inc e
    jr z, jr_01E_68FE

    inc d
    inc d
    db $10
    db $10
    jr z, @+$2A

    nop
    nop
    db $10
    db $10
    ld e, $1E
    inc d
    inc d
    ld l, $2E
    inc d
    inc d
    add hl, hl
    add hl, hl

jr_01E_68EA:
    inc b
    inc b
    jr nz, @+$22

    nop
    nop
    ld c, h
    ld c, h
    inc b
    inc b
    ld c, h
    ld c, h
    ld [$0008], sp
    nop
    ld [$0008], sp
    nop

jr_01E_68FE:
    nop
    nop
    inc b
    ld b, $1A
    ld e, $24
    inc l
    db $10
    db $10
    jr nz, @+$22

    ld b, b
    ld b, b
    ld bc, $0101
    ld bc, $3F34
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, a
    rst $38
    rst $38
    cp $FE
    or [hl]
    cp $DC
    db $FC
    xor b
    ld hl, sp-$7C
    inc b
    inc b
    add h
    adc h
    adc h
    inc c
    inc c
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    and b
    ret nc

    sub b
    ldh [$F0], a
    ret nz

    ret c

    add sp, -$30
    add sp, -$58
    ldh a, [$C8]
    ldh a, [$B0]
    ld hl, sp+$10
    stop
    nop
    db $10
    db $10
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
    inc h
    inc h
    db $10
    db $10
    and b
    and b
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
    ld bc, $4101
    ld b, c
    nop
    ld b, b
    ld b, c
    ld h, c
    ld h, b
    ld h, b
    jr nz, jr_01E_698C

    nop
    nop
    nop
    nop
    ld d, b
    ld [hl], b
    ret nz

    ret nz

    and b
    ldh [rLCDC], a
    ld b, b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add hl, bc
    rlca
    add hl, bc
    rlca
    ld [$0807], sp
    rlca
    ld [$0507], sp
    inc bc

jr_01E_698C:
    inc b
    inc bc
    dec b
    inc bc
    ld [$040C], sp
    inc b
    nop
    nop
    add b
    add b
    nop
    add b
    nop
    add b
    inc b
    add h
    nop
    add b
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
    ld [$0808], sp
    ld [$1010], sp
    nop
    nop
    db $10
    db $10
    inc d
    inc d
    ld [$2808], sp
    jr z, jr_01E_69B7

jr_01E_69B7:
    nop
    jr nz, @+$22

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    jr z, jr_01E_69EC

    ld d, b
    ld d, b
    ld [$2008], sp
    jr nz, @+$0A

    ld [$1010], sp
    inc b
    inc b
    add hl, bc
    rlca
    ld d, $0E
    ld [$0018], sp
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    inc bc
    inc bc
    inc b
    inc b
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a

jr_01E_69EC:
    nop
    nop
    nop
    nop
    adc h
    adc a
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $030C
    ld bc, $2301
    inc hl
    ld hl, $6221
    ld b, d
    ld h, c
    ld b, c
    ld d, e
    ld [hl], e
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    nop
    ldh a, [rNR10]
    ldh a, [$B0]
    ldh a, [$C1]
    pop hl
    and d
    db $E3
    ld b, b
    ld b, e
    call nz, Call_01E_40C7
    ld b, a
    nop
    nop
    jr nz, jr_01E_6A44

    add b
    ret nz

    ld b, b
    ret nz

    nop
    add b
    add b
    nop
    add h
    add h
    inc b
    inc b
    ldh [$F8], a
    xor b
    cp b
    ld e, b
    ld a, b
    ld l, b
    ld l, b
    ld e, b
    ld e, b
    db $10
    db $10
    jr nz, @+$22

    ld [$0008], sp
    nop
    inc b
    nop

jr_01E_6A44:
    ld [$0800], sp
    nop
    ld [$2810], sp
    jr nc, @+$2A

    jr nc, jr_01E_6A77

jr_01E_6A4F:
    jr nc, jr_01E_6A51

jr_01E_6A51:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$100C], sp
    jr @+$32

    jr c, jr_01E_6A7E

    ld sp, $6070
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    ret nz

    add b
    add b
    db $10
    ld l, $0A
    ld b, l
    nop
    stop
    db $10
    ld [$0C18], sp

jr_01E_6A77:
    inc e
    ld b, $0E
    ld b, $0E
    rlca
    rrca

jr_01E_6A7E:
    rrca
    adc a
    nop
    nop
    nop
    nop
    ld bc, $0702
    dec bc
    ld c, $1E
    ld [$4028], sp
    ld h, b
    ld h, b
    ld [hl], b
    nop
    nop
    ld b, b
    ldh a, [$E0]
    jr c, jr_01E_6A4F

    sbc h
    inc e
    inc c
    ld b, $0A
    ld [bc], a
    ld bc, $0000
    ld b, b
    ld h, b
    jr z, jr_01E_6ADC

    ld [de], a
    ld e, $09
    ld c, $08
    rrca
    dec b
    ld b, $04
    ld b, a
    ld b, d
    ld b, e
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    add c
    add e
    and c
    ld h, c
    ld d, b
    or c
    add sp, $18
    ldh a, [$88]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add d
    jp nz, Jump_01E_45C5

    res 1, d
    add [hl]
    nop
    nop
    nop
    nop
    ld b, $1E
    db $10
    ldh a, [$60]
    ldh [$80], a
    add b

Call_01E_6ADC:
jr_01E_6ADC:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1F3F
    ld h, b
    ldh a, [rNR10]
    sub l
    rst $38
    ld l, c
    rst $18
    and a
    rst $38
    jp c, $F6FE

    cp $FC
    db $FC
    or h
    or h
    call c, Call_01E_58DC
    ld l, b
    ld e, b
    ld h, b
    inc l
    inc [hl]
    inc l
    jr nc, jr_01E_6B2F

    ld a, [hl-]
    ld h, $38
    ld h, $38
    inc de
    dec e
    adc c
    adc [hl]
    ld b, c
    ld c, [hl]
    add e
    adc l
    ld [bc], a
    inc c
    sub d
    sbc h
    inc d
    ld a, [de]
    ld [de], a
    inc e
    inc de
    dec e
    ld b, $06
    ld b, $04
    ld b, $04
    dec b
    rlca
    dec d
    ld d, $33
    ld [hl-], a
    ld [hl-], a
    inc sp
    ld [hl-], a

jr_01E_6B2F:
    inc sp
    inc d
    inc d
    ld [$0808], sp
    ld [$0000], sp
    inc b
    inc b
    add b
    add b
    adc b
    ld [$40C0], sp
    jr z, jr_01E_6B72

    jr z, jr_01E_6B74

    inc b
    jr jr_01E_6B5B

    jr @+$16

    jr jr_01E_6B5F

    jr jr_01E_6B61

    jr jr_01E_6B59

    inc c
    jr nc, @+$62

    and c
    ldh a, [$72]
    db $E3
    and e
    ld [hl], c
    ld h, e

jr_01E_6B59:
    pop af
    or b

jr_01E_6B5B:
    ld a, [$7A72]
    ld c, b

jr_01E_6B5F:
    ld e, b
    ld h, l

jr_01E_6B61:
    ld [c], a
    and l
    and d
    call nz, $85C3
    add d
    inc b
    inc bc
    dec b
    ld [bc], a
    ld [$0A07], sp
    rlca
    inc bc
    rst $00

jr_01E_6B72:
    and c
    ld h, l

jr_01E_6B74:
    rst $00
    daa
    jp $8627


    ld h, [hl]
    ld b, l
    and l
    add [hl]
    and $42
    ld [c], a
    jr nc, jr_01E_6BA2

    jr c, jr_01E_6BB4

    inc e
    jr @+$1E

    ld e, $0C
    dec c
    ld b, $06
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
    ld [$0004], sp
    add b
    inc b
    add $42
    ld [bc], a
    add $42
    ld b, e

jr_01E_6BA2:
    ld hl, $2121
    ld hl, $2030
    jr nz, @+$32

    jr z, jr_01E_6BDC

    jr z, jr_01E_6BDE

    jr nz, @+$3A

    ld [hl], h
    call z, $D428

jr_01E_6BB4:
    ld d, d
    xor $BC
    ld [$F6AC], a
    ld e, e
    ld [hl], a
    ld e, e
    ld a, a
    dec hl
    ccf
    adc d
    sub [hl]
    inc e
    inc b
    inc d
    inc c
    inc b
    inc a
    inc d
    inc a
    jr z, @+$3A

    jr jr_01E_6C06

    db $10
    jr jr_01E_6BD2

    nop

jr_01E_6BD2:
    nop
    nop
    inc b
    rlca
    rla
    jr @+$30

    ld sp, $221D

jr_01E_6BDC:
    ld d, d
    ld l, l

jr_01E_6BDE:
    jr z, jr_01E_6C37

    add c
    add c
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$3C]
    db $FC
    ld h, d
    ldh [$C7], a
    add $8C
    adc a
    dec l
    ccf
    ccf
    ccf
    dec l
    ccf
    rra
    rra
    dec d
    dec e
    ld c, $0E
    ld d, $16
    inc l

jr_01E_6BFF:
    inc l
    dec d
    ld a, [de]
    add hl, de
    ld e, $11
    rra

jr_01E_6C06:
    ld b, $0D
    ld a, [bc]
    rrca
    inc c
    ld c, $0E
    ld c, $1A
    ld e, $13
    inc e
    dec d
    ld a, [de]
    add hl, de
    ld e, $09
    ld c, $09
    ld c, $08
    rrca
    dec c
    ld c, $04
    rlca
    ld [de], a
    inc de
    ld [de], a
    inc de
    add d
    add e
    sub c
    ld de, $0181
    add c
    ld bc, $41C1
    pop bc
    ld bc, $8040
    ret nz

    nop
    and b
    ld h, b
    ld b, b

jr_01E_6C37:
    and b
    ld h, d
    add d
    ld b, h
    and h
    ld h, $C6
    ld b, d
    ld [c], a
    ld c, $0C
    dec b
    ld b, $05
    ld b, $05
    ld b, $03
    ld b, $04
    rlca
    ld [bc], a
    ld b, $01
    inc bc
    jr c, jr_01E_6C8E

    inc h
    inc l
    jr jr_01E_6C8E

    ld l, h
    ld l, h
    db $10
    jr jr_01E_6BFF

    inc h
    sbc b
    jr jr_01E_6C87

    xor b
    dec e
    rrca
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, $7E
    ld a, [hl]
    cp $7C
    db $FC
    db $F4
    db $F4
    add [hl]
    add $C2
    jp nz, $8080

    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    jr nz, jr_01E_6C9C

    jr nc, jr_01E_6CAE

    jr z, jr_01E_6CA8

    ld bc, $0100
    ld bc, $0102
    inc bc

jr_01E_6C87:
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra

jr_01E_6C8E:
    ld a, [bc]
    ld a, [bc]
    ld h, $E6
    ld [hl+], a
    and $A6
    and $42
    jp nz, $8686

    inc b
    inc b

jr_01E_6C9C:
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_01E_6CD2

    jr nc, @+$3A

    jr nz, jr_01E_6CCE

    jr c, @+$3A

jr_01E_6CA8:
    inc l
    inc l
    inc d
    inc d
    inc c
    inc c

jr_01E_6CAE:
    jr jr_01E_6CC8

jr_01E_6CB0:
    jr jr_01E_6CEA

    ld [$1818], sp
    jr @+$32

    jr nc, @+$03

    ld hl, $1111
    jr nz, jr_01E_6CDE

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01E_6CC8:
    nop
    nop
    ld b, b
    ld b, b
    or b
    ld [hl], b

jr_01E_6CCE:
    add sp, -$28
    inc a
    inc [hl]

jr_01E_6CD2:
    inc e
    jr jr_01E_6CE3

    ld a, [bc]
    ld b, $04
    ld b, $04
    inc b
    ld b, $06
    ld [bc], a

jr_01E_6CDE:
    adc d
    ld c, $6C
    and h
    or h

jr_01E_6CE3:
    call z, $F8C8
    ldh a, [$F0]
    nop
    nop

jr_01E_6CEA:
    ret nz

    nop

jr_01E_6CEC:
    jr nz, jr_01E_6CB0

    sub b
    ldh [$C0], a
    ldh a, [$78]
    ld [hl], b
    ld [hl], b
    ld a, b
    jr z, jr_01E_6D30

    jr nc, jr_01E_6D2A

    ld [hl+], a
    ld [hl+], a
    db $10
    db $10
    inc b
    inc b
    inc e
    inc e
    inc e
    inc e
    jr z, jr_01E_6D3E

    jr c, jr_01E_6D40

    jr z, jr_01E_6D42

    jr nc, jr_01E_6D34

    ld de, $6131
    ld d, c
    inc b
    rlca
    ld b, $07
    ld b, d
    ld b, e
    ld [bc], a
    ld b, e
    add e
    add e
    add e
    add e
    ld bc, $1191
    ld de, $00C0
    ld b, b
    add b
    ld h, b
    and b
    ld h, b
    add b
    jr nz, jr_01E_6CEA

jr_01E_6D2A:
    jr nz, jr_01E_6CEC

    and b
    ret nz

    and b
    ret nz

jr_01E_6D30:
    add h
    and $44
    ld h, [hl]

jr_01E_6D34:
    and [hl]
    and $44
    ld b, [hl]
    and $E6
    and d
    and d
    add b
    ret nz

jr_01E_6D3E:
    ld b, d
    ld b, d

jr_01E_6D40:
    ld d, d
    ld [hl], e

jr_01E_6D42:
    ld [hl+], a
    inc sp
    ld h, e
    ld [hl], d
    ld d, h
    ld d, a
    dec h
    ld [hl], $55
    ld d, [hl]
    ld d, l
    ld d, [hl]
    dec h
    ld h, $21
    ld hl, $3121
    ld de, $1011
    jr jr_01E_6D69

    jr jr_01E_6D73

    inc e
    sbc b
    sbc h
    adc b
    inc c
    sub b
    ldh a, [$90]
    ldh [$C0], a
    ldh a, [$F0]
    ldh [$A0], a

jr_01E_6D69:
    ldh a, [$75]
    halt
    ld [hl], c
    ld [hl], c
    jr nz, jr_01E_6DA0

    add b
    add b
    ld b, b

jr_01E_6D73:
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    and b
    or b
    ret nc

    dec d
    ld d, $22
    inc hl
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld de, $0111
    ld bc, $0000
    ld b, b
    ld b, b
    sbc h
    ld e, $DC
    ld e, [hl]
    jp z, $EE0E

    cpl
    ld h, l
    add a
    scf
    rst $10
    or e
    jp $E999


jr_01E_6DA0:
    jr nc, jr_01E_6DD2

    jr jr_01E_6DBC

    jr nc, @+$3A

    jr jr_01E_6DC0

    jr z, jr_01E_6DD2

    nop
    add b
    xor b
    xor b
    sub b
    sub b
    ld d, b
    ld h, b
    ld e, b
    ld l, b
    jr z, jr_01E_6DE6

    jr z, jr_01E_6DE8

    inc h
    inc a
    jr z, jr_01E_6DF0

jr_01E_6DBC:
    inc l
    jr nc, jr_01E_6E03

    ld a, b

jr_01E_6DC0:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [de], a
    ld bc, $0122
    inc h
    inc bc
    inc b
    nop

jr_01E_6DD2:
    ld [$1000], sp
    ld [$1808], sp
    inc e
    inc e
    inc d
    inc d

jr_01E_6DDC:
    ld [$0408], sp
    add h
    ld bc, $0706
    ld [$1609], sp

jr_01E_6DE6:
    nop
    rra

jr_01E_6DE8:
    rra
    jr nz, jr_01E_6E0B

    ld b, b
    ld b, b
    nop
    ld b, b
    add b

jr_01E_6DF0:
    nop
    nop
    ret nz

    jr nz, jr_01E_6E65

    adc b
    jr jr_01E_6DDC

    add h
    ld a, d
    ld hl, sp-$79
    rrca
    ld [$0101], sp
    nop
    nop
    nop

jr_01E_6E03:
    nop
    nop
    nop
    jr nc, jr_01E_6E14

    inc c
    inc bc
    inc bc

jr_01E_6E0B:
    nop
    ld b, b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_01E_6E14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld h, b
    ld b, b
    jr nc, jr_01E_6E45

    inc bc
    ld b, h
    inc hl
    ld b, h
    inc hl

jr_01E_6E26:
    ld b, [hl]
    inc hl
    ld b, d
    ld hl, $2041
    ld b, b
    ld sp, $3040
    ld [bc], a
    add d
    add b
    ret nz

    jr nc, jr_01E_6E26

    ld e, b
    ld hl, sp-$4C
    db $F4
    ld l, b
    add sp, -$4C
    or h
    ld l, b
    add sp, -$48
    jr c, @-$16

    ld l, b
    db $FC

jr_01E_6E45:
    ld a, h
    db $FC
    ld a, h
    or [hl]
    ld a, [hl]
    rst $38
    cp a
    ld e, l
    ccf
    ld h, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], l
    ld a, a
    ld e, $1F
    inc bc
    jp $F880


    nop
    nop
    inc bc
    inc bc
    rra

jr_01E_6E65:
    rra
    ld [hl], e
    adc a
    inc a
    jp $B5EB


    call nz, Call_01E_79FF
    ld a, [hl]
    jr nz, @+$12

    sub b
    adc b
    add sp, -$20
    add sp, -$20
    ret nc

    ret z

    ld h, b
    ret nc

    ret nz

    add b
    add b
    nop
    ld b, b
    jr nc, jr_01E_6ED3

    jr c, jr_01E_6EAD

    jr @+$26

    inc e
    inc [hl]
    inc e
    inc l
    inc a
    ld a, [de]
    ld a, [de]
    ld e, $1E
    jr nz, jr_01E_6EB2

    ld b, b
    ld b, b
    inc hl
    inc hl
    rlca
    rlca
    rrca
    rrca
    rlca
    rra
    inc de
    cpl
    dec a
    ld b, a
    add hl, hl
    rra
    jr nc, jr_01E_6ED3

    add hl, de
    rla
    adc [hl]
    adc c
    db $E3
    ld [c], a
    ld hl, sp-$08
    ret nz

jr_01E_6EAD:
    ldh a, [rP1]
    ret nz

    sbc b
    ld h, a

jr_01E_6EB2:
    rst $30
    ld [$807F], sp
    ld h, $D9
    pop bc
    ld a, $70
    ld c, a
    ld e, $11
    inc bc

jr_01E_6EBF:
    ld [bc], a
    ld b, $08
    nop
    ldh [$E0], a
    jr jr_01E_6EBF

    inc b
    db $FC
    ld [bc], a
    ld e, $E1
    ld l, $D1
    rla
    add sp, $00
    inc c
    inc b

jr_01E_6ED3:
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0003
    add e
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    inc b
    inc b
    ld [$1008], sp
    ld de, $0908
    nop
    ld bc, $0908
    ld a, [hl-]
    ld b, a
    ld [hl], d
    adc h
    ld h, h
    sbc b
    ld d, h
    xor b
    inc h
    ret c

    adc b
    ld [hl], b
    ld l, b
    ret nc

    ld [$8BF0], sp
    ld [hl], h
    jp Jump_01E_45BC


    ld a, $40
    ccf
    ld l, c
    ld e, a
    inc h
    rra
    inc de
    ccf
    dec e
    ccf
    ld [bc], a
    add a
    nop
    add a
    add b
    rst $00
    ld b, d
    add $40
    add $C4
    adc $C2
    adc $46
    ld c, [hl]
    nop
    ld bc, $0909
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    adc b
    ldh a, [$08]
    ldh a, [$A8]
    ldh a, [rOBP0]
    ldh a, [$D8]
    ldh a, [$A0]
    ld hl, sp-$30
    ldh a, [$F0]
    ldh a, [$0A]
    ld a, [bc]
    ld b, $06
    ld de, $0811
    ld [$0404], sp
    ld bc, $0001
    nop
    nop
    nop
    and b
    or b
    ld [hl], b
    ld [hl], b
    and b
    and b
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
    dec de
    ccf
    rra
    ccf
    rla
    scf
    ld c, $1E
    dec bc
    dec de
    dec c
    dec e
    ld b, $16
    dec c
    dec c
    jp z, $4CCE

    call z, $C6C6
    adc h
    adc h
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    adc b
    adc b
    inc b
    inc b
    ld a, [bc]
    ld a, [de]
    dec b
    dec b
    ld b, $06
    add hl, bc
    add hl, bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0408], sp
    inc b
    nop
    nop
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
    ld b, b
    ret nz

    add [hl]
    add [hl]
    inc de
    dec de
    ld l, h
    ld l, a
    ld [hl-], a
    dec a
    dec d
    ld d, $77
    ld a, b
    dec hl
    inc l
    ld [bc], a
    inc bc
    sub c
    sub c
    ld a, [hl-]
    ld a, d
    inc b
    db $EC
    ld d, b
    ld d, b
    call z, $AC2C
    ld e, h
    add h
    and h
    ld a, a
    ld a, h
    dec bc
    ld a, [bc]
    dec sp
    inc [hl]
    add hl, hl
    ld l, $14
    dec d
    dec c
    ld c, $82
    add d
    ld b, b
    ret nz

    ret c

    jr c, jr_01E_701F

    call c, $3CDC
    and b
    and b
    cp b
    ld a, b
    ld c, b
    add sp, $71
    ld [hl], c
    ld [bc], a
    inc bc
    nop
    nop
    jr nc, jr_01E_6FE4

jr_01E_6FE4:
    jr c, @+$72

    inc e
    ld a, b
    inc e
    ld a, b
    inc c
    jr c, jr_01E_6FF5

    db $10
    ld [$0000], sp
    nop
    ld [bc], a
    ld b, $86

jr_01E_6FF5:
    inc c
    ld c, h
    inc a
    inc a
    jr jr_01E_7013

    nop
    ret nz

    ld b, b
    add b
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
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop

jr_01E_7013:
    nop
    ld bc, $0602
    add hl, bc
    dec de
    daa
    cpl
    ld e, a
    rst $18
    ccf
    ld a, a

jr_01E_701F:
    rst $38
    inc bc
    inc b
    inc a
    ld b, e
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
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    nop

jr_01E_7037:
    rst $38
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
    db $10
    rrca
    ld h, h
    add e
    add hl, bc
    ldh a, [rSC]
    db $FC
    ld bc, $00FE
    rst $38
    nop
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
    ld a, a
    ld b, b
    ccf
    and b
    rra
    ld d, b
    adc a
    jr z, jr_01E_7037

    nop
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
    ld [hl], a
    rrca
    cp a
    ld a, a
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
    ld a, a
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
    ld bc, $0201
    ld [bc], a
    dec b
    ld b, $09
    dec bc
    rla
    ld d, $2F
    cpl
    ld e, a
    ld e, a
    cp a
    cp e
    ld a, a
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $04FE
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
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
    nop
    nop
    nop
    ld [$0107], sp
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ccf
    jr nz, jr_01E_7107

    nop
    rra
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    db $10
    rst $20
    inc b
    di
    ld [$02F3], sp
    ld sp, hl
    inc b
    ld sp, hl
    nop
    db $FD
    ld bc, $02FC
    db $FC
    dec b
    inc bc
    rlca
    dec bc
    dec bc
    rla
    rla

jr_01E_7107:
    rrca
    ld a, [de]
    cpl
    cpl
    rra
    dec sp
    ld e, a
    ld e, a
    ccf
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rSB]
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    nop
    ld a, a
    nop
    db $FC
    nop
    pop hl
    ld bc, $0F8F
    rra
    rra
    nop
    ldh [rP1], a
    rst $38
    cp $00
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    cp $FE
    ldh a, [$F1]
    nop
    rrca
    nop
    rst $38
    nop
    rrca
    add b
    rra
    ret nz

    rra
    nop
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $02
    db $FC
    ld [hl], l
    ccf
    ld l, a
    cp a
    cp a
    ld a, a
    xor e
    ld a, a
    xor a
    ld a, a
    sub [hl]
    ld a, a
    sub a
    ld a, a
    adc e
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    cp $FF
    ld hl, sp-$01
    ret nz

    rst $38
    ld bc, $0EFF
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FC
    db $FD
    nop
    db $FD
    inc b
    ld sp, hl
    ld [bc], a
    ld sp, hl
    nop
    ei
    ld [$04F3], sp
    di
    ld d, d
    dec l
    add hl, sp
    ld b, $2C
    inc de
    ld e, $01
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    db $10
    rst $28
    call z, $F333
    inc c
    db $FC
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FD
    dec b
    ld a, [$E41B]
    daa
    ret c

    db $10
    rst $20
    ld c, b
    and a
    and b
    ld c, a
    ld h, b
    adc a
    ret nc

    rrca
    add b
    rra
    and b
    rra
    nop
    ccf
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    ld [hl+], a
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01E_722A

jr_01E_722A:
    jr nc, jr_01E_722C

jr_01E_722C:
    jr z, jr_01E_723E

    inc a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop

jr_01E_723D:
    nop

jr_01E_723E:
    nop
    nop
    rrca
    ldh a, [$F0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
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
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$00
    inc h
    jp $08D7


    or b
    nop
    add a
    nop
    ld e, a
    nop
    ccf
    nop
    nop
    rst $38
    rra
    nop
    inc h
    jp $10EB


    dec c
    nop
    db $E4
    nop
    ld a, [$FC00]
    nop
    rst $18
    jr nz, jr_01E_72C1

    ret nz

    db $FC
    nop
    ld sp, hl
    nop
    reti


    jr nz, jr_01E_723D

    ld b, c
    ld h, h
    inc bc
    inc c
    inc bc
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FD
    dec b
    ld a, [$FE3D]
    db $FD
    cp $FD
    cp $FA
    db $FD

jr_01E_72A8:
    ld a, [$FAFC]
    db $FC
    db $F4
    ld a, [$F8F4]
    cpl
    db $10
    ld a, $01
    dec l
    ld [de], a
    ld a, $01
    dec l
    ld [de], a
    ld a, $01
    dec l
    ld [de], a
    ld a, $01
    nop

jr_01E_72C1:
    nop
    add b
    nop
    ld h, b
    add b
    jr jr_01E_72A8

    ld b, $F8
    ld bc, $00FE
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
    add b
    nop
    ld [hl], b
    add b
    rrca
    ldh a, [rNR23]
    rlca
    jr nc, @+$11

    jr nz, jr_01E_7305

    jr nz, jr_01E_7307

    jr nz, jr_01E_7309

    ld hl, $221E
    dec e
    dec h
    ld a, [de]
    add sp, -$0C
    add sp, -$10
    ret nc

    add sp, -$30
    ldh [$A0], a
    ret nc

    and b
    ret nz

    ld b, b
    and b
    add b
    ld b, b
    jp nc, Jump_01E_413F

    cp a
    ld h, d

jr_01E_7305:
    rra
    ld h, c

jr_01E_7307:
    rra
    ld [hl+], a

jr_01E_7309:
    ld e, a
    ld sp, $100F
    rrca
    ld [$0007], sp
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $FD
    cp $FD
    cp $FA
    db $FD
    db $F4
    ld a, [$F4E8]
    ret nc

    add sp, -$60
    ret nc

    ld b, b
    and b
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
    nop
    nop
    nop
    ccf
    rst $38
    rra
    rst $38
    rlca
    ld a, a
    ld bc, $001F
    rlca
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
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rrca
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
    ccf
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01E_7396:
    rst $38
    rst $38
    rst $38

jr_01E_7399:
    rst $38
    db $FC
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp-$04
    rst $38
    ld hl, sp-$01
    ldh a, [$FE]
    ret nz

    db $FC
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ret nz

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

jr_01E_73BF:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
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
    jr nz, jr_01E_73BF

    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld b, $09
    add hl, de
    daa
    daa
    ld e, a
    ld e, h
    cp a
    ld b, $09
    add hl, sp
    ld b, a
    rst $00
    ccf
    inc a
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld bc, $E0FF
    rra
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    inc bc
    add c
    ld a, a
    ld [hl], b
    adc a
    ld b, a
    jr nz, jr_01E_7396

    ld b, b
    add hl, de
    add b
    jr nc, jr_01E_7399

    jr nc, jr_01E_741A

jr_01E_741A:
    ld [hl], b
    nop
    ld h, b
    nop
    ld b, b
    jr nz, jr_01E_741A

    ld b, $E6
    add hl, de
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc b
    ld h, a
    ld h, d
    sbc a
    add h
    ld a, a
    ld [de], a
    rst $38
    adc e
    ld a, a
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    sbc a
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    jr nz, jr_01E_7461

    jr nz, jr_01E_7463

    jr nz, jr_01E_7465

    jr nz, jr_01E_7467

    jr nz, @+$21

    jr nz, jr_01E_746B

    jr nz, jr_01E_746D

    jr nz, @+$21

    inc b
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    sbc a

jr_01E_7461:
    rst $38
    ld h, b

jr_01E_7463:
    rst $38
    sbc a

jr_01E_7465:
    rst $38
    ld a, a

jr_01E_7467:
    rst $38
    ldh [rIE], a
    sbc a

jr_01E_746B:
    rst $38
    ld a, a

jr_01E_746D:
    rst $38
    ldh [rIE], a
    jr nz, jr_01E_7491

    jr nz, jr_01E_7493

    jr nz, jr_01E_7495

    jr nz, jr_01E_7497

    jr nz, jr_01E_7499

    ld hl, $221E
    dec e
    dec h
    ld a, [de]
    inc b
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    inc de
    db $FC
    inc a
    jp $3CC3


    sbc a

jr_01E_7491:
    rst $38
    ld h, b

jr_01E_7493:
    rst $38
    sbc a

jr_01E_7495:
    rst $38
    ld a, a

jr_01E_7497:
    rst $38
    ret nz

jr_01E_7499:
    rst $38
    rra
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ld h, b
    nop
    ld h, b
    jr nz, jr_01E_74E6

    ld [hl], b

jr_01E_74A7:
    nop
    or c
    nop
    ld sp, $9B80
    ld b, b
    ld h, a
    add b
    inc a
    jp $3CC3


    ccf
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01E_74CF:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    inc bc
    di
    inc c
    db $EC
    db $10
    pop de
    inc hl
    and a
    ld c, a
    db $FD
    ld [bc], a
    and $18
    jr c, jr_01E_74A7

jr_01E_74E6:
    jp $1F07


    ccf
    ld a, [hl]
    rst $38
    ldh a, [$FC]
    add b
    ldh [$E0], a
    nop
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$F8], a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec bc
    ld d, $17
    ld l, $2D
    ld e, [hl]
    ld e, c
    cp [hl]
    nop

jr_01E_7511:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0E11
    ld c, b
    scf
    nop

jr_01E_7521:
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0200
    ld bc, $0205
    ld [$1207], sp
    inc c
    inc h
    jr jr_01E_7585

    jr nc, jr_01E_74CF

    ld h, b
    jr nz, jr_01E_7521

jr_01E_7542:
    add h
    ld a, b
    ld hl, $87C0
    inc bc
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ld b, b
    add b

jr_01E_7552:
    ccf
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
    ld bc, $0201
    ld [bc], a
    dec b
    dec b
    dec bc
    dec bc
    rla
    ld d, $2F
    inc l

jr_01E_756D:
    ld e, a
    ld e, b
    cp a
    ld c, [hl]
    jr nc, jr_01E_7511

    ld h, b
    ld a, $C0
    ld a, [hl]
    add b
    cp $00
    ld a, [$F604]
    ld [$14EA], sp
    jr nz, jr_01E_7542

    add c
    ld b, b
    ld b, d

jr_01E_7585:
    add b
    add hl, bc
    add b
    xor e
    nop
    dec l
    nop
    ld l, l
    nop
    ld l, l
    nop
    rra
    rra
    rra
    rra
    ld e, a
    rra
    cpl
    rrca
    ld l, a
    rrca
    or a
    rlca
    cp e
    inc bc
    db $DD
    ld bc, $0100
    ld bc, $0202
    dec b
    dec b
    dec bc
    dec bc
    rla
    ld d, $2F
    inc l
    ld e, a
    ld e, b
    cp a
    ld c, a
    jr nc, jr_01E_7552

    ld h, b
    ccf
    ret nz

    ld a, [hl]
    add c
    db $FD
    ld [bc], a
    ld a, [$F505]
    ld a, [bc]
    ld [$D615], a
    jr z, jr_01E_756D

    ld d, h
    ld d, d
    xor h
    and d
    ld e, h
    ld b, d
    cp h
    add d
    ld a, h
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld l, [hl]
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    cp e
    nop
    dec a
    add b
    ld e, [hl]
    add b
    rra
    ret nz

    cpl
    ret nz

    xor $00
    ld a, a
    nop
    cp a
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
    ld a, a
    ld a, a
    add a
    rlca
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
    rrca
    jr nc, jr_01E_7622

    jr nz, @+$41

    nop
    ld a, $01
    dec a
    ld [bc], a
    ld a, [hl-]
    dec b
    dec [hl]
    ld a, [bc]
    ld a, [hl+]
    dec d
    call nc, $A82B
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FC

jr_01E_7622:
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
    add b
    inc bc
    ret nz

    nop
    ldh a, [rP1]
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$F8]
    inc a
    cp $0E
    ccf
    rlca
    rra
    inc bc
    rrca
    pop bc
    rlca
    pop hl
    inc bc
    ldh a, [rSB]
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    add b
    add a
    ret nz

    rst $00
    ret nz

    rst $00
    ldh [$E3], a
    ldh [rNR22], a
    ldh [$0B], a
    ldh a, [rTIMA]
    ld hl, sp+$02
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
    ld a, e
    add h
    sbc [hl]
    ld h, c
    ld h, e
    inc e
    sbc h
    inc bc
    inc hl
    ret nz

    inc b
    ld hl, sp+$00
    rst $38
    rst $28
    db $10
    ld hl, sp+$07
    rra
    ldh [$E0], a
    rra
    ccf

Call_01E_7689:
    ret nz

    ret nz

    ccf
    ccf
    nop
    ld b, b
    add b
    inc [hl]
    dec bc
    jr z, @+$19

    jr nc, jr_01E_76A5

    jr nz, jr_01E_76B7

    jr nz, jr_01E_76B9

    jr nz, jr_01E_76BB

    jr nz, jr_01E_76BD

    jr nz, jr_01E_76BF

    nop
    rst $38
    nop
    rst $38
    nop

jr_01E_76A5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FD
    dec b
    ld a, [$FC02]
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a

jr_01E_76B7:
    db $FC
    ld [bc], a

jr_01E_76B9:
    db $FC
    inc bc

jr_01E_76BB:
    db $FC
    inc bc

jr_01E_76BD:
    db $FC
    inc bc

jr_01E_76BF:
    db $FC
    ld a, a
    add b
    rra
    ldh [$2F], a
    ret nc

    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    ld hl, sp+$01
    db $FC
    ld bc, $05F8
    db $FC
    ld bc, $09F1
    jp hl


    inc de
    db $D3
    daa
    and a
    ld c, a
    db $E3
    ldh [$E3], a
    ldh [$E3], a
    ldh [$C3], a
    ldh [$C7], a
    ret nz

    add a
    ret nz

    add a
    add b
    rlca
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FC
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rP1], a
    rst $38
    inc b
    ld hl, sp+$20
    ret nz

    add b
    nop
    nop
    nop
    inc c
    nop
    ld [de], a
    nop
    inc c
    nop
    ld b, b
    add b
    ccf
    rra
    ld a, a
    ccf
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
    nop
    nop
    rlca
    ld [$271B], sp
    jr z, @+$61

    ld c, a
    jr nc, jr_01E_77A3

    add a
    and b
    ld e, a
    ret nz

    ccf
    nop
    nop
    ldh [rNR10], a
    ret c

    db $E4
    inc d
    ld a, [$0CF2]
    ld a, [de]
    push hl
    dec b
    ld a, [$FC03]
    jr nz, jr_01E_7761

jr_01E_7742:
    jr nz, jr_01E_7763

    jr nz, jr_01E_7765

    jr nz, jr_01E_7767

    jr nz, @+$21

    ld hl, $221E
    dec e
    dec h
    ld a, [de]
    ld a, [bc]
    push af
    dec d
    ld [$D42B], a
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    inc bc

jr_01E_7761:
    db $FC
    inc bc

jr_01E_7763:
    db $FC
    inc bc

jr_01E_7765:
    db $FC
    inc bc

jr_01E_7767:
    db $FC
    ld bc, $01FE
    cp $01
    cp $00
    rst $38
    nop
    rrca
    nop
    rrca
    db $10
    rrca
    ld [$2017], sp
    rra
    db $10
    cpl
    ld b, b
    ccf
    and b
    ld e, a
    jr nz, jr_01E_7742

    nop
    ret nz

    ld b, b
    add b
    ld bc, $0780
    add b
    adc a
    nop
    rra
    nop
    rra
    nop
    ld h, a
    jr jr_01E_77C2

    nop
    ld e, l
    inc bc
    jr nc, jr_01E_77A7

    ld h, a
    jr jr_01E_77CA

    nop
    ld e, l
    inc bc
    jr nc, jr_01E_77AF

    push hl
    ld e, $FB

jr_01E_77A3:
    ld b, $DD
    ld [c], a
    rlca

jr_01E_77A7:
    ld hl, sp-$1B
    ld e, $FB
    ld b, $DD
    ld [c], a
    rlca

jr_01E_77AF:
    ld hl, sp+$2A
    dec d
    dec [hl]
    ld a, [bc]
    dec hl
    inc d
    scf
    ld [$102F], sp
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop

jr_01E_77C2:
    cp $01
    db $FD
    ld [bc], a
    ld a, [$F404]
    add hl, bc

jr_01E_77CA:
    jp hl


    inc de
    db $D3
    daa
    and a
    ld c, a
    ld bc, $0200
    ld bc, $0205
    ld a, [bc]
    dec b
    inc d
    dec bc
    ld bc, $0000
    nop
    nop
    rst $38
    ld b, b
    cp a
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
    ld b, b
    ccf
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FE
    rst $38
    ld a, a
    add b
    ld [$E4F7], sp
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b

jr_01E_7805:
    rst $38
    jr nc, jr_01E_7805

    and l
    rst $38
    add b
    di
    sub d
    di
    add d
    ei
    rrca
    ld a, a
    inc bc
    db $E3
    dec b
    or l
    nop
    rra
    ld b, c
    ld hl, sp-$74
    add sp, $10
    ldh a, [$50]
    ld de, $8686
    ld hl, sp-$07
    ld d, h
    rst $38
    nop
    rst $38
    ld hl, sp+$03
    nop
    ld bc, $0100
    nop
    rst $38
    dec de
    ld e, a
    add a
    rst $38
    add hl, bc
    adc a
    ld a, [hl]
    inc bc
    rlca
    add [hl]
    inc e
    rst $18
    nop
    rst $38
    nop
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld hl, sp-$01
    ldh a, [rIE]
    add $FE
    sbc c
    ld sp, hl
    rst $38
    rst $38
    db $FC
    rst $38
    call z, $20FD
    ld [$9080], a
    ld bc, $87C0
    rst $30
    add b
    ld e, $8D
    rst $38
    ld d, b
    db $D3
    adc b
    add c
    ld b, h
    pop bc
    inc h
    ld h, c
    sub h
    pop af
    ld c, h
    dec sp
    ld h, b
    ld a, e
    adc [hl]
    rst $38
    dec h
    adc [hl]
    and d
    add [hl]
    pop bc
    rst $00
    ld b, b
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [$1873], sp
    ld sp, $7110
    ld [$00F9], sp
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    ld a, a
    add e
    rst $38
    dec [hl]
    add e
    ld b, b
    ld bc, $8303
    inc e
    sbc a
    nop
    cp $03
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
    rst $38
    nop
    ld sp, hl
    ldh [$FB], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$FD]
    pop hl
    ei
    ret z

    rst $38
    call nz, $CAFF
    ei
    ld bc, $0071
    ldh [rTAC], a
    or a
    add b
    sbc a
    ld b, b
    rst $38
    add e
    cp b
    inc c
    ldh [rNR41], a
    sub b
    ret nz

    ret nz

    ld h, a
    ld h, a
    ret nc

    di
    nop
    rst $38
    nop
    and b
    ld e, [hl]
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
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
    ccf
    nop
    ccf
    nop
    rra
    sub h
    cp $4B

Call_01E_7903:
    rst $38
    ld b, h
    cp $44
    db $ED
    ld d, d
    cp $90
    rst $30
    add b
    di
    ret nz

    cp $90
    ld a, $21
    ld a, b
    add h
    or b
    db $10
    ld [hl], b
    db $10
    jp nc, $B720

    jr nz, jr_01E_799C

    ld b, c
    db $FC
    nop
    rlca
    ld hl, sp+$03
    nop
    inc bc
    nop
    ld e, a
    nop
    rst $38
    nop
    pop hl
    cp $00
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FF
    db $FC
    rst $38
    ld sp, hl
    rst $38
    ld a, [$F0FF]
    cp $22
    ld [c], a
    ld a, l
    db $FD
    add b
    cp a
    ld b, $F6
    inc c
    sbc h
    jr @+$3A

    inc l
    ccf
    nop
    ccf
    db $10
    inc de
    xor h
    and b
    ld hl, $00E0
    ld a, h
    ldh [$03], a
    ld [bc], a
    ld bc, $F300
    nop
    rst $38
    add b
    adc a
    nop
    rst $08
    nop
    ld a, a
    add b
    ld a, a

jr_01E_7968:
    nop
    rst $38
    nop

jr_01E_796B:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00F8
    db $FC
    nop
    rst $20
    db $10
    ret nz

    inc a
    add b
    ccf
    add b
    ld bc, $0080
    add b
    ret nz

    ld e, $60
    ld c, $30
    add a
    jr jr_01E_796B

    ld [$8273], sp
    rra
    ldh [$0D], a
    or b
    add [hl]
    ld [hl], c
    ld a, h
    inc bc
    ld d, b
    ld hl, $1820
    jr c, jr_01E_79E1

    db $DD
    dec b
    rst $18

jr_01E_799C:
    ld h, $EF
    add c
    rst $28
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    ld hl, sp+$0E
    ldh [$03], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    ldh [rDIV], a
    db $F4
    nop
    ld a, b
    ld [bc], a
    ld a, $C0
    ei
    ret nz

    rst $38
    ldh [rIE], a
    ld sp, hl
    rst $38
    ld hl, sp-$03
    ld hl, sp-$01
    ldh a, [$FE]
    ret nz

    rst $38
    ld d, b
    rst $30
    nop
    ld a, a
    nop
    cp b
    ld e, [hl]
    ldh [rNR11], a
    ld sp, hl
    dec b
    push af
    add b
    db $FD
    ld e, h
    cp a
    add b

jr_01E_79E1:
    add b
    rlca
    rst $38
    ld b, b
    ld c, a
    jr nz, jr_01E_7968

    ld e, $00
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop

Call_01E_79FF:
    rst $38
    add b
    xor l
    ld b, c
    rst $00
    jp nz, $A0CB

    rst $28
    sub b
    cp e
    add h
    sbc a
    ld b, b
    sbc $01
    rst $38
    add [hl]
    ldh a, [$08]
    ldh [rNR10], a
    jp nz, $8C00

    and e
    cp e
    ld l, h
    db $FC
    add c
    pop hl
    ld [bc], a
    db $D3
    nop
    inc a
    inc c
    ret nz

    jr nz, jr_01E_7A27

    ret nz

jr_01E_7A27:
    rlca
    nop
    ld e, $83
    cp b
    adc [hl]
    ldh [rNR32], a
    ret nz

    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $00
    ret nz

    rra
    ld bc, $0931
    ld h, c
    ld [de], a
    jp $E00C


    nop
    ldh a, [rP1]
    db $FD
    nop
    rst $38
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
    ld a, l
    nop
    add d
    nop
    ld bc, $8000
    nop
    add e
    nop
    cp $00
    ldh a, [rSB]
    sbc a
    rlca
    rst $38
    rrca
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    nop
    rst $08
    ld bc, $07F9
    ldh a, [$03]
    ldh a, [rSC]
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    inc a
    or e
    inc b
    push af
    jp nz, $385E

    inc de
    ld [bc], a
    ld [bc], a
    nop
    rlca
    nop
    inc e

jr_01E_7A8E:
    rlca
    ldh a, [rP1]
    ld l, a
    ld b, b
    and $00
    or [hl]
    jr nz, jr_01E_7A8E

    nop
    cp $00
    rst $30
    add b
    rst $38
    ldh [$3F], a
    ld bc, $00F0

jr_01E_7AA3:
    ldh a, [rP1]
    db $FC
    db $10
    rst $00
    inc a
    add c
    ld c, $00
    inc bc

jr_01E_7AAD:
    add b
    nop
    ldh [$C0], a
    ld e, $61
    rrca
    jr nz, jr_01E_7ABD

    ld [$180B], sp
    db $DB
    jr nc, jr_01E_7AAD

    inc d

jr_01E_7ABD:
    ld [hl], c
    ld a, [bc]
    cp b
    add h
    rst $38
    ld b, b
    db $FD
    db $10
    jr z, jr_01E_7ADF

    stop
    dec b
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    scf
    di
    add c
    ldh [$90], a
    jr nc, jr_01E_7B17

    jr nz, jr_01E_7AD9

jr_01E_7AD9:
    and b
    nop
    di
    nop
    rst $38
    nop

jr_01E_7ADF:
    rst $38
    ld b, b

jr_01E_7AE1:
    ret nz

    nop

jr_01E_7AE3:
    ld [hl], e
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_01E_7AF3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rlca
    ccf
    sbc b
    db $FD
    ld a, [$F2FF]
    rst $38

jr_01E_7B06:
    call nz, $80FF
    adc $45
    rst $08
    ld h, a
    rst $20
    and l
    rst $20
    inc b
    adc a
    ld l, b
    rst $38
    db $10
    ld a, $20

jr_01E_7B17:
    inc a
    ld d, c
    ld a, e
    inc h
    ld a, h
    ld b, h
    ldh a, [$86]
    ld [c], a
    jr c, jr_01E_7AA3

    ld [hl], h
    rlca
    ret z

    ld c, $13
    rra
    ld bc, $2388
    ld a, b
    ld b, [hl]
    ld [hl], b
    add c
    pop af
    inc h
    add a
    ld c, b
    ld c, $B9
    inc a
    pop de
    call c, $3822
    ld [hl+], a
    jr c, jr_01E_7B84

    ld [hl], e
    call nz, $00FC
    cp e
    nop
    ld sp, $2004
    ld c, h
    ld h, b
    ld c, h
    ld h, b
    sbc b
    ldh [$98], a
    ret nz

    sbc b
    pop bc
    nop
    rst $20
    nop
    rst $00
    nop
    rst $00
    db $10
    jp $8330


    jr c, jr_01E_7ADF

    jr c, jr_01E_7AE1

    jr c, jr_01E_7AE3

    nop
    rst $38
    nop
    rst $28
    nop
    rst $20
    nop
    rst $00
    nop
    rst $00
    db $10
    add e

jr_01E_7B6C:
    db $10
    add e
    jr c, jr_01E_7AF3

    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    db $FC
    nop
    call c, $CE00
    nop
    adc [hl]
    jr nz, jr_01E_7B06

    nop
    ld a, [hl]
    nop
    inc a

jr_01E_7B84:
    add c
    inc a
    add c
    inc e
    pop bc
    inc e
    pop bc
    inc e
    pop bc
    inc e
    add c
    inc l
    nop
    ld a, a
    nop
    scf
    ld [$0823], sp
    inc hl
    ld [$0823], sp
    ld hl, $2108
    ld [$0621], sp
    halt
    add b
    inc e
    ldh [$0E], a
    jr nc, jr_01E_7BAF

    jr @+$05

    ld [de], a
    inc bc
    ld b, $07
    inc c

jr_01E_7BAF:
    ld c, $C8
    inc e
    ld b, [hl]
    ld e, $14
    ld e, $A2
    xor $02
    add a
    ld d, b

jr_01E_7BBB:
    sub $29
    rst $28
    jr c, jr_01E_7BBB

    nop
    ld c, $00

jr_01E_7BC3:
    ld a, a
    ld [hl-], a

jr_01E_7BC5:
    add e
    ld b, b

jr_01E_7BC7:
    ld bc, $8202
    nop
    add e
    nop

jr_01E_7BCD:
    cp $03
    ldh a, [rP1]
    rst $38
    nop
    di
    nop

jr_01E_7BD5:
    pop bc
    db $10

jr_01E_7BD7:
    pop bc
    db $10
    add e
    inc [hl]
    add [hl]
    inc h
    add [hl]
    jr z, jr_01E_7B6C

    nop
    rst $38
    nop
    pop bc
    nop

jr_01E_7BE5:
    add b
    jr nc, jr_01E_7BE8

jr_01E_7BE8:
    ld h, b
    nop
    call nz, $8805

jr_01E_7BED:
    dec bc
    db $10

jr_01E_7BEF:
    ld d, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    inc bc
    ld h, b
    ld bc, $F753
    ld b, d
    rst $38
    ld hl, $10FF
    di
    adc b
    ld sp, hl
    adc b
    jp c, $DC84

    and d
    rst $28
    dec b
    push hl
    sbc d
    db $DB
    ld hl, $02E3
    jp $E724


    ld a, [de]
    rst $38
    inc b
    rst $18
    ld b, b
    rst $08
    adc [hl]
    xor $18
    ld hl, sp+$09
    pop hl
    nop
    pop bc
    rrca
    rst $08
    ld [hl], d
    di
    ld b, l
    rst $00
    ld l, d
    rst $28
    add c
    pop hl
    adc b
    pop hl
    dec e
    pop hl
    sbc c
    pop bc
    ld e, $CF
    ld [hl-], a
    ei
    ld b, $B7
    inc b
    rst $00
    jr jr_01E_7BC3

    jr nc, jr_01E_7BC5

    jr nc, jr_01E_7BC7

    jr nc, @-$7D

    jr nc, jr_01E_7BCD

    jr nz, jr_01E_7BCD

    jr nz, @+$05

    add d
    add a
    jr c, jr_01E_7BD5

    jr c, jr_01E_7BD7

    jr c, jr_01E_7C57

    inc [hl]

jr_01E_7C57:
    dec b
    adc d
    adc a
    and d
    cp e
    jp z, $86C3

    add a
    jr nc, jr_01E_7BE5

    inc a
    cp a
    ld e, b
    jp $8338


    jr jr_01E_7BED

    jr jr_01E_7BEF

    inc d
    add a
    ld e, b
    rst $18
    jr nz, jr_01E_7C79

    ld hl, $2007
    ld b, $20
    ld b, $20

jr_01E_7C79:
    ld b, $20
    ld [bc], a
    db $10
    ld e, $A0
    ld [c], a
    ld sp, $C1FC
    call z, $0841
    ld b, c
    ld [$0D40], sp
    dec b
    dec c
    ld bc, $B018
    ld hl, sp-$78
    ld hl, $2780
    add [hl]
    ccf
    inc e
    db $FD
    ret nz

    pop hl
    add d
    inc hl
    ld c, $2F
    db $10
    ld sp, $7C71
    inc bc
    ld d, b
    ld hl, $1820
    jr c, jr_01E_7CF1

    db $DD
    dec b
    rst $18
    ld h, $EF
    ld bc, $156F
    ld a, a
    ld [$147F], sp
    ccf
    ld c, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    sub b
    cp $10
    db $DD
    inc b
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    adc h
    ld [hl+], a
    adc h
    ld a, [hl+]
    adc h
    db $10
    sbc h
    nop
    sbc h
    ld d, h
    sbc $32
    rst $38
    nop
    cp e
    ld bc, $230C
    jr c, jr_01E_7D2B

    ld [hl], b
    ld c, l
    ld h, c
    ld a, [bc]
    ld [c], a
    sub l
    push bc
    ld d, $C7
    inc c
    xor a
    add b

jr_01E_7CF1:
    ld bc, $0D0C
    db $10
    rla
    jr nz, jr_01E_7D77

    ld b, b

jr_01E_7CF9:
    rst $38
    nop
    rst $38
    nop
    pop bc
    jr c, jr_01E_7D00

jr_01E_7D00:
    and b
    rst $20
    ld d, b
    di
    ld c, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    adc b
    rst $38
    rst $00
    rst $38
    ld c, a
    rst $38
    jr nz, jr_01E_7CF9

    inc d
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    inc d
    rst $38
    nop
    rst $38
    ld [bc], a
    sbc a
    ld c, h
    rst $08
    jr c, @+$01

    inc d

jr_01E_7D2B:
    rst $38
    ld [$00FF], sp
    ccf
    ld l, $8F
    inc l
    adc a
    ld a, [hl-]
    ccf
    ld c, b
    ld c, a
    sbc b
    sbc d
    sub h

Call_01E_7D3B:
    sbc [hl]
    and c
    or a
    ld c, b
    xor $74
    rst $38
    jr c, @+$01

    nop
    ld a, a
    nop
    ccf
    ld [de], a
    dec de
    push hl
    rst $20
    ld a, [bc]
    rrca
    ld [hl], h
    ld [hl], a
    sbc d
    sbc a
    ld b, b
    db $EB
    add d
    add e
    ld b, h
    rst $00
    xor d
    rst $28
    ld d, h
    rst $38
    jr z, @+$01

    nop
    rst $38
    dec h
    rst $38
    ld b, h
    add $40
    add $44
    rst $28
    add hl, hl
    rst $38
    db $10
    rst $38
    add hl, hl
    rst $38
    db $10
    rst $38
    ld bc, $0003
    inc bc
    ld bc, $0003

jr_01E_7D77:
    rlca
    ld bc, $888B
    adc a
    ld d, h
    rst $38
    xor b
    cp $00
    ld [$1F07], sp
    db $10
    jr jr_01E_7D2B

    cp h
    ld d, h
    db $FC
    and b
    db $FC
    inc b

jr_01E_7D8D:
    cp $02
    rst $28
    ret nz

    pop hl
    nop
    ld hl, $3312
    ld b, d
    ld [hl], a
    ld d, b
    ld a, e
    ld [$5A7B], sp
    rst $38
    sub h
    rst $38
    db $10
    ld a, a
    db $10
    ld [hl], $00
    ld [hl], $28
    ccf
    ld b, b
    cp $A8
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [$088F], sp
    inc c
    inc b
    rrca
    ld [$105F], sp
    cp a
    and b
    ei
    inc b
    rst $38
    ld [$2FEF], sp
    ccf
    rst $00
    rst $38
    rlca
    rst $38
    adc a
    cp a
    ld h, a
    rst $38
    inc sp
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    adc e
    inc b
    rst $10
    ld c, h
    rst $38
    ld c, b
    db $DB
    ld l, c
    rst $38
    jr z, @+$01

    jr nz, @+$01

    ld c, b
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld l, h
    ld b, e
    ld a, b
    add h
    ldh a, [rP1]
    ldh [rDIV], a
    push de

jr_01E_7DEC:
    jr jr_01E_7D8D

    jr nz, jr_01E_7DEC

    db $FC
    nop
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    pop hl
    inc e
    nop
    db $FC
    nop
    dec d
    ld a, a
    ld [$147F], sp
    ccf
    ld c, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    sub b
    cp $10
    db $DD
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    or $C2
    di
    db $E4
    db $FC
    ld h, b
    db $FC
    db $10
    sbc a
    jr z, @-$0F

    ld d, h
    cp $29
    ld a, a
    ld b, h
    ld e, a
    nop
    add a
    nop
    ld b, e
    inc b
    rst $30
    db $10
    cp $01
    ld a, a
    add b
    cp a
    inc b
    rra
    adc b
    db $DB
    ld [hl+], a
    and [hl]
    ld hl, $42FF
    ei
    add d
    add a
    inc b
    rrca
    ld [$14FF], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, de
    ldh [$E7], a
    nop
    cp h
    add c
    adc e
    ld h, b
    push hl
    ld d, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $FF
    nop
    rst $38
    nop
    rst $18
    nop
    rst $08
    jr nz, @-$07

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $FC
    ld [bc], a
    rst $28
    ld de, $A01F
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    db $E3
    inc b
    xor a
    xor b
    rst $38
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc l
    nop
    add l
    ld b, e
    db $EB
    inc h
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    add hl, bc
    rst $08
    ld [de], a
    cp a
    jr z, @+$01

    dec d
    ld a, a
    inc bc
    rst $38
    ld de, $035F
    rst $38
    ld h, a
    rst $38
    rst $08
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    ei
    nop
    ei
    nop
    di
    nop
    or $80
    db $EC
    add b
    ei
    ld b, c
    ld a, b
    add a
    ldh [rNR10], a
    ret nz

    ld h, b
    add b
    add b
    rrca
    inc bc
    jr c, jr_01E_7EFD

    ldh a, [$30]
    sub c
    ld hl, sp+$00
    add b
    ld bc, $0100
    nop
    rrca
    nop
    rst $38
    nop
    rrca
    nop

jr_01E_7EFD:
    ld bc, $FF00
    ld [$088F], sp
    inc c
    inc b
    rrca
    ld [$105F], sp
    cp a
    and b
    ei
    inc b
    rst $38
    ld [$3BEF], sp
    dec sp
    sbc h
    sbc h
    adc a
    adc a
    db $E3
    db $E3
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    db $E3
    ld h, c
    rst $38
    sbc a
    rst $38
    cp $FF
    rra
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $FF
    ld [hl+], a
    cp $51
    rst $38
    sub b
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    add b
    rst $38
    db $FC
    rst $38
    ld bc, $00FF
    ld a, a
    add b
    add c
    ld e, b
    rst $18
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld c, l
    ld c, l
    db $FD
    db $FD
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    add [hl]
    add [hl]
    add c
    add c
    or b
    or b
    cp $FE
    jr jr_01E_7FB1

    and d
    rst $38
    nop
    rst $38
    ld [$38FF], sp
    rst $38
    db $FC
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    nop
    cp $01
    db $FD
    add h
    sub a
    ld e, c
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp [hl]
    rst $38
    ret nz

    rst $38
    ld [$4308], sp
    ld b, e
    ld a, c
    ld a, c
    rst $20
    rst $20
    add e
    add e
    add hl, de
    add hl, de
    cp $FE
    rst $38
    rst $38
    rlca
    sbc a
    rla
    ld a, a

Jump_01E_7FA4:
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc b

jr_01E_7FB1:
    ld hl, sp+$00
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    ld a, a
    add a
    rst $38
    ld de, $7C97
    add hl, bc
    rlca
    add [hl]
    inc c
    rst $08
    nop
    rst $38
    nop
    db $FC
    ret nz

    or $C1
    db $FD
    add d
    cp $95
    rst $38
    sub d
    rst $38
    and b
    rst $30
    sub b
    ei
    ret


    rst $38
    adc b
    adc $83
    sbc d
    ld b, l
    ld [hl], c
    ld bc, $3AE1
    ld a, [$E760]
    and b
    cp $43
    ld hl, sp+$10
    rla
    ret c

    inc bc
    jr nz, @+$25

    ld b, b
    ld e, a
    nop
    rst $38
    nop
    ret nz

    cp $00
    ret nz

    nop
