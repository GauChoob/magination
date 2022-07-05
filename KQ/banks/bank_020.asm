; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    nop
    nop
    nop
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
    inc c
    rrca
    inc bc
    inc bc
    inc b
    rlca
    ld [$100F], sp
    rra
    db $10
    rra

jr_020_401A:
    jr nz, jr_020_405B

    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$100F], sp
    rra
    nop
    nop
    nop
    nop

jr_020_4034:
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_401A

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$40
    ret nz

    jr nc, jr_020_4034

    inc c
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $00FF
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

jr_020_405B:
    nop
    nop
    nop
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FF
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    call z, $06FF
    rst $38
    ld [bc], a
    rst $38
    add d
    ld a, a
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    db $10
    rst $18
    ld [$26CF], sp
    rst $20
    ld de, $0CF1
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
    add b
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr z, @+$01

    add hl, de
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add hl, bc
    rst $38
    and $FF
    or $FF
    db $F4
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06FF
    rst $38
    ld [$10FF], sp
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
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld b, $FF
    db $10
    rra
    jr nz, jr_020_4123

    jr nz, jr_020_4125

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, jr_020_4131

    jr nz, jr_020_4133

    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ld [$04F8], sp
    db $FC
    inc b
    db $FC
    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $80FF
    add b
    add b
    add b
    ld b, b
    ret nz

    jr c, @-$06

    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    add hl, bc
    cp $14

jr_020_4123:
    ei
    db $10

jr_020_4125:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld d, d
    db $ED
    ld h, h
    rst $18
    add b

jr_020_412F:
    rst $38
    ld [bc], a

jr_020_4131:
    rst $38
    ld [bc], a

jr_020_4133:
    rst $38
    ld bc, $01FF
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr nc, jr_020_412F

    ld [bc], a
    cp $01
    rst $38
    ld bc, $01FF
    rst $38
    inc bc
    rst $38
    ld c, $FE
    ld a, h
    db $FC
    ldh a, [$F0]
    jr nz, jr_020_41A1

    jr nz, @+$41

    jr nz, jr_020_41A5

    ld b, b
    ld a, a
    ld e, b
    ld a, a
    inc a
    ccf
    ld b, $07
    inc bc
    inc bc
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, h
    db $FC
    ldh a, [$F0]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $FC
    rst $38
    inc e
    rra
    ld b, $07
    inc bc
    inc bc
    db $10
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    ld de, $1AFF
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ldh a, [$F0]
    inc bc

jr_020_41A1:
    rst $38
    ld bc, $09FF

jr_020_41A5:
    rst $38
    ld b, $FF
    ld b, $FF
    sbc h
    rst $38
    cp $FF
    inc bc
    inc bc
    ret nc

    xor a
    ldh [$9F], a
    pop de
    xor a
    and $9B
    db $FC
    rst $08
    ld hl, sp-$21
    ld hl, sp+$77
    ld [hl], c
    ld l, a
    add b
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$08FF], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$06FF], sp
    rst $38
    add hl, bc
    rst $30
    nop
    rst $38
    ld bc, $01FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$12FF], sp
    db $ED
    xor b
    rst $18
    ld [$10F7], sp
    rst $28
    db $10
    rst $38
    db $10

jr_020_4209:
    rst $38
    jr nz, @+$01

    or b
    ld l, a
    ld b, b
    rst $38
    jr jr_020_4209

    ld [$0CFF], sp
    rst $30
    inc b
    rst $38
    sub h
    ld l, a
    inc b
    rst $38
    ld d, h
    rst $28
    inc b
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
    nop
    rst $38
    inc bc
    db $FC
    rrca
    rst $38
    inc bc
    db $FC
    rlca
    ld hl, sp+$0F
    ldh a, [$1F]
    ldh a, [$1F]
    ldh [$3F], a
    ret nz

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
    inc bc
    db $FC
    rlca
    db $FC
    rlca
    ld hl, sp+$0F
    ldh a, [$1F]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1F], a
    ldh a, [$1F]
    ldh a, [rIF]
    ld hl, sp-$01
    ret nz

    ccf
    ldh a, [rIF]
    db $FC
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $00FF
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld h, h
    ld e, e
    ld l, b
    ld e, a
    ld a, [c]
    db $DD
    db $F4
    xor e
    ldh [$BF], a
    ldh a, [$CF]
    ld [$D4D5], a
    db $EB
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
    inc h
    rst $38
    ld d, b
    rst $28
    ld c, b
    rst $38
    add b
    rst $38
    ld d, d
    cp l
    db $10
    rst $38
    dec h
    ld a, [$FB24]
    ld [bc], a

jr_020_42B1:
    db $FD
    inc b
    ei
    ld bc, $00FE
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    inc h
    db $DB
    ld a, [hl+]
    push de
    ld b, h
    cp e
    sub c
    ld l, [hl]
    ld bc, $22FE
    db $DD
    ld [bc], a
    db $FD
    nop
    rst $38
    ld c, b
    rst $30
    and b
    rst $18
    sub b
    ld l, a
    ld b, b
    cp a
    jr z, jr_020_42B1

    ld d, b
    xor a
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
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
    inc h
    rst $38
    inc h
    rst $38
    inc h
    ei
    sub d
    ld a, l
    ld d, d
    xor l
    ld [$48F7], sp
    or a
    nop
    rst $38
    ldh a, [$1F]
    ldh [$3F], a
    ldh [$3F], a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$3F], a
    ldh [$3F], a
    ldh [$3F], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    rrca
    ld hl, sp+$07
    db $FC
    rlca
    db $FC
    rlca
    db $FC
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $FFFF
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07

jr_020_4339:
    db $FC
    inc bc
    cp $03
    cp $01
    rst $38
    add sp, -$61
    ei
    ld d, l
    ld a, h
    ld h, a
    ld a, d
    dec l
    inc [hl]
    dec sp
    jr nc, jr_020_437B

    dec a
    ld [hl+], a
    ld a, [hl-]
    dec [hl]
    add b
    ld a, a
    nop
    rst $38
    ld [$02F7], sp
    rst $38
    jr nz, jr_020_4339

    ld c, b
    cp a
    jr @-$07

    or b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08F7], sp
    rst $38
    ld [$05F7], sp
    ld a, [$FF00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_437B:
    rst $38
    inc b
    ei
    inc d
    rst $28
    ccf
    jr c, jr_020_43A2

    rra
    rlca
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
    ld hl, sp+$37
    db $F4
    ei
    ld hl, sp-$19
    ld a, [c]
    ld l, l
    ld a, l
    ld [hl], d
    ccf
    inc a
    rra
    ld c, $07
    inc bc
    inc b
    rst $38

jr_020_43A2:
    inc bc
    cp $2A
    rst $10
    sub a
    ld l, d
    ld c, a
    or a
    rst $38
    rrca
    rst $38
    ld a, h
    ld hl, sp-$10
    inc b
    ei
    ld [$A8FF], sp
    ld e, a
    ld e, c
    xor [hl]
    db $FC
    rra
    rst $38
    db $FC
    rst $38
    and $07
    inc bc
    nop
    rst $38
    rlca
    rst $38
    ld [$10FF], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr z, @-$07

    ret nc

    rst $28
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld bc, $7CFF
    rst $38
    add d
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    cp a
    sub b
    ld l, a
    ld b, b
    cp a
    and b
    ld e, a
    ld c, b
    or a
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$0CFF], sp
    rst $38
    ld d, $EF
    ld [bc], a
    rst $38
    ld a, [bc]

jr_020_441D:
    rst $30
    ld b, $FB
    ld a, [bc]
    db $FD
    inc d
    ei
    jr z, jr_020_441D

    ld [hl-], a
    db $ED
    ld b, b
    rst $38
    ld h, h
    db $DB
    and l
    jp c, $B7C8

    nop
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    ld bc, $00FE
    rst $38
    nop
    rst $38

Jump_020_443C:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, d
    db $FD
    db $10
    rst $38
    dec c
    cp $86
    rst $38
    ld d, d
    rst $28
    ld b, e
    rst $38
    add hl, hl
    rst $30
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld l, a
    ld b, b
    cp a
    nop
    rst $38
    add hl, bc
    or $54
    xor e
    ld [de], a
    db $ED
    nop
    rst $38
    ld [de], a

jr_020_4469:
    db $ED
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec h
    ei
    inc d
    ei
    ld d, b
    cp a
    ld [de], a
    db $FD
    jr nz, jr_020_4469

    ld [$00FF], sp
    rst $38
    nop
    rst $38
    add b
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
    ld bc, $0EFF
    rst $38
    db $10
    rst $38
    rlca
    rst $38
    ld [$10FF], sp
    rst $38
    db $10
    rst $38
    ld l, b
    rst $30
    sub b
    rst $28
    ld a, [bc]
    push af
    ld b, b
    rst $38
    ldh a, [rIE]
    ld [$04FF], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    ei
    ld [$00F7], sp
    rst $38
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

jr_020_44DB:
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ld [hl+], a
    db $FD
    ld c, c
    rst $30
    ld d, h
    rst $28
    ld [$10FF], sp
    rst $38
    ld d, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_020_44DB

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    ld [bc], a
    db $FD
    ld [$01F7], sp
    cp $00
    rst $38
    jr @+$01

    inc b
    rst $38
    ld [de], a
    rst $28
    jp z, $81B7

    rst $38
    ld b, l
    ei
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $FC
    rrca
    ld hl, sp+$0F
    ld sp, hl
    rlca
    rst $38
    rrca
    rst $38
    rra
    ldh a, [$3F]
    ldh [$BF], a
    db $E3
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$FFC0], sp
    xor $3F
    rst $38
    ld de, $11FF
    rst $38
    dec hl
    rst $38
    add h
    rst $38
    ld [$08FF], sp
    ld [hl], a
    rst $38
    rst $38
    adc b
    rst $38
    ld [$12FF], sp
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rrca
    ld hl, sp+$1F
    ldh a, [$1F]
    ldh a, [$1F]
    ldh a, [$3F]
    ld hl, sp+$7F
    push bc
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03FE
    db $FC
    rlca
    ld hl, sp+$0F
    ld hl, sp+$0F
    ldh a, [$1F]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1F], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $FC
    rlca
    db $FC
    rlca
    db $FC
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld [$38FF], sp
    rst $38
    ld b, h
    rst $38
    inc bc
    db $FC
    rlca
    ld hl, sp+$0F
    ldh a, [$1F]
    ldh [$3F], a
    ldh [$BF], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    add b
    ld a, a
    inc bc
    cp $13
    cp $01
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9F], a
    ld [hl], b
    ld a, [$FA0D]
    push de
    db $F4
    dec sp
    ld a, [c]
    dec l
    cp $39
    db $FD
    ld c, [hl]
    cp $05
    rst $38
    rlca
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    add h
    ld a, e
    inc d
    db $EB
    inc b
    ei
    ld b, b
    cp a
    add hl, de
    and $F0
    adc a
    ld bc, $01FF
    rst $38
    ld bc, $11FF
    xor $88
    ld [hl], a
    inc l
    db $D3
    rrca
    rst $38
    rst $38
    ld sp, hl
    ld e, a
    or b
    ld c, a
    cp e
    cpl
    call c, $E81F
    sbc a
    ld l, b
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld [$00FF], sp
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld e, e
    rst $38
    inc h
    rst $38
    ld a, b
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld de, $02FF
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    inc bc
    db $FC
    rlca
    ld hl, sp+$0F
    ld hl, sp+$0F
    ldh a, [$1F]
    ldh a, [$1F]
    ldh [$3F], a
    ldh [$3F], a
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3F], a
    ldh [$3F], a
    ldh [$1F], a
    ldh a, [rIF]
    ld hl, sp+$0F
    ld hl, sp-$30
    ld l, a
    add sp, -$29
    pop af
    ld l, $F5
    ld a, [de]
    ld a, [$FF15]
    ld [hl], c
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rlca
    db $FC
    ld c, a
    or h
    rla
    ld [$DE3F], a
    ld a, a
    and d
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0000
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
    add b
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
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld b, $00
    nop
    nop
    add b
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
    nop
    nop
    ret nz

    nop
    ld a, h
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
    ld [$0000], sp
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
    rlca
    ld hl, sp+$3C
    ret nz

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
    ld bc, $02FE
    db $FC
    ld b, $F8
    inc c
    ldh a, [$0C]
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$30], a
    ret nz

jr_020_4710:
    ldh [$1F], a
    inc a
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
    nop
    rst $38
    ld bc, $07FE
    ld hl, sp+$1E
    ldh [$38], a
    ret nz

    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    ld [hl], b
    add b
    ldh [rP1], a
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
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    ld h, b
    add b
    jr nz, @-$3E

    jr nz, @-$3E

    jr nz, @-$3E

    jr nz, jr_020_4710

    ld h, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    add b
    nop

jr_020_475C:
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ld a, b
    add b
    inc a
    ret nz

    ld c, $F0
    rlca
    ld hl, sp+$03
    db $FC
    inc bc
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
    nop
    nop
    add b
    nop
    add b
    nop
    ld bc, $01FE
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    add b
    ld [hl], b
    add b
    jr c, jr_020_475C

    ld e, $E0
    inc bc
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
    rra
    nop
    ld [hl], b
    rrca
    ret nz

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
    ret nz

    nop
    ld [hl], b
    add b
    rra
    ldh [rIE], a
    xor c
    rst $38
    xor c
    rst $38
    rst $28
    rst $38
    rst $38
    rst $30
    db $F4
    adc a
    adc b
    rrca
    add hl, bc
    rlca
    rlca
    rst $38
    cpl
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    and e
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$080F], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ccf
    jr c, jr_020_486A

    ld b, l

jr_020_47EC:
    rst $38
    add b

jr_020_47EE:
    rst $38
    add d
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$E0], a
    ldh [$E0], a
    ret nz

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
    ld b, b
    rst $38
    ld [hl+], a
    db $FD
    daa
    db $FD
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rrca
    rrca
    jr nc, @+$32

    rst $08
    rst $08
    jr nc, jr_020_4867

    jp $87DC


    cp b
    ld h, b
    ld a, a
    rrca
    ccf
    cp $FE
    ld bc, $FE01
    cp $01
    db $FD
    ld hl, sp+$06
    pop hl
    dec e
    inc bc
    ei
    ld hl, sp-$04
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b

jr_020_4846:
    jr nz, jr_020_4868

    and b
    and b
    jr nz, jr_020_47EC

    jr nz, jr_020_47EE

    jr nz, @+$62

    ld bc, $0019
    jr jr_020_486D

    jr jr_020_486F

    jr jr_020_4861

    jr nc, jr_020_4863

    jr nc, @+$32

    jr nc, jr_020_488F

    jr nc, jr_020_4861

jr_020_4861:
    nop
    nop

jr_020_4863:
    nop
    ld bc, $0201

jr_020_4867:
    ld [bc], a

jr_020_4868:
    dec b
    dec b

jr_020_486A:
    ld a, [bc]
    dec bc
    inc d

jr_020_486D:
    rla
    inc d

jr_020_486F:
    dec d
    nop
    nop
    rra
    rra
    ldh [$E0], a
    rra
    rra
    ldh [rIE], a
    rra
    ldh [$7F], a
    add b
    rrca
    ldh a, [rP1]
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
    ld hl, sp+$07
    nop

jr_020_488F:
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ld d, b
    ld d, b
    jr z, jr_020_4846

    ld c, b
    ld c, b
    ld hl, $213F
    ccf
    ld b, d
    ld a, a
    add d
    rst $38
    inc b
    rst $38
    ret nc

    rst $38
    ld bc, $FEFF
    cp $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$C0], a
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06FF], sp
    rst $38
    ld hl, $01FF
    rst $38
    inc de
    db $FD
    rrca
    rst $38
    ld bc, $02FE
    db $FC
    ld a, h
    sub b
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    ld a, b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $C3FF
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ld a, [$1FF5]
    ld hl, sp+$1F
    ld a, [c]
    rra
    ldh a, [$1F]
    rst $30
    rra
    or $3F
    cp $7F
    jp nz, $04C3

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_020_4944

    nop
    jr nz, jr_020_4923

