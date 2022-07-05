; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

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
    ld a, a
    nop
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
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
    ld a, a
    ld e, a
    nop
    jr c, jr_027_4034

jr_027_4034:
    inc hl
    rlca
    ld c, a
    rra
    rra
    ccf
    ccf
    ccf
    inc a
    ld a, [hl]
    ld a, b
    ld a, h
    rst $38
    nop
    dec e
    nop
    add $E0
    ld a, [c]
    ld hl, sp-$07
    db $FC
    db $FD
    db $FC
    inc e
    ld a, $0E
    ld e, $3F
    nop
    ld a, $01
    dec a
    ld [bc], a
    ld a, [hl-]
    inc b
    inc [hl]
    add hl, bc
    add hl, hl
    inc de
    inc de
    daa
    daa
    rrca
    ld c, [hl]
    sbc a
    sbc h
    ld a, $38
    ld a, h
    ld [hl], b
    ld hl, sp-$20
    ldh a, [$C0]
    ldh [$80], a
    ret nz

    nop
    add b
    ld bc, $0200
    ld bc, $0205
    ld a, [bc]
    dec b
    inc d
    dec bc
    jr z, jr_027_4093

    ld d, b
    cpl
    and b
    ld e, a
    inc b
    inc bc
    ld [de], a
    inc c
    add hl, hl
    ld de, $2343
    inc bc

jr_027_4089:
    ld b, e
    add e
    inc bc
    adc c
    ld bc, $0014
    add c
    nop
    ld a, [hl]

jr_027_4093:
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
    rst $38
    rst $38
    jr jr_027_4089

    ld b, h
    dec sp
    sub d
    adc l
    ret z

    rst $00
    call nz, $C2C3
    pop bc
    sub b
    add c
    add hl, hl
    nop
    rst $38
    nop
    ld [hl+], a
    db $DD
    rst $38
    nop
    db $10
    rst $28
    cp b
    ld b, a
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
    rra
    ldh [$08], a
    rst $30
    rra
    ldh [rDIV], a
    ei
    ld a, [hl]
    add c
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    ld [de], a
    nop
    ld e, $00
    inc c
    nop
    nop
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
    nop
    rst $38
    nop
    ld [hl], b
    ld a, b
    ld [hl], b
    ld a, c
    ld [hl], b
    ld a, e
    jr nc, @+$7D

    jr c, jr_027_4147

    inc e
    ld a, $0F
    rra
    inc bc
    rrca
    ld c, $0F
    rlca
    rst $08
    rlca
    rst $20
    inc bc
    rst $30
    inc bc
    rst $30
    ld bc, $0073
    sbc c
    ret nz

    ldh [$0E], a
    rra
    inc e
    ld a, $38
    db $FC
    ldh a, [$F8]
    ldh [$F0], a
    ret nz

    ldh [rP1], a
    ret nz

    nop
    nop
    ld bc, $0200
    ld bc, $0205
    ld a, [bc]
    dec b
    ld [$1407], sp
    dec bc
    db $10
    rrca
    jr nz, jr_027_415F

    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop

jr_027_4147:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, [hl]
    nop
    ld e, e
    nop
    xor a
    nop
    scf
    add b
    ld e, $C1
    rlca
    ldh [$09], a
    ldh a, [rSC]

jr_027_415F:
    db $FC
    inc a
    inc a
    add c
    nop
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    add c
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    db $F4
    dec bc
    ld b, b
    cp a
    ldh [$1F], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00FE
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $FC
    ld bc, $FFFE
    nop
    db $10
    rst $28
    ld a, a
    add b
    ld [bc], a
    db $FD
    rra
    ldh [$08], a
    rst $30
    rst $38
    nop
    nop
    rst $38
    pop bc
    ld a, $8F
    ld [hl], b
    sbc b
    ld h, b
    or b
    ld b, b
    and b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    add b
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
    ld [hl], b
    ld hl, sp+$1C
    cp $0E
    ccf
    rlca
    rra
    inc bc
    rrca
    ld bc, $0007
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$C0], a
    ldh [$E0], a
    ldh a, [rNR41]
    rra
    jr nz, jr_027_4203

    jr nz, jr_027_4205

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
    dec bc
    db $F4
    nop
    rst $38
    rra
    ldh [rP1], a
    rst $38
    nop

jr_027_4203:
    rst $38
    nop

jr_027_4205:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    add h
    ld a, e
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $28
    rst $38
    nop
    rst $38
    or $FF
    nop
    rst $38
    add b
    ld hl, sp+$00
    ret nz

    rst $28
    rst $38
    nop
    rst $38
    ld a, [$E0FF]
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    ldh a, [rIE]
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

jr_027_4240:
    ret nz

    rst $38
    nop
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
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld h, b
    ldh a, [$60]
    ldh a, [rSVBK]
    ld hl, sp+$30
    ld a, b
    jr nc, @+$7A

    jr nz, jr_027_42F4

    nop
    ld a, b
    nop
    jr nc, jr_027_4240

    ld a, a
    cp h
    ld a, a
    cp a
    ld a, a
    cp b
    ld a, a
    sbc a

jr_027_4289:
    ld a, a
    rst $08
    ccf
    ldh [$1F], a
    ldh a, [$0E]
    cp $FF
    ld bc, $7CFF
    rst $38
    nop
    cp $C0
    ld hl, sp+$00

jr_027_429B:
    ldh [rP1], a

jr_027_429D:
    add b
    nop
    nop
    ld h, b
    cp $80
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FF
    db $FC
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    db $FC
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    jp $CFFF


    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38

jr_027_42E1:
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    ld bc, $03FF

jr_027_42F4:
    rst $38
    rrca
    rst $38
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
    rst $20
    nop
    jp $8118


    jr nc, jr_027_4289

    jr nc, jr_027_430A

jr_027_430A:
    ld [hl], b
    nop
    ld h, b
    nop
    ld b, b
    jr nz, jr_027_4311

jr_027_4311:
    ld h, b
    nop
    ld h, b
    jr nz, jr_027_4356

    ld [hl], b
    nop
    jr nc, jr_027_429B

    jr nc, jr_027_429D

    jr jr_027_42E1

    nop
    rst $20
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0400
    nop
    dec bc
    nop
    ld bc, $0B00
    nop
    rla
    nop
    cpl
    nop
    db $DD
    nop
    sbc a
    nop
    rst $38
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_027_4356:
    nop
    ld [bc], a
    nop
    dec b
    nop
    dec bc
    nop
    rlca
    nop
    dec bc
    nop
    ld d, $00
    dec d
    nop
    cpl
    nop
    cpl
    nop
    dec de
    nop
    dec de
    nop
    ld e, a
    nop
    scf
    nop
    ld bc, $0700
    nop
    add hl, bc
    nop
    rla
    nop
    cpl
    nop
    rla
    nop
    cpl
    nop
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FF
    rst $38
    ld bc, $04FF
    rst $38
    dec bc
    rst $38
    ld bc, $0BFF
    rst $38
    rla
    rst $38
    cpl
    rst $38
    db $DD
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld d, $FF
    dec d
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    ld bc, $07FF
    rst $38
    add hl, bc
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    cp l
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld e, a
    nop
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    dec h
    nop
    db $DB
    nop
    xor a
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
    sub d
    nop
    ld l, l
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
    or h
    ld c, b
    ld a, h
    add b
    or h
    ld c, b
    ld a, h
    add b
    or h
    ld c, b
    ld a, h
    add b
    or h
    ld c, b
    ld a, h
    add b
    ld e, $00
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
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
    rlca
    nop
    daa
    nop
    inc de
    nop
    cpl
    nop
    ld e, a
    nop
    ld a, e
    nop
    ccf
    nop
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
    rst $18
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
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    or a
    nop
    ld l, e
    nop
    ld a, a
    nop
    ld l, a
    nop
    cp a
    nop
    rst $38
    nop
    ld l, a
    nop
    ld a, a
    nop
    rst $18
    nop
    cp l
    nop
    or a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    rlca
    rst $38
    daa
    rst $38
    inc de
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    or a
    rst $38
    ld l, e
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    cp l
    rst $38
    or a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    xor b
    rst $38
    ld e, l
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    ld h, [hl]
    rst $38
    db $DB
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ldh [rIE], a
    add e
    rst $38
    ccf
    cp $F2
    rst $38
    pop bc
    rst $38
    sbc a
    cp $7F
    ldh [rIE], a
    add a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    ld hl, sp-$01
    add a
    cp $1F
    ldh a, [$BF]
    rst $20
    rst $38
    rst $38
    ldh [rIE], a
    ei
    rst $38
    rrca
    rst $38
    rst $38
    ei
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $E3
    rst $38
    jp $C7FF


    db $FC
    adc a
    ld sp, hl
    rst $18
    di
    cp a
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $28
    rst $38
    rst $18
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
    rst $38
    db $FD
    rst $38
    db $FC
    rst $38
    ld sp, hl
    rst $38
    db $D3
    rst $38
    rst $20
    rst $38
    adc e
    cp $5F
    ld sp, hl
    sbc a
    rst $30
    cp a
    rst $20
    rst $28
    ei
    rst $28
    ei
    rst $28
    ei
    xor a
    ei
    cp a
    rst $38
    sbc a
    rst $30
    cp a
    rst $38
    cp a
    rst $38
    db $FD
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    cp $FB
    db $FC
    rst $30
    db $FD
    rst $30
    db $FD
    rst $20
    ld sp, hl
    ld a, a
    sbc a
    rst $38
    cp a
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
    rst $38
    rst $28
    rst $38
    rst $18
    di
    sbc a
    di
    cp a
    rst $20
    ccf
    rst $20
    ccf
    rst $28
    cp a
    rst $28
    ld a, a
    rst $08
    cp $FF
    db $FC
    rst $38
    db $FD
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    cp $00
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
    nop
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
    add h
    cp $84
    xor $88
    cp $83
    xor $03
    ld [hl], e
    xor $EE
    add d
    ld [hl], h
    add d
    xor $02
    ld [hl], e
    xor $85
    cp $1E
    db $10
    cp $16
    ld de, $1712
    jr jr_027_4631

    inc d
    add hl, de
    ld a, [de]
    dec d
    cp $1B
    inc e
    cp $15
    inc e
    dec de
    inc d
    inc de
    ld a, [de]
    add hl, de
    ld [de], a
    ld de, $1718

jr_027_4631:
    db $10
    cp $16
    adc l
    cp $83
    xor $0D
    ld [hl], e
    ld l, l
    ld l, h
    ld l, a
    ld l, [hl]
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add d
    xor $22
    ld [hl], e
    xor $1D
    ld e, $25
    ld h, $1F
    jr nz, jr_027_4679

    jr z, jr_027_4675

    ld [hl+], a
    add hl, hl
    ld a, [hl+]
    inc hl
    inc h
    dec hl
    inc l
    inc h
    inc hl
    inc l
    dec hl
    ld [hl+], a
    ld hl, $292A
    jr nz, jr_027_4684

    jr z, jr_027_468E

    ld e, $1D
    ld h, $25
    adc h
    cp $07
    xor $76
    xor $76
    ld [hl], b
    cp $71

jr_027_4675:
    add [hl]
    cp $27
    ld [hl], b

jr_027_4679:
    cp $71
    halt
    xor $76
    xor $2D
    ld l, $35
    ld [hl], $2F

jr_027_4684:
    jr nc, jr_027_46BD

    jr c, jr_027_46B9

    ld [hl-], a
    add hl, sp
    ld a, [hl-]
    inc sp
    inc [hl]
    dec sp

jr_027_468E:
    inc a
    inc [hl]
    inc sp
    inc a
    dec sp
    ld [hl-], a
    ld sp, $393A
    jr nc, jr_027_46C8

    jr c, @+$39

    ld l, $2D
    ld [hl], $35
    adc h
    cp $02
    xor $73
    add d
    xor $04
    ld [hl], d
    cp $6D
    ld [hl], d
    add d
    cp $82
    ld [hl], l
    dec b
    cp $72
    ld [hl], d
    ld l, l
    ld [hl], e
    add e
    xor $04
    ld h, b

jr_027_46B9:
    ld h, c
    ld h, d
    ld h, [hl]
    add d

jr_027_46BD:
    dec a
    add d
    xor $02
    ld a, $3F
    add d
    xor $02
    ld b, b
    ld b, c

jr_027_46C8:
    add d
    xor $02
    ld b, c
    ld b, b
    add d
    xor $02
    ccf
    ld a, $82
    xor $82
    dec a
    add d
    xor $0E
    ld h, c
    ld h, b
    ld h, [hl]
    ld h, d
    ld sp, hl
    add sp, -$15
    ld [$F4F5], a
    ld [$E0FB], a
    ldh a, [$82]
    pop af
    add d
    ld a, [c]
    inc b
    di
    db $E3
    xor $73
    add d
    xor $82
    ld [hl], h
    add d
    xor $01
    ld [hl], e
    add e
    xor $84
    cp $01
    ld h, a
    add e
    xor $09
    ld h, c
    ld h, b
    ld h, [hl]
    ld h, d
    ld h, c
    ld h, b
    ld h, l
    ld h, d
    ld h, a
    add h
    xor $07
    ld h, a
    xor $EE
    inc d
    inc de
    ld a, [de]
    ld [bc], a
    add h
    cp $02
    xor $67
    add d
    xor $90
    cp $04
    nop
    ld bc, $0302
    add e
    cp $09
    ld a, e
    cp $FE
    ld a, e
    cp $77
    ld a, b
    ld a, h
    ld a, l
    add h
    cp $0B
    ld h, b
    ld h, c
    ld h, d
    ld h, l
    ld h, b
    ld h, c
    ld h, d
    ld h, [hl]
    ld h, e
    xor $64
    add d
    xor $05
    ld h, e
    xor $64
    inc bc
    inc b
    add d
    dec b
    add h
    cp $0E
    ld bc, $0300
    ld [bc], a
    ld sp, hl
    add sp, -$15
    ld [$F4F5], a
    ld [$E0FB], a
    ldh a, [$82]
    pop af
    add d
    ld a, [c]
    rlca
    di
    db $E3
    inc b
    dec b
    ld b, $07
    ld a, e
    add h
    cp $07
    ld a, e
    cp $FE
    ld a, c
    ld a, d
    ld a, [hl]
    ld a, a
    add h
    cp $02
    ld h, [hl]
    ld b, b
    add d
    xor $02
    ld b, b
    ld h, a
    add d
    xor $03
    ld h, [hl]
    xor $64
    add d
    xor $03
    ld h, [hl]
    xor $64
    add d
    cp $02
    ld b, $07
    add h
    cp $04
    dec b
    inc b
    rlca
    ld b, $90
    cp $05
    ld [$0A09], sp
    dec bc
    ld a, e
    add d
    cp $02
    ld a, e
    cp $82
    ld a, e
    sub c
    cp $01
    ld h, h
    add h
    xor $03
    ld h, h
    xor $EE
    adc b
    cp $05
    add hl, bc
    ld [$0A0B], sp
    ld l, a
    add d
    ld a, c
    ld bc, $8378
    cp $02
    ld a, c
    ld l, a
    add d
    cp $0D
    ld a, c
    ld a, b
    ld l, a
    ld a, c
    ld a, b
    inc c
    dec c
    ld c, $0F
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    add h
    cp $82
    xor $01
    ld h, h
    add h
    xor $11
    ld h, h
    ld b, b
    ld b, c
    ld d, a
    ld e, b
    ld b, l
    ld a, b
    ld b, a
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], a
    halt
    add h
    cp $09
    ld b, e
    ld b, d
    ld b, l
    ld b, h
    dec c
    inc c
    rrca
    ld c, $79
    add h
    cp $04
    ld a, c
    ld l, a
    cp $79
    add [hl]
    cp $06
    ld b, e
    cp $FE
    ld b, e
    cp $FE
    dec bc
    ld b, [hl]
    cp $FE
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, h
    xor $4E
    ld c, a
    add d
    xor $0A
    ld d, b
    ld d, c
    xor $4D
    ld d, d
    ld d, e
    ld c, l
    xor $53
    ld d, d
    add d
    xor $0B
    ld d, c
    ld d, b
    xor $4C
    ld c, a
    ld c, [hl]
    ld c, b
    ld b, a
    ld c, d
    ld c, c
    ld b, [hl]
    add a
    cp $06
    ld a, $3F
    ld b, d
    ld b, e
    ld b, b
    ld b, c
    add d
    ld b, h
    ld b, $3F
    ld a, $43
    ld b, d
    cp $43
    add d
    cp $01
    ld b, e
    adc b
    cp $1C
    ld c, e
    cp $FE
    ld d, h
    ld d, l
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, a
    ld e, h
    ld e, l
    ld e, b
    ld e, c
    ld e, [hl]
    ld e, a
    ld e, c
    ld e, b
    ld e, a
    ld e, [hl]
    ld d, a
    ld d, [hl]
    ld e, l
    ld e, h
    ld d, l
    ld d, h
    ld e, e
    ld e, d
    ld c, e
    adc e
    cp $04
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, [hl]
    add h
    cp $10
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    inc c
    dec c
    ld [de], a
    inc de
    dec c
    inc c
    inc de
    ld [de], a
    db $10
    ld de, $1716
    add d
    xor $0A
    inc l
    dec l
    jr z, jr_027_48A5

    ld l, $2F
    ld a, [hl+]
    dec hl
    jr nc, jr_027_48B3

    add d
    xor $1E
    dec l
    inc l
    dec hl
    ld a, [hl+]
    ld sp, $2930
    jr z, jr_027_48BD

    ld l, $1B
    ld a, [de]
    rra
    ld e, $19
    jr jr_027_48B3

    inc e
    jr jr_027_48B2

    inc e
    dec e
    ld a, [de]
    dec de
    ld e, $1F
    ld b, d
    ld b, e
    ld a, $3F
    add d
    ld b, h

jr_027_48A5:
    dec sp
    ld b, b
    ld b, c
    ld b, e
    ld b, d
    ccf
    ld a, $0F
    ld c, $15
    inc d
    ld c, $0F

jr_027_48B2:
    inc d

jr_027_48B3:
    dec d
    ld de, $1710
    ld d, $32
    inc sp
    jr c, jr_027_48F5

    inc [hl]

jr_027_48BD:
    dec [hl]
    ld a, [hl-]
    dec sp
    ld [hl], $37
    inc a
    dec a
    inc sp
    ld [hl-], a
    add hl, sp
    jr c, @+$39

    ld [hl], $3D
    inc a
    dec [hl]
    inc [hl]
    dec sp
    ld a, [hl-]
    inc hl
    ld [hl+], a
    daa
    ld h, $21
    jr nz, jr_027_48FC

    inc h
    jr nz, @+$23

    inc h
    dec h
    ld [hl+], a
    inc hl
    ld h, $27
    ld c, h
    add d
    ld c, [hl]
    inc c
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, l
    ld a, b
    ld c, [hl]
    cp $78
    ld c, h
    ld c, l
    cp $4E
    add d
    ld c, l
    add d
    cp $04

jr_027_48F5:
    ld c, [hl]
    cp $FE
    ld c, [hl]
    add e
    cp $02

jr_027_48FC:
    ld d, a
    ld e, b
    add d
    cp $1A
    ld e, c
    ld e, d
    ld h, e
    ld h, h
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld d, c
    ld d, d
    ld d, l
    ld d, [hl]
    ld d, d
    ld d, c
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld l, d
    ld l, c
    ld h, h
    ld h, e
    ld l, b
    ld h, a
    add d
    cp $02
    ld e, d
    ld e, c
    add d
    cp $03
    ld e, b
    ld d, a
    ld c, l
    add d
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld c, [hl]
    ld a, c
    cp $4D
    ld a, c
    ld c, l
    ld c, h
    cp $4D
    add e
    cp $01
    ld c, [hl]
    add h
    cp $2D
    ld c, h
    cp $FE
    ld e, e
    ld e, h
    ld e, a
    ld h, b

jr_027_4941:
    ld e, l
    ld e, [hl]
    ld h, c

jr_027_4944:
    ld h, d
    ld l, e
    ld l, h
    ld c, b
    ld c, c
    ld l, l
    ld l, [hl]
    ld c, d
    ld c, e
    ld c, a
    ld d, b
    ld d, e
    ld d, h
    ld d, b
    ld c, a

jr_027_4953:
    ld d, h
    ld d, e
    ld l, [hl]
    ld l, l

jr_027_4957:
    ld c, e
    ld c, d
    ld l, h
    ld l, e
    ld c, c
    ld c, b
    ld e, [hl]
    ld e, l
    ld h, d
    ld h, c
    ld e, h
    ld e, e
    ld h, b
    ld e, a
    cp $6F
    add e
    cp $17
    ld a, b

jr_027_496B:
    ld a, c
    cp $70
    ld [hl], c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    halt
    ld [hl], a
    ld [hl], e
    ld [hl], d
    ld [hl], a
    halt
    ld [hl], c
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [$0A09], sp
    dec bc
    add d
    nop
    add d
    ld bc, $FE85

jr_027_4987:
    add d
    ld b, e
    inc bc
    cp $43
    ld a, b
    sub [hl]
    cp $84
    ld c, b
    add h
    ld l, b
    adc b
    ld c, b
    add e
    ld l, b

jr_027_4997:
    inc bc
    ld h, b
    ld l, b
    ld l, b
    add d
    ld b, b
    add d
    ld l, b
    ld [bc], a
    ld b, b

jr_027_49A1:
    ld l, b
    add l
    ld c, b
    ld [bc], a
    nop
    ld c, b
    adc d
    nop
    inc b
    ld c, b
    nop
    nop
    ld c, b
    adc h
    jr nz, @+$04

    ld c, b
    jr nz, jr_027_4941

    ld c, b
    add e
    ld l, b
    ld bc, $8460
    jr nz, jr_027_4944

    nop
    add d
    ld l, b
    ld [bc], a
    ld b, b
    ld l, b
    sub b
    nop

jr_027_49C4:
    sub b
    jr nz, jr_027_4953

    ld c, b
    rlca
    ld l, b
    nop
    ld l, b
    nop
    jr nz, jr_027_4A17

    jr nz, jr_027_4957

    ld c, b
    rlca
    nop
    ld c, b
    nop
    jr nz, jr_027_4A40

    jr nz, jr_027_4A42

    sub b
    nop
    sub b
    jr nz, jr_027_496B

    ld c, b
    ld [bc], a
    ld l, b

jr_027_49E2:
    jr nz, @-$7C

    ld l, b
    inc b
    jr nz, @+$4A

    ld h, b
    jr nz, @-$7C

    ld c, b
    add d

