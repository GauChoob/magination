; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    inc a
    nop
    ld b, d
    inc a
    add c
    ld a, [hl]
    jp $BD3C


    ld b, d
    ld b, d
    inc a
    inc h
    jr jr_00D_4027

    nop
    inc a
    nop
    ld [hl], d
    inc a
    pop hl
    ld a, [hl]
    db $E3
    inc a
    cp l
    ld b, d
    ld b, d
    inc a
    inc h
    jr jr_00D_4037

    nop
    inc a
    nop
    ld c, [hl]
    inc a
    sbc c
    ld a, [hl]
    ei

jr_00D_4027:
    inc a
    cp l
    ld b, d
    ld b, d
    inc a
    inc h
    jr jr_00D_4047

    nop
    inc a
    nop
    ld b, d
    inc a
    adc a
    ld a, [hl]
    rst $18

jr_00D_4037:
    inc a
    cp l
    ld b, d
    ld b, d
    inc a
    inc h
    jr jr_00D_4057

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_4047:
    nop
    nop
    nop
    nop
    nop
    inc e
    inc c
    inc d
    inc e
    ld bc, $0300
    ld bc, $0306
    inc c

jr_00D_4057:
    inc bc
    ld a, [de]
    dec c
    dec a
    ld [de], a
    ld b, d
    ld hl, $0162
    ld h, h
    inc a
    call nz, $C37C
    ld a, [hl]
    pop bc

jr_00D_4067:
    ld a, a
    ret nz

    ld a, a
    ld h, b
    ccf
    inc de
    ld e, $1E
    inc c
    ld [bc], a
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, c
    ld hl, $112E
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld b, $01
    dec de
    ld b, $21
    rra
    ld e, $01
    inc h
    jr jr_00D_40B7

    jr jr_00D_40AD

    nop
    nop
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
    jr c, jr_00D_40AB

    ld b, b
    ccf
    jr nz, jr_00D_40C7

    inc hl
    rra
    inc e

jr_00D_40AB:
    rlca
    rra

jr_00D_40AD:
    ld a, [bc]
    dec hl
    rla
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]

jr_00D_40B7:
    ldh a, [$38]
    ldh [$D0], a
    ldh [$F0], a
    ret nz

    ldh a, [$E0]
    ld c, l
    inc sp
    ld [hl+], a
    dec e
    ld b, c
    ld a, $58

jr_00D_40C7:
    daa
    ld h, l
    ld a, [de]
    inc l
    inc de
    ld a, $0D
    ld e, $0D
    db $10
    ldh [rNR41], a
    ret nz

    ret nc

    jr nz, jr_00D_4067

    ld h, b
    or b
    ld b, b
    cp b
    ld b, b
    cp b
    ld d, b
    ldh a, [rP1]
    cpl
    db $10
    inc l
    inc de
    db $10
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    and b
    ld b, b
    jr nz, @-$3E

    sub b
    ld h, b
    jr nc, @-$3E

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    ld [$3007], sp
    rrca
    ld b, b
    ccf
    jr nz, jr_00D_4129

    jr nz, jr_00D_412B

jr_00D_410C:
    db $10
    rrca
    rra
    nop
    ld hl, sp+$00
    inc b
    ld hl, sp+$02
    db $FC
    inc b
    ld hl, sp+$14
    ld hl, sp+$58
    ldh a, [$58]
    ldh a, [$88]
    ld [hl], b
    db $10
    rrca
    inc c
    inc bc
    ld [$1007], sp
    rrca
    db $10

jr_00D_4129:
    rrca
    db $10

jr_00D_412B:
    rrca
    ld [$0807], sp
    rlca
    ld d, b
    and b
    ldh [rP1], a
    db $10
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    jr z, jr_00D_410C

    ld b, h
    cp b
    inc h
    ret c

    ld [$0707], sp
    nop
    add hl, bc
    ld b, $08
    rlca
    ld c, $01
    rrca

jr_00D_414B:
    ld b, $0F
    nop
    nop
    nop
    ld e, h
    and b
    sub b
    ld h, b
    ld [$88F0], sp
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rra
    nop
    jr nz, @+$21

    ld b, b
    ccf
    jr nz, jr_00D_4187

    ld d, $0F
    add hl, de
    rrca
    rla
    dec c
    ld a, $17
    ldh [rP1], a

jr_00D_4172:
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rBCPS]
    ldh a, [$98]
    ldh a, [$E8]
    or b
    ld a, h
    add sp, $3E
    rla
    jr jr_00D_418B

    inc l
    inc de
    inc de

jr_00D_4187:
    inc c
    ld hl, $2D1E

jr_00D_418B:
    ld [de], a
    dec [hl]
    ld a, [bc]
    dec e
    ld a, [bc]
    ld a, h
    add sp, $18
    ldh [$34], a
    ret z

    ld hl, sp+$00
    adc b
    ld [hl], b
    jr c, @-$3E

    ld hl, sp+$30
    ld a, b
    or b
    dec c
    ld [bc], a

jr_00D_41A2:
    rrca
    nop
    inc c
    inc bc
    ld c, $01
    rrca
    ld b, $0F
    rlca
    rlca
    inc bc
    rlca
    nop
    jr c, jr_00D_4172

    ldh a, [rP1]

jr_00D_41B4:
    db $10
    ldh [$50], a
    and b
    sub b
    ld h, b
    ldh [rP1], a
    ldh [rLCDC], a
    ret nz

    nop
    jr jr_00D_41A2

    inc [hl]
    ret z

    ret z

    jr nc, jr_00D_414B

    ld a, b
    inc a
    ret nz

    sub h
    ld l, b
    inc a
    ret c

    inc a
    ret c

    db $FC
    nop
    jr jr_00D_41B4

    adc b
    ld [hl], b
    cp b

jr_00D_41D7:
    ld b, b
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_00D_41D7

    nop
    ccf
    nop
    jr nz, @+$21

    jr jr_00D_41ED

    jr nz, @+$21

    inc h
    dec de
    jr nz, jr_00D_420B

    db $10

jr_00D_41ED:
    rrca
    db $10
    rrca
    db $FC
    nop
    inc b
    ld hl, sp+$38
    ret nz

    ld [$88F0], sp
    ld [hl], b
    ld [$18F0], sp
    ldh [$38], a
    ret nc

    db $10
    rrca
    jr jr_00D_420B

    rla
    ld [$0C13], sp
    rrca
    nop
    rrca

jr_00D_420B:
    ld b, $0F
    ld b, $0F
    nop
    db $10
    ldh [$30], a
    ret nz

    ret nc

    jr nz, jr_00D_4227

    ldh [rNR10], a
    ldh [$E0], a
    nop
    ldh [$C0], a
    ldh [rP1], a
    rlca
    nop
    ld [$1007], sp
    rrca
    db $10

jr_00D_4227:
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ccf
    nop
    ld hl, sp+$00
    inc b
    ld hl, sp+$02
    db $FC
    inc b
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$FC]
    nop
    inc b
    ld hl, sp+$30
    ret nz

    ld [$44F0], sp
    cp b
    inc b
    ld hl, sp+$24
    ret c

    inc e
    ldh [rNR14], a
    add sp, $0C
    ldh a, [rNR23]
    ldh [$E8], a
    db $10
    adc b
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rlca
    nop
    jr @+$09

    jr nz, jr_00D_4285

    ld b, b
    ccf
    jr nz, @+$21

    ld de, $1E0F
    rlca
    ld h, $1B
    ldh a, [rP1]
    ld [$08F0], sp
    ldh a, [rDIV]
    ld hl, sp-$08
    ldh [$30], a
    ldh [$F0], a
    and b
    ld [hl], b
    ldh [rNR52], a
    dec de
    inc de
    dec c
    add hl, bc

jr_00D_4285:
    ld b, $18
    rlca
    jr jr_00D_4291

    add hl, de
    ld b, $39
    ld d, $38
    rla
    ld [hl], b

jr_00D_4291:
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ret nz

    nop

jr_00D_4298:
    ret nz

    nop
    jr nz, @-$3E

    ld [hl], b
    ldh [$F0], a
    ld h, b
    inc de
    inc c
    ld [de], a
    dec c
    inc e
    inc bc
    jr nz, @+$21

    ld [hl], e
    inc l
    ld a, a
    ld [hl-], a
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a
    ld h, b
    add b

jr_00D_42B4:
    ld a, b
    add b

jr_00D_42B6:
    db $FC
    jr @+$7E

    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    inc de
    dec c
    add hl, bc
    ld b, $08
    rlca
    ld [$0B07], sp
    inc b
    inc c
    inc bc
    dec c
    inc bc
    dec bc
    dec b
    db $10
    ldh [$E0], a
    nop
    ld b, b
    add b
    jr nz, jr_00D_4298

    and b
    ld b, b
    and b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    inc de
    inc c
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    cpl
    db $10
    ccf
    rlca
    ccf
    rrca
    rra
    nop
    ldh [rP1], a
    jr nz, jr_00D_42B4

    jr nz, jr_00D_42B6

jr_00D_42F6:
    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    ld h, $1B
    inc de
    dec c
    add hl, bc
    ld b, $18
    rlca
    dec e
    ld [bc], a
    ld [de], a
    dec c
    ld a, [hl-]
    dec e
    inc a
    dec de
    ld [hl], b
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    dec de
    inc b
    inc h
    dec de
    jr jr_00D_432D

    inc [hl]
    dec bc
    ld a, [hl]
    ld hl, $3C7F
    ld a, a

jr_00D_432D:
    ld e, $7F
    nop
    ldh [rP1], a
    ld b, b
    add b
    jr c, jr_00D_42F6

    inc a
    ret c

    ld a, h
    cp b
    ld a, b
    or b
    ld hl, sp+$40
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
    jr jr_00D_43BE

    inc h
    inc a
    inc h
    inc a
    jr jr_00D_43C4

    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00D_43CC

    inc h
    inc a
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    inc h
    inc a
    jr jr_00D_43D6

jr_00D_43BE:
    nop
    nop
    jr @+$1A

    inc h
    inc a

jr_00D_43C4:
    ld b, d
    ld a, [hl]

jr_00D_43C6:
    add c
    rst $38
    add c
    rst $38
    ld b, d
    ld a, [hl]

jr_00D_43CC:
    inc h
    inc a
    jr @+$1A

jr_00D_43D0:
    rlca
    nop
    ld [$1007], sp
    rrca

jr_00D_43D6:
    db $10
    rrca
    ld de, $1A0E
    dec b
    rra
    ld [$060F], sp
    ld hl, sp+$00
    inc b
    ld hl, sp+$42
    cp h
    ld [hl+], a
    call c, $8874
    db $F4
    ld [$00F8], sp
    ldh a, [$C0]
    rrca
    inc bc
    inc de
    inc c
    inc a
    inc de
    ld a, a
    jr nc, jr_00D_4478

    jr nz, jr_00D_4432

    jr jr_00D_4424

    inc e
    ld e, $0D
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, jr_00D_43C6

    ldh a, [rP1]
    ldh a, [rNR41]
    ret c

    jr nz, @-$06

    db $10
    jr nc, jr_00D_43D0

    rrca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ld c, $3F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [$C0], a

jr_00D_4424:
    ldh a, [$60]
    ldh a, [$C0]
    ret z

    jr nc, jr_00D_4433

    ldh a, [$F0]
    nop
    nop
    nop
    inc bc
    nop

jr_00D_4432:
    inc b

jr_00D_4433:
    inc bc
    ld [$1207], sp
    dec c
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr jr_00D_4447

    ld hl, sp+$00
    add h
    ld a, b
    ld [bc], a
    db $FC
    ld [bc], a

jr_00D_4447:
    db $FC
    ld [bc], a
    db $FC
    ld a, [de]
    db $E4
    inc a
    ret nz

    ld a, b
    or b
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
    rra
    ld [$081F], sp
    rra
    nop
    rrca
    nop
    ld [$F007], sp
    ld h, b
    ldh [rP1], a
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    add sp, $30
    call z, Call_00D_7C38
    sbc b
    rlca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca

jr_00D_4478:
    rrca
    ld bc, $0609
    rrca
    nop
    nop
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    ccf
    db $10
    rra
    dec b
    rlca
    inc bc
    rrca
    inc b
    ld c, $05
    rra
    ld [$0817], sp
    rra
    ld [$08FC], sp
    ld hl, sp-$60
    ldh [$C0], a
    ldh a, [rNR41]
    ld a, b
    or b
    add sp, $10
    ret z

    ld [hl], b
    ld hl, sp+$60
    inc e
    inc bc
    rrca
    nop
    rlca
    inc bc
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ld [hl], b
    add b
    ldh [rP1], a

jr_00D_44C4:
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    dec c
    nop
    ld [de], a
    dec c
    jr nz, jr_00D_44F5

    ld hl, $211E
    ld e, $23
    inc e
    rla
    ld [$103F], sp
    ldh [rP1], a
    jr jr_00D_44C4

    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$44
    cp b
    add sp, $10
    db $FC

jr_00D_44EF:
    ld [$A0F8], sp
    ldh [$C0], a
    ret nc

jr_00D_44F5:
    jr nz, @+$3A

    ret nc

    db $F4
    jr jr_00D_44EF

    ld [$18FC], sp
    inc a
    ret c

    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    inc e
    inc bc
    rra
    ld [$081F], sp
    rrca
    nop
    inc b
    inc bc
    nop
    nop
    ldh a, [rP1]
    add sp, $10
    inc e
    ldh [$FC], a
    ld [$08FC], sp
    db $F4
    ld [$E81C], sp
    rlca
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    ld b, $07
    nop
    inc b
    inc bc
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp-$50
    ld hl, sp+$70
    ld hl, sp+$70
    ldh a, [rP1]
    sub b
    ld h, b
    ldh a, [rP1]
    inc bc
    nop
    inc b
    inc bc
    ld [$1107], sp
    ld c, $10
    rrca
    db $10
    rrca
    jr c, jr_00D_4575

    inc e
    inc bc

jr_00D_4560:
    ld [hl], b
    nop
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$02
    db $FC
    ld [bc], a
    db $FC
    inc b
    ld hl, sp+$0E
    db $F4
    inc e
    ldh [$F0], a
    nop
    add sp, $10
    inc e

jr_00D_4575:
    ldh [$FC], a
    ld [$08FC], sp
    db $F4
    ld [$08FC], sp
    jr jr_00D_4560

    ldh a, [rP1]
    ldh a, [$60]
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$70
    db $F4
    ld [$708C], sp

jr_00D_458E:
    ld hl, sp+$00
    rlca
    ld [bc], a
    inc bc
    ld bc, $0106
    dec c
    inc bc
    rrca
    ld bc, $001F
    ccf
    db $10
    jr c, jr_00D_45B7

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    and b
    ret nz

    jr nc, jr_00D_458E

    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf

jr_00D_45B7:
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $3F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    call z, $B8B0
    ld b, b
    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_00D_45F7

    jr nz, jr_00D_45F9

    db $10
    rrca
    ld a, [bc]
    dec b
    rlca
    ld [bc], a
    ld hl, sp+$00
    inc b
    ld hl, sp+$08
    ldh a, [rDIV]
    ld hl, sp+$64
    sbc b
    db $F4
    ld [$00F8], sp
    ldh a, [$A0]
    inc bc
    ld bc, $0106
    dec c
    inc bc
    rrca

jr_00D_45F7:
    ld [bc], a
    rrca

jr_00D_45F9:
    ld [bc], a
    ld c, $03
    inc c
    inc bc
    inc bc
    dec b
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00D_462D

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, jr_00D_467B

    and b
    ld [hl], b

jr_00D_462D:
    add b
    ret nz

    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0106
    dec c
    inc bc
    rrca
    ld [bc], a
    rla
    inc c
    inc sp
    inc e
    inc a
    dec de
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rNR41]
    ld [hl], b
    and b
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $3F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $CCB8
    or b
    cp b
    ld b, b
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

jr_00D_467B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec hl
    db $10
    inc l
    inc de
    inc l
    rla
    inc l
    rla
    inc l
    rla
    halt
    dec de
    halt
    dec hl
    cp e
    ld c, l
    xor l
    ld b, [hl]
    rst $30
    ld b, c

jr_00D_46EA:
    ld a, [hl]
    inc hl
    inc a
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    stop
    dec hl
    db $10
    inc a
    inc de
    jr nc, jr_00D_470B

    jr nz, jr_00D_471D

    jr nz, jr_00D_471F

    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    ret nz

    ld a, a
    ldh [$7F], a
    ld a, d

jr_00D_470B:
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    ld [$133C], sp
    ld [hl], c
    ld l, $E2

jr_00D_471D:
    ld e, l
    push hl

jr_00D_471F:
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_00D_46EA

    ret z

    jr nc, jr_00D_4791

    ret c

    ld [c], a
    inc e
    swap [hl]
    rst $10
    inc l
    xor a
    ld e, c
    ld a, [$F631]
    ld b, e
    ld a, a
    inc hl
    ccf
    rla
    rra
    nop
    jp nz, $817C

    cp $01
    cp $01
    cp $03
    cp $0E
    db $FC
    db $FC
    ldh a, [$F0]
    nop
    nop

jr_00D_4751:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr jr_00D_4766

jr_00D_4766:
    inc h
    jr jr_00D_478D

    jr jr_00D_47AD

    inc a
    ld b, e
    inc a
    push bc
    ld a, [hl-]
    xor c

jr_00D_4771:
    ld d, [hl]
    sub d

jr_00D_4773:
    ld l, h
    sub d
    ld l, h
    ld d, d
    inc l
    ld d, h
    jr z, jr_00D_4751

    jr z, jr_00D_4773

    ld [$007C], sp
    nop
    nop
    stop
    jr jr_00D_4786

jr_00D_4786:
    inc a
    jr jr_00D_47BD

    jr jr_00D_47FD

    inc a
    ld [hl], e

jr_00D_478D:
    inc a
    push hl
    ld a, [hl-]
    db $ED

jr_00D_4791:
    ld d, [hl]
    sbc $6C
    jp c, Jump_00D_5A6C

    inc l
    ld d, h
    jr z, jr_00D_4771

    jr z, @-$08

    ld [$007C], sp
    nop
    nop
    stop
    jr jr_00D_47A6

jr_00D_47A6:
    inc l
    jr jr_00D_47D5

    jr jr_00D_4805

    inc a
    ld e, e

jr_00D_47AD:
    inc a
    push de
    ld a, [hl-]
    cp l

jr_00D_47B1:
    ld d, [hl]
    cp [hl]

jr_00D_47B3:
    ld l, h
    cp [hl]
    ld l, h
    halt
    inc l
    ld d, h
    jr z, jr_00D_4791

    jr z, jr_00D_47B3

jr_00D_47BD:
    ld [$007C], sp
    nop
    nop
    stop
    jr jr_00D_47C6

jr_00D_47C6:
    inc l
    jr @+$2E

    jr @+$50

    inc a
    ld c, a
    inc a
    rst $08
    ld a, [hl-]
    xor a
    ld d, [hl]
    cp [hl]

jr_00D_47D3:
    ld l, h
    or [hl]

jr_00D_47D5:
    ld l, h
    halt
    inc l
    ld [hl], h
    jr z, jr_00D_47B1

    jr z, jr_00D_47D3

    ld [$007C], sp
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    dec b
    ccf
    nop
    cpl
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ret c

    jr nz, @-$36

    ld [hl], b
    ret z