jr_020_4923:
    jr nz, jr_020_4925

jr_020_4925:
    jr nz, jr_020_4927

jr_020_4927:
    jr nz, jr_020_4929

jr_020_4929:
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    db $10
    ld d, b
    db $10
    ld d, b

jr_020_4944:
    db $10
    ld d, b
    ld [$0828], sp
    ld [$5444], sp
    inc b
    inc b
    inc h
    inc h
    jr nc, jr_020_4952

jr_020_4952:
    db $10
    ld h, b
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    inc de
    inc de
    db $10
    inc d
    ld [hl+], a
    ld a, [hl+]
    jr nz, @+$22

    ld b, h
    ld b, h
    add h
    sub h
    add b
    add b
    add b
    add b
    add b
    rst $38
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
    nop
    nop
    ld a, a
    rst $38
    add b
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_020_4989

jr_020_4989:
    jr nc, jr_020_498B

jr_020_498B:
    stop
    stop
    db $10
    adc b
    ret z

    ld [$0808], sp
    jr z, jr_020_499B

    inc b
    inc b
    inc b
    inc b

jr_020_499B:
    inc b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    rrca
    ldh a, [$1F]
    ldh a, [$1F]
    ldh a, [$1F]
    pop af
    rra
    pop hl
    ccf
    pop hl
    ld a, a
    pop hl
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rIE]
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    db $FC
    db $FC
    ld hl, sp-$18
    rst $38
    ld a, [c]
    rst $38
    ld a, [$FBFF]
    rst $38
    ld sp, hl

jr_020_49F8:
    rst $38
    ei
    cp $FE
    jr c, jr_020_4A36

jr_020_49FE:
    nop
    nop
    nop
    rst $38
    nop

Call_020_4A03:
    rst $38
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
    ld bc, $20FF
    jr nz, jr_020_4A53

    ld d, b
    ld b, b
    ld h, e
    ld b, b
    ld h, [hl]
    add b
    and h
    add b
    call nz, $C480
    nop
    ld c, b
    nop
    ret nz

    nop
    add b
    nop
    ld [$1008], sp
    db $10
    ld [$1000], sp
    nop
    jr nc, jr_020_4A2F

jr_020_4A2F:
    jr nz, jr_020_4A31

jr_020_4A31:
    ld [bc], a
    nop
    ld bc, $0000

jr_020_4A36:
    nop
    nop
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
    ld [de], a
    ld [de], a
    ld de, $0891
    adc b
    ld [$008A], sp
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop

jr_020_4A53:
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_020_4A7C

    jr nz, jr_020_49FE

    jr jr_020_49F8

    sub b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld hl, $21FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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

jr_020_4A7C:
    nop
    rst $38
    nop
    rst $38
    nop
    stop
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
    ld [$08FF], sp
    rst $38
    ld bc, $08FF
    rst $38

jr_020_4A98:
    inc b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh a, [$F0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$02FF], sp
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_4A98

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR42]
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $203F
    ccf
    inc hl
    ccf
    rra
    inc e
    inc de
    di
    rla
    db $F4
    rra
    ld hl, sp+$3F
    ldh a, [$3F]
    ldh a, [$3F]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ldh [$E0], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp-$68
    cp $1E
    rst $38
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [$100A], sp
    db $10
    db $10
    db $10
    jr nz, jr_020_4B2E

    jr nz, jr_020_4B30

    nop
    add b
    db $10
    sub b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b

jr_020_4B2E:
    nop
    nop

jr_020_4B30:
    rst $38
    rst $38
    ld bc, $FFFF
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    ld bc, $FFFF
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_4B49

jr_020_4B49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
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
    rst $38
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
    dec d
    rra
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
    nop
    nop
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, c
    ld a, a
    ld hl, $203F
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rra
    jr nz, jr_020_4C03

    jr nz, jr_020_4C05

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld de, $0BFF
    rst $38
    inc b
    rst $38
    jr z, @+$01

    ld c, b
    rst $38
    inc b
    rst $38
    ld b, b
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
    jr nz, @+$01

    ld b, b

jr_020_4C03:
    rst $38
    ld b, c

jr_020_4C05:
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$80FF], sp
    add c
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_4C20:
    inc bc
    inc bc
    dec b
    dec b
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    db $10
    db $10
    jr nz, @+$26

    ld b, b
    ld c, b
    ldh [$E0], a
    ld d, b
    ret nc

    xor b
    ld l, b
    jr z, jr_020_4C20

    ret z

    ret z

    inc b
    inc b
    inc b
    inc b
    inc b
    inc d
    ld bc, $0301
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld de, $211F
    ccf
    ld sp, $393F
    cpl
    ld bc, $01FF
    rst $38
    ld hl, $21FF
    rst $38
    ld de, $11FF
    rst $38
    db $10
    rst $38
    db $10
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
    inc bc
    inc bc

jr_020_4C6C:
    inc e
    inc e
    jr nz, jr_020_4C92

    rrca
    rrca
    inc d
    rla
    add hl, hl
    ld l, $2B
    inc l
    ret z

    db $DB
    rlca
    ld h, a
    nop
    nop
    add b
    sub b
    ldh a, [$F0]
    jr z, jr_020_4C6C

    sub h
    ld [hl], h
    jp z, $EA3A

    ld a, [de]
    add hl, bc
    ld sp, hl
    ldh a, [$F8]
    nop
    ld [$FF00], sp

jr_020_4C92:
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
    ld h, b
    rst $38
    rrca
    ld [$101F], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr c, jr_020_4D2A

    ld b, l
    rst $38
    add b
    rst $38
    add d
    ccf
    ld hl, $407F
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    rst $38
    call nz, $80FF
    rst $38
    add b
    rst $38
    sbc $FF
    or $7F
    ld [hl], e
    ccf
    inc sp
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld e, $0F
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
    rst $38
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
    ret nc

    xor a
    ldh [$9F], a
    pop de
    xor a
    and $9B
    db $FC
    rst $08
    ld hl, sp-$21
    ld hl, sp+$77
    ld [hl], c
    ld l, a
    ld [$08FF], sp
    rst $38
    ld [$08FF], sp
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
    cpl
    inc [hl]
    ccf
    rla
    rra
    inc d
    rra
    inc d
    rra
    inc d
    rra
    rra
    rra
    dec d
    rra
    add b
    sbc b
    nop
    ld sp, $2000
    nop
    ld b, b
    nop
    ld c, b

jr_020_4D2A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0109
    dec b
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
    ld a, $37
    ld l, $3B
    cpl
    dec a
    ld [hl-], a
    ld a, $26
    ld a, $1F
    dec e
    ld e, $1B
    inc e
    rla
    db $10
    rst $38
    db $10
    rst $38
    ld [$08FF], sp
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld e, b
    add d
    or d
    adc b
    xor c
    db $10
    ld de, $2220
    jr nz, jr_020_4D8C

    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    ret nz

    nop
    add b
    nop
    stop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    ld [bc], a
    ld a, [bc]
    nop
    ld [$0D01], sp
    nop
    inc b
    nop
    ld b, $00
    inc bc

jr_020_4D8C:
    nop
    ld bc, $0000
    jr jr_020_4DAA

    inc b
    inc b
    ld [bc], a
    ld [de], a
    add d
    adc d
    add c
    add c
    ld b, c
    ld b, c
    nop
    nop
    jr nz, jr_020_4DC0

    rst $38
    ret nz

    rst $38
    ld hl, sp+$7F
    ld h, d
    ld a, a
    ld b, b
    ld a, a
    ld b, d

jr_020_4DAA:
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ccf
    ld a, $FF
    adc b
    rst $38
    call nz, $F3FF
    rst $38
    db $FC
    rst $38
    ret c

    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    db $DB

jr_020_4DC0:
    ld hl, sp+$37
    db $F4
    ei
    ld hl, sp-$19
    ld a, [c]
    ld l, l
    ld a, l
    ld [hl], d
    ccf
    inc a
    rra
    ld c, $07
    inc bc
    inc b
    rst $38
    inc bc
    cp $2A
    rst $10

jr_020_4DD6:
    sub a
    ld l, d
    ld c, a
    or a
    rst $38
    rrca
    rst $38
    ld a, h
    ld hl, sp-$10
    inc b
    ei
    ld [$A8FF], sp
    ld e, a
    ld e, c
    xor [hl]
    db $FC
    rra
    rst $38
    db $FC
    rst $38
    and $07
    inc bc
    ld h, h
    ld e, e
    ld l, b
    ld e, a
    ld a, [c]
    db $DD
    db $F4
    xor e
    ldh [$BF], a
    ldh a, [$CF]
    ld [$D4D5], a
    db $EB
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$090F], sp
    rlca
    rlca
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_020_4DD6

    and e
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$C0C0], sp
    xor $2E
    rst $38
    ld de, $11FF
    rst $38
    dec hl
    rst $38
    add h
    rst $38
    ld [$08FF], sp
    ld [hl], a
    ld [hl], a
    rst $38
    adc b
    rst $38
    ld [$12FF], sp
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
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
    inc bc
    inc bc
    inc c
    rrca
    inc bc
    inc bc
    inc b
    rlca
    ld [$100F], sp
    rra
    db $10
    rra
    jr nz, jr_020_4E9B

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
    rst $38

jr_020_4E6A:
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
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$100F], sp
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4E6A

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$00
    nop
    nop
    rlca
    rlca
    ld [$1708], sp
    db $10
    cpl
    nop

jr_020_4E9B:
    ccf
    nop
    ccf
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
    rst $38
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
    add sp, -$61
    ei
    ld d, l
    ld a, h
    ld h, a
    ld a, d
    dec l
    inc [hl]
    dec sp
    jr nc, jr_020_4F2B

    dec a
    ld [hl+], a
    ld a, [hl-]
    dec [hl]
    rlca
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
    rst $38
    ret


    rst $38
    ret


    rst $38
    jp hl


    ld a, a
    ld a, c
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    rst $28
    rst $38
    rst $38
    di
    di
    add b

jr_020_4F2B:
    add b
    nop
    nop
    nop
    nop
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ccf
    rst $38
    cp a
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rra
    jr nz, jr_020_4F83

jr_020_4F44:
    jr nz, jr_020_4F85

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ret nz

    jr nc, jr_020_4F44

    inc c
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $00FF
    rst $38

jr_020_4F60:
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_020_4F60

    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    jr nz, jr_020_4FB1

    jr nz, jr_020_4FB3

    jr nz, jr_020_4FB5

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ld [$04F8], sp

jr_020_4F83:
    db $FC
    inc b

jr_020_4F85:
    db $FC
    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $20FF
    ccf
    jr nc, jr_020_4FC3

    jr c, jr_020_4FCD

    ccf
    jr c, jr_020_4FB8

    add hl, de
    rrca
    add hl, bc
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_4FB1:
    rst $38
    nop

jr_020_4FB3:
    rst $38
    nop

jr_020_4FB5:
    rst $38
    nop
    rst $38

jr_020_4FB8:
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

jr_020_4FC3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_4FCD:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_020_4FD6:
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
    ccf
    jr c, jr_020_5012

    rra
    rlca
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
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$090F], sp
    rlca
    rlca
    rrca
    rrca

jr_020_5012:
    rra
    db $10
    ccf
    jr nz, jr_020_4FD6

    and e
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$C0C0], sp
    xor $2E
    rst $38
    ld de, $11FF
    rst $38
    dec hl
    rst $38
    add h
    rst $38
    ld [$08FF], sp
    ld [hl], a
    ld [hl], a
    rst $38
    adc b
    rst $38
    ld [$12FF], sp
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    ldh [$E0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld hl, $0000
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
    ret nz

    ld b, b
    ldh [$E0], a
    rst $38
    ret nz

    rst $38
    ld hl, sp+$7F
    ld h, d
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ccf
    ld a, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$00FF], sp
    rst $38
    inc b
    rst $38
    ld de, $E0FF
    rst $38
    add h
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ret nz

    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    cp $E3
    ldh a, [$F0]
    ld [$F4F8], sp
    db $FC
    ld a, [$FAFE]
    cp $FA
    cp $FA
    ld e, $DA
    cp $00
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    ld [$FF00], sp
    jr nz, @+$01

    add b
    rst $38
    ld bc, $03FE
    db $FC
    rlca
    ld hl, sp+$0F
    ldh a, [$1F]
    ldh a, [$1F]
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ldh a, [$9F]
    ld hl, sp-$71
    ld hl, sp-$79
    db $FC
    add a
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_020_50FA

jr_020_50FA:
    inc b
    nop
    nop
    nop
    nop
    nop
    rrca
    ld [$101F], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr c, jr_020_518A

    ld b, l
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld e, $FF
    ld hl, $40FF
    rst $38
    ld b, b
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    ld [bc], a
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$38
    db $FC
    ld b, h
    db $FC
    inc e
    cp $22
    rst $38
    ld bc, $21FF
    ccf
    ld hl, $407F
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    rst $38
    call nz, $80FF
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    db $FC
    rst $38
    db $FD
    adc a
    adc a

jr_020_518A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$48
    ldh a, [$B0]
    ldh a, [$F0]
    ldh [$E0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    db $E3
    cp l
    rst $20
    cp a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    ld a, a
    ld a, [de]
    cp $2A
    cp $F6
    cp $0A
    cp $F2
    cp $02
    cp $04
    db $FC
    ld hl, sp-$08
    rst $38
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
    ldh a, [$1F]
    ldh a, [$1F]
    pop af
    ccf
    jp nc, $B47F

    rst $38
    cp c
    rst $38
    pop de
    rst $38
    or l
    rst $38
    add a
    db $FC
    add a
    db $FC
    ld b, a
    db $FC
    daa
    db $FC
    sub a
    cp $CD
    db $FD
    call nz, $D4FC
    db $FC
    rst $38
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
    add b
    rst $38
    adc b
    rst $38
    call nz, $F3FF
    rst $38
    db $FC
    rst $38
    ret c

    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    db $DB
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    sub b
    rst $38
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
    nop
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    stop
    and b
    nop
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    inc bc
    inc bc
    rlca
    dec b
    rra
    add hl, de
    ccf
    ld hl, $213F
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$50]
    db $FC
    ld c, h
    cp $42
    cp $42
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    cpl
    jr nz, jr_020_52DA

    jr nz, jr_020_52DC

    jr nz, @+$22

    jr nz, jr_020_52C9

    jr jr_020_52D7

    inc a
    inc h
    inc a
    db $FC
    db $FC
    ld a, [$FA02]
    ld [bc], a
    ld a, [$0202]
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    db $FC
    rlca
    ei
    rrca
    ei

jr_020_52C9:
    rrca
    db $FC
    rrca
    ei
    rrca
    ld hl, sp+$0F
    sub l
    rst $38
    sub h
    rst $38
    ld [hl], b
    rst $38
    cp a

jr_020_52D7:
    rst $38
    or b
    rst $38

jr_020_52DA:
    ld a, a
    rst $38

jr_020_52DC:
    or h
    rst $38
    scf
    rst $38
    rst $10
    rst $38
    inc d
    db $FC
    inc b
    db $FC
    db $FC
    db $FC
    rlca
    rst $38
    db $FD
    db $FD
    add h
    db $FC
    add h
    db $FC
    rst $38
    ldh [$1F], a
    db $10
    rrca
    ld [$080F], sp
    rrca
    ld [$888F], sp
    adc a
    adc b
    sbc a
    sub b
    rst $38
    sbc $FF
    or $7F
    ld [hl], e
    ccf
    inc sp
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld e, $0F
    rrca
    rst $38
    jr nz, @+$01

    ld sp, $1EFF
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $FC
    rst $38
    rst $18
    rst $38
    ld [bc], a
    rst $38
    ld c, h
    rst $38
    jr nc, @+$01

    add hl, de
    rst $38
    adc [hl]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld sp, hl
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    adc b
    rst $38
    rlca
    rst $38
    ld hl, $E3FF
    rst $38
    ld a, [hl]
    ld b, $00
    ld a, [bc]
    nop
    ret nc

    nop
    nop
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
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ccf
    inc hl
    inc a
    daa
    jr c, @+$41

    ccf
    ccf
    jr z, @+$41

    dec hl
    ccf
    dec hl
    ccf
    ccf
    ccf
    cp $E2
    ld e, $F2
    ld c, $FE
    cp $FE
    ld a, [bc]
    cp $0A
    cp $0A
    cp $FE
    cp $3F
    ccf
    jr z, jr_020_53E3

    dec hl
    ccf
    dec hl
    ccf
    ccf
    ccf
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc c
    nop
    cp $FE