jr_027_49ED:
    nop
    dec b
    ld c, b
    nop
    nop
    ld b, b
    nop
    add e
    ld l, b
    add [hl]
    nop
    add d
    ld l, b
    add d
    nop
    add d
    ld l, b
    add d
    nop
    add d
    ld l, b
    add d

jr_027_4A03:
    jr nz, jr_027_4987

    ld l, b
    add d
    jr nz, @-$7C

    ld l, b
    add d
    nop
    add d
    ld l, b
    add h
    jr nz, jr_027_4997

    dec hl
    add e
    dec bc

jr_027_4A14:
    add hl, bc
    dec hl
    dec bc

jr_027_4A17:
    dec hl
    dec bc
    dec hl
    dec bc
    dec hl
    ld l, b
    jr nz, jr_027_49A1

    ld l, b
    add d
    nop
    add d
    ld l, b
    ld bc, $8300
    ld l, b
    add h
    ld c, b

jr_027_4A2A:
    ld bc, $8300
    ld l, b
    adc b
    jr nz, jr_027_4A32

    nop

jr_027_4A32:
    add h
    ld l, b
    inc bc
    jr nz, jr_027_4A9F

    ld l, b
    add e
    jr nz, @+$03

    ld [$4884], sp
    ld [bc], a
    ld l, b

jr_027_4A40:
    jr nz, jr_027_49C4

jr_027_4A42:
    ld l, b
    sub b
    ld c, b
    add h
    nop
    add e
    ld c, b
    dec b
    nop
    ld c, b
    ld c, b
    nop
    ld c, b
    add h
    nop
    add h
    ld c, b
    adc c
    nop
    ld [bc], a
    ld l, b
    nop
    add d
    ld l, b
    inc bc
    jr nz, jr_027_4AC5

    jr nz, jr_027_49E2

    add hl, bc
    ld bc, $8429
    ld c, b
    add h
    jr nz, jr_027_49ED

    ld a, [hl+]
    add e
    ld a, [bc]
    rlca
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add l
    nop
    add h
    ld c, b
    inc bc
    nop
    ld c, b
    ld c, b
    add h
    nop
    add h
    ld c, b
    add d
    jr nz, jr_027_4A03

    ld l, b
    ld [bc], a
    jr nz, jr_027_4A85

jr_027_4A85:
    add d
    ld l, b
    inc bc
    nop
    ld l, b
    nop
    add d
    ld l, b
    inc bc
    jr nz, jr_027_4AF8

    jr nz, jr_027_4A14

    ld c, b
    add d
    ld [$4884], sp
    add h
    jr nz, jr_027_4A2A

    ld c, b
    add l
    nop
    add d
    ld c, b

jr_027_4A9F:
    ld [bc], a
    nop
    ld c, b
    add d

jr_027_4AA3:
    nop
    sub c
    ld c, b
    ld bc, $8400
    ld l, b
    inc bc
    jr nz, jr_027_4B15

    ld l, b
    adc b
    ld c, b
    add h
    jr nz, jr_027_4AB5

    ld l, $0E

jr_027_4AB5:
    add d
    ld l, $83
    ld c, h
    ld [bc], a
    ld l, $0E
    add d
    ld c, h
    ld bc, $832E

jr_027_4AC1:
    ld c, $01
    ld l, $84

jr_027_4AC5:
    nop
    add h
    add b
    add [hl]
    ld c, b
    ld [bc], a
    nop
    ld c, b
    add e
    ld l, b
    ld bc, $8520
    inc c
    ld [bc], a
    ld l, $0C
    add d
    ld l, $05
    ld c, $2E
    ld l, h
    ld l, $2C

jr_027_4ADE:
    add d
    ld l, $84
    ld c, b
    add h
    and b
    add h
    jr nz, @+$03

    ld l, $84
    ld c, h
    inc b
    ld l, $0E
    ld c, h
    ld l, $86
    ld c, h
    ld bc, $846C
    ld c, h
    ld [bc], a
    ret z

    add b

jr_027_4AF8:
    add d
    ret z

    add l
    add b
    inc bc
    add sp, -$80
    add b
    add d
    add sp, -$7E
    add b
    ld bc, $83E8
    add b
    ld [bc], a
    and b
    add sp, -$7E
    and b
    add d
    add sp, -$7E
    and b
    ld bc, $88E8
    and b

jr_027_4B15:
    add e
    ret z

    add h
    ld c, b
    ld bc, $8708
    inc c
    ld [bc], a
    inc l
    jr z, jr_027_4AA3

    inc l
    ld [bc], a
    ld c, h
    inc l
    add d
    ld c, h
    ld bc, $830C
    ld c, h
    add l
    ld c, b
    inc bc
    nop
    ld c, b
    ld c, b
    adc h
    nop
    adc l
    jr nz, jr_027_4AC1

    ld c, b
    add h
    inc c
    add h
    ld c, h
    add h
    inc l
    add h
    ld [$2884], sp
    add h
    dec c
    add d
    ld l, l
    adc d
    dec c
    add d
    ld l, l
    sub d
    dec l
    adc b
    dec c
    add d
    ld c, h
    ld bc, $8548
    ld c, h
    add e
    ld l, h
    ld bc, $8468
    jr z, jr_027_4ADE

jr_027_4B5A:
    ld [$2D84], sp
    adc h
    dec c
    sub h
    dec l
    adc b
    dec c
    ld [bc], a
    inc l
    inc c
    add e
    inc l
    add d
    inc c
    ld a, [bc]
    ld c, $0C
    ld c, h
    ld c, $2C
    inc c
    ld c, h
    inc c
    inc l
    inc c
    add d
    ld c, h
    inc b
    inc l
    ld c, h
    ld c, h
    inc l
    add e
    ld c, h
    add d
    inc c
    add d
    ld c, h
    adc [hl]
    inc c
    adc h
    inc l
    add d
    ld c, h
    add d
    inc l
    add d
    ld c, h
    add d
    inc l
    ld [bc], a
    inc c
    inc l
    add e
    inc c
    inc b
    ld l, $4C
    inc l
    ld l, $82
    inc l
    ld [bc], a
    ld c, h
    inc c
    add e
    ld c, h
    ld bc, $842C
    ld c, h
    inc bc
    inc l
    ld c, h
    ld c, h
    sub h
    inc c
    sub h
    inc l
    ld [bc], a
    ld c, h
    ld l, $83
    ld c, h
    add d
    ld l, $01
    ld c, h
    adc b
    ld c, $88
    ld l, $84
    ld a, [bc]
    inc b
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add h
    ld c, b
    ld [bc], a
    ld c, h
    inc l
    add d
    ld c, h
    ld [bc], a
    inc c
    ld l, $82
    ld c, h
    adc b
    ld c, b
    add h
    ld c, h
    adc b
    ld c, b
    nop
    inc b
    rla
    jr jr_027_4BFD

    jr z, jr_027_4B5A

    add hl, de
    add d
    add hl, hl
    ld [$1718], sp
    jr z, jr_027_4C07

    rla
    jr jr_027_4C0A

    ld a, [hl+]
    add d
    add hl, de
    add d
    xor $16
    jr jr_027_4C02

    ld a, [hl+]
    daa
    nop
    ld bc, $1110
    ld [hl], b
    ld [hl], c
    dec bc
    inc c
    ld [hl], b
    ld [hl], c
    ld d, l
    ld d, [hl]
    ld [hl], c
    ld [hl], b
    ld d, [hl]
    ld d, h

jr_027_4BFD:
    ld [de], a
    inc de
    add d
    xor $82

jr_027_4C02:
    ld [hl], b
    ld [bc], a
    ld d, h
    ld d, l
    add d

jr_027_4C07:
    ld c, [hl]
    add d
    ld e, [hl]

jr_027_4C0A:
    add d
    ld c, [hl]
    ld [bc], a
    ld e, [hl]
    ld e, a
    add d
    ld c, [hl]
    inc bc
    ld e, a
    ld e, [hl]
    ld d, l
    add d
    ld d, [hl]
    dec b
    ld l, l
    scf
    jr c, jr_027_4C63

    ld c, b
    add d
    add hl, sp
    add d
    ld c, c
    ld [$3738], sp
    ld c, b
    ld b, a
    scf
    ld a, [hl-]
    ld b, a
    ld c, d
    add d
    xor $82
    ld a, [de]
    inc d
    ld a, [hl-]
    scf
    ld c, d
    ld b, a
    jr nz, jr_027_4C56

    jr nc, jr_027_4C68

    dec de
    inc e
    dec hl
    inc l
    ld h, l
    ld h, [hl]
    halt
    ld [hl], l
    ld h, [hl]
    ld h, h
    ld [hl], l
    ld [hl], h
    add d
    xor $82
    ld d, d
    inc b
    ld h, h
    ld h, l
    ld [hl], h
    halt
    add d
    ld l, [hl]
    ld c, $7E
    ld c, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld l, a

jr_027_4C56:
    ld l, [hl]
    ld a, a
    ld c, a
    ld h, [hl]
    ld a, l
    ld [hl], l
    add hl, de
    add d
    add hl, sp
    ld [bc], a
    ld e, e
    ld e, h
    add d

jr_027_4C63:
    add hl, sp
    ld a, [bc]
    ld e, h
    ld e, e
    ld e, d

jr_027_4C68:
    rst $28
    ld e, d
    rst $28
    ld l, h
    ld l, e
    ld a, h
    ld a, l
    add d
    ld [hl+], a
    add d
    ld [hl-], a
    ld [$1C1B], sp
    dec hl
    inc l
    inc e
    dec de
    inc l

jr_027_4C7B:
    dec hl
    add d
    dec de
    add d
    dec l
    add d
    ld h, d
    add d
    ld [hl], d
    ld b, $70
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld [hl], b
    ld [hl], c
    add d
    ld de, $7002
    ld [hl], c
    add d
    ld c, $04
    dec d
    ld d, $25
    ld h, $82
    ld d, [hl]
    add d
    inc hl
    ld a, [bc]
    xor $08
    xor $18
    add hl, bc
    ld a, [bc]
    rst $38
    ld a, [de]
    ld l, d
    ld l, e
    add d
    ld a, d
    ld [bc], a
    ld l, l
    ld l, d
    add d
    ld a, d
    ld [$5AEF], sp
    rst $28
    ld e, d
    ld l, l
    ld l, h
    ld a, l
    ld a, h
    add d
    ld [hl-], a
    add d
    ld b, d
    ld [$3C3B], sp
    ld c, e
    ld c, h
    inc a
    dec sp
    ld c, h
    ld c, e
    add d
    dec a
    add d
    ld c, l
    add d
    dec de
    add d
    dec e
    inc b
    ld h, c
    ld h, [hl]
    halt
    ld [hl], l
    add d
    ld hl, $0002
    ld bc, $1E82
    ld b, $76
    ld [hl], l
    dec [hl]
    ld [hl], $45
    ld b, [hl]
    add d
    inc sp
    add d
    ld b, e
    ld [bc], a
    xor $28
    add d
    xor $02
    add hl, hl
    ld a, [hl+]
    add d
    xor $82
    ld sp, $4182
    add d
    ld l, a
    add d
    ld a, a
    add d
    db $10
    add d
    jr nz, jr_027_4C7B

    ld l, [hl]
    add d
    ld a, [hl]
    add d
    ld l, $82
    ld a, $82
    add hl, de
    add d
    ld c, $84
    ld b, $84
    rst $28
    inc bc
    ld a, e
    xor $2F
    add d
    xor $07
    ld a, e
    xor $2F
    ld d, e
    ld [hl], e
    ld d, h
    add hl, bc
    add d
    ld [hl], e
    ld a, [bc]
    dec c
    inc c
    ld [hl], e
    ld d, e
    add hl, bc
    ld d, h
    ld d, a
    ld e, b
    ld h, a
    ld l, b
    add d
    ld e, c
    add d
    ld l, c
    inc c
    ld e, b
    ld d, a
    ld l, b
    ld h, a
    dec c
    xor $1D
    ld l, $EE
    dec c
    ld l, $1D
    add d
    ld c, a
    add d
    ld e, a
    inc bc
    ld h, e
    xor $63
    add d
    xor $03
    ld h, e
    xor $63
    add d
    ld e, $82
    ld c, c
    dec bc
    ld [hl], c
    dec b
    ld d, [hl]
    ld d, h
    dec b
    ld [hl], b
    ld d, h
    ld d, l
    cpl
    xor $2F
    add d
    xor $09
    cpl
    xor $2F
    ld [hl], h
    rlca
    ld [bc], a
    inc bc
    inc c
    dec c
    add d
    inc bc
    ld [$7407], sp
    inc bc
    ld [bc], a
    ld [hl], a
    ld l, c
    ld [hl], a
    ld l, c
    add h
    ld a, c
    inc c
    ld l, c
    ld [hl], a
    ld l, c
    ld [hl], a
    dec l
    ld c, [hl]
    dec a
    ld a, $4E
    dec l
    ld a, $3D
    add d
    rrca
    add d
    rra
    ld [$7353], sp
    ld h, e
    xor $73
    ld d, e
    xor $63
    add d
    ld [hl], e
    add d
    xor $01
    ld e, l
    add e
    ld b, b
    add d
    xor $82
    jr nc, @+$04

    ccf
    ld l, $82
    ld a, $02
    ld l, $3F
    add d
    ld a, $04
    add hl, bc
    ld a, [bc]
    rlca
    ld [$EE82], sp
    add d
    dec bc
    ld [$090A], sp
    ld [$6707], sp
    ld l, b
    ld d, a
    ld e, b
    add d
    ld l, c
    add d
    ld e, c
    inc c
    ld l, b
    ld h, a
    ld e, b
    ld d, a
    ld c, l
    ld c, [hl]
    ld e, l
    ld e, [hl]
    ld c, [hl]
    ld c, l
    ld e, [hl]
    ld e, l
    add d
    cpl
    add d
    ccf
    ld [$EE63], sp
    ld d, e
    ld [hl], e
    xor $63
    ld [hl], e
    ld d, e
    add d
    xor $82
    ld [hl], e
    add d
    ld d, b
    add d
    ld h, b
    add h
    ld b, b
    inc b
    ld c, $0F
    ld e, $1F
    adc h
    rst $28
    inc bc
    ld d, e
    ld [hl], e
    ld d, e
    add [hl]
    ld [hl], e
    inc bc
    ld d, e
    ld [hl], e
    ld d, e
    add h
    xor $20
    add b
    add c
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    add l
    sub h
    sub l
    add [hl]

jr_027_4DF6:
    add a
    sub [hl]
    sub a
    adc b
    adc c
    sbc b
    sbc c
    adc d
    adc e
    sbc d
    sbc e
    adc h
    adc l
    sbc h
    sbc l
    adc [hl]
    adc a
    sbc [hl]
    sbc a
    sbc h
    rst $28
    add h
    xor $20
    and b
    and c
    or b
    or c
    and d
    and e
    or d
    or e
    and h
    and l
    or h
    or l
    and [hl]
    and a
    or [hl]
    or a
    xor b
    xor c
    cp b
    cp c
    xor d
    xor e
    cp d
    cp e
    xor h
    xor l
    cp h
    cp l
    xor [hl]
    xor a
    cp [hl]
    cp a
    sbc h
    rst $28
    add d
    ld d, e
    add d
    ld h, e
    jr nz, jr_027_4DF6

    pop bc
    ret nc

    pop de
    jp nz, $D2C3

    db $D3
    call nz, $D4C5
    push de
    add $C7
    sub $D7
    ret z

    ret


    ret c

    reti


    jp z, $DACB

    db $DB
    call z, $DCCD
    db $DD
    xor $CF
    sbc $DF
    sbc h
    rst $28
    add h
    ld h, e
    jr nz, @-$1E

    pop hl
    ldh a, [$F1]
    ld [c], a
    db $E3
    ld a, [c]
    di
    db $E4
    push hl
    db $F4
    push af
    and $E7
    or $F7
    add sp, -$17
    ld hl, sp-$07
    ld [$FAEB], a
    ei
    db $EC
    db $ED
    db $FC
    db $FD
    xor $EF
    cp $FF
    sbc h
    rst $28
    add d
    ld h, e
    add d
    ld d, e
    jr nz, jr_027_4E82

jr_027_4E82:
    ld bc, $1110
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    inc b
    dec b
    inc d
    dec d
    ld b, $07
    ld d, $17
    ld [$1809], sp
    add hl, de
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    inc c
    dec c
    inc e
    dec e
    ld c, $0F
    ld e, $1F
    and b
    rst $28
    jr nz, jr_027_4EC5

    ld hl, $3130
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld h, $27
    ld [hl], $37
    jr z, jr_027_4EDF

    jr c, jr_027_4EF1

    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    inc l
    dec l
    inc a
    dec a
    ld l, $2F
    ld a, $3F
    and b

jr_027_4EC5:
    rst $28
    jr nz, jr_027_4F08

    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e

jr_027_4EDF:
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    add d
    add b
    ld bc, $9DCF
    rst $28
    jr nz, jr_027_4F4F

    ld h, c
    ld [hl], b

jr_027_4EF1:
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

jr_027_4F08:
    ld a, h
    ld a, l
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    sbc b
    xor $82
    db $EC
    add d
    db $FC
    add d
    db $ED
    add d
    db $FD
    add l
    ld a, [bc]
    ld [bc], a
    ld a, [hl+]
    ld a, [bc]
    add l
    ld a, [hl+]
    add l
    ld a, [bc]
    inc bc
    ld a, [hl+]
    ld l, l
    ld l, l
    add h
    ld a, [hl+]
    add h
    ld bc, $0982
    add d
    ld bc, $0985
    ld bc, $8429
    add hl, bc
    add d
    ld l, l
    add d
    add hl, bc
    inc c
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, hl
    dec bc
    dec hl
    add hl, bc
    add hl, hl
    dec bc
    dec hl
    add hl, bc
    add hl, hl
    add d
    dec hl
    add e
    add hl, bc
    ld bc, $8502
    ld a, [bc]
    ld [bc], a
    ld a, [hl+]
    ld a, [bc]

jr_027_4F4F:
    add l
    ld a, [hl+]
    add h
    ld a, [bc]
    add d
    ld l, l
    add d
    dec l
    add h
    ld a, [hl+]
    adc b
    ld bc, $0982
    add d
    add hl, hl
    add d
    add hl, bc
    ld [bc], a
    add hl, hl
    add hl, bc
    add d
    ld l, l
    inc b
    dec c
    dec l
    add hl, hl
    add hl, bc
    add d
    add hl, hl
    ld [bc], a
    dec bc
    dec hl
    add e
    dec bc
    inc bc
    dec hl
    dec bc
    dec bc
    add d
    dec hl
    add d
    dec bc
    rlca
    add hl, bc
    ld [bc], a
    add hl, hl
    ld bc, $2A0A
    add hl, bc
    add d
    ld a, [bc]
    add d
    ld a, [hl+]
    dec b
    add hl, hl
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    add d
    add hl, bc
    add d
    dec c
    inc b
    dec bc
    dec hl
    inc c
    inc l
    add l
    add hl, bc
    dec bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    dec c
    dec l
    dec c
    dec l
    add d
    add hl, bc
    ld bc, $830A
    add hl, bc
    ld [bc], a
    ld [$8228], sp
    add hl, bc
    ld [bc], a
    ld bc, $8221
    add hl, bc
    add d
    dec bc
    add d
    add hl, bc
    dec b
    dec bc
    dec hl
    ld l, l
    ld b, $6D
    add d
    ld b, $03
    ld bc, $066E
    add h
    add hl, bc
    add d
    add hl, hl
    add d
    ld l, c
    inc bc
    ld l, [hl]
    add hl, hl
    ld l, [hl]
    add e
    add hl, hl
    add d
    dec l
    rlca
    inc c
    inc l
    dec bc
    dec hl
    add hl, bc
    add hl, hl
    add hl, bc
    add l
    add hl, hl
    ld b, $09
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add h
    add hl, bc
    add d
    add hl, hl
    ld [bc], a
    ld [$8228], sp
    add hl, bc
    ld [bc], a
    ld bc, $8221
    add hl, hl
    add d
    add hl, bc
    add d
    dec c
    ld b, $0C
    inc l
    dec bc
    dec hl
    ld l, l
    ld b, $82
    ld l, l
    add d
    ld b, $82
    ld l, l
    db $10
    ld c, $2E
    ld c, $2E
    ld b, $26
    ld b, $26
    ld c, $2E
    ld c, $2E
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    add l
    ld a, [bc]
    rlca
    ld a, [hl+]
    ld bc, $0D21
    dec l
    dec c
    dec l
    add h
    ld l, h
    inc bc
    ld a, [bc]
    ld l, b
    ld c, d
    add d
    ld l, b
    rlca
    ld a, [hl+]
    ld l, b
    ld l, d
    ld c, c
    ld l, c
    add hl, hl
    add hl, bc
    add d
    ld l, c
    add d
    add hl, bc
    add d
    ld l, c
    ld [bc], a
    add hl, hl
    add hl, bc
    add l
    inc c
    ld [bc], a
    inc l
    inc c
    add l
    inc l
    ld [bc], a
    dec b
    ld l, l
    add d
    dec b
    ld bc, $836D
    dec h
    rlca
    ld bc, $0121
    ld hl, $6849
    ld c, c
    add d
    ld l, b
    rlca
    add hl, hl
    ld l, b
    add hl, hl
    ld bc, $0A21
    ld a, [hl+]
    add [hl]
    add hl, bc
    dec b
    add hl, hl
    add hl, bc
    ld c, d
    ld l, b
    ld c, d
    add d
    ld l, b
    inc bc
    ld l, d
    ld l, b
    ld l, d
    add d
    add hl, bc
    inc b
    dec bc
    dec hl
    add hl, bc
    add hl, hl
    add d
    dec hl
    add d
    add hl, hl
    add d
    dec hl
    add d
    inc c
    add d
    ld c, h
    inc b
    inc c
    inc l
    ld c, h
    ld l, h
    add d
    inc l
    add d
    ld l, h
    ld [bc], a
    ld bc, $8245
    dec b
    ld [bc], a
    dec h
    ld hl, $2582
    inc b
    dec b
    dec h
    dec b
    dec h
    add d
    add hl, bc
    ld b, $49
    ld l, b
    add hl, bc
    add hl, hl
    ld l, b
    add hl, hl
    add d
    add hl, bc
    add d
    ld l, b
    inc b
    add hl, bc
    add hl, hl
    ld c, c
    add hl, hl
    add d
    ld l, l
    ld [bc], a
    add hl, bc
    add hl, hl
    add l
    ld a, [bc]
    inc bc
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add h
    add hl, bc
    add d
    ld l, b
    ld bc, $8509
    add hl, hl
    add l
    ld c, h
    ld [bc], a
    ld l, h
    ld c, h
    add l
    ld l, h
    ld [bc], a
    ld bc, $8245
    dec b
    ld [bc], a
    dec h
    ld hl, $2582
    ld a, [bc]
    dec b
    dec h
    dec b
    dec h
    ld c, c
    ld l, b
    ld c, c
    ld l, c
    ld l, b
    add hl, hl
    add d
    ld l, c
    add d
    ld l, b
    add d
    ld l, c
    ld [$2909], sp
    dec c
    dec l
    ld c, c
    add hl, hl
    ld c, c
    add hl, hl
    add h
    dec c
    adc h
    ld l, h
    add d
    add hl, bc
    ld [bc], a
    ld c, c
    ld l, c
    add d
    add hl, bc
    add d
    ld l, c
    ld [bc], a
    add hl, bc
    add hl, hl
    add d
    ld l, c
    add h
    ld l, b
    ld bc, $8560
    nop
    add d
    ld [bc], a
    sub c
    nop
    add h
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    sbc h
    ld l, h
    add h
    ld l, l
    adc b
    nop
    add h
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    add e
    nop
    inc bc
    ld [bc], a
    nop
    nop
    add d
    ld [bc], a
    ld bc, $8300
    ld [bc], a
    add [hl]
    nop
    sbc h
    ld l, h
    inc b
    add hl, bc
    add hl, hl
    ld c, c
    add hl, hl
    add e
    nop
    ld b, $02
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    add h
    ld [bc], a
    ld bc, $8404
    ld [bc], a
    adc b
    nop
    ld bc, $8340
    nop
    sbc h
    ld l, h
    inc b
    ld c, c
    add hl, hl
    ld c, c
    add hl, hl
    add [hl]
    nop
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    add d
    ld [bc], a
    ld bc, $8604
    ld [bc], a
    adc h
    nop
    sbc h
    ld l, h
    inc b
    ld c, c
    add hl, hl
    ld c, c
    ld l, c
    add e
    nop
    add e
    ld [bc], a
    add d
    nop
    ld [bc], a
    ld [bc], a
    nop
    add d
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    sub b
    nop
    add d
    ld [bc], a
    and b
    ld l, h
    add l
    nop
    ld [bc], a
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    adc e
    nop
    ld bc, $8502
    nop
    and b
    ld l, h
    adc h
    nop
    ld bc, $8B02
    nop
    ld bc, $8702
    nop
    add d
    ld h, b
    add d
    nop
    sbc h
    ld l, h
    and b
    nop