jr_00D_47FD:
    ldh a, [$F8]
    nop
    rlca
    nop
    rrca
    nop
    rra

jr_00D_4805:
    nop
    rra
    nop
    ld e, $01
    inc e
    rlca
    ld e, $0F
    rra
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    and b
    ld a, h
    add b
    db $F4
    nop
    rrca
    ld b, $1F
    rrca
    ccf
    rra
    ccf
    ld a, [de]
    daa
    dec de
    inc de
    dec c
    inc de
    ld c, $0F
    ld b, $F0
    nop
    ld hl, sp-$70
    ld hl, sp-$10
    ld hl, sp-$30
    ld hl, sp+$00
    db $FC
    ldh [rNR32], a
    add sp, -$08
    nop
    rlca
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    ld [$031C], sp
    db $10
    rrca
    rrca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$10
    ld hl, sp+$60
    db $E4
    jr @-$7A

    ld a, b
    ld hl, sp+$00
    add b
    nop
    rlca
    nop
    rrca
    nop
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
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$30
    ld hl, sp-$70
    ldh a, [rLCDC]
    rrca
    nop
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    dec bc
    rra
    rlca
    ld [$0F07], sp
    nop
    ldh [$80], a
    ldh [$C0], a
    ldh [$C0], a
    ldh a, [$E0]
    ret nc

    ldh [$88], a
    ld [hl], b
    ld c, h
    cp b
    db $FC
    jr jr_00D_48A8

    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca

jr_00D_48A8:
    rrca
    ld bc, $0609
    rrca
    nop
    nop
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rlca
    nop
    rrca
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
    dec d
    rra
    inc bc
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    cp b
    ld b, b
    inc e
    add sp, -$68
    ldh [$1F], a
    inc bc
    rrca
    nop
    rra
    ld [$0F1F], sp
    rra
    rrca
    rla
    rrca
    rla
    dec bc
    inc e
    dec bc
    sbc b
    ldh [$F0], a
    nop
    ld hl, sp+$10
    ld hl, sp-$10
    ld hl, sp-$10
    add sp, -$70
    ret z

    ld [hl], b
    ldh a, [$60]
    rra
    nop
    rrca
    ld b, $07
    inc bc
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$10
    db $FC
    ld hl, sp-$04
    ld hl, sp-$0C

jr_00D_4929:
    add sp, -$0C
    add sp, $34
    ret c

    db $FC
    jr jr_00D_4929

    nop
    ldh a, [rNR41]
    ld hl, sp+$30
    ld hl, sp+$40
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    rra
    nop
    rrca
    inc b
    rra
    ld c, $3F
    inc e
    cpl
    rra
    cpl
    rla
    jr @+$09

    rrca
    nop
    ld hl, sp+$00
    ldh a, [rNR41]
    ld hl, sp+$70
    ld hl, sp-$10
    add sp, -$30
    add sp, -$30
    jr z, @-$2E

    ld hl, sp+$10
    rrca
    nop
    rra
    rrca
    rra
    rrca
    rra
    inc c
    rrca
    nop
    add hl, bc
    ld b, $09
    ld b, $0F
    nop
    ldh a, [rP1]
    ldh [$C0], a
    ldh a, [$60]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, @-$3E

    ldh [rP1], a
    rrca
    inc b
    rra
    ld c, $3F
    ld e, $3F
    ld e, $2F
    ld d, $2F
    rla
    jr c, @+$19

    rra
    nop
    ldh a, [rNR41]
    ld hl, sp+$70
    db $FC
    ld a, b
    db $FC
    ld a, b
    db $F4
    xor b
    db $F4
    add sp, $1C
    add sp, -$08
    nop
    ldh a, [rP1]
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rra
    ld [bc], a
    rla
    ld bc, $00E0
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$A0]
    ldh a, [$60]

jr_00D_49DE:
    ldh a, [rP1]
    rla
    ld bc, $0027
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    dec b
    add hl, sp
    ld d, $3F
    db $10
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    jr nz, @-$3E

    jr nc, jr_00D_49DE

    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    daa
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    ld b, $0D
    ld b, $08
    rlca
    inc b
    inc bc
    rlca
    ld bc, $00F0
    ret nz

    add b
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    and b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00D_4A5D

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, @+$52

    and b
    ld [hl], b

jr_00D_4A5D:
    add b
    ret nz

    nop
    scf

jr_00D_4A61:
    ld bc, $0007
    rlca
    inc bc
    rrca
    rlca
    rra
    ld c, $13
    dec c
    ld [hl-], a
    dec e
    ccf
    jr jr_00D_4A61

    nop
    ldh a, [rP1]
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ld [hl], b
    and b
    ldh a, [rNR41]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a

jr_00D_4AA0:
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
    ld [$0D07], sp
    ld b, $0F
    nop
    rra
    inc bc
    rrca
    nop
    rra
    ld [$0F1F], sp
    rra
    rrca
    rla
    add hl, bc
    inc de
    ld c, $0F
    ld b, $98
    ldh [$F0], a
    nop
    ld hl, sp+$10
    ld hl, sp-$10
    ld hl, sp-$10
    add sp, -$10
    add sp, -$30
    jr c, jr_00D_4AA0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_4AD8:
    nop
    nop

jr_00D_4ADA:
    nop
    nop

jr_00D_4ADC:
    nop
    nop

jr_00D_4ADE:
    nop
    nop
    inc a
    nop
    ld c, a
    jr nc, @+$52

    cpl
    jr nz, @+$21

    jr nz, @+$21

    daa
    jr @+$41

    nop
    add hl, sp
    rla
    nop
    nop

jr_00D_4AF2:
    ret nz

    nop

jr_00D_4AF4:
    jr nz, @-$3E

jr_00D_4AF6:
    db $10
    ldh [rNR10], a
    ldh [$F0], a
    nop
    ldh a, [rP1]
    sub b
    ldh [$1F], a
    dec b
    rrca
    inc bc
    inc de
    inc c
    jr nz, jr_00D_4B27

    jr nz, jr_00D_4B29

    ld [hl+], a
    dec e
    inc h
    dec de
    inc h
    dec de
    ldh a, [$A0]
    ldh [$C0], a
    ret nz

    nop
    jr nz, jr_00D_4AD8

    jr nz, jr_00D_4ADA

    jr nz, jr_00D_4ADC

    jr nz, jr_00D_4ADE

    ldh [rP1], a
    rra
    nop
    ld [$1007], sp
    rrca
    db $10

jr_00D_4B27:
    rrca
    inc de

jr_00D_4B29:
    inc c
    rra
    ld bc, $0F1F
    rrca
    nop
    jr nz, jr_00D_4AF2

    jr nz, jr_00D_4AF4

    jr nz, jr_00D_4AF6

    ld [hl], b
    add b
    ld hl, sp+$30
    ld hl, sp-$50
    ldh a, [$80]
    ret nz

    nop
    inc c
    nop
    inc de
    inc c
    ld [hl+], a
    dec e
    ld [de], a
    dec c
    inc c
    inc bc
    ld [$0807], sp
    rlca
    inc b
    inc bc
    nop
    nop
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$0C
    ldh a, [rNR23]
    ldh [$38], a
    ret nz

    ld hl, sp+$10
    rst $38
    ld b, $5E
    inc l
    ld a, h
    nop
    add d
    ld a, h
    add d
    ld a, h
    sub d
    ld l, h
    ld [hl], d
    inc c
    ld c, d
    inc [hl]
    adc h
    ld [hl], b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b

jr_00D_4B78:
    add $38

jr_00D_4B7A:
    rst $38
    ld b, [hl]
    rst $38
    inc e
    ld a, $00
    rra
    nop
    add hl, sp
    rla
    rra
    dec b
    rrca
    inc bc
    rlca
    nop
    ld [$0A07], sp
    dec b
    ld a, [bc]
    dec b
    ld hl, sp+$00
    sbc h
    add sp, -$08
    and b
    ldh a, [$C0]
    ldh [rP1], a
    db $10
    ldh [rOBP0], a
    or b
    ld c, b
    or b
    dec bc
    inc b
    inc c
    inc bc
    ld [$0E07], sp
    ld bc, $060F
    rrca
    rlca
    rlca
    inc bc
    rlca
    nop
    adc b
    ld [hl], b
    sub b
    ld h, b

jr_00D_4BB4:
    ld [hl], b
    add b
    jr nc, jr_00D_4B78

    jr nc, jr_00D_4B7A

    ldh a, [rP1]
    ldh a, [$60]
    ldh [rP1], a
    add b
    nop
    ld b, b
    add b
    ldh [rP1], a

jr_00D_4BC6:
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$E8]
    db $10
    ld hl, sp+$00
    sbc h
    add sp, -$08
    and b
    ldh a, [$C0]
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rOBP0]
    or b
    add sp, $10

jr_00D_4BE2:
    jr z, jr_00D_4BB4

    jr jr_00D_4BC6

jr_00D_4BE6:
    jr c, @-$3E

    db $FC
    jr nc, @-$02

    ld a, b
    db $FC
    jr c, jr_00D_4C67

    nop
    jr jr_00D_4BF9

    ccf
    db $10
    rra
    nop

jr_00D_4BF6:
    inc c
    inc bc
    rlca

jr_00D_4BF9:
    nop
    ld [$1007], sp
    rrca
    db $10
    rrca
    jr jr_00D_4BE2

    db $FC
    ld [$00F8], sp
    jr nc, @-$3E

    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$85]
    ld a, d
    db $E3
    inc e
    sbc a
    ld h, b
    sbc c
    ld h, [hl]
    cp l
    ld e, d
    ld a, a
    jr c, @+$81

    ld [hl], $7E
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_00D_4BE6

    ld d, b
    and b
    adc b
    ld [hl], b
    ld [$08F0], sp
    ldh a, [rNR23]
    ldh [$FC], a
    ld [$00F8], sp
    jr nc, jr_00D_4BF6

    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$C8]
    jr nc, jr_00D_4C71

    ret nz

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a

jr_00D_4C49:
    ldh [$FC], a
    jr jr_00D_4C49

    ld [hl], b

jr_00D_4C4E:
    ld hl, sp+$00

jr_00D_4C50:
    jr jr_00D_4C52

jr_00D_4C52:
    daa
    jr jr_00D_4C9B

    add hl, sp
    ld c, b
    scf
    jr c, jr_00D_4C61

    ld de, $170E
    ld [$060F], sp
    nop

jr_00D_4C61:
    nop

jr_00D_4C62:
    ldh [rP1], a
    db $10
    ldh [$08], a

jr_00D_4C67:
    ldh a, [$08]
    ldh a, [$F0]
    nop
    ldh a, [rP1]
    jr nc, jr_00D_4C50

    rrca

jr_00D_4C71:
    ld b, $07
    inc bc
    inc bc
    ld bc, $0007
    ld [$0807], sp
    rlca
    ld a, [bc]
    dec b
    rlca
    nop
    jr nc, jr_00D_4C62

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    jr nz, @-$3E

    jr nz, jr_00D_4C4E

    jr nz, jr_00D_4C50

    inc b
    inc bc
    ld [$1007], sp
    rrca
    jr nz, jr_00D_4CB7

    ld [hl], a
    jr z, @+$81

jr_00D_4C9B:
    ld [hl], $7F
    ld e, $7F
    nop
    ret nz

    nop
    ld b, b
    add b
    ld [hl], b
    add b
    ld a, b
    or b
    ld hl, sp+$70
    ldh a, [$E0]
    ldh a, [$C0]
    ldh [rP1], a
    cp $74
    ld a, [hl]
    inc a
    db $FC
    nop
    adc b

jr_00D_4CB7:
    ld [hl], b
    sbc b
    ld h, b

jr_00D_4CBA:
    adc b
    ld [hl], b

jr_00D_4CBC:
    adc b
    ld [hl], b

jr_00D_4CBE:
    ret z

    jr nc, jr_00D_4CC6

    ld [bc], a
    ld [$0807], sp
    rlca

jr_00D_4CC6:
    db $10
    rrca
    inc de
    inc c
    rrca
    inc bc
    rrca
    inc bc
    rlca
    nop
    ret nz

    nop
    ld b, b
    add b

jr_00D_4CD4:
    ld b, b
    add b

jr_00D_4CD6:
    ld b, b
    add b
    ldh [rP1], a
    ldh a, [$C0]
    ldh a, [$E0]
    ldh a, [rP1]
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0003
    inc b
    inc bc
    ld [$0807], sp
    rlca
    add hl, bc
    ld b, $30
    ldh [$F0], a
    and b
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, jr_00D_4CBA

    jr nz, jr_00D_4CBC

    jr nc, jr_00D_4CBE

    ld [hl], b
    add b
    add hl, bc
    ld b, $06
    ld bc, $0708
    db $10
    rrca
    rla
    ld [$172F], sp
    ccf
    rrca
    rra
    nop
    ldh a, [rP1]
    jr nz, jr_00D_4CD4

    jr c, jr_00D_4CD6

    inc a
    ret c

    db $FC
    jr c, @-$06

    ld [hl], b
    ld hl, sp+$60
    ldh [rP1], a

jr_00D_4D20:
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_00D_4D47

jr_00D_4D28:
    inc hl
    rla

jr_00D_4D2A:
    inc l
    rlca

jr_00D_4D2C:
    rra
    ld c, $0F
    rlca
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$38]
    ldh [$D0], a
    ldh [$F0], a
    ret nz

jr_00D_4D3E:
    jr nc, jr_00D_4D20

    nop
    nop

jr_00D_4D42:
    nop
    nop

jr_00D_4D44:
    nop
    nop
    nop

jr_00D_4D47:
    nop

jr_00D_4D48:
    db $10
    db $10
    jr nz, jr_00D_4D6C

    nop
    nop
    nop
    nop
    ld c, $03
    ld e, $09
    ccf
    jr @+$3E

    inc de
    inc a
    dec de
    ld a, $0D
    ld e, $0D
    rrca
    nop
    db $10
    ldh [rNR41], a
    ret nz

    ldh a, [rP1]
    jr nc, jr_00D_4D28

    jr nc, jr_00D_4D2A

    jr c, jr_00D_4D2C

jr_00D_4D6C:
    jr c, jr_00D_4D3E

    ldh a, [rP1]
    ld [$0807], sp
    rlca
    db $10
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    jr nz, jr_00D_4D42

    jr nz, jr_00D_4D44

    sub b
    ld h, b
    jr nc, jr_00D_4D48

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, @+$21

    jr nz, @+$21

    jr nz, jr_00D_4DBB

    db $10
    ld c, $08
    nop
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp+$14
    sbc b
    jr jr_00D_4DBC

    ld e, b
    ld d, b
    add sp, $70
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0E
    ld a, [de]

jr_00D_4DBB:
    ld a, [de]

jr_00D_4DBC:
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    nop
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    rrca
    nop
    ld l, b
    or b
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [rNR41]
    ld a, b
    or b
    ld a, h
    sbc b
    db $FC
    jr @+$0A

    rlca
    inc b
    inc bc
    add hl, bc
    ld b, $08
    rlca
    ld c, $01
    rrca
    ld b, $0F
    nop
    nop
    nop
    inc e
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    ld a, $17
    inc e
    rlca
    inc c
    inc bc
    rrca
    nop
    inc e
    dec bc
    inc e
    dec bc
    inc e
    dec bc
    ld c, $01
    ld a, h
    add sp, $38
    ldh [$30], a
    ret nz

    ld hl, sp+$30
    ld a, b
    sub b
    ld a, b
    sub b
    ld a, b
    or b
    ld a, b
    or b
    rlca
    nop
    inc b
    inc bc

jr_00D_4E24:
    inc b
    inc bc
    ld c, $01
    rrca
    ld b, $0F
    rlca
    rlca
    inc bc
    rlca
    nop
    ld hl, sp+$00

jr_00D_4E32:
    db $10
    ldh [rNR10], a
    ldh [$50], a
    and b
    sub b
    ld h, b
    ldh [rP1], a
    ldh [rLCDC], a
    ret nz

    nop
    ldh [rP1], a

jr_00D_4E42:
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rBCPS]
    ldh a, [$88]
    ldh [$E8], a
    and b
    ld a, h
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00D_4E7A

    jr nz, jr_00D_4E7C

    nop
    nop
    nop
    nop
    jr c, jr_00D_4E42

jr_00D_4E62:
    jr nc, jr_00D_4E24

    ld hl, sp+$10
    inc a
    ret c

    inc a
    ret z

    inc a
    ret z

    ld a, b
    or b
    ld hl, sp+$30
    jr nc, jr_00D_4E32

    db $10
    ldh [$88], a
    ld [hl], b
    cp b

jr_00D_4E77:
    ld b, b
    ld hl, sp+$30

jr_00D_4E7A:
    db $FC
    ld a, b

jr_00D_4E7C:
    db $FC
    jr c, jr_00D_4E77

    nop
    jr c, @+$15

    jr jr_00D_4E85

jr_00D_4E84:
    inc c

jr_00D_4E85:
    nop

jr_00D_4E86:
    rra
    ld [$1738], sp
    jr c, jr_00D_4EA3

    jr @+$09

    jr @+$09

    inc e
    ret z

    jr @-$7E

    jr nc, jr_00D_4E96

jr_00D_4E96:
    ld hl, sp+$10
    ld hl, sp+$30
    ld a, b
    or b
    ld a, b
    sub b
    ld a, b
    sub b
    nop
    nop
    nop

jr_00D_4EA3:
    nop
    add h
    add h
    call z, Call_00D_78CC
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld [$0A07], sp
    dec b
    ld de, $0F0E
    nop
    rrca
    ld b, $0F
    ld b, $0F
    nop
    ldh a, [rP1]
    jr nz, jr_00D_4E84

    jr nz, jr_00D_4E86

    db $10
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ldh [$C0], a
    ldh [rP1], a
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh [$08], a
    ret nz

    inc e
    ret z

    jr jr_00D_4E62

    jr nc, jr_00D_4EE4

jr_00D_4EE4:
    ld hl, sp+$10
    inc a
    ret c

    inc a
    ret c

    inc a
    ret z

    inc a
    ret z

    inc a
    ret z

    ld hl, sp+$00
    sub b
    ld h, b
    sub b
    ld h, b
    adc b
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    ld [$1808], sp
    jr jr_00D_4F3F

    jr nc, jr_00D_4F11

jr_00D_4F11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc e
    inc e
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nz, @+$21

    jr nz, jr_00D_4F47

    jr nz, jr_00D_4F43

    ld de, $1E01
    rlca
    ld c, $03
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$F0]
    ldh [$30], a
    ldh [$F0], a
    and b
    ld [hl], b

jr_00D_4F3F:
    ldh [$0E], a
    inc bc
    rlca

jr_00D_4F43:
    ld bc, $040B
    rra

jr_00D_4F47:
    inc bc
    rra
    inc bc
    dec de
    inc b
    add hl, sp
    ld d, $38
    rla
    ld [hl], b
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$60]
    rra
    nop
    ld [$1007], sp
    rrca

jr_00D_4F66:
    jr nz, jr_00D_4F87

    ld [hl], e
    inc l
    ld a, a
    ld [hl-], a
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a
    jr nz, @-$3E

    jr c, @-$3E

    cp h
    ld e, b
    ld a, h
    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    ld [hl], c

jr_00D_4F81:
    ld e, $BE
    ld b, b
    db $FC
    jr nc, jr_00D_4F81

