; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    cp $FF
    db $FC
    rst $38
    ld sp, hl
    rst $38
    and $FF
    ret c

    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1F], a
    cp a
    ret nz

    adc $F1
    dec h
    ei
    rrca
    di
    rra
    rst $20
    cpl
    rst $18
    ld d, a
    cp a
    db $FD
    ld a, a
    ei
    db $FD
    ld [hl], a

jr_025_4025:
    ld sp, hl
    adc l
    di
    cp $E7
    rst $18
    rst $28
    rst $38
    rst $18

jr_025_402E:
    rst $18
    cp a
    db $FD
    ldh a, [rIE]
    ld hl, sp-$02
    ldh a, [$E4]
    ldh a, [$71]
    ldh [$B1], a
    adc $E0
    sbc a
    ret nz

    ccf
    ld c, b
    rla
    ld l, b
    rla
    adc b
    scf
    xor a
    db $10
    sbc a
    nop
    ld sp, $620E
    sbc l
    db $10
    pop hl
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, d
    sbc h
    add c
    ld a, [hl]
    ld h, b
    sbc a
    jr c, jr_025_4025

    rrca
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
    ld b, b
    add b
    jr nz, jr_025_402E

    add b
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc c
    inc bc
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $00EC
    ldh a, [rP1]
    ret


    ld [hl-], a
    nop
    rst $38
    ld [bc], a
    rst $38
    dec de
    db $FC
    cpl
    ldh a, [$3F]
    ret nz

    xor [hl]
    nop
    ld e, [hl]
    nop
    inc a
    nop
    cp e
    nop
    sub [hl]
    ld bc, $03CC
    ret z

    rlca
    add b
    rrca
    ld h, b
    rst $38
    sbc h
    ld a, a
    ld [hl], e
    rrca
    rlca
    nop
    ld b, b
    add b
    ld [$01F0], sp
    cp $00
    rst $38
    ld [$08F4], sp
    db $F4
    inc d
    add sp, -$10
    ld [$10A8], sp
    ret nz

    db $10
    stop
    ld c, b
    add b
    ret nz

    ccf
    ld d, l
    ld a, [hl+]
    ld l, d
    dec d
    ld d, a
    jr z, jr_025_4128

    nop
    ld a, [hl+]
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $55FE
    xor d
    add hl, bc
    or $F7
    ld [$005D], sp
    xor c
    nop
    ld bc, $0100
    nop
    jp nz, $E03C

    add hl, de
    ld [hl], b
    rlca
    ld l, b
    rrca
    db $E4
    rrca
    db $EB
    rlca
    xor $01
    rst $20
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
    add b
    rst $38
    ret nz

    ld a, a
    ld bc, $019E
    xor $01
    ld a, [c]
    ld bc, $06FC
    ld hl, sp+$0C
    ldh a, [rNR34]
    ldh [$74], a
    ret nz

    add d
    ld a, h
    add b
    ld a, l
    nop
    db $FD
    nop
    ei
    ld [$02F3], sp
    rst $30
    add d
    ld [hl], c
    ldh a, [rP1]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_025_4128:
    nop
    rst $38
    nop
    rst $38
    dec d
    rst $38
    ld [$0307], sp
    ret nz

    inc bc
    ld hl, sp+$0B
    ldh a, [$03]
    ldh a, [rNR44]
    ldh a, [$D3]
    ldh [$8A], a
    ldh [$0C], a
    pop hl
    nop
    rst $38
    ld bc, $03FE
    db $FC
    ld c, $F1
    scf
    rst $08
    ld a, a

jr_025_414B:
    sbc a
    ld e, a

jr_025_414D:
    rst $38
    rst $28
    db $FC
    cp d
    ld a, a
    ld a, a
    db $FC
    rst $38
    ei
    rst $38
    rst $30
    scf
    rst $28
    ei
    rst $18
    db $FD
    ccf
    ld a, a
    cp $BF
    ld a, [hl]
    rst $08
    db $FC
    ld a, [c]

jr_025_4165:
    ld sp, hl
    db $FC
    di
    ld hl, sp-$19
    ldh a, [$CF]
    ldh [$9F], a
    ld b, b
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
    rst $38
    nop
    rst $38
    ld bc, $08FE
    pop af
    ld [$12F1], sp
    pop hl
    jr c, jr_025_414B

    jr c, jr_025_414D

    ld [hl], b
    add e
    jp nz, $9101

    ld h, b
    dec d
    ld hl, sp+$0A
    db $FC
    ld [bc], a
    db $FC
    ld bc, $05FC
    ld hl, sp+$05
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$60
    nop
    ld b, b
    nop
    ret nz

    nop
    call nz, $8818
    jr nc, @-$66

    jr nz, jr_025_4165

    nop
    or b
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
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
    db $10
    rrca
    jr nz, jr_025_41F3

    ld b, b
    ccf
    ld h, b
    rra
    ld sp, $140F
    inc bc
    dec de
    nop
    ld b, $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    cp $6B
    db $FC
    sub a
    ld a, b
    ld a, [hl]
    nop
    nop
    ret nz

    ld b, b

jr_025_41F3:
    add b
    ret nz

    nop
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

jr_025_4200:
    nop
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

jr_025_420F:
    nop
    ld [bc], a
    ld bc, $0304
    add hl, sp
    nop
    ld a, [hl]
    nop
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    inc a
    jp $855A


    adc a
    nop
    inc de
    nop
    ld [$1300], sp
    nop
    rrca
    inc bc
    cpl
    inc e
    pop af
    ccf
    ld l, [hl]
    rra
    cp c
    ld [bc], a
    ld d, c
    ld [bc], a
    ld hl, $0202
    nop
    nop
    add b
    jr nz, jr_025_4200

    sub l
    ld [$D12E], a
    ld e, h
    and e
    jr z, jr_025_420F

    pop bc
    nop
    xor a
    nop
    ld l, a
    nop
    rst $28
    nop
    rrca
    ldh a, [$0E]
    pop af
    rlca
    ld hl, sp+$04
    ld hl, sp+$33
    ret nz

    rla
    nop
    ld a, e
    nop
    jp nz, $0E3D

    pop af
    ld bc, $90FE
    ld h, b
    dec c
    nop
    cp [hl]
    nop
    ret nc

    rrca
    adc a
    ld a, a
    ld a, a
    rst $30
    ret nc

    db $ED
    ld hl, sp+$05
    inc e
    ld bc, $06E9
    rst $20
    ld e, $1F
    cp $EF
    rst $38
    rst $28
    cp $EB
    rst $30
    ld e, a
    rst $28
    ld h, a
    sbc a
    inc hl
    rst $18
    inc bc
    db $FC
    ld bc, $817C
    inc a
    ld bc, $BB3C
    db $FC
    rst $18
    ldh [$FC], a
    pop hl
    db $ED
    add b
    db $ED
    nop
    db $ED
    nop
    db $ED
    nop
    jp hl


    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $E4
    rra
    pop af
    rrca
    db $FC
    inc bc
    ld [bc], a
    db $FC
    inc bc
    db $FC
    inc d
    ld sp, hl
    inc c
    pop af
    ld e, h
    pop hl
    cp b
    pop bc
    ld [hl], c
    add b
    ld a, [c]
    ld bc, $FF68
    add b
    rst $38
    ld bc, $00FE
    cp $00
    cp $00
    cp $50
    xor [hl]
    and e
    ld e, h
    adc e
    ld [hl], b
    ld b, e
    jr nc, @+$09

    ld [hl], b
    ld d, [hl]
    jr nz, jr_025_42FB

    ld d, b
    ld d, b
    jr nz, jr_025_42DD

jr_025_42DD:
    nop
    nop
    nop
    jr nz, jr_025_42E2

jr_025_42E2:
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop

jr_025_42FB:
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    ld l, h
    nop
    jr z, jr_025_4306

jr_025_4306:
    ld [$0000], sp
    nop
    nop
    nop
    nop
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
    ld b, b
    add b
    jr nz, jr_025_4322

jr_025_4322:
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld a, [hl]
    ld e, a
    ld a, $77
    inc c
    ld a, a
    nop
    dec sp
    nop
    dec sp
    nop
    ccf
    nop
    dec sp
    nop
    db $FC
    ld b, e
    inc sp
    ld b, a
    cpl
    rlca
    ld h, a
    rrca
    rst $20
    rrca
    ret z

    rlca
    pop bc
    nop
    adc a
    nop
    db $10
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $28
    call c, $27E3
    ret nz

    rst $08
    nop
    rst $28
    nop
    ld a, a
    cp l
    ld a, a
    cp l
    rst $38
    cp [hl]
    rst $18
    cp [hl]
    and b
    ld e, $3E
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    rst $38
    ei
    rst $38
    ei
    di
    ld hl, sp-$48
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00

jr_025_437E:
    ld hl, sp+$00
    cp $F0
    or b
    ret nz

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
    ld hl, $151C
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [hl], b
    dec b
    ld hl, sp-$78
    ld [hl], a
    ld a, [hl]
    nop
    inc e
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_025_437E

    db $10
    ldh [$E1], a
    ld [bc], a
    ret nz

    inc bc
    add h
    inc bc
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    rlca
    nop
    rlca
    nop

jr_025_43D0:
    ld bc, $01FC
    db $FC
    ld bc, $01FC
    db $FC
    ld bc, $06FC
    ld hl, sp-$3E
    jr c, @-$04

    nop
    ld [bc], a
    ld bc, $0300
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    ld [$0007], sp
    rrca
    nop
    rrca
    ld [$00F0], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    db $10
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    jr nc, jr_025_43D0

    dec sp
    nop
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop

jr_025_443A:
    nop

Call_025_443B:
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    cp h
    nop
    nop
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
    ld bc, $0000
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld b, b
    add b
    nop
    ret nz

    jr nz, jr_025_443A

    nop
    ldh [rNR10], a
    ldh [$80], a
    ld [hl], b
    call nz, $E233
    ld de, $00E5
    ld h, [hl]
    nop
    ld [hl], a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    nop
    ldh a, [rNR10]
    ldh [$78], a
    add b
    cp b
    nop
    jr c, jr_025_449A

jr_025_449A:
    cp b
    nop
    ld a, b
    nop
    ld [hl], b
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
    ld a, [$1800]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1207], sp
    ld bc, $000C
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    db $10
    rrca
    jp nz, $E001

    nop
    jr c, jr_025_44DE

jr_025_44DE:
    ld b, $00
    jr nc, @-$3E

    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    nop
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
    jr jr_025_4509

    nop
    rra
    db $10
    rrca
    ld a, [de]
    nop
    rrca

jr_025_4509:
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    ld [$00F0], sp
    ld hl, sp-$40
    nop
    jr c, jr_025_4518

jr_025_4518:
    ld hl, sp+$00
    ld hl, sp+$00
    add b
    nop
    nop
    nop
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
    nop
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
    adc $3F
    rst $10
    ccf
    db $DB
    ccf
    db $DD
    dec sp
    jp c, $D93D

    ld a, $D8
    ccf
    ret c

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    rst $38
    cp h
    ld a, a
    ld e, [hl]
    cp a
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
    ld a, a
    rst $38
    ret c

    ccf
    ret c

    ccf
    ret c

    ccf
    ret c

    ccf
    sbc b
    ld a, a
    sbc b
    ld a, a
    sbc b
    ld a, a
    cp b
    ld a, a
    cpl
    rst $18
    rla
    rst $28
    dec bc
    rst $30
    dec b
    di
    nop
    di
    ld bc, $01F3
    di
    ld bc, $C0F3
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    ld bc, $11F3
    db $E3
    ld bc, $01E3
    db $E3
    ld bc, $01E3
    db $E3
    ld bc, $01E3
    db $E3
    nop
    rst $38
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
    dec b
    rst $38
    ld e, a
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    or b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    pop de
    cp $EF
    ldh a, [$F7]
    ld hl, sp+$01
    db $E3
    ld hl, $01C3
    jp $C301


    inc bc
    rst $00
    jp $E307


    rlca
    di
    rlca
    rla
    rst $38
    rrca
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    ld b, d
    inc a
    inc d
    cp $0B
    cp $04
    ld hl, sp+$02
    db $FC
    add c
    cp $C0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld a, e
    add a
    ei
    add a
    cp e
    rst $00
    db $DB
    rst $20
    db $EB
    rst $30
    ld b, d
    cp h
    xor b
    ld d, b
    inc [hl]
    nop
    ld [c], a
    inc e
    ld e, c
    cp [hl]
    ld hl, $2BDE
    call nc, Call_025_6A95
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $06FF
    rst $38
    dec bc
    db $FC
    ld d, $F9
    ld l, h
    di
    add a
    ei
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    ld a, e
    add a
    ld a, $C1
    rrca
    ldh a, [$5F]
    and b
    rst $30
    ld e, $3B
    cp $C7
    ld a, [$FE71]
    call $0FFE
    ldh a, [rIE]
    db $FC
    inc hl
    nop
    ld d, c
    nop
    jr z, jr_025_46B6

    db $10
    ld l, b
    ld [de], a
    ld l, h
    jr jr_025_46E3

    inc a
    ld e, a
    ld a, a
    ccf
    cp h
    ret nz

    ld l, [hl]
    ldh a, [$DA]
    inc a
    db $E4
    ld e, $F8
    ld b, $7C
    add b
    reti


    ldh [$F3], a
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

jr_025_46B6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_025_46E3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    scf
    ldh [$7F], a
    db $F4
    dec e
    ld [$FE3E], a
    rla
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    nop
    rst $30
    db $FC
    rlca
    add sp, $0F
    ld e, h
    rra
    ld a, b
    ld a, a
    add sp, -$21
    or b
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
    ld d, $FF
    nop
    rst $38
    ld c, c
    rst $38
    ld d, $EE
    dec sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    add b
    rst $38
    ld hl, sp-$69
    ld a, h
    rst $38
    cpl
    rst $38
    ld [hl-], a
    rst $38
    jr @+$01

    inc bc
    db $FD
    ccf
    rst $38
    dec de
    rst $38
    inc b
    rst $38
    nop
    db $E3
    ld l, $C7
    ld e, [hl]
    xor a
    cp d
    rra
    cp $7F
    db $F4
    rst $38
    ld e, b
    rst $38
    ldh [rIE], a
    nop
    rst $18
    nop
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    nop
    ld a, a
    nop
    cp a
    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, b
    sbc a
    sub b
    sbc a
    or b
    xor a
    ld hl, sp-$09
    inc a
    rst $20
    inc [hl]
    di
    halt
    pop hl
    ld a, e
    ld hl, sp+$5D
    ldh a, [$5E]
    ld a, [$FC3E]
    cpl
    rst $18
    ldh a, [rIE]
    ld e, b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    cp b
    cp $17
    rst $38
    ld a, [bc]
    rst $38
    ld b, e
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $18
    ld d, b
    rst $08
    ld a, b
    rst $00
    ld l, [hl]
    add a
    xor h
    rrca
    db $FC
    rst $38
    ld l, b
    rst $38
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    pop hl
    scf
    ldh [$7F], a
    db $F4
    dec e
    ld [$FE3E], a
    rla
    rst $38
    add hl, bc

jr_025_47CC:
    rst $38
    inc bc
    rst $38
    nop
    rst $30
    db $FC
    rlca
    add sp, $0F
    ld e, h
    rra
    ld a, b
    ld a, a
    add sp, -$21
    or b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03FE
    db $FD
    dec b
    ld sp, hl
    ld b, $F9
    ld c, $FB
    ld b, $FF
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
    ld bc, $00FF
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nc, jr_025_47CC

    and b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    and b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    rst $18
    ld h, b
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    db $FC
    inc b
    db $FC
    dec b
    db $FC
    ld [bc], a
    cp $07
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    nop

jr_025_4858:
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $FD
    rlca

jr_025_4866:
    ld sp, hl
    dec c
    ldh a, [$09]
    ldh a, [rNR30]
    ldh a, [rNR32]
    ld hl, sp+$1C
    rst $38
    add b
    rst $38
    db $10
    rst $38
    jr z, jr_025_4866

    jr nc, jr_025_4858

    or b
    ld l, a
    xor b
    rst $28
    xor b
    rst $08
    cp b
    db $F4
    ld c, $FE
    dec bc
    cp $07
    sbc a
    ld [hl+], a
    ccf
    ld h, c
    ccf
    ldh [$7F], a
    ret nz

    rst $38
    add b
    ld l, a
    ld hl, sp+$5F
    ld a, b
    rra
    or b
    rra
    ldh a, [$BF]
    ldh a, [rIE]
    ldh [$DF], a
    ld h, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FE
    db $FC
    inc b
    db $FC
    ld b, $F9
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    cp a
    ldh [$7F], a
    ld b, h
    ld a, e
    ld e, [hl]
    db $E3
    xor [hl]
    rst $08
    ld e, h
    ld sp, hl
    rrca
    pop af
    rrca
    ld a, [c]
    rla
    ld sp, hl
    rra
    di
    rra
    rst $38
    ld d, $FF
    jr @+$01

    db $10
    add a
    adc d
    cpl
    ld a, h
    rra
    db $FC
    ld a, a
    ld hl, sp-$01
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $F9
    dec bc
    pop af
    inc de
    di
    rla

jr_025_48EC:
    db $E3
    ld h, $E7
    ld l, $FF
    nop
    rst $38
    add b
    rst $38
    ld b, b

jr_025_48F6:
    rst $38
    ld h, b
    rst $18
    ld d, b
    rst $28
    jr z, jr_025_48EC

    jr c, jr_025_48F6

    inc [hl]
    rst $28
    inc a
    rst $18
    ld e, c
    sbc $72
    cp [hl]
    ld h, e
    cp [hl]
    ld h, e
    rst $38
    ld b, c
    cp a
    ld b, c
    rst $38
    nop
    rst $30
    sbc h
    rst $30
    inc e
    rst $38
    sbc h
    ei
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$14F7], sp
    db $E3
    ld l, $E7
    ld a, $DF
    ld a, l
    rst $38
    ld h, h
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    call $BF5A
    or b
    ld a, a
    ldh [rIE], a
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    ld hl, sp+$1B
    pop hl
    daa
    db $E3
    cpl
    rst $00
    ld e, [hl]
    rst $08
    ld a, h
    cp a
    ld [hl], b
    rst $38
    ld b, b
    rst $20
    inc [hl]
    di
    xor b
    ld sp, hl
    sbc h
    db $FD
    ld a, [bc]
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $01FE
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    inc a
    ld a, a
    sub $FF
    add b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0EFE
    ldh a, [$39]
    db $ED
    ld a, a
    rst $38
    scf
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    pop hl
    cp $C7
    db $FD
    adc a
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_025_49AA

    ret c

    rst $28
    ld hl, sp-$09
    ld e, h
    rst $38
    ld bc, $02FB
    rst $30
    inc b
    rst $28
    add hl, de
    cp $13

jr_025_49AA:
    call c, $FC37
    ld h, $F8
    dec l
    pop af
    ccf
    ret nz

    ld a, e
    add c
    rst $08
    rlca
    db $DD
    rra
    ld a, [hl-]
    ccf
    ld a, b
    ld a, a
    ret nc

    rst $38
    pop hl
    rst $38
    ret nz

    ld a, a
    ldh [rIE], a
    ld d, c
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc h
    rst $38
    db $D3
    cp a
    ld a, c
    rst $38
    ld a, h
    add e
    rst $38
    ret nz

    ld a, e
    ld hl, sp+$54
    db $FC
    dec de
    cp $05
    rst $38
    ld bc, $C1FF
    rst $38
    inc d
    rst $38
    add b
    ld a, a
    rst $08
    inc a
    rst $20
    rra
    inc sp
    rrca
    cp b
    rrca
    reti


    add a
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    ccf
    and b
    sbc a
    ld d, b
    sbc a
    ret nc

    ld sp, hl
    ld a, a
    ei
    ld l, a
    db $D3
    ld e, a
    rst $00
    ld l, [hl]
    rst $00
    ld l, $EF
    ld a, h
    rst $28
    inc [hl]
    rst $38
    jr c, @+$01

    ld b, c
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld hl, $51DF
    cp a
    ldh a, [$DF]
    ldh a, [$CF]
    db $FC
    add e
    sbc $01
    rst $10
    nop
    xor c
    add b
    jp $E580


    ret nz

    pop af
    ldh [$7A], a
    cp a
    ldh a, [$CF]
    ld l, b
    rst $00
    ld l, h
    rst $20
    or h
    rst $20
    or [hl]
    db $E3
    ld a, [$B2E3]
    ld h, e
    or $C7
    db $F4
    rst $00
    ld h, h
    db $E3
    halt
    db $E3
    ld [hl], $E3
    inc d
    db $E3
    ld [hl], $F3
    ld a, $F3
    inc d
    adc a
    ld l, b
    rst $08
    add sp, -$31
    ld a, b
    rst $08
    ld l, b
    rst $20
    ld d, h
    rst $20
    inc a
    rst $20
    inc [hl]
    rst $30
    inc l
    rst $38
    add hl, hl
    rst $38
    ld sp, $11FF
    rst $38
    ld de, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    or b
    ccf
    ld [hl], b
    ccf
    ldh [$7F], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    ld bc, $3CF0
    ld hl, sp+$1E
    ld hl, sp+$0D
    ld hl, sp+$0D
    ld hl, sp+$0F
    ldh a, [$1F]
    rst $20
    ld a, a
    rst $38
    db $FC
    ld b, a
    xor $47
    db $FC
    adc a
    call c, $B81F
    ccf
    ldh a, [rIE]
    ldh [rIE], a
    add b

jr_025_4A9E:
    rst $38
    nop
    di
    inc c
    di
    ld e, $F7
    inc e
    rst $30
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [$08FF], sp
    rst $30
    jr @+$01

    inc e
    rst $38
    ld [$04FF], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $F8
    dec b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$38
    ret nz

    ld [$8700], a
    dec bc
    ccf
    ccf
    halt
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ret nz

    ld a, $63
    rra
    pop af