jr_020_53B2:
    ld a, [bc]
    cp $6A
    cp $0A
    cp $FE
    cp $00
    nop
    nop
    nop
    nop
    nop
    db $FC
    rrca
    ei
    rrca
    ld hl, sp+$0F
    rst $38
    rrca
    ld hl, sp+$18
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ld [hl], h
    rst $38
    or a
    rst $38
    ld [hl], h
    rst $38
    rst $08
    rst $08
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    add a
    rst $38
    adc b

jr_020_53E3:
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    ld hl, sp-$01
    scf
    ccf
    db $10
    rra
    jr jr_020_540F

    ccf
    jr nz, jr_020_53B2

    and b
    ld e, a
    ret nc

    ld c, a
    ret z

    rst $08
    ret z

    ld c, a
    ret z

    ld c, a
    ret z

    rst $18
    ret nc

    rlca
    rlca
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

jr_020_540F:
    nop
    rst $38
    ret


    rst $38
    ret


    rst $38
    jp hl


    ld a, a
    ld a, c
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    rst $28
    rst $38
    rst $38
    di
    di
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ccf
    rst $38
    cp a
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $223F
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $203F
    ccf
    jr nz, jr_020_548D

    ld de, $101F
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$C3]
    jp $FF3C


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    add c
    add c
    ld h, [hl]
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $FC
    rst $38
    ldh a, [rIE]
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b

jr_020_548D:
    nop
    ld [$0000], sp

jr_020_5491:
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0203
    inc bc

jr_020_549F:
    ld [bc], a
    ld de, $6000
    nop
    add b
    nop
    ld a, $3E
    ld a, a
    ld d, l
    rst $38
    sub h
    rst $38
    inc d
    rst $38
    inc d
    ldh [rP1], a
    jr nc, jr_020_54B4

jr_020_54B4:
    jr jr_020_54B6

jr_020_54B6:
    ld [$0C00], sp
    nop
    jp nz, $E1C0

    jr nz, jr_020_549F

    jr nz, @-$3E

    ld b, b
    ret


    ld c, c
    ld sp, hl
    add hl, sp
    ld hl, sp+$08
    db $FC
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    ld b, b
    ld b, b
    ldh [$E0], a
    rst $38
    rst $38
    rst $38
    or d
    rrca
    rrca
    inc bc
    inc bc
    call z, $30CC
    jr nc, jr_020_5519

    jr nc, @+$81

    ld a, a
    rst $38
    rst $08
    rst $38
    push hl
    cp a
    and b
    cp a
    and b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nz, jr_020_5508

    rlca
    rrca
    ld [$101F], sp
    rra
    db $10

jr_020_5508:
    ccf
    scf
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ccf
    jr nc, jr_020_5491

    add b
    ret nz

    ld b, b
    ldh a, [$F0]
    ld hl, sp+$08
    db $FC

jr_020_5519:
    inc b
    db $FC
    add h
    db $FC
    inc d
    ld hl, sp+$08
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100F], sp
    rra
    jr nz, jr_020_556B

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    add b
    add b
    add b
    db $FC
    db $FC
    add d
    cp $82
    cp $82
    cp $C2
    cp $A2
    cp $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld de, $211F
    ccf
    ld hl, $213F
    ccf
    db $10
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$1F]
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld [hl], b
    ldh a, [$80]

jr_020_556B:
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    db $FC
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    inc e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld [$1000], sp
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    ld a, $C1
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    rst $38
    rst $38
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$E0], a
    ldh [$E0], a
    and b
    ldh [$A0], a
    ldh [$A0], a
    ldh [$E0], a
    ldh [rIE], a
    dec b
    rst $38
    dec a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld a, [hl]
    add a
    add [hl]
    add e
    add d
    pop bc
    pop bc
    rst $38
    ld [hl+], a
    rst $38
    daa
    cp $26
    db $FC
    ld b, h
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ret z

    cp $7E
    ret nz

    ret nz

    ld bc, $0001
    nop
    ret nz

    ret nz

    add b
    add b
    call nz, $FEC4
    cp $1F
    db $10
    rra
    db $10
    sbc a
    sub b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_020_563A

    jr nz, jr_020_563C

    jr nc, jr_020_567E

    ld a, b
    rra
    jr jr_020_5622

    rra
    ccf
    dec a
    ld a, a
    ld a, l
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp+$18
    db $FC
    db $EC
    cp $6E
    cp $7E
    db $FC
    ld a, h
    ldh [$E0], a
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a

jr_020_5622:
    ld b, c
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, a
    ld a, l
    ld c, a
    ld a, b
    ld e, a
    ld [hl], c
    ld a, a
    ld h, c
    ld a, a
    ld a, a
    sub d
    cp $92
    cp $DE
    ld a, [hl]
    cp $B2
    cp $12

jr_020_563A:
    cp $92

jr_020_563C:
    cp $9E
    ldh a, [$F0]
    inc h
    ccf
    jr nz, jr_020_5683

    inc h
    ccf
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_020_568F

    sub c
    pop af
    adc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, c
    rst $38
    ld e, $FF
    nop
    rst $38
    jp $3CC3


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    dec e
    rst $38
    nop
    rst $38
    add c
    add c
    ld h, [hl]
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38

jr_020_567E:
    nop
    rst $38
    nop
    nop
    nop

jr_020_5683:
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    ld [$100F], sp

jr_020_568F:
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [rIE], a
    rrca
    rst $38
    jr nc, @+$01

    ld b, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    rrca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh a, [rIE]
    ret nz

    ret nz

    ldh [$E0], a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$E0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$F8], a
    ld hl, sp-$10
    or b
    rst $38
    xor a
    rst $38
    xor c
    cp $EB
    db $FC
    ld l, a
    db $FD
    ccf
    cp $07
    ccf
    inc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    pop af
    ccf
    ldh [$BF], a
    ldh [$7F], a
    ldh [rIE], a
    and a
    rst $38
    and h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    call nc, $DEFF
    di
    ld e, [hl]
    pop hl
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    nop
    nop
    ld bc, $0400
    nop
    dec de
    nop
    nop
    nop
    ld bc, $0800
    nop
    nop
    nop
    dec bc
    nop
    rst $38
    nop
    ld h, a
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    rlca
    nop
    rst $30
    nop
    ld e, b
    nop
    ldh a, [rP1]
    add e
    nop
    ldh a, [rP1]
    ld [c], a
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_5781

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add a
    add a
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add a
    add a
    nop
    nop
    nop
    nop
    db $10

jr_020_5781:
    rra
    ld de, $101F
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld hl, $213F
    ccf
    ld b, $FE
    ld [$10F8], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$0F
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $FC
    rlca
    db $FD
    rlca
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    ccf
    ldh [$BF], a
    ldh [rIE], a
    ldh [rIE], a
    ld d, b
    rst $38
    jr @+$01

    ld de, $E0FF
    rst $38
    ldh [$ED], a
    ccf
    di
    ccf
    pop hl
    ccf
    db $ED
    ccf
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    ld [$0DFF], sp
    rst $38
    ldh [rIE], a
    sub b
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$090F], sp
    rlca
    rlca
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, @-$3F

    and e
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$C0C0], sp
    xor $2E
    rst $38
    ld de, $11FF
    rst $38
    dec hl
    rst $38
    add h
    rst $38
    ld [$08FF], sp
    ld [hl], a
    ld [hl], a
    rst $38
    adc b
    rst $38
    ld [$12FF], sp
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    ldh [$E0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld hl, $0000
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
    ret nz

    ld b, b
    ldh [$E0], a
    rst $38
    ret nz

    rst $38
    ld hl, sp+$7F
    ld h, d
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ccf
    ld a, $FF
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$00FF], sp
    rst $38
    inc b
    rst $38
    ld de, $E0FF
    rst $38
    add h
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ret nz

    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    cp $E3
    ldh a, [$F0]
    ld [$F4F8], sp
    db $FC
    ld a, [$FAFE]
    cp $FA
    cp $FA
    ld e, $DA
    cp $00
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    ld [$FF00], sp
    jr nz, @+$01

    add b
    rst $38
    ld bc, $03FE
    db $FC
    rlca
    ld hl, sp+$0F
    ldh a, [$1F]
    ldh a, [$1F]
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ldh a, [$9F]
    ld hl, sp-$71
    ld hl, sp-$79
    db $FC
    add a
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_020_58FA

jr_020_58FA:
    inc b
    nop
    nop
    nop
    nop
    nop
    rrca
    ld [$101F], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr c, jr_020_598A

    ld b, l
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld e, $FF
    ld hl, $40FF
    rst $38
    ld b, b
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    ld [bc], a
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$38
    db $FC
    ld b, h
    db $FC
    inc e
    cp $22
    rst $38
    ld bc, $21FF
    ccf
    ld hl, $407F
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    rst $38
    call nz, $80FF
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    db $FC
    rst $38
    db $FD
    adc a
    adc a

jr_020_598A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$48
    ldh a, [$B0]
    ldh a, [$F0]
    ldh [$E0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    db $E3
    cp l
    rst $20
    cp a
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    ld a, a
    ld a, [de]
    cp $2A
    cp $F6
    cp $0A
    cp $F2
    cp $02
    cp $04
    db $FC
    ld hl, sp-$08
    rst $38
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
    ldh a, [$1F]
    ldh a, [$1F]
    pop af
    ccf
    jp nc, $B47F

    rst $38
    cp c
    rst $38
    pop de
    rst $38
    or l
    rst $38
    add a
    db $FC
    add a
    db $FC
    ld b, a
    db $FC
    daa
    db $FC
    sub a
    cp $CD
    db $FD
    call nz, $D4FC
    db $FC
    rst $38
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
    add b
    rst $38
    adc b
    rst $38
    call nz, $F3FF
    rst $38
    db $FC
    rst $38
    ret c

    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    db $DB
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    sub b
    rst $38
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
    nop
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    stop
    and b
    nop
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    inc bc
    inc bc
    rlca
    dec b
    rra
    add hl, de
    ccf
    ld hl, $213F
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$50]
    db $FC
    ld c, h
    cp $42
    cp $42
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    cpl
    jr nz, jr_020_5ADA

    jr nz, jr_020_5ADC

    jr nz, @+$22

    jr nz, jr_020_5AC9

    jr jr_020_5AD7

    inc a
    inc h
    inc a
    db $FC
    db $FC
    ld a, [$FA02]
    ld [bc], a
    ld a, [$0202]
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    db $FC
    rlca
    ei
    rrca
    ei

jr_020_5AC9:
    rrca
    db $FC
    rrca
    ei
    rrca
    ld hl, sp+$0F
    sub l
    rst $38
    sub h
    rst $38
    ld [hl], b
    rst $38
    cp a

jr_020_5AD7:
    rst $38
    or b
    rst $38

jr_020_5ADA:
    ld a, a
    rst $38

jr_020_5ADC:
    or h
    rst $38
    scf
    rst $38
    rst $10
    rst $38
    inc d
    db $FC
    inc b
    db $FC
    db $FC
    db $FC
    rlca
    rst $38
    db $FD
    db $FD
    add h
    db $FC
    add h
    db $FC
    rst $38
    ldh [$1F], a
    db $10
    rrca
    ld [$080F], sp
    rrca
    ld [$888F], sp
    adc a
    adc b
    sbc a
    sub b
    rst $38
    sbc $FF
    or $7F
    ld [hl], e
    ccf
    inc sp
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld e, $0F
    rrca
    rst $38
    jr nz, @+$01

    ld sp, $1EFF
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $FC
    rst $38
    rst $18
    rst $38
    ld [bc], a
    rst $38
    ld c, h
    rst $38
    jr nc, @+$01

    add hl, de
    rst $38
    adc [hl]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld sp, hl
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    adc b
    rst $38
    rlca
    rst $38
    ld hl, $E3FF
    rst $38
    ld a, [hl]
    ld b, $00
    ld a, [bc]
    nop
    ret nc

    nop
    nop
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
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ccf
    inc hl
    inc a
    daa
    jr c, @+$41

    ccf
    ccf
    jr z, @+$41

    dec hl
    ccf
    dec hl
    ccf
    ccf
    ccf
    cp $E2
    ld e, $F2
    ld c, $FE
    cp $FE
    ld a, [bc]
    cp $0A
    cp $0A
    cp $FE
    cp $3F
    ccf
    jr z, jr_020_5BE3

    dec hl
    ccf
    dec hl
    ccf
    ccf
    ccf
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc c
    nop
    cp $FE

jr_020_5BB2:
    ld a, [bc]
    cp $6A
    cp $0A
    cp $FE
    cp $00
    nop
    nop
    nop
    nop
    nop
    db $FC
    rrca
    ei
    rrca
    ld hl, sp+$0F
    rst $38
    rrca
    ld hl, sp+$18
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ld [hl], h
    rst $38
    or a
    rst $38
    ld [hl], h
    rst $38
    rst $08
    rst $08
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    add a
    rst $38
    adc b

jr_020_5BE3:
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    ld hl, sp-$01
    scf
    ccf
    db $10
    rra
    jr jr_020_5C0F

    ccf
    jr nz, jr_020_5BB2

    and b
    ld e, a
    ret nc

    ld c, a
    ret z

    rst $08
    ret z

    ld c, a
    ret z

    ld c, a
    ret z

    rst $18
    ret nc

    rlca
    rlca
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

jr_020_5C0F:
    nop
    rst $38
    ret


    rst $38
    ret


    rst $38
    jp hl


    ld a, a
    ld a, c
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    rst $28
    rst $38
    rst $38
    di
    di
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ccf
    rst $38
    cp a
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $223F
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $203F
    ccf
    jr nz, jr_020_5C8D

    ld de, $101F
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$C3]
    jp $FF3C


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    add c
    add c
    ld h, [hl]
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $FC
    rst $38
    ldh a, [rIE]
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b

jr_020_5C8D:
    nop
    ld [$0000], sp

jr_020_5C91:
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0203
    inc bc

jr_020_5C9F:
    ld [bc], a
    ld de, $6000
    nop
    add b
    nop
    ld a, $3E
    ld a, a
    ld d, l
    rst $38
    sub h
    rst $38
    inc d
    rst $38
    inc d
    ldh [rP1], a
    jr nc, jr_020_5CB4

jr_020_5CB4:
    jr jr_020_5CB6

jr_020_5CB6:
    ld [$0C00], sp
    nop
    jp nz, $E1C0

    jr nz, jr_020_5C9F

    jr nz, @-$3E

    ld b, b
    ret


    ld c, c
    ld sp, hl
    add hl, sp
    ld hl, sp+$08
    db $FC
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    ld b, b
    ld b, b
    ldh [$E0], a
    rst $38
    rst $38
    rst $38
    or d
    rrca
    rrca
    inc bc
    inc bc
    call z, $30CC
    jr nc, jr_020_5D19

    jr nc, @+$81

    ld a, a
    rst $38
    rst $08
    rst $38
    push hl
    cp a
    and b
    cp a
    and b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nz, jr_020_5D08

    rlca
    rrca
    ld [$101F], sp
    rra
    db $10

jr_020_5D08:
    ccf
    scf
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ccf
    jr nc, jr_020_5C91

    add b
    ret nz

    ld b, b
    ldh a, [$F0]
    ld hl, sp+$08
    db $FC