jr_00D_4F87:
    inc [hl]
    ld a, [$7A24]
    inc [hl]
    ld a, [hl]
    jr c, jr_00D_500D

    jr jr_00D_4F98

    nop
    ld [$1007], sp
    rrca
    db $10
    rrca

jr_00D_4F98:
    cpl
    db $10
    ccf
    rlca
    ccf
    rrca
    rra
    nop
    ldh [rP1], a
    jr nz, @-$3E

    jr nz, jr_00D_4F66

jr_00D_4FA6:
    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    ld c, $03
    rlca
    ld bc, $040B
    rrca
    inc bc
    rra
    inc bc
    rra
    inc c
    ld a, $1D
    inc a
    dec de
    ld [hl], b
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    rra
    nop
    ld [$1807], sp
    rlca
    inc [hl]
    dec bc
    ld a, [hl]
    ld hl, $3C7F
    ld a, a
    ld e, $7F
    nop
    ldh [rP1], a
    ld b, b
    add b
    jr c, jr_00D_4FA6

jr_00D_4FE6:
    inc a
    ret c

    ld a, h
    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    nop
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0305
    dec bc
    rlca
    rla
    ld c, $1F
    inc c
    scf
    jr jr_00D_5001

jr_00D_5001:
    nop
    ldh [rP1], a
    db $E3
    nop
    or a
    ret nz

    rst $18
    and b
    rst $38
    nop
    rst $38

jr_00D_500D:
    nop
    db $FC
    inc bc
    ccf
    nop
    db $FD
    ld [bc], a
    xor $17
    ld a, e
    db $FD
    db $FD
    ld a, [hl]
    db $FD
    ld a, $FE
    rra
    db $FC
    rra
    nop
    nop
    ret nz

    nop
    jr nc, jr_00D_4FE6

    ret z

    ldh a, [$E4]
    ld hl, sp-$3C
    ldh [$80], a
    ld b, b
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
    ld bc, $0300
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rNR10], a
    ldh a, [rNR32]
    db $FC
    ld c, $FF
    ld c, $27
    db $10
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rst $18
    rlca
    cp a
    rlca
    ld sp, hl
    rlca
    ld a, b
    ld hl, $2070
    ld [hl], b
    nop
    ld h, c
    nop
    rra
    nop
    ld a, b
    sbc h
    ld [hl], b
    sbc b
    ldh [$90], a
    ldh [$90], a
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0102
    inc b
    ld [bc], a
    nop
    nop
    rst $18
    rlca
    cp a
    rlca
    rst $38
    rlca
    ld sp, hl
    and e
    ldh a, [$A1]
    ld [hl], c
    ld bc, $0061
    rra
    nop
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    sbc e
    db $FC
    sbc e
    ldh a, [$98]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$40
    ld e, h
    jr nc, jr_00D_50F1

    inc c
    nop
    nop
    nop
    nop
    rlca

jr_00D_50F1:
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rst $18
    rlca
    cp e
    rlca
    db $FD
    inc bc
    ld a, l
    inc hl
    ld [hl], d
    ld hl, $0071
    ld h, e
    nop
    rra
    nop
    cp $89
    cp $87
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    ld bc, $01FF
    rst $08
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$C0], a
    and b
    ret nz

    ld b, b
    ld a, a
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    nop
    ld [$0000], sp
    nop
    ld b, a
    ret nz

    rst $00
    ld b, b
    add e
    ld b, b
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
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$C0], a
    ld h, b
    ldh [rNR41], a
    ld h, b
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
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
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
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
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    rst $30
    nop
    ld hl, sp+$00
    ldh a, [$03]
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
    ldh [rP1], a
    jr c, jr_00D_51DE

jr_00D_51DE:
    ld d, $80
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0102
    inc b
    ld [bc], a
    nop
    nop
    ldh [$27], a
    add b
    rrca
    ldh [rIF], a
    ldh [$AF], a
    ldh [$A7], a
    ld d, b
    inc bc
    ld h, b
    nop
    dec de
    nop
    rrca
    ret nz

    rrca
    db $EC
    inc bc
    db $E3
    inc c
    db $EB
    nop
    ret z

    db $10
    add b
    nop
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$40
    ld e, h
    jr nc, jr_00D_5221

    inc c
    nop
    nop
    nop
    nop
    ld a, a

jr_00D_5221:
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1C00
    nop
    ld c, b
    nop
    jr nz, jr_00D_5241

    and b
    rrca
    nop

jr_00D_5241:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_00D_524C

jr_00D_524C:
    ld [$0880], sp
    ldh [rSB], a
    nop
    dec b
    nop
    dec b
    nop
    ld b, $00
    rlca
    ld bc, $0102
    inc b
    ld [bc], a
    nop
    nop
    ret nz

    rrca
    ret nz

    ld e, a
    ret nz

    rra
    nop
    rra
    ret nz

    adc a
    ld h, b
    rrca
    ld h, b
    inc bc
    stop
    dec b
    ldh [rTAC], a
    db $F4
    nop
    ldh a, [rDIV]
    di
    nop
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    nop
    add b
    nop
    and b
    nop
    ld [hl], b
    nop
    jr jr_00D_5288

jr_00D_5288:
    ld e, h
    jr nc, jr_00D_5291

    inc c
    nop
    nop
    nop
    nop
    ld a, e

jr_00D_5291:
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, b
    nop
    nop
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
    stop
    nop
    rlca
    ld b, b
    rrca
    add b
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
    ret nz

    nop
    ldh [rSC], a
    ldh a, [rP1]
    ccf
    add b
    ccf
    nop
    ccf
    add b
    cp a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    inc bc
    ld hl, sp+$00
    ld hl, sp+$03
    ei
    nop
    ld a, [$F800]
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    jr nz, jr_00D_52E2

jr_00D_52E2:
    or b
    nop
    add b
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
    nop
    jr c, jr_00D_52F3

jr_00D_52F3:
    ld a, h
    nop
    cp $00
    cp $00
    cp $00
    ld a, h
    nop
    jr c, jr_00D_52FF

jr_00D_52FF:
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    stop
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
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
    stop
    jr c, jr_00D_5327

jr_00D_5327:
    rst $38
    nop
    jr c, jr_00D_532B

jr_00D_532B:
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
    stop
    jr nz, jr_00D_533D

jr_00D_533D:
    nop
    nop
    nop
    inc bc
    nop
    ld e, $01
    ld [hl-], a
    dec c
    ld l, a
    db $10
    ld d, e
    inc l
    and a
    ld e, b
    xor a
    ld d, l
    or a
    ld c, e
    ret nc

    nop
    xor b
    ld d, b
    xor h
    ld d, b
    ld l, d
    sub h
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$60
    ld hl, sp+$60
    xor e
    ld d, l
    ld e, e
    inc h
    dec hl
    dec d
    rra
    ld bc, $0107
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    nop
    ld hl, sp-$10
    ldh a, [rP1]
    ldh a, [$60]
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    ld l, b
    ld hl, sp+$60
    ldh a, [rP1]
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0003
    inc b
    inc bc
    inc bc
    nop
    ldh a, [rP1]
    ldh a, [$A0]
    ldh a, [$A0]
    db $FC
    and b
    ld a, [c]
    inc c
    sub d
    ld l, h
    inc e
    ldh [$F0], a
    nop
    ld [bc], a
    nop
    dec c
    ld [bc], a
    dec de
    inc b
    ld [hl], $09
    dec d
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ld l, $11
    inc l
    inc de
    xor b
    ld d, b
    call nc, $BA28
    ld b, h
    ld c, [hl]
    or b
    sub $28
    cp [hl]
    ld b, b
    cp h
    ld c, b
    cp h
    ld e, b
    dec h
    ld a, [de]
    dec d
    ld a, [bc]
    ld b, $01
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    nop
    inc bc
    nop
    cp b
    ld d, b
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    ld hl, sp+$10
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    cp $10
    cp c
    ld b, [hl]
    db $E3
    inc e
    ld a, $00
    inc bc
    nop
    dec c
    ld [bc], a
    dec [hl]
    ld a, [bc]
    ld c, d
    dec [hl]
    ld a, [hl-]
    dec b
    ld b, a
    jr c, jr_00D_545C

    jr nz, jr_00D_547E

    dec d
    ld e, b
    nop
    and h
    ld e, b
    ld c, [hl]
    or b
    or d
    ld c, h
    xor [hl]
    ld d, b
    pop af
    ld c, $FA
    inc b
    cp $A8
    ld a, a
    dec d
    ld e, a
    dec h
    ld e, a
    inc hl
    scf
    ld [$051F], sp
    rrca
    inc b
    rrca
    inc b
    rrca
    dec b
    cp $A8
    ld a, [$FAA4]
    call nz, $10EC
    ld hl, sp-$60
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$60]
    ccf
    ld b, $3E
    nop
    ld a, $14
    ld a, [hl]
    inc d

Call_00D_5438:
    sbc [hl]
    ld h, h
    adc [hl]
    ld [hl], b
    ld c, d
    inc [hl]
    ld a, h
    nop
    ld a, [$FAA4]
    call nz, $10EC
    ld hl, sp-$60
    ldh a, [rNR41]
    ldh a, [rNR41]
    ld hl, sp-$50
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ret z

jr_00D_5459:
    jr nc, @-$7A

    ld a, b

jr_00D_545C:
    call nz, $F838
    nop
    dec c
    nop
    ld [de], a
    dec c
    add hl, sp
    ld b, $27
    jr jr_00D_54A3

    dec b
    ld b, [hl]
    add hl, sp
    ld a, [hl-]
    dec b
    ld a, [hl+]
    dec d
    ld h, b
    nop
    ret c

    jr nz, jr_00D_54CB

    xor b
    cp c
    ld b, [hl]
    xor [hl]
    ld d, b
    xor c
    ld d, [hl]
    xor [hl]
    ld d, b

jr_00D_547E:
    xor d
    ld d, h
    ld a, [hl+]
    dec d
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    add hl, hl
    scf
    ld [$0916], sp
    ld a, [bc]
    dec b
    rlca
    nop
    rrca
    inc b
    xor d
    ld d, h
    or l
    ld c, d
    db $DD
    ld [hl+], a
    ld l, l
    sub d
    sub $28
    xor h
    ld d, b
    ld hl, sp+$00
    ldh a, [$60]
    ld a, a
    nop
    ld a, [hl]

jr_00D_54A3:
    db $10
    ld a, $14
    ld a, $04
    inc h
    jr jr_00D_54EF

    jr c, jr_00D_54F7

    inc [hl]
    ld a, [hl]
    nop
    or l
    ld c, d
    db $DD
    ld [hl+], a
    ld l, l
    sub d
    sub $28
    xor h
    ld d, b
    ld hl, sp+$00
    ld hl, sp+$30
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld hl, sp+$40
    db $E4

jr_00D_54CB:
    jr jr_00D_5459

    ld [hl], b
    ld hl, sp+$00
    ld bc, $0600
    ld bc, $0708
    dec d
    ld a, [bc]
    ld a, [hl+]
    dec d
    dec l
    ld [de], a
    cpl
    db $10
    ld e, e
    dec h
    ld h, b
    nop
    call c, $6A20
    sub h
    cp d
    ld b, h
    ld a, h
    add b
    cp h
    ld b, b
    db $FC
    nop
    db $FC

jr_00D_54EF:
    xor b
    ld e, e
    dec h
    ld d, a
    jr z, jr_00D_554A

    ld a, [hl+]
    dec [hl]

jr_00D_54F7:
    ld a, [bc]
    dec c
    ld [bc], a
    inc bc
    nop
    inc bc
    ld bc, $0207
    db $FC
    xor b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$20
    db $FC
    db $10
    cp $4C
    cp $0C
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    rrca
    ld bc, $0A17
    ld [de], a
    dec c
    jr jr_00D_5525

    rra
    nop
    db $EC
    nop
    ldh [rLCDC], a
    db $FC

jr_00D_5525:
    add b
    ld a, [c]
    inc l
    ld [c], a
    inc e
    ld b, h
    cp b
    ld c, h
    or b
    ld hl, sp+$00
    ld d, a
    jr z, @+$57

    ld a, [hl+]
    dec [hl]
    ld a, [bc]
    dec c
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    nop
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ldh [rLCDC], a
    ldh a, [rLCDC]

jr_00D_554A:
    ldh a, [rLCDC]
    ldh [$C0], a
    ldh [$C0], a
    ld a, b
    nop
    jr c, @+$12

    jr c, jr_00D_5566

    inc a
    db $10
    ld a, $00
    ld b, e
    inc a
    ld b, c
    ld a, $7F
    nop
    ld e, e
    dec h
    ld d, a
    jr z, jr_00D_55BA

    ld a, [hl+]

jr_00D_5566:
    dec [hl]
    ld a, [bc]
    rrca
    nop
    rlca
    ld bc, $060F
    rrca
    ld b, $FC
    xor b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$50
    ld hl, sp+$10
    rlca
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    ld a, [bc]
    dec b
    inc c
    inc bc
    rlca
    nop
    ldh [rP1], a
    ldh a, [rLCDC]
    cp $20
    ld sp, hl
    ld d, $F1
    ld c, $22
    call c, $D826
    ld hl, sp+$00
    ld a, [hl+]
    dec d
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    add hl, hl
    scf
    ld [$0916], sp
    ld a, [bc]
    dec b
    rlca
    nop
    rrca
    ld b, $AA
    ld d, h
    or l
    ld c, d
    db $DD
    ld [hl+], a
    ld l, l
    sub d
    sub $28

jr_00D_55BA:
    xor h
    ld d, b
    ld hl, sp+$00
    ldh a, [rNR41]
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    add hl, hl
    scf
    ld [$0916], sp
    ld a, [bc]
    dec b
    rlca
    nop
    rra
    inc c
    rra
    inc c
    nop
    nop
    rrca
    nop
    stop
    jr nz, jr_00D_55D8

jr_00D_55D8:
    ld b, b
    nop
    ld b, e
    nop
    scf
    inc bc
    add hl, sp
    ld de, $0000
    ldh [rP1], a
    stop
    ld [$0800], sp
    nop
    call nz, $E800
    ret nz

    sub b
    add b
    rra
    dec b
    rlca
    inc bc
    dec bc
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld a, [de]
    dec c
    ld e, $0D
    ldh a, [$A0]
    ldh [$C0], a
    ret nz

    nop
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    and b
    ld h, b
    add b
    ld c, $01
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    dec bc
    inc b
    rrca
    ld bc, $0F1F
    rrca
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld [hl], b
    add b
    ld hl, sp+$30
    ld hl, sp-$50
    ldh a, [$80]
    ret nz

    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    inc a
    inc a
    ld [$0608], sp
    ld b, $00
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$F0]
    ldh a, [$F0]
    jr c, jr_00D_5682

    db $10
    db $10
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
    stop
    ld [$0000], sp
    nop
    ld hl, sp+$00
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    jr jr_00D_566E

jr_00D_566E:
    jr c, jr_00D_5680

    adc a
    ld b, $5E
    inc c
    ld a, [hl]
    nop
    ld h, [hl]
    jr @+$54

    inc l
    ld d, d
    inc l
    ld d, [hl]
    jr z, jr_00D_56DD

    inc h

jr_00D_5680:
    cp h
    ld e, b

jr_00D_5682:
    sbc b
    ld h, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc $30
    rst $38
    ld b, [hl]
    rst $38
    inc e
    ld a, $00
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld c, $0E
    inc b
    inc b
    ldh [$E0], a
    ldh a, [$F0]
    ldh a, [$F0]
    ldh [$E0], a
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
    ldh [rP1], a
    stop
    ld [$0400], sp
    nop
    call nz, $E800
    ret nz

    sbc h
    adc b
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp-$08
    jr c, @+$3A

    db $10
    db $10
    ld h, b
    ld h, b
    add hl, sp
    ld de, $051F
    rrca
    inc bc
    rlca
    nop
    ld [$0807], sp
    rlca
    inc c

jr_00D_56DD:
    inc bc
    inc c
    rlca
    sbc h
    adc b
    ld hl, sp-$60

jr_00D_56E4:
    ldh a, [$C0]

jr_00D_56E6:
    ldh [rP1], a

jr_00D_56E8:
    db $10
    ldh [$50], a
    and b
    ld d, b
    and b
    ldh a, [rLCDC]
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00D_5710

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld [hl], $47
    jr c, jr_00D_5747

    inc a
    ld h, d
    inc e
    ld a, [c]
    ld l, h
    cp $70
    ld a, [hl]
    inc [hl]
    ld a, h
    nop

jr_00D_5710:
    ld hl, sp-$60
    ldh a, [$C0]
    ldh [rP1], a
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$38], a
    ret nc

    ld a, b
    or b
    jr nc, jr_00D_56E4

    jr nz, jr_00D_56E6

    jr nc, jr_00D_56E8

    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, @-$06

    nop
    jr c, @+$12

    jr jr_00D_5734

jr_00D_5734:
    rlca
    nop
    ld [$0807], sp
    rlca
    inc c
    inc bc
    inc c
    inc bc
    ld c, $05
    inc e
    ld [$0018], sp
    ldh [rP1], a
    db $10

jr_00D_5747:
    ldh [rNR10], a
    ldh [$50], a
    and b
    ld d, b
    and b
    ldh a, [rLCDC]
    rst $28
    ld d, [hl]
    ld b, a
    jr c, @+$24

    inc e

jr_00D_5756:
    ld a, [hl-]
    inc b

jr_00D_5758:
    inc a
    jr jr_00D_57D7

    jr c, jr_00D_57DB

    inc [hl]
    ld a, h
    nop
    nop
    nop

jr_00D_5762:
    ldh [rP1], a
    stop
    ld [$0400], sp
    nop
    inc b
    nop
    ld [$1C00], sp
    ld [$0000], sp
    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$F0]
    ldh [$E0], a
    ldh [$E0], a
    jr jr_00D_5782

jr_00D_5782:
    ldh [rP1], a
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$38], a
    ret nc

    jr c, jr_00D_5762

    jr nc, @-$3E

    jr nz, jr_00D_5756

    jr nz, jr_00D_5758

    jr c, @-$3E

    db $FC
    jr @-$02

    ld [hl], b
    ld hl, sp+$00
    nop
    nop
    rlca
    nop
    ld [$1000], sp
    nop
    jr nz, jr_00D_57AA

jr_00D_57AA:
    jr nz, jr_00D_57AC

jr_00D_57AC:
    ld d, $00
    rrca
    ld b, $00
    nop
    ldh [rP1], a
    stop
    ld [$0800], sp
    nop
    ld a, b
    nop
    ldh a, [$60]
    jr nc, jr_00D_57E0

    nop
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $FC
    db $FC
    ld c, b
    ld c, b
    ld b, $06
    nop
    nop
    nop
    nop

jr_00D_57D4:
    nop
    nop

jr_00D_57D6:
    add b

jr_00D_57D7:
    add b
    add b
    add b
    nop

jr_00D_57DB:
    nop
    nop
    nop
    nop
    nop

jr_00D_57E0:
    rrca
    ld b, $0F
    inc bc
    rlca
    ld bc, $0003
    ld [bc], a
    ld bc, $0102
    ld b, $01
    ld c, $05
    jr nc, jr_00D_5812

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    nop
    ld h, b
    add b
    or b
    ld b, b
    ld a, b
    sub b
    ld c, $05
    inc b
    inc bc
    inc b
    inc bc
    jr jr_00D_580F

    dec sp
    inc d
    ccf
    dec de
    rra
    rrca
    rrca