jr_025_4AE8:
    cp a
    ldh a, [rIE]
    ld h, b
    rst $38
    inc bc
    db $FC
    rlca
    rst $38
    nop
    rst $38
    nop
    rra
    jr nz, jr_025_4A9E

    ldh a, [$F7]
    ld e, b
    ei
    ld [$04FF], sp
    rst $38
    add b
    ei
    rrca
    rst $30
    ld a, [bc]
    rst $28
    inc e
    rst $38
    jr jr_025_4AE8

    ld sp, $31FF
    cp $23
    cp $23
    rst $38
    add b
    rst $38
    rrca
    di
    ld a, $CF
    db $F4
    rrca
    ret c

    rra
    or c
    ld a, $63
    ld a, h
    ld l, $F8
    inc c
    db $FC
    rrca
    cp $07
    cp $63
    cp a
    di
    rra
    and c
    rrca
    add hl, sp
    rrca
    cp c
    ld l, a
    ret nc

    ld [hl], a
    ld b, b
    dec sp
    jr z, jr_025_4B76

    ld h, h
    dec e
    or [hl]
    sbc a
    or [hl]
    dec de
    db $EC
    sbc e
    xor $FE
    ld [bc], a
    db $FC
    ld b, $FC
    ld b, $FC
    dec b
    db $FC
    dec b
    db $FC
    ld b, $FE
    inc bc
    cp $03
    ld a, b
    call z, $D970
    ld [hl], b
    call c, $B3E1
    ret nz

    rst $20
    ld b, c
    rst $28
    ld c, e
    ld a, a
    dec b
    rst $18
    rra
    ld [hl], h
    cpl
    ld a, b
    ld a, a
    db $F4
    ld a, a
    add sp, -$41
    ld sp, hl
    rst $38
    pop af
    rst $38
    and c
    rst $38
    pop bc
    sub a
    cp h
    sub a
    cp h
    adc a
    inc d

jr_025_4B76:
    adc a
    ret c

    rra
    cp b
    ld e, a
    ldh a, [$3F]
    sub b
    cp a
    and b
    rrca
    rst $38
    rra
    cp d
    sbc a
    ld a, h
    rst $08
    db $FC
    rst $30
    ld a, h
    rst $38
    ld e, $FF
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
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jp nc, Jump_025_7CFF

    cp a
    ldh [$BF], a
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld c, $E3
    rra
    pop bc
    rrca
    rst $38
    nop
    rst $38
    ld bc, $07FE
    ld a, [$FC0E]
    ld e, $F2
    cpl
    ld sp, hl
    add h
    ld a, l
    adc $FF
    nop
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    inc e
    pop bc
    rlca
    cp b
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
    ld a, a
    ret nz

    ldh a, [rTAC]
    or b
    rlca
    ret nc

    inc hl
    ldh a, [rNR44]
    ldh a, [rTAC]
    ldh a, [$03]
    ld a, [c]
    rlca
    ldh [rIF], a
    ccf
    db $E4
    cp a
    ldh [$1F], a
    db $F4
    sbc a
    ldh a, [rNR34]
    ldh a, [$4E]
    ld sp, hl
    ld l, a
    ld hl, sp-$21
    cp b
    cp b
    ld [hl+], a
    ld a, h
    ld [hl], c
    ld a, h
    ld h, b
    inc a
    pop bc
    ld a, h
    add c
    ld hl, sp+$03
    ld hl, sp+$01
    ldh a, [rTAC]
    ccf
    ldh [$1F], a
    ldh a, [$1F]
    ldh a, [rIF]
    ld hl, sp+$2F
    ld hl, sp-$71
    ld hl, sp+$27
    db $FC
    or a
    db $FC
    pop hl
    rlca
    db $E4
    rrca
    ld [c], a
    rra
    db $ED
    rrca
    rst $30
    rra
    rst $38
    ld a, [bc]
    db $FD
    rrca
    rst $38
    dec bc
    ld l, a
    ld hl, sp-$11
    or b
    rst $38
    cp b
    rst $38
    jr c, @+$01

    sub b
    cp $B1
    db $FD
    ld hl, $26FF
    ldh a, [rTAC]
    ldh [$0B], a
    ret nz

    rra
    adc b
    ccf
    nop
    ld a, a
    and l
    cp $53
    rst $38
    rst $28
    db $FD
    ld h, a
    db $FC
    ld [hl], a
    call c, $FCEF
    ld [hl], a
    call c, $DCF7
    rst $28
    cp h
    rst $28
    jr c, @-$1F

    ld a, b
    rst $38
    dec b
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
    nop
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld bc, $80FF
    rst $38
    nop
    rst $38
    nop

jr_025_4C90:
    ld e, e
    cp $FF
    cp h
    rst $38
    jp hl


    rst $38
    or c
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, b
    cp a
    ldh a, [$7F]
    ret nc

    ld a, a
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    db $E3
    ld [$3CD3], sp
    db $EB
    inc a
    rst $38
    jr c, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    db $E3
    inc b
    rst $00
    ld c, $83
    ld h, $87
    ld e, $9F
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    ei
    nop
    pop af
    ld b, $F3
    ld c, $9F
    ld b, $0F
    jr nc, @+$31

    ldh a, [rIE]
    ld h, b
    rst $38
    nop
    rst $38
    inc e
    db $E3
    ld [hl+], a
    jp $C756


    ld a, [hl]
    db $EB
    ld a, h
    rst $30
    jr c, @+$01

    nop
    rst $38
    nop
    sbc a
    nop
    dec e
    jr nz, jr_025_4D20

    ld [hl], d

jr_025_4CF8:
    ld a, b
    or $FB
    ld h, a
    rst $38
    ld b, $FF
    nop
    rst $38
    nop
    ei
    ld [bc], a
    db $FD
    ld b, $CF
    jr nz, jr_025_4C90

    ld c, b
    adc a
    jr c, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nc, @-$37

    ld c, h
    call $FF7E
    ld a, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_025_4D20:
    rst $38
    nop
    rst $38
    inc e
    rst $20
    jr z, @-$2F

    jr jr_025_4CF8

    ld e, b
    rst $18
    ld [hl], d
    rst $38
    ld h, d
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld c, $F3
    ld [de], a
    db $EB
    ld l, $D7
    ld e, h
    rst $18
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nc, jr_025_4D87

    ld h, b
    ccf
    ldh [$7F], a
    pop hl
    ld a, a
    ld a, d
    ccf
    ret nz

    nop
    jr nc, @-$3E

    ld [$04F0], sp
    ld hl, sp+$02
    db $FC
    ld bc, $83FE
    cp $42
    db $FC
    ld a, h
    ccf
    cp [hl]
    ld a, a
    db $FD
    rra
    ld a, [hl]

jr_025_4D87:
    cpl
    cp a
    ld [hl], b
    rst $18
    ccf
    ld [hl], b
    rrca
    rra
    nop
    ld b, $FC
    ld c, l
    cp $BF
    ld hl, sp+$7E
    db $F4
    db $FD
    ld c, $F3
    db $FC
    ld c, $F0
    ld hl, sp+$00
    rst $38
    add b
    ldh [$3F], a
    ret nz

    ld h, b
    ret nz

    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld l, h
    rst $38
    ccf
    cp a
    ld b, b
    and b
    ld e, a
    and b
    ld e, a
    ldh [$1F], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ld l, h
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    ld b, b
    ldh [$3F], a
    ret nz

    ld h, b
    ret nz

    ld a, a
    rst $38
    ccf
    rst $38
    nop
    cp a
    ld b, b
    and b
    ld e, a
    ldh [$1F], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$FAFD]
    db $FD
    ld hl, sp-$03
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    add l
    di
    ret nz

    ld sp, hl
    ret nz

    jp hl


    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ldh [$FD], a
    ldh [rIE], a
    or b
    db $EB
    or c
    ld c, e
    sub b
    dec hl
    nop
    dec hl
    nop
    dec sp
    db $10
    ld e, a
    jr nz, @-$0F

    ld b, b
    rst $38
    ld b, d
    cp a
    ld d, a
    rst $30
    xor e
    ld a, a
    or l
    ld a, e
    dec [hl]
    ld a, e
    ld sp, $317B
    rst $38
    add hl, sp
    rst $38
    ld a, a
    cp a
    ld e, a
    rst $38
    xor a
    rst $38
    xor a
    rst $18
    xor a
    rst $18
    adc a
    rst $18
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    cp a
    ld c, a
    cp a
    rra
    cp a
    rra
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
    cp $FE
    db $FC
    cp $FC
    cp $FC
    cp $FC
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    inc d
    inc a
    inc bc
    ld b, e
    add b
    add c
    ld [bc], a
    add c
    ld b, $83
    ld b, h
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    rra
    rra
    rrca
    rra
    adc c
    add hl, de
    ret nz

    ld [hl], c
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    and $E4
    jp $30C3


    ld [hl+], a
    inc e
    sub h
    ld c, b
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
    rst $38
    rrca
    ld l, a
    rlca
    sub a
    inc bc
    cp $FD
    cp $FC
    cp $FD
    cp $FD
    cp $FC
    rst $38
    cp $FF
    cp $FF
    cp $87
    ld l, b
    add [hl]
    ld a, b
    adc h
    ld [hl], b
    ld c, h
    or c
    ld c, h
    or e
    dec l
    ld d, d
    dec l
    jp nc, $C03F

    sbc d
    inc b
    inc h
    ld b, b
    ld b, [hl]
    add b
    adc c
    nop
    adc c
    db $10
    add hl, bc
    ld d, b
    ld de, $11E2
    ld [c], a
    ld c, h
    ld hl, $002D
    dec l
    ld [de], a
    dec l
    ld d, d
    dec l
    jp nc, $802F

    ccf
    call nz, Call_025_443B
    sub e
    add hl, bc
    add hl, sp
    inc b
    inc a
    add d
    ld [hl], $89
    ld [hl+], a
    pop de
    inc sp
    ret z

    sub e
    ld c, h
    sub a
    ld l, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    cp a
    ld d, b
    cp a
    ld c, b
    rst $38
    adc c
    db $FD
    jp nc, $EDF3

    rst $38
    pop af
    rst $28
    push af
    inc e
    db $EB
    ld de, $90EA
    ld l, [hl]
    sub b
    ld l, a
    ret c

    daa
    sbc $A1
    rst $38
    add b
    inc a
    db $D3
    inc d
    db $EB
    cp a
    ld d, b
    xor a
    ld d, b
    cp a
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    db $DD
    ld [hl+], a
    db $ED
    jp nc, $D22D

    rst $18
    and [hl]
    ld l, a
    add [hl]
    cp [hl]
    ld c, l
    db $DD
    and d
    db $E3
    sbc l
    rst $38
    and e
    rst $18
    xor a
    inc hl
    rst $18
    rst $38
    cp a
    ld a, a
    cp a
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
    rst $08
    rst $38
    ld hl, sp-$01
    add c
    rst $38
    ldh [rIE], a
    db $FC
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    halt
    set 5, a
    ld de, $83FE
    nop
    rst $38
    jp $1FFE


    db $F4
    db $E3
    cp $FC
    rst $38
    ld [hl], a
    ret


    rst $38
    nop
    ld a, a
    pop bc
    ld bc, $C7FF
    ld a, h
    pop hl
    ccf
    ret nz

    ccf
    rlca
    rst $38
    ld l, l
    jp nc, $AADD

    rst $18
    and b
    rst $18

jr_025_4F97:
    jr nz, jr_025_4F97

    inc bc
    ld hl, sp+$0F
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $18
    pop af
    rst $38
    inc h
    rst $18
    ld [hl], b
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    pop bc
    ld a, a
    add a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    ld bc, $00FF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    dec c
    nop
    dec bc

jr_025_4FCD:
    dec b
    dec de
    dec c
    inc b
    nop
    ld b, h
    nop
    xor d
    ld b, h
    xor d
    ld b, h
    sbc d
    db $E4
    sbc c
    xor $D9
    xor $D9
    xor $10
    nop
    jr z, jr_025_4FF4

    ld [hl], h
    jr z, jr_025_505B

    jr z, jr_025_5065

    jr z, jr_025_5063

    db $10
    jr z, jr_025_4FFE

    ld h, h
    jr c, jr_025_4FF1

jr_025_4FF1:
    nop
    nop
    nop

jr_025_4FF4:
    nop
    nop
    jr nz, jr_025_4FF8

jr_025_4FF8:
    ld h, b
    nop
    ld d, b
    jr nz, jr_025_4FCD

    ld h, b

jr_025_4FFE:
    ret z

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
    ld bc, $0000
    rla
    dec c
    dec e
    ld c, $1B
    ld c, $24
    rra
    ld a, $1F
    ccf
    rst $18
    rra
    rst $38
    nop
    ccf
    ld hl, sp-$21
    ld hl, sp-$21
    ld sp, hl
    sbc $FB
    inc a
    ld a, a
    cp l
    ld l, a
    db $FD
    sbc a
    ei
    cp a
    ei
    push hl
    ld a, b
    push hl
    ld a, b
    rst $20
    ld a, c
    ld [hl], e
    cp l
    ld [hl], e
    cp l
    ld a, c
    cp a
    ld a, b
    cp a
    inc a
    rst $18
    ret z

    ldh a, [$E8]
    ldh a, [$A4]
    ld hl, sp-$4C
    ld hl, sp-$68
    rst $38
    nop
    rst $38
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
    ldh [rP1], a

jr_025_505B:
    nop
    nop
    nop
    nop
    nop
    sbc a
    ei
    ld e, a

jr_025_5063:
    ei
    ld c, a

jr_025_5065:
    ld a, e
    ld c, a
    ld [hl], a
    ld e, [hl]
    ld h, a
    sbc $67
    adc $77
    xor $77
    inc a
    sbc $BE
    sbc $9E
    xor $9C
    xor $8C
    or $C8
    or $48
    cp $40
    db $FC
    rst $20
    ld a, e
    ld [hl], e
    rst $38
    nop
    ld a, a

jr_025_5086:
    nop
    ccf

jr_025_5088:
    nop
    rra

jr_025_508A:
    nop
    nop

jr_025_508C:
    nop
    nop

jr_025_508E:
    nop
    nop
    ld b, b
    db $FC
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    add hl, bc
    ld b, $03
    nop
    inc b
    inc bc
    inc c
    rlca
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    ld a, $07
    add b
    nop
    ld b, b
    add b
    jr nz, jr_025_5086

    jr nz, jr_025_5088

    jr nz, jr_025_508A

    jr nz, jr_025_508C

    jr c, jr_025_508E

    dec h
    ret c

    nop
    nop
    nop
    nop
    nop
    nop

jr_025_50D6:
    nop
    nop
    ld h, b
    nop
    sub b
    ld h, b
    sub h
    ld h, b
    jp c, $1164

    ld c, $19
    ld c, $2D
    ld d, $3D
    ld e, $3D
    ld c, $7F
    ld b, $7F
    inc b
    rra
    nop
    ld c, [hl]
    scf
    rst $20
    dec sp
    di
    cp a
    cp e
    rra
    rra
    rrca
    cp a
    rlca
    rst $08
    inc sp
    ld h, a
    jr c, jr_025_5128

    reti


    dec [hl]
    ret c

    jr c, jr_025_50D6

    add hl, sp
    ret nc

    or b
    ret nz

    cp h
    ret nz

    ld [c], a
    sbc h
    pop af
    ld a, $DE
    ld l, h
    call c, $D860
    ld h, b
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    and $78
    push hl
    ld a, b
    rst $30
    ld a, c
    rst $30
    ld a, b

jr_025_5128:
    push af
    ld a, b
    cp $39
    ld a, a
    inc bc
    rra
    inc bc
    pop af
    ld a, $79
    cp [hl]
    cp c
    sbc $D9
    cp $F9
    ld a, $7D
    sbc [hl]
    dec a
    sbc $BF
    sbc $0F
    ld bc, $0003
    nop
    nop
    nop
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
    adc h
    sbc $00
    nop
    nop
    nop
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
    cp $FE
    cp $FE
    db $FC
    db $FC
    db $FD
    db $FC
    ld sp, hl
    ld hl, sp-$0E
    ldh a, [$E6]
    pop hl
    rst $38
    rst $38
    cp $FE
    ld hl, sp-$08
    pop af
    ldh a, [$E2]
    ldh [$CB], a
    ret nz

    push bc
    ret nz

    sbc [hl]
    add c
    adc e
    add b
    dec e
    ld [bc], a
    ld l, a
    nop
    cp d
    dec b
    db $EC
    inc de
    jp nc, $682D

    sub a
    ret nz

    ccf
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
    add $00
    cp c
    nop
    rst $28
    nop
    db $FD
    ld [bc], a
    sbc e
    ld b, b
    ld a, e
    add h
    push de
    ld a, [hl+]
    and d
    ld e, l
    ld [$40F7], sp
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    add b
    sub [hl]
    add c
    adc $C0
    set 0, b
    rst $08
    ret nz

    sub $C0
    push de
    jp nz, $C0CF

    ld h, b
    sbc a
    ret z

    scf
    and b
    ld e, a
    ret nz

    ccf
    sub b
    ld l, a
    ld b, b
    cp a
    and b
    ld e, a
    ret nz

    ccf
    inc bc
    db $FC
    ld d, $E9
    ld c, e
    or h
    scf
    ret z

    ld e, l
    and b
    or $00
    cp b
    ld b, b
    pop de
    ld bc, $FFFF
    rst $38
    rst $38
    cp $FF
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [$FE]
    ldh [$FC], a
    ret nz

    ld hl, sp-$7F
    ld hl, sp+$03
    ldh a, [$03]
    ret nz

    rlca
    add b
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    db $E3
    ldh a, [$C3]
    ldh a, [$C1]
    ldh a, [$C1]
    ldh a, [$C1]
    ldh a, [$E1]
    ld hl, sp-$1D
    ld hl, sp-$3D
    ld hl, sp-$02
    db $10
    db $FC
    ld d, b
    db $FC
    ld b, b
    cp b
    ret nz

    ldh a, [$80]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    cp $10
    cp $50
    db $FC
    ld b, b
    cp b
    ret nz

    ldh a, [$80]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    db $E3
    pop af
    jp $C1F1


    ldh a, [$C1]
    ldh a, [$C1]
    ldh a, [$E1]
    ld hl, sp-$1D
    ld hl, sp-$3D
    ld hl, sp-$3D
    sbc a
    ret nz

    adc a
    ldh [$83], a
    ldh [$81], a
    ldh a, [$80]
    ld hl, sp-$80
    cp $80
    rst $38
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
    ld bc, $FF00
    db $FC
    cp $F0
    ld hl, sp-$20
    ldh a, [$C0]
    ldh [$81], a
    ret nz

    add e
    ret nz

    rrca
    add c
    rra
    rst $38
    db $FC
    cp $F0
    ld hl, sp-$20
    ldh a, [$C0]
    ldh [$C1], a
    ldh [$83], a
    ret nz

    adc a
    jp $FF9F


    nop
    ld h, a
    nop
    nop
    nop
    nop
    inc e
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sbc h
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    inc b
    ld bc, $010A
    ld [$3207], sp
    rrca
    ld b, c
    rra
    nop
    nop
    ld d, e
    nop
    rst $38
    nop
    xor h
    ld d, e
    nop
    rst $38
    ld d, d
    rst $38
    cp a
    rst $38
    ei
    rst $38
    inc sp
    rrca
    ld h, l
    rra
    inc sp
    rrca
    ld h, a
    rra
    inc sp
    rrca
    ld [hl-], a
    rrca
    ld h, a
    rra
    ld h, e
    rra
    nop
    nop
    ld bc, $0200
    nop
    ld [bc], a
    ld bc, $030C
    db $10
    rlca
    ld a, [hl+]
    rlca
    ld h, c
    rra
    ld l, e
    rra
    adc l
    ccf
    sub a
    ld a, a
    ccf
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    sub h
    nop
    rst $38
    nop
    ld l, [hl]
    sub c
    nop
    rst $38
    adc d
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    nop
    nop
    sub h
    sub h
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    nop
    rst $38
    adc d
    ld [hl], l
    rst $38
    nop
    or a
    ld c, b
    inc sp
    inc a
    ld h, l
    ld a, d
    inc sp
    inc a
    ld h, a
    ld a, b
    inc sp
    inc a
    ld [hl-], a
    dec a
    ld h, a
    ld a, b
    ld h, e
    ld a, h
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc c
    rrca
    db $10
    rla
    ld a, [hl+]
    dec l
    ld h, c
    ld a, [hl]
    ld l, e
    ld [hl], h
    adc l
    or d
    sub a
    add sp, $3F
    ret nz

    ld l, a
    sub b
    rst $38
    nop
    ld a, a
    add b
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
    rlca
    rlca
    rst $38
    rst $38
    cp $FF
    sbc h
    rst $38
    adc h
    rst $38
    ld [$08FF], sp
    rst $38
    ld [$0301], sp
    inc bc
    rlca
    rlca
    rrca
    rlca
    dec e
    rrca
    dec e
    rra
    dec [hl]
    ccf
    ld h, c
    ld a, a
    ret nz

    rst $38
    ld [c], a
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    inc de
    rst $38
    ld bc, $11FF
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
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ldh [$3F], a
    ldh a, [$3F]
    ld hl, sp+$3F
    ld l, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld [hl], b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld l, b
    ccf
    ld l, b
    ccf
    ld h, b
    ccf
    add sp, $7F
    ldh [$7F], a
    ret nz

    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    jr nc, jr_025_53D6

    jr @+$09

    ld e, $07
    rrca
    inc bc
    rlca
    ld bc, $FF03
    nop
    rst $38
    nop
    rst $38
    nop

jr_025_53D6:
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
    ldh [$7F], a
    ldh a, [$3F]
    ld a, b
    rrca
    inc a
    rlca
    inc e
    inc bc
    ld c, $01
    inc bc
    nop
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
    ld a, a
    ret nz

    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld c, $07
    inc e
    rrca
    inc a
    ccf
    halt
    ld a, a
    and $FF
    ld [c], a
    ld h, b
    ld h, [hl]
    ldh [$63], a
    push hl
    ld h, a
    ret z

    adc $10
    rra
    ldh [rIE], a
    nop
    rst $38
    inc b
    rst $38
    ld a, a
    ld h, b
    cpl
    ldh a, [$BF]
    ldh a, [$F7]
    ld hl, sp-$01
    ld a, b
    rst $38
    jr c, jr_025_54BC

    jr c, jr_025_54BE

    sbc b
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld hl, $73DE
    sbc $73
    db $DD
    ld [hl], e
    rst $28
    ld [hl-], a
    rst $38
    db $10
    ld hl, sp+$00
    nop
    nop
    rst $38
    jr nc, @-$0F

    ld a, [hl-]
    db $ED
    ld a, [hl-]
    rst $28
    ld a, [hl-]
    rst $38
    jr @+$01

    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_025_54BC:
    nop
    nop