jr_020_5D19:
    inc b
    db $FC
    add h
    db $FC
    inc d
    ld hl, sp+$08
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100F], sp
    rra
    jr nz, jr_020_5D6B

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    add b
    add b
    add b
    db $FC
    db $FC
    add d
    cp $82
    cp $82
    cp $C2
    cp $A2
    cp $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld de, $211F
    ccf
    ld hl, $213F
    ccf
    db $10
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$1F]
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld [hl], b
    ldh a, [$80]

jr_020_5D6B:
    add b
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    db $FC
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    inc e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld [$1000], sp
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    ld a, $C1
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    rst $38
    rst $38
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$E0], a
    ldh [$E0], a
    and b
    ldh [$A0], a
    ldh [$A0], a
    ldh [$E0], a
    ldh [rIE], a
    dec b
    rst $38
    dec a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld a, [hl]
    add a
    add [hl]
    add e
    add d
    pop bc
    pop bc
    rst $38
    ld [hl+], a
    rst $38
    daa
    cp $26
    db $FC
    ld b, h
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ret z

    cp $7E
    ret nz

    ret nz

    ld bc, $0001
    nop
    ret nz

    ret nz

    add b
    add b
    call nz, $FEC4
    cp $1F
    db $10
    rra
    db $10
    sbc a
    sub b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_020_5E3A

    jr nz, jr_020_5E3C

    jr nc, jr_020_5E7E

    ld a, b
    rra
    jr jr_020_5E22

    rra
    ccf
    dec a
    ld a, a
    ld a, l
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp+$18
    db $FC
    db $EC
    cp $6E
    cp $7E
    db $FC
    ld a, h
    ldh [$E0], a
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a

jr_020_5E22:
    ld b, c
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, a
    ld a, l
    ld c, a
    ld a, b
    ld e, a
    ld [hl], c
    ld a, a
    ld h, c
    ld a, a
    ld a, a
    sub d
    cp $92
    cp $DE
    ld a, [hl]
    cp $B2
    cp $12

jr_020_5E3A:
    cp $92

jr_020_5E3C:
    cp $9E
    ldh a, [$F0]
    inc h
    ccf
    jr nz, jr_020_5E83

    inc h
    ccf
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_020_5E8F

    sub c
    pop af
    adc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, c
    rst $38
    ld e, $FF
    nop
    rst $38
    jp $3CC3


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    dec e
    rst $38
    nop
    rst $38
    add c
    add c
    ld h, [hl]
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38

jr_020_5E7E:
    nop
    rst $38
    nop
    nop
    nop

jr_020_5E83:
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    ld [$100F], sp

jr_020_5E8F:
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [rIE], a
    rrca
    rst $38
    jr nc, @+$01

    ld b, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$F0]
    rrca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh a, [rIE]
    ret nz

    ret nz

    ldh [$E0], a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$E0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$F8], a
    ld hl, sp-$10
    or b
    rst $38
    xor a
    rst $38
    xor c
    cp $EB
    db $FC
    ld l, a
    db $FD
    ccf
    cp $07
    ccf
    inc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    pop af
    ccf
    ldh [$BF], a
    ldh [$7F], a
    ldh [rIE], a
    and a
    rst $38
    and h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    call nc, $DEFF
    di
    ld e, [hl]
    pop hl
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    nop
    nop
    ld bc, $0400
    nop
    dec de
    nop
    nop
    nop
    ld bc, $0800
    nop
    nop
    nop
    dec bc
    nop
    rst $38
    nop
    ld h, a
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    rlca
    nop
    rst $30
    nop
    ld e, b
    nop
    ldh a, [rP1]
    add e
    nop
    ldh a, [rP1]
    ld [c], a
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_5F81

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add a
    add a
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add a
    add a
    nop
    nop
    nop
    nop
    db $10

jr_020_5F81:
    rra
    ld de, $101F
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld hl, $213F
    ccf
    ld b, $FE
    ld [$10F8], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$0F
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $FC
    rlca
    db $FD
    rlca
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $00FF
    rst $38
    nop
    ccf
    ldh [$BF], a
    ldh [rIE], a
    ldh [rIE], a
    ld d, b
    rst $38
    jr @+$01

    ld de, $E0FF
    rst $38
    ldh [$ED], a
    ccf
    di
    ccf
    pop hl
    ccf
    db $ED
    ccf
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    ld [$0DFF], sp
    rst $38
    ldh [rIE], a
    sub b
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
    add b
    stop
    ccf
    nop
    ld a, b
    rlca
    ld [hl], b
    rrca
    jr nc, @+$21

    ld c, a
    inc a
    ld c, a
    dec sp
    adc a
    ld [hl], l
    nop
    nop
    ret nz

    nop
    jr nz, @-$3E

    db $10
    ldh [$08], a
    ldh a, [rOBP0]
    or b
    add sp, $50
    ldh a, [$A0]
    ld c, a
    dec [hl]
    ccf
    inc bc
    rlca
    nop
    rrca
    ld bc, $000F
    rra
    inc c
    rra
    dec c
    rrca
    nop
    ldh a, [$A0]
    ldh [$C0], a
    ldh [rP1], a
    ldh [$80], a
    ldh [rP1], a
    ldh a, [rNR41]
    ldh [$80], a
    ret nz

    nop
    inc b
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    ld b, $0E
    ld bc, $0F10
    rrca
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh a, [$80]
    ret z

    jr nc, @+$4A

    or b
    ld [hl], b
    add b
    ret nz

    nop
    dec e
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld e, $01
    inc e
    inc bc
    ld hl, $101F
    rrca
    ld hl, sp+$00
    inc b
    ld hl, sp+$02
    db $FC
    ld [bc], a
    db $FC
    ld a, [hl-]
    db $F4
    ld a, d
    db $E4
    db $FC
    ret nc

    inc e
    add sp, $08
    rlca
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0003
    inc bc
    nop
    ld [$F0F0], sp
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70

jr_020_60A6:
    ld hl, sp+$70
    cp $30
    cp c
    ld b, [hl]
    db $E3
    inc e
    ld a, $00
    inc bc
    nop
    rlca
    nop
    ld [$1907], sp
    ld c, $14
    rrca
    ld [de], a
    dec c
    rla
    ld a, [bc]
    cpl
    dec d
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_020_60A6

    jr c, @-$0E

    add sp, $70
    add sp, $30
    add sp, -$30
    db $F4
    xor b
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$50
    ld hl, sp+$30
    ld h, b
    add b
    ldh [$C0], a
    ldh [$C0], a
    ldh a, [$C0]
    ret z

    or b
    add h
    ld a, b
    call nz, $F838
    nop
    cpl
    dec d
    ld c, a
    dec [hl]
    daa
    dec de
    rlca
    nop
    rrca
    ld bc, $000F
    rrca
    nop
    rrca
    dec b
    db $F4
    xor b

jr_020_6102:
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$60]
    ld a, [hl]
    nop
    ld b, h
    jr c, @+$80

    inc a
    ld a, [hl]
    inc e
    sbc [hl]
    ld h, h
    adc [hl]
    ld [hl], b
    ld c, d
    inc [hl]
    ld a, h
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $10
    ret z

    jr nc, @+$1A

    ldh a, [rNR32]
    ld hl, sp+$22
    db $FC
    inc c
    ldh a, [$30]
    ret nz

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$50
    ld hl, sp+$30
    jr nc, jr_020_6102

    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ld hl, sp-$40
    db $E4
    sbc b
    adc h
    ld [hl], b
    ld hl, sp+$00
    ld b, h
    ccf
    jr nc, jr_020_6163

    inc c
    inc bc
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    inc b
    ld [hl+], a
    db $FC
    inc c

jr_020_6163:
    ldh a, [$30]
    ret nz

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rLCDC]
    ldh a, [$60]
    ld b, a
    jr c, jr_020_61F1

    inc e
    ld a, $1C
    ld a, $04
    inc h
    jr @+$46

    jr c, jr_020_61C7

    inc [hl]
    ld a, h
    nop
    ccf
    rlca
    rlca
    inc bc
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    inc b
    rrca
    dec b
    rlca
    nop
    ldh [rLCDC], a
    ldh [$C0], a
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    inc b
    inc bc
    inc bc
    ld bc, $030F
    ccf
    rlca
    ld e, a
    jr z, @+$4B

    ld [hl], $61
    ld e, $7F
    nop
    add b
    nop
    add b
    nop
    ldh a, [$80]
    ret z

    or b
    adc b
    ld [hl], b
    db $10
    ldh [$30], a
    ret nz

    ldh [rP1], a
    dec de
    nop
    ld a, $01
    ld a, $03
    rra

jr_020_61C7:
    rlca
    jr nc, jr_020_61D9

    ld b, [hl]
    add hl, sp
    daa
    ld a, [de]
    rra
    inc bc
    ldh a, [rP1]
    ld [$88F0], sp
    ldh a, [rDIV]
    ld hl, sp+$54

jr_020_61D9:
    xor b
    ld hl, sp+$40
    ldh a, [$A0]
    ldh a, [$A0]
    ld a, [hl]
    inc a
    ld a, h
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    ld h, b
    ldh a, [$60]
    ldh a, [rP1]
    sub b

jr_020_61F1:
    ld h, b
    ld [hl], b
    jr nz, jr_020_6265

    jr nz, @-$06

    ld h, b
    db $FC
    nop
    add [hl]
    ld a, b
    add d
    ld a, h
    cp $00
    ccf
    rlca
    rlca
    inc bc
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    jr jr_020_624C

    dec de
    rra
    nop
    ldh [rLCDC], a
    ldh [$C0], a
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    nop
    inc b
    inc bc
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    ld [$1728], sp
    jr nc, jr_020_623D

    rra
    nop
    add b
    nop
    ret nz

    nop
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $8838
    ld [hl], b
    sbc b

jr_020_623D:
    ld h, b
    ldh [rP1], a
    ld a, [c]
    xor h
    db $E4
    ret c

    ld hl, sp+$00
    db $FC
    add b
    db $FC
    nop
    ld hl, sp+$30

jr_020_624C:
    ld a, b
    jr nc, jr_020_627F

    nop
    inc c
    ldh a, [$3C]
    ret z

    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$C0], a
    ret nz

    nop
    db $F4
    xor b
    ld a, [c]
    xor h
    db $E4

jr_020_6265:
    ret c

    cp $00
    rst $38
    add [hl]
    rst $38
    ld b, $06
    nop
    nop
    nop
    ld [hl+], a
    db $FC
    inc c
    ldh a, [$3C]
    ret nz

    cp $0C
    cp $04
    db $FC
    nop
    ldh [$C0], a
    ret nz

jr_020_627F:
    nop
    rlca
    ld bc, $000F
    rra
    nop
    ccf
    nop
    ld a, a
    jr @+$01

    nop
    nop
    nop
    nop
    nop
    db $FC
    ldh [$FE], a
    inc c
    db $FC
    nop
    cp $0C
    cp $0C
    adc h
    nop
    nop
    nop
    nop
    nop
    rra
    inc bc
    rra
    add hl, bc
    rrca
    nop

jr_020_62A6:
    rra
    nop
    ccf
    ld b, $7F
    ld d, $00
    nop
    nop
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    add b

jr_020_62B8:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_020_62A6

    jr c, jr_020_62B8

    add sp, $70
    xor $30
    rst $28
    sub $FF
    and [hl]
    sbc a
    ld l, e
    ld c, a
    scf
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    db $FC
    ld b, b
    ld hl, sp-$80
    ld hl, sp+$00
    ldh a, [$80]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    daa
    ld a, [de]
    rra
    inc bc
    rlca
    ld bc, $0007
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    ld [hl], e
    inc c
    ld hl, sp+$6F
    ld hl, sp+$5F
    ld b, h
    ccf
    jr nc, jr_020_6329

    inc e
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
    nop

jr_020_6329:
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    nop
    nop
    nop
    nop

jr_020_6334:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    ld a, h
    add b
    ld de, $200F
    rra
    ld a, [hl+]
    dec d
    rra
    ld [bc], a
    rrca
    inc b
    rrca
    inc b
    rlca
    nop
    nop
    nop
    ld a, h
    ret nz

    ld hl, sp-$20
    call z, $E230
    call c, $D8E4
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    ccf
    nop
    ld a, b
    rlca
    ld [hl], b
    rrca
    jr nc, jr_020_6387

    ld c, a
    inc a
    ld c, a
    dec sp
    adc a
    ld [hl], a
    ld e, a
    inc l
    ret nz

    nop
    jr nz, jr_020_6334

    db $10
    ldh [$08], a
    ldh a, [rOBP0]
    or b
    add sp, $50
    ldh a, [$E0]
    ldh a, [$80]
    ccf
    rlca
    ccf
    nop
    ld a, a
    nop
    rst $38

jr_020_6387:
    ld h, b
    ei
    ld h, b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    ld h, [hl]
    rst $38
    ei
    rst $38
    cp a
    ld a, a
    and b
    ld [c], a
    dec e
    add e
    ld a, h
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$80], a
    sub b
    ld h, b
    db $10
    ldh [$F0], a
    nop
    nop
    nop
    ld b, a
    ld a, [hl-]
    daa
    ld a, [de]
    rra
    ld bc, $007F
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld h, a
    nop
    ld bc, $F800
    ret nc

    ld hl, sp-$30
    ldh a, [$E0]
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    ld hl, sp-$80
    add [hl]
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld [hl], d
    di
    ld l, h
    db $E3
    ld e, h
    jp nz, Jump_020_443C

    jr c, @+$7A

    nop
    nop
    nop
    ld h, b
    nop
    sub b
    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
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
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    ld b, $FF
    and [hl]
    cp $C0
    ldh a, [rP1]
    ldh [$80], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ret z

    jr nc, jr_020_642B

    ldh a, [rNR32]
    ld hl, sp+$22
    db $FC
    inc c
    ldh a, [$30]
    ret nz

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
    jr jr_020_642A

jr_020_642A:
    inc a

jr_020_642B:
    nop
    jr jr_020_642E

jr_020_642E:
    nop
    nop
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh a, [rP1]
    ld hl, sp-$80
    ld hl, sp+$00
    db $FC
    jr @-$02

    sbc b
    ret c

    nop
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh a, [rP1]
    ld hl, sp-$80
    db $FC
    nop
    db $FC
    jr nz, @-$06

    or b
    ldh a, [rP1]
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ld hl, sp+$30
    ld c, b
    add b
    ldh a, [$C0]
    ldh [$C0], a
    ldh a, [$C0]
    ret z

    or b
    add h
    ld a, b
    call nz, $F838
    nop
    ld c, b
    add b
    ldh a, [$C0]
    ldh a, [$C0]
    ret z

    or b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    sub b
    ld h, b
    ldh [rP1], a
    inc c
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
    rlca
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    jr @-$02

    jr jr_020_64BD

    inc bc
    ld l, a
    rlca
    sbc a
    ld l, a
    cp a
    ld e, a
    cp a
    ld e, h
    sbc a
    ld h, b
    ld h, d

jr_020_64BD:
    ld bc, $0001
    ld e, b
    add b

jr_020_64C2:
    ret nz

    add b
    ldh [$C0], a
    ldh a, [$60]
    ldh a, [$C0]
    ret z

    jr nc, jr_020_64D5

    ldh a, [$F0]
    nop
    rlca
    ld bc, $000F
    rra

jr_020_64D5:
    nop
    ccf
    nop
    ld a, e
    jr nc, jr_020_6554

    jr nc, jr_020_650E

    nop
    ld bc, $F000
    ldh [$E0], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [$C0], a
    ldh [rP1], a
    ld [bc], a
    ld bc, $0307
    rrca
    rlca
    rra
    dec c
    ccf
    ld c, $4F
    jr nc, jr_020_653E

    ld a, $3F
    nop
    jr nz, jr_020_64C2

    or $E0

jr_020_6504:
    ld sp, hl
    or $F1
    xor $E3
    call c, $B8C6
    db $EC
    db $10

jr_020_650E:
    jr c, jr_020_6510