jr_00D_580F:
    nop
    ld a, b
    or b

jr_00D_5812:
    jr nc, jr_00D_57D4

    jr c, jr_00D_57D6

    inc a
    ret c

    db $FC
    jr c, @-$06

    ld [hl], b

jr_00D_581C:
    ldh a, [$60]

jr_00D_581E:
    ldh [rP1], a
    rst $38
    ld a, [hl-]
    ld a, a
    ld e, $3E
    nop
    jr z, @+$12

    inc l
    db $10
    inc l
    db $10
    jr z, @+$12

    ld a, b
    jr nz, jr_00D_58A9

    jr nc, @+$7A

    nop
    jr z, @+$12

jr_00D_5836:
    ld c, h
    jr nc, @+$80

    nop
    ld a, a
    inc a
    ld a, a
    ld a, $7F
    nop
    rrca
    ld b, $0F
    inc bc
    rlca
    ld bc, $0003
    ld [bc], a
    ld bc, $0205
    ld a, [bc]
    dec b
    inc e
    dec bc
    jr nc, jr_00D_5872

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    jr nz, jr_00D_581C

    jr nz, jr_00D_581E

    ld [hl], b
    and b
    ld e, $0D
    inc c
    inc bc
    inc b
    inc bc
    ld [$1F07], sp
    nop
    ccf
    rla
    ccf
    rrca
    rra
    nop
    ld h, b
    add b

jr_00D_5872:
    ld b, b

jr_00D_5873:
    add b
    jr c, jr_00D_5836

    inc a
    ret c

jr_00D_5878:
    db $FC
    jr c, jr_00D_5873

    ld [hl], b
    ld hl, sp+$60
    ldh [rP1], a
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_00D_58A7

    ld [hl+], a
    dec e
    ld c, a
    jr nc, jr_00D_58EC

    jr z, jr_00D_58DE

    ld [hl], $E0
    nop
    db $10
    ldh [rOBP0], a
    or b
    jr z, @-$2E

    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$C0]
    ccf
    inc bc
    rra
    nop
    dec sp
    inc b
    ld a, h

jr_00D_58A7:
    inc bc
    ld a, [hl]

jr_00D_58A9:
    ld bc, $017E
    ld a, [hl]
    ld sp, $71FE
    ldh a, [$E0]
    ldh [rP1], a
    or b
    ld b, b
    jr nc, jr_00D_5878

    ld [hl], b
    add b
    ld a, b
    add b
    ld a, h
    sub b
    ld [hl], h
    sbc b
    xor [hl]
    ld d, c
    sub $29
    ld [$FC15], a
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    ccf
    nop
    rra
    nop
    ld [hl], h
    adc b
    ld [hl], h
    adc b
    ld a, b
    add b

jr_00D_58D6:
    ld [hl], b
    add b
    ld a, b
    add b
    ld hl, sp+$00
    ldh a, [rP1]

jr_00D_58DE:
    add b
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1207], sp
    dec c
    db $10
    rrca
    db $10
    rrca

jr_00D_58EC:
    db $10
    rrca
    jr jr_00D_58F7

    ld hl, sp+$00
    add h
    ld a, b
    ld [bc], a
    db $FC
    ld [bc], a

jr_00D_58F7:
    db $FC
    ld [bc], a
    db $FC
    ld a, [de]
    db $E4
    inc a
    ret nc

    ld a, b
    or b
    ld [$0807], sp
    rlca
    rla
    ld [$0F10], sp
    add hl, de
    ld b, $1F
    nop
    rrca
    nop
    rrca
    nop
    ldh a, [$60]
    ldh [rP1], a
    jr nz, jr_00D_58D6

    ld [hl], b
    add b
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$1CFA], sp
    rlca
    nop
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
    rrca
    nop
    nop
    nop
    push af
    ld a, [bc]
    ld a, [$FD05]
    ld [bc], a
    ld a, [$F800]
    nop

jr_00D_593A:
    db $FC

jr_00D_593B:
    nop
    db $FC
    nop
    ld hl, sp+$00
    ccf
    db $10
    rra
    dec b
    rla

jr_00D_5945:
    dec bc
    rrca
    nop
    dec de
    inc b
    jr @+$09

    inc e
    inc bc
    inc a
    dec bc
    db $FC
    ld [$A0F8], sp

jr_00D_5954:
    add sp, -$30
    ldh a, [rP1]
    cp b
    ld b, b
    ld a, b
    add b
    ld hl, sp+$10
    add sp, $30
    inc l
    inc de
    inc e
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    ld e, $01
    rrca
    nop
    ret z

    jr nc, jr_00D_593B

    jr nc, jr_00D_5945

    jr nz, jr_00D_59E7

    add b
    jr c, jr_00D_593A

jr_00D_597A:
    inc a
    ret nz

    ld a, h
    add b
    ld hl, sp+$00
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_00D_59A7

    ld hl, $2B1E
    inc d
    rra
    nop
    ccf
    db $10
    ret nz

    nop
    jr nc, jr_00D_5954

jr_00D_5994:
    ld [$84F0], sp
    ld a, b
    inc b
    ld hl, sp-$2C
    jr z, @-$06

    nop
    db $FC
    ld [$A0F8], sp
    add sp, -$30
    ld hl, sp+$00
    sbc h

jr_00D_59A7:
    ld h, b
    inc a
    ret nz

    inc a
    ret nz

    ld a, [hl]
    sbc b
    ld a, d
    sbc h
    ld a, d
    add h

jr_00D_59B2:
    ld a, d
    add h
    ld a, d
    add h
    inc a
    ret nz

    jr c, jr_00D_597A

    inc a
    ret nz

    ld a, h
    add b
    ld hl, sp+$00
    jr @+$09

    ld [$1C07], sp
    inc bc
    inc sp
    inc c
    jr c, @+$09

    inc a
    inc bc
    rra
    nop
    rrca
    nop
    jr jr_00D_59B2

    jr nc, jr_00D_5994

    ld a, b
    add b
    ret c

    jr nz, @+$3A

    ret nz

    ld a, b
    add b
    db $FC
    db $10
    db $F4
    jr jr_00D_59F0

    nop
    rrca
    nop
    rrca
    nop
    rrca

jr_00D_59E7:
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop

jr_00D_59F0:
    db $F4
    ld [$08F4], sp
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    rlca
    nop
    ld [$0807], sp
    rlca
    ld [de], a
    dec c
    db $10
    rrca
    db $10
    rrca
    jr c, @+$19

    jr jr_00D_5A17

    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]

jr_00D_5A17:
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [rNR32]
    add sp, $18
    ldh [$30], a
    ret nz

    ld l, b
    sub b
    call z, $8C30
    ld [hl], b
    inc e
    ldh [$FE], a
    ld [$0CFA], sp
    ld a, [$FA04]
    inc b
    ld a, [$FC04]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, @+$21

    jr nz, jr_00D_5A69

    jr nz, jr_00D_5A6B

    ld [hl+], a
    dec e
    rla
    ld a, [bc]
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$54
    xor b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$A0]
    rla
    ld a, [bc]
    inc hl
    dec e
    rla
    ld [$030C], sp
    add hl, bc

jr_00D_5A69:
    ld b, $1B

jr_00D_5A6B:
    inc b

Jump_00D_5A6C:
    ccf
    nop
    ld a, a
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$60]
    add sp, $70
    cp a
    ld b, b
    ld e, a
    jr nz, jr_00D_5AC4

    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    call nc, $EA28
    inc d
    db $F4
    ld [$00F8], sp
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ldh [rP1], a
    inc hl
    dec e
    rla
    ld [$011E], sp
    add hl, bc
    ld b, $0F
    nop
    rrca
    nop
    rlca
    ld bc, $0107
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    dec b
    ld [bc], a
    dec c
    ld [bc], a

jr_00D_5AC4:
    dec e
    ld [bc], a
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nz

    nop
    rla

jr_00D_5AE1:
    ld a, [bc]
    inc hl
    dec e
    rla
    ld [$031C], sp
    ld e, $01
    rra
    nop
    ccf
    jr jr_00D_5B6E

    jr jr_00D_5AE1

    and b
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    add b

jr_00D_5AFA:
    ld [hl], b
    add b
    ld l, b
    or b
    ld [hl], h
    xor b
    xor a
    ld d, b
    ld e, a
    jr nz, jr_00D_5AC4

    ld b, b
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, d
    sub h
    ld d, h
    adc b
    ld a, b
    add b
    inc a
    ret nz

    inc e
    ldh [$38], a
    ret nz

    ld hl, sp+$00
    ldh [rP1], a
    rrca
    nop
    rra
    nop
    rra

jr_00D_5B25:
    nop
    ccf
    nop
    inc a
    inc bc
    ld a, [hl-]
    dec b
    scf
    ld a, [bc]
    add hl, sp
    rla
    nop
    nop
    ret nz

    nop

jr_00D_5B34:
    ldh [rP1], a

jr_00D_5B36:
    ldh a, [rP1]
    jr c, jr_00D_5AFA

    ret c

    jr nz, jr_00D_5B25

    ret nc

    sub b
    ldh [$1F], a
    dec b
    rlca
    inc bc
    dec bc
    inc b
    ld [de], a
    dec c
    inc de
    inc c
    ld d, $09
    ld e, $05
    ld e, $0D
    ldh a, [$A0]
    ldh [$C0], a
    ret nz

    nop
    ld h, b
    add b
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    inc c
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    inc de
    inc c
    rra
    ld bc, $0F1F

jr_00D_5B6E:
    rrca
    nop
    ld b, b
    add b
    jr nz, jr_00D_5B34

    jr nz, jr_00D_5B36

    ld [hl], b
    add b
    ld hl, sp+$30
    ld hl, sp-$50
    ldh a, [$80]
    ret nz

    nop
    inc bc
    nop
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
    rrca
    nop
    rlca
    nop
    ldh [rP1], a
    db $FC
    nop
    cp $00
    cp $00
    ld a, [$FA04]
    inc b
    db $FC
    db $10
    ld hl, sp+$30
    ld a, [hl]
    inc c
    ld a, b
    nop
    ld d, h
    jr z, jr_00D_5BF9

    inc l
    ld [hl], d
    inc c
    ld d, [hl]
    jr z, @+$60

    inc h
    ld e, h
    inc l
    sbc h
    ld h, b
    add h
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    add $38
    rst $38
    ld b, [hl]
    rst $38
    inc e
    ld a, $00
    inc bc
    nop
    rlca
    nop
    rrca

jr_00D_5BC5:
    nop
    rrca
    nop
    inc e
    inc bc
    ld a, [de]
    dec b
    rla
    ld a, [bc]
    add hl, sp
    rla
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    jr c, @-$3E

    ret c

    jr nz, jr_00D_5BC5

    ret nc

    sbc h
    add sp, $39
    rla

jr_00D_5BE2:
    rra
    dec b
    rrca
    inc bc
    rlca
    nop
    ld a, [bc]
    dec b
    dec bc
    inc b
    ld c, $01
    ld c, $05
    sbc h
    add sp, -$08
    and b
    ldh a, [$C0]
    ldh [rP1], a
    ld d, b

jr_00D_5BF9:
    and b
    ret nc

    jr nz, @-$0E

    ld b, b
    ldh a, [$60]
    ld b, [hl]
    jr c, @+$44

    inc a
    ld b, d
    inc a
    ld h, d
    inc e
    ld a, [c]
    ld l, h
    cp $70
    ld a, [hl]
    inc [hl]
    ld a, h
    nop
    ld hl, sp-$60
    ldh a, [$C0]
    ldh [rP1], a
    ld d, b
    and b
    ret z

    jr nc, @+$5A

    and b
    ld a, b
    sub b
    ld a, b
    or b
    jr nc, jr_00D_5BE2

    db $10
    ldh [rNR10], a
    ldh [$30], a

jr_00D_5C27:
    ret nz

    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_00D_5C27

    nop
    ccf
    db $10
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
    rrca
    nop
    inc c
    inc bc
    inc c
    inc bc
    db $FC
    ld [$00F8], sp
    ldh a, [rP1]
    ldh [rP1], a
    ld d, b
    and b
    sub b
    ld h, b
    ldh a, [rP1]
    ldh a, [$60]
    adc [hl]
    ld [hl], b
    add h
    ld a, b
    add h
    ld a, b
    db $F4
    ld [$307C], sp
    ld hl, sp+$70
    db $FC
    ld l, b
    ld hl, sp+$00
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    ldh a, [rP1]
    ldh [rP1], a
    ld d, b
    and b
    ld c, b
    or b
    ld c, b
    or b

jr_00D_5C7C:
    ld e, b
    and b
    ld hl, sp+$10
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a

jr_00D_5C89:
    ldh [$FC], a
    jr jr_00D_5C89

    ld [hl], b
    ld hl, sp+$00

jr_00D_5C90:
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld e, $01
    rrca
    ld b, $80
    nop

jr_00D_5CA2:
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    adc b
    ld [hl], b
    jr z, jr_00D_5C7C

    ld hl, sp+$00
    jr nc, jr_00D_5C90

    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0007
    ld b, $01
    ld b, $01
    ld b, $01
    dec b
    ld [bc], a
    jr nc, jr_00D_5CA2

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    nop
    ld h, b
    add b
    ldh [rLCDC], a
    ldh [$C0], a
    ld [$0807], sp
    rlca
    db $10
    rrca
    jr nz, jr_00D_5CF7

    ld [hl], a
    jr z, jr_00D_5D5A

    ld [hl], $7F
    ld e, $7F
    nop
    ret nz

    nop
    add b
    nop
    ld [hl], b
    add b
    ld a, b
    or b
    ld hl, sp+$70
    ldh a, [$E0]
    ldh a, [$C0]
    ldh [rP1], a
    ld a, a
    ld a, [hl-]
    ccf
    ld e, $7E
    nop
    ld d, h

jr_00D_5CF7:
    jr z, @+$4E

    jr nc, jr_00D_5D4F

    jr z, jr_00D_5D79

    db $10
    ld a, b
    jr nc, jr_00D_5D08

    nop
    ld [$0807], sp
    rlca
    db $10
    rrca

jr_00D_5D08:
    inc de
    inc c
    rrca
    inc bc
    rrca
    inc bc
    rlca
    nop
    add b
    nop

jr_00D_5D12:
    add b
    nop
    add b
    nop

jr_00D_5D16:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$C0]
    ldh a, [$E0]
    ldh a, [rP1]
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0007
    add hl, bc
    ld b, $09
    ld b, $1E
    add hl, bc
    ld e, $0D
    jr nc, jr_00D_5D12

    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    inc c
    inc bc
    inc b
    inc bc
    ld [$1007], sp
    rrca
    db $10
    rrca
    inc hl
    inc e
    ccf
    inc bc
    rra

jr_00D_5D4F:
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr c, jr_00D_5D16

    inc a
    ret c

    ld a, h
    cp b

jr_00D_5D5A:
    ld hl, sp+$70
    ld hl, sp+$60
    ldh [rP1], a
    rlca
    nop
    ld a, [bc]
    inc b
    inc d
    ld [$1028], sp
    add hl, hl
    db $10
    ld c, e
    ld sp, $2A5F
    ld e, a
    ld [hl+], a
    ldh a, [rP1]
    ld [$0400], sp
    nop
    inc b
    nop
    and h

jr_00D_5D79:
    nop
    db $F4
    and b
    ld hl, sp-$30
    ld hl, sp-$30
    nop
    nop

jr_00D_5D82:
    nop
    ld a, $00
    ld a, a

jr_00D_5D86:
    nop
    rst $38

jr_00D_5D88:
    nop
    rlc b
    add c
    nop
    nop
    nop
    nop
    cpl
    ld bc, $0007
    inc b
    inc bc
    dec b
    ld [bc], a
    rlca
    nop
    rrca
    ld b, $0F
    ld b, $07
    nop
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, @-$3E

    db $10
    ldh [$B0], a
    ld b, b
    ld hl, sp+$10
    ldh a, [rLCDC]
    ldh [rP1], a
    ld b, $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0205
    rlca

jr_00D_5DBB:
    nop
    rrca
    rlca
    rlca
    nop

jr_00D_5DC0:
    jr nz, jr_00D_5D82

    jr nz, @-$3E

    jr nz, jr_00D_5D86

    jr c, jr_00D_5D88

    db $FC
    jr @-$02

    ret c

    ld hl, sp-$40
    ldh [rP1], a
    inc bc
    nop
    inc b
    inc bc
    ld [$1007], sp
    rrca
    db $10

jr_00D_5DD9:
    rrca
    ld [de], a
    dec c
    inc d
    dec bc
    ld [$F807], sp
    nop
    inc h
    ret nz

    ld [de], a
    ldh [rNR12], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [$3C], a
    ret nc

    jr c, jr_00D_5DC0

    nop
    nop
    nop
    jr jr_00D_5DF5

jr_00D_5DF5:
    inc c
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    add [hl]
    ld a, b
    ld a, [hl]
    nop
    ld b, h
    jr c, @+$58

    jr z, jr_00D_5E47

    nop
    ld a, $2C
    ld a, [hl]
    inc c
    ld c, h
    jr nc, jr_00D_5DD9

    jr nc, jr_00D_5DBB

    ld d, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b

jr_00D_5E18:
    adc $30
    rst $38
    ld b, [hl]
    rst $38
    inc e
    ld a, $00
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_00D_5E47

    ld [hl+], a
    dec e
    scf
    ld a, [bc]
    ccf
    dec d
    rra
    dec b
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp-$3C
    jr c, @-$12

    ret nc

    db $FC
    xor b
    ld hl, sp-$60
    rra
    dec b

jr_00D_5E42:
    rrca
    inc bc

jr_00D_5E44:
    rlca
    nop

jr_00D_5E46:
    inc c

jr_00D_5E47:
    inc bc

jr_00D_5E48:
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    rrca
    nop
    rrca
    dec b
    ld hl, sp-$60
    ldh a, [$C0]
    ldh [rP1], a
    jr nz, jr_00D_5E18

    ld d, b
    and b
    ld [hl], b
    add b
    ldh a, [$60]
    ldh a, [$60]
    ccf
    nop
    ld de, $110E
    ld c, $31
    ld c, $79
    ld [hl], $7F
    jr c, jr_00D_5EAC

    ld a, [de]
    ld a, $00
    ldh a, [$C0]
    ldh [rP1], a
    db $10
    ldh [$50], a
    and b
    ld d, b
    and b
    ldh a, [rP1]
    ld hl, sp-$50
    ld hl, sp+$30
    jr nc, jr_00D_5E42

    jr nz, jr_00D_5E44

    jr nz, jr_00D_5E46

    jr nc, jr_00D_5E48

    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, @-$06

    nop
    ld de, $080E
    rlca
    rlca
    nop
    inc c
    inc bc
    ld a, [bc]
    dec b
    dec bc
    inc b
    rrca
    ld bc, $040F
    adc b
    ld [hl], b

jr_00D_5EA2:
    db $10
    ldh [$E0], a
    nop

jr_00D_5EA6:
    db $10
    ldh [$50], a
    and b

jr_00D_5EAA:
    ldh a, [rP1]