jr_025_54BE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ldh a, [$0E]
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    inc b
    dec b
    inc bc
    ld [bc], a
    inc de
    ld [de], a
    add d
    ldh a, [$09]
    dec de
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld l, [hl]
    ld l, a
    ld l, [hl]
    add d
    ld l, a
    add hl, de
    ld l, [hl]
    ld l, a
    ld l, [hl]
    db $FC
    db $FD
    cp $FF
    ld hl, sp-$07
    ld a, [$27FB]
    jr z, jr_025_5565

    rra
    jr z, jr_025_5558

    rra
    scf
    nop
    ld bc, $1110
    ld [$8209], sp
    rst $38
    ld [bc], a
    add hl, bc
    ld [$FF82], sp
    rrca
    ld bc, $1100
    db $10
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    inc b
    dec b
    inc d
    dec d
    inc b
    dec b
    ld b, $82
    rlca
    inc de
    dec b
    ld [$1B06], sp
    ld a, [bc]

jr_025_5558:
    dec de
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    inc a
    dec hl
    dec a
    dec hl
    ld a, [hl+]
    inc a
    ld a, [hl+]

jr_025_5565:
    dec a
    add d
    or $82
    rst $30
    add l
    ldh a, [rSC]
    ld a, [hl+]
    ldh a, [$82]
    ld a, [hl-]
    rlca
    ldh a, [$2A]
    ldh a, [rSC]
    inc bc
    ld [de], a
    inc de
    add d
    rst $38
    ld [bc], a
    ld a, [bc]
    dec bc
    add d
    rst $38
    rrca
    dec bc
    ld a, [bc]
    inc bc
    ld [bc], a
    inc de
    ld [de], a
    ld a, [bc]
    ld b, $0C
    dec c
    ld [$1809], sp
    add hl, de
    ld d, $82
    ld [$0916], sp
    jr jr_025_55A3

    ld d, $08
    ld b, $0A
    dec c
    inc c
    ccf
    ld a, $2F
    dec sp
    ld a, $3F
    ld a, [hl-]

jr_025_55A3:
    cpl
    inc l
    dec l
    ld a, [hl+]
    dec hl
    ld [$4382], sp
    inc hl
    ld d, d
    ld b, e
    dec c
    ld d, d
    ld b, e
    ldh a, [rBGP]
    ldh a, [$57]
    ld b, a
    ldh a, [$57]
    ldh a, [rDIV]
    dec b
    inc d
    dec d
    inc c
    dec c
    inc e
    dec e
    dec c
    inc c
    dec e
    inc e
    dec b
    inc b
    dec e
    inc d
    inc c
    jr jr_025_55E8

    dec e
    rlca
    ld d, $82
    dec e
    ld [bc], a
    jr jr_025_55ED

    add d
    dec e
    ld [bc], a
    dec c
    add hl, de
    add d
    dec e
    ld de, $0C18
    dec e
    inc e
    cpl
    dec sp
    ccf
    ld a, $3A
    cpl
    ld a, $3F

jr_025_55E8:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld d, h

jr_025_55ED:
    add h
    ldh a, [rSB]
    ld d, h
    add e
    ldh a, [rSC]
    ld d, a
    ldh a, [$82]
    ld d, a
    inc sp
    ldh a, [$57]
    ldh a, [$0E]
    rrca
    ld e, $1F
    dec hl
    inc l
    dec sp
    ldh a, [$2C]
    dec hl
    ldh a, [$3B]
    rrca
    ld c, $1F
    ld e, $22
    inc hl
    ld [hl-], a
    inc b
    inc hl
    ld [hl+], a
    dec b
    ld [hl-], a
    ld [hl+], a
    inc hl
    inc sp
    ldh a, [rNR44]
    ld [hl+], a
    ldh a, [$33]
    ld c, c
    ld c, d
    ld a, [hl]
    ld a, a
    ld e, c
    ld e, d
    ld a, [hl]
    ld a, a
    inc d
    dec d
    ld h, $27
    ld b, $07
    daa
    ld h, $84
    ld l, a
    add [hl]
    ldh a, [rNR42]
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    jr nz, jr_025_565A

    jr nc, jr_025_566C

    dec sp
    ldh a, [$2B]
    inc l
    ldh a, [$3B]
    inc l
    dec hl
    ld hl, $3120
    jr nc, jr_025_566C

    inc b
    inc h
    inc d
    ld b, $24
    dec d
    inc h
    dec h
    ldh a, [rNR51]
    add d
    ldh a, [rNR33]
    dec h
    ldh a, [rNR51]
    ld [hl+], a
    inc hl

jr_025_565A:
    ld c, l
    ld c, [hl]
    inc hl
    ld [hl+], a
    ld c, a
    ld [hl-], a
    ld [hl], $37
    jr z, jr_025_568D

    scf
    ld [hl], $29
    jr z, jr_025_56A3

    ld h, e
    ld a, [hl-]
    ld h, h

jr_025_566C:
    ld h, e
    dec sp
    ld h, h
    dec sp
    ld [hl], d

jr_025_5671:
    ld [hl], e
    add d
    ldh a, [$37]
    ld h, d
    ld h, e
    ld [hl], b
    ld [hl], c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    inc h
    dec b
    ld b, c
    ld a, [hl-]

jr_025_568D:
    inc b
    inc h
    dec sp
    ld b, c
    dec h
    ldh a, [rSTAT]
    ld a, [hl-]
    ldh a, [rNR51]
    dec sp
    ld b, c
    ld e, l
    ld e, [hl]
    ld b, c
    ld a, [hl-]
    ld e, [hl]
    ld e, l
    dec sp
    ld b, c
    jr c, jr_025_56DC

jr_025_56A3:
    ld a, [hl-]
    dec sp
    add hl, sp
    jr c, jr_025_56E2

    dec sp
    ld b, d
    ld h, c
    ldh a, [$82]
    ld h, c
    ld [bc], a
    ld b, d
    ld h, c
    add e
    ldh a, [rNR21]
    add hl, hl
    add hl, sp
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    rst $38
    inc de
    add hl, bc
    dec b
    inc de
    rst $38
    dec b
    add hl, bc
    ld d, $17
    ld b, $07
    rla
    ld d, $07
    ld b, $83
    ld l, l
    ld b, $2B
    ld l, l
    ld l, l
    ld a, [hl+]
    ld l, l
    ld l, l
    rlca
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    ld l, l
    ld a, [hl+]
    dec hl
    add d

jr_025_56DC:
    ld l, l
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld b, [hl]
    ld b, a

jr_025_56E2:
    ld d, [hl]
    ld d, a
    ld b, a
    ld b, [hl]
    ld d, a
    ld d, [hl]
    add d
    ld c, $82
    ld e, $82
    jr nz, jr_025_5671

    ld l, h
    add [hl]
    ldh a, [rSC]
    add hl, sp
    add hl, hl
    add h
    ldh a, [rNR12]
    add hl, bc
    dec b
    rst $38
    inc de
    dec b
    add hl, bc
    inc de
    rst $38
    ld b, $07
    ld d, $17
    rlca
    ld b, $17
    ld d, $6D
    dec hl
    add d
    ld l, l
    ld bc, $832A
    ld l, l
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld l, l
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    ld l, l
    ld a, [hl+]
    dec hl
    add d
    ld l, l
    ld [$4858], sp
    ld a, [hl-]
    dec sp
    ld c, b
    ld e, b
    ld a, [hl-]
    dec sp
    add d
    rrca
    add d
    rra
    add d
    ld a, h
    add d
    ld a, l
    ld [$43F0], sp
    ld b, e
    ld d, d
    ld b, e
    ldh a, [rHDMA2]
    ld b, e
    add h
    rst $38
    inc bc
    inc bc
    rst $38
    inc bc
    add d
    rst $38
    inc bc
    inc bc
    rst $38
    inc bc
    add e
    rst $38
    dec b
    inc de
    rst $38
    rst $38
    inc de
    rst $38
    add e
    ld l, $06
    dec sp
    ld l, $2E
    ld a, [hl-]
    ld l, $2E
    rlca
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    ld l, $3A
    dec sp
    add d
    ld l, $03
    ld a, [hl-]
    dec sp
    ldh a, [$82]
    ld b, e
    ld [de], a
    ld d, d
    ld b, e
    ldh a, [rHDMA2]
    ld b, e
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld h, a
    ld l, b

jr_025_5770:
    ld [hl], a
    ld a, b
    ld l, b
    ld h, a
    ld a, b
    ld [hl], a
    ld e, a
    add l
    ldh a, [rSC]
    add hl, hl
    add hl, sp
    add d
    ldh a, [rSC]
    add hl, sp
    add hl, hl
    add d
    rst $38
    add d
    add hl, bc
    ld [bc], a
    rst $38
    inc de
    add d
    rst $38
    ld bc, $8313
    rst $38
    ld [bc], a
    ld l, $3B
    add d
    ld l, $01
    ld a, [hl-]
    add e
    ld l, $0A
    ld a, [hl-]
    dec sp
    ld l, $3B
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    ld l, $3A
    dec sp
    add d
    ld l, $16
    rla
    ld b, e
    ld b, e
    ld d, d
    ld b, e
    rla
    ld d, d
    ld b, e
    rlca
    ld e, a
    ld b, $05
    ld l, c
    ld l, d
    ld [hl], a
    ld a, b
    ld l, d
    ld l, c
    ld a, b
    ld [hl], a
    dec hl
    inc l
    add d
    ldh a, [rSC]
    inc l
    dec hl
    add d
    ldh a, [rNR41]
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld l, $2F
    ld a, $3F
    ld b, [hl]
    ld d, [hl]
    ld d, c
    ld d, b
    ld l, l
    dec hl
    ld l, l
    dec hl
    ld a, [hl+]
    ld l, l
    ld a, [hl+]
    ld l, l
    nop
    ld bc, $1110
    ld bc, $1100
    db $10
    add d
    jr nz, @-$7C

    jr nc, jr_025_5770

    ld d, d
    rrca
    ldh a, [rBCPS]
    ldh a, [rBCPS]
    ld l, c
    ld l, d
    ld a, c
    ld a, d
    ld l, d
    ld l, c
    ld a, d
    ld a, c
    ld l, b
    ldh a, [rBCPS]
    adc c
    ldh a, [rNR32]
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    cpl
    ld l, $3F
    ld a, $2E
    dec sp
    ld l, $3B
    ld a, [hl-]
    ld l, $3A
    ld l, $20
    ld hl, $3130
    ld hl, $3120
    jr nc, @-$7C

    inc [hl]
    add d
    dec [hl]
    dec de
    ld d, e
    ld b, h
    ld b, h
    ld d, h
    ld b, h
    ld d, e
    ld d, h
    ld b, h
    dec b
    ld l, b
    rlca
    ld l, b
    ld l, c
    ld l, d
    ld l, c
    ld a, d
    ld l, d
    ld l, c
    ld a, d
    ld l, c
    ld l, b
    dec b
    ld l, b
    rlca
    ld a, [hl-]
    ld h, c
    ld a, [hl-]
    add d
    ld h, c
    ld a, [de]

jr_025_583B:
    dec sp
    ld h, c
    dec sp
    ld a, [hl+]
    ld h, e
    ld a, [hl+]
    ld h, h
    ld h, e
    dec hl
    ld h, h
    dec hl
    ld hl, $6C20
    jr nc, jr_025_583B

    ld h, l
    ldh a, [$75]
    ld h, l
    ldh a, [$75]
    ldh a, [$34]
    ldh a, [$35]
    add d
    ldh a, [$08]
    inc [hl]
    ldh a, [$35]
    ld c, c
    ld c, d
    ld e, c
    ld e, d
    ld d, h
    add d
    ld b, l
    jr @-$0E

    ld b, l
    ld d, h
    ldh a, [rLYC]
    ld h, [hl]
    ld h, a
    halt
    ld [hl], a
    ld l, c
    ld l, e
    ld a, b
    ld a, e
    ld l, e
    ld l, c
    ld a, e
    ld a, b
    ld h, a
    ld h, [hl]
    ld [hl], a
    halt
    dec b
    ld h, c
    dec d
    add d
    ld h, c
    ld [de], a
    dec b
    ld h, c
    dec d
    ld a, [hl-]
    ld h, e
    ld a, [hl-]
    ld [hl], h
    ld h, e
    dec sp
    ld [hl], h
    dec sp
    ld a, h
    inc [hl]
    ld a, l
    dec [hl]
    ldh a, [$75]
    ldh a, [$82]
    ld [hl], l
    ld [bc], a
    ldh a, [$75]
    add d
    ldh a, [$03]
    ld h, e
    ldh a, [$64]
    add d
    ld h, d
    add d
    ld [hl], d
    ld e, $63
    ldh a, [$64]
    ldh a, [$63]
    ld h, d
    ld h, h
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], c
    ld h, h
    ld l, c
    ld l, d
    dec sp
    ld a, [hl-]
    ld a, c
    ld l, $3B
    ld a, [hl-]
    ld l, $79
    dec sp
    ld a, [hl-]
    ld l, d
    ld l, c
    dec sp
    ld a, [hl-]
    ldh a, [rHDMA5]
    add d
    ldh a, [$82]
    ld b, d
    add d
    ldh a, [rSB]
    ld d, l
    add e
    ldh a, [$0B]
    jr nz, jr_025_58EC

    jr nc, @+$6E

    inc [hl]
    ld a, h
    dec [hl]
    ld a, l
    ldh a, [$61]
    ldh a, [$82]
    ld h, c
    ld [bc], a
    ldh a, [$61]
    add d
    ldh a, [$03]
    ld h, e
    ldh a, [$74]
    add d
    ld h, d
    add d
    ld [hl], d
    inc c
    ld h, e
    ldh a, [$74]
    ldh a, [$63]
    ld h, d
    ld [hl], e
    ld [hl], d

jr_025_58EC:
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    add d
    ld h, b
    add d
    ld [hl], b
    add d
    ld b, b
    ld [bc], a
    ld d, b
    ld d, c
    sbc h
    ldh a, [$82]
    ld h, b
    adc c
    dec b
    ld bc, $8403
    dec h
    add d
    ld h, b
    add d
    dec h
    adc b
    ld b, $84
    ld h, $88
    inc bc
    add e
    inc c
    dec b
    ld [$2C2C], sp
    jr z, jr_025_5941

    add [hl]
    add hl, bc
    add d
    ld l, c
    add d
    add hl, hl
    add d
    ld l, c

jr_025_591D:
    add h
    add hl, hl
    add h
    inc bc
    ld bc, $8305
    inc bc
    ld bc, $8705
    inc bc
    add h
    inc hl
    adc c
    ld b, $07
    ld h, $06
    ld h, $03
    inc hl
    inc bc
    inc hl
    add h
    ld h, a
    ld [$0C64], sp
    ld h, h
    inc c
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    add h

jr_025_5941:
    add hl, bc
    add d
    ld l, c
    add d
    add hl, bc
    add d
    ld l, c
    add [hl]
    add hl, hl
    sub b
    inc bc
    add h
    inc hl
    add e

jr_025_594F:
    ld h, [hl]
    dec b
    ld b, $46
    ld b, [hl]
    ld b, $46
    add h
    ld b, $10
    inc bc
    ld b, $06
    ld b, [hl]
    ld h, $03
    ld h, [hl]
    ld h, $60
    ld a, [bc]
    ld h, b
    ld c, d
    ld a, [hl+]
    ld h, b
    ld l, d
    ld h, b
    adc b
    add hl, bc
    adc b
    add hl, hl
    sub b
    inc bc
    add d
    inc hl
    inc b
    inc bc
    inc hl
    ld h, $06
    add d
    ld h, $86
    ld b, $82
    ld b, [hl]
    ld bc, $8402
    ld h, b
    ld bc, $8322
    ld h, b
    rlca
    ld a, [bc]
    ld h, b
    ld a, [hl+]
    ld a, [bc]
    ld h, b
    ld a, [hl+]
    ld h, b
    add h
    ld [$0C83], sp
    dec b
    ld h, b
    inc l
    inc l
    ld h, b
    inc l
    add h
    jr z, jr_025_591D

    dec b
    add d
    dec h
    ld [bc], a
    inc bc
    dec h
    add e
    dec b
    dec b
    ld h, b
    dec h
    dec h
    ld h, b
    dec h
    add d
    inc b
    add d
    ld b, $82
    inc b
    add d
    ld b, $86
    inc bc
    add d
    inc hl
    inc b
    ld b, $26
    ld b, $26
    add h
    ld h, a
    add d
    ld h, b
    add [hl]
    ld a, [bc]
    add h
    ld [$4C02], sp
    ld h, b
    add d
    ld c, h
    ld bc, $8360
    ld l, h
    add h
    jr z, jr_025_594F

    dec b
    add d
    inc bc
    ld b, $25
    inc bc
    dec h
    dec b
    ld h, b
    dec b
    add d
    ld h, b
    inc bc
    dec h
    ld h, b
    dec h
    add e
    dec b
    dec b
    inc b
    dec h
    dec h
    inc b
    dec h
    add e
    inc bc
    dec c
    inc b
    inc hl
    inc hl
    inc h
    inc hl
    ld b, $22
    ld b, $22
    ld [bc], a
    ld b, $02
    ld b, $82
    ld a, [bc]
    add d
    ld h, b
    add h
    ld a, [bc]
    adc b
    ld [$2888], sp

jr_025_59FE:
    db $10
    dec b
    inc bc
    inc bc
    ld b, $05
    dec h
    ld b, $23
    dec b
    ld h, b
    inc bc
    ld b, $60
    dec h
    ld b, $23
    add d
    dec b
    ld [bc], a
    inc bc
    ld b, $82
    dec h
    ld [bc], a
    ld b, $23
    add d
    inc bc
    add d
    ld b, $82
    inc hl
    add d
    ld b, $08
    ld h, $02
    ld h, b
    ld b, d
    ld [hl+], a
    ld h, $62
    ld h, b
    add d
    ld h, h
    add d
    inc c
    add h
    ld a, [bc]
    ld [$2969], sp
    ld l, c
    add hl, hl
    add hl, bc
    ld l, c
    add hl, bc

jr_025_5A38:
    ld c, c
    add e
    ld c, b
    dec b
    ld c, c
    ld l, b
    ld l, b
    ld l, c
    ld l, b
    sub h
    ld b, $84
    ld [bc], a
    add h
    ld [hl+], a
    ld [$2505], sp
    dec b
    dec h
    inc bc
    inc hl
    dec b
    dec h
    add h
    ld h, a
    add d
    ld h, h
    add d
    inc l
    add h
    ld h, b
    ld bc, $8329
    ld l, c
    ld b, $49
    add hl, bc
    ld c, c
    ld l, c
    ld [$8209], sp
    ld [$2901], sp
    add e
    jr z, jr_025_59FE

    ld b, $82
    dec b
    add d
    ld b, $02
    dec b
    dec h
    add d
    ld b, $09
    dec b
    dec h
    dec b
    dec h
    dec b
    dec h
    dec b
    dec h
    ld h, b
    add d
    ld b, $05
    ld b, [hl]
    ld h, $60
    ld h, [hl]
    ld h, $84
    ld l, c
    inc bc
    add hl, bc
    ld l, c
    add hl, bc
    add d
    ld l, c
    inc bc
    add hl, hl
    ld l, c
    add hl, hl
    add e
    ld l, c
    dec b
    add hl, hl
    ld l, c
    ld l, c
    add hl, bc
    ld l, c
    sub h
    ld b, $08
    ld h, h
    ld b, $06
    ld b, [hl]
    ld h, $64
    ld h, [hl]
    ld h, $84
    inc b
    add h
    ld a, [bc]
    add h
    ld a, [hl+]
    ld bc, $8504
    ld h, b
    add d
    ld [$6082], sp
    add d
    jr z, jr_025_5A38

    ld l, c
    ld bc, $8549
    ld l, c
    ld bc, $8349
    ld l, c
    sub h
    ld b, $0C
    inc bc
    ld b, $06
    ld b, [hl]
    ld h, $23
    ld h, [hl]
    ld h, $03
    inc b
    inc hl
    inc bc
    add h
    ld a, [bc]
    add h
    ld a, [hl+]
    add d
    ld c, h
    add d
    ld h, h
    add d
    ld l, h
    add d
    ld h, h
    adc [hl]
    inc c
    add d
    inc l
    adc b
    ld b, $84
    inc bc
    add h
    inc hl
    inc b
    inc bc
    inc hl
    inc bc
    inc hl
    add h
    ld b, [hl]
    add h
    ld h, [hl]
    inc b
    ld h, b
    ld [bc], a
    ld h, b
    ld [bc], a
    add h
    ld a, [bc]
    add h
    ld a, [hl+]
    inc b
    ld [hl+], a
    ld h, b
    ld [hl+], a
    ld h, b
    add h
    ld h, a
    add h
    ld h, h
    add h
    inc c
    adc b
    inc l
    adc b
    ld b, $83
    inc bc
    add hl, bc
    dec b
    inc hl
    inc hl
    dec h
    inc hl
    inc bc
    inc hl
    inc bc
    inc hl
    add e
    ld b, $09
    ld [bc], a
    ld h, $26
    ld [hl+], a
    ld h, $03
    ld [bc], a
    inc bc
    ld [bc], a
    add e
    ld a, [bc]
    db $10
    ld [bc], a
    ld a, [hl+]
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld b, $02
    ld b, $42
    ld [hl+], a
    ld b, $62
    add d
    ld b, $07
    ld [hl+], a
    ld b, $22
    ld [bc], a
    ld b, $02
    ld b, $82
    inc hl
    dec c
    dec h
    inc hl
    ld h, b
    ld [hl+], a
    ld h, b
    ld [hl+], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, b
    inc bc
    ld h, b
    inc bc
    add d
    ld h, b
    inc bc
    inc hl
    ld h, b
    inc hl
    add h
    inc b
    dec c
    ld [bc], a
    inc b
    inc b
    ld h, h
    inc h
    ld [hl+], a
    ld h, h
    inc h
    ld b, $02
    ld b, $02
    ld a, [bc]
    add e
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld a, [hl+]
    add e
    ld [hl+], a
    ld e, $26
    ld [hl+], a
    ld h, $03
    ld [bc], a
    inc bc
    ld b, d
    ld [hl+], a
    inc bc
    ld h, d
    inc bc
    ld b, $22
    ld b, $22
    ld [bc], a
    ld b, $02
    ld b, $25
    inc hl
    dec h
    inc hl
    ld h, b
    ld h, d
    ld h, b
    ld [hl+], a
    ld b, d
    ld h, b
    ld [bc], a
    add d
    ld h, b
    dec c
    ld [hl+], a
    ld h, b
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [hl+], a
    add h
    ld [bc], a
    add d
    ld [hl+], a
    adc b
    ld b, $82
    ld h, $82
    ld b, $82
    ld h, $82
    ld b, $02
    ld h, b
    ld h, $82
    ld h, b
    add d
    ld h, $82
    ld h, b
    ld bc, $8306
    ld h, b
    add e
    inc bc
    inc c
    dec b
    inc bc
    dec b
    inc bc
    dec b
    ld h, b
    ld [bc], a
    ld h, b
    ld b, d
    ld [hl+], a
    ld h, b
    ld h, d
    add d
    ld h, b
    dec bc
    ld [hl+], a
    ld h, b
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, b
    add h
    ld [hl+], a
    add l
    ld [bc], a
    dec b
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    inc bc
    inc hl
    add d
    inc bc
    adc h
    ld h, a
    add h
    ld h, c
    adc h
    ld h, a
    nop
    add h
    xor $03
    cp $3D
    cp $82
    dec l
    dec l
    cp $3D
    cp $3C
    dec sp
    inc l
    xor $3B
    inc a
    xor $2C
    nop
    ld bc, $1110
    dec b
    inc b
    dec d
    inc d
    ld bc, $1100
    db $10
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    ld a, [hl+]
    add hl, hl
    ld a, [hl-]
    add hl, sp
    daa
    jr z, jr_025_5C43

    rra
    jr z, jr_025_5C36

    rra
    scf
    nop
    ld bc, $1110
    ld [$8209], sp
    rst $38
    ld [bc], a
    add hl, bc
    ld [$FF82], sp
    inc b
    ld bc, $1100
    db $10
    add h
    cp $84
    add b
    add d
    cp $21
    ld l, $3E
    inc l
    xor $3C
    dec sp
    xor $2C
    dec sp
    inc a
    ld [bc], a
    inc bc