jr_020_6510:
    cpl
    dec d
    ld c, a
    dec [hl]
    daa
    dec de
    rrca
    nop
    rra
    ld bc, $001F
    rra
    ld b, $0F
    ld b, $F4
    xor b
    ld a, [c]
    xor h
    db $E4
    ret c

    ld hl, sp+$00
    cp $80
    rst $38
    ld b, $EF
    ld b, $E6
    ret nz

    rlca
    nop
    inc c
    inc bc
    rra
    rlca
    rra
    rlca
    rla

jr_020_6539:
    ld [$0C13], sp
    dec c
    nop

jr_020_653E:
    nop
    nop
    ldh [rP1], a
    jr nz, jr_020_6504

    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$80]
    adc b
    ld [hl], b
    ld [$F8F0], sp
    nop
    ld c, a
    dec [hl]
    daa
    dec de

jr_020_6554:
    rrca
    nop
    rra
    ld bc, $007F
    rst $38
    ld h, b
    rst $38
    ld h, e
    ld h, a
    nop
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [$80]
    db $FC
    nop
    cp $0C
    cp $CC
    db $EC
    nop
    ld c, a
    jr c, jr_020_65F2

    ld [hl-], a
    di
    ld l, h
    pop hl
    ld e, [hl]
    ld b, e
    inc a
    ld b, [hl]
    jr c, jr_020_6539

    ld b, b
    db $FC
    nop
    jr nc, jr_020_6591

jr_020_6582:
    inc c
    inc bc
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    inc bc
    inc c

jr_020_6591:
    ldh a, [$30]
    ret nz

    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$08FC], sp
    ld hl, sp-$40
    db $FC
    nop
    or [hl]
    ld c, h
    rst $08
    ld [hl], $C7
    ld a, [hl-]
    jp nz, $E23C

    inc e
    sbc h
    ld h, b
    ld [hl], b
    nop
    inc c
    inc bc
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    inc bc
    rlca
    nop
    jr nc, jr_020_6582

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$10
    ld hl, sp-$50
    ldh a, [rP1]
    ld b, c
    ld a, $FF
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $74
    cp $70
    ld a, h
    nop
    ld b, h
    jr c, jr_020_665B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$11

    ld c, a
    dec [hl]

jr_020_65F2:
    daa
    dec de
    rlca
    nop
    rrca
    ld bc, $000F
    rrca
    inc b
    rlca
    ld bc, $0007
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    ret nz

    nop
    db $F4
    xor b
    ld a, [c]
    xor h
    db $E4
    ret c

    ldh [rP1], a
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$50
    ld [hl+], a
    inc e
    ccf
    ld c, $4F
    ld [hl-], a
    ld b, a
    jr c, @+$27

    ld a, [de]
    ld a, $00
    nop
    nop
    nop
    nop
    inc de
    nop
    inc bc
    nop
    inc bc
    ld bc, $0107
    add hl, bc
    ld b, $10
    rrca

Jump_020_663C:
    ld de, $0F0E
    nop
    ret z

    nop
    ld h, b
    add b
    ldh [$C0], a
    ldh a, [$C0]
    ret z

    or b
    add h
    ld a, b
    call nz, $F838
    nop
    jr nc, jr_020_6661

    inc c
    inc bc
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca

jr_020_665B:
    inc b
    rlca
    nop
    inc b
    nop
    inc c

jr_020_6661:
    ldh a, [$30]
    ret nz

jr_020_6664:
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rLCDC]
    ldh a, [$60]
    ldh a, [rP1]
    ld h, b
    nop
    ld a, [hl]
    inc e
    ld a, $04
    inc h
    jr jr_020_66BB

    jr c, jr_020_66C3

    inc [hl]
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    db $FC
    inc c
    ldh a, [$30]
    ret nz

    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$50
    inc de

jr_020_6691:
    nop
    ld c, $01
    inc bc
    ld bc, $0103
    rrca
    ld bc, $0C13
    jr @+$09

    rrca
    nop
    ret z

    nop
    jr nc, jr_020_6664

    ldh [$C0], a
    ldh [$C0], a
    ld hl, sp-$40
    db $E4
    sbc b
    adc h
    ld [hl], b
    ld hl, sp+$00
    jr jr_020_66CA

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_66BB:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_020_66C3

jr_020_66C3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_66CA:
    nop

jr_020_66CB:
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    rlca
    nop
    rrca
    nop
    rra
    ld [$0C1F], sp
    rrca
    inc bc
    rlca
    nop
    inc b
    nop
    ldh [$C0], a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    add b
    nop
    add b
    nop
    rrca
    rlca
    ccf
    rrca
    ld c, a
    scf
    ld b, a
    ld a, [hl-]
    inc hl
    inc e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    jr jr_020_66CB

    jr c, jr_020_6691

    ld [hl], b
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    rra
    inc bc
    inc bc
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    rlca
    inc bc
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld a, b
    nop
    ld c, b
    jr nc, jr_020_676D

    db $10
    ld a, h
    jr nc, jr_020_67B7

    nop
    ld b, e
    inc a
    ld b, c
    ld a, $7F
    nop
    rlca
    inc bc
    rrca
    nop
    rra
    nop
    ccf
    jr jr_020_6788

    jr jr_020_676A

    inc bc
    rlca
    nop
    inc b
    nop
    ldh [$C0], a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh [rP1], a
    add b
    nop
    add b
    nop
    rrca
    rlca
    ccf
    rrca
    ld c, a
    inc sp
    ld b, a
    add hl, sp
    inc hl
    inc e

jr_020_676A:
    ld [de], a
    inc c
    inc c

jr_020_676D:
    nop
    nop
    nop
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $88B8
    ld [hl], b
    sub b
    ld h, b
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

jr_020_6788:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_67B7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    nop
    ld hl, sp+$03
    rst $20
    rrca
    rst $18
    inc b
    ld hl, sp+$21
    jp $8F47


    adc a
    rra
    rra
    ccf
    ld a, a
    rst $38
    ld hl, sp-$04
    ldh [$F0], a
    ld bc, $5EFE
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    jp Jump_020_7C3C


    rst $38
    cp $FF
    ld l, [hl]
    sbc a
    cp a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    pop bc
    ld a, $BC
    ld a, a
    ld a, [hl]
    rst $38
    cp h
    ld h, e
    adc $31
    sub a
    ld l, b
    pop bc
    ld a, [hl]
    xor b
    ld [hl], a
    call z, $8733
    ld a, b
    and e
    ld a, h
    and $19
    ld a, b
    add a
    ld e, $E1
    ret nz

    ccf
    ldh [$1F], a
    inc [hl]
    rlc d
    rst $38
    add c
    ld a, a
    add hl, de
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ccf
    cp a
    sbc a
    sbc a
    ld b, l
    push bc
    ld b, d
    rst $38
    ld a, $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld b, d

jr_020_687F:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $F0
    add hl, bc
    ldh [rIF], a
    and $07
    ldh a, [rNR32]
    nop
    inc a
    jr jr_020_690D

    jr nc, jr_020_687F

    ld [hl], b
    db $E4
    ld a, b
    ld [c], a
    ld a, h
    and d
    ld a, h
    ld d, c
    cp [hl]
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop af
    rrca
    ld [c], a
    ld e, $CB
    inc a
    call c, $9733
    ld l, [hl]
    ld bc, $01FE
    cp $0D
    cp $3D
    cp $79
    cp $01
    cp $03
    db $FC
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc a
    rst $38
    ld e, $FF
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ld e, [hl]
    jr nz, jr_020_6929

    jr nz, @+$70

    nop
    ld c, [hl]
    nop
    ld e, $00
    ld a, $00
    ld l, $00
    ld e, $80
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
    rra
    cp a
    ccf
    cp a
    jr c, jr_020_6981

    jr c, jr_020_6984

    inc a
    inc a
    sbc h
    ld a, $1E

jr_020_690D:
    sbc [hl]
    ld c, [hl]
    sbc a
    pop bc
    ldh [$03], a
    add b
    add hl, de
    nop
    dec a
    nop
    ld [hl], l
    ld c, $7F
    inc bc
    jp $3800


    nop
    cp $FF
    and $FF
    ld b, c
    rst $38
    sbc $3F
    cp a

jr_020_6929:
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    or e
    ld a, h
    cp $FF
    db $FD
    cp $42
    db $FD
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $7F
    ld e, b
    rst $20
    sub b
    ld a, a
    sub $39

jr_020_6944:
    xor e
    ld e, h
    ret nz

    ld a, a
    ldh a, [$7F]
    add sp, $37
    add b
    ld a, a
    call nz, $D07B
    cpl
    ld b, $FF
    sbc h
    ld a, l
    inc l
    db $DD
    nop
    ei
    jr @+$01

    inc e
    rst $38
    ld a, [hl-]
    ei
    nop
    rst $38
    jr nz, jr_020_6944

    ld b, b
    ret nz

    nop
    add b
    ld b, b
    ret nz

    and b
    ldh [rBCPS], a
    ld a, a
    sub l
    sub l
    ld a, $FF
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, d
    rst $38
    rra

jr_020_6981:
    nop
    daa
    rra

jr_020_6984:
    ld e, a
    ccf
    halt
    add hl, sp
    xor c
    halt
    call nc, $D66F
    ld l, a
    xor d
    ld [hl], a
    ld l, c
    sbc [hl]
    add hl, sp
    adc $D1
    xor $E9
    or $7B
    db $F4
    or a
    ld a, b
    or [hl]
    ld a, b
    and h
    ld a, b

jr_020_69A0:
    ld h, e
    sbc h
    ld e, c
    ld l, [hl]
    xor l
    or [hl]
    and l
    ld a, d
    ld h, e
    sbc h
    ld e, c
    ld l, [hl]
    xor l
    or [hl]
    add l
    ld a, d
    rrca
    ldh a, [$87]
    ld hl, sp+$07
    ld hl, sp-$09
    ld [$F00F], sp
    add a
    ld hl, sp+$07
    ld hl, sp-$01
    nop
    ld b, b
    ld a, $80
    ld a, a
    cp d
    ld a, e
    add h
    ld a, h
    add c
    ld a, a
    rst $18
    and b
    ldh [$DF], a
    rst $28
    jr nc, jr_020_69ED

    add b
    ld [$06C0], sp
    ret nz

    ld c, $80
    inc e
    add b
    jr jr_020_69A0

    ld e, $44
    nop
    adc h
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

jr_020_69ED:
    ccf
    and b
    rra
    and $FC
    ret c

    cp $72
    cp $C0
    cp $04
    cp $92
    db $FC
    ld b, b
    db $FC
    dec b
    ld hl, sp+$0F
    rst $08
    rrca
    rst $28
    ld c, $CF
    ld c, $9E
    sbc h
    ld a, $3D
    inc a
    add hl, sp
    ld a, h
    ld a, c
    ld a, b
    ld a, h
    jr @+$78

    inc c
    ld a, h
    nop
    ld hl, sp+$00
    di
    nop
    rst $20
    inc bc
    db $ED
    ld b, $D7
    ld [$7F80], sp
    ld a, $FF
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, $FF
    add hl, sp
    rst $00
    ld b, $F9
    inc bc
    db $FC
    ld bc, $BEFE
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    ld b, d
    db $FD
    db $FD
    cp $FE
    rst $38
    or e
    ld l, h
    ret z

    scf
    add [hl]
    ld a, c
    sub e
    ld l, h
    adc h
    ld [hl], e
    add $39
    jp Jump_020_713C


    ld c, $38
    ld sp, hl
    ld [de], a
    di
    inc c
    rst $38
    and b
    ld a, a
    ret c

    ccf
    ld [hl], h
    sub a

jr_020_6A5C:
    add hl, hl
    db $DB
    or b
    ld c, a

jr_020_6A60:
    ldh a, [rIE]
    rst $08
    ldh a, [$93]
    rst $28
    cpl
    ret nc

    ld e, a
    and b
    ld a, a
    add b
    cp $01
    ld a, [c]
    dec c
    nop
    rst $38
    inc a
    rst $38
    ld b, [hl]
    rst $38
    ld d, d
    rst $38
    ld a, [de]
    cp e
    ld b, b
    rst $38
    and l
    ld h, l
    ret nz

    ccf
    ld e, [hl]
    ccf
    ld l, l
    ld e, $33
    inc c
    rra
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    xor b
    ld [hl], b
    adc b
    ld [hl], b
    ld d, b
    ldh [$90], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_020_6A5C

    and b
    ret nz

    jr nz, jr_020_6A60

    ld [bc], a
    ld a, h
    nop
    rst $38
    ld e, [hl]
    rst $18
    jr nc, jr_020_6AE7

    add b
    rst $38
    db $FD
    ld [bc], a
    ld [bc], a
    cp $F7
    inc c
    cp b
    ld a, a
    sbc b
    ld a, a
    adc b
    ld a, a
    adc h
    ld a, a
    add $3F
    ldh [$1F], a
    db $FC
    inc bc
    rst $38
    nop

jr_020_6AC0:
    ld b, b
    ld a, $8E
    ld a, a
    cp c
    ld a, c
    add [hl]
    ld a, [hl]
    pop bc
    ld a, $FE
    nop
    db $FC
    add h
    rst $38
    nop
    rst $08
    jr nc, jr_020_6AC0

    ld [hl-], a
    db $DB
    inc h
    xor e
    ld b, h
    ld [$4F05], a
    ld bc, $004F
    ld c, $00
    add b
    rra
    call nc, Call_020_4A03
    add c
    and l

jr_020_6AE7:
    ld b, b
    sub l
    ld h, b
    ld d, l
    and b
    ld [$9A01], a
    dec b
    ld bc, $ABF8
    ld d, b
    db $D3
    nop
    ld h, [hl]
    ld bc, $0265
    ld d, [hl]
    and c
    ld c, e
    sub b
    or l
    ld c, b
    ld a, c
    ld a, b
    ld a, b
    ld a, h
    inc a
    ld a, [hl]
    ld e, $3F
    adc a
    rra
    rlca
    adc a
    add b
    ld bc, $0000
    rst $18
    nop
    rst $38
    nop
    rra
    nop
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
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
    ld b, e
    cp h
    ld a, h
    rst $38
    cp $FF
    ld a, [hl]
    rst $38
    cp h
    ld a, a
    ld b, c
    cp [hl]
    ld c, $F1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_6B3F:
    rst $38
    inc e
    inc bc
    ld b, $01
    ld c, [hl]
    ld bc, $0003
    sbc a
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    sbc d
    ld h, a
    rst $00
    ccf

jr_020_6B54:
    ld l, [hl]
    sbc a
    jr jr_020_6B3F

jr_020_6B58:
    ld b, $FF
    call z, $F03F
    rrca
    rra
    nop

jr_020_6B60:
    nop
    ld l, h
    ld bc, $07F0
    nop
    ld e, $0B
    and b
    rra
    db $D3
    inc c
    inc a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    adc e
    nop
    sub $00
    cp a
    nop
    db $DB
    inc b
    ld [hl], l
    add d
    ld sp, hl
    ld b, $02
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    and b
    ret nz

    jr nz, jr_020_6B54

    and b
    ret nz

    jr nz, jr_020_6B58

    and b
    ret nz

    jr nz, @-$3E

    and b
    ret nz

    jr nz, jr_020_6B60

    nop
    nop
    nop
    ld bc, $0700
    ld bc, $020F
    ld e, $0B
    inc a
    inc e
    inc sp
    rla
    ld l, [hl]
    rst $38
    nop
    jp $A53C


    ld h, [hl]
    cp l
    ld a, [hl]
    sbc c
    ld a, [hl]
    add c
    ld a, [hl]
    jp $FF3C


    nop
    inc a
    cp $38
    cp $70
    cp $02
    db $FC
    ld [bc], a

jr_020_6BC9:
    db $FC
    inc b
    ld hl, sp+$38
    ret nz

    ldh [rP1], a
    nop
    nop
    add b
    nop
    add b
    nop
    ld c, $00
    ld [hl], h
    nop
    ld a, [$EC00]