jr_00D_5EAC:
    ldh a, [$60]
    ldh a, [$60]
    adc $30
    call nz, Call_00D_5438
    jr z, @+$76

    ld [$3078], sp
    ld hl, sp+$70
    db $FC
    ld l, b
    ld hl, sp+$00
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$44
    cp b
    adc b
    ld [hl], b
    db $10
    ldh [$E0], a
    nop
    db $10
    ldh [$50], a
    and b
    ld d, b
    and b
    ldh a, [rP1]
    ld hl, sp-$50
    ld hl, sp+$30
    jr nc, jr_00D_5EA2

    jr nz, @-$3E

    jr nz, jr_00D_5EA6

    jr nz, @-$3E

    jr c, jr_00D_5EAA

    ld a, h
    sbc b
    db $FC
    ld [hl], b
    ld hl, sp+$00
    rrca
    nop
    ld de, $210E
    ld e, $41
    ld a, $40
    ccf
    add e
    ld a, h
    and a
    ld e, e
    ld e, e
    inc b
    ldh a, [rP1]
    ld [$0400], sp

jr_00D_5F05:
    nop
    ld [bc], a
    nop
    xor d
    nop
    db $FC
    jr nz, jr_00D_5F05

    ld d, b
    ld hl, sp-$30
    nop
    nop
    nop
    ld a, b
    nop
    ld a, h

jr_00D_5F16:
    nop
    ld a, [hl]
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    inc b
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0207
    rlca
    ld [bc], a
    inc bc
    nop
    ld hl, sp-$30
    ld hl, sp-$10
    ldh a, [rP1]
    ld b, b
    add b
    or b
    ld b, b
    ld hl, sp+$30
    ld hl, sp-$50
    ldh a, [rP1]
    ld [bc], a
    ld bc, $0001
    ld b, $01
    jr jr_00D_5F4F

    dec sp
    inc d
    ccf
    dec de
    ccf
    rrca
    ccf

jr_00D_5F4F:
    nop
    ld b, b
    add b
    ld b, b

jr_00D_5F53:
    add b
    jr c, jr_00D_5F16

    inc a
    ret c

    db $FC
    jr c, jr_00D_5F53

    ld [hl], b
    ld hl, sp+$60
    ldh a, [rP1]
    rst $38

jr_00D_5F61:
    ld e, $7E
    nop
    jr z, @+$12

    inc l
    db $10
    inc l
    db $10
    jr c, jr_00D_5F6C

jr_00D_5F6C:
    ld a, b
    jr nc, jr_00D_5FE7

    jr nc, jr_00D_5F61

    nop
    ld d, b
    jr nz, jr_00D_5FC5

    jr nz, @-$66

    ld h, b
    db $FC
    nop
    cp $78
    cp $7C
    cp $00
    ld e, e
    inc b
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    rrca
    ld b, $0F
    ld b, $07
    nop
    ld hl, sp-$30
    ld hl, sp-$10
    ldh a, [rP1]
    ld b, b
    add b
    and b
    ld b, b
    ldh [rP1], a
    ldh a, [$A0]
    ldh [rP1], a
    ld [bc], a
    ld bc, $0001
    ld [bc], a
    ld bc, $0304
    dec bc
    inc b
    rra
    dec bc
    rra
    rlca
    rrca
    nop
    ld b, b
    add b
    ld h, b
    add b
    inc a
    ret nz

    ld e, $EC
    cp $1C
    db $FC
    cp b
    db $FC
    or b
    ldh a, [rP1]
    dec sp
    nop
    ld b, a
    jr c, @+$4A

jr_00D_5FC5:
    scf
    ld d, b
    cpl
    ld d, b
    cpl
    ld d, c
    ld l, $5B
    dec h
    ld e, a
    ld a, [hl+]
    ret nz

    nop
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp-$5E
    ld e, h
    ld a, [c]
    xor h
    ld a, [$4FD4]
    ld [hl-], a
    dec hl
    ld de, $0A17
    dec c

jr_00D_5FE7:
    ld [bc], a
    dec b
    ld [bc], a
    rrca
    ld b, $0F
    ld b, $07
    nop
    db $FC
    ret nc

    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [$C0]
    ldh a, [rP1]
    ld hl, sp+$10
    ldh a, [$C0]
    ldh [rP1], a
    db $10
    rrca
    inc c
    inc bc
    ld c, $05
    ld c, $05
    rra
    ld [$031C], sp
    jr nz, jr_00D_602D

    rra
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    sub b
    ld h, b
    sub b
    ld h, b
    ldh [rP1], a
    add b
    nop
    ld [$90F0], sp
    ld h, b
    ret nc

    and b
    ret z

    or b
    add sp, $10
    jr c, @-$3E

    inc b

jr_00D_602D:
    ld hl, sp-$08
    nop
    inc bc
    nop
    inc e
    inc bc
    dec h
    ld a, [de]
    ld b, [hl]
    add hl, sp
    ld c, d
    dec [hl]
    ld c, d
    dec [hl]
    ld c, d
    dec [hl]
    ld c, h
    inc sp
    ld hl, sp+$00
    inc b
    ld hl, sp-$3E
    inc a
    ld [hl+], a
    call c, $D42A
    ld e, d
    and h
    ld a, h
    sub b
    ld a, b
    or b
    ld a, [hl+]
    ld de, $1029
    inc de
    nop
    inc bc
    nop
    ld bc, $0101
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $A070
    ld h, b
    add b
    ld h, b
    ret nz

    or b
    ld b, b
    or b
    ld b, b
    ldh a, [$60]
    ldh a, [$60]
    ld h, b
    add b
    ret z

    jr nc, @-$46

    ld b, b
    cp b
    ld d, b
    cp b
    ld d, b
    cp $10
    cp c
    ld b, [hl]
    db $E3
    inc e
    ld a, $00
    inc de
    inc c
    rla
    ld a, [bc]
    rla
    ld a, [bc]
    daa
    ld a, [de]
    ld h, e
    inc e
    sbc l
    ld h, d
    rst $00
    jr c, jr_00D_610B

    nop
    inc e
    nop
    daa
    jr jr_00D_60DD

    scf
    ld d, b
    cpl
    ld d, b
    cpl
    ld d, d
    dec l
    ld d, a

jr_00D_609D:
    ld a, [hl+]
    ld a, a
    dec d
    jr c, jr_00D_60A2

jr_00D_60A2:
    db $E4
    jr jr_00D_60B7

    db $EC
    ld a, [bc]
    db $F4
    adc d
    ld [hl], h
    jp z, $EA34

    call nc, $A8FE
    ld a, a
    dec d
    ld e, a
    dec h
    cpl
    inc de
    rla

jr_00D_60B7:
    nop
    rrca
    dec b
    dec bc

jr_00D_60BB:
    inc b
    dec bc
    inc b
    rrca

jr_00D_60BF:
    dec b
    cp $A8

jr_00D_60C2:
    ld a, [$F4A4]
    ret z

    add sp, $00
    ldh a, [$A0]
    ret nc

    jr nz, jr_00D_609D

    jr nz, jr_00D_60BF

    ld h, b
    ld a, a
    ld b, $36
    ld [$143A], sp
    ld a, c
    ld d, $99
    ld h, [hl]
    adc [hl]
    ld [hl], b
    ld c, d

jr_00D_60DD:
    inc [hl]
    ld a, h
    nop
    ld a, [$F4A4]
    ret z

    add sp, $00
    ldh a, [$A0]
    ret nc

    jr nz, jr_00D_60BB

    jr nz, @-$06

    or b
    ld hl, sp+$30
    ld c, $01
    inc bc
    nop
    inc bc
    ld bc, $0107
    dec bc
    inc b
    db $10
    rrca
    ld de, $0F0E
    nop
    jr nc, jr_00D_60C2

    jr nz, @-$3E

    sub b
    ld h, b
    sub b
    ld h, b
    add sp, $10
    add h

jr_00D_610B:
    ld a, b
    call nz, $F838
    nop
    cp $60
    ld h, h
    jr @+$74

    inc l
    halt
    jr z, jr_00D_6192

jr_00D_6119:
    ld h, $71
    ld c, $52
    inc l
    ld a, $00
    jr jr_00D_6122

jr_00D_6122:
    db $E4
    jr @+$24

    call c, $DC22
    ld [hl+], a
    call c, $EC12
    inc d
    add sp, $14
    add sp, $28
    rla
    jr z, jr_00D_614B

    inc e
    inc bc
    rlca
    nop
    rrca
    dec b
    dec bc

jr_00D_613B:
    inc b
    dec bc

jr_00D_613D:
    dec b
    rrca
    inc b
    inc d
    add sp, $14
    add sp, $38
    ret nz

    ldh [rP1], a
    ldh a, [$A0]
    ret nc

jr_00D_614B:
    jr nz, jr_00D_613D

    ld h, b
    ldh a, [$60]
    ld l, a
    db $10
    ld h, [hl]
    jr jr_00D_6183

    inc d
    ld a, $04
    inc h
    jr jr_00D_619F

    jr c, jr_00D_61A7

    inc [hl]
    ld a, h
    nop
    inc d
    add sp, $38
    ret nz

    ldh [rP1], a
    ldh a, [$A0]
    ret nc

    jr nz, jr_00D_613B

    jr nz, @-$06

    or b
    ld hl, sp+$30
    ld c, $01
    ld [bc], a
    ld bc, $0304
    inc b
    inc bc
    inc c
    inc bc
    inc de
    inc c
    jr @+$09

    rrca
    nop
    jr nc, @-$3E

    ld h, b

jr_00D_6183:
    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld hl, sp+$40
    db $E4
    jr jr_00D_6119

    ld [hl], b
    ld hl, sp+$00
    or $08

jr_00D_6192:
    ld l, [hl]
    db $10
    ld e, h
    jr z, jr_00D_61F3

    jr nz, @+$26

    jr @+$24

    inc e
    ld d, d
    inc l
    ld a, [hl]

jr_00D_619F:
    nop
    inc c
    nop
    inc de
    inc c
    ld [hl+], a
    dec e
    inc h

jr_00D_61A7:
    dec de
    inc h
    dec de
    inc h
    dec de
    add hl, hl
    ld d, $2B
    dec d
    nop
    nop
    ld hl, sp+$00
    inc b
    ld hl, sp+$02
    db $FC
    ld bc, $15FE
    ld [$50BE], a
    db $FC
    xor b
    dec hl
    dec d
    dec l
    ld [de], a
    ld a, [hl+]
    ld de, $0011
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    db $FC
    xor b
    db $FC
    ld l, b
    db $FC
    jr c, @-$06

    nop
    ldh a, [rNR41]
    db $EC
    db $10
    or $4C
    cp $0C
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    dec bc
    dec b
    add hl, bc
    ld b, $04
    inc bc
    inc bc
    nop
    sbc h
    ld h, b
    ld d, b

jr_00D_61F3:
    jr nz, jr_00D_61F3

    ld b, b
    jp hl


    sub [hl]
    pop af
    ld c, $22
    call c, $D826
    db $FC
    nop
    dec l
    ld [de], a
    ld a, [hl+]
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    db $FC
    ld l, b
    db $FC
    jr c, @-$06

    nop
    ldh [rLCDC], a
    or b
    ld b, b
    or b
    ld b, b
    and b
    ret nz

    ldh [$C0], a
    ld a, b
    nop

jr_00D_6222:
    jr c, jr_00D_6224

jr_00D_6224:
    jr c, @+$12

    inc a
    db $10
    ld a, $00
    ld b, e
    inc a
    ld b, c
    ld a, $7F
    nop
    dec hl
    dec d
    dec l
    ld [de], a
    ld a, [hl+]
    ld de, $0011
    inc bc
    nop
    ld b, $01
    dec c
    ld b, $0F

jr_00D_623F:
    ld b, $FC
    xor b
    db $FC
    ld l, b
    db $FC
    jr c, jr_00D_623F

    nop
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp-$30

jr_00D_624E:
    ldh a, [rP1]
    rlca
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld a, [bc]
    dec b
    inc c
    inc bc
    rlca
    nop
    jr nz, jr_00D_6222

    or b
    ld b, b
    cp $20
    ld a, c
    sub [hl]
    pop af
    ld c, $22
    call c, $D826
    ld hl, sp+$00
    inc b
    inc bc
    dec c
    ld [bc], a
    ld a, e
    inc b
    sub a
    ld l, c
    adc a
    ld [hl], b
    ld b, h
    dec sp
    ld h, h
    dec de

jr_00D_627E:
    rra
    nop
    ldh [rP1], a
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld d, b
    and b
    jr nc, jr_00D_624E

    ldh [rP1], a
    rrca
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [de]
    inc b
    ld a, $00
    ld h, c
    ld e, $41
    ld a, $7F
    nop
    add hl, sp
    ld b, $0A
    inc b
    ld a, l
    ld [bc], a
    sbc [hl]
    ld l, c
    adc a
    ld [hl], b
    ld b, h
    dec sp
    ld h, h
    dec de
    ccf
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld d, b
    and b
    sub b
    ld h, b
    jr nz, jr_00D_627E

    ret nz

    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rrca
    rlca
    adc a
    rlca
    ld e, a
    rrca
    cp a
    inc c
    call c, $E908
    ld b, $80
    nop
    ldh [$80], a
    ldh a, [$E0]
    ld sp, hl
    ldh a, [$FA]
    ldh a, [$FD]
    jr nc, jr_00D_6318

    db $10
    sub a
    ld h, b
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
    call nz, $08C4
    ld [$0000], sp
    ld [hl], b
    nop
    cp $70
    rst $38
    adc $FF
    ld de, $5EFF
    rst $38
    rst $28
    rst $38
    push af
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    nop
    sbc l
    ld h, b
    jr c, jr_00D_6314

jr_00D_6314:
    cp $00
    db $EB
    nop

jr_00D_6318:
    db $E4
    nop
    db $FC
    ld [$18FC], sp

jr_00D_631E:
    db $FC
    jr jr_00D_6323

    ld [bc], a
    rst $00

jr_00D_6323:
    rst $00
    ld bc, $1001
    db $10
    jr jr_00D_6342

    nop
    nop
    nop
    nop
    nop
    nop
    db $FD
    ld [hl], h
    db $F4
    jr nz, @-$5E

    nop
    nop
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

jr_00D_6342:
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    nop
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld hl, sp+$00
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$60]
    ldh a, [$60]
    ld h, b
    add b
    jr nz, jr_00D_631E

    ret nz

    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rrca
    rlca
    rrca
    rlca
    sbc a
    rrca
    ld e, a
    inc c
    cp h
    ld [$06E9], sp
    add b
    nop
    ldh [$80], a
    ldh a, [$E0]
    ld hl, sp-$10
    ld sp, hl
    ldh a, [$FA]
    jr nc, jr_00D_63BA

    db $10
    sub a
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
    ld bc, $C201
    jp nz, $0808

    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    db $FC
    ld [hl], b
    rst $38
    call z, $13FF
    rst $38
    ld e, h
    rst $38
    db $EB
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [rNR41]
    ld h, b
    nop
    sbc a
    ld h, b
    inc a
    nop
    ld a, [c]
    nop
    rst $28
    nop
    and $00

jr_00D_63BA:
    db $FC
    ld [$18FC], sp
    db $FC
    jr jr_00D_63C1

jr_00D_63C1:
    nop
    jp $0DC3


    dec c
    db $10
    db $10
    jr jr_00D_63E2

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    ld [hl], l
    jr nz, @+$22

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

jr_00D_63E2:
    rlca
    ld [bc], a
    rrca
    rlca
    rrca
    rlca
    rst $18
    rrca
    ccf
    inc c
    call c, Call_00D_6908
    ld b, $80
    nop
    ldh [$80], a
    ldh a, [$E0]
    ld hl, sp-$10
    ei
    ldh a, [$FC]
    jr nc, jr_00D_6438

    db $10
    sub [hl]
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
    inc bc
    inc bc
    call nz, $09C4
    add hl, bc
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
    ldh a, [$C0]
    db $FC

jr_00D_641D:
    jr nc, jr_00D_641D

    adc h
    sbc [hl]
    ld h, b
    ld sp, $F000
    nop
    db $ED
    nop
    and $00
    db $FC
    ld [$18FC], sp
    db $FC
    jr @+$03

    ld bc, $CECE
    rrca
    rrca
    ld [de], a
    ld [de], a

jr_00D_6438:
    jr jr_00D_6452

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [c]
    rst $38
    db $DD
    rst $38
    ld l, d
    rst $38
    ld [hl], h
    rst $38
    ld [hl], l
    ld [hl], a
    ld hl, $0021
    nop
    nop
    nop
    nop

jr_00D_6452:
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    nop
    ld bc, $0700
    ld bc, $070F
    sbc a
    rrca
    ld e, a
    rrca
    cp a
    rrca
    rst $18
    rlca
    rst $28
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    pop af
    ldh [$FA], a
    ldh a, [$FD]
    ldh a, [$FB]
    ldh [$F7], a
    nop
    db $ED
    nop
    sbc b
    nop
    adc [hl]
    nop
    sbc e
    nop
    cp b
    nop
    ld hl, sp+$10
    ld hl, sp+$10
    ldh a, [rP1]
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
    ld b, b
    jr nz, jr_00D_64BE

    db $10
    db $10
    ld [de], a
    ld [de], a
    ld h, a
    ld h, a
    ld [hl], c
    ld [hl], c
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    rlca
    rrca
    inc b
    inc b
    inc bc
    inc b
    inc bc
    dec b
    ld [bc], a
    inc bc
    nop

jr_00D_64BE:
    nop
    nop
    ldh a, [rP1]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [rP1]
    sub b
    ld h, b
    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    ld bc, $0700
    ld bc, $070F
    rra
    rrca
    sbc a
    rrca
    ld e, a
    rrca
    cp a
    rrca
    rst $18
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    ldh a, [$E0]
    ld sp, hl
    ldh a, [$FA]
    ldh a, [$FD]
    ldh a, [$FB]
    nop
    nop
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
    ld b, b
    jr nz, jr_00D_6520

    rst $20
    nop
    sbc h
    nop
    or d
    nop
    adc a
    nop
    cp [hl]
    nop
    ld hl, sp+$00
    ld hl, sp+$10
    ldh a, [rP1]
    jr jr_00D_652A

    ld h, e
    ld h, e
    ld c, l
    ld c, l
    ld [hl], b
    ld [hl], b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_6520:
    ld bc, $0700
    ld bc, $070F
    rra
    rrca
    rst $18
    rrca

jr_00D_652A:
    ccf
    rrca
    rst $18
    inc b
    ld h, a
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    ldh a, [$E0]
    ei
    ldh a, [$FC]
    ldh a, [$FB]
    jr nz, @-$18

    nop
    nop
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
    inc b
    inc b
    add hl, de
    add hl, de
    rst $38
    ld h, c
    rst $38
    ld c, [hl]
    rst $38
    ld a, a
    rst $38
    ld c, d
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    rra
    dec bc
    ccf
    rla
    nop
    nop
    inc bc
    nop
    rst $20
    inc bc
    dec de
    ld bc, $01C7
    ld [hl], e
    nop
    ld a, [de]
    nop
    adc l
    nop
    ld l, h
    nop
    cp $6C
    rst $38
    cp $FF
    cp $FF
    ret nz

    jp $9980


    ld h, [hl]
    sbc c
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    jr c, jr_00D_65D2

    adc h
    adc h
    push hl
    push hl
    ld [hl], d
    ld [hl], d
    nop
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
    nop
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
    nop
    ld hl, sp+$30
    db $FC