jr_025_5C36:
    ld [de], a
    inc de
    inc b
    dec b
    inc d
    dec d
    inc bc
    ld [bc], a
    inc de
    ld [de], a
    ld a, [bc]
    dec bc
    ld a, [de]

jr_025_5C43:
    dec de
    dec bc
    ld a, [bc]
    dec de
    ld a, [de]
    xor $2A
    xor $82
    ld a, [hl-]
    rlca
    xor $2A
    xor $02
    inc bc
    ld [de], a
    inc de
    add d
    rst $38
    ld [bc], a
    ld a, [bc]
    dec bc
    add d
    rst $38
    add hl, bc
    dec bc
    ld a, [bc]
    inc bc
    ld [bc], a
    inc de
    ld [de], a
    xor $48
    xor $82
    ld e, b
    dec b
    xor $48
    xor $3E
    ld l, $82
    cp $84
    add b
    ld [bc], a
    ld sp, $820F
    xor $02
    rrca
    ld sp, $EE82
    jr z, jr_025_5CA0

    inc hl
    ld [hl-], a
    ld h, $23
    ld [hl+], a
    xor $32
    inc c
    dec c
    inc e
    dec e
    dec c
    inc c
    dec e
    inc e
    xor $47
    xor $57
    ld b, a
    xor $57
    xor $04
    dec b
    inc d
    dec d
    inc c
    dec c
    inc e
    dec e
    dec c
    inc c
    dec e

jr_025_5CA0:
    inc e
    dec b
    inc b
    dec e
    inc d
    add d
    xor $02
    ld c, d
    ld c, e
    add d
    xor $25
    ld e, d
    ld e, e
    ld b, h
    ld b, l
    ld d, h
    ld d, e
    ld b, l
    ld b, h
    ld d, d
    ld d, h
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, c
    ld b, a
    ld b, [hl]
    ld d, b
    ld d, [hl]
    ld c, $36
    ld e, $1F
    ld h, $0E
    rra
    ld e, $24
    inc sp
    inc [hl]
    dec de
    inc sp
    inc h
    dec de
    inc [hl]
    xor $57
    xor $82
    ld d, a
    dec d
    xor $57
    xor $0E
    rrca
    ld e, $1F
    dec hl
    inc l
    dec sp
    rst $28
    inc l
    dec hl
    rst $28
    dec sp
    rrca
    ld c, $1F
    ld e, $4B
    ld c, d
    add d
    xor $02
    ld e, e
    ld e, d
    add d
    xor $1A
    ld d, h
    ld d, e

jr_025_5CF4:
    ld b, h
    ld b, l
    ld d, d
    ld d, h
    ld b, l
    ld b, h
    ld d, [hl]
    ld d, c
    ld b, [hl]
    ld b, a
    ld d, b
    ld d, [hl]
    ld b, a
    ld b, [hl]
    jr nz, jr_025_5D25

    jr nc, jr_025_5CF4

    ld hl, $2620
    jr nc, jr_025_5D40

    dec h
    add d
    cp $02
    dec h
    dec [hl]
    add d
    cp $82
    xor $19
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld [hl], b

jr_025_5D1B:
    ld [hl], c
    jr nz, @+$23

    jr nc, jr_025_5D51

    dec sp
    rst $28
    dec hl
    inc l
    rst $28

jr_025_5D25:
    dec sp
    inc l
    dec hl
    ld hl, $3120
    jr nc, jr_025_5D1B

    ld c, c
    xor $82
    ld e, c
    ld [bc], a
    xor $49
    add d
    xor $21
    ld c, a
    ld e, [hl]
    ld e, a
    ld c, a
    xor $5F
    ld e, [hl]
    xor $4D

jr_025_5D40:
    ld e, h
    ld e, l
    ld c, l
    xor $5D
    ld e, h
    daa
    jr z, jr_025_5D80

    jr c, jr_025_5D73

    daa
    jr c, jr_025_5D85

    ld b, $07
    ld h, b

jr_025_5D51:
    ld h, c
    ld [$6009], sp
    ld h, c
    ld [hl], d
    ld [hl], e
    add d
    xor $2E
    ld h, d
    ld h, e
    ld [hl], b
    ld [hl], c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld b, b
    ld d, l
    ld d, a
    ld b, d

jr_025_5D73:
    ld d, l
    ld b, c
    ld b, e
    ld d, a
    ld e, [hl]
    ld e, a
    xor $4F
    ld e, a
    ld e, [hl]
    ld c, a
    xor $5C

jr_025_5D80:
    ld e, l
    xor $4D
    ld e, l
    ld e, h

jr_025_5D85:
    ld c, l
    xor $36
    ld h, $84
    xor $0A
    ld [hl], $26
    ld [hl], d
    ld [hl], e
    ld d, $17
    ld [hl], d
    ld [hl], e
    jr @+$1B

    add d
    xor $28
    add hl, hl
    add hl, sp
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    rst $38
    inc de
    add hl, bc
    dec b
    inc de
    rst $38
    dec b
    add hl, bc
    ld d, $17
    ld b, $07
    rla
    ld d, $07
    ld b, $57
    ld d, d
    ld d, b
    ld d, l
    ld d, e
    ld d, a
    ld d, l
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    cpl
    ccf
    add d
    xor $02
    ccf
    cpl
    add d
    xor $0B
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld l, a
    ld l, [hl]
    ld a, a
    ld a, [hl]
    xor $38
    xor $82
    jr c, jr_025_5DD9

    xor $38

jr_025_5DD9:
    add e
    xor $02
    add hl, sp
    add hl, hl
    add h
    xor $10
    add hl, bc
    dec b
    rst $38
    inc de
    dec b
    add hl, bc
    inc de
    rst $38
    ld b, $07
    ld d, $17
    rlca
    ld b, $17
    ld d, $82
    xor $02
    ld h, b
    ld h, c
    add d
    xor $0E
    ld h, d
    xor $65
    ld h, [hl]
    ld [hl], l
    halt
    xor $3E
    dec a
    cp $3E
    xor $FE
    dec a
    add d
    xor $0A
    cpl
    ccf
    call z, $DCCD
    db $DD
    call $DDCC
    call c, $FE82
    ld [bc], a
    dec [hl]
    dec h
    add d
    cp $02
    dec h
    dec [hl]
    add h
    add b
    add h
    rst $38
    inc bc
    inc bc
    rst $38
    inc bc
    add d
    rst $38
    inc bc
    inc bc
    rst $38
    inc bc
    add e
    rst $38
    jr jr_025_5E43

    rst $38
    rst $38
    inc de
    rst $38
    ld [hl], b
    ld [hl], c
    ld h, e
    ld h, h
    ld [hl], d
    xor $73
    xor $67
    ld l, b
    ld [hl], a
    ld a, b
    dec a
    cp $EE

jr_025_5E43:
    ld a, $FE
    dec a
    ld a, $82
    xor $0F
    rst $20
    xor $E7
    db $E3
    db $E4
    di
    db $F4
    db $E4
    db $E3
    db $F4
    di
    rst $20
    xor $E7
    xor $88
    add b
    add d
    xor $02
    add hl, hl
    add hl, sp
    add d
    xor $02
    add hl, sp
    add hl, hl
    add d
    rst $38
    add d
    add hl, bc
    ld [bc], a
    rst $38
    inc de
    add d
    rst $38
    ld bc, $8313
    rst $38
    ld bc, $8450
    xor $03
    ld d, b
    xor $EE
    adc h
    add b
    rlca
    xor $E6
    xor $E7
    db $E3
    db $E4
    db $E3
    add d
    db $E4
    rlca
    db $E3
    db $E4
    db $E3
    and $EE
    rst $20
    xor $82
    ldh [$82], a
    pop hl
    add h
    add b
    add h
    xor $84
    rst $38
    inc b
    rst $28
    ld b, b
    rst $28
    ld d, b
    add d
    ld b, c
    add d
    ld d, c
    ld b, $40
    rst $28
    ld d, b
    rst $28
    ld d, b
    ld d, c
    add d
    xor $02
    ld d, c
    ld d, b
    add d
    xor $0C
    ld [hl], e
    ld [hl], h
    ld h, e
    ld h, h
    cp $74
    cp $64
    ld [hl], e
    rst $28
    ld h, e
    rst $28
    adc b
    add b
    add h
    db $E4
    add d
    ldh a, [$82]
    pop af
    add d
    ld [c], a
    add d
    db $E3
    ld [$EF62], sp
    ld [hl], d
    ld [hl], e
    rst $28
    ld h, d
    ld [hl], e
    ld [hl], d
    add l
    rst $28
    inc bc
    ld b, d
    rst $28
    ld b, d
    add d
    ld b, e
    add d
    ld d, e
    inc c
    ld b, d
    rst $28
    ld b, d
    rst $28
    ld h, l
    ld d, c
    ld [hl], l
    halt
    ld d, c
    ld h, l
    halt
    ld [hl], l
    add h
    rst $28
    add h
    cp $04
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    add d
    rst $28
    ld [bc], a
    ld d, c
    ld d, b
    add d
    cp $82
    ld b, c
    add d
    db $E4
    add d
    db $F4
    add d
    ld a, [c]
    add d
    di
    inc b
    db $E4
    push hl
    and $E7
    add h
    add b
    inc c
    ld h, b
    rst $28
    ld h, b
    rst $28
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld b, d
    ld [hl], d
    ld d, d
    add d
    ld d, e
    add d
    ld b, h
    ld b, $42
    ld h, d
    ld d, d
    ld [hl], d
    rst $28
    ld h, [hl]
    add d
    rst $28
    ld bc, $8566
    rst $28
    ld [de], a
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    cp $48
    cp $58
    ld b, a
    ld b, [hl]
    ld d, a
    ld d, [hl]
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    add h
    add b
    ld d, $F4
    push af
    or $F7
    add sp, -$17
    ld [$EEEB], a
    ld h, b
    xor $60
    rst $28
    ld h, b
    rst $28
    ld h, b
    ld h, l
    xor $75
    halt
    ld h, e
    ld h, h
    add e
    xor $03
    ld h, l
    halt
    ld [hl], l
    add h
    add b
    add d
    rst $28
    dec c
    ld h, b
    ld h, c
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld c, b
    cp $58
    add d
    cp $0B
    ld c, l
    cp $68
    ld c, h
    ld c, e
    ld l, d
    ld l, c
    ld c, d
    ld c, c
    ld e, d
    ld [hl], a
    add h
    add b
    ld b, $F8
    ld sp, hl
    ld a, [$72FB]
    ld [hl], e
    add d
    rst $28
    inc bc
    ld [hl], e
    ld [hl], d
    rst $28
    add d
    ld h, b
    dec bc
    rst $28
    ld h, b
    rst $28
    ld h, b
    rst $28
    ld [hl], d
    ld [hl], e
    rst $28
    ld h, b
    ld [hl], e
    ld [hl], d
    adc b
    add b
    ld [de], a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld h, d
    ld c, c
    ld c, d
    ld e, c
    ld e, d
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld c, l
    cp $5D
    ld b, c
    cp $40
    add d
    ld b, c
    add d
    xor $06
    ld e, l
    rst $38
    ld c, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    add d
    db $EB
    add d
    ei
    sub h
    xor $84
    cp $82
    db $EC
    add d
    db $FC
    add d
    db $ED
    add d
    db $FD
    add h
    inc c
    ld [$636B], sp
    ld l, e
    ld h, e
    inc bc
    dec bc
    inc bc
    dec bc
    add e
    ld h, e
    dec b
    ld l, e
    ld b, e
    ld b, e
    ld c, e
    ld b, e
    add h
    inc b
    adc b
    inc h
    add h
    ld [bc], a
    add h
    ld [hl+], a
    add h
    inc c
    add h
    inc l
    adc b
    add hl, bc
    add d
    add hl, hl
    add d
    add hl, bc
    add h
    add hl, hl
    add h
    dec bc
    add h
    nop
    add d
    ld c, e

jr_025_5FF3:
    add d
    ld b, e
    ld [bc], a
    inc hl
    dec hl
    add d
    inc hl
    ld bc, $830B
    inc bc
    adc b
    inc b
    add h
    inc h
    add e
    inc bc
    dec b
    inc b
    inc hl
    inc hl
    inc h
    inc hl
    add h
    inc c
    add h
    ld l, h
    adc b
    add hl, bc
    adc b
    add hl, hl
    ld [$030E], sp
    ld c, $03
    ld h, e
    ld l, [hl]
    ld h, e
    ld l, [hl]
    add d
    inc hl
    add d
    dec hl
    add h
    nop
    add d
    inc hl
    add d
    ld l, $82
    inc bc
    add d
    ld c, $83
    inc bc
    rlca
    dec b
    inc hl
    inc hl
    jr z, jr_025_6054

    inc bc
    inc b
    add d
    inc bc
    ld bc, $8324
    inc hl
    add e
    ld a, [bc]
    dec b
    ld c, d
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    adc b
    add hl, bc
    adc b
    add hl, hl
    add d
    dec bc
    add d
    inc bc
    add d
    ld c, $86
    inc bc
    add h
    inc hl
    add h
    inc bc
    add h
    inc hl
    ld [bc], a

jr_025_6054:
    inc bc
    dec b
    add d
    inc bc
    ld bc, $8325
    inc hl
    add h
    inc b
    add h
    inc h
    add e
    ld a, [bc]
    dec b
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    add h
    ld [$0C84], sp
    add h
    inc l
    add h
    jr z, jr_025_5FF3

    ld h, e
    add d
    ld l, e
    add d
    ld h, e
    add d
    ld l, [hl]
    add h
    ld b, e
    add h
    ld h, e
    add h
    ld b, e
    add h
    ld h, e
    add e
    inc b
    dec b
    jr z, jr_025_60A9

    inc h
    dec h
    inc h
    add d
    inc bc
    add d
    dec bc
    add d
    inc hl
    add d
    dec bc
    adc b
    ld a, [bc]
    add h
    ld [$4C84], sp
    add h
    ld l, h
    add h
    jr z, jr_025_60A4

    dec bc
    inc bc
    dec bc
    inc bc
    ld h, e
    ld l, e
    ld h, e
    ld l, e
    inc c

jr_025_60A4:
    add e
    inc bc
    ld [bc], a
    inc hl
    inc c

jr_025_60A9:
    add d
    inc hl
    ld bc, $830E

jr_025_60AE:
    inc bc
    ld [bc], a
    inc hl
    ld c, $82
    inc hl
    add h
    dec b
    add h
    dec h
    add d
    inc bc
    add d
    ld a, [bc]
    add d
    inc b
    adc d
    ld a, [bc]
    adc b
    ld [$2888], sp
    dec b
    inc bc
    ld h, e
    ld h, e
    inc bc
    ld b, e
    add d
    inc bc
    add e
    ld b, e
    ld [bc], a
    ld c, h
    ld b, e
    add e
    ld h, e
    dec b
    ld c, h
    ld b, e
    ld b, e
    ld c, [hl]
    ld b, e
    add e
    ld h, e
    inc bc
    ld c, [hl]
    dec b
    dec b
    add h
    dec c
    add d
    dec b
    add d
    ld a, [bc]
    add d
    inc bc
    add d
    ld a, [bc]
    add d
    inc bc
    add h
    inc c
    add h
    ld a, [bc]
    add d
    add hl, hl
    ld [bc], a
    ld l, c
    add hl, hl
    add e
    add hl, bc
    ld bc, $8349
    ld c, b
    ld b, $49
    ld l, b
    ld l, b
    ld l, c
    ld l, b
    inc hl
    sub c
    inc bc

jr_025_6103:
    add d
    ld c, e
    add d
    inc hl
    add d
    ld l, e
    add h
    inc bc
    add h
    inc hl
    ld [$0B6C], sp
    ld l, h
    ld c, e
    dec hl
    ld l, h
    ld l, e
    ld l, h
    add h
    inc l
    add h
    ld [$290A], sp
    ld l, c
    add hl, hl
    ld l, c
    ld c, c
    add hl, bc
    ld c, c
    add hl, bc

jr_025_6123:
    ld [$8209], sp
    ld [$2901], sp
    add e
    jr z, jr_025_60AE

    ld c, $82

jr_025_612E:
    ld b, $82
    ld c, $02
    ld b, $0E
    add h
    ld b, $05
    ld c, e
    inc bc
    ld b, e
    ld c, e
    inc hl
    add d
    ld l, e
    inc bc
    ld h, e
    ld c, e
    ld c, e
    add d
    ld b, e
    add h
    ld [bc], a
    add h
    ld [hl+], a
    add d
    ld c, e
    add d
    ld b, e
    add d
    ld c, e
    add d
    ld h, e
    add h
    nop
    adc b
    add hl, bc
    add h
    add hl, hl
    add e
    add hl, bc
    ld bc, $8429
    add hl, bc
    add l
    ld b, $03
    ld c, $06
    ld c, $84
    ld b, $0C
    inc bc
    ld c, e
    ld c, e
    ld b, e
    ld l, e
    inc hl
    ld h, e
    ld l, e
    jr z, jr_025_6174

    jr z, jr_025_6176

    add h
    ld [bc], a
    add h

jr_025_6174:
    ld [hl+], a
    inc b

jr_025_6176:
    dec h
    jr z, jr_025_619E

    jr z, jr_025_6103

    nop
    add h
    ld [$2884], sp
    ld b, $29
    add hl, bc
    ld c, c
    ld l, c
    add hl, bc
    ld l, c
    add d
    add hl, bc
    ld bc, $8349
    add hl, bc
    ld [bc], a
    inc hl
    ld c, $82
    ld l, $02
    ld c, $03
    add d
    ld c, $8C

jr_025_6198:
    nop
    inc bc
    jr z, jr_025_619E

    jr z, jr_025_6123

jr_025_619E:
    ld [bc], a
    add l
    ld [hl+], a
    rlca
    jr z, jr_025_61C6

    jr z, @+$0A

    jr z, jr_025_61B0

    jr z, jr_025_612E

    nop
    add h
    ld [$0E85], sp
    ld [bc], a

jr_025_61B0:
    ld b, $0E
    add d
    ld b, $02
    ld h, $06
    add d
    ld h, $03
    ld c, $26
    ld c, $82
    inc hl
    add d
    ld l, $82
    inc bc
    add d
    ld c, $84

jr_025_61C6:
    ld b, [hl]
    inc bc
    ld c, [hl]
    ld h, [hl]
    ld c, [hl]
    add d
    ld h, [hl]
    inc bc
    ld l, [hl]
    ld h, [hl]
    ld l, [hl]
    adc b
    nop
    add h
    ld [hl+], a
    ld a, [bc]
    ld [$0828], sp
    jr z, jr_025_61E3

    jr z, jr_025_61E5

    jr z, jr_025_61E5

    ld c, $82
    ld b, $01

jr_025_61E3:
    ld l, $83