jr_020_6BDD:
    db $10
    sub h
    ld h, b
    cp h
    ld b, b
    cp d

jr_020_6BE3:
    ret nz

    or $80
    or $80
    cp $00
    or $18
    ld h, [hl]
    jr jr_020_6BDD

    jr nc, @-$20

    jr nz, jr_020_6BC9

    jr nz, jr_020_6BE3

    nop
    adc $00
    ld e, $00
    ld a, $00
    ld l, $00
    ld e, $80
    push de
    ld a, [hl+]
    sub l
    ld l, e
    sub l
    ld l, e
    sub d
    ld l, l
    sub l
    ld l, [hl]
    xor [hl]
    ld [hl], a
    xor e
    ld [hl], a
    or a
    ld a, e
    ldh a, [rIE]
    rst $38
    ccf
    db $FD
    jp $FFFF


    cp $FE
    rst $38
    ccf
    push af
    rst $08
    rst $38
    rst $38
    cp $FF
    and $FF
    ld b, c
    rst $38
    ret nz

    ccf
    rra
    ldh [$3F], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$FE], a
    rst $38
    db $FD
    cp $42
    db $FD
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    and b
    ld a, a
    ld d, e
    ccf
    daa
    jr jr_020_6C63

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
    cp $8A
    db $FC
    halt
    ld hl, sp-$34
    jr nc, jr_020_6C91

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200

jr_020_6C63:
    ld bc, $0305
    ld a, [bc]
    rlca
    ld [$0C07], sp
    inc bc
    ld b, $03
    ld b, $03
    ld hl, sp+$07
    ld a, d
    add a
    ld a, e
    add a
    ld a, e
    add a
    ei
    add a
    ld sp, hl
    add a
    cp $83
    db $FD
    add d
    inc b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    add hl, bc
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    add hl, bc
    rlca
    pop bc

jr_020_6C91:
    ld a, $8E
    ld a, a
    cp c
    ld a, c
    add [hl]
    ld a, [hl]
    pop bc
    ld a, $FE
    nop
    db $FC
    add h
    rst $38
    nop
    add e
    ld a, h
    nop
    rst $38
    ld e, [hl]
    rst $18
    jr nc, jr_020_6CE7

    add b
    rst $38
    db $FD
    ld [bc], a
    ld [bc], a
    cp $F7
    inc c
    pop bc
    ld a, $80
    ld a, a
    cp d
    ld a, e
    add h
    ld a, h
    add c
    ld a, a
    rst $18
    and b
    ldh [$DF], a
    rst $28
    jr nc, jr_020_6CC1

jr_020_6CC1:
    nop
    ld b, b
    nop
    add b
    nop
    sub d
    nop
    inc l
    nop
    inc e
    nop
    xor d
    nop
    cp a
    nop
    nop
    nop
    ld bc, $0700
    nop
    adc d
    inc b
    rst $10
    nop
    ld a, l
    nop
    jp c, $FB04

    inc b
    ld l, c
    ccf
    ld [hl+], a
    rra
    sbc d
    dec h
    dec b

jr_020_6CE7:
    sub d
    ld c, c
    add h
    rst $00
    nop
    dec d
    ret nz

    xor a
    nop
    sub d
    db $FC
    ld b, [hl]
    cp b
    xor l
    ld d, b
    ld d, b
    add hl, hl
    pop de
    ld [hl+], a
    ld b, b
    and e
    ld d, d
    and c
    db $ED
    db $10
    db $DB
    dec a
    rst $18
    cp [hl]
    ld l, a
    rra
    ld [hl], a
    ld c, a
    dec sp
    daa
    ld c, $09
    inc bc
    ld [bc], a
    nop
    nop
    ld a, [$FFFA]
    ld a, a
    db $EB
    sbc a
    rst $38
    rst $38
    db $F4
    db $F4
    cp $FE
    rst $18
    ccf
    rst $38
    add b
    rst $38
    nop
    pop hl
    nop
    rra
    nop
    jp z, $C334

    nop
    rst $38

jr_020_6D2B:
    nop
    ld d, a
    jr nz, jr_020_6D2B

    nop
    nop
    rst $38
    ld b, $F9
    rrca
    or $0F
    db $FD
    rrca
    ld hl, sp+$06
    ld sp, hl
    ld b, $F9
    adc e
    ld [hl], h
    rrca
    nop
    dec de
    rlca
    or a
    rrca
    ld l, a
    rra
    ld e, a
    ccf
    sub $3F
    xor c
    ld a, a
    and d
    ld e, a
    add sp, $00
    or b
    ret nz

    ret c

    ldh [$E8], a
    ldh a, [$FC]
    ldh a, [$D4]
    ld hl, sp-$5C
    ld hl, sp+$52
    db $FC
    ld a, [bc]
    rlca
    inc c
    rlca
    inc d
    rrca
    inc d
    rrca
    ld a, [de]
    rlca
    dec c
    inc bc
    ld b, $01
    ld bc, $5900
    and [hl]
    ld a, e
    add h
    rst $38
    nop
    sbc $00
    call c, $0800
    nop
    ld [$00C0], sp
    inc hl
    inc de
    rrca
    ld de, $130F
    rrca
    ld de, $130F
    rrca
    inc de
    rrca
    dec de
    rlca
    ld de, $010F
    cp $E0
    rst $38
    ld e, $1F
    ld [bc], a
    inc bc
    ld b, $07
    cp $FF
    jr nc, @+$01

    nop
    rst $38
    add $39
    sbc c
    ld [hl], a
    or e
    ld l, a
    and d
    ld e, [hl]
    pop de
    ccf
    add b
    ld a, a
    sub b
    ld a, a
    or b
    ld a, a
    ld h, h
    sbc h
    inc e
    xor $C8

jr_020_6DB5:
    or $44
    ld a, d
    adc b
    db $FC
    inc c
    cp $0C
    cp $1C
    cp $F7
    nop
    cp [hl]
    nop

jr_020_6DC4:
    rst $38
    nop
    rst $30
    ld [$10AF], sp
    ld a, [hl]
    db $10
    ld a, a
    jr nc, @-$0F

    jr nc, jr_020_6DC4

    inc c
    push af
    ld c, $F5
    ld c, $DD
    ld c, $FD
    ld c, $DD
    ld c, $B9
    ld c, $BB
    inc c
    di
    nop
    pop hl
    inc c
    call z, $CC1A
    ld [de], a
    call $FD20
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $E3
    nop
    add c
    ld e, h
    sbc h
    ld a, $3E
    ld a, a
    ld d, a
    ld a, a
    ld c, e
    ld a, a
    ld [hl+], a
    ld a, a
    inc b
    ld a, $5A
    inc h
    inc a
    ld b, d
    ld h, [hl]
    jr jr_020_6E61

    inc a
    ld h, [hl]
    inc a

jr_020_6E0A:
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    jr jr_020_6E36

    inc a
    ld b, d
    ld h, [hl]
    jr jr_020_6E71

    inc a
    ld h, [hl]
    inc a
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld d, [hl]
    pop hl
    inc de
    ldh [$D3], a
    jr nz, jr_020_6E0A

    nop
    ld h, c
    nop
    jr nz, jr_020_6E2C

jr_020_6E2C:
    jr nz, jr_020_6DB5

    nop
    rlc b
    nop
    nop
    nop
    inc bc
    nop

jr_020_6E36:
    inc b
    inc bc

jr_020_6E38:
    dec bc
    inc b
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ret nc

    ld a, a
    xor c
    ld e, [hl]
    xor b
    ld d, a
    push de
    ld a, [hl+]
    ld [$FF15], a
    nop
    db $DD
    ld a, $BA
    ld [hl], a
    add d
    db $FC
    ld a, [hl+]
    db $F4
    ld b, d
    db $FC
    ld d, $E8
    add h
    ld a, b
    inc c
    ldh a, [$A8]
    ld d, b
    ret c

    jr nz, @+$42

jr_020_6E61:
    cp a
    and b
    ld e, a
    cp b
    ld h, a
    ld e, [hl]
    add hl, sp
    jr c, jr_020_6E71

    ld c, $01
    inc bc
    nop
    ld bc, $0000

jr_020_6E71:
    ld c, $E1
    nop
    cp $00
    jr c, jr_020_6E38

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    rlca
    ld de, $1A0F
    rlca
    ld de, $130F
    rrca
    add hl, sp
    rlca
    ld e, d
    dec h
    cp c
    ld b, [hl]
    add c
    cp $81
    cp $81
    cp $C5
    cp $ED
    cp $79
    cp $83
    ld a, h
    rst $38
    nop
    ld b, $39
    ld a, [de]
    halt
    dec [hl]
    ld l, l
    dec h
    ld e, [hl]
    ld b, $39
    ld a, [de]
    halt
    dec [hl]
    ld l, l
    ld hl, $FF5E
    nop
    add e
    ld a, h
    ld a, l
    cp $85
    add [hl]
    dec b
    ld b, $05
    ld b, $65
    ld h, [hl]
    sbc c
    cp $CF
    jr nc, @-$11

    ld [hl-], a
    db $DB
    inc h
    xor e
    ld b, h
    ld [$4F05], a
    ld bc, $004F
    ld c, $00
    inc sp
    inc c
    ld l, e
    inc e
    ld h, a
    jr jr_020_6F0E

    ld [$003E], sp
    ld b, $00
    nop
    ld b, b
    nop
    jp hl


    pop hl
    inc c
    call z, $DA1E
    ld e, $10
    ld e, $C0
    inc c
    pop hl
    inc c
    add b
    ld d, $C0
    add hl, hl
    add b
    inc e
    pop bc
    inc d
    add b
    ld d, $00
    ld d, l
    nop
    xor a
    add b
    ld l, e
    rst $30
    ld [$38C7], sp
    ld h, [hl]
    dec a
    ld h, a
    dec a
    ld a, [hl]
    dec a
    ld a, a
    inc a
    ld a, [hl]
    inc a
    ld b, d
    inc a
    ld a, [hl]
    inc a

jr_020_6F0E:
    ld b, d
    inc a
    ld h, [hl]
    cp l
    rst $20
    cp l
    ld a, [hl]
    cp l

jr_020_6F16:
    rst $38
    inc a

jr_020_6F18:
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

    jp c, Jump_020_663C

jr_020_6F29:
    inc a
    ld e, d
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ccf
    nop
    or b
    ld l, a
    sbc c
    ld h, [hl]
    rst $08
    jr nc, jr_020_6F29

    dec e
    ld sp, hl
    ld b, $FE
    ld bc, $00FF
    rst $38
    nop
    sbc b
    ld h, b
    or b
    ld b, b
    jr nc, jr_020_6F16

    jr z, jr_020_6F18

    inc hl
    ret nz

    or a
    ld b, b
    rra
    ldh [$9F], a
    ld h, b
    ret nz

    ld a, a
    and b
    ld e, a
    ldh [$3F], a
    ldh a, [$2F]
    ret c

    daa
    ld a, h
    inc de
    ld a, [hl-]
    dec c
    dec e
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret z

    ld [bc], a
    add b
    dec de
    adc d
    db $EC
    inc de
    ld e, l
    ld [hl+], a
    ld a, l
    ld [bc], a
    sbc c
    ld h, [hl]
    ld [hl], e
    inc c
    cpl
    db $10
    jr jr_020_6F8E

jr_020_6F8E:
    nop
    nop
    nop
    add $18
    ld bc, $007C
    sbc a
    ld h, b
    cp a
    ret nz

    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    jp z, $03FF

    db $FC
    ld h, c
    cp $9D
    sbc [hl]
    dec b
    ld b, $0D
    ld c, $FD
    cp $31
    cp $01
    cp $06
    add b
    ld bc, $0140
    or b
    nop
    db $EC
    nop
    db $FC
    nop
    or [hl]
    nop
    db $FD
    nop
    rst $38
    nop
    cp $01
    db $EC
    ld bc, $07F8
    ldh a, [$0E]
    and h
    inc b
    ret z

    jr nc, jr_020_6FDE

jr_020_6FDE:
    ld b, b
    nop
    ld a, [de]
    adc h
    inc a
    adc b
    inc l
    sub b
    inc h
    db $10
    jr c, jr_020_6FEA

jr_020_6FEA:
    ld a, b
    nop

jr_020_6FEC:
    ld d, b
    nop

jr_020_6FEE:
    ld h, b
    nop
    nop
    ld c, [hl]
    add b
    inc bc
    ld hl, sp+$00
    rst $08
    jr nc, jr_020_6FEE

    rrca
    jr c, jr_020_7003

    rlca
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_020_7003:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    db $FD
    daa
    db $FD
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rrca
    rrca
    jr nc, @+$32

    rst $08
    rst $08
    jr nc, jr_020_7067

    jp $87DC


    cp b
    ld h, b
    ld a, a
    rrca
    ccf
    cp $FE
    ld bc, $FE01
    cp $01
    db $FD
    ld hl, sp+$06
    pop hl
    dec e
    inc bc
    ei
    ld hl, sp-$04
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b

jr_020_7046:
    jr nz, jr_020_7068

    and b
    and b
    jr nz, jr_020_6FEC

    jr nz, jr_020_6FEE

    jr nz, @+$62

    ld bc, $0019
    jr jr_020_706D

    jr jr_020_706F

    jr jr_020_7061

    jr nc, jr_020_7063

    jr nc, @+$32

    jr nc, jr_020_708F

    jr nc, jr_020_7061

jr_020_7061:
    nop
    nop

jr_020_7063:
    nop
    ld bc, $0201

jr_020_7067:
    ld [bc], a

jr_020_7068:
    dec b
    dec b
    ld a, [bc]
    dec bc
    inc d

jr_020_706D:
    rla
    inc d

jr_020_706F:
    dec d
    nop
    nop
    rra
    rra
    ldh [$E0], a
    rra
    rra
    ldh [rIE], a
    rra
    ldh [$7F], a
    add b
    rrca
    ldh a, [rP1]
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
    ld hl, sp+$07
    nop

jr_020_708F:
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ld d, b
    ld d, b
    jr z, jr_020_7046

    ld c, b
    ld c, b
    ld hl, $213F
    ccf
    ld b, d
    ld a, a
    add d
    rst $38
    inc b
    rst $38
    ret nc

    rst $38
    ld bc, $FEFF
    cp $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$C0], a
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06FF], sp
    rst $38
    ld hl, $01FF
    rst $38
    inc de
    db $FD
    rrca
    rst $38
    ld bc, $02FE
    db $FC
    ld a, h
    sub b
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    ld a, b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $C3FF
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ld a, [$1FF5]
    ld hl, sp+$1F
    ld a, [c]
    rra
    ldh a, [$1F]
    rst $30
    rra
    or $3F
    cp $7F
    jp nz, $04C3

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_020_7144

    nop
    jr nz, jr_020_7123

jr_020_7123:
    jr nz, jr_020_7125

jr_020_7125:
    jr nz, jr_020_7127

jr_020_7127:
    jr nz, jr_020_7129

jr_020_7129:
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_020_713C:
    nop
    ld [bc], a
    nop
    ld [bc], a
    db $10
    ld d, b
    db $10
    ld d, b

jr_020_7144:
    db $10
    ld d, b
    ld [$0828], sp
    ld [$5444], sp
    inc b
    inc b
    inc h
    inc h
    jr nc, jr_020_7152

jr_020_7152:
    db $10
    ld h, b
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    inc de
    inc de
    db $10
    inc d
    ld [hl+], a
    ld a, [hl+]
    jr nz, @+$22

    ld b, h
    ld b, h
    add h
    sub h
    add b
    add b
    add b
    add b
    add b
    rst $38
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
    nop
    nop
    ld a, a
    rst $38
    add b
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_020_7189

jr_020_7189:
    jr nc, jr_020_718B

jr_020_718B:
    stop
    stop
    db $10
    adc b
    ret z

    ld [$0808], sp
    jr z, jr_020_719B

    inc b
    inc b
    inc b
    inc b