jr_00D_65BB:
    ld c, b
    db $FC
    jr jr_00D_65BB

    jr c, jr_00D_6600

    ld d, $7F
    ld l, $7E
    jr z, jr_00D_663F

    jr nz, @+$22

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    nop

jr_00D_65D2:
    cpl
    nop
    call c, $8800
    nop
    dec bc
    nop
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0083
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$FF00]
    inc b
    rst $38
    add d
    cp $80
    ret c

    ret c

    ret nc

    ret nc

    inc bc
    inc bc
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_6600:
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
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
    db $FC
    ld l, b
    ld hl, sp+$70
    ld hl, sp+$30
    ld [hl], b
    jr nz, jr_00D_6639

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rla
    dec bc
    rla
    dec bc
    rla
    add hl, bc
    inc de
    inc c
    rrca
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    ld hl, sp-$02
    db $FC
    cp $EC
    db $FC

jr_00D_6639:
    add b
    sub b
    ld h, b
    ld h, b
    nop
    nop

jr_00D_663F:
    nop
    nop
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
    ld bc, $0207
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    inc bc
    ld bc, $01FF
    rlca
    nop
    ld a, [c]
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    dec c
    dec c
    and $E6
    rlca
    ld [bc], a
    rrca
    dec b
    rrca
    ld b, $1F
    inc c
    ld e, $0C
    inc e
    ld [$0008], sp
    nop
    nop
    rrca
    nop
    xor a
    nop
    inc a
    nop
    ld c, b
    nop
    adc e
    nop
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $F0F0
    ld d, b
    ld d, b
    jp $87C3


    add a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$70
    db $FC
    ld [$28FC], sp
    db $FC
    ld a, b
    db $FC
    ld l, b
    ld hl, sp+$30
    ld a, b
    jr nc, jr_00D_6729

    jr nz, jr_00D_66DB

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld a, l

jr_00D_66DB:
    nop
    add [hl]
    nop
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    adc h
    adc h
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    inc bc
    rrca
    ld b, $0E
    inc b
    ld c, $04
    inc b
    nop
    sbc c
    nop
    rrca
    nop
    xor h
    nop
    jr c, jr_00D_6708

jr_00D_6708:
    ld e, e
    nop
    add a
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $6666
    ldh a, [$F0]
    ld d, e
    ld d, e
    rst $00
    rst $00
    add h
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_6729:
    nop
    ldh [rP1], a
    ldh a, [$60]
    ld hl, sp+$10
    db $FC
    jr z, @-$02

    ld a, b
    db $FC
    ld l, b
    ld a, b
    jr nc, jr_00D_67B1

    jr nc, jr_00D_67AB

    jr nz, jr_00D_675D

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ccf
    rlca
    ld c, a
    inc bc
    add a
    inc bc
    add a
    ld bc, $0095
    adc a
    nop
    ret c

    nop
    db $FC
    ret c

    cp $FC
    cp $FC
    cp $80
    add [hl]
    nop
    ld [hl-], a

jr_00D_675D:
    call z, $CC32
    adc a
    nop
    adc a
    nop
    sbc c
    nop
    sub c
    nop
    sub a
    nop
    adc a
    ld b, $AF
    rlca
    adc a
    inc bc
    inc b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    db $F4
    nop
    cp $08
    cp $04
    db $FC
    nop
    xor e
    nop
    cp e
    ld bc, $03B7
    or a
    inc bc
    rst $28
    inc b
    ld c, [hl]
    ld bc, $0708
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp-$10
    db $FC
    ret c

    db $FC
    or b
    ld a, [c]
    inc c
    ld b, d
    cp h
    ld a, h
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00D_67D8

    ld a, b
    ld a, b
    ld a, b

jr_00D_67AB:
    ld a, b
    ld l, d
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b

jr_00D_67B1:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld e, b
    ld e, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    ld hl, sp-$08

jr_00D_67D8:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rrca
    rlca
    rrca
    rlca
    ccf
    rrca
    ld e, a
    inc c
    ld e, h
    ld [$0669], sp
    ld e, c
    ld b, $4C
    nop
    ld c, a
    nop
    ld e, e
    nop
    ld d, a
    nop
    ld e, a
    ld [$085F], sp

jr_00D_6800:
    sub l
    ld h, b
    sbc c
    ld h, b
    ld sp, $D900
    nop
    ret


    nop
    ld sp, hl
    db $10
    ld sp, hl
    ld [hl], b
    ld sp, hl
    ld h, b
    ld e, a
    nop
    ld c, a
    nop
    ld b, a
    inc bc
    ld e, a
    ld bc, $0629
    ld [$0407], sp
    inc bc
    rlca
    nop
    pop af
    nop
    pop hl
    nop
    ld a, [c]
    ldh [$FA], a
    and b
    db $F4
    ld h, b
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rrca
    rlca
    rrca
    rlca
    ccf
    rrca
    ld e, a
    inc c
    sbc h
    ld [$06A9], sp
    add b
    nop
    ldh [$80], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ldh a, [$FA]
    jr nc, jr_00D_6886

    db $10
    sub l
    ld h, b
    sbc c
    ld h, b
    ld sp, $F100
    nop
    jp hl


    nop
    push hl
    nop
    db $FD
    ld [$18FD], sp
    db $FD
    jr jr_00D_6800

    nop
    ld b, a
    inc bc
    ld e, a
    rlca
    cpl
    ld bc, $0609
    db $10
    rrca
    ld de, $0F0E
    nop
    ld sp, hl
    nop
    ld a, [c]
    ldh [$FA], a
    ld [hl], b
    db $FC
    ld b, b
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    nop
    nop
    add b
    nop
    ldh [$80], a

jr_00D_6886:
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ldh a, [$FA]
    jr nc, @+$3C

    stop
    nop
    jr nz, jr_00D_68B4

    inc hl
    inc hl
    db $10
    db $10
    jr nz, jr_00D_68BA

    inc sp
    inc sp
    jr nc, jr_00D_68CE

    inc h
    inc h
    nop
    nop
    inc b
    inc b
    add $C6
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    adc $CE
    ld h, $26
    ld [hl], $36
    jr z, jr_00D_68DA

    jr nz, jr_00D_68D4

jr_00D_68B4:
    jr nz, jr_00D_68D6

    jr nz, jr_00D_68D8

    jr nc, jr_00D_68EA

jr_00D_68BA:
    jr c, jr_00D_68F4

    jr nz, jr_00D_68DE

    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, $0E
    ld e, $1E
    inc c
    inc c
    inc b
    inc b

jr_00D_68CE:
    nop
    nop
    nop
    nop
    inc b
    inc b

jr_00D_68D4:
    add $C6

jr_00D_68D6:
    ld a, [bc]
    ld a, [bc]

jr_00D_68D8:
    ld b, $06

jr_00D_68DA:
    adc $CE
    ld c, $0E

jr_00D_68DE:
    ld d, $16
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

jr_00D_68EA:
    jr c, jr_00D_6924

    jr nz, jr_00D_690E

    nop
    nop
    ld a, [de]
    ld a, [de]
    ld [bc], a
    ld [bc], a

jr_00D_68F4:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc c
    inc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $070F

Call_00D_6908:
    rra
    rlca
    daa
    ld bc, $004B

jr_00D_690E:
    sbc l
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    ld hl, sp-$20
    db $E4
    add b
    call nz, $A800
    nop
    sbc l
    nop
    sbc l
    nop

jr_00D_6924:
    sbc l
    nop
    sub l
    nop
    or a
    nop
    or a
    nop
    and a
    nop
    xor a
    nop
    xor b
    nop
    xor b
    nop
    xor b
    nop
    xor b
    nop
    add sp, $00
    db $E4
    nop
    db $E4
    nop
    db $E4
    nop
    xor a
    nop
    cp a
    inc bc
    cp a
    rlca
    ld e, a
    inc b
    cpl
    nop
    add hl, bc
    ld b, $09
    ld b, $0F
    nop
    ld a, [c]
    nop
    ld a, [c]
    ret nz

    ld a, [$EA40]
    ret nz

    db $E4
    ret nz

    ldh [rP1], a
    jr nz, @-$3E

    ldh [rP1], a
    ld bc, $0700
    ld bc, $070F
    rra
    rlca
    scf
    ld bc, $0023
    dec h
    nop
    dec h
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    ld hl, sp-$20
    db $EC
    add b
    call nz, $A400
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    or h
    nop
    db $F4
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [$FA00]
    nop
    ld e, a
    nop
    ld e, a
    inc bc
    ld e, a
    rlca
    cpl
    rlca
    rra
    inc bc
    rla
    ld [$0718], sp
    rrca
    nop
    ld a, [$FA00]
    ld b, b
    ld a, [$F460]
    ld h, b
    ld hl, sp+$70
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    nop
    nop
    ld bc, $0700
    ld bc, $070F
    rra
    rlca
    daa
    ld bc, $0023
    dec d
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [$E0]
    ld hl, sp-$20
    db $E4
    add b
    jp nc, $B900

    nop
    nop
    nop
    jr jr_00D_69EC

    inc [hl]
    inc [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld l, d
    ld l, d
    nop
    nop
    jr jr_00D_69FC

    jr c, jr_00D_6A1E

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

jr_00D_69EC:
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld e, b
    ld e, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b

jr_00D_69FC:
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    db $10
    jr jr_00D_6A1C

    jr jr_00D_6A1E

    jr @+$1A

    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    db $10
    db $10
    jr c, jr_00D_6A4C

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b

jr_00D_6A1C:
    ld c, b
    ld c, b

jr_00D_6A1E:
    ld [$0C08], sp
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b

jr_00D_6A28:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0108], sp
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld a, [bc]
    nop
    inc d
    nop
    rrca
    nop
    nop
    nop

jr_00D_6A4C:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    nop
    rra
    dec bc
    rrca
    rlca
    ccf
    rlca
    ld c, a
    inc bc
    add a
    nop
    or a
    nop
    ldh a, [rP1]
    ld hl, sp-$30
    db $FC
    ld hl, sp-$04
    ld hl, sp-$04
    ldh [$E4], a
    ret nz

    db $E4
    jr jr_00D_6AD3

    jr jr_00D_6A28

    nop
    ld e, a
    nop
    ld c, a
    nop
    ld b, a
    nop
    rlca
    nop
    ld b, a
    nop
    rrca
    nop
    rra
    inc b
    ld h, h
    jr @-$7A

    nop
    ld hl, sp+$00
    or b

jr_00D_6A87:
    nop
    or b
    nop
    ld hl, sp+$30
    db $FC
    jr c, @-$02

    jr jr_00D_6AB0

    nop
    inc sp
    ld bc, $0337
    ld l, a
    rlca
    rst $10
    dec bc
    sub e
    inc c
    jr @+$09

    rrca
    nop
    ld hl, sp+$00
    ld hl, sp-$20
    cp $E0
    ld sp, hl
    add $F1
    ld l, $73
    xor h
    ld l, [hl]
    sub b
    ld hl, sp+$00

jr_00D_6AB0:
    ld e, a
    nop
    ld c, a
    nop
    ld b, a
    nop
    rlca
    nop
    ld b, a
    nop
    rrca
    nop
    dec de
    nop
    add hl, de
    nop
    add h
    nop
    ld hl, sp+$00
    jr nc, jr_00D_6AC6

jr_00D_6AC6:
    jr c, jr_00D_6AC8

jr_00D_6AC8:
    ld a, b
    nop
    ld hl, sp-$40
    ld hl, sp-$20
    ld hl, sp+$60
    ld sp, $3300

jr_00D_6AD3:
    ld bc, $0367
    rst $00
    inc bc
    adc a
    inc b
    ld c, $01
    inc c
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$20
    db $F4
    ld [$E814], sp
    inc e
    ldh [$F0], a
    nop
    or a
    nop
    ld e, a
    nop
    ld c, a
    nop
    ld b, a
    nop
    rlca
    nop
    ld b, a
    inc bc
    rrca
    rlca
    rra
    ld b, $64
    jr jr_00D_6A87

    nop
    ld hl, sp+$00
    or b
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    db $FC
    ld [$08FC], sp
    rra
    nop
    inc sp
    ld bc, $0337
    ld l, a
    ld [bc], a
    rst $10
    ld [$0F90], sp
    jr @+$09

    rrca
    nop
    ld hl, sp+$00
    ldh a, [$E0]
    cp $F0
    ld sp, hl
    or $F1
    ld l, [hl]
    di
    inc l
    ld l, [hl]
    sub b
    ld hl, sp+$00
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    dec b
    dec b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0E
    ld e, $1E
    inc l
    inc l
    ld e, b
    ld e, b
    nop
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

    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    jr nz, jr_00D_6B98

    ld e, $1E
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld b, $06
    nop
    nop
    jr nz, jr_00D_6BA6

    ld e, $1E
    nop
    nop
    jr nc, jr_00D_6BBC

    jr nc, jr_00D_6BBE

    jr nz, jr_00D_6BB0

    nop
    nop
    inc bc
    inc bc
    nop
    nop

jr_00D_6B96:
    db $10
    db $10

jr_00D_6B98:
    rrca
    rrca
    nop
    nop
    ld [$1008], sp
    stop
    nop
    nop
    nop
    nop
    nop

jr_00D_6BA6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_6BB0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00D_6BBC:
    nop
    nop

jr_00D_6BBE:
    nop
    nop
    rst $30
    nop
    ld a, [hl]
    ld bc, $003F
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld a, b
    ld a, a
    jr @+$1D

    ld b, $DC
    nop

jr_00D_6BD2:
    ld a, b
    add b
    jr c, jr_00D_6B96

    or b
    ld b, b
    db $FC
    nop
    cp $0C
    db $FC
    ld [$C0F8], sp
    dec de
    dec b
    ld a, a
    nop
    rst $38
    ld bc, $217F
    ld c, a
    ld sp, $3947
    daa
    dec e
    rra
    inc c
    ldh a, [$E0]
    ldh a, [rP1]
    ld hl, sp-$80
    ldh a, [$80]
    ret nc

    and b
    ret z

    or b
    ld hl, sp-$70

jr_00D_6BFE:
    ldh a, [rP1]
    ld c, $01
    rrca
    ld b, $1F
    rrca
    rra
    ld c, $1F
    nop
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    jr nz, jr_00D_6BD2

    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$C0]
    ret z

    jr nc, jr_00D_6C23

    ldh a, [$F0]
    nop
    nop
    nop
    inc e

jr_00D_6C21:
    nop
    rra

jr_00D_6C23:
    nop
    dec bc
    inc b
    ld [de], a
    dec c
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ldh a, [rP1]
    ld hl, sp+$00
    ld [hl], h
    adc b
    inc a
    ret nz

    inc a
    ret nz

    jr @-$1E

    jr c, jr_00D_6BFE

    ld [$08F0], sp
    rlca
    ccf

jr_00D_6C43:
    nop
    inc a
    inc bc
    inc d
    dec bc
    inc d
    dec bc
    inc e
    inc bc
    inc c
    inc bc
    rrca
    nop
    db $10
    ldh [$F0], a
    nop
    db $FC
    nop
    cp b
    ld b, b
    or b
    ld b, b
    ret z

    jr nc, jr_00D_6C21

    jr c, jr_00D_6C43

    jr jr_00D_6C65

    inc bc
    rrca
    inc b
    rrca

jr_00D_6C65:
    ld b, $0F
    rlca
    rrca
    ld bc, $0609
    rrca
    nop
    nop

jr_00D_6C6F:
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    add a
    nop
    xor $00
    cp [hl]
    ld b, b
    ld a, h
    add b
    db $FC
    nop
    cp $0C
    db $FC
    xor b
    add sp, -$30
    scf
    dec bc
    inc de
    dec c
    dec e
    ld [bc], a
    ld a, a
    nop
    ld a, $01
    ld e, $09
    ld d, $09
    ld e, $01
    add sp, -$30
    ret z

    or b
    cp b
    ld b, b
    cp $00
    db $FC
    db $10
    ret z

    ld [hl], b
    adc b
    ldh a, [$D0]
    ldh [$1F], a
    nop
    rrca
    inc bc
    rlca
    inc bc
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ret z

    or b
    ld hl, sp+$00
    db $FC
    add b
    cp $88
    di
    adc h
    pop af
    adc [hl]
    ld sp, hl
    adc [hl]
    db $FD

jr_00D_6CDF:
    ld c, $3E

jr_00D_6CE1:
    ret nz

    ldh a, [rNR41]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, jr_00D_6C6F

    ld a, b
    call nz, $F838
    nop
    add a
    nop
    xor $00
    cp [hl]
    ld b, b
    inc e
    ldh [$0C], a
    ldh a, [$0E]
    db $F4
    inc c
    ldh a, [$08]
    ldh a, [$30]
    rrca
    db $10
    rrca
    inc e
    inc bc
    ccf

jr_00D_6D07:
    nop
    jr c, jr_00D_6D21

    jr c, jr_00D_6D23

    jr jr_00D_6D15

    rrca
    nop
    ld [$08F0], sp
    ldh a, [$38]

jr_00D_6D15:
    ret nz

    db $FC
    nop
    db $F4
    jr jr_00D_6CDF

    jr c, jr_00D_6CE1

    jr c, jr_00D_6D07

    jr nc, jr_00D_6D29

jr_00D_6D21:
    rlca
    rra

jr_00D_6D23:
    ld [$0F1F], sp
    rra
    inc c
    rrca

jr_00D_6D29:
    nop
    add hl, bc
    ld b, $09
    ld b, $0F
    nop
    ldh a, [rP1]
    ldh [$C0], a

jr_00D_6D34:
    ldh a, [$60]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, @-$3E

    ldh [rP1], a
    ld [$38F0], sp
    ret nz

    db $FC
    jr jr_00D_6D85

    ret nz

    inc sp
    call z, $C639
    dec a
    jp z, $0CFE

    inc a
    ret nz

    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    ld a, l
    nop
    ccf
    nop
    rra
    nop
    cpl
    db $10
    daa
    jr jr_00D_6D7E

    inc c
    add hl, de
    ld b, $0D
    ld [bc], a
    ret nz

    nop
    jr nz, jr_00D_6D34

    db $10
    ldh [$88], a
    ld [hl], b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]

jr_00D_6D7E:
    ldh a, [$A0]
    dec c
    ld [bc], a
    ld b, $01
    rrca

jr_00D_6D85:
    nop
    rra
    inc bc
    ld c, $03
    ld e, $01
    cpl
    db $10
    cpl
    db $10
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    add b
    jr nz, @-$3E

    jr nc, jr_00D_6D7E

    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    ld b, $01
    rrca
    nop
    rrca
    ld [bc], a
    dec c
    inc bc
    add hl, bc
    rlca
    ld [$0C07], sp
    inc bc
    ld b, $01
    ldh a, [$60]
    ldh [rP1], a
    ret nz

    nop
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00D_6DFD

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, jr_00D_6E4B

    and b
    ld [hl], b

jr_00D_6DFD:
    add b
    ret nz

    nop
    dec c

jr_00D_6E01:
    ld [bc], a
    ld b, $01
    rrca
    nop
    rrca
    inc bc
    add hl, bc
    rlca
    ld de, $330E
    inc e
    ccf
    jr jr_00D_6E01

    and b
    ldh a, [$60]
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    add b
    ld h, b
    add b
    ld [hl], b
    and b
    ldh a, [rNR41]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