jr_025_61E5:
    ld h, $85
    ld c, $02
    ld b, $0E
    add d
    ld b, $02
    ld h, $06
    add d
    ld h, $05
    ld c, $26
    ld c, $06
    inc hl
    add d
    ld b, $01
    inc bc
    add e
    ld h, $84
    ld l, $84
    ld c, $84
    inc hl
    add d
    dec hl
    add d
    inc hl
    add d
    dec hl
    add d
    ld [bc], a
    add h
    ld [hl+], a
    inc b
    ld [$0828], sp
    jr z, jr_025_6198

    ld [$0084], sp
    inc b
    ld b, $0E
    ld b, $0E
    add h
    inc bc
    add l
    ld b, $02
    ld h, $06
    add l
    ld h, $02
    ld c, $06
    add d
    ld c, $01
    ld h, $83
    ld l, $82
    dec bc
    add [hl]
    inc bc
    inc bc
    dec hl
    inc hl
    dec hl
    adc c
    inc hl
    add h
    nop
    adc b
    ld [$280A], sp
    inc hl
    jr z, jr_025_6264

    ld l, $26
    ld l, $26
    inc bc
    ld [$0384], sp
    add d
    ld l, h
    ld bc, $8308
    inc hl
    add h
    nop
    add d
    dec bc
    adc e
    inc bc
    ld b, $0B
    inc bc
    dec bc
    dec hl
    inc hl
    dec hl
    adc c
    inc hl
    add h
    nop
    add h
    ld [$4682], sp

jr_025_6264:
    add d
    ld c, [hl]
    add d
    ld h, [hl]
    ld [$666E], sp
    ld b, $0E
    ld b, $0E
    ld b, $0E
    add d
    ld b, $01
    ld l, $83
    ld h, $85
    nop
    inc bc
    dec b
    nop
    dec b
    adc l
    inc bc
    dec b
    dec bc
    inc bc
    ld [bc], a
    dec hl
    inc bc
    add d
    ld [bc], a
    add d
    ld c, e
    ld [bc], a
    inc hl
    dec bc
    add h
    inc hl
    inc b
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    sub h
    inc c

jr_025_6295:
    add h
    dec bc
    ld [$2A0A], sp
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    nop
    add h
    rst $28
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, [hl]

jr_025_62A9:
    ld l, l
    ld [hl], b
    ld l, a
    ld b, e
    scf
    jr c, jr_025_62E9

    add d
    dec [hl]
    add d
    ld [hl], $05
    scf
    ld b, e
    add hl, sp
    jr c, jr_025_62A9

    add d
    ld b, [hl]
    inc bc
    ld b, a
    ld b, l
    ld b, l
    add d
    xor $04
    ld b, [hl]
    rst $28
    ld b, a
    ld b, [hl]
    add e
    rst $38
    ld bc, $863D
    rst $38
    ld a, [bc]
    dec a
    rst $38

jr_025_62D0:
    add hl, hl
    jr z, jr_025_62FE

    ld a, [hl+]
    jr z, jr_025_62FF

    ld a, [hl+]
    dec hl
    add d
    inc sp
    add d
    ld sp, $2682
    add d
    daa
    db $10
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b
    ld [hl], e
    ld [hl], h
    rst $28
    ld a, c

jr_025_62E9:
    ld [hl], l
    halt
    ld a, d
    ld a, e
    dec sp
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    add h
    rst $38

jr_025_62F3:
    rlca
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld c, b
    xor $48
    add [hl]
    xor $03

jr_025_62FE:
    ld c, b

jr_025_62FF:
    xor $48
    add h
    rst $38
    add h
    rst $28
    add h
    rst $38
    ld [$2D2C], sp
    ld l, $2F
    inc [hl]
    jr nc, @+$36

    jr nc, jr_025_6295

    ld [hl-], a
    ld [$3430], sp
    jr nc, @+$36

    ld a, h
    ld a, l
    inc c
    ld bc, $EF82
    ld a, [bc]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld a, a
    inc b
    dec b
    jr c, jr_025_635F

    ld b, e
    scf
    add d
    ld [hl], $82
    dec [hl]
    ld [$3839], sp
    scf
    ld b, e
    ld b, [hl]
    ld b, a
    rst $28
    ld b, [hl]
    add d
    xor $82
    ld b, l
    ld b, $47
    ld b, [hl]
    ld b, [hl]
    rst $28
    rst $38
    dec a
    add [hl]
    rst $38
    ld bc, $833D
    rst $38
    inc b
    dec l
    inc l
    cpl
    ld l, $84
    jr nc, jr_025_62D0

    ld sp, $3382
    add h
    ld sp, $061C
    rlca
    ld [$0709], sp
    ld b, $09
    ld [$0F11], sp
    ld [de], a

jr_025_635F:
    inc de
    db $10
    ld c, $14
    ld [de], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, $17
    jr jr_025_6385

    rla
    ld d, $19
    jr jr_025_62F3

    ld h, a
    add d
    ld l, b
    add e
    xor $05
    ld a, $EE
    xor $3E
    xor $83
    rst $38
    dec b
    inc a
    rst $38
    rst $38
    inc a
    rst $38
    add d

jr_025_6385:
    ld b, d
    add d
    ld b, c
    dec b
    ld b, b
    ccf
    ld b, b
    ccf
    xor $82
    ld b, h
    ld hl, $4443
    xor $43
    ld b, h
    ld a, [bc]
    dec bc
    inc c
    ld bc, $0A0B
    ld bc, $1100
    db $10
    ld [de], a
    inc d
    rrca
    ld c, $13
    ld [de], a
    inc hl
    ld [hl+], a
    dec h
    inc h
    ld a, [de]
    dec de
    inc e
    dec e
    dec de
    ld a, [de]
    dec e
    inc e
    add d
    ld l, c
    add d
    ld l, d
    ld [bc], a
    xor $3E
    add d
    xor $01
    ld a, $83
    xor $02
    rst $38
    inc a
    add d
    rst $38
    ld bc, $833C
    rst $38
    inc b
    ccf
    ld b, b
    ccf
    ld b, b
    add d
    ld b, c
    add d
    ld b, d
    dec b
    ld b, h
    ld b, e
    xor $44
    ld b, e
    add d
    ld b, h
    ld [bc], a
    xor $5B
    add d
    rst $28
    inc c
    ld h, c
    ld e, e
    ld e, a
    ld h, b
    rst $28
    ld h, b
    ld e, [hl]
    ld h, d
    ld e, a
    rst $28
    ld e, e
    ld e, [hl]
    add d
    rst $28
    dec bc
    ld e, e
    ld h, c
    rst $28
    ld e, $1F
    jr nz, jr_025_6416

    rra
    ld e, $21
    jr nz, @-$7C

    ld l, e
    add d
    ld l, h
    inc c
    xor $50
    ld d, e
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    ld d, [hl]
    ld c, c
    ld c, d
    ld c, a
    ld h, d
    add d
    xor $05
    ld h, c
    xor $EE
    ld h, c
    ld h, b
    add d
    xor $02
    ld e, a

jr_025_6416:
    ld h, c
    add d
    xor $04
    ld h, b
    ld e, a
    xor $60
    add d
    xor $02
    ld e, a
    ld e, [hl]
    add e
    rst $28
    rrca
    ld h, c
    ld h, e
    ld e, [hl]
    ld h, d
    ld e, a
    ld h, d
    ld h, e
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld e, l
    ld e, e
    rst $28
    ld e, l
    ld h, c
    add d
    rst $28
    ld [bc], a
    ld h, c
    rst $28
    add d
    ld e, e
    rla
    ld h, d
    rst $28
    ld e, e
    ld h, c
    ld e, [hl]
    ld e, e
    ld h, d
    ld d, a
    ld e, b
    ld e, e
    ld e, h
    ld e, c
    ld e, d
    ld e, l
    ld e, [hl]
    ld c, e
    ld c, h
    ld h, e
    ld h, h
    ld c, [hl]
    ld c, l
    ld h, [hl]
    ld h, l
    add d
    xor $03
    ld h, b
    xor $61
    add d
    xor $02
    ld e, a
    ld h, c
    add d
    xor $02
    ld h, c
    xor $82
    ld h, c
    ld b, $EE
    rst $28
    rst $28
    ld h, d
    rst $28
    ld h, e
    add d
    ld h, d
    ld [bc], a
    rst $28
    ld h, d
    add h
    rst $28
    inc bc
    ld h, d
    ld h, c
    ld h, e
    add e
    rst $28
    inc b
    ld h, d
    rst $28
    ld h, d
    ld e, e
    add l
    rst $28
    add h
    ld c, b
    db $10
    ld d, d
    ld d, c
    ld d, [hl]
    ld d, l
    ld d, b
    xor $54
    ld d, e
    ld c, h
    ld c, e
    ld h, h
    ld h, e
    ld c, d
    ld c, c
    ld h, d
    ld c, a
    add d
    xor $01
    ld e, a
    add h
    xor $03
    ld h, c
    xor $60
    add d
    xor $01
    ld h, b
    add e
    xor $05
    ld e, [hl]
    ld h, c
    ld h, d
    ld e, e
    ld h, d
    add d
    ld e, e
    inc b
    rst $28
    ld h, c
    rst $28
    ld e, e
    add d
    rst $28
    rlca
    ld e, e
    ld h, c
    rst $28
    ld e, a
    ld e, e
    rst $28
    ld h, b
    adc b
    rst $28
    add h
    ld b, l
    dec c
    ld e, d
    ld e, c
    ld e, [hl]
    ld e, l
    ld e, b
    ld d, a
    ld e, h
    ld e, e
    ld c, l
    ld c, [hl]
    ld h, l
    ld h, [hl]
    ld h, c
    add d
    xor $02
    ld h, b
    ld e, a
    add d
    xor $01
    ld h, c
    add e
    xor $01
    ld h, b
    add e
    xor $06
    ld e, a
    xor $61
    ld e, a
    xor $62
    add d
    rst $28
    add d
    ld e, e
    add d
    rst $28
    ld [bc], a
    ld h, c
    ld e, e
    add d
    rst $28
    add d
    ld e, [hl]
    rlca
    ld h, b
    ld e, a
    ld h, d
    ld e, h
    ld e, e
    ld e, l
    ld h, e
    adc b
    rst $28
    ld [$EE48], sp
    ld c, b
    ld a, $EE
    ld c, b
    ld a, $48
    add d
    ld b, l
    inc b
    ld a, $EE
    ld a, $EE
    add d
    ld b, l
    dec b
    ld a, $EE
    xor $3E
    xor $82
    ld a, $01
    xor $87
    ld a, $06
    xor $3E
    ld a, $EE
    ld a, $5D
    add d
    rst $28
    ld [$5E61], sp
    ld h, e
    ld e, e
    ld e, l
    ld h, d
    ld e, a
    ld e, [hl]
    add d
    ld h, e
    dec b
    ld h, c
    ld h, d
    ld e, [hl]
    rst $28
    ld e, [hl]
    adc d
    rst $28
    ld [$3E48], sp
    ld c, b
    xor $3E
    ld c, b
    xor $48
    add d
    ld b, l
    inc b
    xor $3E
    xor $3E
    add d
    ld b, l
    dec b
    xor $3E
    ld a, $EE
    ld a, $82
    xor $82
    ld a, $05
    xor $3E
    xor $3E
    xor $82
    ld a, $01
    xor $83
    ld a, $82
    rst $28
    ld [$EF62], sp
    ld h, d
    rst $28
    ld h, e
    ld h, c
    rst $28
    ld h, d
    add d
    rst $28
    inc b
    ld h, d
    ld h, e
    rst $28
    ld h, d
    add e
    rst $28
    ld bc, $8862
    rst $28
    inc bc
    ld c, b
    ld a, $48
    add d
    ld a, $03
    ld c, b
    ld a, $48
    add d
    ld b, l
    add h
    ld a, $82
    ld b, l
    adc b
    rst $28
    inc bc
    xor $3E
    xor $83
    ld a, $84
    xor $82
    ld a, $18
    ld h, l
    ld h, $2A
    dec hl
    daa
    jr z, jr_025_65C4

    dec l
    add hl, hl
    rst $28
    ld l, $2F
    rst $28
    add hl, hl
    cpl
    ld l, $28
    daa
    dec l
    inc l
    ld h, $65
    dec hl
    ld a, [hl+]
    and b
    rst $28
    inc b
    inc d
    db $10
    inc de
    ld de, $1882
    add d
    add hl, de
    jr jr_025_65E6

    ld sp, $3736
    ld [hl-], a
    inc sp
    jr c, jr_025_65F6

    inc [hl]
    dec [hl]
    ld a, [hl-]
    dec sp
    dec [hl]
    inc [hl]
    dec sp

jr_025_65C4:
    ld a, [hl-]
    inc sp
    ld [hl-], a
    add hl, sp
    jr c, jr_025_65FB

    jr nc, jr_025_6603

    ld [hl], $8C
    rst $28
    inc b
    ld sp, $3132
    ld [hl-], a
    add d
    ld c, $82
    rrca
    inc b
    dec d
    ld d, $15
    ld d, $84
    rla
    inc b
    ld d, $15
    ld d, $15
    add h
    ld [de], a

jr_025_65E6:
    add h
    ld a, [de]
    jr nz, jr_025_6626

    dec a
    ld b, b
    ld b, c
    ld a, $3F
    ld b, d
    ld b, e
    ccf
    ld a, $43
    ld b, d
    dec a

jr_025_65F6:
    inc a
    ld b, c
    ld b, b
    ld c, e
    ld c, h

jr_025_65FB:
    ld c, a
    ld d, b
    ld c, l
    ld c, [hl]
    ld d, c
    ld d, d

jr_025_6601:
    ld c, [hl]
    ld c, l

jr_025_6603:
    ld d, d
    ld d, c
    ld c, h
    ld c, e
    ld d, b
    ld c, a
    add d
    ld l, h
    add d
    ld l, l
    inc c
    ld b, $07
    ld [$0209], sp
    inc bc
    inc b
    dec b
    dec e
    ld e, $20
    ld hl, $1F82
    add d
    ld hl, $1E04
    dec e
    ld hl, $8220
    inc de
    ld [bc], a

jr_025_6626:
    db $10
    inc d
    add d
    dec de
    add d
    inc e
    inc h
    ld b, h
    ld b, l
    ld h, h
    ld c, b
    ld b, [hl]
    ld b, a
    ld c, c
    ld c, d
    ld b, a
    ld b, [hl]

jr_025_6637:
    ld c, d
    ld c, c
    ld b, l
    ld b, h
    ld c, b
    ld h, h
    ld d, e
    ld d, h
    ld d, a
    ld e, b
    ld d, l
    ld d, [hl]
    ld e, c
    ld e, d
    ld d, [hl]
    ld d, l
    ld e, d
    ld e, c
    ld d, h
    ld d, e
    ld e, b
    ld d, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    add d
    ld c, $82
    rrca
    ld [$0B0A], sp
    inc c
    dec c
    ld b, $07
    ld [$8809], sp
    xor $82
    nop
    add d
    ld bc, $6A82
    add d
    ld l, e
    add h
    ld l, b
    add h
    ld b, $84
    ld h, $01
    ld h, b
    add h
    ld hl, $0102
    ld hl, $0182
    inc b
    ld b, b
    ld bc, $6801
    add e
    jr nz, jr_025_6601

    nop
    add d
    ld l, b
    ld [bc], a
    nop
    ld l, b
    add d
    nop
    add e
    ld l, c
    ld bc, $8664
    ld l, c
    ld [bc], a
    ld b, h
    ld l, c
    add h
    ld [hl+], a
    add l
    ld [bc], a
    rlca
    ld [hl+], a

jr_025_6696:
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    add [hl]
    dec b
    ld bc, $8568
    dec b
    add d
    ld hl, $6182
    add h
    ld l, c
    add d
    ld bc, $4182
    inc bc
    jr nz, jr_025_6717

    jr nz, jr_025_6637

    ld l, b
    inc bc
    nop
    ld l, b
    nop
    adc h
    ld l, c
    add h
    ld [bc], a
    rlca
    ld [hl+], a
    ld [bc], a
    ld h, d
    ld b, d
    ld h, d
    ld b, d
    ld [hl+], a
    add e
    ld [bc], a
    add d

jr_025_66C5:
    ld b, d
    add d
    dec b
    add d
    dec c
    add d
    ld l, b
    add d
    ld [$0582], sp
    add d
    dec c
    add d
    ld h, c
    dec b
    jr nz, jr_025_6738

    ld h, c
    ld b, c
    ld h, c
    add h
    ld b, c

jr_025_66DC:
    dec b
    nop
    ld h, b
    ld h, b
    ld l, b
    ld h, b
    add d
    ld l, b
    add l
    ld b, b
    inc bc
    ld l, b
    ld l, c
    inc h
    add [hl]
    ld l, c
    ld bc, $8304
    ld l, c
    add h
    ld [hl+], a
    add d
    ld [bc], a
    add d
    ld b, d
    ld [$2202], sp
    ld b, d
    ld h, d
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    add h
    dec c
    add l
    dec l
    add h
    dec c
    inc bc
    dec l
    dec c
    dec l
    adc b
    dec c
    add h
    dec l
    inc b
    nop
    jr nz, jr_025_6711

jr_025_6711:
    jr nz, jr_025_6696

    ld l, b
    dec b
    ld h, b
    ld l, b

jr_025_6717:
    ld l, b
    ld b, b
    ld l, b
    add e
    ld l, c
    dec b
    ld h, c
    ld l, c
    ld l, c
    ld b, c
    ld l, c
    add h
    ld b, b
    add h
    jr nz, jr_025_6728

    ld l, b

jr_025_6728:
    add e
    ld h, b
    ld [bc], a
    ld b, b
    ld l, b
    add d
    ld b, b
    add h
    dec c
    add [hl]
    dec l
    ld bc, $890D
    dec l
    add h

jr_025_6738:
    dec c
    add h
    dec l
    ld b, $00
    jr nz, jr_025_673F

jr_025_673F:
    jr nz, jr_025_67A9

    jr nz, jr_025_66C5

    ld l, b
    ld bc, $8300
    ld l, b
    ld [bc], a
    ld l, c
    ld hl, $6982
    ld bc, $8301
    ld l, c
    adc b
    nop
    add d
    jr nz, @+$04

    ld l, b
    jr nz, jr_025_66DC

    nop
    ld [bc], a
    ld l, b
    inc c
    add d
    ld l, b
    dec b
    dec c
    inc c
    ld l, $0E
    ld l, b
    add d
    ld c, $05
    dec c
    ld l, $68
    inc c
    ld l, $82
    ld l, b
    inc bc
    inc c
    dec l
    ld l, b
    add h
    dec c
    add h
    dec l
    dec b
    nop
    jr nz, jr_025_677B

jr_025_677B:
    jr nz, jr_025_67E5

    adc e
    inc bc
    add d
    ld l, b
    inc bc
    inc bc
    ld l, b
    ld l, b
    add d
    inc bc
    add d
    ld l, b
    ld [bc], a
    inc hl
    inc bc
    add d
    ld l, b
    inc b
    inc bc
    inc hl
    ld l, b
    inc hl
    add d
    ld l, b
    ld [bc], a
    inc bc
    ld l, $83
    ld l, b
    add d
    dec l
    dec c
    ld l, $2D
    ld l, $2D
    dec c
    ld l, $0D
    ld l, $0C
    inc l
    ld l, b
    inc l

jr_025_67A9:
    dec l
    add d
    ld l, b
    dec bc
    dec l
    ld l, b
    inc c
    inc l
    dec l
    ld l, b
    inc c
    dec l
    ld l, $0C
    dec l
    adc h
    inc bc
    add h
    inc hl
    add d
    ld l, b
    inc bc
    inc hl
    ld l, b
    inc bc
    add d
    ld l, b
    add d
    inc bc
    add d
    ld l, b
    inc b
    inc hl
    ld l, b
    inc hl
    inc bc
    add e
    ld l, b
    rlca
    dec l
    ld l, b
    dec c
    dec l
    dec c
    ld l, b
    dec c
    add h
    ld l, b
    add e
    dec l
    add e
    ld l, b
    inc b
    dec l
    ld l, b
    dec l
    inc c
    add l
    ld l, b
    inc b

jr_025_67E5:
    jr nz, jr_025_67E7

jr_025_67E7:
    jr nz, jr_025_67E9

jr_025_67E9:
    add l
    inc hl
    ld bc, $8A68
    inc hl
    add d
    ld l, b
    ld bc, $8423
    ld l, b
    inc bc
    inc hl
    ld l, b
    inc bc
    add d
    ld l, b
    ld bc, $8323
    ld l, b
    dec bc
    ld c, $0D
    dec c
    inc l
    dec c
    inc c
    inc l
    ld l, b
    dec c
    ld l, b
    inc l
    add d
    ld l, b
    rlca
    inc l
    dec l
    ld l, b
    ld c, $2C
    ld l, b
    ld l, $88
    ld l, b
    add d
    nop
    add d
    ld b, b
    adc b

jr_025_681C:
    inc hl
    add h
    inc bc
    dec b
    inc hl
    ld l, b
    ld l, b
    inc hl
    inc bc
    add d
    ld l, b
    ld bc, $8323
    ld l, b
    ld bc, $8303
    ld l, b
    ld [bc], a
    inc bc
    ld l, b
    add d
    inc hl
    ld [bc], a
    ld l, b
    dec c
    add d
    ld l, b
    add d
    inc l
    add d
    ld l, b
    ld [bc], a
    dec c
    inc l
    add d
    ld l, b
    ld b, $0E
    ld l, $2E
    ld c, $2D
    inc c
    add d
    inc l
    ld bc, $882D
    ld l, b
    rlca
    jr nz, jr_025_68BA

    jr nz, jr_025_68B4

    ld l, b
    nop
    ld b, b
    add e
    nop
    inc b
    ld b, b

jr_025_685B:
    ld l, b
    nop
    ld l, b
    add d
    ld b, b
    dec d
    nop
    ld l, b
    ld l, b
    ld h, b
    ld l, b
    jr nz, jr_025_68A8

    ld l, b
    nop
    jr nz, jr_025_68AC

    ld h, b
    nop
    jr nz, jr_025_68B0

    ld l, b
    nop
    jr nz, jr_025_68DC

    ld h, b
    inc c
    add d
    ld l, b
    ld b, $0D
    ld c, $2D
    inc c
    inc l
    dec c
    add d
    ld c, $01
    dec l
    add e
    dec c
    inc bc
    ld c, $68
    ld c, $8A
    ld l, b
    add e
    jr nz, jr_025_6892

    ld l, b
    nop
    nop
    ld l, b

jr_025_6892:
    add e
    nop
    inc b
    ld l, b
    ld h, b
    ld l, b
    jr nz, jr_025_681C

    ld b, b
    dec b
    ld l, b
    jr nz, jr_025_68DF

    ld l, b
    nop
    add d
    ld l, b
    dec c
    ld h, b
    nop
    ld l, b
    ld b, b