jr_020_719B:
    inc b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    rrca
    ldh a, [$1F]
    ldh a, [$1F]
    ldh a, [$1F]
    pop af
    rra
    pop hl
    ccf
    pop hl
    ld a, a
    pop hl
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rIE]
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    db $FC
    db $FC
    ld hl, sp-$18
    rst $38
    ld a, [c]
    rst $38
    ld a, [$FBFF]
    rst $38
    ld sp, hl

jr_020_71F8:
    rst $38
    ei
    cp $FE
    jr c, jr_020_7236

jr_020_71FE:
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
    ld bc, $20FF
    jr nz, jr_020_7253

    ld d, b
    ld b, b
    ld h, e
    ld b, b
    ld h, [hl]
    add b
    and h
    add b
    call nz, $C480
    nop
    ld c, b
    nop
    ret nz

    nop
    add b
    nop
    ld [$1008], sp
    db $10
    ld [$1000], sp
    nop
    jr nc, jr_020_722F

jr_020_722F:
    jr nz, jr_020_7231

jr_020_7231:
    ld [bc], a
    nop
    ld bc, $0000

jr_020_7236:
    nop
    nop
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
    ld [de], a
    ld [de], a
    ld de, $0891
    adc b
    ld [$008A], sp
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop

jr_020_7253:
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_020_727C

    jr nz, jr_020_71FE

    jr jr_020_71F8

    sub b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld hl, $21FF
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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

jr_020_727C:
    nop
    rst $38
    nop
    rst $38
    nop
    stop
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
    ld [$08FF], sp
    rst $38
    ld bc, $08FF
    rst $38

jr_020_7298:
    inc b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh a, [$F0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$02FF], sp
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_7298

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR42]
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $203F
    ccf
    inc hl
    ccf
    rra
    inc e
    inc de
    di
    rla
    db $F4
    rra
    ld hl, sp+$3F
    ldh a, [$3F]
    ldh a, [$3F]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ldh [$E0], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp-$68
    cp $1E
    rst $38
    inc de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [$100A], sp
    db $10
    db $10
    db $10
    jr nz, jr_020_732E

    jr nz, jr_020_7330

    nop
    add b
    db $10
    sub b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b

jr_020_732E:
    nop
    nop

jr_020_7330:
    rst $38
    rst $38
    ld bc, $FFFF
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    ld bc, $FFFF
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_7349

jr_020_7349:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
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
    rst $38
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
    dec d
    rra
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
    nop
    nop
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, c
    ld a, a
    ld hl, $203F
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rra
    jr nz, jr_020_7403

    jr nz, jr_020_7405

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld de, $0BFF
    rst $38
    inc b
    rst $38
    jr z, @+$01

    ld c, b
    rst $38
    inc b
    rst $38
    ld b, b
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
    jr nz, @+$01

    ld b, b

jr_020_7403:
    rst $38
    ld b, c

jr_020_7405:
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$80FF], sp
    add c
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_7420:
    inc bc
    inc bc
    dec b
    dec b
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    db $10
    db $10
    jr nz, @+$26

    ld b, b
    ld c, b
    ldh [$E0], a
    ld d, b
    ret nc

    xor b
    ld l, b
    jr z, jr_020_7420

    ret z

    ret z

    inc b
    inc b
    inc b
    inc b
    inc b
    inc d
    ld bc, $0301
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld de, $211F
    ccf
    ld sp, $393F
    cpl
    ld bc, $01FF
    rst $38
    ld hl, $21FF
    rst $38
    ld de, $11FF
    rst $38
    db $10
    rst $38
    db $10
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
    inc bc
    inc bc

jr_020_746C:
    inc e
    inc e
    jr nz, jr_020_7492

    rrca
    rrca
    inc d
    rla
    add hl, hl
    ld l, $2B
    inc l
    ret z

    db $DB
    rlca
    ld h, a
    nop
    nop
    add b
    sub b
    ldh a, [$F0]
    jr z, jr_020_746C

    sub h
    ld [hl], h
    jp z, $EA3A

    ld a, [de]
    add hl, bc
    ld sp, hl
    ldh a, [$F8]
    nop
    ld [$FF00], sp

jr_020_7492:
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
    ld h, b
    rst $38
    rrca
    ld [$101F], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr c, jr_020_752A

    ld b, l
    rst $38
    add b
    rst $38
    add d
    ccf
    ld hl, $407F
    ld a, a
    ld b, c
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    rst $38
    call nz, $80FF
    rst $38
    add b
    rst $38
    sbc $FF
    or $7F
    ld [hl], e
    ccf
    inc sp
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld e, $0F
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
    rst $38
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
    ret nc

    xor a
    ldh [$9F], a
    pop de
    xor a
    and $9B
    db $FC
    rst $08
    ld hl, sp-$21
    ld hl, sp+$77
    ld [hl], c
    ld l, a
    ld [$08FF], sp
    rst $38
    ld [$08FF], sp
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
    cpl
    inc [hl]
    ccf
    rla
    rra
    inc d
    rra
    inc d
    rra
    inc d
    rra
    rra
    rra
    dec d
    rra
    add b
    sbc b
    nop
    ld sp, $2000
    nop
    ld b, b
    nop
    ld c, b

jr_020_752A:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0109
    dec b
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
    ld a, $37
    ld l, $3B
    cpl
    dec a
    ld [hl-], a
    ld a, $26
    ld a, $1F
    dec e
    ld e, $1B
    inc e
    rla
    db $10
    rst $38
    db $10
    rst $38
    ld [$08FF], sp
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld e, b
    add d
    or d
    adc b
    xor c
    db $10
    ld de, $2220
    jr nz, jr_020_758C

    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    ret nz

    nop
    add b
    nop
    stop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    ld [bc], a
    ld a, [bc]
    nop
    ld [$0D01], sp
    nop
    inc b
    nop
    ld b, $00
    inc bc

jr_020_758C:
    nop
    ld bc, $0000
    jr jr_020_75AA

    inc b
    inc b
    ld [bc], a
    ld [de], a
    add d
    adc d
    add c
    add c
    ld b, c
    ld b, c
    nop
    nop
    jr nz, jr_020_75C0

    rst $38
    ret nz

    rst $38
    ld hl, sp+$7F
    ld h, d
    ld a, a
    ld b, b
    ld a, a
    ld b, d

jr_020_75AA:
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ccf
    ld a, $FF
    adc b
    rst $38
    call nz, $F3FF
    rst $38
    db $FC
    rst $38
    ret c

    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    db $DB

jr_020_75C0:
    ld hl, sp+$37
    db $F4
    ei
    ld hl, sp-$19
    ld a, [c]
    ld l, l
    ld a, l
    ld [hl], d
    ccf
    inc a
    rra
    ld c, $07
    inc bc
    inc b
    rst $38
    inc bc
    cp $2A
    rst $10

jr_020_75D6:
    sub a
    ld l, d
    ld c, a
    or a
    rst $38
    rrca
    rst $38
    ld a, h
    ld hl, sp-$10
    inc b
    ei
    ld [$A8FF], sp
    ld e, a
    ld e, c
    xor [hl]
    db $FC
    rra
    rst $38
    db $FC
    rst $38
    and $07
    inc bc
    ld h, h
    ld e, e
    ld l, b
    ld e, a
    ld a, [c]
    db $DD
    db $F4
    xor e
    ldh [$BF], a
    ldh a, [$CF]
    ld [$D4D5], a
    db $EB
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$090F], sp
    rlca
    rlca
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_020_75D6

    and e
    rst $38
    ld [hl], h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$C0C0], sp
    xor $2E
    rst $38
    ld de, $11FF
    rst $38
    dec hl
    rst $38
    add h
    rst $38
    ld [$08FF], sp
    ld [hl], a
    ld [hl], a
    rst $38
    adc b
    rst $38
    ld [$12FF], sp
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
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
    inc bc
    inc bc
    inc c
    rrca
    inc bc
    inc bc
    inc b
    rlca
    ld [$100F], sp
    rra
    db $10
    rra
    jr nz, jr_020_769B

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
    rst $38

jr_020_766A:
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
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$100F], sp
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_766A

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$00
    nop
    nop
    rlca
    rlca
    ld [$1708], sp
    db $10
    cpl
    nop

jr_020_769B:
    ccf
    nop
    ccf
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
    rst $38
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
    add sp, -$61
    ei
    ld d, l
    ld a, h
    ld h, a
    ld a, d
    dec l
    inc [hl]
    dec sp
    jr nc, jr_020_772B

    dec a
    ld [hl+], a
    ld a, [hl-]
    dec [hl]
    rlca
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
    rst $38
    ret


    rst $38
    ret


    rst $38
    jp hl


    ld a, a
    ld a, c
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    rst $28
    rst $38
    rst $38
    di
    di
    add b

jr_020_772B:
    add b
    nop
    nop
    nop
    nop
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ccf
    rst $38
    cp a
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rra
    jr nz, jr_020_7783

jr_020_7744:
    jr nz, jr_020_7785

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ret nz

    jr nc, jr_020_7744

    inc c
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $00FF
    rst $38

jr_020_7760:
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_020_7760

    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    jr nz, jr_020_77B1

    jr nz, jr_020_77B3

    jr nz, jr_020_77B5

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ld [$04F8], sp

jr_020_7783:
    db $FC
    inc b

jr_020_7785:
    db $FC
    inc b
    db $FC
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld bc, $20FF
    ccf
    jr nc, jr_020_77C3

    jr c, jr_020_77CD

    ccf
    jr c, jr_020_77B8

    add hl, de
    rrca
    add hl, bc
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_77B1:
    rst $38
    nop

jr_020_77B3:
    rst $38
    nop

jr_020_77B5:
    rst $38
    nop
    rst $38

jr_020_77B8:
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

jr_020_77C3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_77CD:
    rst $38
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
    ccf
    jr c, jr_020_7812

    rra
    rlca
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
    rst $38
    nop
    ret nz

    ccf
    sbc a
    ld a, a
    and b
    ld h, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld h, b

jr_020_7812:
    ret nz

    ld a, a
    cp a
    ld a, a
    ldh [$60], a
    ret nz

    ld h, b
    ldh [$7F], a
    rst $38
    ccf
    rst $38
    nop
    ld a, a
    ret nz

    rst $38
    add [hl]
    rst $30
    dec de
    db $FC
    ld l, a
    ldh a, [$3D]
    db $FC
    ld d, $F0
    ld a, b
    ld hl, sp+$2C
    cp $03
    rst $38
    sub c
    cp a
    ld a, d
    rla
    db $EC
    rst $38
    ld d, b
    rra
    inc l
    rrca
    ld e, h
    rst $18
    and h
    db $FC
    ld a, h
    cp $0A
    ldh a, [$34]
    ld hl, sp+$2E
    cp $15
    db $FC
    ld c, $FF
    add d
    ld a, a
    ret nz

    rra
    jr c, jr_020_78C2

    call c, $3C1F
    rst $38
    and b
    ccf
    ld a, b
    ld e, a
    add sp, -$01
    ld [hl], c
    cp $03
    ld de, $4733
    ld c, a
    add hl, sp
    cp $73
    ld l, h
    ei
    call nz, $E4DF
    rst $38
    and h
    ld a, a
    and b
    and h
    db $F4
    ld d, b
    ld a, [$FCB8]
    cp [hl]
    ld a, [hl]
    or $5A
    or $4B
    rst $38
    add hl, bc
    rst $38
    ld c, c
    rst $38
    add h
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    cp a
    ldh [$3F], a
    jr nc, @+$11

    ld e, h
    inc de
    inc de
    rst $38
    ld bc, $01FF
    rst $38
    inc bc
    cp $03
    cp $06
    ld a, [$F40E]
    inc a
    ret nz

    pop de
    nop
    nop
    nop
    adc e
    ld [bc], a
    ccf
    dec c
    ld e, a
    ld [bc], a
    rst $30
    ld c, $BF
    dec bc
    ld e, a
    dec b
    ccf
    nop
    ld bc, $F800
    ret c

    cp $76
    rst $38
    ld l, b
    rst $38
    sub b
    ld a, [$F460]
    jp nc, $1AFB

    ld a, a

jr_020_78C2:
    dec l
    rst $38
    dec de
    cp a
    dec b
    ld e, a
    ld [bc], a
    ccf
    nop
    dec c
    nop
    inc hl
    nop
    nop
    ld h, b
    or $94
    db $FD
    ld l, b
    cp $A0
    db $F4
    ld d, b
    cp $00
    db $FC
    nop
    ld d, b
    nop
    ld [bc], a
    rst $38
    nop
    ret nz

    ld b, b
    adc a
    nop
    sub b
    nop
    xor a
    rrca
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    cpl
    sbc a
    db $10
    adc a
    rrca
    ret nz

    ld b, b
    rst $38
    ld a, a
    jp c, $805A

    nop
    rst $38
    nop
    rst $30
    rst $38
    sbc $FF
    or d
    rst $38
    ret nc

    rst $38
    call nc, $E1FF
    cp $E4
    ei
    and [hl]
    ld sp, hl
    db $DD
    ld a, [c]
    ld b, a
    ld hl, sp-$79
    ld hl, sp+$4E
    pop af
    rrca
    ldh a, [$97]
    add sp, -$71
    ldh a, [$8F]
    ldh a, [$2F]
    ret nc

    rra
    ldh [$B7], a
    ret z

    sbc a
    ldh [$1F], a
    ldh [$AF], a
    ret nc

    sbc a
    ldh [$B7], a
    ret z

    adc a
    ldh a, [$8F]
    ldh a, [$97]
    add sp, $0F
    ldh a, [$4E]
    pop af
    add a
    ld hl, sp+$47
    ld hl, sp-$23
    ld a, [c]
    and [hl]
    ld sp, hl
    db $E4
    ei
    pop hl
    cp $D4
    rst $38
    ret nc

    rst $38
    or d
    rst $38
    sbc $FF
    rst $30
    rst $38
    rst $38
    rst $38
    sbc $FF
    and a
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    set 7, h
    pop hl
    cp $84
    ei
    and a
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    add h
    ei
    sbc e
    ld h, h
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    scf
    rst $38
    nop
    rst $38
    and l
    ld e, d
    ld a, e
    add h
    sbc $21
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
    cp $7F
    db $ED
    ld a, a
    ld a, [c]
    ld a, a
    ret c

    ld a, a
    push af
    ld a, a
    add sp, $7E
    add sp, $7D
    ldh a, [$7C]
    ldh [$7C], a
    add sp, $7A
    ldh [$7C], a
    ret nc

    ld a, b
    ret nz

    ld a, d
    ldh [$78], a
    ret nz

    ld [hl], b
    ret nz

    ld [hl], h
    ldh [$74], a
    ldh [$78], a
    ret nz

    ld a, b
    ret nz

    ld [hl], d
    ldh [$7A], a
    ret nz

    ld [hl], b
    ldh [$7C], a
    add sp, $7D
    ldh a, [$7E]
    add sp, $7F
    ld hl, sp+$7F
    ld a, [c]
    ld a, a
    call nc, $FB7F
    ld a, a
    db $EC
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    add b
    ld a, a
    add b
    ld b, b
    cp a
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    db $EC
    ld a, a
    ld a, [c]
    ld a, a
    ldh [$7F], a
    call nz, $D17E
    ld a, a
    add sp, $7F
    rst $38
    nop
    rst $38
    rst $38
    db $D3
    rst $38
    nop
    ld b, d
    nop
    jr z, jr_020_79EB

jr_020_79EB:
    add d
    nop
    ld d, b
    nop
    xor $FF
    nop
    rst $38
    rst $38

jr_020_79F4:
    ld c, h
    rst $38
    nop
    inc l
    nop
    ld bc, $4400
    nop
    stop
    ld l, c
    sub $7F
    rst $38
    ld a, a
    rst $38
    nop
    add b
    ld a, a
    add b
    ld b, b
    cp a
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    inc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nc, jr_020_7A47

    ld h, b
    ccf
    ldh [$7F], a
    pop hl
    ld a, a
    ld a, e
    ld a, $C0
    nop
    jr nc, jr_020_79F4

    ld [$04F0], sp
    ld hl, sp+$02
    db $FC
    ld bc, $83FE
    cp $C2
    ld a, h
    ld a, a
    inc a
    cp a
    ld a, h
    db $FD
    ld e, $7E