jr_00D_6E38:
    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a
    ld de, $3F00
    db $10
    dec de
    dec c
    dec e
    ld [bc], a
    rla
    ld c, $1F

jr_00D_6E4B:
    rrca
    rla
    ld [$020F], sp
    add b
    nop
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $FC
    ld a, b
    db $FC
    ld hl, sp+$3C
    ld hl, sp-$08
    nop
    rrca
    ld b, $1F
    inc bc
    dec sp
    inc d
    ld a, h
    inc sp
    ld a, h
    inc hl
    inc [hl]
    dec de
    ld h, $1D
    ld e, $0D
    ldh a, [$C0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nc, jr_00D_6E38

    ld [hl], b
    and b
    ld e, b
    and b
    ld a, b
    sub b
    ld [hl], b
    add b
    rrca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ld c, $3F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh a, [$60]
    ldh a, [$C0]
    ret z

    jr nc, jr_00D_6EA3

    ldh a, [$F0]
    nop
    nop
    nop
    ld hl, $7F00

jr_00D_6EA3:
    ld hl, $1A37
    rra
    rlca
    rra
    rrca
    rla
    rrca
    rla
    rrca
    ld [$0007], sp
    nop
    ldh a, [rP1]
    ld e, b
    or b
    db $FC

jr_00D_6EB7:
    jr z, jr_00D_6EB7

    db $F4
    cp $FC
    cp d
    call nz, $B0FC
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
    inc e
    dec bc
    inc e
    dec bc
    jr @+$09

    ld [$0807], sp
    rlca
    ldh a, [$60]
    ldh [rP1], a
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ld l, b
    or b
    ld c, h
    cp b
    ld a, h
    sbc b
    rlca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    ld bc, $0609
    rrca
    nop
    nop

jr_00D_6EEF:
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    ccf
    inc d
    rra
    dec b
    rlca
    inc bc
    dec bc
    inc b
    ld c, $05
    inc e

jr_00D_6F0B:
    dec bc
    inc d
    dec bc
    inc e
    dec bc
    db $FC
    jr z, jr_00D_6F0B

    and b
    ldh [$C0], a
    ret nc

    jr nz, jr_00D_6F91

    or b
    ld l, b
    sub b
    ret z

    ld [hl], b
    ld hl, sp+$60
    inc e
    inc bc
    rrca
    nop
    rlca
    inc bc
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ld [hl], b
    add b
    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ld [bc], a
    nop
    rst $28
    ld [bc], a
    or $EC
    xor h
    ret nc

    ld hl, sp-$70
    add sp, -$10
    cp b
    ret nz

    db $FC
    jr z, @-$06

    and b
    ldh [$C0], a
    ret nc

    jr nz, @+$3A

    ret nc

    inc [hl]
    ret c

jr_00D_6F5A:
    inc [hl]
    ret z

jr_00D_6F5C:
    inc a
    ret c

jr_00D_6F5E:
    inc a
    ret c

jr_00D_6F60:
    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, jr_00D_6EEF

    ld a, b
    call nz, $F838
    nop
    nop
    nop
    rrca
    nop
    rra
    nop
    jr c, @+$09

    jr c, jr_00D_6F91

    jr c, jr_00D_6F93

    jr jr_00D_6F85

    ld [$0007], sp
    nop
    ldh a, [rP1]
    ret nc

jr_00D_6F85:
    jr nz, jr_00D_6FBF

    ret nz

    jr c, jr_00D_6F5A

    jr c, jr_00D_6F5C

    jr z, jr_00D_6F5E

    jr c, jr_00D_6F60

    rrca

jr_00D_6F91:
    nop
    rrca

jr_00D_6F93:
    rlca
    rra
    rrca
    rra
    inc c
    rrca
    nop
    add hl, bc
    ld b, $09
    ld b, $0F
    nop
    ldh a, [rP1]
    ldh [$C0], a
    ldh a, [$60]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, @-$3E

    ldh [rP1], a
    ld [bc], a
    nop
    rst $28
    ld [bc], a
    or $EC
    db $EC
    ldh a, [$E8]
    ldh a, [$C8]
    ldh a, [$98]
    ldh [$3C], a

jr_00D_6FBF:
    ret z

    ldh a, [rP1]
    add sp, $10
    inc e
    ldh [rNR32], a
    add sp, $1C
    add sp, $14
    add sp, $1C
    add sp, $18
    ldh [$F0], a
    nop
    ldh a, [$60]
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$70
    db $F4
    ld [$708C], sp

jr_00D_6FDE:
    ld hl, sp+$00
    rlca
    ld bc, $0103
    rlca
    nop
    dec c
    inc bc
    dec bc
    dec b
    add hl, de
    ld b, $39
    ld d, $38
    rla
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    and b
    ret nz

    jr nc, jr_00D_6FDE

    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $3F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    call z, $B8B0
    ld b, b
    ldh [rP1], a
    stop
    ccf
    db $10
    dec de
    dec c
    dec e
    inc bc
    rla
    rrca
    ld a, [bc]
    dec b
    rrca
    ld [bc], a
    rlca
    ld bc, $0000
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$50
    db $FC
    sbc b
    sbc b
    ldh a, [$F8]
    nop
    ldh a, [$A0]
    inc bc
    ld bc, $0007
    ld a, [bc]
    dec b
    dec bc
    dec b
    rrca
    ld [bc], a
    ld c, $03
    inc c
    inc bc
    inc bc
    dec b
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ld h, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00D_707D

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, jr_00D_70CB

    and b
    ld [hl], b

jr_00D_707D:
    add b
    ret nz

    nop
    rlca
    ld bc, $0103
    rlca
    nop
    dec c
    inc bc
    rrca
    ld [bc], a
    ld d, $0D
    ld [hl-], a
    dec e
    inc a
    dec de
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    ld h, b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $3F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40

jr_00D_70B6:
    db $E4
    ret c

jr_00D_70B8:
    call nz, $CCB8
    or b
    cp b
    ld b, b
    ldh [rP1], a

jr_00D_70C0:
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra

jr_00D_70CB:
    nop
    rra
    ld [$060F], sp
    ldh [rP1], a

jr_00D_70D2:
    ldh a, [rP1]

jr_00D_70D4:
    ld hl, sp+$00
    ld hl, sp+$00

jr_00D_70D8:
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$C0]
    rrca
    inc bc
    inc de
    inc c
    jr c, @+$19

    ld a, b
    scf
    ld a, b
    daa
    inc [hl]
    dec de
    ld h, $1D
    ld e, $0D
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, jr_00D_70B6

    jr nc, jr_00D_70B8

    ld [hl], b
    and b
    ld e, b
    and b
    jr c, @-$2E

    jr nc, jr_00D_70C0

    inc c
    inc bc
    ld [$1007], sp
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    jr nz, jr_00D_70D2

    jr nz, jr_00D_70D4

    sub b
    ld h, b
    jr nc, jr_00D_70D8

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    rrca
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
    rra
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$30
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
    inc e
    dec bc
    inc e
    dec bc
    jr @+$09

    ld [$0807], sp
    rlca
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    add sp, $30
    call z, Call_00D_7C38
    sbc b
    inc b
    inc bc
    inc b
    inc bc
    add hl, bc
    ld b, $08
    rlca
    ld c, $01
    rrca
    ld b, $0F
    nop
    nop
    nop
    inc e
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    ccf
    db $10
    rra
    dec b
    rlca
    inc bc
    dec bc
    inc b
    ld c, $05
    inc e
    dec bc
    inc d
    dec bc
    inc e
    dec bc
    db $FC
    ld [$A0F8], sp
    ldh [$C0], a
    ret nc

    jr nz, jr_00D_7211

    or b
    ld l, b
    sub b
    ret z

    ld [hl], b
    ld hl, sp+$60
    inc e
    inc bc

jr_00D_71A2:
    inc c
    inc bc
    inc b
    inc bc
    ld c, $01
    rrca
    ld b, $0F
    rlca
    rlca
    inc bc
    rlca
    nop
    ld [hl], b
    add b
    jr nz, @-$3E

    db $10
    ldh [$50], a
    and b
    sub b
    ld h, b
    ldh [rP1], a
    ldh [rLCDC], a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    ld [$A0F8], sp
    ldh [$C0], a
    ret nc

    jr nz, jr_00D_720F

    ret nc

    inc [hl]
    ret c

    inc [hl]
    ret z

    inc a
    ret c

    inc a
    ret c

    jr c, jr_00D_71A2

    db $10
    ldh [$88], a
    ld [hl], b
    cp b

jr_00D_71E7:
    ld b, b

jr_00D_71E8:
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_00D_71E7

    nop
    nop
    nop
    rra
    nop
    rlca
    nop
    jr @+$09

    jr c, jr_00D_7211

    jr c, @+$19

    jr @+$09

    ld [$0007], sp
    nop

jr_00D_7202:
    ld hl, sp+$00
    ldh [rP1], a
    jr jr_00D_71E8

    inc e
    add sp, $1C
    add sp, $14
    add sp, $1C

jr_00D_720F:
    add sp, $08

jr_00D_7211:
    rlca
    ld [$1007], sp
    rrca
    inc de
    inc c
    rrca
    nop
    rrca
    ld b, $0F
    ld b, $0F
    nop
    jr jr_00D_7202

    db $10
    ldh [$90], a
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [$E0], a
    nop
    ldh [$C0], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    ld [$00F8], sp
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh [rNR32], a
    add sp, $1C
    add sp, $14
    add sp, $1C
    add sp, $18
    ldh [$90], a
    ld h, b
    sbc b
    ld h, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    ld [bc], a
    ldh [rP1], a
    ldh a, [rP1]

jr_00D_7274:
    ld hl, sp+$00

jr_00D_7276:
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00

jr_00D_727E:
    ldh a, [$A0]
    rlca
    ld [bc], a
    inc bc
    ld bc, $0007
    dec c
    inc bc
    dec bc
    dec b
    add hl, de
    ld b, $39
    ld d, $38
    rla
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    and b
    ret nz

    jr nc, jr_00D_727E

    ldh a, [$60]
    jr jr_00D_72A9

    ld [$1007], sp
    rrca
    jr nz, @+$21

    ld [hl], e

jr_00D_72A9:
    inc l
    ld a, a
    ld [hl-], a
    ld a, a
    ld e, $3F
    nop
    ld h, b
    add b
    jr nz, jr_00D_7274

jr_00D_72B4:
    jr c, jr_00D_7276

jr_00D_72B6:
    cp h
    ld e, b
    ld a, h
    cp b
    ld a, h
    or b
    ld hl, sp+$40
    ldh [rP1], a
    inc bc
    ld bc, $0007
    inc c
    inc bc
    ld c, $03
    rrca
    ld [bc], a
    ld c, $03
    inc c
    inc bc
    inc bc
    dec b
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    nop
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    dec b
    ld [bc], a
    ld [$1007], sp
    rrca
    db $10
    rrca
    cpl
    db $10
    ccf
    rlca
    ccf
    rrca
    rra
    nop
    and b
    ld b, b
    jr nz, jr_00D_72B4

    jr nz, jr_00D_72B6

jr_00D_72F6:
    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0007
    dec c
    inc bc
    rrca
    ld [bc], a
    ld d, $0D
    ld [hl-], a
    dec e
    inc a
    dec de
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    ld b, b
    add b
    ret nz

    nop
    ld h, b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    jr jr_00D_7329

    ld [$1007], sp
    rrca
    inc [hl]
    dec bc
    ld a, [hl]

jr_00D_7329:
    ld hl, $3C7F
    ld a, a
    ld e, $3F
    nop
    ld h, b
    add b
    ld b, b
    add b
    jr c, jr_00D_72F6

    inc a
    ret c

    ld a, h
    cp b
    ld a, h
    or b
    ld hl, sp+$40
    ldh [rP1], a
    rrca
    nop
    db $10
    rrca
    jr nz, jr_00D_7365

    ld b, b
    scf
    add e
    ld h, b
    sub a
    ld h, e
    cp a
    ld d, l
    sbc a
    ld h, l
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp-$1C
    jr @-$0A

    xor b
    ld hl, sp-$60
    ld b, a
    dec sp
    cpl
    db $10
    cpl

jr_00D_7365:
    dec d
    dec de
    inc b
    dec bc
    inc b
    rra
    dec c
    rra
    dec c
    rrca
    nop
    add sp, -$30
    ldh a, [rP1]
    ret nz

    add b
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$A0]
    ldh [$80], a
    ret nz

    nop
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    inc b
    ld c, $01
    db $10
    rrca
    rrca
    nop

jr_00D_7390:
    ret nz

    nop
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
    inc bc
    nop
    inc b
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ld [$F807], sp
    nop
    inc b
    ld hl, sp+$02
    db $FC
    ld [bc], a
    call c, $840A
    ld a, [de]
    call nz, $D03C
    jr c, jr_00D_7390

    ld [$0807], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    nop
    inc bc
    nop
    ld a, b
    sub b
    ldh a, [rP1]
    ldh [rLCDC], a
    or b
    ld b, b
    or b
    ld b, b
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    ld hl, sp+$10
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    cp $10
    cp c
    ld b, [hl]
    db $E3
    inc e
    ld a, $00
    ccf
    dec b
    daa
    dec de
    rla
    ld [$010F], sp
    rrca
    inc b
    dec bc
    inc b
    dec bc
    dec b
    rrca
    dec b
    db $FC
    and b
    db $E4
    ret c

    add sp, $10
    ldh a, [$80]
    ldh a, [rNR41]
    ret nc

    jr nz, @-$2E

    and b
    ldh a, [$60]
    ld a, a
    ld b, $7E
    nop
    ld a, [hl]
    inc d
    ld a, [hl]
    inc d
    sbc [hl]
    ld h, h
    adc [hl]

jr_00D_741B:
    ld [hl], b
    ld c, d
    inc [hl]
    ld a, h
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    jr nz, jr_00D_743F

    jr nz, jr_00D_742D

    scf
    nop
    ccf

jr_00D_742D:
    dec d
    ccf
    dec b
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    add sp, -$3C
    nop
    db $EC
    ret nz

    db $FC
    xor b
    db $FC

jr_00D_743F:
    and b
    db $E4
    ret c

    add sp, $10
    ldh a, [$A0]
    ldh a, [rNR41]
    ret nc

jr_00D_7449:
    jr nz, jr_00D_741B

    and b
    ld hl, sp-$50
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    db $10
    rrca
    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld c, $05
    dec bc
    inc b
    dec bc

jr_00D_746D:
    dec b
    rrca
    inc b
    ld [$08F0], sp
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld [hl], b
    and b
    ret nc

jr_00D_747B:
    jr nz, jr_00D_746D

    ld h, b
    ldh a, [$60]
    cp $00
    db $FC
    jr nz, jr_00D_7501

    jr z, jr_00D_7503

    ld [$3048], sp
    adc b
    ld [hl], b
    sub h
    ld l, b
    db $FC
    nop
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [$30], a
    ret nz

    ld [hl], b
    and b
    ret nc

    jr nz, jr_00D_747B

    and b
    ld hl, sp-$50
    ld hl, sp+$30
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld hl, sp+$40
    db $E4
    jr jr_00D_7449

    ld [hl], b
    ld hl, sp+$00
    rra
    nop
    jr nz, jr_00D_74E3

    ld b, b
    ccf
    ld b, b
    ld a, $40
    inc a
    ld b, [hl]
    jr c, @+$51

    ld [hl], $27
    add hl, de
    ldh [rP1], a
    db $10

jr_00D_74D3:
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$54
    jr z, jr_00D_74D3

    ld b, b
    ldh a, [$A0]
    ldh a, [$A0]
    daa
    add hl, de
    inc hl

jr_00D_74E3:
    inc e
    inc hl
    inc e
    rla
    add hl, bc
    rrca
    nop
    rrca
    inc b
    rrca
    dec b
    rlca
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    ld h, b
    add b
    or b
    ld h, b
    ldh a, [$60]
    ldh [rP1], a
    rlca

jr_00D_7501:
    nop
    inc bc

jr_00D_7503:
    ld bc, $020F
    ccf
    inc b
    ld e, a
    jr z, jr_00D_7554

    ld [hl], $61
    ld e, $7F
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    ret z

    or b
    adc b
    ld [hl], b
    db $10
    ldh [$30], a
    ret nz

    ldh [rP1], a
    inc hl
    inc e
    inc hl
    inc e
    rla
    add hl, bc
    ld d, $09
    ld a, [bc]
    ld bc, $0303
    rlca
    inc bc
    rlca
    nop
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
    add b
    nop
    ldh a, [rP1]
    ld [hl], b
    jr nz, @+$72

    jr nz, @+$7A

    jr nz, jr_00D_75C5

    nop
    add [hl]
    ld a, b
    add d
    ld a, h
    cp $00
    daa
    add hl, de
    inc hl
    inc e

jr_00D_7554:
    inc hl
    inc e
    rla
    add hl, bc
    dec c
    ld [bc], a
    dec de
    inc c
    rra
    dec c
    rrca
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rLCDC], a
    ret nz

    nop
    rlca
    nop
    inc bc
    ld bc, $0007
    rrca
    inc b
    rra
    ld [$1728], sp
    jr nc, jr_00D_758D

    rra
    nop
    add b
    nop
    ret nz

    nop
    ld hl, sp-$80

jr_00D_7586:
    db $E4
    ld e, b

jr_00D_7588:
    call nz, $8838
    ld [hl], b
    sbc b

jr_00D_758D:
    ld h, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld [$1C00], sp
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_00D_75A0:
    rlca
    nop
    ld [$1E07], sp
    ld bc, $1E21
    inc hl
    inc e
    ld c, a
    jr nc, jr_00D_760B

    jr z, jr_00D_761E

    inc d
    ldh [rP1], a
    ld d, b
    and b
    jr z, jr_00D_7586

    jr z, jr_00D_7588

    ld hl, sp+$00
    ld hl, sp+$00
    stop
    ldh a, [rP1]
    ld e, a
    inc hl
    ccf
    inc c
    ccf

jr_00D_75C5:
    rra
    ld a, a
    dec [hl]
    ld a, a
    ld [hl], $27
    dec de
    daa
    inc e
    rra
    inc c
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [rP1]
    ldh a, [$C0]
    ld hl, sp+$10
    jr nc, jr_00D_75A0

    rrca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ld c, $3F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$60]
    ldh a, [$C0]
    ret z

    jr nc, jr_00D_7603

    ldh a, [$F0]
    nop
    nop
    nop
    inc bc
    nop
    inc b

jr_00D_7603:
    inc bc
    ld [$1007], sp
    rrca
    db $10
    rrca
    db $10

jr_00D_760B:
    rrca
    db $10
    rrca
    ld [$F807], sp
    nop
    inc h
    ret c

    ld b, d
    cp h
    add d
    ld a, h
    add d
    ld a, h
    ld a, [de]
    db $E4
    inc a
    ret nz

jr_00D_761E:
    ld a, b
    or b
    ld [$0C07], sp
    inc bc
    rra
    inc c
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rrca
    nop
    ld [$F007], sp
    ld h, b
    ldh [rP1], a

jr_00D_7634:
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$E0]
    ret z

    ld [hl], b
    call z, Call_00D_7C38
    sbc b
    rlca
    nop
    rlca
    inc bc
    rrca
    ld b, $0F
    rlca
    rrca
    ld bc, $0609
    rrca
    nop
    nop
    nop
    db $FC
    ld h, b
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    rlca
    nop
    add hl, bc
    ld b, $10
    rrca
    jr z, jr_00D_767F

    daa
    jr jr_00D_769A

    db $10
    jr jr_00D_766E