jr_027_518E:
    sbc b
    ld l, l
    ld [$2909], sp
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    nop
    add h
    ld h, [hl]
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, [hl]
    ld l, l
    ld [hl], b
    ld l, a
    ld b, e
    scf
    jr c, jr_027_51E2

    add d
    dec [hl]
    add d
    ld [hl], $05
    scf
    ld b, e
    add hl, sp
    jr c, jr_027_5219

    add d
    ld b, [hl]
    inc bc
    ld b, a
    ld b, l
    ld b, l
    add d
    xor $04
    ld b, [hl]
    ld h, [hl]
    ld b, a
    ld b, [hl]
    add e
    rst $38
    ld bc, $863D
    rst $38
    ld a, [bc]
    dec a
    rst $38

jr_027_51C9:
    add hl, hl
    jr z, jr_027_51F7

    ld a, [hl+]
    jr z, jr_027_51F8

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
    ld h, [hl]
    ld a, c

jr_027_51E2:
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

jr_027_51EC:
    rlca
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld c, b
    xor $48
    add [hl]
    xor $03

jr_027_51F7:
    ld c, b

jr_027_51F8:
    xor $48
    add h
    rst $38
    add h
    ld h, [hl]
    add h
    rst $38
    ld [$2D2C], sp
    ld l, $2F
    inc [hl]
    jr nc, @+$36

    jr nc, jr_027_518E

    ld [hl-], a
    ld [$3430], sp
    jr nc, @+$36

    ld a, h
    ld a, l
    nop
    ld bc, $6682
    ld a, [bc]
    ld [bc], a
    inc bc

jr_027_5219:
    ld a, [hl]
    ld a, a
    inc b
    dec b
    jr c, jr_027_5258

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
    ld h, [hl]
    ld b, [hl]
    add d
    xor $82
    ld b, l
    ld b, $47
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
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
    jr nc, jr_027_51C9

    ld sp, $3382
    add h
    ld sp, $061C
    rlca
    ld [$0709], sp
    ld b, $09
    ld [$0F11], sp
    ld [de], a

jr_027_5258:
    inc de
    db $10
    ld c, $14
    dec d
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, $17
    jr jr_027_527E

    rla
    ld d, $19
    jr jr_027_51EC

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

jr_027_527E:
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
    nop
    ld bc, $0A0B
    ld bc, $110C
    db $10
    ld [de], a
    inc d
    rrca
    ld c, $13
    dec d
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
    ld h, [hl]
    inc c
    ld h, c
    ld e, e
    ld e, a
    ld h, b
    ld h, [hl]
    ld h, b
    ld e, [hl]
    ld h, d
    ld e, a
    ld h, [hl]
    ld e, e
    ld e, [hl]
    add d
    ld h, [hl]
    dec bc
    ld e, e
    ld h, c
    ld h, [hl]
    ld e, $1F
    jr nz, jr_027_530F

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

jr_027_530F:
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
    ld h, [hl]
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
    ld h, [hl]
    ld e, l
    ld h, c
    add d
    ld h, [hl]
    ld [bc], a
    ld h, c
    ld h, [hl]
    add d
    ld e, e
    rla
    ld h, d
    ld h, [hl]
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
    ld h, [hl]
    ld h, [hl]
    ld h, d
    ld h, [hl]
    ld h, e
    add d
    ld h, d
    ld [bc], a
    ld h, [hl]
    ld h, d
    add h
    ld h, [hl]
    inc bc
    ld h, d
    ld h, c
    ld h, e
    add e
    ld h, [hl]
    inc b
    ld h, d
    ld h, [hl]
    ld h, d
    ld e, e
    adc c
    ld h, [hl]
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
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld e, e
    add d
    ld h, [hl]
    rlca
    ld e, e
    ld h, c
    ld h, [hl]
    ld e, a
    ld e, e
    ld h, [hl]
    ld h, b
    adc h
    ld h, [hl]
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
    ld h, [hl]
    add d
    ld e, e
    add d
    ld h, [hl]
    ld [bc], a
    ld h, c
    ld e, e
    add d
    ld h, [hl]
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
    xor h
    ld h, [hl]
    dec bc
    ld e, l
    ld h, [hl]
    ld h, [hl]
    ld h, c
    ld e, [hl]
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
    ld h, [hl]
    ld e, [hl]
    or b
    ld h, [hl]
    ld [$6662], sp
    ld h, d
    ld h, [hl]
    ld h, e
    ld h, c
    ld h, [hl]
    ld h, d
    add d
    ld h, [hl]
    inc b
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, d
    add e
    ld h, [hl]
    ld bc, $AC62
    ld h, [hl]
    jr jr_027_5482

    ld h, $2A
    dec hl
    daa
    jr z, jr_027_544F

    dec l
    add hl, hl
    ld h, [hl]
    ld l, $2F
    ld h, [hl]
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
    ld h, [hl]
    add d
    inc d
    add d
    ld de, $1882
    add d
    add hl, de
    jr jr_027_5470

    ld sp, $3736
    ld [hl-], a
    inc sp
    jr c, jr_027_5480

    inc [hl]
    dec [hl]
    ld a, [hl-]
    dec sp
    dec [hl]
    inc [hl]
    dec sp
    ld a, [hl-]

jr_027_544F:
    inc sp
    ld [hl-], a
    add hl, sp
    jr c, jr_027_5485

    jr nc, jr_027_548D

    ld [hl], $94
    ld h, [hl]
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
    add h
    ld a, [de]
    jr nz, jr_027_54A7

    dec a
    ld b, b
    ld b, c
    ld a, $3F

jr_027_5470:
    ld b, d
    ld b, e
    ccf
    ld a, $43
    ld b, d
    dec a
    inc a
    ld b, c
    ld b, b
    ld c, e
    ld c, h
    ld c, a

jr_027_547D:
    ld d, b
    ld c, l
    ld c, [hl]

jr_027_5480:
    ld d, c
    ld d, d

jr_027_5482:
    ld c, [hl]
    ld c, l
    ld d, d

jr_027_5485:
    ld d, c
    ld c, h
    ld c, e
    ld d, b
    ld c, a
    adc h
    ld h, [hl]
    inc b

jr_027_548D:
    dec e
    ld e, $20
    ld hl, $1F82
    add d
    ld hl, $1E08
    dec e
    ld hl, $1120
    inc de
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

jr_027_54A7:
    ld b, [hl]
    ld b, a
    ld c, c
    ld c, d
    ld b, a
    ld b, [hl]
    ld c, d
    ld c, c
    ld b, l
    ld b, h
    ld c, b
    ld h, h

jr_027_54B3:
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
    inc c
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld b, $07
    ld [$0209], sp
    inc bc
    inc b
    dec b
    add d
    nop
    add d
    ld bc, $F082
    add d
    pop af
    add d
    di
    add d
    ld a, [c]
    add h
    ld c, b
    add h
    ld b, $84
    ld h, $01
    ld h, b
    add h
    ld hl, $0102
    ld hl, $0182
    inc b
    ld b, b
    ld bc, $4801
    add e
    jr nz, jr_027_547D

    nop
    add d
    ld l, b
    ld [bc], a
    nop
    ld c, b
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
    inc h
    add l
    inc b
    rlca
    inc h
    inc b
    inc h

jr_027_5514:
    inc b
    inc h
    inc b
    inc h
    add [hl]
    dec b
    ld bc, $8548
    dec b
    add d
    ld hl, $6182
    add h
    ld l, c
    add d
    ld bc, $4182
    inc bc
    jr nz, jr_027_5593

    jr nz, jr_027_54B3

    ld l, b
    inc bc
    nop
    ld l, b
    nop
    add h
    ld l, c
    add h
    ld c, b
    add h
    ld l, c
    add h
    inc b
    rlca
    inc h
    inc b
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    inc h
    add e
    inc b
    add d
    ld b, h
    add d

jr_027_5547:
    dec b
    add d
    dec c
    add d
    ld c, b
    add d
    ld [$0582], sp
    add d
    dec c
    add d
    ld h, c
    dec b
    jr nz, jr_027_55B8

    ld h, c
    ld b, c
    ld h, c
    add h
    ld b, c
    dec b
    nop

jr_027_555E:
    ld h, b
    ld h, b
    ld c, b
    ld h, b
    add d
    ld l, b
    add l
    ld b, b
    inc bc
    ld c, b
    ld l, c
    inc h
    add [hl]
    ld l, c
    ld bc, $8304
    ld l, c
    add h
    inc h
    add d
    inc b
    add d
    ld b, h
    ld [$2404], sp
    ld b, h
    ld h, h
    inc b
    inc h
    inc b
    inc h
    add h
    dec c
    add l
    dec l
    add h
    dec c
    ld bc, $8A2D
    dec c
    add h
    dec l
    inc b
    nop
    jr nz, jr_027_558F

jr_027_558F:
    jr nz, jr_027_5514

    ld l, b
    dec b

jr_027_5593:
    ld h, b
    ld l, b
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
    jr nz, jr_027_55A6

    ld l, b

jr_027_55A6:
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
    ld bc, $840D
    dec l
    ld bc, $840D

jr_027_55B8:
    dec l
    add h
    dec c
    add h
    dec l
    ld b, $00
    jr nz, jr_027_55C1

jr_027_55C1:
    jr nz, jr_027_562B

    jr nz, jr_027_5547

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
    jr nz, jr_027_555E

    nop
    ld [bc], a
    ld l, b
    inc c
    add d
    ld c, b
    dec b
    dec c
    inc c
    ld l, $0E
    ld c, b
    add d
    ld c, $05
    dec c
    ld l, $48
    inc c
    ld l, $82
    ld c, b
    inc bc
    inc c
    dec l
    ld c, b
    add h
    dec c
    add h
    dec l
    dec b
    nop
    jr nz, jr_027_55FD

jr_027_55FD:
    jr nz, jr_027_5667

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
    ld c, b
    add d
    dec l
    dec c
    ld l, $2D
    ld l, $2D
    dec c
    ld l, $0D
    ld l, $0C
    inc l
    ld c, b
    inc l

jr_027_562B:
    dec l
    add d
    ld c, b
    dec bc
    dec l
    ld c, b
    inc c
    inc l
    dec l
    ld c, b
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
    dec b
    inc hl
    ld l, b
    inc hl
    inc bc
    ld l, b
    add d
    ld c, b
    rlca
    dec l
    ld c, b
    dec c
    dec l
    dec c
    ld c, b
    dec c
    add h
    ld c, b
    add e
    dec l
    add e
    ld c, b
    inc b
    dec l
    ld c, b
    dec l
    inc c
    adc c
    ld c, b

jr_027_5667:
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
    ld c, b
    dec c
    ld c, b
    inc l
    add d
    ld c, b
    rlca
    inc l
    dec l
    ld c, b
    ld c, $2C
    ld c, b
    ld l, $8C
    ld c, b
    adc b
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
    ld c, b
    add d
    inc l
    add d
    ld c, b
    ld [bc], a
    dec c
    inc l
    add d
    ld c, b
    ld b, $0E
    ld l, $2E
    ld c, $2D
    inc c
    add d
    inc l
    ld bc, $AC2D
    ld c, b
    add hl, bc
    inc c
    ld c, b
    ld c, b
    dec c
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
    ld c, $48
    ld c, $B0
    ld c, b
    inc b
    dec c
    ld c, b
    dec c
    ld c, b
    add d
    dec c
    ld [bc], a
    ld c, b
    dec l
    add d
    ld c, b
    inc b
    dec c
    dec l
    ld c, b
    dec l
    add e
    ld c, b
    ld bc, $AC0D
    ld c, b
    adc c
    dec c
    inc b
    ld c, b
    dec c
    dec c
    ld c, b
    adc e
    dec l
    and b
    ld c, b
    ld [$6141], sp
    ld bc, $0221
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    adc h
    dec c
    adc h
    dec l
    sub h
    ld c, b
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
    adc h
    ld c, b
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
    ld b, c
    ld hl, $2141
    ld [bc], a
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
    add h
    inc bc
    inc b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    adc h
    nop
    inc c
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    nop
    dec l
    sub l
    ld bc, $3222
    adc h
    ld a, [bc]
    ld bc, $8A6E
    ld c, c
    ld bc, $9B99
    ld c, c
    ld bc, $856F
    nop
    ld bc, $8A59
    ld c, c
    ld bc, $9AA9
    ld c, c
    ld [bc], a
    ld a, a
    ld e, d
    add l
    nop
    jr z, jr_027_57AA

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2C
    dec l
    ld l, $29
    dec hl
    ld c, c
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2A
    dec hl
    inc l
    cpl
    add l

jr_027_57AA:
    nop
    jr z, jr_027_57D5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2C
    dec l
    ld b, h
    add hl, hl
    dec hl
    ld c, c
    add hl, hl
    ld a, [hl+]
    ld b, h
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc a
    dec a
    add hl, sp
    add hl, hl
    ld a, [hl+]
    dec hl
    ld b, h
    dec l
    ld l, $29
    ld b, h
    dec hl
    inc l
    dec l
    ld l, $44
    dec hl
    inc l
    cpl
    add l