jr_025_68A8:
    ld l, b
    nop
    ld l, b
    ld b, b

jr_025_68AC:
    ld h, b
    ld l, b
    jr nz, jr_025_68F0

jr_025_68B0:
    ld h, b
    add d
    ld l, b
    inc b

jr_025_68B4:
    dec c
    ld l, b
    dec c
    ld l, b
    add d
    dec c

jr_025_68BA:
    ld [bc], a
    ld l, b
    dec l
    add d
    ld l, b
    inc b
    dec c
    dec l
    ld l, b
    dec l
    add e
    ld l, b
    ld bc, $880D
    ld l, b
    add e
    jr nz, jr_025_68D1

    ld h, b
    nop
    nop
    ld b, b

jr_025_68D1:
    add e
    nop
    inc b
    ld b, b
    ld h, b
    nop
    jr nz, jr_025_685B

    ld b, b
    adc c
    ld l, b

jr_025_68DC:
    dec b
    jr nz, jr_025_6947

jr_025_68DF:
    ld h, b
    nop
    jr nz, @-$7A

    ld l, b
    ld [bc], a
    ld b, b
    ld h, b
    adc c
    dec c
    inc b
    ld l, b
    dec c
    dec c
    ld l, b
    adc e
    dec l

jr_025_68F0:
    and b
    ld l, b
    ld [$2141], sp
    ld b, c
    ld hl, $2202
    ld [bc], a
    ld [hl+], a
    adc h
    dec c
    adc h
    dec l
    adc h
    ld l, b
    ld [bc], a
    ld [bc], a
    ld b, d
    add d
    ld [bc], a
    inc b
    inc b
    inc h
    inc b
    inc h
    add d
    ld bc, $4182
    add d
    ld bc, $4182
    add d
    ld hl, $6182
    ld [$2101], sp
    ld bc, $0221
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    adc b
    dec c
    adc b
    dec l
    adc b
    dec c
    adc b
    dec l
    inc b
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    adc b
    nop
    add l
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    add e
    ld [hl+], a
    ld a, [bc]
    ld [bc], a
    ld [hl+], a
    ld bc, $4121
    ld hl, $2202
    ld [bc], a
    ld [hl+], a
    adc b
    dec c
    adc b
    dec l
    adc b
    dec c

jr_025_6947:
    adc b
    dec l
    add h
    nop
    inc b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    adc b
    nop

jr_025_6952:
    adc b
    ld l, b
    ld [$2202], sp
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    nop
    adc b
    rst $28
    ld [$0F5B], sp
    db $10
    ld de, $370F
    ld de, $8C10
    rst $28
    inc c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, e
    ld d, d
    ld h, e
    ld h, d
    add l
    rst $28
    add hl, bc
    ld hl, $1B1C
    add hl, bc
    dec d
    jr z, jr_025_698D

    nop
    ld bc, $FE82
    ld [$0908], sp
    inc b
    jr z, jr_025_69AD

    rst $28

jr_025_698D:
    dec de
    inc e
    adc b
    rst $28
    ld a, [de]
    inc de
    ld [de], a
    dec d
    inc d
    ld [de], a
    inc de
    inc a
    ld b, d
    ld d, $3A
    jr jr_025_69B2

    rla
    ld d, $3C
    ld d, $09
    ld d, l
    jr z, jr_025_6A0B

    ld c, h
    ld d, e
    ld e, h
    ld d, [hl]
    ld c, [hl]
    ld c, a
    add d

jr_025_69AD:
    ld b, a
    rrca
    ld d, e
    ld d, d
    ld d, [hl]

jr_025_69B2:
    ld e, h
    ld d, l
    add hl, bc
    ld h, l
    jr z, jr_025_69C1

    dec d
    jr z, @+$0D

    rlca
    ld b, $0A
    add l
    cp $08

jr_025_69C1:
    ld b, $07
    cp $0A
    ld [$0409], sp
    jr z, jr_025_6952

    rst $28
    rla
    ld a, [de]
    ld e, $1C
    dec e
    ld e, $1A
    jr nz, jr_025_69F0

    ld e, $1F
    jr nz, @+$23

    rra
    ld e, $21
    dec e
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld d, a
    ld b, a
    ld l, [hl]
    add [hl]
    ld b, a
    ld a, [bc]
    ld e, [hl]
    ld b, a
    ld l, [hl]
    ld d, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    dec c
    cp $0E

jr_025_69F0:
    adc [hl]
    cp $03
    dec c
    cp $0E
    sub b
    rst $28
    jr nz, jr_025_6A1C

    inc hl
    inc h
    dec h
    dec hl
    ld [hl+], a
    dec l
    inc h
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld b, l
    ld b, [hl]
    ld c, c
    ld c, d
    ld b, a
    ld c, b

jr_025_6A0B:
    ld c, e
    ld [hl], b
    ld b, [hl]
    ld b, l
    ld c, d
    ld c, c
    ld d, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    db $10
    dec bc
    dec d
    ld de, $FE82
    ld [bc], a

jr_025_6A1C:
    inc sp
    inc d
    add d
    cp $02
    inc sp
    inc d
    add d
    cp $06
    inc sp
    inc d
    rrca
    db $10
    ld [$9042], sp
    rst $28
    cpl
    ld [hl+], a
    inc hl
    daa
    dec h
    dec hl
    ld [hl+], a
    dec l
    inc l
    db $10
    ld h, l
    dec d
    ld d, l
    ld [hl], c
    ld [hl], d
    ld [hl], l
    halt
    ld [hl], e
    ld [hl], h
    ld [hl], a
    ld a, b
    ld [hl], d
    ld [hl], c
    halt
    ld [hl], l
    ld h, l
    db $10
    ld d, l
    ld b, d
    ld [bc], a
    dec de
    rst $28
    ld hl, $5958
    jr jr_025_6A67

    ld e, d
    scf
    ld l, d
    ld l, e
    rla
    ld e, b
    rra
    ld d, $1B
    ld [bc], a
    ld hl, $EF95
    rla
    db $10
    dec bc
    ld c, h
    ld de, $1B02

jr_025_6A67:
    rst $28
    ld hl, $5958
    jr jr_025_6A81

    ld e, d
    scf
    ld l, d
    ld l, e
    ld e, c
    ld e, b
    inc a
    ld d, $1B
    ld [bc], a
    ld hl, $EF89
    inc c
    ld [hl+], a
    inc hl
    ld h, $27
    inc h
    dec h

jr_025_6A81:
    jr z, jr_025_6AAC

    inc hl
    ld [hl+], a
    daa
    ld h, $94
    rst $28
    rrca
    rrca
    db $10
    ld de, $FE4C
    ld sp, $6D3B
    inc bc
    cp $05

Call_025_6A95:
    dec sp
    inc a
    ld b, $09
    add d
    ld [$4103], sp
    ld b, $09
    add e
    dec b
    dec b
    ld c, h
    dec b
    dec b
    ld c, h
    dec b
    add h
    rst $28
    inc b
    ld a, [hl+]
    inc hl

jr_025_6AAC:
    daa
    dec h
    add h
    cp $04
    dec hl
    ld a, [hl+]
    dec l
    inc l
    adc h
    rst $28
    ld d, $67
    ld h, [hl]
    ld [hl], a
    halt
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    ld l, e
    ld l, d
    ld a, e
    ld a, d
    inc b
    ld b, h
    cp $03
    dec b
    dec sp
    inc [hl]
    cp $0C
    dec c
    add h
    ld a, [bc]
    inc bc
    inc c
    dec c
    ld a, [bc]
    add d
    dec b
    dec b
    ld c, h
    dec b
    ld a, [bc]
    ld c, h
    dec b
    add h
    rst $28
    ld b, b
    ld d, a
    ld l, $2F
    ld [hl-], a
    dec e
    jr nc, jr_025_6B17

    inc [hl]
    dec [hl]
    cpl
    ld l, $20
    ld [hl-], a
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    halt
    ld [hl], a
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld a, [bc]
    add hl, bc
    inc c
    dec c
    add hl, bc
    ld a, [bc]
    dec c
    inc c
    ld a, [bc]
    ld c, $0C
    dec c
    cp $31
    dec sp

jr_025_6B17:
    scf
    ld [hl-], a
    inc sp
    jr c, jr_025_6B55

    inc bc
    cp $3A
    dec sp
    ld [hl], $37
    jr jr_025_6B8F

    jr c, @+$3B

    rra
    dec e
    rla
    ld [hl], $3C
    ld d, $FE
    ld sp, $6D3B
    inc bc
    cp $05
    dec sp
    inc a
    ld b, $09
    add d
    ld [$4121], sp
    ld b, $09
    ld e, e
    rrca
    db $10
    ld de, $370F
    ld de, $6E10
    ld l, a
    ld a, [hl]
    ld a, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld bc, $3314
    ld h, a
    ld b, c
    ld d, a
    add hl, bc

jr_025_6B55:
    ld b, c
    dec a
    ld b, d
    ld a, e
    ld a, $3F
    add d
    ld a, e
    ld [$3C40], sp
    ld a, e
    ld b, d
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    adc b
    rst $28
    ld a, [bc]
    inc b
    ld b, h
    cp $03
    dec b
    dec sp
    inc [hl]
    cp $0C
    dec c
    add h
    ld a, [bc]
    ld e, $0C
    dec c
    inc de
    ld [de], a
    dec d
    inc d
    ld [de], a
    inc de
    inc a
    ld b, d
    ld d, $3A
    jr jr_025_6B98

    rla
    ld d, $3C
    ld d, $47
    ld b, h
    ld c, e
    ld [hl], b
    ld b, h
    ld b, a
    ld c, e

jr_025_6B8F:
    ld [hl], b
    ld b, e
    ld b, h
    ld e, a
    ld l, a
    add d
    ld a, e
    add d
    ld a, c

jr_025_6B98:
    ld [$4305], sp
    ld l, a
    ld e, a
    ld c, [hl]
    ld c, a
    ld b, h
    ld b, a
    adc c
    rst $28
    add hl, bc
    ld hl, $1B1C
    add hl, bc
    dec d
    jr z, jr_025_6BB6

    nop
    ld bc, $FE82
    rla
    ld [$0409], sp
    jr z, @+$23

    rst $28

jr_025_6BB6:
    dec de
    inc e
    db $10
    dec bc
    ld c, h
    ld de, $4E5C
    ld d, a
    ld b, a
    ld c, [hl]
    ld e, h
    ld b, a
    ld d, a
    ld c, [hl]
    ld c, a
    ld b, h
    add h
    ld b, a
    rlca
    ld b, h
    ld b, a
    ld b, a
    ld b, h
    ld b, a
    ld d, a
    ld e, [hl]
    add d
    ld l, [hl]
    inc c
    inc a
    cp $60
    ld h, c
    cp $04
    inc sp
    inc d
    inc b
    cp $33
    inc d
    add h
    rst $28
    rlca
    add hl, bc
    dec d
    jr z, @+$0D

    rlca
    ld b, $0A
    add l
    cp $1A
    ld b, $07
    cp $0A
    ld [$0409], sp
    jr z, jr_025_6C05

    db $10
    ld de, $574C
    ld b, h
    ld d, a
    ld b, a
    ld b, l
    ld c, b
    ld b, l
    ld [hl], b
    ld c, [hl]
    ld c, a
    ld c, e
    ld [hl], b

jr_025_6C05:
    ld b, a
    ld b, h
    add d
    ld b, a
    ld bc, $8344
    ld b, a
    db $10
    ld b, h
    ld b, a
    ld b, a
    ld b, h
    cp $41
    cp $09
    ld b, c
    cp $09
    cp $57
    ld b, a
    ld d, a
    ld b, h
    add h
    rst $28
    inc bc
    dec c
    cp $0E
    adc [hl]
    cp $03
    dec c
    cp $0E
    add h
    rst $28
    ld [$5744], sp
    ld b, a
    ld l, [hl]
    ld c, a
    ld e, h
    ld c, e
    ld e, [hl]
    add d
    ld b, h
    add e
    ld b, a
    add d
    ld b, h
    rlca
    ld b, a
    dec c
    ld b, c
    ld c, $09
    inc a
    ld b, c
    add d
    add hl, bc
    inc c
    inc c
    ld b, c
    cp $09
    ld b, c
    dec c
    add hl, bc
    cp $47
    ld d, a
    ld b, h
    ld d, a
    add h
    rst $28
    inc b
    db $10
    dec bc
    dec d
    ld de, $FE82
    ld [bc], a
    inc sp
    inc d
    add d
    cp $02
    inc sp
    inc d
    add d
    cp $06
    inc sp
    inc d
    rrca
    db $10
    ld [$8442], sp
    rst $28
    jr jr_025_6CBE

    ld d, e
    ld c, d
    ld c, c
    ld e, h
    ld c, a
    ld e, [hl]
    ld c, e
    ld l, [hl]
    ld [hl], h
    ld a, [hl]
    ld a, b
    ld [hl], e
    ld l, a
    ld [hl], a
    ld a, a
    ld e, h
    ld c, [hl]
    ld d, a
    ld b, h
    ld c, [hl]
    ld e, h
    ld b, h
    ld d, a
    add h
    rst $28
    add d
    ld a, [c]
    ld b, $F4
    push af
    push hl
    db $E4
    ld [c], a
    db $E3
    add h
    rst $28
    inc de
    ld [bc], a
    dec de
    rst $28
    ld hl, $3A58
    jr jr_025_6CBC

    rla
    scf
    dec e
    ld l, e
    rla
    ld e, b
    rra
    ld d, $1B
    ld [bc], a
    ld hl, $EF85
    jr nz, jr_025_6CFF

    ld c, [hl]
    ld c, c
    ld c, d
    ld b, a
    ld e, [hl]
    ld c, e
    ld e, [hl]
    ld b, l
    ld b, h
    ld b, l
    ld [hl], b
    ld b, l
    ld b, h
    ld c, c
    ld c, d
    ld b, h

jr_025_6CBC:
    ld b, l
    ld c, d

jr_025_6CBE:
    ld c, c
    rst $20
    add sp, -$17
    ld [$5958], a
    ld e, d
    ld e, e
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add d
    inc l
    add d
    ld l, $82
    and $82
    or $88
    ld c, b
    ld bc, $8329
    ld bc, $2102
    add hl, bc
    add d
    ld hl, $488C
    adc b
    add hl, bc
    add h
    add hl, hl
    add l
    ld c, b
    add e
    ld l, c
    inc b
    add hl, hl
    ld l, c
    ld b, c
    add hl, hl
    add d
    add hl, bc
    add d
    ld l, c
    add e
    add hl, bc
    inc bc
    ld h, c
    ld c, c
    ld c, b
    add d
    ld c, c
    adc b
    ld c, b
    add h
    ld hl, $0182

jr_025_6CFF:
    dec b
    add hl, bc
    ld c, c
    ld bc, $0129
    add e
    ld hl, $0905
    add hl, hl
    add hl, hl
    add hl, bc
    ld b, c
    add d
    add hl, bc
    inc bc
    ld b, $0E
    ld b, $82
    ld c, $82
    ld l, [hl]
    dec bc
    ld h, $21
    ld h, $2E
    add hl, hl
    add hl, bc
    add hl, hl
    ld h, c
    add hl, hl
    ld l, c
    ld b, c
    add h
    add hl, hl
    ld bc, $8449
    ld l, c
    add d
    add hl, bc
    ld bc, $8469
    add hl, bc
    ld bc, $8861
    ld c, b
    ld [bc], a
    ld [bc], a
    ld hl, $0282
    dec b
    ld bc, $0222
    ld [hl+], a
    ld bc, $0283
    inc b
    ld [hl+], a
    ld hl, $0222
    add h
    add hl, bc
    inc bc
    ld b, $6E
    ld c, $86
    ld l, [hl]
    inc bc
    ld l, $6E
    ld l, $85
    add hl, hl
    ld [bc], a
    ld l, c
    add hl, hl
    adc [hl]
    ld l, c
    inc bc
    add hl, bc
    ld l, c
    add hl, bc
    sub b
    ld c, b
    ld [$0102], sp
    ld [bc], a
    ld bc, $2229
    add hl, hl
    ld [hl+], a
    add h
    add hl, bc
    add h
    ld c, $01
    ld l, [hl]
    add e
    ld c, $84
    ld l, $85
    add hl, hl
    inc bc
    ld l, c
    ld hl, $8209
    ld l, c
    ld [bc], a
    ld bc, $8209
    ld l, c
    ld [bc], a
    ld bc, $8209
    ld l, c
    ld bc, $8301
    add hl, bc
    add d
    ld c, c
    sub b
    ld c, b
    db $10
    ld [bc], a
    ld bc, $0103
    add hl, hl
    ld [hl+], a
    add hl, hl
    dec hl
    add hl, hl
    ld c, c
    ld hl, $0A49
    ld c, $09
    ld a, [bc]
    add h
    ld c, $0C
    ld l, $2A
    ld a, [hl+]
    add hl, hl
    ld l, c
    add hl, bc
    ld l, c
    ld c, c
    ld hl, $4829
    add hl, hl
    add d
    add hl, bc
    ld [bc], a
    ld bc, $8421
    add hl, bc
    rlca
    ld hl, $0929
    add hl, hl
    add hl, bc
    ld bc, $9509
    ld c, b
    ld [$6929], sp
    ld bc, $2109
    add hl, hl
    ld c, b
    add hl, hl
    add d
    add hl, bc
    ld [bc], a
    ld bc, $8421
    add hl, bc
    add d
    add hl, hl
    dec b
    add hl, bc
    add hl, hl
    add hl, bc
    ld bc, $8909
    ld c, b
    add e
    dec bc
    inc bc
    add hl, bc
    dec bc
    dec bc
    add d
    add hl, bc
    add d
    dec hl
    ld [bc], a
    add hl, hl
    dec hl
    adc [hl]
    ld c, b
    add d
    ld l, b
    add h
    ld c, b
    add d
    add hl, bc
    ld a, [bc]
    add hl, hl
    ld hl, $0169
    ld hl, $2149
    ld l, c
    ld hl, $8401
    ld hl, $4105
    ld hl, $0141
    ld h, c
    add d
    ld bc, $0905
    ld hl, $2941
    ld hl, $4884
    inc b
    dec bc
    ld bc, $0103
    add h
    ld l, c

jr_025_6E0F:
    inc b
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    adc h
    ld c, b
    add e
    inc hl
    adc c
    ld h, $05
    ld b, c
    ld bc, $4169
    ld h, c
    add d
    ld b, c
    ld bc, $8369
    ld b, c
    inc bc
    ld h, c
    ld bc, $8221
    ld bc, $2908
    ld bc, $0901
    ld hl, $2909
    ld hl, $4884
    inc b
    dec bc

jr_025_6E39:
    add hl, bc
    dec bc
    ld [bc], a
    add d
    add hl, bc
    add d
    ld a, [bc]
    inc b
    add hl, hl
    dec hl
    ld [bc], a
    dec hl
    adc h
    ld b, $82
    inc bc
    ld [bc], a
    ld b, $03
    adc h
    ld b, $84
    ld bc, $2184
    ld [bc], a
    ld bc, $8209
    ld bc, $6903
    ld bc, $8521
    ld bc, $2102
    ld l, c
    add d
    ld bc, $0982
    ld bc, $8301
    add hl, bc
    ld c, $29
    add hl, bc
    ld hl, $0929
    add hl, hl
    ld l, b
    nop
    jr nz, @+$4A

    jr nz, jr_025_6EDD

    jr nz, jr_025_6E77

jr_025_6E77:
    add h
    jr nz, @+$07

    ld b, b
    jr nz, @+$42

    nop
    jr z, @-$7B

    nop
    ld [bc], a
    jr nz, jr_025_6E8C

    add d
    jr nz, jr_025_6E0F

    ld b, $83
    add hl, bc
    ld b, $01

jr_025_6E8C:
    add hl, hl
    ld hl, $0129
    ld hl, $0182
    inc bc
    ld a, [bc]
    ld bc, $8201
    ld a, [bc]
    inc b
    ld bc, $0A21
    ld hl, $0584
    adc b
    ld c, b
    dec b
    ld b, b
    nop
    ld l, b
    ld b, b
    ld h, b
    add d
    ld b, b
    ld bc, $8368
    ld b, b
    inc bc
    ld h, b
    nop
    jr nz, @-$7C

    nop
    add h
    jr nz, jr_025_6E39

    nop
    dec b
    ld [$0048], sp
    jr z, jr_025_6EBE

jr_025_6EBE:
    add e
    jr nz, jr_025_6EC5

    ld [$6E28], sp
    ld c, [hl]

jr_025_6EC5:
    add d
    ld c, $82
    ld l, [hl]
    add d
    ld c, $82
    ld bc, $0982
    add d
    ld a, [bc]
    inc b
    add hl, bc
    add hl, hl
    ld h, c
    ld hl, $2982
    add d
    dec c
    ld [bc], a
    dec l
    ld l, l

jr_025_6EDD:
    adc c
    ld c, b
    add e
    ld l, b
    inc b
    jr z, jr_025_6F4C

    ld b, b
    jr z, @-$7C

    ld [$6882], sp
    add e
    ld [$6001], sp
    add h
    ld c, b
    inc b
    jr z, jr_025_6F5B

    nop
    ld [$0E82], sp
    ld [bc], a
    ld b, $6E
    add d
    ld l, $02
    ld c, [hl]
    ld h, $82
    ld c, $01
    ld l, $84
    ld l, [hl]
    dec bc
    ld c, $6E
    ld l, [hl]
    ld l, $6E
    ld b, $2E
    ld c, $2E
    ld hl, $8269
    add hl, bc
    ld [$0969], sp
    ld bc, $2909
    ld l, c
    ld bc, $8409
    ld c, b
    inc bc
    jr z, jr_025_6F89

    ld b, b
    add h
    jr z, jr_025_6F26

    ld c, b

jr_025_6F26:
    add h
    ld l, b
    add d
    ld [$6801], sp
    add h
    ld [$6009], sp
    ld [$2808], sp
    jr nz, jr_025_6F3B

    ld c, [hl]
    ld b, $6E
    adc b
    ld c, $02