jr_020_7A47:
    cpl
    cp a
    ld [hl], b
    rst $18
    ccf
    ld [hl], b
    rrca
    rra
    nop
    add $3C
    call $BF3E
    ld a, b
    ld a, [hl]
    db $F4
    db $FD
    ld c, $F3
    db $FC
    ld c, $F0
    ld hl, sp+$00
    nop
    rlca
    rra
    jr nz, jr_020_7AA4

    ld e, a
    ld [hl], c
    dec sp
    ld l, b
    ld a, $70
    or h
    ld [hl], b
    cp h
    ld h, b
    cp d
    ld [hl], h
    cp [hl]
    ld [hl], b
    cp a
    ld l, l
    cp a
    halt
    ccf
    ld a, e
    ccf
    ccf
    ld e, a
    rra
    jr nz, jr_020_7A7F

jr_020_7A7F:
    rlca
    ld a, a
    nop
    ldh a, [rP1]
    add sp, $05
    db $E4
    inc de
    and d
    jr @-$4D

    inc e
    or e
    ld l, [hl]
    cp a
    ld l, h
    cp $00
    ccf
    nop
    rrca
    nop
    rlca
    ldh a, [rNR13]
    add sp, $2B
    ld b, h
    ld c, c
    inc d
    adc c
    ld [hl], $9F
    ld [hl], b
    rst $18
    ld a, [hl]

jr_020_7AA4:
    db $D3
    ld a, a
    push hl
    ld a, a
    pop hl
    scf
    ldh a, [$3F]
    rst $38
    rra
    ld a, a
    nop
    dec de
    ld [hl], d
    sbc l
    db $F4
    ld sp, hl
    ld l, [hl]
    di
    ld e, $E7
    cp $1F
    db $FC
    rst $38
    ldh a, [$FE]
    nop
    ld a, a
    nop
    xor $03
    rst $00
    ld de, $38C3
    adc c
    ld [hl], $95
    ld h, d
    and d
    ld b, c
    or d

jr_020_7ACF:
    jr jr_020_7ACF

    nop
    rlca
    ld b, b
    dec bc
    ldh [$93], a
    call nz, $8CA7
    rst $38
    ld e, d
    rst $38
    ld h, $FD
    inc e
    ld a, [$FF5C]
    ld h, d
    cp a
    ld a, [hl]
    rst $18
    ld a, b
    cp $33
    db $FC
    ld b, $FF
    rrca
    ld a, a
    nop
    ld sp, hl
    ld a, [bc]
    db $FD
    ld b, $DD
    ld h, [hl]
    xor a
    jp nz, $104F

    sbc a
    inc [hl]
    rst $38
    xor b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $DD
    rst $38
    dec hl
    rst $38
    ld b, h
    rst $28
    nop
    ld e, c
    nop
    add h
    ldh a, [$3C]
    ldh a, [$3C]
    add sp, $3A
    ldh a, [$3C]
    ldh a, [$3A]
    add sp, $39
    ldh a, [$3C]
    ldh [$3D], a
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0800
    ld [bc], a
    rla
    ld bc, $0B4F
    cpl
    rlca
    ld a, $07
    ld hl, sp+$3F
    ret nz

    ld a, a
    sbc a
    ld a, e
    cp a
    halt
    cp a
    db $ED
    ccf
    ldh a, [$3F]
    db $F4
    ld a, $E0
    rra
    db $FC
    inc bc
    cp $F9
    xor [hl]
    db $FD
    ld b, $AD
    rrca
    ld a, h
    rla
    inc a
    rrca
    cp h
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    sbc h
    ld h, e
    ld h, d
    sbc l
    ld [$40F7], sp
    rst $38
    ld h, $DB
    ld hl, $54FF
    rst $38
    cp d
    rst $38
    rst $28
    rst $38
    db $FD
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
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    ld h, b
    add b
    or b
    ld b, b
    sbc b
    ldh [rP1], a
    nop
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    cp b
    ld b, b
    inc l
    ret nc

    ld e, h
    and b
    add [hl]
    ld hl, sp+$2E
    ret nc

    ld b, a
    ld hl, sp+$09
    or $A2
    db $FD
    ret z

    rst $38
    or h
    rst $38
    jp hl


    rst $38
    db $FC
    rst $38
    ld sp, hl
    rst $38
    db $EC
    rst $38
    ld a, [$FCFF]
    rst $38
    or $FF
    db $FD
    rst $38
    ld a, [$FCFF]
    rst $38
    ld b, $F8
    sub [hl]
    add sp, -$74
    ld [hl], b
    inc l
    ret nc

    inc c
    ldh a, [$94]
    ld l, b
    ld d, h
    add sp, $0C
    ldh a, [$C5]
    ccf
    and a
    ld e, a
    ld a, [de]
    rst $38
    dec l
    rst $38
    and a
    rst $38
    rra
    rst $38
    or a
    rst $38
    ccf
    rst $38
    db $FC
    inc bc
    ldh [$1F], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$78], a
    add b
    ld [$C040], a
    nop
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
    ld bc, $0200
    nop
    ld bc, $0500
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    rla
    nop
    cp a
    nop
    ld l, a
    nop
    ld a, a
    nop
    xor a
    nop
    ld e, a
    nop
    rla
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $FD
    nop
    rst $28
    nop
    or d
    nop
    rst $08
    nop
    or l
    nop
    add hl, bc
    nop
    ld b, h
    nop
    ld bc, $9400
    nop
    nop
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
    db $F4
    nop
    ld a, [$F400]
    nop
    xor d
    nop
    ret nc

Jump_020_7C3C:
    nop
    call nz, $2000
    nop
    sub b
    nop
    ld b, b
    nop
    stop
    add b
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
    sub h
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    nop
    rst $38
    nop
    ld [hl], l
    nop
    nop
    nop
    ld c, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ccf
    ldh a, [$1F]
    add sp, $1F
    or h
    rlca
    ld a, [hl]
    rlca
    ld l, $03
    ld c, l
    ld bc, $0017
    inc bc
    nop
    add hl, bc
    nop
    nop
    nop
    ld bc, $0000
    rrca
    inc a
    rlca
    ld e, [hl]
    rrca
    inc a
    rlca
    ld e, $0F
    inc a
    rrca
    cp h
    rlca
    ld e, $07
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    dec d
    ld [$1825], sp
    ld b, e
    dec a
    ld l, e
    dec a
    nop
    nop
    jr nc, jr_020_7CA4

jr_020_7CA4:
    ret z

    jr nc, jr_020_7CAF

    ldh a, [$94]
    ld hl, sp-$14
    ld hl, sp-$04
    cp b
    cp h

jr_020_7CAF:
    ret nc

    nop
    nop
    ld bc, $0200
    ld bc, $011E
    daa
    jr jr_020_7CDE

    ld e, $21
    rra
    ld c, e
    ccf
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    db $EC
    ret nz

    ld a, [c]
    adc h
    add $3C
    jp z, $F63C

    sbc h
    ld bc, $0600
    ld bc, $0718
    jr nz, @+$21

    jr z, jr_020_7CF9

    ld b, c
    ccf
    ld d, e
    ccf

jr_020_7CDE:
    ld l, d
    dec a
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, @-$3E

    db $10
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [rNR50]
    ld hl, sp-$4D
    ld a, l
    jp hl


    ld a, [hl]
    pop af
    ld a, [hl]
    sbc $7F
    rst $38

jr_020_7CF9:
    ld a, a
    rst $38
    inc e
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
    ld [$1400], sp
    ld [$0814], sp
    inc [hl]
    jr jr_020_7D43

    jr jr_020_7D11

jr_020_7D11:
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    ld bc, $0103
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    and b
    ret nz

    sub b
    ldh [$90], a
    ldh [$D0], a
    ldh [rP1], a
    nop
    nop
    nop
    stop
    jr z, jr_020_7D48

    add hl, hl
    db $10
    cpl
    db $10
    daa
    add hl, de
    ld b, a
    add hl, sp
    ld h, d
    inc a
    ld h, d

jr_020_7D43:
    inc a
    jp nc, $C27C

    ld a, h

jr_020_7D48:
    pop bc
    cp $A9
    cp $81
    cp $C9
    cp $03
    nop
    rlca
    nop
    rlca
    ld [bc], a
    dec bc
    ld b, $0B
    ld b, $1B
    ld c, $1B
    ld c, $31
    rra
    ret z

    ldh a, [$C8]
    ldh a, [$E4]
    ld hl, sp-$3C
    ld a, b
    db $E4
    ld a, b
    db $E4
    ld a, b
    jp nc, $F27C

    ld a, h
    ld h, a
    dec sp
    ld l, a
    dec sp
    ld e, a
    dec sp
    ld a, a
    inc sp
    cp a
    ld [hl], a
    cp [hl]
    ld h, a
    cp $67
    rst $38
    ld b, a
    adc c
    cp $4D
    cp $19
    cp $5B
    cp $9D
    cp $5D
    or $BD
    or $7F
    or $31
    rra
    ld h, e
    ccf
    ld h, e
    ccf
    ld l, c
    ccf
    db $E3
    ld a, a
    jp hl


    ld a, a
    ret nc

    ld a, a
    push af
    ld a, a
    jp nz, $EA7C

    ld a, h
    jp nz, $C67C

    ld a, h
    sub $7C
    and $7C
    adc $FC
    and $FC
    cp a
    ld d, a
    db $FD
    ld d, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    inc b
    rra
    nop
    nop
    nop
    ei
    and $7F
    xor $FF
    call z, $88FF
    rst $38
    db $10
    cp $00
    ld hl, sp+$00
    nop
    nop
    db $EB

jr_020_7DD1:
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld a, $7F
    inc a
    ld a, a
    jr @+$01

    ld bc, $007F
    rra
    nop
    xor $FC
    sbc $7C
    cp $78
    call c, $FCF8
    ldh a, [$FE]
    ldh [rIE], a
    ret nz

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    stop
    jr z, jr_020_7E08

    ld e, h
    jr c, @-$02

    nop
    nop
    nop
    nop
    nop
    jr jr_020_7E02

jr_020_7E02:
    inc [hl]
    jr @+$46

    jr c, jr_020_7DD1

    ld a, h

jr_020_7E08:
    or [hl]
    ld a, h
    xor $7C
    rst $38
    jr jr_020_7E8D

    nop
    nop
    nop
    inc b
    nop
    ld a, [bc]

jr_020_7E15:
    inc b
    rrca
    nop
    jr nc, jr_020_7E1A

jr_020_7E1A:
    ld c, b
    jr nc, jr_020_7E15

    ld h, b
    ld hl, sp+$00
    cp h
    ret nz

    call c, $EF60

jr_020_7E25:
    jr nc, jr_020_7E25

    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld h, b
    ccf
    ld l, l
    ccf
    ld l, [hl]
    ccf
    ld a, a
    dec sp
    ld a, a
    add hl, de
    ccf
    inc e
    rst $38
    nop
    ld a, a
    nop
    cp $F8
    ld e, h
    ld hl, sp+$2C
    ld hl, sp-$62
    db $FC
    xor $FC
    cp $F8
    rst $38
    jr nc, @-$02

    nop

jr_020_7E50:
    halt
    ccf
    sbc $7B
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $30
    ld c, c
    rst $30
    ld c, b
    ei
    inc e
    ld a, a
    nop
    add d
    db $FC
    ld l, d
    db $FC
    sub d
    db $FC
    ld l, d
    db $FC
    cp $F8
    cp $F8
    rst $38
    ld h, b
    db $FC
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, d
    rst $38
    ld l, l
    db $FC
    ld d, e
    db $FC
    dec [hl]
    db $F4
    ld a, [hl+]
    ld hl, sp+$3E
    db $FC
    rra
    ld a, [$FC1E]
    rrca
    db $FC
    rrca
    cp $07
    rst $38

jr_020_7E8D:
    inc bc
    rst $38
    jr nz, jr_020_7E50

    ld b, b
    cp a
    ld b, b
    rst $08
    ld h, b
    pop hl
    ld [hl], b
    ret z

    ld a, d
    ldh a, [$7C]
    ldh [$3D], a
    db $F4
    ld a, $E8
    ld a, $FC
    rra
    ld a, [$FC1E]
    rrca
    db $FC
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    ld b, b
    cp a
    ld b, b
    rst $08
    ld h, b
    pop hl
    ld [hl], b
    add sp, $3A
    db $F4
    ld a, h
    ld hl, sp+$2D
    db $FC
    ld e, $FC
    ld a, [hl+]
    db $FC
    rrca
    cp $16
    db $FD
    ld b, $FE
    dec bc
    cp $05
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    jp nz, $9D19

    ld a, h
    cp [hl]
    ld h, [hl]

jr_020_7EDA:
    ld a, l
    call $9DFF
    ld hl, sp+$10
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    rst $38
    or b
    add a
    ld h, b
    or e
    cp b
    ei
    call z, $949F
    ldh a, [rNR52]
    db $E3
    rrca
    rst $20
    ld e, $CF
    dec e
    rst $08
    jr c, jr_020_7EDA

    jr nc, @-$1F

    jr nz, @+$01

    nop
    adc a
    ld l, h
    rst $20
    ld [hl], $F7
    cp c
    di
    ret c

    ei
    call z, $84FF
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $41
    rst $18
    ld bc, $31EF
    di
    jr @+$01

    rrca
    rst $38
    inc bc
    rst $38
    nop
    ld a, a
    nop
    rst $38
    add e
    rst $38
    add b
    rst $38
    inc c
    di
    ld [hl], d
    add c
    push bc
    ld d, e
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [$8F]
    adc $C1
    ld [hl], c
    db $F4
    ld a, $FD
    dec de
    rst $38
    ld c, $FF
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, c
    rra
    sbc b
    add a
    and $E9
    ld a, a
    rst $38
    nop
    rst $38
    ld b, $F9
    rra
    ldh [$79], a
    ldh a, [$FC]
    ldh a, [$3A]
    ld sp, hl
    rra
    ld hl, sp+$1D
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    ccf
    ld h, b
    ld a, a
    ldh [rIE], a
    ld b, b
    rst $38
    ld bc, $18FF
    rst $30
    ld e, $F1
    scf
    ldh a, [$3B]
    ld hl, sp+$1C
    ld hl, sp+$2E
    db $FC
    rrca
    rst $38
    ld [$5CFF], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1F], a
    ld [hl], b
    rrca
    sbc b
    rrca
    ld e, b
    rst $38
    or a
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
    nop

jr_020_7F9E:
    rst $38
    nop
    db $FD
    sbc a
    ei
    ld c, $FF
    rrca
    ei
    ld c, $FF
    inc e
    rst $38
    inc d
    rst $38
    jr @+$01

    ld de, $C0FF
    rst $38
    sbc b
    rst $28
    jr c, jr_020_7F9E

    inc a
    rst $00
    ld l, h
    rst $08
    ld e, h
    adc a
    call c, $B01F
    cp $1A
    rst $38
    rrca
    rst $38
    dec h
    rst $38
    inc hl
    rst $38
    ld hl, $30FF
    rst $28
    jr nc, @-$0F

    ld a, b
    rlca
    xor h
    rlca
    db $EC
    rst $08
    ld a, h
    rst $38
    db $FC
    rst $38
    inc [hl]
    rst $38
    call c, $38FF
    rst $38
    ld [bc], a
    cp $23
    db $FC
    ld b, $F8
    inc e
    ldh [$3B], a
    ld [c], a
    inc sp
    ret


    ld a, a
    rst $20
    ld a, a
    db $FD
    ld a, [hl]
    rra
    jr c, @+$81

    ldh a, [$BF]
    ldh [$7F], a
    db $F4
    cp a
    db $E4
    rst $38
    and [hl]
    ei
    jp z, $96F3