jr_027_57D5:
    nop
    dec bc
    ld a, [hl]
    ld c, c
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    add d
    inc a
    add e
    ld c, c
    ld [$3A39], sp
    dec sp
    inc a
    ld c, c
    ld b, h
    rst $30
    ld b, h
    add l
    ld c, c
    ld bc, $8344
    ld c, c
    ld b, $44
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld c, c
    ld bc, $857F
    nop
    inc b
    ld l, [hl]
    ld b, h
    rst $30
    ld b, h
    adc b
    ld c, c
    inc bc
    ld a, [hl-]
    dec sp
    inc a
    add e
    ld c, c
    inc b
    rst $30
    ld b, h
    ld c, c
    ld b, h
    add h
    ld c, c
    ld c, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld l, a
    add l
    nop
    dec de
    ld l, [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $49
    ld b, h
    ld c, c
    ld b, h
    rst $30
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $49
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    add a
    ld c, c
    ld b, $44
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld l, a
    add l
    nop
    inc bc
    ld l, [hl]
    ld c, c
    ld b, h
    add l
    ld c, c
    ld bc, $8344
    ld c, c
    ld bc, $8B44
    ld c, c
    db $10
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    rst $30
    ld b, h
    ld l, a
    add l
    nop
    add hl, de
    ld l, [hl]
    dec a
    add hl, sp
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    rst $30
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    add h
    ld c, c
    dec bc
    ld b, h
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    add hl, sp
    ld l, a
    add l
    nop
    add hl, bc
    ld l, [hl]
    rst $30
    inc a
    dec a
    add hl, sp
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add e
    ld c, c
    ld b, $3C
    dec a
    add hl, sp
    ld c, c
    dec a
    add hl, sp
    add d
    ld c, c
    rrca
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add h
    ld c, c
    ld bc, $856F
    nop
    dec c
    ld l, [hl]
    add hl, sp
    ld a, [hl-]
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add h
    ld c, c
    ld bc, $8444
    ld c, c
    ld bc, $8444
    ld c, c
    dec c
    ld b, h
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $85
    nop
    ld bc, $896E
    ld c, c
    ld bc, $8344
    ld c, c
    inc de
    add hl, sp
    dec a
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add [hl]
    ld c, c
    ld bc, $856F
    nop
    rrca
    ld l, [hl]
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
    ld a, $49
    inc a
    dec a
    add d
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add e
    ld c, c
    ld bc, $8344
    ld c, c
    inc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add d
    dec a
    ld [bc], a
    add hl, sp
    ld l, a
    add l
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    adc h
    ld c, c
    inc de
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    rst $30
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld b, h
    add h
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld l, a
    add l
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add d
    ld c, c
    inc b
    inc a
    dec a
    add hl, sp
    ld c, c
    add d
    add hl, sp
    inc bc
    ld a, [hl-]
    dec sp
    inc a
    add a
    ld c, c
    add hl, bc
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    add hl, sp
    ld c, c
    ld b, h
    add e
    ld c, c
    ld [$4944], sp
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld l, a
    add l
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add d
    ld c, c
    dec b
    ld b, h
    rst $30
    ld b, h
    ld c, c
    ld b, h
    add e
    ld c, c
    dec bc
    ld b, h
    ld c, c
    dec a
    add hl, sp
    ld c, c
    ld b, h
    ld c, c
    dec a
    add hl, sp
    ld c, c
    ld b, h
    add l
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    dec b
    ld b, h
    ld c, c
    inc a
    dec a
    ld l, a
    add l
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add d
    ld c, c
    ld bc, $8344
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add h
    ld c, c
    ld c, $44
    ld c, c
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    add e
    ld c, c
    ld bc, $856F
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add d
    ld c, c
    ld d, $3C
    dec a
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    ld c, c
    inc a
    dec a
    add hl, sp
    ld c, c
    ld b, h
    add h
    ld c, c
    ld bc, $8444
    ld c, c
    ld bc, $8344
    ld c, c
    ld bc, $856F
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add e
    ld c, c
    ld bc, $8444
    ld c, c
    inc b
    ld b, h
    ld c, c
    ld b, h
    rst $30
    add e
    ld c, c
    ld bc, $8544
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    ld a, [bc]
    ld b, h
    ld c, c
    inc a
    dec a
    ld c, c
    dec sp
    inc a
    dec a
    add hl, sp
    ld b, h
    add l
    nop
    inc bc
    ld l, [hl]
    ld b, h
    ld c, c
    add d
    add hl, sp
    db $10
    ld a, [hl-]
    ld c, c
    ld c, c
    inc a
    dec a
    add hl, sp
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3C
    ld c, c
    ld b, h
    add d
    ld c, c
    ld a, [bc]
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add [hl]
    ld c, c
    ld bc, $856F
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add e
    ld c, c
    ld bc, $8444
    ld c, c
    ld bc, $8644
    ld c, c
    rlca
    rst $30
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add e
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld c, c
    rst $30
    ld b, h
    add d
    ld c, c
    ld b, $39
    ld a, [hl-]
    dec sp
    inc a
    ld b, h
    ld l, a
    add l
    nop
    dec d
    ld l, [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3D
    add hl, sp
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    add d
    ld c, c
    add hl, bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add e
    ld c, c
    ld bc, $8344
    ld c, c
    ld bc, $856F
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add e
    ld c, c
    ld b, $44
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld c, c
    ld bc, $8844
    ld c, c
    ld bc, $8A44
    ld c, c
    add hl, bc
    inc a
    dec a
    add hl, sp
    ld c, c
    dec sp
    inc a
    dec a
    add hl, sp
    ld l, a
    add l
    nop
    rlca
    ld l, [hl]
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    add [hl]
    ld c, c
    ld de, $3A39
    dec sp
    inc a
    dec a
    ld a, $49
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $39
    ld a, [hl-]
    dec sp
    inc a
    add e
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add e
    ld c, c
    ld bc, $856F
    nop
    inc b
    ld l, [hl]
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    dec c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $49
    ld b, h
    rst $30
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add a
    ld c, c
    ld c, $44
    ld c, c
    rst $30
    inc a
    dec a
    add hl, sp
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld l, a
    add l
    nop
    inc b
    ld l, [hl]
    ld b, h
    ld c, c
    ld b, h
    add a
    ld c, c
    ld a, [bc]
    ld b, h
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    ld bc, $8544
    ld c, c
    ld bc, $8344
    ld c, c
    rlca
    ld b, h
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld l, a
    add l
    nop
    rlca
    ld l, [hl]
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add d
    ld c, c
    inc bc
    ld b, h
    rst $30
    ld b, h
    adc b
    ld c, c
    ld de, $3A39
    dec sp
    inc a
    dec a
    ld a, $49
    inc a
    dec a
    add hl, sp
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    add d
    ld c, c
    ld bc, $856F
    nop
    db $10
    ld l, [hl]
    ld b, h
    ld c, c
    ld b, h
    rst $30
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    inc a
    dec a
    add hl, sp
    add d
    ld c, c
    inc bc
    inc a
    dec a
    add hl, sp
    add h
    ld c, c
    ld b, $44
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    ld c, c
    add hl, bc
    ld b, h
    ld c, c
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    add hl, sp
    ld l, a
    add l
    nop
    dec b
    ld l, [hl]
    ld b, h
    ld c, c
    dec a
    add hl, sp
    adc b
    ld c, c
    ld [$4944], sp
    ld b, h
    ld c, c
    rst $30
    ld b, h
    ld c, c
    ld b, h
    add d
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add a
    ld c, c
    ld [bc], a
    rst $30
    ld b, h
    add d
    ld c, c
    inc bc
    ld b, h
    rst $30
    ld l, a
    add l
    nop
    ld [bc], a
    ld l, [hl]
    ld b, h
    add d
    ld c, c
    dec de
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    ld a, [hl-]
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    inc a
    dec a
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $82
    add hl, sp
    rlca
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    inc a
    dec a
    add hl, sp
    add l
    nop
    inc bc
    ld l, [hl]
    dec a
    add hl, sp
    add l
    ld c, c
    inc b
    ld b, h
    ld c, c
    ld b, h
    rst $30
    adc e
    ld c, c
    ld bc, $8B44
    ld c, c
    ld bc, $8344
    ld c, c
    ld bc, $856F
    nop
    jr z, jr_027_5C70

    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld b, h
    ld c, c
    inc a
    dec a
    add hl, sp
    add l
    nop
    ld bc, $866E
    ld c, c
    ld [bc], a
    rst $30
    ld b, h
    add d
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    add l
    ld c, c
    ld [$3D3C], sp
    add hl, sp
    ld c, c
    ld b, h
    ld c, c
    ld b, h
    rst $30
    add [hl]
    ld c, c
    dec b
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld l, a
    add l
    nop
    add hl, bc
    ld l, [hl]
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add d
    ld c, c
    ld bc, $8344
    ld c, c
    inc bc
    ld b, h
    ld c, c
    ld b, h
    add a
    ld c, c
    rrca
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld c, c

jr_027_5C70:
    ld b, h
    ld c, c
    ld b, h
    ld c, c
    ld l, a
    add l
    nop
    ld bc, $8759
    ld c, c
    ld bc, $8644
    ld c, c
    dec bc
    ld b, h
    ld c, c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add a
    ld c, c
    ld bc, $8544
    ld c, c
    ld bc, $855A
    nop
    jr z, jr_027_5CBF

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2C
    dec l
    ld l, $29
    dec hl
    ld c, c
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2A
    dec hl
    inc l
    cpl
    add l

jr_027_5CBF:
    nop
    ld bc, $A67E
    ld c, c
    ld bc, $857F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $856F
    nop
    ld bc, $A66E
    ld c, c
    ld bc, $C26F
    ld d, l
    nop
    nop
    sub h
    add b
    ld b, $00
    ld bc, $0504
    ld [bc], a
    inc bc
    add d
    rst $28
    inc h
    ld bc, $0500
    inc b
    dec [hl]
    ld [hl], $3D
    ld a, $37
    jr c, jr_027_5D70

    ld b, b
    add hl, sp
    ld a, [hl-]
    ld b, c
    ld b, d
    scf
    jr c, jr_027_5D78

    ld b, b
    dec sp
    inc a
    ld b, e
    ld b, h
    ld l, a
    ld [hl], b
    ld l, l
    ld l, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, [hl]
    ld d, l
    ld e, b
    ld d, a
    adc b
    add b
    inc b
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    add h
    add b
    rlca
    ld b, $EF
    rlca
    dec bc
    ld b, $EF
    rlca
    add [hl]
    rst $28
    inc hl
    ld b, $EF
    rlca
    ld b, l
    ld b, [hl]
    ld c, l
    ld c, [hl]
    ld a, b
    ld c, b
    ld c, a
    ld d, b
    ld c, c
    ld c, d
    ld d, c
    ld d, d
    ld a, b
    ld c, b
    ld c, a

jr_027_5D70:
    ld d, b
    ld c, e
    ld c, h
    ld d, e
    ld d, h
    ld [hl], b
    ld l, a
    ld l, [hl]

jr_027_5D78:
    ld l, l
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, d
    ld e, c
    ld e, h
    ld e, e
    adc b
    add b
    inc b
    ld a, l
    rst $28
    ld a, [bc]
    dec bc
    add h
    add b
    ld [$06EF], sp
    dec bc
    rlca
    add hl, bc
    ld [$0C0D], sp
    add d
    rst $28
    ld h, $0A
    dec bc
    ld [$0C09], sp
    dec c
    inc h
    inc hl
    jr z, jr_027_5DC7

    ld hl, $6424
    ld a, [de]
    dec h
    ld h, $1C
    ld a, [hl+]
    ld h, $25
    ld a, [hl+]
    ld h, c
    ld [hl], c
    jr c, @+$76

    ld b, b
    scf
    ld [hl], e
    ccf
    halt
    ld e, l
    ld e, [hl]
    ld h, c
    ld h, b
    ld e, [hl]
    ld e, l
    ld h, b
    ld e, a
    adc b
    add b
    ld c, $EF
    ld a, l
    dec bc
    ld a, [bc]
    ld bc, $0702
    rst $28

jr_027_5DC7:
    ld [bc], a
    ld bc, $07EF
    ld e, [hl]
    rrca
    add d
    ld e, [hl]
    ld [bc], a
    db $10
    ld de, $5E82
    ld bc, $840F
    ld e, [hl]
    add hl, bc
    dec e
    ld a, [bc]
    ld e, $00
    ld bc, $0504
    ld [bc], a
    inc bc
    add d
    ld e, [hl]
    inc d
    ld bc, $0500
    inc b
    ld [hl], a
    ld c, b
    ld e, [hl]
    ld d, b
    ld a, b
    ld a, c
    ld c, a
    ld a, h
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, d
    ld e, a
    ld h, h
    ld h, e
    add h
    add b
    rlca
    rlca
    rst $28
    ld bc, $EF02
    rlca
    ld [bc], a
    add e
    ld bc, $0782
    rla
    rst $28
    ld b, $EF
    rlca
    ld e, [hl]
    rla
    ld a, [de]
    dec de
    jr @+$1B

    inc e
    dec e
    cpl
    ld e, [hl]
    dec l
    ld a, [de]
    ld c, $1F
    ld [de], a
    jr nz, @+$08

    ld e, [hl]
    rlca
    add [hl]
    ld e, [hl]
    inc de
    ld b, $5E
    rlca
    add hl, sp
    ld a, [hl-]
    ld b, c
    ld b, d
    scf
    jr c, jr_027_5E6B

    ld b, b
    ld h, l
    ld h, a
    ld l, c
    ld l, d
    ld h, a
    ld l, b
    ld l, e
    ld l, h
    add h
    add b
    inc bc
    rra
    ld e, $21
    add d
    ld a, l
    rrca
    rlca
    ld [bc], a
    ld bc, $7D1F
    ld hl, $7DEF
    ld b, $EF
    rlca
    rra
    ld e, $21
    jr nz, @-$7A

    rst $28
    inc c
    ld e, $1F
    jr nz, jr_027_5E75

    inc h
    inc hl
    jr z, jr_027_5E7F

    ld [$095E], sp
    ld a, [bc]
    add d
    ld e, [hl]
    ld d, $0B
    inc c
    ld e, [hl]
    ld [$090A], sp
    ld c, c
    ld c, d
    ld d, c
    ld d, d
    ld a, b
    ld c, b

jr_027_5E6B:
    ld c, a
    ld d, b
    ld l, b
    ld h, a
    ld l, h
    ld l, e
    ld h, a
    ld h, l
    ld l, d
    ld l, c

jr_027_5E75:
    adc h
    add b
    inc [hl]
    dec de
    ld b, $EF
    rlca
    rst $28
    ld b, $7D

jr_027_5E7F:
    rlca
    ld a, [de]
    dec de
    ld e, [hl]
    cpl
    inc e
    dec e
    jr jr_027_5EA1

    dec de
    ld l, $32
    ld e, [hl]
    dec e
    ld e, [hl]
    ld e, $0A
    dec c
    ld c, $11
    ld [de], a
    rrca
    db $10
    inc de
    inc d
    ld c, $0D
    ld [de], a
    ld de, $3433
    ld b, e
    ld b, h
    inc [hl]

jr_027_5EA1:
    inc sp
    ld b, h
    ld b, e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    adc h
    add b
    dec b
    ld c, b
    ld [hl], a
    ld d, b
    ld e, [hl]
    rst $28
    add d
    ld a, l
    add hl, bc
    rst $28
    ld e, [hl]
    ld e, [hl]
    dec bc
    inc h
    ld [hl+], a
    inc hl
    dec h
    ld h, $82
    ld e, [hl]
    ld [hl+], a
    daa
    inc c
    rra
    ld c, $20
    ld [de], a
    dec d
    inc h
    ld h, h
    ld a, [de]
    rla
    jr jr_027_5EEB

    ld h, c
    inc h
    dec d
    jr z, jr_027_5EFC

    ld d, e
    ld d, h
    ld h, e
    daa
    ld d, h
    ld d, e
    ld h, h
    ld h, e
    halt
    scf
    jr c, jr_027_5F1A

    halt
    scf
    jr c, jr_027_5F1E

    adc h
    add b
    add d
    rst $28
    add d
    ld a, l

jr_027_5EEB:
    add d
    ld b, $82
    rlca
    ld b, $0F
    jr z, jr_027_5F06

    dec hl
    ld e, [hl]
    add hl, hl
    add d
    ld e, [hl]
    ld [$102A], sp
    inc l

jr_027_5EFC:
    inc d
    ld hl, $6424
    ld a, [de]
    add e
    rst $28
    add hl, de
    ld a, l
    rst $28

jr_027_5F06:
    rst $28
    ld a, l
    rst $28
    ld e, [hl]
    dec hl
    ld e, [hl]
    inc l
    dec [hl]
    ld e, [hl]
    ld b, l
    ld b, [hl]
    ld e, [hl]
    dec [hl]
    ld b, [hl]
    ld b, l
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    ld c, c

jr_027_5F1A:
    ld c, d
    ld e, c
    ld e, d
    sub b

jr_027_5F1E:
    add b
    ld [$7D06], sp
    rlca
    rst $28
    rla
    ld l, $61
    ld [hl-], a
    add h
    ld e, [hl]
    ld a, [bc]
    ld l, $18
    ld [hl-], a
    ld h, c
    ld a, c
    ld a, b
    ld a, h
    ld c, a
    rst $28
    ld a, l
    add d
    rst $28
    ld bc, $837D
    rst $28
    inc d
    dec hl
    ld e, [hl]
    inc l
    ld e, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld l, c
    ld l, d
    ld a, c
    ld a, d
    sub h
    add b
    add d
    ld a, l
    add d
    rst $28
    inc b
    jr jr_027_5F72

    rst $28
    ld l, $84
    add b
    dec b
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, l
    rst $28
    add d
    ld a, l
    inc bc
    rst $28
    ld e, [hl]
    ld a, [hl]
    add d
    ld e, [hl]
    inc d
    dec de
    ld l, $32
    ld a, a
    ld d, b
    ld d, c

jr_027_5F72:
    ld h, b
    ld h, c
    ld d, c
    ld d, b
    inc e
    ld h, b
    ld c, d
    ld c, c
    ld e, d
    ld e, c
    ld c, b
    ld b, a
    ld e, b
    ld d, a
    sbc b
    add b
    ld b, $73
    scf
    halt
    ccf
    ld a, [de]
    ld l, $82
    ld [hl-], a
    dec b
    ld e, [hl]
    ld e, l
    ld h, b
    ld e, a
    ld a, l
    add d
    rst $28
    ld [bc], a
    ld a, l
    ld a, [hl]
    add e
    ld e, [hl]
    inc d
    ld a, [de]
    dec de
    ld a, a
    cpl
    jr nc, jr_027_5FD0

    ld b, b
    ld b, c
    ld sp, $4130
    ld b, b
    ld l, d
    ld l, c
    ld a, d
    ld a, c
    ld l, b
    ld h, a
    ld a, b
    ld [hl], a
    sbc b
    add b
    inc b
    ld a, c
    ld a, b
    ld a, h
    ld c, a
    add h
    add b
    ld [$5F62], sp
    ld h, h
    ld h, e
    dec a
    ld a, $4D
    ld c, [hl]
    add d
    ld e, [hl]
    ld bc, $847F
    ld e, [hl]
    ld de, $307F
    rla
    ld b, b
    ld b, d
    cpl
    jr nc, jr_027_6010

    ld b, b
    dec sp

jr_027_5FD0:
    inc a
    ld c, e
    ld c, h
    inc a
    dec sp
    ld c, h
    ld c, e
    sbc b
    add b
    rrca
    ld e, [hl]
    dec e
    ld a, [bc]
    ld e, $1D
    ld a, [hl]
    ld e, $0A
    ld a, [hl]
    dec hl
    ld e, [hl]
    inc l
    dec hl
    ld a, [hl]
    inc l
    add e
    ld e, [hl]
    ld bc, $847E
    ld e, [hl]
    inc b
    ld a, [hl]
    jr nc, @+$60

    ld b, b
    add d
    ld e, [hl]
    dec bc
    jr nc, jr_027_6057

    ld b, b
    ld e, e
    ld e, h
    ld l, e
    ld l, h
    ld e, h
    ld e, e
    ld l, h
    ld l, e
    sbc h
    add b
    inc d
    ld b, $E6
    rlca
    or $E6
    ld b, $F6
    rlca
    ld e, c
    ld e, d
    ld e, e

jr_027_6010:
    ld e, h
    ld h, l
    ld h, a
    ld l, c
    ld l, d
    ld h, a
    ld l, b
    ld l, e
    ld l, h
    add h
    add b
    inc c
    dec a
    ld a, $4D
    ld c, [hl]
    dec a
    ld a, $4D
    ld c, [hl]
    ld a, $3D
    ld c, [hl]
    ld c, l
    and b
    add b
    inc b
    rst $20
    add sp, -$17
    ld [$E682], a
    add d
    or $82
    db $EB
    add d
    ei
    ld [$F8F7], sp
    ld sp, hl
    ld a, [$F8F7]
    ld sp, hl
    ld a, [$EF84]
    add d
    di
    ld b, $F5
    db $F4
    ld [c], a
    db $E3
    push hl
    db $E4
    sub h
    nop
    add [hl]
    ld c, $86
    ld l, $03
    add hl, bc
    inc c
    add hl, bc
    adc [hl]
    inc c

jr_027_6057:
    inc bc
    add hl, bc
    inc c
    add hl, bc
    adc b
    inc c
    add h
    inc l
    adc b
    nop
    add h
    ld c, $84
    nop
    add e
    ld l, $01
    ld c, $89
    ld l, $04
    ld c, $2E
    ld c, $09
    sub b
    inc c
    inc bc
    add hl, bc
    inc c
    inc c
    add h
    inc l
    add h
    inc c
    add h
    inc l
    adc b
    nop
    ld [bc], a
    ld l, [hl]
    ld l, $82
    ld c, $84
    nop
    add h
    ld c, $86
    ld l, $86
    ld c, $08
    ld hl, $2424
    ld h, $04
    ld bc, $0426
    add d
    ld bc, $2402
    inc b
    add d
    ld hl, $2402
    inc b
    adc h
    inc c
    add h
    inc l
    adc b
    nop
    ld [bc], a
    ld c, $4E
    add d
    ld l, $82
    ld c, $08
    ld l, $6E
    ld c, $2E
    ld c, [hl]
    ld c, $06
    ld c, $82
    ld b, $82
    ld c, $82
    ld b, $01
    ld l, $83
    ld b, $01
    inc b
    add e
    inc h
    add e
    inc b
    inc bc
    nop
    inc b
    inc b
    add d
    nop
    add d
    inc h
    ld [bc], a
    jr nz, @+$26

    add d
    inc c
    ld bc, $8903
    inc c
    add h
    inc l
    add h
    nop
    add d
    ld l, [hl]
    add l
    ld c, [hl]
    ld [bc], a
    ld l, [hl]
    ld c, $82
    ld l, $06
    ld c, $4E
    ld c, $4E
    ld c, $06
    add a
    ld c, $04
    ld b, [hl]
    ld b, $46
    ld l, $84
    ld hl, $0403
    nop
    inc b
    add [hl]
    nop
    inc bc
    inc h
    nop
    inc h
    sub b
    inc c
    add h
    nop
    add e
    ld l, $02
    ld c, $6E
    add d
    ld c, [hl]
    inc bc
    ld l, [hl]
    ld l, $4E
    add d
    ld l, $04
    ld l, [hl]
    ld c, $6E
    ld c, $88
    ld l, $84
    ld c, $06
    ld hl, $2424
    ld h, $04
    nop
    add d
    inc b
    add d
    nop
    add d
    inc b
    ld bc, $8300
    inc h
    adc b
    inc c
    adc b
    inc l
    adc h
    nop
    add d
    ld c, $06
    ld l, $0E
    ld l, $0E
    ld l, $0E
    add d
    ld c, [hl]
    ld [bc], a
    nop
    ld h, $84
    ld c, [hl]
    ld b, $6E
    ld b, $66
    ld b, $04
    nop
    add e
    inc b
    ld [bc], a
    ld bc, $8504
    ld bc, $2104
    inc h
    ld hl, $8424
    ld bc, $2184
    add h
    nop
    add h
    inc bc
    adc h
    nop
    add e
    inc l
    inc bc
    inc hl
    ld l, $4E
    add d
    ld l, $03
    nop
    inc b
    inc b
    add l
    inc c
    inc b
    inc b
    nop
    inc c
    inc b
    add h
    ld bc, $0404
    ld bc, $0426
    add d
    ld bc, $0482
    dec b
    ld hl, $2424
    ld h, $01
    add d
    inc b
    dec b
    ld h, $24
    ld hl, $2426
    adc b
    ld b, $8C
    nop
    add e
    ld l, $0B
    ld c, $2E
    ld c, $2E
    ld c, $01
    inc c
    ld bc, $040C
    inc c
    add d
    inc b
    ld [$010C], sp
    inc c
    ld bc, HeaderLogo
    jr nz, @+$06

    add e
    ld l, $01
    ld c, $84
    ld l, $03
    nop
    inc b
    nop
    add e
    inc b
    inc bc
    ld bc, $0404
    add d
    inc h
    ld bc, $8321
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    sub b
    nop
    ld [bc], a
    ld l, $4E
    add d
    ld l, $04
    ld bc, $242C
    inc l
    add h
    inc b
    inc b
    inc c
    ld bc, $040C
    add h
    inc l
    ld [bc], a
    ld l, $4E
    add d
    ld l, $02
    ld l, [hl]
    ld l, $82
    ld c, $04
    inc h
    nop
    inc h
    nop
    add h
    ld bc, $2184
    ld [bc], a
    ld [bc], a
    dec b
    add d
    ld [bc], a
    ld bc, $8305
    ld [bc], a
    sub h
    nop
    ld [bc], a
    ld l, [hl]
    ld c, [hl]
    add d
    ld l, $82
    ld c, $02
    ld l, $06
    add h
    nop
    add h
    add hl, hl
    ld [bc], a
    ld l, $4E
    add d
    ld l, $02
    ld b, $0C
    add d
    ld b, $04
    ld l, [hl]
    ld b, $66
    inc c
    add d
    ld bc, $0482
    add d
    ld hl, $2482
    add e
    ld [hl+], a
    dec b
    dec h
    ld [hl+], a
    ld [hl+], a
    dec h
    ld [hl+], a
    sbc b
    nop
    add h
    inc l
    ld [bc], a
    ld c, $06
    add d
    ld h, [hl]
    add h
    add hl, hl
    dec b
    ld l, [hl]
    ld l, $2E
    ld c, $2C
    add e
    ld b, $0E
    ld c, [hl]
    ld c, e
    inc l
    ld h, $04
    ld b, $04
    ld b, $26
    inc h
    ld h, $24
    ld [hl+], a
    dec h
    add d
    ld [hl+], a
    ld bc, $8325
    ld [hl+], a
    sbc b
    nop
    add h
    inc l
    add h
    nop
    add h
    add hl, hl
    add h
    ld [bc], a
    add d
    nop
    ld bc, $842C
    nop
    add hl, bc
    inc c
    inc b
    ld c, $04
    ld b, $46
    inc h
    ld h, $24
    add d
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    add d
    ld [hl+], a
    ld [bc], a
    ld h, d
    dec h
    sbc b
    nop
    ld bc, $8304
    inc h
    ld [bc], a
    inc b
    inc c
    add d
    inc b
    ld bc, $832C
    inc b
    inc bc
    inc h
    inc c
    inc h
    add d
    inc b
    ld [bc], a
    nop
    ld l, h
    add h
    nop
    inc b
    ld c, h
    inc b
    nop
    inc b
    add d
    nop
    inc bc
    inc h
    nop
    inc h
    add h
    ld [bc], a
    add h
    ld [hl+], a
    sbc h
    nop
    ld [$0D2E], sp
    ld l, $0D
    dec l
    ld c, $2D
    ld c, $8C
    add hl, bc
    add h
    nop
    adc b
    ld [bc], a
    add h
    ld [hl+], a
    and b
    nop
    add h
    ld a, [bc]
    ld [$2D0D], sp
    dec c
    dec l
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add h
    ld [$0B84], sp
    add h
    jr z, jr_027_62BD

    dec l
    dec c

jr_027_62BD:
    add d
    dec l
    add d
    dec c
    add d
    ld a, [hl+]
    nop
    add h
    rst $28
    inc b
    ld b, [hl]
    ld b, a
    ld b, h
    ld b, l
    and l
    rst $28
    add hl, bc
    ld hl, $1B02
    inc bc
    ld [bc], a
    db $10
    inc b
    nop
    ld bc, $2082
    ld [$1502], sp
    dec bc
    dec b
    ld hl, $1BEF
    inc e
    sbc h
    rst $28
    add hl, bc
    ld c, h
    ld de, $1F10
    ld de, $1F4C
    db $10
    inc de
    add d
    inc d
    inc c
    inc de
    nop
    ld bc, $1413
    inc bc
    ld [bc], a
    ld b, l
    inc b
    rlca
    ld b, $0A
    add l
    jr nz, jr_027_6308

    ld b, $07
    jr nz, jr_027_630E

    ld [bc], a
    dec d
    dec bc
    dec b

jr_027_6308:
    sbc b
    rst $28
    inc e
    inc bc
    ld b, l
    db $10

jr_027_630E:
    ld d, l
    db $10
    rra
    ld c, h
    ld de, $101F
    ld de, $3C4C
    ld b, a
    add hl, bc
    ld d, a
    ld b, l
    inc bc
    ld d, l
    db $10
    dec c
    jr nz, @+$10

    jr nz, @+$0C

    jr nz, jr_027_632D

    ld b, $85
    jr nz, jr_027_6331

    ld a, [bc]
    ld b, $07

jr_027_632D:
    jr nz, @+$0F

    jr nz, @+$10

jr_027_6331:
    sbc b
    rst $28
    jr @+$48

    ld b, a
    ld d, [hl]
    ld d, a
    add hl, hl
    rrca
    db $10
    ld de, $180F
    ld de, $4710
    ld sp, $0957
    ld b, a
    ld b, [hl]
    ld d, a
    ld d, [hl]
    inc c
    dec bc
    dec d
    ld de, $2082
    ld [bc], a
    inc de
    inc d
    add d
    jr nz, jr_027_6356

    inc de
    inc d

jr_027_6356:
    add d
    jr nz, jr_027_635F

    inc de
    inc d
    dec bc
    inc c
    dec d
    ld [hl-], a

jr_027_635F:
    sbc b
    rst $28
    inc c
    db $10
    ld d, l
    dec d
    ld b, l
    ld d, $17
    ld d, $19
    rla
    ld d, $19
    ld e, b
    add d
    inc de
    add hl, de
    dec d
    ld [hl-], a
    ld d, l
    inc c
    ld b, l
    ld [hl-], a
    ld [bc], a
    dec de
    rst $28
    ld hl, $491A
    ld d, $19
    ld c, d
    jr jr_027_63DC

    ld e, $17
    ld a, [de]
    dec l
    ld e, b
    dec de
    inc e
    ld hl, $EF99
    inc hl
    ld [bc], a
    dec de
    rst $28
    ld hl, $491A
    ld d, $19
    ld c, d
    jr jr_027_63F2

    ld e, $49
    ld a, [de]
    add hl, de
    ld e, b
    dec de
    inc e
    ld hl, $42EF
    ld b, e
    ld d, d
    ld d, e
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    inc a
    ld [$8209], sp
    ld b, $03
    ld sp, $0908
    sbc b
    rst $28
    dec bc
    jr nz, jr_027_63DC

    ld h, $05
    inc h
    jr nz, jr_027_63F4

    inc b
    inc a
    ld [$8209], sp
    ld b, $03
    ld sp, $0908
    add h
    rst $28
    rrca
    ld d, d
    ld d, e
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld b, b
    ld b, c
    ld d, e
    ld d, d
    ld b, e
    ld b, d
    inc c
    dec c
    dec bc

jr_027_63DC:
    add d
    ld a, [bc]
    ld b, $0B
    inc c
    dec c
    inc a
    ld [$8209], sp
    ld b, $0F
    ld sp, $0908
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld b, b
    ld b, c
    ld d, b

jr_027_63F2:
    ld d, c
    ld b, e

jr_027_63F4:
    ld b, d
    ld d, e
    ld d, d
    add h
    rst $28
    dec bc
    dec sp
    ld c, l
    jr nz, jr_027_6422

    inc [hl]
    inc b
    inc bc
    jr nz, @+$0E

    dec c
    dec bc
    add d
    ld a, [bc]
    inc bc
    dec bc
    inc c
    dec c
    add h
    rst $28
    inc c
    jr z, jr_027_6428

    ld d, $1E
    ld a, [hl+]
    dec hl
    dec l
    dec e
    rla
    jr z, jr_027_6432

    ld e, b
    add h
    rst $28
    rlca
    inc bc
    dec d
    db $10
    dec b
    inc c

jr_027_6422:
    dec c
    dec bc
    add d
    ld a, [bc]
    rrca
    dec bc

jr_027_6428:
    inc c
    dec c
    ld d, d
    ld d, e
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld b, b
    ld b, c

jr_027_6432:
    ld d, e
    ld d, d
    ld b, e
    ld b, d
    sub h
    rst $28
    inc c
    jr nz, jr_027_645C

    ld h, $27
    ld [hl+], a
    inc de
    jr z, jr_027_646A

    inc h
    jr nz, jr_027_647E

    inc b
    adc h
    rst $28
    dec bc
    jr nz, jr_027_646B

    ld h, $05
    inc h
    jr nz, jr_027_6483

    inc b
    inc a
    ld [$8209], sp
    ld b, $0B
    ld sp, $0908
    add hl, hl
    rrca
    db $10

jr_027_645C:
    ld de, $180F
    ld de, $9010
    rst $28
    ld b, $31
    dec a
    ld [hl-], a
    ld b, d
    ld a, $3F

jr_027_646A:
    add d

jr_027_646B:
    ld b, d
    dec de
    jr nc, jr_027_64AB

    ld b, d
    ld [hl-], a
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    ld e, e
    ld e, c
    ld l, b
    ld l, c
    dec sp

jr_027_647E:
    ld c, l
    jr nz, jr_027_64A5

    inc [hl]
    inc b

jr_027_6483:
    inc bc
    jr nz, jr_027_6492

    dec c
    dec bc
    add d
    ld a, [bc]
    rrca
    dec bc
    inc c
    dec c
    ld a, [de]
    ld c, c
    ld d, $19

jr_027_6492:
    ld c, d
    jr jr_027_64EF

    ld e, $4A
    jr jr_027_64F3

    ld e, $84
    rst $28
    add h
    ei
    add h
    rst $28
    inc b
    inc sp
    ld c, l
    ld c, [hl]
    ld c, a

jr_027_64A5:
    add d
    ld b, d
    add d
    ld a, e
    ld a, [de]
    inc [hl]

jr_027_64AB:
    inc sp
    ld c, a
    ld c, [hl]
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld e, c
    ld e, b
    ld l, c
    ld l, e
    rst $28
    ld hl, $1B02
    inc bc
    ld [bc], a
    db $10
    inc b
    nop
    ld bc, $2082
    db $10
    ld [bc], a
    dec d
    dec bc
    dec b
    ld hl, $1BEF
    inc e
    ld c, h
    ld de, $1F10
    ld de, $1F4C
    db $10
    add h
    rst $28
    inc b
    ld a, [$FAFB]
    ei
    add e
    jr nz, jr_027_64F6

    inc [hl]
    jr nz, @+$22

    inc [hl]
    jr nz, jr_027_654A

    ld l, c
    ld [hl], e
    ld [hl], d
    ld h, c
    ld h, b
    ld [hl], c
    ld [hl], b
    ld h, b

jr_027_64EF:
    ld h, c
    ld [hl], b
    ld [hl], c
    ld l, c

jr_027_64F3:
    ld h, e
    ld [hl], d
    ld [hl], e

jr_027_64F6:
    add h
    rst $28
    rlca
    inc bc
    ld [bc], a
    db $10
    inc b
    rlca
    ld b, $0A
    add l
    jr nz, @+$12

    ld b, $07
    jr nz, jr_027_6511

    ld [bc], a
    dec d
    dec bc
    dec b
    db $10
    rra
    ld c, h
    ld de, $101F

jr_027_6511:
    ld de, $844C
    rst $28
    ld b, $F6
    rst $30
    push af
    db $FC
    jr nz, jr_027_6550

    add d
    jr nz, jr_027_6520

    inc [hl]

jr_027_6520:
    add e
    jr nz, jr_027_6533

    ld h, a
    ld h, [hl]
    ld [hl], a
    halt
    ld h, l
    ld h, h
    ld [hl], l
    ld [hl], h
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    halt
    ld [hl], a

jr_027_6533:
    add h
    rst $28
    ld [$200D], sp
    ld c, $20
    ld a, [bc]
    jr nz, jr_027_6544

    ld b, $85
    jr nz, jr_027_6548

    ld a, [bc]
    ld b, $07

jr_027_6544:
    jr nz, jr_027_6553

    jr nz, jr_027_6556

jr_027_6548:
    add d
    ld a, [de]

jr_027_654A:
    inc bc
    ld d, $58
    ld [bc], a
    add d
    dec d

jr_027_6550:
    ld bc, $8832

jr_027_6553:
    rst $28
    jr jr_027_659C

jr_027_6556:
    ld b, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, h
    ld b, l
    ld e, h
    ld e, l
    ld l, h
    ld l, l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld e, a
    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld e, l
    ld e, h
    ld l, l
    ld l, h

jr_027_656D:
    add h
    rst $28
    inc b
    db $10
    rra
    dec d
    ld de, $2082
    ld [bc], a
    inc de
    inc d
    add d
    jr nz, jr_027_657E

    inc de
    inc d

jr_027_657E:
    add d
    jr nz, jr_027_6589

    inc de
    inc d
    dec bc

jr_027_6584:
    inc c
    dec d
    ld [hl-], a
    ld d, $58

jr_027_6589:
    add d
    ld a, [de]
    inc b
    dec d
    ld [bc], a
    ld [hl-], a
    dec d
    sub b
    rst $28
    db $10
    ld [hl], b
    ld [hl], c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    halt
    ld [hl], a
    ld [hl], e

jr_027_659C:
    ld [hl], d
    ld [hl], a
    halt
    ld [hl], c
    ld [hl], b
    ld [hl], l
    ld [hl], h
    add h
    rst $28
    inc de
    ld [bc], a
    dec de
    rst $28
    ld hl, $171A
    ld d, $2D
    rla
    jr jr_027_65CE

    ld e, $17
    ld a, [de]
    dec l
    ld e, b
    dec de
    inc e
    ld hl, $EF85
    ld [bc], a
    db $E4
    push hl
    add d
    ld [c], a
    inc b
    rst $20
    add sp, -$17
    ld [$2D82], a
    add d
    cpl
    add d
    di
    ld d, $F5
    db $F4

jr_027_65CE:
    db $EB
    db $EC
    ei
    db $FC
    ldh [$E1], a
    ldh a, [$F1]
    ld [c], a

jr_027_65D7:
    db $E3
    ld a, [c]
    di
    db $EB
    db $EC
    ei
    db $FC
    db $EB
    db $EC
    ei
    db $FC
    add d
    and $82
    or $84
    jr z, jr_027_656D

    dec b
    and l
    jr z, jr_027_65F0

    ld l, c
    ld h, c
    ld l, c

jr_027_65F0:
    add d
    add hl, hl
    ld [bc], a
    ld l, c
    add hl, hl
    add d
    add hl, bc
    add d
    ld bc, $0902
    ld b, c
    add d
    add hl, bc
    ld [bc], a
    ld c, c
    jr z, jr_027_6584

    ld c, c
    sbc h
    jr z, jr_027_660B

    ld b, c
    ld c, c
    ld l, c
    ld b, c
    ld l, c

jr_027_660B:
    add d
    ld h, c
    inc bc
    ld l, c
    ld c, c
    ld c, c
    add d
    add hl, hl
    add h
    add hl, bc
    add d
    add hl, hl
    ld bc, $8409
    add hl, hl
    add l
    ld bc, $0982
    ld b, $01
    add hl, bc
    add hl, bc
    ld b, c
    add hl, bc
    add hl, bc
    sbc b
    jr z, jr_027_662E

    add hl, hl
    add hl, bc
    ld l, c
    add hl, bc
    add hl, hl

jr_027_662E:
    add d
    ld bc, $0902
    ld hl, $2982
    add d
    ld hl, $090D
    ld hl, $2909
    add hl, bc
    add hl, hl
    ld c, c
    add hl, hl
    ld hl, $2129
    ld l, c
    ld b, c
    add d
    ld l, c
    add l
    ld b, c
    add e
    ld c, c
    inc b
    ld bc, $0109
    add hl, bc
    sbc b

jr_027_6651:
    jr z, jr_027_65D7

    add hl, bc
    ld bc, $8329
    ld bc, $2102
    add hl, bc
    add d
    ld hl, $2904
    ld hl, $0129

jr_027_6662:
    add h
    add hl, hl
    add d
    ld l, c
    ld [bc], a
    ld hl, $8209
    ld bc, $0982

jr_027_666D:
    add d
    ld bc, $0982
    add d
    ld bc, $0982
    add d
    ld c, c
    ld [bc], a
    add hl, bc
    ld c, c
    sbc b
    jr z, @+$06

    add hl, hl
    ld c, c
    ld hl, $8249
    ld bc, $0902
    ld bc, $2183
    inc c
    add hl, hl
    ld hl, $2101
    ld c, c
    ld l, c
    ld c, c
    ld l, c
    ld c, c
    ld hl, $2829
    add d
    add hl, hl
    add d
    add hl, bc
    ld bc, $8401
    add hl, bc
    ld [bc], a
    ld hl, $8209
    add hl, hl

jr_027_66A2:
    add e
    add hl, bc
    sbc c
    jr z, jr_027_66AA

    ld hl, $2829

jr_027_66AA:
    add d
    add hl, hl
    add d

jr_027_66AD:
    add hl, bc
    ld bc, $8401
    add hl, bc
    inc b
    add hl, hl

jr_027_66B4:
    add hl, bc
    ld hl, $8329
    add hl, bc
    ld bc, $8828
    add hl, bc
    add h
    add hl, hl
    ld b, $21
    ld h, c
    ld hl, $0161
    ld hl, $0182
    sbc b
    jr z, jr_027_6651

    ld bc, $6108
    ld hl, $6121
    ld hl, $0161
    ld hl, $0182
    add h
    jr z, jr_027_6662

jr_027_66DA:
    ld c, c
    add h
    ld l, c
    add d
    ld b, c
    add d
    ld h, c
    add h
    ld bc, $2006
    ld h, b
    jr nz, @+$62

    nop
    jr nz, jr_027_666D

    nop
    adc b
    ld [$2888], sp
    dec b
    ld h, c
    add hl, bc
    ld bc, $2161
    add d
    ld h, c
    inc bc
    ld bc, $4141
    add d
    ld h, c
    add h
    ld bc, $2884
    adc b
    add hl, bc
    inc b
    ld hl, $2129
    add hl, hl
    add h
    jr z, jr_027_6710

    add hl, hl
    ld b, c
    ld l, c

jr_027_670F:
    add hl, bc

jr_027_6710:
    add d
    ld b, b
    add d
    ld h, b
    add h
    nop
    adc b
    ld c, b
    add h
    ld l, b
    sub h

jr_027_671B:
    jr z, jr_027_66A2

    ld bc, $0901
    add l
    ld bc, $2101
    adc h
    jr z, jr_027_66AD

    nop
    ld [$2060], sp
    jr nz, jr_027_678D

    jr nz, @+$62

    nop
    jr nz, jr_027_66B4

    nop
    ld bc, $8328
    nop
    ld [bc], a
    jr nz, jr_027_6742

    add d
    jr nz, @-$6E

    jr z, jr_027_6745

    ld hl, $0101

jr_027_6742:
    ld hl, $0101

jr_027_6745:
    add d
    ld hl, $0101
    add e
    ld hl, $0588
    ld bc, $8325
    dec b
    dec b
    ld h, b
    ld [$6000], sp
    jr nz, jr_027_66DA

    ld h, b
    inc bc
    nop
    ld b, b

jr_027_675C:
    ld b, b

jr_027_675D:
    add d
    ld h, b
    add h
    nop
    inc b
    jr z, jr_027_676C

    ld [$8800], sp
    ld [$2884], sp
    inc b
    dec h

jr_027_676C:
    dec b
    ld h, l
    ld b, l
    add h
    jr z, @+$03

    ld bc, $0983
    add e
    ld hl, $0103
    ld hl, $8221
    add hl, hl
    adc b
    dec b
    add e

jr_027_6780:
    dec h
    dec b
    dec b
    jr z, jr_027_67ED

    ld h, b
    ld l, b
    add d
    jr z, @+$04

    ld l, b
    jr z, jr_027_670F

jr_027_678D:
    ld [$0082], sp
    ld [bc], a
    ld [$8240], sp
    ld [$4802], sp
    jr z, jr_027_671B

    ld c, b
    dec b
    ld b, b
    ld c, b
    ld l, b
    ld b, b
    ld l, b
    add d
    ld h, b
    ld bc, $8468
    jr z, @-$7C

    nop
    add d
    ld b, b
    add e
    inc bc
    rlca
    dec c
    inc bc
    inc bc
    dec l
    inc bc
    dec l
    dec c
    add [hl]

jr_027_67B5:
    dec l
    add h
    dec c
    ld bc, $832D
    dec c
    add [hl]
    jr z, jr_027_67C0

    ld l, b

jr_027_67C0:
    add h
    jr z, @-$79

    nop
    add d
    ld [$0006], sp
    ld [$4008], sp
    ld [$0508], sp
    jr z, jr_027_67D0

jr_027_67D0:
    nop
    ld [$8220], sp
    jr z, @+$03

    jr nz, jr_027_675C

    jr z, jr_027_675D

    dec b
    inc bc
    dec h
    inc bc
    ld c, l
    add d
    inc bc
    ld bc, $836D
    inc bc
    adc b
    dec l
    adc b
    dec c
    add l
    jr z, jr_027_67F1

    nop

jr_027_67ED:
    jr z, jr_027_67EF

jr_027_67EF:
    ld l, b
    ld b, b

jr_027_67F1:
    add d
    ld l, b
    add l
    ld b, b
    add e
    ld c, b
    dec b
    ld b, b
    ld [$0800], sp
    jr z, jr_027_6780

    ld [$2805], sp
    ld [$0840], sp
    ld c, b
    adc b
    jr z, @-$6E

    dec b
    adc b
    dec h
    add l
    jr z, jr_027_6811

    nop
    jr nz, @+$0A

jr_027_6811:
    add d
    nop
    add d
    ld [$0082], sp
    add d
    ld [$0082], sp
    add d
    ld [$4882], sp
    inc bc
    ld [$4848], sp
    add d
    ld l, b
    inc b
    ld c, b
    ld h, b

jr_027_6828:
    jr z, jr_027_6892

    sub c
    jr z, jr_027_67B5

    dec b
    adc b
    dec h
    add h
    jr z, @+$03

    jr nz, @-$7A

    jr z, jr_027_6838

    nop

jr_027_6838:
    add [hl]
    ld [$2002], sp
    ld [$2882], sp
    add e
    ld [$2885], sp
    add e
    inc c
    ld bc, $842C
    inc c
    ld b, $24
    inc b
    inc h
    inc b
    inc l
    inc c
    add d
    inc l
    add h
    dec c
    adc b
    rrca
    adc b
    dec c
    inc b
    inc c
    inc l
    inc c
    inc l
    nop
    ld [hl-], a
    jp nz, $2701

    jr z, jr_027_6828

    add hl, bc
    ld b, $BC
    cp d
    cp d
    res 5, e
    cp h
    add d
    res 0, d
    cp d
    add l
    res 0, d
    cp h
    add d
    xor e
    ld [bc], a
    cp h
    res 0, d
    cp d
    add d
    rlc l
    cp d
    res 7, d
    bit 7, b
    add [hl]
    ld a, c
    ld [bc], a
    rst $30
    dec a
    add e
    ld a, $01
    dec l

jr_027_688C:
    adc b
    ld e, $03
    cp d
    set 1, h

jr_027_6892:
    sub a
    ld l, e
    inc b
    jp z, $CBBA

    call z, Call_027_6B86
    ld [bc], a
    ld l, b
    inc l
    add d
    ld c, [hl]
    inc bc
    call nz, $2D3D
    add a
    ld e, $02
    set 1, h
    and d
    ld l, e
    ld [$5978], sp
    ld e, c
    rst $30
    jp nz, $3DC4

    dec l
    add [hl]
    ld e, $01
    res 4, [hl]
    ld l, e
    ld b, $68
    db $D3
    call nz, $3DB3
    dec l
    add l
    ld e, $84
    ld e, c
    ld [bc], a
    jr jr_027_68E1

    sub l
    ld l, e
    ld bc, $8558
    ld e, c
    ld bc, $855A
    ld l, e
    rlca
    ld l, b
    ld [$B3D2], a
    call nz, $2D3D
    add h
    ld e, $84
    ld c, $02
    rrca
    inc d

jr_027_68E1:
    sub l
    ld e, c
    ld [bc], a
    or [hl]
    inc a
    add h
    ld [hl], a
    inc bc
    or a
    ld e, c
    ld e, d
    add e
    ld l, e
    ld [$F778], sp
    jp c, $D2FF

    call nz, $2D3D
    add a
    ld e, $02
    cpl
    ld h, [hl]
    adc c
    jr z, jr_027_688C

    ld [hl], a
    ld bc, $864C
    ld [hl], a
    ld bc, $846A
    ld l, e
    ld bc, $8368
    ld a, [$D204]
    rst $38
    dec a
    dec l
    add l
    ld e, $03
    cpl
    ccf
    ld d, [hl]
    adc c
    jr z, @-$70

    ld [hl], a
    ld bc, $855D
    ld [hl], a
    ld [bc], a
    or a
    ld e, d
    add e
    ld l, e
    ld [bc], a
    ld l, b
    call $2883
    inc b
    ld a, [$3D4D]
    dec l
    add e
    ld e, $04
    cpl
    ccf
    ld c, a
    rst $20
    add e
    ld a, c
    ld [bc], a
    rst $30
    dec b
    add h
    jr z, @-$70

    ld [hl], a
    ld bc, $856D
    ld [hl], a
    ld [bc], a
    jr z, jr_027_69AF

    add d
    ld l, e
    inc bc
    rst $20
    or [hl]
    db $DD
    add h
    jr z, jr_027_6958

    ld a, [$3DFF]
    dec e
    ld e, $2F
    ccf
    ld c, a
    rst $08
    ld l, d

jr_027_6958:
    add e
    ld l, e
    ld bc, $8478
    ld a, c
    ld bc, $86F7
    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    adc h
    ld [hl], a
    ld [bc], a
    jr z, jr_027_69D4

    add d
    ld l, e
    inc bc
    ld l, b
    rst $38
    ld a, [$2885]
    add hl, bc
    jp nc, $1DC4

jr_027_6976:
    rra
    ccf
    ld c, a
    rst $38
    rst $20
    ld a, d
    adc b
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    add l
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    adc e
    ld [hl], a
    add d
    jr z, jr_027_6990

    ld l, d
    ld l, e
    ld l, e
    or a
    rst $30

jr_027_6990:
    add [hl]
    jr z, jr_027_6998

    jp $1DD2


    rra
    ld c, a

jr_027_6998:
    add d
    jr z, jr_027_699C

    ld l, d

jr_027_699C:
    adc d
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    sub c
    ld [hl], a
    inc bc
    jr z, @+$01

    ld l, d
    add e
    ld l, e
    ld bc, $8768
    jr z, jr_027_69B2

    ld h, a

jr_027_69AF:
    dec e
    rra
    ld d, [hl]

jr_027_69B2:
    add d
    jr z, jr_027_69B6

    ld l, d

jr_027_69B6:
    adc e
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    adc e
    ld [hl], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    add e
    ld [hl], a
    add d
    jr z, jr_027_69C6

    ld l, d

jr_027_69C6:
    add e
    ld l, e
    ld bc, $8768
    jr z, jr_027_69D4

    ld d, a
    dec e
    rra
    ld h, [hl]
    call c, Call_027_6A28

jr_027_69D4:
    add h
    ld l, e
    inc bc
    ld e, b
    ld e, c
    ld e, d
    add l
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    adc d
    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    add h
    ld [hl], a
    ld [bc], a
    jr z, jr_027_6A53

    add d
    ld l, e
    inc bc
    ld e, b
    or [hl]
    jr z, jr_027_6976

    ld [hl], a
    rlca
    ld h, a
    dec e
    rra
    ld d, [hl]
    db $EC
    jr z, jr_027_6A63

    add d
    ld l, e
    rlca
    ld h, $AA
    xor e
    rst $38
    xor e
    ld e, c
    ld e, d
    add h
    ld l, e
    ld bc, $906A
    ld [hl], a
    ld [bc], a
    jr z, jr_027_6A76

    add d
    ld l, e
    inc bc
    ld l, b
    adc $5D
    add [hl]
    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld h, [hl]
    add d
    jr z, jr_027_6A20

    ld l, d
    ld l, e
    ld l, e
    ld e, e

jr_027_6A20:
    add l
    xor e
    ld [bc], a
    ld a, b
    ld e, d
    add e
    ld l, e
    ld [bc], a

Call_027_6A28:
    ld a, b
    rst $30
    add h
    ld [hl], a
    ld bc, $8A5D
    ld [hl], a
    ld [bc], a
    rst $20
    ld a, d
    add d
    ld l, e
    inc bc
    ld l, b
    sbc $6D
    add [hl]
    ld [hl], a
    inc b
    ld h, a
    dec e
    rra
    ld d, [hl]
    add d
    jr z, jr_027_6A48

    ld l, d
    ld l, e
    ld l, e
    cp d
    xor e

jr_027_6A48:
    add d
    cp d
    add e
    xor e
    ld bc, $846A
    ld l, e
    ld bc, $846A

jr_027_6A53:
    ld [hl], a
    ld bc, $896D
    ld [hl], a
    ld [bc], a
    rst $20
    ld a, d
    add e
    ld l, e
    inc b
    ld l, b
    ld l, h
    ld a, [hl]
    ld a, a
    add l

jr_027_6A63:
    ld [hl], a
    rlca
    ld d, a
    dec e
    rra
    ld h, [hl]
    jr z, @-$31

    ld l, d
    add d
    ld l, e
    add d

jr_027_6A6F:
    cp d
    add e
    xor e
    inc b
    cp d
    xor e
    ld a, b

jr_027_6A76:
    ld e, d
    add e
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    adc h
    ld [hl], a
    ld [bc], a
    rst $20
    ld a, d
    add e
    ld l, e
    dec b
    ld e, b
    or [hl]
    ld e, l
    adc [hl]
    adc a
    add l
    ld [hl], a
    rlca
    ld h, a
    dec e
    rra
    ld d, [hl]
    jr z, jr_027_6A6F

    ld l, d
    add d
    ld l, e
    add h
    xor e
    dec b
    cp h
    xor e
    xor e
    cp d
    ld l, d
    add h
    ld l, e
    ld [bc], a
    ld a, b
    rst $30
    adc c
    ld [hl], a
    inc bc
    rst $20
    ld a, c
    ld a, d
    add h
    ld l, e
    inc bc
    ld l, b
    rst $08
    ld l, l
    add a
    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld h, [hl]
    add d
    jr z, jr_027_6ABB

    ld l, d
    ld l, e
    ld l, e

jr_027_6ABB:
    add d
    xor e
    ld bc, $83BC
    xor e
    inc bc
    cp h
    cp d
    ld l, d
    add l
    ld l, e
    ld bc, $8978
    ld a, c
    ld bc, $857A
    ld l, e
    ld [bc], a
    ld e, b
    or [hl]
    adc c
    ld [hl], a

jr_027_6AD4:
    inc b
    ld h, a
    dec e
    rra
    ld d, [hl]
    add d
    jr z, jr_027_6AE2

    ld l, d
    ld l, e
    ld l, e
    cp d
    rst $38
    cp h

jr_027_6AE2:
    add d
    xor e
    add d
    cp h
    ld [bc], a
    xor e
    ld l, d
    sub h
    ld l, e
    ld [bc], a
    ld e, b
    or [hl]
    adc d
    ld [hl], a
    rlca
    ld d, a
    dec e

jr_027_6AF3:
    rra
    ld h, [hl]
    ld e, l
    jr z, jr_027_6B62

    add d
    ld l, e
    ld [bc], a
    res 7, d
    add e
    xor e
    ld b, $BC
    xor e
    xor e
    ld a, b
    ld a, c
    ld e, d
    sub b
    ld l, e
    inc bc
    ld e, b
    ld e, c
    or [hl]
    adc e
    ld [hl], a
    rlca
    ld h, a
    dec e
    rra
    ld d, [hl]
    ld l, l
    jr z, jr_027_6B80

    add d
    ld l, e

jr_027_6B18:
    add e
    cp d
    add e
    cp h
    add h
    xor e
    ld bc, $8C6A
    ld l, e
    ld bc, $8358
    ld e, c
    ld bc, $86B6
    ld [hl], a
    ld bc, $865D
    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld h, [hl]
    add d

jr_027_6B34:
    jr z, jr_027_6B39

    ld l, d
    ld l, e
    ld l, e

jr_027_6B39:
    add d
    xor e
    add d
    cp d
    add d
    xor e
    ld bc, $83BA
    xor e
    ld bc, $8CB7
    ld e, c

jr_027_6B47:
    ld [bc], a
    or [hl]
    dec d
    add d
    jr z, jr_027_6AD4

    ld [hl], a
    inc bc
    ld l, l
    ld a, [hl]
    ld a, a
    add h
    ld [hl], a
    inc b
    ld d, a

jr_027_6B56:
    dec e
    rra
    ld d, [hl]
    add d
    jr z, @+$06

    ld l, d
    ld l, e
    ld l, e
    res 0, h
    cp d

jr_027_6B62:
    add e
    xor e
    inc bc
    cp d
    xor e
    and $90
    jr z, jr_027_6AF3

    ld [hl], a
    ld [bc], a
    adc [hl]
    adc a
    add h

jr_027_6B70:
    ld [hl], a
    rrca
    ld h, a
    dec e
    rra
    ld h, [hl]
    jr z, jr_027_6B47

    or a
    ld e, d
    ld l, e
    jp z, $FFCB

    xor e
    cp d

jr_027_6B80:
    cp h
    add d
    xor e
    inc bc
    cp d
    cp h

Call_027_6B86:
    or $90
    jr z, jr_027_6B18

    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld d, [hl]
    add d
    jr z, jr_027_6B95

    inc d
    ld l, d

jr_027_6B95:
    add d
    ld l, e
    ld b, $78
    ld e, d
    jp z, $BCCB

    cp d
    add d
    xor e
    ld [bc], a
    cp h
    and $90
    jr z, jr_027_6B34

    ld [hl], a
    inc b
    ld h, a
    dec e
    rra
    ld h, [hl]
    add e
    jr z, jr_027_6BB0

    ld l, d

jr_027_6BB0:
    add e
    ld l, e
    inc bc
    ld a, b
    ld e, d
    rst $38
    add h
    rlc d
    xor e
    or $90
    jr z, @-$70

    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld d, [hl]
    add e
    ld a, [$6A01]
    add h
    ld l, e
    ld bc, $8678
    ld a, c
    ld [bc], a
    rst $30
    dec b
    adc a
    jr z, jr_027_6B56

    ld [hl], a
    ld bc, $8B5D
    ld [hl], a
    inc b
    ld h, a
    dec e
    rra
    ld h, [hl]
    add e
    ld a, [$6A01]
    adc e
    ld l, e
    ld bc, $8578

jr_027_6BE7:
    ld a, c
    ld [bc], a
    rst $30
    dec b
    adc c
    jr z, jr_027_6B70

    ld [hl], a
    inc bc
    ld l, l
    ld a, [hl]
    ld a, a
    adc c
    ld [hl], a
    inc b
    ld d, a
    dec e
    rra
    ld d, [hl]
    add e
    ld a, [$B703]
    ld e, c
    ld e, d
    adc a
    ld l, e
    ld bc, $8C78
    ld a, c
    inc bc
    rst $30
    adc [hl]
    adc a
    adc c
    ld [hl], a
    inc b
    ld h, a
    dec e
    reti


    rrca
    add h
    jr z, jr_027_6C18

    inc d
    or a
    ld e, c
    ld e, d

jr_027_6C18:
    sbc d
    ld l, e

jr_027_6C1A:
    inc bc
    ld a, b
    rst $30
    rst $18
    adc c
    ld [hl], a
    dec b
    ld d, a
    dec e
    ld e, $D9
    rrca
    add l
    jr z, jr_027_6C2C

    inc d
    or a
    ld e, d

jr_027_6C2C:
    sbc d
    ld l, e
    ld bc, $8578
    ld a, c
    ld [bc], a
    rst $30
    dec b
    add e
    jr z, jr_027_6C3A

jr_027_6C38:
    ld h, a
    dec e

jr_027_6C3A:
    add d
    ld e, $02
    reti


    rrca
    add l
    jr z, jr_027_6C44

    inc d
    or a

jr_027_6C44:
    sub l
    ld e, c
    ld bc, $8A5A
    ld l, e
    rlca
    ld a, b
    ld a, c
    ld a, c
    rst $30
    jr z, jr_027_6CA8

    dec e
    add e
    ld e, $02
    reti


    rrca
    adc l
    jr z, jr_027_6BE7

    ld [hl], a

jr_027_6C5B:
    inc b
    ld e, l
    or a
    ld e, c
    ld e, d
    adc e
    ld l, e
    inc b
    ld l, b
    rst $38
    ld h, a
    dec e
    add h
    ld e, $03
    reti


    rrca

jr_027_6C6C:
    adc l
    adc e
    jr z, @-$71

    ld [hl], a
    inc b
    ld l, l
    ld e, [hl]
    ld e, a
    or a
    add l

jr_027_6C77:
    ld e, c
    ld bc, $855A
    ld l, e
    inc b
    ld a, b
    ld a, c
    rst $30
    dec e
    add d
    ld e, $0B
    dec bc
    inc c
    ld l, $2F
    ld d, [hl]
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    add l
    jr z, jr_027_6C1A

    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    add h
    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    add [hl]
    ld [hl], a
    inc bc
    or a
    ld e, c
    ld e, d
    add l
    ld l, e
    add hl, bc
    ld l, b
    dec e
    ld e, $2F

jr_027_6CA8:
    dec de
    inc e

jr_027_6CAA:
    ld a, $3F
    ld h, [hl]
    adc e
    jr z, jr_027_6C38

    ld [hl], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    adc [hl]
    ld [hl], a
    ld [bc], a
    or a
    ld e, d
    add h
    ld l, e
    ld [$1D68], sp
    rra
    ccf
    dec hl
    inc l
    ld c, [hl]
    dec d
    adc h
    jr z, jr_027_6C5B

    ld [hl], a
    ld bc, $845C
    ld [hl], a
    ld [bc], a
    or a
    ld e, d
    add e
    ld l, e
    inc b
    ld l, b
    dec e
    rra
    ld c, a
    add d
    and $01
    or $8D
    jr z, jr_027_6C77

    ld [hl], a
    ld bc, $836A
    ld l, e
    inc b
    ld l, b
    dec e
    rra
    ld d, [hl]
    sub b
    jr z, jr_027_6C6C

    ld [hl], a
    ld [bc], a
    ld e, [hl]
    ld e, a
    sub l
    ld [hl], a
    inc bc
    jr z, jr_027_6CAA

    ld e, d
    add d
    ld l, e
    inc b
    ld l, b
    dec e
    rra
    ld h, [hl]
    adc b
    jr z, jr_027_6D00

    inc b
    rst $20

jr_027_6D00:
    add a
    ld a, c
    inc bc
    rst $30
    ld l, [hl]
    ld l, a
    sub l
    ld [hl], a
    add d
    jr z, jr_027_6D12

    ld l, d
    ld l, e
    ld l, e
    ld l, b
    dec e
    rra
    ld d, [hl]

jr_027_6D12:
    adc b
    jr z, jr_027_6D17

    rst $20
    ld a, d

jr_027_6D17:
    add a
    ld l, e
    inc bc
    ld a, b
    ld a, c
    rst $30
    add h
    ld [hl], a
    ld bc, $905D
    ld [hl], a
    add d
    jr z, jr_027_6D2D

    ld l, d
    ld l, e
    ld l, e
    ld l, b

jr_027_6D2A:
    dec e
    rra
    ld h, [hl]

jr_027_6D2D:
    add a
    jr z, jr_027_6D32

    inc b
    ld l, d

jr_027_6D32:
    adc d
    ld l, e
    inc bc
    ld a, b
    ld a, c
    rst $30
    add d
    ld [hl], a
    inc bc
    ld l, l
    ld e, [hl]
    ld e, a
    adc [hl]
    ld [hl], a
    inc bc
    jr z, jr_027_6D2A

    ld a, d
    add d
    ld l, e
    inc b
    ld l, b
    dec e
    rra
    ld d, [hl]
    add [hl]
    jr z, jr_027_6D51

    inc b
    rst $20
    ld a, d

jr_027_6D51:
    adc h
    ld l, e
    ld b, $78
    ld a, c
    ld a, c
    rst $30
    ld l, [hl]
    ld l, a
    adc [hl]
    ld [hl], a
    ld [bc], a
    rst $20
    ld a, d
    add e
    ld l, e
    inc b
    ld l, b
    dec e
    rra
    ld h, [hl]
    add h
    jr z, jr_027_6D6D

    inc b
    rst $20
    ld a, c
    ld a, d

jr_027_6D6D:
    sub b
    ld l, e
    ld bc, $9078
    ld a, c
    ld bc, $837A
    ld l, e
    dec b
    rla
    add hl, bc
    dec e
    rra
    ld h, [hl]
    add e
    jr z, jr_027_6D83

    inc b
    rst $20
    ld a, d

jr_027_6D83:
    add a
    ld l, e
    inc bc
    rla
    jr jr_027_6DA2

    sbc l
    ld l, e
    dec b
    daa
    dec c
    ret c

    reti


    rrca
    add d
    jr z, jr_027_6D9A

    inc b
    rst $20
    ld a, d
    xor d
    xor e
    xor h

jr_027_6D9A:
    add e
    ld l, e
    dec b
    rla
    jr jr_027_6DAD

    ld c, $0F

jr_027_6DA2:
    add d
    jr jr_027_6DA6

    add hl, de

jr_027_6DA6:
    sbc c
    ld l, e
    inc bc
    rla
    add hl, bc
    dec e
    add e

jr_027_6DAD:
    ld e, $15
    rrca
    inc b
    rst $20
    ld a, d
    xor d
    cp h
    cp d
    cp h
    xor e
    xor h
    ld l, e
    ld h, [hl]
    dec c
    ret c

    ld e, $D9
    ld c, $0F
    ld a, [bc]
    jr jr_027_6DDD

    sub l
    ld l, e
    dec b
    rla
    jr jr_027_6DD3

    dec c
    ret c

    add e
    ld e, $0D
    reti


    rrca
    ld a, d
    xor d

jr_027_6DD3:
    cp d
    xor e
    cp h
    cp d
    res 5, e
    ld e, b
    dec c
    ret c

    add h

jr_027_6DDD:
    ld e, $04
    reti


    ld c, $0F
    ld a, [bc]
    sub l
    ld e, c
    inc b
    add hl, bc
    dec c
    ld c, $D8
    add d
    ld e, $00
    jr z, jr_027_6E57

    ld bc, $1E1D
    ld b, b
    ld b, $83
    nop
    inc h
    ld [$090A], sp
    inc c
    ld a, [bc]
    add hl, bc
    dec c
    ld c, $0A
    dec bc
    ld a, [bc]
    sbc c
    ld a, [bc]
    inc c
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc c
    dec c
    add hl, bc
    inc c
    add hl, bc
    ld a, [bc]
    ld c, $0C
    dec c
    add hl, bc
    ld c, $0F

jr_027_6E1B:
    add e
    nop
    ld b, b
    ld d, d
    ld [$1A18], sp
    add hl, de
    inc e
    ld a, [de]
    add hl, de
    dec e
    ld e, $1A
    dec de
    ld a, [de]
    xor c
    ld a, [de]
    inc e
    ld a, [de]
    dec de
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    dec de
    add hl, de
    ld a, [de]
    add hl, de
    inc e
    dec e
    add hl, de
    inc e
    add hl, de
    ld a, [de]
    ld e, $1C
    dec e
    add hl, de
    ld e, $1F
    ld e, l
    nop
    ld [$5F18], sp
    ld a, [hl+]
    add hl, hl
    inc l
    ld b, h
    add hl, hl
    dec l
    ld l, $2A
    ld b, h
    or l
    cp c
    or [hl]
    inc l
    ld a, [hl+]

jr_027_6E57:
    dec hl
    ld b, h
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld b, h
    add hl, hl
    ld a, [hl+]
    add hl, hl
    inc l
    dec l
    add hl, hl
    inc l
    add hl, hl
    ld a, [hl+]
    ld l, $44
    dec l
    add hl, hl
    ld l, $2F
    ld l, l
    ld l, h
    jr jr_027_6ECF

    jr c, @-$7C

    ld c, d
    rlca
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    add l
    ld c, d
    add d
    ld b, h
    ld [bc], a
    ld c, d
    ld b, h
    add e
    ld c, d
    add d
    ld b, h
    db $10
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld a, a
    ld l, l
    ld a, h
    ld e, a
    jr c, jr_027_6E1B

    ld c, d
    ld bc, $8344
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    ld [$4A44], sp
    ld c, d
    add hl, sp
    ld a, $3A
    ld h, c
    ld b, h
    add d
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    add d
    ld b, h
    cpl
    ld l, a
    ld l, l
    ld l, h
    ld a, [hl]
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp

jr_027_6ECF:
    rst $30
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld sp, hl
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    ld l, a
    ld a, l
    ld a, h
    ld l, [hl]
    ld c, d
    ld b, h
    ld b, c
    add e
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    ld bc, $8644
    ld c, d
    ld bc, $8444
    ld c, d
    ld e, $44
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, l
    ld c, h
    add hl, sp
    ld a, $3A
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    add d
    add hl, sp
    add hl, bc
    ld a, $3A
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    add d
    ld c, d
    ld bc, $8444
    ld c, d
    ld b, $44
    ld c, d
    ld l, a
    ld e, l
    ld l, h
    ld l, [hl]
    add e
    ld c, d
    ld [bc], a
    ld b, h
    rst $30
    add l
    ld c, d
    ld bc, $8344
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add a
    ld c, d
    inc b
    ld b, h
    rst $30
    ld b, h
    ld c, d
    add d
    ld b, h
    db $10
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld l, a
    ld l, l
    ld a, h
    ld l, [hl]
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    add d
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    add hl, bc
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    add d
    ld b, h
    inc b
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    ld [bc], a
    ld b, h
    rst $30
    add e
    ld c, d
    ld a, [bc]
    ld l, a
    ld a, l
    ld l, h
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld sp, hl
    ld b, h
    add d
    ld c, d
    db $10
    add hl, sp
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, c
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    ld bc, $8344
    ld c, d
    add d
    add hl, sp
    ld a, [bc]
    ld a, $3A
    dec sp
    inc a
    ld l, a
    ld c, l
    ld a, h
    ld l, [hl]
    ld c, d
    ld b, h
    add e
    ld c, d
    ld b, $44
    ld c, d
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    ld b, $44
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add d
    ld b, h
    add hl, bc
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    add l
    ld c, d
    rrca
    ld l, a
    ld c, l
    ld c, h
    ld l, [hl]
    add hl, sp
    ld a, $3A
    dec sp
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    add e
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    adc e
    ld c, d
    inc c
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld l, a
    ld e, l
    ld l, h
    ld l, [hl]
    ld c, d
    ld b, h
    add l
    ld c, d
    inc c
    rst $30
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    add d
    ld a, [hl-]
    ld [bc], a
    dec sp
    inc a
    add d
    add hl, sp
    add hl, bc
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld b, d
    add d
    ld b, h
    rlca
    ld l, a
    ld l, l
    ld a, h
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add d
    ld b, h
    inc c
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    adc e
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    dec bc
    ld l, a
    ld a, l
    ld l, h
    ld l, [hl]
    ld c, d
    ld b, h
    ld c, d
    ld h, c
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    add hl, bc
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add d
    add hl, sp
    ld [hl+], a
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, l
    ld a, h
    ld l, [hl]
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    adc e
    ld c, d
    ld bc, $8344
    ld c, d
    ld [$4A44], sp
    ld c, d
    ld b, h
    ld l, a
    ld e, l
    ld c, h
    ld l, [hl]
    add [hl]
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    ld bc, $8344
    ld c, d
    ld a, [bc]
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add d
    add hl, sp
    add hl, bc
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld l, a
    ld l, l
    ld l, h
    add d
    ld b, h
    ld [de], a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add d
    ld c, d
    inc bc
    ld b, h
    rst $30
    ld b, h
    add e
    ld c, d
    ld bc, $8344
    ld c, d
    ld bc, $8344
    ld c, d
    ld b, $44
    ld l, a
    ld a, l
    ld a, h
    ld sp, hl
    ld b, h
    add e
    ld c, d
    ld bc, $8F44
    ld c, d
    add d
    ld b, h
    add e
    ld c, d
    ld bc, $8344
    ld c, d
    ld bc, $8444
    ld c, d
    add d
    ld b, h
    rla
    ld l, a
    ld c, l
    ld l, h
    ld l, [hl]
    add hl, sp
    ld a, $3A
    ld c, d
    add hl, sp
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    inc d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add hl, sp
    ld a, $39
    ld a, $3A
    dec sp
    inc a
    rst $30
    ld l, a
    ld c, l
    ld a, h
    ld l, [hl]
    ld b, h
    add e
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    ld bc, $8744
    ld c, d
    add d
    ld b, h
    ld [bc], a
    ld c, d
    ld b, h
    adc h
    ld c, d
    add hl, de
    ld b, h
    ld c, d
    ld l, a
    ld e, l
    ld c, h
    ld l, [hl]
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    ld c, d
    add hl, sp
    ld a, $39
    ld a, $3A
    dec sp
    inc a
    add d
    ld c, d
    inc d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld h, d
    ld b, h
    ld c, d
    ld l, a
    ld l, l
    ld l, h
    ld l, [hl]
    ld b, h
    add l
    ld c, d
    ld bc, $8344
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add l
    ld c, d
    ld [bc], a
    ld b, h
    ld c, d
    add d
    ld b, h
    adc d
    ld c, d
    inc c
    add hl, sp
    ld a, $3A
    ld c, d
    ld l, a
    ld a, l
    ld a, h
    ld l, [hl]
    add hl, sp
    ld a, $3A
    dec sp
    add d
    ld c, d
    inc bc
    ld b, h
    rst $30
    ld b, h
    add e
    ld c, d
    rlca
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    ld a, [bc]
    ld b, h
    ld c, d
    ld c, d
    add hl, sp
    ld a, $39
    ld a, $3A
    dec sp
    inc a
    add l
    ld c, d
    ld d, $6F
    ld a, l
    ld l, h
    ld l, [hl]
    ld b, h
    ld c, d
    ld h, b
    add hl, sp
    ld a, $3A
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add d
    ld b, h
    inc bc
    ld c, d
    ld b, h
    ld c, d
    add d
    ld b, h
    add l
    ld c, d
    dec b
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    add d
    ld b, h
    dec b
    ld c, l
    ld a, h
    ld l, [hl]
    ld b, h
    ld c, d
    add d
    ld b, h
    adc b
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add h
    ld c, d
    ld [$4A44], sp
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    add a
    ld c, d
    dec b
    ld l, a
    ld e, l
    ld c, h
    ld l, [hl]
    ld b, h
    add h
    ld c, d
    dec b
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add d
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add d
    add hl, sp
    ld [$3A3E], sp
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    inc b
    add hl, sp
    ld a, $3A
    dec sp
    add d
    ld c, d
    dec bc
    ld b, h
    ld l, a
    ld l, l
    ld a, h
    ld l, [hl]
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    add e
    ld c, d
    ld [$3E39], sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    add d
    ld b, h
    dec b
    ld l, a
    ld a, l
    ld c, h
    ld l, [hl]
    ld b, h
    add e
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    inc b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add d
    add hl, sp
    inc d
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld l, a
    ld c, l
    ld c, h
    ld l, [hl]
    add d
    ld c, d
    ld de, $4A44
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    ld bc, $8344
    ld c, d
    inc b
    ld b, e
    ld b, h
    ld c, d
    ld b, h
    add e
    ld c, d
    ld c, $4B
    ld a, l
    ld c, h
    ld c, b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, c
    ld b, h
    add e
    ld c, d
    inc d
    ld b, h
    ld c, d
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    ld c, d
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    add d
    ld c, d
    ld a, [bc]
    ld e, d
    ld e, e
    nop
    ld l, b
    ld e, b
    ld c, b
    rst $30
    ld b, h
    ld c, d
    ld b, h
    add h
    ld c, d
    dec b
    ld b, h
    ld c, d
    ld b, h
    ld c, d
    ld b, h
    add d
    ld c, d
    inc bc
    ld b, h
    ld c, d
    ld b, h
    add h
    ld c, d
    dec b
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add [hl]
    ld c, d
    inc b
    ld c, e
    ld l, d
    ld l, e
    nop
    add d
    ld l, b
    inc b
    ld e, b
    ld c, b
    ld b, h
    ld c, d
    add d
    add hl, sp
    ld b, $3E
    ld a, [hl-]
    dec sp
    inc a
    ld c, d
    ld b, h
    add h
    ld c, d
    ld [$4A44], sp
    add hl, sp
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    add l
    ld c, d
    add d
    ld b, h
    add d
    ld c, d
    ld [bc], a
    ld e, d
    ld e, e
    add [hl]
    nop
    ld [bc], a
    ld e, b
    ld e, c
    adc b
    ld c, d
    ld b, $39
    ld a, $3A
    dec sp
    ld c, d
    ld b, h
    add [hl]
    ld c, d
    rlca
    ld b, h
    ld sp, hl
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    add d
    ld c, d
    inc bc
    ld c, e
    ld l, d
    ld l, e
    add a
    nop
    ld a, [bc]
    ld l, c
    dec sp
    ld a, $3B
    add hl, sp
    dec a
    dec sp
    ld a, $48
    ld b, a
    add h
    ld c, d
    ld bc, $8544
    ld c, d
    ld [$4B47], sp
    add hl, sp
    ld a, $3A
    dec sp
    inc a
    dec a
    add d
    ld a, $01
    ld e, e
    add h
    ld l, e
    adc l
    nop
    inc bc
    ld e, b
    ld c, b
    ld c, c
    adc c
    ld c, d
    ld [bc], a
    ld e, d
    ld e, e
    adc e
    ld l, e
    add h
    nop
    ld bc, $8A68
    nop
    inc b
    ld l, b
    ld e, b
    ld c, b
    ld c, c
    add a
    ld c, d
    ld [bc], a
    ld c, e
    ld l, d
    adc h
    ld l, e
    sub c
    nop
    ld [bc], a
    ld e, b
    ld e, c
    add [hl]
    ld c, d
    ld [bc], a
    ld e, d
    ld e, e
    add d
    nop
    adc d
    ld l, e
    sub e
    nop
    ld [$3969], sp
    dec sp
    add hl, sp
    dec a
    dec sp
    ld a, $6A
    adc h
    ld l, e
    adc h
    nop
    nop
    ld b, b
    nop
    db $10
    ret nz

    ld b, c
    ret nz

    add d
    nop
    ld [bc], a
    ret nz

    and b
    adc e
    and d
    ld [bc], a
    ret nz

    and b
    xor l
    and d
    add d
    ret nz

    add d
    nop
    ld [bc], a
    ret nz

    and b
    adc c
    and d
    add d
    and h
    ld [bc], a
    ret nz

    and b
    xor e
    and d
    add d
    and h
    add d
    ret nz

    add d
    ld bc, $C001
    add d
    and b
    add a
    and d
    add e
    and h
    ld bc, $82C0
    and b
    xor c
    and d
    add e
    and h
    add d
    ret nz

    add d
    and h
    ld bc, $83C0
    and b
    add l
    and d
    add h
    and h
    ld bc, $83C0
    and b
    and a
    and d
    add h
    and h
    add d
    ret nz

    add d
    and h
    ld bc, $83C0
    and b
    add l
    ret nz

    add h
    and h
    ld bc, $84C0
    and b
    and h
    and d
    add [hl]
    and h
    add d
    ret nz

    ld bc, $89A4
    and d
    add e
    ret nz

    add d
    and h
    ld bc, $84C0
    and b
    and h
    ret nz

    add [hl]
    and h
    add d
    ret nz

    ld bc, $86A4
    and d
    add e
    and h
    ld bc, $84C0
    and h
    ld bc, $84C0
    and b
    ld [bc], a
    ret nz

    and b
    sub e
    and d
    ld bc, $8CC0
    and [hl]
    ld [bc], a
    and b
    ret nz

    add [hl]
    and h
    add d
    ret nz

    ld bc, $86A4
    and d
    add e
    and h
    ld bc, $84C0
    and h
    ld bc, $84C0
    and b
    ld bc, $82C0
    and b
    sub b
    and d
    add d
    and h
    ld [bc], a
    ret nz

    and h
    adc d
    and [hl]
    add d
    and b
    ld bc, $86C0
    and h
    adc b
    ret nz

    add h
    and h
    ld bc, $84C0
    and h
    ld bc, $84C0
    and b
    ld bc, $83C0
    and b
    adc h
    and d
    add l
    and h
    ld bc, $82C0
    and h
    add a
    and [hl]
    add h
    and b
    add d
    ret nz

    add l
    and h
    add d
    ret nz

    add [hl]
    and [hl]
    add h
    and h
    ld bc, $84C0
    and h
    ld bc, $84C0
    and b
    ld bc, $84C0
    and b
    adc d
    and d
    add [hl]
    and h
    ld bc, $87C0
    and h
    ld bc, $86C0
    and b
    ld bc, $85C0
    and h
    add d
    ret nz

    adc b
    and [hl]
    add d
    and h
    ld bc, $84C0
    and h
    ld bc, $84C0
    and b
    ld bc, $85C0
    and b
    ld bc, $87A2
    ret nz

    add a
    and h
    ld bc, $87C0
    and h
    ld bc, $86C0
    and b
    ld bc, $85C0
    and h
    add d
    ret nz

    adc b
    and [hl]
    add d
    and h
    ld bc, $83C0
    and h
    add e
    and d
    add e
    and b
    ld bc, $86C0
    and b
    ld bc, $8DC0
    and h
    ld bc, $87C0
    and h
    ld bc, $85C0
    and b
    add d
    and [hl]
    add l
    and h
    add d
    ret nz

    ld bc, $87A4
    and [hl]
    add d
    and h
    ld bc, $82C0
    and h
    add l
    and d
    add d
    and b
    ld bc, $86C0
    and b
    ld bc, $8DC0
    and h
    ld bc, $87C0
    and h
    ld bc, $82C0
    and b
    add [hl]
    and [hl]
    add h
    and h
    add d
    ret nz

    add d
    and h
    add [hl]
    and [hl]
    add d
    and h
    ld [bc], a
    ret nz

    and h
    adc b
    and d
    ld bc, $86C0
    and b
    ld bc, $8DC0
    and h
    ld bc, $87C0
    and h
    ld [bc], a
    ret nz

    and b
    adc c
    and [hl]
    add d
    and h
    add d
    ret nz

    add e
    and h
    ld bc, $91A6
    ret nz

    add [hl]
    and b
    ld bc, $8DC0
    and h
    ld bc, $87C0
    and h
    ld bc, $8BC0
    and [hl]
    ld bc, $82A4
    ret nz

    add h
    and h
    sub c
    and d
    add [hl]
    and b
    ld bc, $8DC0
    and h
    ld bc, $87C0
    and h
    adc a
    ret nz

    add e
    and h
    sub h
    and d
    add h
    and b
    ld bc, $8DC0
    and h
    ld bc, $83C0
    and h
    sub c
    and d
    add d
    ret nz

    add d
    and h
    sub a
    and d
    add d
    and b
    ld bc, $8DC0
    and h
    ld bc, $94C0
    and d
    add d
    ret nz

    ld bc, $89A4
    and d
    add d
    and h
    adc a
    and d
    ld bc, $8DC0
    and h
    ld bc, $83C0
    and b
    sub c
    and d
    adc e
    ret nz

    add h
    and h
    adc a
    ret nz

    adc l
    and h
    ld bc, $85C0
    and b
    adc a
    and d
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld [bc], a
    ret nz

    and b
    adc [hl]
    and d
    adc h
    and h
    ld bc, $86C0
    and b
    ld bc, $8DC0
    and h
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld [bc], a
    ret nz

    and b
    adc a
    and d
    adc c
    and h
    add e
    ret nz

    add [hl]
    and b
    ld bc, $8DC0
    and h
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld bc, $82C0
    and b
    adc [hl]
    and d
    adc c
    and h
    ld bc, $88C0
    and b
    ld bc, $8DC0
    and h
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld bc, $85C0
    and b
    adc e
    and d
    adc c
    and h
    ld bc, $88C0
    and b
    ld bc, $8DC0
    and h
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld bc, $86C0
    and b
    adc b
    ret nz

    add d
    and [hl]
    adc c
    and h
    ld bc, $88C0
    and b
    ld bc, $86C0
    ld bc, $A487
    add d
    ret nz

    adc c
    and [hl]
    add h
    and h
    ld bc, $86C0
    and b
    ld bc, $89C0
    and [hl]
    adc c
    and h
    ld bc, $88C0
    and b
    ld bc, $85C0
    nop
    ld bc, $8701
    and h
    add d
    ret nz

    ld bc, $89A4
    and [hl]
    add e
    and h
    ld bc, $86C0
    and b
    ld [bc], a
    ret nz

    and h
    adc b
    and [hl]
    adc c
    and h
    ld bc, $88C0
    and b
    ld bc, $85C0
    nop
    ld bc, $8701
    and h
    add d
    ret nz

    add d
    and h
    adc c
    and [hl]
    add d
    and h
    ld bc, $86C0
    and b
    ld bc, $83C0
    and h
    add [hl]
    and [hl]
    adc c
    and h
    ld bc, $88C0
    and b
    ld [bc], a
    ret nz

    pop bc
    add h
    nop
    adc d
    ret nz

    add e
    and h
    adc c
    and [hl]
    ld [bc], a
    and h
    ret nz

    add l
    and b
    add d
    ret nz

    add h
    and h
    add l
    and [hl]
    adc b
    and h
    add d
    ret nz

    adc b
    and b
    ld bc, $85C0
    nop
    ld bc, $8601
    and [hl]
    ld bc, $82A0
    ret nz

    add h
    and h
    adc b
    and [hl]
    ld [bc], a
    and h
    ret nz

    add l
    and b
    ld bc, $86C0
    and h
    add h
    and [hl]
    adc b
    and h
    ld bc, $89C0
    and b
    ld bc, $85C0
    nop
    ld bc, $8601
    and [hl]
    ld bc, $82A0
    ret nz

    add h
    and h
    adc d
    ret nz

    add l
    and b
    ld bc, $87C0
    and h
    add l
    ret nz

    add [hl]
    and h
    ld bc, $89C0
    and b
    ld bc, $85C0
    nop
    ld bc, $8601
    and [hl]
    ld bc, $82A0
    ret nz

    add h
    and h
    adc e
    and d
    add h
    and b
    ld bc, $87C0
    and h
    ld bc, $89C0
    and h
    add d
    ret nz

    adc c
    and b
    ld bc, $86C0
    ld bc, $A686
    ld bc, $82A0
    ret nz

    add h
    and h
    adc h
    and d
    add e
    and b
    ld bc, $87C0
    and h
    ld bc, $89C0
    and h
    ld bc, $8AC0
    and b
    ld bc, $85C0
    and b
    add [hl]
    and [hl]
    add d
    and b
    add d
    ret nz

    add h
    and h
    adc l
    and d
    add d
    and b
    ld bc, $87C0
    and h
    ld bc, $89C0
    and h
    ld bc, $8AC0
    and b
    ld bc, $85C0
    and b
    add [hl]
    and [hl]
    add d
    and b
    add d
    ret nz

    add h
    and h
    adc l
    and d
    add d
    and b
    ld bc, $87C0
    and h
    ld bc, $88C0
    and h
    add d
    ret nz

    adc d
    and b
    ld bc, $85C0
    and b
    add l
    and [hl]
    add e
    and b
    add d
    ret nz

    add h
    and h
    adc l
    and d
    add d
    and b
    ld bc, $87C0
    and h
    ld bc, $88C0
    and h
    ld bc, $8BC0
    and b
    ld bc, $85C0
    and b
    add h
    and [hl]
    add h
    and b
    add d
    ret nz

    add h
    and h
    adc l
    and d
    add d
    and b
    ld bc, $87C0
    and h
    ld bc, $88C0
    and h
    ld bc, $8BC0
    and b
    ld bc, $88C0
    and [hl]
    add l
    and b
    add d
    ret nz

    add e
    and h
    adc [hl]
    and d
    add d
    and b
    ld bc, $87C0
    and h
    ld bc, $87C0
    and h
    add d
    ret nz

    adc e
    and b
    ld bc, $87C0
    and [hl]
    add [hl]
    and b
    add d
    ret nz

    add d
    and h
    sub b
    and d
    ld [bc], a
    and b
    ret nz

    add a
    and h
    ld bc, $87C0
    and h
    ld bc, $8CC0
    and b
    ld bc, $87C0
    and [hl]
    add [hl]
    and b
    add d
    ret nz

    ld bc, $92A4
    and d
    ld bc, $86C0
    and h
    add d
    and [hl]
    add a
    and h
    ld bc, $87C0
    and b
    adc l
    ret nz

    add [hl]
    and b
    add d
    ret nz

    ld bc, $92A4
    and d
    ld bc, $85C0
    and h
    add h
    and [hl]
    add [hl]
    and h
    ld bc, $86C0
    and b
    adc h
    and [hl]
    ld [bc], a
    and b
    ret nz

    add [hl]
    and b
    sub [hl]
    ret nz

    adc d
    and [hl]
    add l
    and h
    ld bc, $85C0
    and b
    adc h
    and [hl]
    add d
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    sbc a
    and [hl]
    add h
    and h
    ld bc, $83C0
    and b
    adc l
    and [hl]
    add e
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    ld bc, $9FA4
    and [hl]
    add e
    and h
    ld [bc], a
    ret nz

    and b
    adc [hl]
    and [hl]
    add h
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add d
    and h
    sbc [hl]
    and [hl]
    add e
    and h
    ld bc, $8EC0
    and [hl]
    add l
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add e
    and h
    sbc l
    and [hl]
    add d
    and h
    adc [hl]
    ret nz

    add a
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add h
    and h
    sbc h
    and [hl]
    add d
    and h
    ld bc, $8CC0
    and d
    ld bc, $87C0
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add h
    and h
    sbc h
    and [hl]
    add d
    and h
    ld bc, $8AC0
    and d
    add d
    and h
    ld bc, $87C0
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add l
    and h
    sbc d
    and [hl]
    add h
    ret nz

    adc b
    and d
    add h
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add [hl]
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    ret nz

    adc c
    and d
    add [hl]
    and h
    ld bc, $86C0
    and b
    ld bc, $87C0
    and b
    add d
    ret nz

    add l
    and h
    and e
    and d
    add a
    and h
    ld bc, $86C0
    and b
    ld bc, $87C0
    and b
    add d
    ret nz

    add l
    and h
    and e
    and d
    add a
    and h
    ld bc, $86C0
    and b
    ld bc, $87C0
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    add e
    and h
    adc b
    and [hl]
    add h
    and h
    ld bc, $86C0
    and b
    ld bc, $87C0
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    add e
    and h
    adc c
    and [hl]
    add e
    and h
    ld bc, $86C0
    and b
    ld bc, $87C0
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    add e
    and h
    adc d
    and [hl]
    add d
    and h
    ld bc, $86C0
    and b
    add d
    ret nz

    add [hl]
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    add e
    and h
    adc e
    and [hl]
    ld [bc], a
    and h
    ret nz

    add a
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    add e
    and h
    adc l
    ret nz

    add a
    and b
    ld bc, $86C0
    and b
    add d
    ret nz

    add l
    and h
    sbc e
    and d
    ld bc, $98A4
    and d
    add l
    and b
    add d
    ret nz

    add h
    and h
    or [hl]
    and d
    add h
    and b
    add d
    ret nz

    add e
    and h
    cp b
    and d
    add e
    and b
    add d
    ret nz

    add d
    and h
    cp d
    and d
    add d
    and b
    add d
    ret nz

    ld bc, $BDA4
    and d
    ret nz

    ld b, c
    ret nz

    nop
    jr z, jr_027_793D

    ld bc, $1A1D
    and b
    dec b
    ld bc, $830D
    dec e
    add d
    ld c, [hl]
    ld [bc], a
    ld e, l
    ld c, [hl]
    add d
    ld e, [hl]
    ld b, $5D
    ld e, [hl]
    ld e, [hl]
    ld e, l
    ld c, l
    ld c, l
    ld b, $5D
    ld c, [hl]
    ld e, [hl]
    ld c, l
    ld c, [hl]
    ld e, [hl]
    add l
    ld c, [hl]
    ld bc, $834D
    ld e, [hl]
    ld [bc], a
    ld c, [hl]
    ld e, [hl]
    add e
    ld c, [hl]
    add e
    dec e
    dec b
    rrca
    dec e
    adc e
    sbc [hl]
    sbc a
    adc h
    ld l, [hl]
    ld [$4E5D], sp
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld e, [hl]
    add d
    ld e, a
    add [hl]
    ld l, [hl]
    rlca
    ld e, l
    ld c, [hl]
    ld e, [hl]
    ld l, [hl]
    sbc l
    ld [bc], a
    adc h
    add d
    dec e
    inc bc
    adc a
    rst $38
    xor a
    add e
    ld a, e
    add e
    ld c, d
    add [hl]
    ld a, e
    inc bc
    ld l, l
    ld e, l
    ld e, a
    add e
    ld l, [hl]
    inc b
    ld e, l
    ld c, l
    ld e, a
    ld l, a
    add [hl]
    ld a, e
    rlca
    ld l, l
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    xor l
    rst $38

jr_027_793D:
    adc l
    add d
    dec e
    ld [bc], a
    sbc a
    xor a
    add e
    ld a, e
    dec b
    add hl, hl
    dec a
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    add [hl]
    ld a, e
    ld [bc], a
    ld l, l
    ld l, a
    add e
    ld a, e
    dec c
    ld l, l
    ld e, a
    ld l, a
    ld a, e
    ld e, h
    ld a, e
    ld l, h
    ld c, d
    ld l, h
    ld a, e
    add hl, hl
    ld e, a
    ld l, a
    add d
    ld a, e
    dec b
    ld l, l
    sbc l
    dec e
    ld c, [hl]
    xor a
    add d
    ld a, e
    inc bc
    inc e
    ld a, e
    dec de
    add d
    ld c, [hl]
    ld b, $6F
    ld a, e
    ld a, e
    ld e, h
    ld a, e
    ld e, h
    add d
    ld a, e
    inc de
    ld c, d
    ld e, h
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    ld l, [hl]
    ld a, [hl-]
    ld a, e
    inc e
    ld a, e
    dec de
    ccf
    ld a, [hl+]
    ld a, e
    add hl, hl
    ld l, [hl]
    ld a, [hl-]
    ld e, h
    add d
    ld a, e
    dec bc
    xor l
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    ld a, e
    inc e
    dec de
    dec a
    ld c, [hl]
    ld l, a
    add d
    ld a, e
    ld bc, $845C
    ld a, e
    ld [bc], a
    dec de
    dec a
    add d
    ld a, e
    ld [bc], a
    ld e, h
    inc e
    add d
    ld a, e
    add e
    ld l, d
    inc b
    dec de
    dec a
    ld c, [hl]
    dec hl
    add h
    ld a, e
    dec bc
    ld e, h
    ld a, e
    ld a, e
    dec de
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld a, [hl-]
    ld a, e
    add hl, hl
    dec a
    add d
    ld c, [hl]
    inc b
    ccf
    dec hl
    ld a, e
    ld e, h
    add d
    ld a, e
    dec b
    dec de
    dec a
    ld c, [hl]
    ld e, a
    dec hl
    add h
    ld a, e
    ld [bc], a
    dec de
    dec a
    add l
    ld c, [hl]
    ld [bc], a
    ccf
    ld a, [hl+]
    add d
    ld a, e
    add d
    ld e, h
    add d
    ld a, e
    dec c
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    ld a, e
    dec de
    ld c, [hl]
    ld e, a
    ld l, [hl]
    ld e, l
    ld e, a
    ld a, [hl-]
    add d
    ld a, e
    inc b
    dec de
    dec a
    ld c, [hl]
    ld e, a
    add d
    dec e
    inc b
    cp l
    cp [hl]
    cp [hl]
    cp a
    add e
    dec e
    ld bc, $845D
    ld c, [hl]
    ld b, $2A
    ld a, e
    ld a, e
    ld l, h
    ld a, e
    ld a, e
    ld bc, $831B
    ld c, [hl]
    ld c, $6F
    ld a, e
    add hl, hl
    dec a
    ld c, [hl]
    ld l, a
    ld a, e
    ld l, l
    ld l, a
    ld a, e
    inc e
    dec de
    dec a
    ld e, a
    add e
    dec e
    inc bc
    ld l, [hl]
    call $82CE
    rst $08
    add h
    dec e
    add d
    ld e, l
    add d
    ld c, [hl]
    ld b, $2B
    ld a, e
    inc e
    ld l, h
    ld a, e
    dec de
    add e
    ld c, [hl]
    add hl, bc
    ld e, [hl]
    ld a, [bc]
    ld l, h
    add hl, sp
    ld c, [hl]
    ld e, a
    ld a, [hl-]
    ld a, e
    ld l, h
    add d
    ld a, e
    inc bc
    dec de
    dec a
    ld e, a
    add d
    dec e
    ld [bc], a
    ld l, [hl]
    ld l, a
    add h
    ld a, e
    inc b
    add hl, hl
    dec e
    dec e
    ld l, [hl]
    add e
    dec e
    ld de, $4E5D
    ccf
    dec hl
    ld a, e
    ld l, h
    ld a, e
    ld e, l
    ld c, [hl]
    ld e, l
    ld c, a
    ld c, l
    ld a, [de]
    ld a, e
    dec de
    ld c, [hl]
    ld l, a
    add e
    ld a, e
    ld c, $5C
    dec de
    dec a
    ld e, a
    dec e
    ld l, [hl]
    ld l, a
    ld a, e
    ld a, l
    ld a, a
    ld a, e
    inc e
    ld a, e
    dec c
    add d
    dec e
    inc bc
    ld a, e
    ld l, l
    ld l, [hl]
    add d
    dec e
    add hl, bc
    ld e, l
    ld c, l
    ccf
    ld a, [hl+]
    inc e
    ld a, e
    ld l, l
    ld l, [hl]
    ld e, l
    add d
    ld c, [hl]
    ld b, $2A
    add hl, hl
    dec a
    ld e, a
    ld a, [hl-]
    ld l, h
    add d
    ld a, e
    ld [bc], a
    add hl, hl
    dec a
    add e
    dec e
    inc c
    ld l, h
    ld a, e
    ld a, l
    sbc h
    adc a
    ld a, [hl-]
    ld a, e
    add hl, de
    dec e
    db $FD
    dec d
    ld a, a
    add d
    ld a, e
    inc bc
    ld l, l
    dec e
    dec e
    add d
    ld c, [hl]
    ld bc, $842B
    ld a, e
    rlca
    ld l, l
    ld c, a
    ld e, [hl]
    ld a, [hl-]
    add hl, hl
    ld c, [hl]
    ld l, a
    add d
    ld a, e
    inc bc
    ld e, h
    ld a, e
    dec de
    add d
    ld c, [hl]
    ld de, $6F1D
    ld a, e
    dec de
    adc l
    xor b
    sbc e
    ld a, a
    ld a, e
    add hl, de
    dec e
    rst $38
    adc l
    sbc e
    ld a, a
    ld c, c
    dec de
    add d
    dec e
    add d
    ld c, [hl]
    ld [bc], a
    ccf
    dec hl
    add e
    ld a, e
    inc c
    add hl, sp
    ld c, [hl]
    ld c, l
    ld a, [bc]
    add hl, hl
    ld l, [hl]
    ld a, [hl-]
    ld a, e
    ld e, h
    ld a, e
    add hl, hl
    dec a
    add d
    ld c, [hl]
    inc bc
    dec e
    ld a, [hl-]
    dec c
    add d
    dec e
    dec b
    sbc d
    cp b
    adc a
    ld a, [hl-]
    add hl, hl
    adc b
    dec e
    ld [bc], a
    ld c, [hl]
    ld c, l
    add d
    ld c, [hl]
    ld [$2A3F], sp
    ld a, e
    inc e
    add hl, sp
    ld c, a
    ld e, [hl]
    ld a, [de]
    add h
    ld a, e
    inc bc
    ld e, h
    ld a, e
    dec de
    add d
    ld c, [hl]
    dec b
    ld e, [hl]
    dec e
    ld a, [hl-]
    adc l
    or a
    add d
    dec e
    dec b
    sbc d
    sbc e
    ld a, a
    ld c, c
    ld l, l
    add [hl]
    ld l, [hl]
    ld c, $1D
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld l, [hl]
    xor a
    ld a, e
    ld e, h
    ld a, e
    dec de
    ld c, [hl]
    ld e, [hl]
    ld a, [hl+]
    inc e
    add e
    ld a, e
    db $10
    ld e, h
    dec de
    dec a
    ld e, [hl]
    ld c, l
    ld e, a
    dec e
    ld a, [hl-]
    adc l
    rst $38
    adc e
    dec e
    ld [bc], a
    adc h
    sbc e
    ld d, $85
    dec e
    jr jr_027_7B51

    add hl, sp
    dec e
    ld c, [hl]
    ld c, l
    xor a
    ld a, e
    ld l, h
    ld a, e
    ld c, d
    dec de
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld a, [bc]
    ld a, e

jr_027_7B51:
    ld c, d
    inc e
    ld a, e
    add hl, hl
    dec a
    ld c, [hl]
    ld c, l
    ld e, [hl]
    add d
    dec e
    add hl, bc
    dec hl
    sbc l
    sbc [hl]
    sbc a
    dec e
    xor [hl]
    sbc l
    adc h
    sbc e
    add l
    ld a, [hl]
    add hl, bc
    dec e
    add hl, sp
    dec e
    ld e, l
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld c, d
    dec de
    add d
    ld c, [hl]
    dec c
    ld c, a
    ld c, [hl]
    ld c, l
    ld a, [de]
    add hl, hl
    ccf
    dec hl
    ld l, h
    ld a, e
    ld l, l
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    add d
    dec e
    add hl, bc
    rrca
    xor l
    xor [hl]
    xor a
    dec e
    ld a, e
    xor l
    adc l
    adc e
    add l
    sbc [hl]
    ld [bc], a
    sbc a
    add hl, sp
    add d
    dec e
    inc b
    ld c, [hl]
    ld a, [hl-]
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    ld c, $4F
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld a, [hl+]
    add hl, hl
    ld c, [hl]
    ccf
    dec hl
    ld a, e
    add hl, hl
    ld e, l
    ld c, l
    ld e, [hl]
    add e
    dec e
    ld [$4A0F], sp
    dec c
    dec e
    rrca
    ld a, e
    inc bc
    inc b
    add l
    xor [hl]
    ld [bc], a
    xor a
    dec de
    add d
    dec e
    inc b
    ld c, [hl]
    dec hl
    ld a, e
    ld l, l
    add e
    ld l, [hl]
    dec b
    ld e, l
    ld c, [hl]
    ld c, l
    ld a, [hl-]
    add hl, hl
    add d
    ld c, [hl]
    dec b
    ccf
    ld e, h
    ld a, e
    ld l, l
    ld e, l
    add d
    ld c, [hl]
    add a
    dec e
    ld [$AD2B], sp
    xor a
    ld c, d
    dec c
    cp l
    cp [hl]
    cp a
    add h
    dec e
    inc bc
    ld c, [hl]
    ccf
    dec hl
    add d
    ld l, d
    add d
    ld a, e
    ld [$4E6D], sp
    ld e, [hl]
    ld a, [bc]
    add hl, hl
    ld e, l
    ld e, a
    ld l, a
    add e
    ld a, e
    inc bc
    ld l, l
    ld c, [hl]
    ld c, [hl]
    add d
    dec e
    add e
    ld l, [hl]
    add a
    dec e
    inc bc
    call $CFCE
    add e
    dec e
    add l
    ld c, [hl]
    ld a, [bc]
    ccf
    ld a, [hl+]
    ld l, h
    add hl, bc
    ld c, [hl]
    ld c, l
    ld a, [de]
    ld a, e
    ld l, l
    ld l, a
    add h
    ld a, e
    dec b
    add hl, hl
    ld e, [hl]
    ld c, [hl]
    dec e
    ld l, a
    add e
    ld a, e
    inc bc
    ld l, l
    dec e
    dec e
    adc b
    ld l, [hl]
    add d
    dec e
    add e
    ld c, [hl]
    inc bc
    ld e, a
    ld l, [hl]
    xor a
    add d
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld c, [hl]
    ld a, [hl+]
    add l
    ld a, e
    rrca
    ld c, d
    ld a, e
    add hl, sp
    ld c, l
    ld e, a
    dec e
    ld a, [hl-]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    xor h
    ld l, a
    ld a, e
    ld a, l
    add h
    ld a, [hl]
    add hl, bc
    ld a, a
    ld a, e
    ld l, l
    dec e
    ld e, l
    ld c, [hl]
    ld e, a
    xor a
    ld a, e
    add d
    ld c, d
    inc b
    dec de
    ld c, [hl]
    ld c, a
    ld c, [hl]
    add d
    inc e
    ld [$5C7B], sp
    ld a, e
    dec de
    ccf
    ld a, [hl+]
    add hl, hl
    ld e, a
    add d
    dec e
    db $10
    ld a, [hl-]
    inc bc
    db $FD
    adc a
    ld a, [hl-]
    cp h
    ld a, e
    ld a, l
    sbc h
    db $FD
    sbc d
    or a
    sbc d
    adc a
    inc e
    add hl, hl
    add d
    dec e
    dec b
    ld c, l
    xor a
    ld a, e
    add hl, sp
    ld e, l
    add l
    ld c, [hl]
    add e
    ld a, e
    rlca
    ld e, h
    dec de
    dec a
    ld e, a
    ld a, [hl-]
    add hl, hl
    ld c, l
    add d
    dec e
    db $10
    ld a, [hl-]
    xor l
    inc bc
    inc b
    ld a, [hl-]
    cp h
    ld a, e
    sbc l
    sbc [hl]
    adc h
    adc [hl]
    sbc d
    adc e
    sbc a
    ld l, h
    add hl, sp
    add d
    dec e
    inc de
    ld c, [hl]
    dec hl
    inc e
    ld a, e
    ld l, l
    ld l, [hl]
    ld c, [hl]
    ld e, l
    ld c, a
    ld c, [hl]
    ld a, [bc]
    ld a, e
    dec de
    dec a
    ld c, [hl]
    ld e, a
    ld l, a
    ld a, e
    add hl, sp
    add d
    ld e, a
    dec bc
    dec e
    rrca
    ld c, d
    xor l
    xor a
    ld a, e
    call z, $AD7B
    xor [hl]
    sbc l
    add d
    sbc [hl]
    dec b
    sbc a
    xor a
    ld a, e
    dec c
    dec e
    add d
    ld e, l
    ld [bc], a
    ccf
    dec hl
    add d
    ld a, e
    dec bc
    add hl, sp
    ld e, l
    ld c, a
    ld c, [hl]
    ld e, [hl]
    ld a, [de]
    add hl, de
    dec a
    ld c, [hl]
    ld e, a
    ld l, a
    add d
    ld a, e
    inc b
    dec de
    ld c, [hl]
    ld e, l
    ld e, a
    add d
    dec e
    dec b
    rrca
    ld c, d
    dec de
    dec e
    rrca
    add d
    ld c, d
    ld b, $AD
    xor [hl]
    xor [hl]
    xor a
    ld c, d
    dec c
    add l
    dec e
    dec c
    ld c, [hl]
    ccf
    ld a, [hl+]
    ld a, e
    ld l, l
    ld e, l
    ld c, a
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    ld l, l
    ld e, l
    ld l, a
    add d
    ld a, e
    rlca
    dec de
    ld c, [hl]
    ld c, [hl]
    dec e
    rst $38
    dec e
    ld c, [hl]
    adc [hl]
    dec e
    inc bc
    adc e
    sbc [hl]
    sbc a
    add d
    ld c, [hl]
    ld bc, $83AF
    ld a, e
    dec bc
    ld l, l
    ld c, [hl]
    ld c, l
    dec hl
    ld a, e
    add hl, de
    ld l, [hl]
    ld a, e
    ld e, h
    add hl, hl
    ld c, [hl]
    add d
    ld e, [hl]
    add e
    sbc [hl]
    ld [bc], a
    ld e, a
    ld c, [hl]
    add [hl]
    dec e
    inc c
    ld e, [hl]
    ld e, l
    ld c, [hl]
    ccf
    dec e
    ccf
    dec e
    sbc a
    rst $38
    xor a
    ld l, l
    ld l, a
    add d
    ld a, e
    rlca
    inc e
    ld a, e
    add hl, sp
    ld e, l
    ld c, [hl]
    ccf
    ld a, [hl-]
    add h
    ld a, e
    inc bc
    add hl, sp
    ld e, l
    ld e, a
    add l
    ld l, [hl]
    ld [bc], a
    ld e, l
    ld c, [hl]
    add d
    ld e, [hl]
    ld b, $4E
    ld e, [hl]
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld e, [hl]
    add e
    ld c, [hl]
    inc bc
    dec e
    ccf
    ld l, a
    add h
    ld a, e
    dec b
    ld e, h
    ld a, e
    ld a, e
    dec de
    dec e
    add d
    ld c, [hl]
    add hl, bc
    ld a, [hl-]
    ld a, e
    ld a, e
    ld e, h
    ld l, h
    ld a, e
    ld l, l
    ld l, a
    ld a, e
    add d
    ld c, c
    add d
    ld a, e
    ld bc, $886D
    ld l, [hl]
    inc bc
    ld e, l
    ld c, [hl]
    ld e, l
    add d
    ld c, [hl]
    add hl, bc
    ld e, a
    ld a, [hl+]
    ld a, e
    inc e
    ld a, e
    ld l, h
    inc e
    ld a, e
    dec de
    add d
    dec e
    add d
    ld c, [hl]
    ld bc, $872B
    ld a, e
    dec b
    dec de
    dec a
    ccf
    dec hl
    inc e
    add h
    ld a, e
    ld bc, $844A
    ld a, e
    ld b, $6D
    ld l, [hl]
    ld l, [hl]
    ld e, l
    ld e, a
    ld l, a
    add e
    ld a, e
    ld [$7B5C], sp
    ld a, e
    ld a, l
    ld a, [hl]
    ld d, $1D
    ccf
    add d
    ld c, [hl]
    ld [$7B2B], sp
    ld a, e
    ld e, h
    ld l, h
    ld e, h
    add hl, sp
    ld e, l
    add d
    ld c, [hl]
    ld a, [bc]
    ld e, a
    ld a, [hl-]
    ld a, e
    ld e, h
    ld l, h
    add hl, sp
    ccf
    dec hl
    ld a, e
    inc e
    add e
    ld a, e
    inc bc
    ld e, h
    ld l, l
    ld l, a
    add d
    ld a, e
    ld bc, $835C
    ld a, e
    ld b, $39
    adc l
    sbc d
    adc a
    dec e
    ccf
    add d
    ld c, [hl]
    inc b
    ccf
    dec hl
    ld c, c
    ld c, d
    add e
    ld a, e
    ld b, $6D
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld a, e
    ld a, e
    ld b, $6C
    inc e
    add hl, sp
    ld c, [hl]
    ccf
    dec hl
    add d
    ld c, d
    add e
    ld a, e
    inc b
    ld l, h
    ld a, e
    ld a, e
    ld e, h
    add h
    ld a, e
    add hl, bc
    add hl, sp
    sbc l
    sbc [hl]
    sbc a
    dec e
    ld c, [hl]
    ccf
    ld c, [hl]
    ccf
    add d
    ld c, [hl]
    inc bc
    ccf

jr_027_7E09:
    dec hl
    ld c, c
    add a
    ld c, d
    inc bc
    ld c, c
    ld c, d
    dec de
    add d
    ld c, [hl]
    inc b
    ld e, [hl]
    ld c, [hl]
    ccf
    dec hl
    adc c
    ld c, c
    ld [bc], a
    ld a, e
    dec c
    add h
    dec e
    adc d
    ld c, [hl]
    ld [bc], a
    ld c, l
    ccf
    add d
    ld c, l
    add e
    ld c, [hl]
    ld b, $4D
    ccf
    ld c, l
    ld c, [hl]
    ccf
    ld e, [hl]
    add e
    ld c, [hl]
    ld [$4D5E], sp
    ld c, [hl]
    ccf
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    add l
    dec e
    ld bc, $002F
    ld [hl-], a
    jp nz, $2701

    jr z, jr_027_7E09

    add hl, bc
    ret nz

    db $D3
    xor $0F
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    and e
    xor $0F
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    and e
    xor $0F
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    and e
    xor $0F
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    and e
    xor $0F
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    add e
    ld a, [hl+]
    and b
    xor $12
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    cp l
    cp [hl]
    cp a
    ld a, e
    ld a, [hl+]
    adc c
    add e
    ld a, [hl+]
    sub a
    xor $19
    ld a, [hl+]
    ld [$5F7D], sp
    ld a, [de]
    dec de
    call $CFCE
    call $CFCE
    call $CFCE
    call $CFCE
    call $CFCE
    ld a, [hl+]
    ld a, d
    ld a, [hl+]
    ld a, d
    add d
    ld a, [hl+]
    sub a
    xor $15
    adc e
    ld a, l
    dec c
    ld l, a
    ld c, $0F
    db $DD
    sbc $DF
    db $DD
    sbc $DF
    db $DD
    sbc $DF
    db $DD
    sbc $DF
    db $DD
    sbc $DF
    add e
    ld a, [de]
    inc bc
    dec de
    inc c
    adc e
    sub a
    xor $16
    ld a, [hl+]
    add hl, hl
    dec e
    ld a, h
    ld e, $3D
    db $ED
    ld a, c
    rst $28
    db $ED
    ld a, c
    rst $28
    db $ED
    ld a, c
    rst $28
    db $ED
    ld a, c
    rst $28
    db $ED
    ld a, c
    rst $28
    ld e, l
    add d
    ld c, $03
    rrca
    dec hl
    ld a, [hl+]
    sub a
    xor $06
    adc d
    add hl, hl
    dec e
    ld e, $8C
    ld e, $82
    ld a, h
    ld b, $48
    ld a, h
    ld a, h
    ld c, b
    ld a, h
    ld a, h
    inc bc
    dec a
    ld l, e
    inc a
    add h
    ld a, h
    ld b, $6D
    ld e, h
    ld e, $1F
    dec hl
    ld a, d
    sub a
    xor $06
    ld a, l
    add hl, hl
    dec e
    ld l, h
    adc c
    adc h
    add d
    ld e, $82
    ld c, b
    add e
    ld e, $01
    ld c, b
    add e
    ld e, $01
    ld c, b
    add e
    ld e, $06
    ld c, b
    ld e, $6C
    cpl
    dec sp
    ld a, [hl+]
    sub a
    xor $04
    ld [$1D29], sp
    ld c, b
    add e
    ld e, $0A
    ld c, b
    ld c, d
    ld e, $8C
    ld c, l
    ld c, h
    ld l, h
    ld c, e
    dec a
    inc a
    add e
    ld e, $05
    ld l, h
    ld l, $2E
    cpl
    dec sp
    add d
    ld a, [hl+]
    sub a
    xor $06
    ld a, [hl+]
    add hl, hl
    dec e
    ld e, $48
    ld e, $82
    adc h
    dec b
    ld e, $4D
    ld e, a
    ld c, b
    inc a
    add d
    ld e, $01
    ld l, h
    add h
    ld l, $05
    cpl
    ld a, [hl-]
    ld a, [hl-]
    adc d
    adc e
    sbc c
    xor $03
    ld a, [hl+]
    add hl, sp
    dec l
    add e
    ld l, $0B
    cpl
    adc l
    ld e, $3D
    ld l, a
    inc a
    ld e, $48
    ld l, h
    cpl
    dec sp
    add e
    ld a, [hl-]
    inc bc
    adc d
    ld a, [hl+]
    adc e
    add d
    ld a, [hl+]
    sbc c
    xor $03
    ld a, [hl+]
    adc e
    add hl, sp
    add e
    ld a, [hl-]
    inc bc
    adc e
    adc l
    ld e, h
    add e
    ld e, $06
    ld c, b
    ld c, l
    cpl
    dec sp
    adc e
    adc d
    add d
    adc e
    ld bc, $9D2A
    xor $84
    ld a, [hl+]
    add d
    adc d
    dec b
    adc e
    add hl, hl
    ld c, b
    ld e, $6C
    add d
    ld l, $04
    cpl
    adc d
    adc e
    ld a, [hl+]
    and [hl]
    xor $82
    ld a, [hl+]
    rlca
    add hl, sp
    dec l
    ld l, $2F
    dec sp
    ld a, [hl-]
    adc e
    add e
    ld a, [hl+]
    and [hl]
    xor $08
    ld a, [hl+]
    adc d
    xor $39
    ld a, [hl-]
    dec sp
    ld a, d
    sbc a
    add e
    ld a, [hl+]
    xor d
    xor $84
    ld a, [hl+]
    push bc
    ld h, a
    xor $00
    ld a, [bc]
    ret nc

    rlca
    rst $00
    db $D3
    nop
    nop
    rst $38