jr_025_6F3B:
    ld l, [hl]
    ld c, [hl]
    adc c
    ld l, [hl]
    inc b
    ld c, $69
    ld hl, $8269
    ld bc, $6907
    ld hl, $0569
    ld l, l

jr_025_6F4C:
    dec b
    dec c
    add h
    ld c, b

jr_025_6F50:
    inc bc
    jr z, jr_025_6FBB

    jr z, @-$70

    ld l, b
    inc bc
    ld [$0868], sp
    add h

jr_025_6F5B:
    ld c, b
    ld a, [bc]
    ld l, [hl]
    ld h, $6E
    ld l, $0E
    ld l, $0E
    ld l, $6E
    ld c, [hl]
    add e
    ld l, [hl]
    rlca
    ld c, [hl]
    ld l, $6E
    add hl, hl
    ld hl, $0129
    add e
    ld hl, HeaderLogo
    ld b, c
    ld hl, $8269
    ld bc, $4107
    ld hl, $6D69
    dec h
    dec l
    dec h
    add h
    ld c, b
    inc b
    jr z, jr_025_6FEF

    jr nz, jr_025_6F91

jr_025_6F89:
    add d
    ld l, b
    ld [bc], a
    nop
    ld [$6882], sp
    ld [bc], a

jr_025_6F91:
    nop
    ld [$6882], sp
    ld bc, $8300
    ld [$4886], sp
    ld [bc], a
    ld c, $26
    add d
    ld l, $84
    ld c, $03
    ld b, $0E
    ld b, $82
    ld c, $03
    ld b, $0E
    ld b, $82
    ld c, $02
    ld b, $0E
    add e
    ld l, $01
    ld h, $84
    ld c, b
    ld [bc], a
    inc c
    inc l
    add d

jr_025_6FBB:
    inc c
    add d
    inc l
    add d
    inc c
    add h
    ld c, b
    ld [$2820], sp
    ld c, b
    jr z, @+$0A

    jr z, jr_025_6FCA

jr_025_6FCA:
    jr z, jr_025_6F50

    ld [$2007], sp
    jr z, @+$0A

    jr z, @+$0A

    nop
    ld [$4885], sp
    ld bc, $8306
    ld c, $06
    ld l, [hl]
    ld l, $0E
    ld l, $0E
    ld c, [hl]
    add e
    ld c, $04
    ld c, [hl]
    ld c, $0E
    ld l, [hl]
    add e
    ld l, $84
    inc c
    adc b
    dec b

jr_025_6FEF:
    ld [$2404], sp
    inc b
    inc h
    inc c
    inc l
    inc c
    inc l
    nop
    ld [hl-], a
    call nz, $B309
    ld [$A101], sp
    sub d
    and d
    ld [bc], a
    ld bc, $8208
    ld bc, $A585
    sub e
    and [hl]
    inc b
    and b
    ld [$A008], sp
    adc b
    ld bc, $A182
    adc b
    and d
    ld [bc], a
    ld bc, $8308
    ld bc, $A584
    adc e
    and [hl]
    ld bc, $8708
    and c
    inc bc
    and b
    ld [$8908], sp
    ld bc, $A182
    add e
    and d
    add h
    and e
    inc b
    and h
    ld bc, $0008
    add e
    ld bc, $A583
    inc bc
    ld [$A6A0], sp
    adc b
    and a
    adc b
    and c
    inc bc
    and b
    ld [$8308], sp
    ld bc, $0084
    add e
    ld bc, $A104
    and b
    and b
    ld [$A484], sp
    dec b
    and l
    ld bc, $C108
    nop
    add l
    ld bc, $0803
    and b
    and [hl]
    add h
    and a
    adc c
    ld bc, $A183
    inc b
    and b
    ld [$0108], sp
    add [hl]
    nop
    add e
    ld bc, $A104
    and a
    and b
    ld [$A483], sp
    add d
    and l
    adc h
    ld [$A001], sp
    add e
    and a
    adc d
    ld bc, $A182
    inc b
    and b
    ld [$0108], sp
    add a
    nop
    add d
    ld bc, $A604
    and a
    and b
    ld [$A482], sp
    add d
    and l
    inc bc
    and e
    and h
    ld [$0185], sp
    ld b, $00
    pop bc
    ld [$A101], sp
    and b
    add e
    and a
    add d
    ld bc, $0086
    add e
    ld bc, $A102
    and b
    add d
    ld [$0101], sp
    add a
    nop
    add d
    ld bc, $A605
    and a
    and b
    ld [$82A4], sp
    and l
    add d
    and e
    add h
    and d
    ld bc, $83A1
    ld bc, $0003
    ld [$8301], sp
    and d
    ld [bc], a
    and c
    and a
    add d
    ld bc, $0087
    add d
    ld bc, $A102
    and b
    add d
    ld [$0182], sp
    add [hl]
    nop
    add d
    ld bc, $A604
    and a
    and b
    ld [$A582], sp
    inc bc
    and h
    and e
    and e
    add d
    and d
    ld bc, $8308
    and c
    add e
    ld bc, $0802
    ld bc, $A685
    add d
    ld bc, $0082
    ld bc, $8440
    nop
    add d
    ld bc, $A182
    add d
    ld [$0184], sp
    add h
    nop
    add d
    ld bc, $A605
    and a
    and b
    ld [$82A5], sp
    and h
    add d
    and e
    add e
    and d
    add h
    and c
    add h
    ld [$A701], sp
    add h
    and [hl]
    add d
    ld bc, $0087
    add d
    ld bc, $A101
    add e
    ld [$018A], sp
    inc b
    and a
    and b
    and b
    ld [$A483], sp
    add d
    and e
    add d
    and d
    add e
    and c
    add e
    and d
    inc bc
    ld bc, $A108
    add h
    and b
    inc bc
    and d
    ld bc, $8401
    nop
    inc bc
    pop bc
    nop
    nop
    add d
    ld bc, $A482
    add d
    ld [$A482], sp
    adc b
    ld bc, $A705
    and b
    and b
    ld [$82A2], sp
    and h
    inc bc
    and e
    ld [$83A2], sp
    and c
    adc e
    and d
    ld bc, $83A1
    ld bc, $0085
    add e
    ld bc, $A482
    add d
    ld [$A482], sp
    inc b
    and l
    and h
    and h
    and b
    add l
    and a
    add d
    ld bc, $0882
    add l
    and d
    add d
    and c
    add e
    and d
    inc bc
    and l
    and [hl]
    and [hl]
    add l
    and d
    add e
    and c
    adc c
    ld bc, $A483
    add d
    ld [$A482], sp
    inc bc
    ld [$A4A3], sp
    add e
    and b
    add d
    and c
    add d
    ld bc, $0884
    add h
    and d
    ld bc, $83A1
    and e
    add d
    and h
    inc bc
    and l
    and [hl]
    and a
    add d
    and d
    ld [bc], a
    and c
    ld [$A184], sp
    add e
    ld bc, $A201
    add e
    ld bc, $A484
    add d
    ld [$A482], sp
    add d
    and e
    inc bc
    and h
    and b
    and b
    add e
    and c
    add d
    ld bc, $0002
    pop bc
    add a
    ld [$A383], sp
    dec b
    and h
    and e
    jr nz, @-$57

    and b
    add d
    and d
    add a
    and c
    add l
    and d
    add l
    and h
    add d
    ld [$A482], sp
    inc b
    and e
    and d
    and d
    and b
    add h
    and c
    add e
    ld bc, $0003
    ld [$8501], sp
    and d
    add h
    and e
    ld [bc], a
    and d
    and c
    add d
    and b
    adc c
    and c
    add l
    and d
    add l
    and h
    add d
    ld [$A482], sp
    ld bc, $83A3
    and d
    add h
    and c
    ld bc, $85A7
    ld bc, $A184
    add a
    and d
    ld bc, $89A1
    and d
    add l
    and e
    ld bc, $85A2
    and h
    add d
    ld [$A482], sp
    add d
    and e
    add e
    and d
    add d
    and c
    inc bc
    and b
    and a
    and a
    add e
    ld bc, $A201
    add h
    and c
    add a
    and d
    ld [bc], a
    and c
    ld [$A187], sp
    ld bc, $86A2
    and e
    add l
    and h
    add d
    ld [$A482], sp
    add d
    and e
    add h
    ld bc, $0802
    and b
    add d
    and a
    add e
    and b
    ld bc, $84A2
    and c
    add e
    and e
    inc bc
    and h
    ld [$8AA3], sp
    and d
    ld [bc], a
    and e
    ld [$A385], sp
    add l
    and h
    add d
    ld [$A482], sp
    adc b
    ld [$A783], sp
    add d
    and b
    ld bc, $83A2
    and c
    ld bc, $8308
    and e
    inc bc
    and h
    ld [$89A4], sp
    and d
    add d
    and e
    ld [bc], a
    and h
    and d
    add h
    and e
    add l
    and h
    add d
    ld [$A482], sp
    ld [bc], a
    and e
    and d
    add d
    ld bc, $0005
    pop bc
    ld [$A001], sp
    add d
    and a
    add d
    and b
    ld bc, $83A2
    and c
    ld bc, $83A6
    and h
    ld [bc], a
    and l
    ld [$A286], sp
    ld [bc], a
    and c
    ld [$A282], sp
    add d
    and e
    add d
    and h
    ld bc, $84A2
    and e
    add h
    and h
    add d
    ld [$A482], sp
    add d
    and e
    add e
    ld bc, $0003
    ld [$8201], sp
    and b
    add a
    ld bc, $A601
    add e
    and h
    adc e
    ld [$A203], sp
    and e
    and e
    add e
    and h
    ld bc, $84A2
    and e
    add e
    and h
    add d
    ld [$A482], sp
    add e
    and e
    add e
    ld bc, $0802
    ld bc, $A082
    add a
    ld bc, $A601
    add e
    and h
    inc b
    and e
    ld [$00C1], sp
    add d
    ld bc, $A783
    inc bc
    ld [$A1A1], sp
    add d
    and e
    add h
    and h
    ld bc, $84A2
    and e
    add d
    and h
    add d
    ld [$A482], sp
    ld [bc], a
    and e
    ld [$A382], sp
    add d
    ld bc, $0802
    ld bc, $A082
    add d
    ld bc, $0083
    add d
    ld bc, $A485
    ld [bc], a
    ld [$8300], sp
    ld bc, $A783
    inc bc
    ld [$A1A1], sp
    add d
    and e
    add l
    and h
    add d
    and d
    add d
    and e
    add d
    and h
    add d
    ld [$A482], sp
    add h
    and e
    inc bc
    and d
    and b
    ld [$A083], sp
    add d
    ld bc, $0003
    pop bc
    nop
    add d
    ld bc, $A485
    ld bc, $8308
    ld bc, $A701
    add e
    ld bc, $0804
    and c
    ld [$88A3], sp
    and h
    ld bc, $8308
    and e
    add d
    ld [$A482], sp
    add d
    and l
    rlca
    ld [$A2A2], sp
    and b
    ld [$A0A7], sp
    add e
    ld bc, $0083
    add d
    ld bc, $A402
    and l
    add d
    and [hl]
    ld [bc], a
    and h
    ld [$0182], sp
    ld [bc], a
    and b
    and a
    add d
    ld bc, $0885
    add l
    and h
    add e
    and l
    add h
    and e
    add d
    ld [$A482], sp
    ld bc, $87A5
    ld [$0184], sp
    add e
    nop
    add d
    ld bc, $A482
    inc b
    and l
    and [hl]
    and a
    ld [$A082], sp
    add e
    ld bc, $0082
    inc bc
    ld [$0800], sp
    add [hl]
    and h
    add e
    and l
    ld bc, $83A3
    and h
    add d
    ld [$A482], sp
    inc bc
    and e
    and h
    ld [$A383], sp
    ld bc, $8408
    ld bc, $0084
    add d
    ld bc, $A406
    and e
    jr nz, @-$57

    and b
    ld [$A082], sp
    add e
    ld bc, $0801
    add e
    nop
    ld bc, $8608
    and h
    add e
    and l
    ld bc, $83A3
    and h
    add d
    ld [$A482], sp
    add d
    and e
    ld [bc], a
    ld [$83A3], sp
    and d
    add e
    ld bc, $0085
    add d
    ld bc, $A303
    and d
    and c
    add d
    and b
    inc bc
    ld [$A0A0], sp
    add d
    ld bc, $0002
    ld [$0083], sp
    ld [bc], a
    ld [$8501], sp
    and h
    add e
    and l
    ld bc, $83A3
    and h
    add d
    ld [$A482], sp
    add e
    and e
    add h
    and d
    add d
    ld bc, $0086
    add d
    ld bc, $A406
    and d
    and d
    and c
    and h
    ld [$A082], sp
    add d
    ld bc, $0008
    ld [$C000], sp
    nop
    ld [$A401], sp
    add l
    and l
    add d
    and [hl]
    ld [bc], a
    and e
    and l
    add d
    and h
    add d
    ld [$A482], sp
    add e
    and e
    add h
    and d
    add d
    ld bc, $0083
    inc bc
    ld b, c
    nop
    nop
    add d
    ld bc, $A485
    inc bc
    ld [$A0A0], sp
    add d
    ld bc, $0001
    add [hl]
    ld [$A584], sp
    add d
    and h
    inc b
    and l
    and [hl]
    and a
    and l
    add d
    and h
    add d
    ld [$A482], sp
    add d
    and e
    add l
    and d
    add d
    ld bc, $0086
    add d
    ld bc, $A484
    dec b
    and l
    ld [$08A0], sp
    and a
    add d
    ld bc, $0801
    add e
    nop
    ld [bc], a
    ld [$8401], sp
    and l
    ld b, $A4
    and e
    jr nz, @-$57

    and b
    and l
    add d
    and h
    add d
    ld [$A482], sp
    inc bc
    and e
    and d
    and d
    add d
    and b
    ld [bc], a
    ld [$83A5], sp
    ld bc, $0084
    add e
    ld bc, $A484
    add l
    ld [$A701], sp
    add [hl]
    ld bc, $A685
    inc bc
    and e
    and d
    and c
    add d
    and b
    inc bc
    and l
    and h
    and h
    add d
    ld [$A482], sp
    inc bc
    ld [$A0A0], sp
    add h
    and l
    adc d
    ld bc, $A484
    dec b
    and e
    ld [$0801], sp
    and c
    add d
    and b
    add l
    ld bc, $A686
    add d
    and d
    ld bc, $83A1
    and h
    inc bc
    and l
    ld [$8208], sp
    and h
    adc b
    and l
    adc b
    ld bc, $A485
    dec b
    and l
    ld [$0801], sp
    and c
    add d
    and [hl]
    adc [hl]
    and l
    add d
    and [hl]
    add d
    and l
    add d
    ld [$A482], sp
    adc [hl]
    and l
    add a
    and h
    sbc e
    ld [$A482], sp
    add a
    and l
    ld [bc], a
    and [hl]
    ld [$A28C], sp
    inc b
    and e
    ld [$08A4], sp
    add e
    and c
    adc c
    ld bc, $A402
    and d
    add a
    and e
    add d
    ld [$A402], sp
    ld bc, $A587
    ld [bc], a
    and [hl]
    ld [$A38E], sp
    ld [bc], a
    and h
    ld [$A182], sp
    add e
    ld bc, $0085
    add e
    ld bc, $A001
    add [hl]
    and e
    inc b
    and h
    ld [$A408], sp
    add a
    ld bc, $0803
    and b
    ld [$0188], sp
    add [hl]
    and e
    ld [bc], a
    and h
    ld [$A182], sp
    add e
    ld bc, $0086
    add d
    ld bc, $A001
    add [hl]
    and e
    ld b, $A4
    ld [$A408], sp
    ld bc, $8301
    nop
    add [hl]
    ld [$0187], sp
    add [hl]
    and e
    ld [bc], a
    and h
    ld [$A182], sp
    add d
    ld bc, $0087
    add d
    ld bc, $A001
    add [hl]
    and e
    ld b, $A4
    ld [$A408], sp
    ld bc, $8301
    nop
    add d
    ld bc, $0803
    ld bc, $8208
    ld bc, $0084
    add d
    ld bc, $A383
    dec b
    ld [$A3A3], sp
    and h
    ld [$A182], sp
    add d
    ld bc, $0087
    add d
    ld bc, $A001
    add [hl]
    and e
    ld b, $A4
    ld [$A408], sp
    ld bc, $0201
    nop
    pop bc
    add d
    nop
    ld [bc], a
    ld bc, $8308
    ld bc, $0085
    add d
    ld bc, $A383
    ld bc, $84A4
    and e
    add d
    and c
    add d
    ld bc, $0087
    add d
    ld bc, $A002
    ld [$A385], sp
    ld b, $A4
    ld [$A408], sp
    ld bc, $8501
    nop
    ld [bc], a
    ld [$8701], sp
    nop
    add d
    ld bc, $A384
    ld bc, $83A4
    and e
    add d
    and c
    add e
    ld bc, $0083
    inc bc
    pop bc
    nop
    nop
    add d
    ld bc, $A002
    ld [$A385], sp
    ld b, $A4
    ld [$A408], sp
    ld bc, $8501
    nop
    ld bc, $8408
    nop
    ld bc, $83C1
    nop
    add d
    ld bc, $A385
    inc bc
    and h
    and e
    and e
    add d
    and c
    add e
    ld bc, $0086
    inc b
    ld [$A001], sp
    ld [$0185], sp
    inc b
    and h
    ld [$A408], sp
    add e
    ld bc, $0084
    ld bc, $8808
    nop
    add d
    ld bc, $A402
    and l
    add d
    and [hl]
    add d
    and e
    ld [bc], a
    and h
    and e
    add d
    and c
    add e
    ld bc, $0085
    add [hl]
    ld [$0185], sp
    add d
    ld [$A401], sp
    add h
    ld bc, $0083
    ld [bc], a
    ld [$8642], sp
    nop
    add e
    ld bc, $A482
    ld [$A6A5], sp
    and a
    and e
    and h
    ld [$A5A1], sp
    add d
    ld bc, $0087
    inc b
    ld [$0000], sp
    ld [$0084], sp
    add d
    ld bc, $0882
    add e
    and e
    add h
    ld bc, $0002
    ld [$0086], sp
    add h
    ld bc, $A405
    and e
    jr nz, @-$57

    and b
    add h
    and e
    inc bc
    and h
    ld bc, $8701
    nop
    ld [bc], a
    ld [$8443], sp
    nop
    ld [bc], a
    pop bc
    nop
    add d
    ld bc, $0882
    add h
    and e
    add h
    ld bc, $0801
    adc c
    ld bc, $A404
    and e
    and d
    and c
    add d
    and b
    add h
    and e
    inc bc
    and h
    ld bc, $8701
    nop
    ld bc, $8708
    nop
    add d
    ld bc, $0882
    add [hl]
    and e
    add d
    ld bc, $0801
    add a
    ld bc, $A684
    add d
    and d
    ld bc, $86A1
    and [hl]
    adc c
    ld bc, $0801
    adc c
    ld bc, $08B3
    nop
    ld b, b
    nop
    db $10
    ret nz

    ld b, c
    ret nz

    adc d
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $A8C0
    and [hl]
    add h
    and b
    add d
    ret nz

    ld bc, $89A4
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8EC0
    and [hl]
    add l
    ld bc, $A695
    add h
    and b
    add d
    ret nz

    add d
    and h
    adc b
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $9501
    and [hl]
    add h
    and b
    add d
    ret nz

    add e
    and h
    add a
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $8701
    and [hl]
    ld bc, $85A5
    and [hl]
    adc c
    ld bc, $A083
    add d
    ret nz

    add h
    and h
    add [hl]
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $8601
    and [hl]
    add d
    and l
    ld bc, $84A7
    and [hl]
    ld bc, $8701
    nop
    ld bc, $8301
    and b
    add d
    ret nz

    add l
    and h
    adc h
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $8501
    and [hl]
    add e
    and l
    add d
    and a
    add e
    and [hl]
    ld bc, $8701
    nop
    ld bc, $8301
    and b
    add d
    ret nz

    add l
    and h
    adc b
    and [hl]
    ld bc, $92C0
    and [hl]
    add l
    ld bc, $A684
    add h
    and l
    add e
    and a
    add d
    and [hl]
    ld bc, $8701
    nop
    ld bc, $8301
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    add l
    ld bc, $A68F
    add h
    and e
    ld bc, $84C0
    and a
    ld [bc], a
    and [hl]
    ld bc, $0087
    ld bc, $8301
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $9001
    and [hl]
    add e
    and e
    add h
    and c
    add d
    and [hl]
    adc c
    ld bc, $A083
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $9101
    and [hl]
    add d
    and e
    add e
    and c
    adc d
    and [hl]
    add l
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $9201
    and [hl]
    inc bc
    and e
    and c
    and c
    adc e
    and [hl]
    add l
    and b
    add d
    ret nz

    add l
    and h
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $8301
    nop
    ld bc, $9301
    and [hl]
    ld bc, $8CA1
    and [hl]
    add l
    and b
    add d
    ret nz

    add e
    and h
    or [hl]
    ret nz

    add l
    and b
    add d
    ret nz

    add h
    and h
    adc e
    and d
    ld bc, $8FA4
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $89C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add h
    and h
    adc e
    and d
    add d
    and h
    adc [hl]
    and [hl]
    ld bc, $8EC0
    and [hl]
    ld bc, $89C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add h
    and h
    adc b
    and d
    ld bc, $86C0
    and h
    ld bc, $8BC0
    and [hl]
    ld bc, $87C0
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $89C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add e
    and h
    adc c
    and d
    ld bc, $86C0
    and h
    ld bc, $89C0
    and [hl]
    add d
    ld bc, $C001
    add a
    and [hl]
    ld bc, $86C0
    and [hl]
    ld bc, $89C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add d
    and h
    adc d
    and d
    ld bc, $86C0
    and h
    ld bc, $89C0
    and [hl]
    inc b
    ld bc, $0000
    ld bc, $A686
    ld bc, $90C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add d
    and h
    adc c
    and d
    adc d
    and h
    adc b
    and [hl]
    inc b
    ld bc, $0000
    ld bc, $A686
    ld bc, $90C0
    and [hl]
    ld bc, $85C0
    and b
    adc h
    ret nz

    adc h
    and h
    add [hl]
    ret nz

    ld [bc], a
    and [hl]
    ld bc, $0082
    ld bc, $8601
    and [hl]
    ld bc, $90C0
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    ld bc, $8BA0
    and d
    adc c
    ld bc, $A202
    ret nz

    add h
    and d
    adc l
    ret nz

    sub b
    and [hl]
    ld bc, $85C0
    and b
    add d
    ret nz

    add d
    and b
    adc d
    and d
    adc c
    ld bc, $A202
    ret nz

    adc b
    and d
    ld bc, $88C0
    and d
    adc l
    ret nz

    add d
    and b
    ld bc, $83A2
    ret nz

    add e
    and b
    add d
    ret nz

    add e
    and b
    adc c
    and d
    adc c
    ld bc, $A202
    ret nz

    adc b
    and d
    ld bc, $88C0
    and d
    ld bc, $86C0
    and h
    ld bc, $84A6
    and b
    inc bc
    ret nz

    and b
    and b
    add h
    and d
    add e
    and b
    add d
    ret nz

    add h
    and b
    adc b
    and d
    add e
    ld bc, $0083
    add e
    ld bc, $A202
    ret nz

    sub c
    and d
    ld bc, $86C0
    and h
    ld bc, $84A6
    and b
    inc bc
    ret nz

    and b
    and b
    add l
    and d
    add d
    and b
    add d
    ret nz

    add l
    and b
    add a
    and d
    add e
    ld bc, $0083
    add e
    ld bc, $A202
    ret nz

    sub c
    and d
    ld bc, $86C0
    and h
    ld bc, $84A6
    and b
    inc bc
    ret nz

    and b
    and b
    add [hl]
    and d
    inc bc
    and b
    ret nz

    ret nz

    add [hl]
    and b
    add [hl]
    and d
    add e
    ld bc, $0083
    add e
    ld bc, $A293
    ld bc, $86C0
    and h
    add l
    and b
    inc bc
    ret nz

    and b
    and b
    add a
    and d
    add d
    ret nz

    add a
    and b
    add l
    and d
    adc c
    ld bc, $A293
    ld bc, $86C0
    and h
    add l
    and b
    inc bc
    ret nz

    and b
    and b
    add a
    and d
    add d
    ret nz

    adc b
    and b
    add h
    and d
    adc c
    ld bc, $A28D
    add [hl]
    ld bc, $C001
    add [hl]
    and h
    add l
    and b
    inc bc
    ret nz

    and b
    and b
    add a
    and d
    add d
    ret nz

    adc c
    and b
    add e
    and d
    adc c
    ld bc, $A28D
    ld bc, $8501
    nop
    ld bc, $86C0
    and h
    add l
    and b
    ld bc, $83C0
    and b
    adc b
    ret nz

    adc d
    and b
    add d
    and d
    adc c
    ret nz

    adc l
    and d
    ld bc, $8501
    nop
    ld bc, $86C0
    and h
    add l
    and b
    ld bc, $84C0
    and b
    add e
    and [hl]
    add d
    and b
    add d
    ret nz

    adc e
    and b
    ld bc, $89A2
    ret nz

    adc l
    and d
    ld bc, $8501
    nop
    ld bc, $86C0
    and h
    add l
    and b
    ld bc, $89C0
    and b
    add d
    ret nz

    adc b
    and b
    sbc e
    ret nz

    add h
    nop
    ld [bc], a
    pop bc
    ret nz

    add [hl]
    and h
    add l
    and b
    ld bc, $89C0
    and b
    add d
    ret nz

    add a
    and b
    sub e
    and [hl]
    adc b
    and d
    ld bc, $8501
    nop
    ld bc, $86C0
    and h
    add l
    and b
    ld bc, $89C0
    and b
    add d
    ret nz

    add [hl]
    and b
    sub h
    and [hl]
    adc b
    and d
    ld bc, $8501
    nop
    ld bc, $86C0
    and h
    add l
    and b
    ld bc, $89C0
    and b
    add d
    ret nz

    add l
    and b
    sub l
    and [hl]
    adc b
    and d
    add [hl]
    ld bc, $C001
    add [hl]
    and h
    add l
    and b
    add h
    ret nz

    add [hl]
    and b
    add d
    ret nz

    add h
    and b
    sub [hl]
    and [hl]
    adc [hl]
    and d
    ld bc, $83C0
    and h
    add e
    and [hl]
    adc b
    and b
    add e
    ret nz

    add h
    and b
    add d
    ret nz

    add e
    and b
    sub a
    and [hl]
    adc [hl]
    and d
    ld bc, $83C0
    and h
    add e
    and [hl]
    adc d
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add d
    and b
    sbc b
    and [hl]
    add a
    and d
    adc b
    ret nz

    add e
    and h
    add e
    and [hl]
    adc d
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    ld bc, $97A0
    and [hl]
    add e
    and b
    add a
    ret nz

    add [hl]
    and b
    ld bc, $83C0
    and h
    adc c
    and [hl]
    add h
    and b
    ld bc, $84C0
    and b
    sbc b
    ret nz

    add l
    and b
    ld bc, $86C0
    and [hl]
    add [hl]
    and b
    ld bc, $83C0
    and h
    adc c
    and [hl]
    add h
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub d
    and d
    ld bc, $85C0
    and b
    ld bc, $86C0
    and [hl]
    add [hl]
    and b
    ld bc, $83C0
    and h
    adc c
    and [hl]
    add h
    and b
    add e
    ret nz

    add d
    and b
    add d
    ret nz

    add e
    and b
    sub d
    and d
    ld bc, $85C0
    and b
    ld bc, $86C0
    and [hl]
    add [hl]
    and b
    ld bc, $8AC0
    and [hl]
    add d
    ret nz

    add h
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub b
    and d
    add d
    and h
    ld bc, $85C0
    and b
    ld [bc], a
    ret nz

    and h
    add l
    and [hl]
    add l
    and b
    add d
    ret nz

    add e
    and h
    adc b
    ret nz

    add l
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub b
    and d
    add d
    and h
    ld bc, $83C0
    and b
    add e
    ret nz

    ld bc, $85A4
    and [hl]
    add h
    and b
    add d
    ret nz

    add h
    and h
    inc bc
    ret nz

    and b
    and b
    add l
    and d
    add l
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub b
    and d
    add d
    and h
    ld bc, $83C0
    and b
    ld bc, $83C0
    and h
    add l
    and [hl]
    add e
    and b
    add d
    ret nz

    add l
    and h
    inc bc
    ret nz

    and b
    and b
    adc d
    and d
    ld bc, $84C0
    and b
    add d
    ret nz

    add h
    and b
    adc l
    ret nz

    add h
    and h
    ld bc, $83C0
    and b
    ld bc, $83C0
    and h
    add h
    and [hl]
    add h
    and b
    ld [bc], a
    ret nz

    and [hl]
    add l
    and h
    inc bc
    ret nz

    and b
    and b
    adc d
    and d
    ld bc, $84C0
    and b
    add d
    ret nz

    add h
    and b
    ld bc, $8DC0
    and [hl]
    add e
    and h
    ld bc, $83C0
    and b
    ld bc, $83C0
    and h
    add e
    and [hl]
    add l
    and b
    ld [bc], a
    ret nz

    and [hl]
    add l
    and h
    inc bc
    ret nz

    and b
    and b
    adc d
    and d
    inc bc
    ret nz

    and b
    and b
    add h
    ret nz

    add h
    and b
    ld bc, $8DC0
    and [hl]
    add e
    and h
    ld bc, $83C0
    and b
    ld bc, $86C0
    and h
    add d
    and [hl]
    add d
    and b
    add e
    and [hl]
    add l
    and h
    inc bc
    ret nz

    and b
    and b
    adc d
    and d
    ld bc, $84C0
    and b
    add d
    ret nz

    add h
    and b
    ld [bc], a
    ret nz

    and h
    adc l
    and [hl]
    add d
    and h
    ld bc, $83C0
    and b
    ld bc, $85C0
    and h
    inc bc
    ret nz

    and [hl]
    and [hl]
    add d
    and b
    adc b
    and [hl]
    inc bc
    ret nz

    and b
    and b
    adc e
    ret nz

    add h
    and b
    add d
    ret nz

    add h
    and b
    inc bc
    ret nz

    and h
    and h
    add d
    and [hl]
    adc l
    ret nz

    add e
    and b
    ld bc, $85C0
    and h
    inc bc
    ret nz

    and [hl]
    and [hl]
    add d
    and b
    add e
    and [hl]
    add l
    and b
    inc b
    ret nz

    and b
    and b
    ret nz

    adc e
    and [hl]
    add e
    and b
    add d
    ret nz

    add h
    and b
    ld bc, $84C0
    and h
    adc l
    and d
    add e
    and b
    ld bc, $85C0
    and h
    ld bc, $85C0
    and b
    ld [bc], a
    ret nz

    and [hl]
    add l
    and b
    inc bc
    ret nz

    and b
    and h
    add h
    and [hl]
    ld bc, $88C0
    and [hl]
    add d
    and b
    add d
    ret nz

    add h
    and b
    ld bc, $83C0
    and h
    adc a
    and d
    add d
    and b
    ld bc, $85C0
    and h
    ld bc, $85C0
    and b
    ld [bc], a
    ret nz

    and [hl]
    add l
    and b
    ld [bc], a
    ret nz

    and h
    add l
    and [hl]
    ld bc, $88C0
    and [hl]
    add d
    and b
    add d
    ret nz

    add h
    and b
    inc bc
    ret nz

    and h
    and h
    sub c
    and d
    ld [bc], a
    and b
    ret nz

    add l
    and h
    ld bc, $85C0
    and b
    add d
    ret nz

    add l
    and b
    add h
    and [hl]
    add e
    and h
    ld bc, $87C0
    and [hl]
    add e
    and b
    add d
    ret nz

    add h
    and b
    ld [bc], a
    ret nz

    and h
    sub e
    and d
    ld bc, $85C0
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    adc b
    and [hl]
    add e
    and h
    add [hl]
    and [hl]
    ld bc, $84C0
    and b
    add d
    ret nz

    add h
    and b
    sub [hl]
    ret nz

    add l
    and h
    ld bc, $87C0
    and b
    ld bc, $87C0
    and [hl]
    ld bc, $83C0
    and h
    add a
    ret nz

    add h
    and b
    add d
    ret nz

    add e
    and b
    sub [hl]
    and [hl]
    ld bc, $85C0
    and h
    ld bc, $88C0
    and b
    add d
    ret nz

    add l
    and [hl]
    ld bc, $83C0
    and h
    add h
    and [hl]
    add d
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub [hl]
    and [hl]
    ld bc, $85C0
    and h
    ld bc, $89C0
    and b
    add a
    ret nz

    add e
    and h
    add e
    and [hl]
    add e
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sub [hl]
    and [hl]
    ld bc, $84C0
    and h
    add d
    ret nz

    adc c
    and b
    add [hl]
    and [hl]
    ld bc, $83C0
    and h
    add e
    and [hl]
    add e
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sbc b
    and [hl]
    add e
    and h
    ld bc, $90C0
    and [hl]
    ld bc, $83C0
    and h
    add e
    and [hl]
    add e
    and b
    ld bc, $84C0
    and b
    add d
    ret nz

    add e
    and b
    sbc b
    and [hl]
    add e
    and h
    ld bc, $90C0
    and [hl]
    ld bc, $83C0
    and h
    add l
    and d
    ld [bc], a
    and b
    ret nz

    add h
    ld bc, $C082
    sbc e
    and [hl]
    add e
    and h
    add d
    ret nz

    sub c
    and [hl]
    add d
    and h