jr_00D_766E:
    ccf
    db $10
    ret nz

    nop
    jr nc, jr_00D_7634

    adc b
    ld [hl], b
    add h
    ld a, b
    db $EC
    db $10
    db $F4
    ld [$0018], sp
    db $FC

jr_00D_767F:
    ld [$103F], sp
    rra
    rlca
    rla
    dec bc
    rrca
    inc b
    rra
    rrca
    rra
    rrca
    rla
    ld [$0B1C], sp
    db $FC
    ld [$E0F8], sp
    add sp, -$30
    ldh a, [rNR41]
    ld hl, sp-$10

jr_00D_769A:
    add sp, -$70
    ret z

    ld [hl], b
    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rlca
    inc bc
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ldh a, [$E0]

jr_00D_76B4:
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ld hl, sp-$20
    add sp, -$30
    ld hl, sp+$00
    db $FC
    ld hl, sp-$04
    add sp, -$0C
    ret z

    db $F4
    jr jr_00D_770B

    ret c

jr_00D_76D0:
    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp+$70
    ld hl, sp+$40
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    ld a, [de]
    dec b
    ld [$1C07], sp
    dec bc
    ccf
    inc e
    ccf
    rra
    cpl
    rla
    rra
    nop
    ld [$3807], sp
    ret nz

    jr nc, jr_00D_76B4

    ld a, b
    or b
    ld hl, sp+$70
    ld hl, sp-$30
    add sp, -$30
    add sp, $10
    jr c, jr_00D_76D0

jr_00D_7700:
    rlca
    nop
    rrca
    rlca
    rrca
    rlca

jr_00D_7706:
    rrca
    ld b, $07
    nop
    inc b

jr_00D_770B:
    inc bc

jr_00D_770C:
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00

jr_00D_7712:
    ldh a, [$E0]
    ld hl, sp-$50
    ld hl, sp+$70
    ld hl, sp+$70
    ldh a, [rP1]
    sub b
    ld h, b
    ldh a, [rP1]
    rlca
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    inc d
    dec bc
    inc d
    dec bc
    inc d
    dec bc
    ld a, [de]
    dec d
    ld a, [de]
    dec b
    ldh [rP1], a
    ld d, b
    and b
    jr z, jr_00D_7706

    inc h
    ret c

    inc h
    ret c

    jr z, jr_00D_770C

    inc a
    ret z

    jr c, jr_00D_7700

    ld [$1C07], sp
    dec bc
    ccf
    inc e
    ccf
    rra
    cpl
    rla
    cpl
    rla
    ccf
    db $10
    jr jr_00D_7757

    jr nc, jr_00D_7712

    ld a, b
    or b
    db $FC
    ld a, b
    db $FC

jr_00D_7757:
    ld hl, sp-$0C
    add sp, -$0C
    add sp, -$04
    ld [$E018], sp
    ldh a, [rP1]
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    inc hl
    inc e
    inc h
    dec de
    jr z, jr_00D_7793

    ld [hl-], a
    dec c
    scf
    ld a, [bc]
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    ld [hl], b
    add b
    ldh a, [rP1]
    add b

jr_00D_778D:
    nop

jr_00D_778E:
    ldh a, [rP1]
    scf
    ld a, [bc]
    inc hl

jr_00D_7793:
    dec e
    rla
    ld [$071F], sp
    rrca
    rlca
    rra
    dec b
    ccf
    db $10
    jr c, jr_00D_77B7

    ldh a, [rP1]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    add b
    jr nz, @-$3E

    jr nc, jr_00D_778E

    ldh a, [$60]
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf

jr_00D_77B7:
    rra
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [$80], a
    ld hl, sp-$80
    db $E4
    jr jr_00D_778D

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    inc hl
    dec e
    rla
    ld [$070F], sp
    rrca
    rlca
    rrca
    rlca
    inc c
    rlca
    inc b
    inc bc
    rlca
    ld bc, $E0F0
    ldh [rP1], a
    ret nz

    add b
    ldh [$C0], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$80], a
    ldh [$80], a
    rlca
    nop
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    db $10
    jr c, @+$09

    jr nc, jr_00D_780D

    rra
    nop
    ldh [rP1], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, jr_00D_785B

    and b
    ld [hl], b

jr_00D_780D:
    add b
    ret nz

    nop
    scf
    ld a, [bc]
    inc hl
    dec e
    rla
    ld [$071F], sp
    rra
    rrca
    inc de
    dec c
    inc sp
    inc e
    inc a
    dec de
    ldh a, [rP1]
    ldh a, [$E0]
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ldh a, [rNR41]
    ld [hl], b
    and b
    rra
    nop
    rrca
    rlca
    rra
    rrca
    ccf
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    add b
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a
    nop
    nop

jr_00D_7852:
    nop
    nop

jr_00D_7854:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00D_785B

jr_00D_785B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec b
    ld [$1C07], sp
    dec bc
    rra
    inc c
    rra
    dec bc
    rla
    dec bc
    rla
    ld [$0B1C], sp
    jr c, jr_00D_7852

    jr nc, jr_00D_7854

    ld a, b
    or b
    db $FC
    ld a, b
    db $FC
    ld hl, sp-$0C
    add sp, -$08
    nop
    db $10
    ldh [rTAC], a
    nop
    jr jr_00D_78AB

    jr nz, jr_00D_78C5

    ld b, b
    ccf
    add e
    ld a, h
    adc a

jr_00D_78AB:
    ld [hl], b
    sbc a
    ld l, d

jr_00D_78AE:
    adc e
    ld [hl], a
    ldh [rP1], a
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$E8]
    db $10
    ld hl, sp+$00
    ldh a, [$C0]
    ldh a, [$E0]
    sbc c
    ld h, a
    cp b
    ld d, a
    db $FC

jr_00D_78C5:
    inc sp
    ld a, d
    dec [hl]
    ld l, c
    ld d, $24
    dec de

Call_00D_78CC:
    ld a, $0D
    ld e, $0D
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    ld hl, sp+$00
    jr c, jr_00D_78AE

    ld [hl], b
    add b
    cpl
    db $10
    jr nz, @+$21

    db $10
    rrca
    ld de, $2F0E
    db $10
    ccf
    ld b, $3F
    ld e, $1F
    nop
    and b
    ld b, b
    jr nz, @-$3E

    sub b
    ld h, b
    jr nc, @-$3E

    ld hl, sp+$30
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    db $10
    rrca
    jr nz, @+$21

    jr nz, jr_00D_792B

    ld b, b
    ccf
    ld b, b
    ccf
    ldh a, [rP1]
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp+$3C
    ret nz

    ld a, b
    add b
    ld hl, sp+$10
    ld e, b
    and b
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_00D_7945

    jr nz, jr_00D_7947

    ld de, $120E

jr_00D_792B:
    dec c
    inc c
    inc bc
    ld [$4807], sp
    or b
    ld l, b
    sub b
    ld hl, sp+$60
    ld hl, sp+$60
    ld [hl], b
    and b
    ld c, b
    or b
    ld c, h
    cp b
    inc a
    ret c

    ld [$0707], sp
    nop
    add hl, bc

jr_00D_7945:
    ld b, $08

jr_00D_7947:
    rlca
    ld c, $01
    rrca
    ld b, $0F
    nop
    nop
    nop
    ld e, h
    and b

jr_00D_7952:
    sub b
    ld h, b
    ld [$88F0], sp
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    ld a, [hl]
    rla
    ld e, b
    daa

jr_00D_7964:
    ld c, b
    scf
    ld c, h
    inc sp
    inc a
    dec bc
    ld [hl], $09
    dec d
    ld a, [bc]
    inc e
    dec bc
    ld a, [hl]
    add sp, $1A
    db $E4
    ld [de], a
    db $EC
    ld a, [hl-]
    call nc, $D02C
    ld l, b
    sub b
    ld hl, sp+$30
    ld a, b
    or b
    inc c
    inc bc
    rrca
    nop
    inc c
    inc bc
    ld c, $01
    rrca
    ld b, $0F
    rlca
    rlca
    inc bc
    rlca
    nop
    jr c, jr_00D_7952

    ldh a, [rP1]
    db $10
    ldh [$50], a
    and b
    sub b
    ld h, b
    ldh [rP1], a
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    jr nc, jr_00D_7964

jr_00D_79A4:
    ld [$04F0], sp
    ld hl, sp-$1C
    jr @-$0C

    inc c
    ld a, [$7EA4]
    add sp, $1A
    db $E4
    ld [de], a
    db $EC
    ld a, [hl-]
    call nc, $D83C
    ld d, h
    xor b
    sub h
    ld l, b
    inc a
    ret c

    inc a
    ret c

    db $FC
    nop
    jr jr_00D_79A4

    adc b
    ld [hl], b
    cp b

jr_00D_79C7:
    ld b, b
    ld hl, sp+$30
    db $FC
    ld a, b
    db $FC
    jr c, jr_00D_79C7

    nop
    ld b, b
    ccf
    ld b, b
    ccf

jr_00D_79D4:
    jr nz, jr_00D_79F5

    jr nz, @+$21

    jr nc, jr_00D_79E9

    jr c, @+$19

    inc d
    dec bc
    inc de
    inc c
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    inc b
    ld hl, sp+$04
    ld hl, sp+$08

jr_00D_79E9:
    ldh a, [rNR23]
    ldh [$28], a
    ret nc

    ld hl, sp+$10
    db $10
    rrca
    jr jr_00D_79FB

    rla

jr_00D_79F5:
    ld [$0C13], sp
    rrca
    nop
    rrca

jr_00D_79FB:
    ld b, $0F
    ld b, $0F
    nop
    db $10
    ldh [$30], a
    ret nz

    ret nc

    jr nz, jr_00D_7A17

    ldh [rNR10], a
    ldh [$E0], a
    nop
    ldh [$C0], a
    ldh [rP1], a
    ret nz

    nop
    jr nc, jr_00D_79D4

    ld [$04F0], sp

jr_00D_7A17:
    ld hl, sp+$04
    ld hl, sp+$02
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    inc b
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [rNR32]
    add sp, $34
    ret z

    call nc, $1828
    ldh [$08], a
    ldh a, [rNR23]
    ldh [$E8], a
    db $10
    adc b
    ld [hl], b
    sbc b
    ld h, b
    db $FC
    ld [$70FC], sp
    ld hl, sp+$00
    rlca
    nop
    jr jr_00D_7A4B

    jr nz, jr_00D_7A65

    ld b, b
    ccf
    ld b, b
    ccf
    add e

jr_00D_7A4B:
    ld a, h
    add a
    ld a, d
    add d
    ld a, l
    ldh a, [rP1]
    ld [$08F0], sp
    ldh a, [rDIV]
    ld hl, sp-$08
    nop
    ldh a, [rP1]
    ldh a, [$A0]

jr_00D_7A5E:
    ldh a, [$60]
    add d
    ld a, l
    add b
    ld a, a
    add e

jr_00D_7A65:
    ld a, h
    add a
    ld a, e
    adc a
    ld [hl], e
    sbc e
    ld h, h
    ld e, c
    ld [hl], $38
    rla
    ldh a, [$60]
    ld [hl], b
    add b
    ld [$88F0], sp
    ld [hl], b
    ret z

    jr nc, jr_00D_7AA3

    ret nc

    jr c, jr_00D_7A5E

    ldh a, [$60]
    inc de
    inc c
    ld [de], a
    dec c
    inc e
    inc bc
    jr nz, jr_00D_7AA7

    ld [hl], e
    inc l
    ld a, a
    ld [hl-], a
    ld a, a
    ld e, $7F
    nop
    ldh a, [rP1]
    ld h, b
    add b

jr_00D_7A94:
    ld a, b
    add b

jr_00D_7A96:
    db $FC
    jr @+$7E

    cp b
    ld a, b
    or b
    ld hl, sp+$40
    ldh [rP1], a
    add b
    ld a, a
    add e

jr_00D_7AA3:
    ld a, h
    add a
    ld a, e
    ld b, a

jr_00D_7AA7:
    dec sp
    ld b, a
    ld a, [hl-]
    inc l
    inc de
    inc e
    inc bc
    dec bc
    dec b
    ld [hl], b
    add b
    ld [$C8F0], sp
    jr nc, @-$56

    ld d, b
    xor b
    ld d, b
    xor b
    ld d, b
    ldh a, [$80]
    ldh [$80], a
    inc de
    inc c
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    cpl
    db $10
    ccf
    rlca
    ccf
    rrca
    rra
    nop
    ldh [rP1], a
    jr nz, jr_00D_7A94

    jr nz, jr_00D_7A96

jr_00D_7AD6:
    ld h, b
    add b
    ldh a, [rNR41]
    ldh a, [$A0]
    ldh a, [$80]
    ret nz

    nop
    add d
    ld a, l
    add b
    ld a, a
    add e
    ld a, h
    add a
    ld a, e
    ld c, a
    inc sp
    ld d, d
    dec l
    ld [hl], d
    dec e
    inc a
    dec de
    ldh a, [$60]
    ld [hl], b
    add b
    ld [$88F0], sp
    ld [hl], b
    adc b
    ld [hl], b
    sub b
    ld h, b
    or b
    ld b, b
    ld [hl], b
    and b
    dec de
    inc b
    inc h
    dec de
    jr jr_00D_7B0D

    inc [hl]
    dec bc
    ld a, [hl]
    ld hl, $3C7F
    ld a, a

jr_00D_7B0D:
    ld e, $7F
    nop
    ldh [rP1], a
    ld b, b
    add b
    jr c, jr_00D_7AD6

    inc a
    ret c

    ld a, h
    cp b
    ld a, b
    or b

jr_00D_7B1C:
    ld hl, sp+$40
    ldh [rP1], a
    ld [bc], a
    nop
    dec c
    ld [bc], a
    inc d
    dec bc
    db $10
    rrca
    jr nz, jr_00D_7B49

    inc hl
    inc e
    daa
    jr jr_00D_7B5E

    db $10
    ld b, b
    nop
    and b
    ld b, b
    sub b
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [$F0], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    rra
    nop
    rra
    ld a, [bc]
    rrca
    ld b, $1F
    inc bc
    ccf

jr_00D_7B49:
    nop
    ld a, $01
    ld a, a
    ld b, $7F
    ld b, $F0
    nop
    ldh a, [$C0]
    ldh a, [$C0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nc, jr_00D_7B1C

    ld [hl], b
    and b

jr_00D_7B5E:
    ld [hl], b
    and b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rrca
    ld a, a
    ld c, $7F
    db $10
    add hl, sp
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$E0]
    ldh a, [$C0]
    ret z

    jr nc, jr_00D_7B83

    ldh a, [$F0]
    nop
    nop
    nop
    ld bc, $0600

jr_00D_7B83:
    ld bc, $050A
    ld [$1007], sp
    rrca
    ld [de], a
    dec c
    db $10
    rrca
    db $10
    rrca
    jr nz, jr_00D_7B92

jr_00D_7B92:
    ret nc

    jr nz, @+$4A

    or b
    inc b
    ld hl, sp+$04
    ld hl, sp+$1C
    ldh [$3C], a
    ret nz

    ld a, b
    add b
    db $10
    rrca
    add hl, de
    ld b, $0F
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld hl, sp+$10
    ld hl, sp+$30
    ldh a, [$60]

jr_00D_7BB6:
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$08FC], sp
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    add hl, bc
    ld b, $0F
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [$0807], sp
    rlca
    db $10
    rrca
    inc de
    inc c
    rla
    ld [$001F], sp
    add b
    nop
    ld b, b
    add b
    jr nz, jr_00D_7BB6

    db $10
    ldh [$08], a
    ldh a, [$C8]
    jr nc, @-$16

    db $10
    ld hl, sp+$00
    rra
    nop
    rra
    nop
    ccf
    dec d
    rra
    dec b
    rrca
    inc bc
    rra
    nop
    add hl, de
    ld b, $1D
    ld a, [bc]
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    xor b
    ld hl, sp-$60
    ldh a, [$C0]
    ld hl, sp+$00
    add sp, -$30
    add sp, -$30
    rra
    nop
    rrca
    nop
    rra
    inc bc
    rra
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp-$20
    ld hl, sp-$60

Call_00D_7C38:
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ld hl, sp+$00
    db $FC
    xor b
    ld hl, sp-$60
    ldh a, [$C0]
    ld hl, sp+$00
    inc a
    ret nz

    ld a, h
    or b
    ld a, h
    or b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$10
    ld hl, sp+$40
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    db $10
    rrca
    jr jr_00D_7C6B

    inc a
    inc de
    rra
    nop
    rrca
    nop
    rra

jr_00D_7C6B:
    nop
    rra
    nop
    rrca
    nop
    inc b
    ld hl, sp+$0C
    ldh a, [rNR34]
    db $E4

jr_00D_7C76:
    db $FC
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    ld [$000F], sp
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    inc b
    inc bc
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    sub b
    ld h, b
    ldh a, [rP1]
    ld [bc], a
    nop
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [$0807], sp
    rlca
    ld de, $100E
    rrca
    db $10
    rrca
    add b
    nop
    ld b, b
    add b
    jr nz, jr_00D_7C76

    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [rNR34]
    db $E4
    db $FC
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    dec b
    nop
    ld a, [hl-]
    dec b
    ld b, b
    ccf
    jr nz, jr_00D_7D07

    ld b, b
    ccf
    ld hl, $231E
    inc e
    rra
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3E

    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rra
    nop
    rra
    ld b, $0F
    inc bc
    rlca

jr_00D_7D07:
    ld bc, $000F
    ld e, $01
    ld e, $01
    ld e, $01
    ldh a, [rP1]
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$E0]
    ret nz

    nop

jr_00D_7D1A:
    ld h, b
    add b
    ldh a, [$60]
    ldh a, [$60]
    ccf
    nop
    ccf
    nop
    ld a, a
    ld bc, $037F
    ld e, a
    inc l
    ld c, l
    ld [hl-], a
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp-$80
    db $E4
    jr @-$3A

    cp b
    ret z

    or b
    cp b
    ld b, b
    ldh [rP1], a
    rra
    ld b, $0F
    inc bc
    rlca
    ld bc, $000F
    ld c, $01
    dec c
    ld [bc], a
    rra
    ld bc, $011F
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, jr_00D_7D1A

    and b
    ld b, b
    ldh [$80], a
    ldh [$80], a
    rra
    nop
    ccf
    nop
    ccf
    ld bc, HeaderManufacturerCode
    rra
    nop
    jr @+$09

    db $10
    rrca
    rra
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$C0], a
    ldh [$80], a
    ret nc

    jr nz, jr_00D_7DCB

    and b
    ld [hl], b
    add b
    ret nz

    nop
    rra
    nop
    rra
    ld b, $0F
    inc bc
    rlca
    ld bc, $020D
    ld a, [de]
    dec b
    inc a
    dec de
    inc a
    dec de
    ldh a, [rP1]
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$E0]
    ret nz

    nop
    ld h, b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    dec bc
    ld e, a
    ld hl, $3C43
    ld h, c
    ld e, $7F
    nop
    ldh [rP1], a
    ret nz

    nop
    ld hl, sp-$40
    db $E4
    ret c

    call nz, $C8B8
    or b
    cp b
    ld b, b
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00D_7DCB:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