Jump_025_7CFF:
    add [hl]
    and d
    ld [bc], a
    ret nz

    ld bc, $0082
    inc bc
    ld bc, $C0C0
    sbc e
    and [hl]
    add h
    and h
    ld bc, $91C0
    and [hl]
    add d
    and h
    add [hl]
    and d
    ld [bc], a
    ret nz

    ld bc, $0082
    ld bc, $C001
    ld b, c
    ret nz

    nop
    jr z, jr_025_7D8B

    ld bc, $141D
    or b
    inc b
    sub e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    adc b
    ld a, [hl+]
    ld [$7D08], sp
    ld e, a
    ld a, [de]
    dec de
    call $CFCE
    sub l
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add a
    ld a, [hl+]
    ld a, [bc]
    adc e
    ld a, l
    dec c
    ld l, a
    ld c, $0F
    db $DD
    sbc $DF
    adc e
    sub h
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    adc b
    ld a, [hl+]
    ld [bc], a
    add hl, hl
    dec e
    add d
    ld e, $06
    ld l, h
    db $ED
    ld a, c
    rst $28
    dec de
    adc e
    sub c
    ld a, [hl+]
    add d
    adc e
    inc bc
    call $CFCE
    adc b
    ld a, [hl+]
    dec b
    add hl, hl
    dec e
    ld e, $7C
    ld e, $83
    ld a, h
    ld [bc], a
    rrca
    inc c
    sub b
    ld a, [hl+]
    rlca
    adc d
    add hl, de
    ld e, a
    db $DD
    sbc $DF
    ld a, d
    add a
    ld a, [hl+]
    dec b
    add hl, hl
    dec e
    ld e, $89
    adc h
    add d
    ld l, $02
    cpl

jr_025_7D8B:
    dec sp
    sub c
    ld a, [hl+]
    add hl, bc
    add hl, hl
    dec c
    ld l, a
    db $ED
    ld a, c
    rst $28
    dec de
    inc c
    adc e
    add l
    ld a, [hl+]
    ld [bc], a
    add hl, sp
    dec l
    add d
    ld l, $05
    cpl
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld a, d
    sub c
    ld a, [hl+]
    ld [$1D29], sp
    dec a
    ld l, e
    inc a
    ld a, h
    rrca
    dec hl
    add [hl]
    ld a, [hl+]
    ld [bc], a
    adc e
    add hl, sp
    add d
    ld a, [hl-]
    ld [bc], a
    adc e
    adc c
    adc [hl]
    ld a, [hl+]
    inc b
    sbc d
    sbc e
    sbc h
    ld a, [hl+]
    add d
    adc e
    inc b
    add hl, hl
    dec e
    adc h
    ld a, h
    add d
    ld e, $03
    rra
    dec hl
    ld a, d
    sbc c
    ld a, [hl+]
    inc b
    cp l
    cp [hl]
    cp a
    adc e
    add d
    ld a, [hl+]
    ld [$1D29], sp
    ld c, d
    ld e, h
    ld l, h
    ld e, $2F
    dec hl
    sbc d
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add e
    ld a, [hl+]
    ld [bc], a
    add hl, sp
    dec l
    add e
    ld l, $02
    cpl
    dec sp
    sbc d
    ld a, [hl+]
    inc b
    adc e
    cp l
    cp [hl]
    cp a
    add e
    ld a, [hl+]
    ld [bc], a
    adc e
    add hl, sp
    add e
    ld a, [hl-]
    inc b
    dec sp
    sbc d
    sbc e
    sbc h
    sub [hl]
    ld a, [hl+]
    rlca
    adc e
    ld a, [hl+]
    ld a, [hl+]
    cp l
    cp [hl]
    cp a
    adc e
    adc b
    ld a, [hl+]
    inc bc
    call $CFCE
    adc e
    ld a, [hl+]
    inc b
    adc d
    add hl, de
    dec de
    ld a, d
    add e
    ld a, [hl+]
    ld bc, $847B
    ld a, [hl+]
    ld b, $7A
    adc e
    call $CFCE
    ld [$2A86], sp
    ld b, $8A
    add hl, de
    db $DD
    sbc $DF
    ld a, e
    add h
    ld a, [hl+]
    inc bc
    sbc d
    sbc e
    sbc h
    add d
    ld a, [hl+]
    dec b
    adc e
    ld [$0F0D], sp
    dec de
    add [hl]
    ld a, [hl+]
    ld a, [bc]
    adc c
    ld a, e
    add hl, de
    inc c
    db $DD
    sbc $DF
    ld a, l
    adc e
    adc c
    add e
    ld a, [hl+]
    ld [$088B], sp
    dec c
    db $ED
    ld a, c
    rst $28
    dec de
    ld a, e
    add e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    ld d, $08
    add hl, de
    inc a
    dec a
    rrca
    ld a, [hl+]
    ld a, e
    ld a, [hl+]
    adc c
    ld a, [hl+]
    ld a, d
    ld [$0D19], sp
    ld a, a
    db $ED
    ld a, c
    rst $28
    ld a, [hl]
    ld e, a
    ld a, [de]
    inc c
    add d
    ld a, [hl+]
    inc bc
    ld [$3C19], sp
    add d
    ld a, h
    inc bc
    dec a
    rrca
    inc c
    add e
    ld a, [hl+]
    rlca
    cp l
    cp [hl]
    cp a
    ld a, [hl+]
    adc c
    add hl, de
    dec c
    add d
    ld e, $0A
    ld a, h
    ld a, [hl+]
    ld a, [hl+]
    ld a, d
    ld a, [hl+]
    adc c
    ld a, e
    add hl, de
    dec c
    inc a
    add e
    ld a, h
    add hl, bc
    dec a
    ld c, $6F
    rrca
    dec de
    ld a, e
    ld a, [hl+]
    add hl, hl
    dec c
    add d
    ld e, $04
    ld l, h
    ld e, e
    rra
    dec hl
    add e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    dec b
    add hl, hl
    dec e
    ld e, $7C
    ld e, $86
    ld a, [de]
    dec b
    dec c
    inc a
    ld c, c
    ld e, h
    adc h
    add d
    ld e, $0E
    ld l, h
    inc a
    rra
    dec hl
    inc c
    ld a, [hl+]
    add hl, hl
    dec e
    ld e, $8C
    ld e, $7C
    rra
    dec hl
    add e
    ld a, [hl+]
    ld a, [bc]
    cp l
    cp [hl]
    cp a
    ld a, [hl+]
    adc e
    adc l
    inc a
    ld e, $8C
    ld c, l
    add [hl]
    ld c, $04
    inc a
    ld e, $3D
    ld e, h
    add d
    ld e, $05
    adc h
    ld e, $1E
    rra
    dec hl
    add d
    ld a, [hl+]
    ld [$1D29], sp
    ld l, h
    ld e, $4C
    ld l, $2F
    dec sp
    add e
    ld a, [hl+]
    inc bc
    cp l
    cp [hl]
    cp a
    add d
    ld a, [hl+]
    ld bc, $838D
    ld l, $07
    cpl
    ld e, $1E
    ld c, b
    ld e, $8C
    ld a, h
    add e
    ld e, $0C
    ld a, h
    ld e, $6C
    ld c, e
    ld e, h
    ld c, l
    cpl
    dec sp
    adc e
    ld a, [hl+]
    add hl, sp
    dec l
    add d
    ld l, $04
    cpl
    ld a, [hl-]
    dec sp
    ld a, e
    add d
    ld a, [hl+]
    inc b
    adc e
    call $CFCE
    add d
    ld a, [hl+]
    ld bc, $838B
    ld a, [hl-]
    ld bc, $863B
    ld l, $0B
    ld c, h
    ld a, h
    ld l, h
    ld c, d
    ld e, h
    ld e, $7C
    ld l, h
    ld e, l
    adc a
    ld a, e
    add d
    ld a, [hl+]
    ld [bc], a
    adc e
    add hl, sp
    add d
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld a, e
    add e
    ld a, [hl+]
    ld b, $08
    add hl, de
    db $DD
    sbc $DF
    adc e
    add h
    ld a, [hl+]
    ld [bc], a
    adc d
    ld a, [hl+]
    add [hl]
    ld a, [hl-]
    ld a, [bc]
    dec l
    ld c, h
    ld e, $7C
    ld e, $6C
    ld c, h
    ld c, l
    ld l, l
    adc a
    adc e
    ld a, [hl+]
    add hl, bc
    adc e
    ld [$ED0D], sp
    ld a, c
    rst $28
    dec de
    inc c
    ld a, d
    add h
    ld a, [hl+]
    ld [bc], a
    ld a, e
    adc c
    add d
    ld a, [hl+]
    dec b
    adc d
    ld a, e
    add hl, sp
    dec l
    ld c, h
    add h
    ld e, $03
    ld l, h
    cpl
    dec sp
    adc e
    ld a, [hl+]
    inc bc
    ld [$1D19], sp
    add d
    ld a, h
    inc b
    dec a
    rrca
    dec de
    inc c
    add [hl]
    ld a, [hl+]
    add d
    ld a, e
    dec b
    ld a, [hl+]
    adc c
    ld a, e
    add hl, sp
    dec l
    add h
    ld l, $03
    cpl
    dec sp
    adc e
    adc e
    ld a, [hl+]
    inc bc
    add hl, de
    ld c, $3C
    add e
    ld e, $03
    ld a, h
    rrca
    inc c
    add l
    ld a, [hl+]
    ld [bc], a
    adc d
    ld a, e
    add d
    ld a, [hl+]
    inc b
    adc d
    ld a, [hl+]
    adc d
    add hl, sp
    add h
    ld a, [hl-]
    ld [bc], a
    adc d
    adc e
    adc e
    ld a, [hl+]
    ld a, [bc]
    ld a, d
    add hl, hl
    ld l, h
    ld e, c
    ld e, h
    ld c, l
    ld c, h
    ld c, l
    cpl
    dec hl
    adc l
    ld a, [hl+]
    inc b
    adc e
    ld a, [hl+]
    ld a, [hl+]
    adc e
    adc [hl]
    ld a, [hl+]
    add hl, bc
    add hl, sp
    ld c, h
    adc h
    ld e, $3D
    inc a
    rra
    dec hl
    adc e
    and b
    ld a, [hl+]
    ld [$2D39], sp
    ld c, h
    ld e, $4D
    cpl
    dec sp
    ld a, d
    and b
    ld a, [hl+]
    rlca
    ld a, e
    add hl, sp
    dec l
    ld l, $2F
    dec sp
    ld a, e
    and d
    ld a, [hl+]
    dec b
    ld a, e
    add hl, sp
    ld a, [hl-]
    dec sp
    ld a, d
    ret nz

    ld d, [hl]
    ld a, [hl+]
    nop
    rst $38
