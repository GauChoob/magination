; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc bc
    nop
    rrca
    inc bc
    dec de
    dec c
    ld l, $1F
    ld l, a
    ccf
    adc a
    ld a, a
    rst $00
    ccf
    db $E3
    rra
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$10
    db $F4
    add sp, $7A
    cp h
    cp [hl]
    db $FC
    sbc l
    cp $1F
    cp $B0
    ld c, a
    ldh [$1F], a
    or b
    ld c, a
    ld a, h
    inc bc
    ld [hl], a
    ld [$0679], sp
    jr c, jr_00C_4035

    rra
    nop
    rla
    db $FC
    dec b
    cp $47

jr_00C_4035:
    cp $03

jr_00C_4037:
    cp $13
    cp $86
    ld a, h
    db $E4
    jr jr_00C_4037

    nop
    rlca
    nop
    jr c, jr_00C_404B

    ld h, b
    rra
    pop bc
    ccf
    jp $973F


jr_00C_404B:
    ld l, a
    sub a
    ld l, a
    cp [hl]
    ld c, a
    ldh [rP1], a
    ld d, b
    ldh [$F8], a
    ldh a, [$FC]
    ld hl, sp-$02
    db $FC
    ld a, [$FFFC]
    ld a, [$FEF7]
    ldh a, [rIF]
    db $E4
    rra
    ldh a, [rIF]
    pop af
    ld c, $FF
    nop
    ld a, a
    ld bc, $023D
    rra
    nop
    ld l, a
    cp $1F
    xor $3B
    cp $EE
    inc [hl]
    sub h
    ld a, b
    jr z, @-$0E

    jr nc, @-$3E

    ret nz

    nop
    rra
    nop
    ccf
    rlca
    ld h, a
    add hl, de
    pop hl
    ld e, $F0
    rrca
    ld a, [c]
    rrca
    or b
    ld c, a
    ld hl, sp+$07
    ld hl, sp+$00
    db $FC
    ld hl, sp-$02
    db $FC
    cp $FC
    adc d
    db $FC
    pop hl
    cp $71
    cp $39
    cp $B8
    ld b, a
    cp c
    ld b, [hl]
    ld a, l
    ld [bc], a
    ld h, a
    jr jr_00C_40CC

    inc e
    dec e
    ld [bc], a
    rrca

jr_00C_40AD:
    nop
    rlca
    nop
    db $FD
    ld a, [hl]
    cp a
    ld a, [hl]
    cp l
    ld a, [hl]
    cp d
    ld a, h
    or h
    ld a, b
    ret c

    jr nc, jr_00C_40AD

    nop
    ret nz

    nop
    nop
    nop
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    jr c, jr_00C_4104

jr_00C_40CC:
    jr nz, jr_00C_40EE

    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, h
    ld a, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    jr c, jr_00C_4114

    inc h
    inc h
    ld h, d
    ld h, d
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr nz, jr_00C_4106

    jr c, jr_00C_4120

    jr nz, @+$22

    jr nz, jr_00C_410C

    jr nz, @+$22

jr_00C_40EE:
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld e, $1E
    jr nz, jr_00C_4116

    jr @+$1A

    inc b
    inc b
    ld [hl-], a
    ld [hl-], a
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_00C_4104:
    adc b
    adc b

jr_00C_4106:
    ld [$0808], sp
    ld [$0808], sp

jr_00C_410C:
    ld [$1808], sp

jr_00C_410F:
    jr jr_00C_4111

jr_00C_4111:
    nop
    ld c, $0E

jr_00C_4114:
    ld [de], a
    ld [de], a

jr_00C_4116:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $3E
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d

jr_00C_4120:
    nop
    nop
    db $10
    db $10
    jr nc, jr_00C_4156

    jr nc, jr_00C_4158

    jr nc, jr_00C_415A

    jr nz, jr_00C_414C

jr_00C_412C:
    nop
    nop
    jr nz, jr_00C_4150

    nop
    nop
    ld bc, $0E00
    ld bc, $0E11
    ld l, $11
    ld e, d
    dec h
    ld l, [hl]
    ld de, $2C53
    nop
    nop
    nop
    nop
    add sp, $00
    ld d, h
    xor b
    xor b
    ld d, b
    xor h
    ld d, b

jr_00C_414C:
    ld [$FC14], a
    nop

jr_00C_4150:
    and a
    ld e, b
    xor a
    ld d, l
    or a
    ld c, e

jr_00C_4156:
    xor a
    ld d, l

jr_00C_4158:
    ld e, a
    inc l

jr_00C_415A:
    ld e, a
    inc l
    ccf
    dec bc
    rrca
    inc bc
    ld hl, sp+$00
    ld hl, sp+$60
    ld hl, sp+$60
    ld hl, sp-$10
    ldh a, [rP1]
    jr c, jr_00C_412C

    cp b
    ld d, b
    cp b
    ld d, b
    rlca
    nop
    rlca
    nop
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
    ld hl, sp-$10
    ld hl, sp+$60
    db $E4
    jr jr_00C_410F

    ld a, b
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    add hl, hl
    ld d, $37
    ld [$136C], sp
    xor e
    ld d, h
    ld d, l
    ld a, [hl+]
    nop
    nop
    sub b
    nop
    ld l, b
    sub b
    or h
    ld c, b
    ld [hl], h
    adc b
    sbc h
    ld h, b
    xor h
    ld d, b
    ld a, b
    add b
    ld e, l
    ld [hl+], a
    ld e, c
    ld h, $4B
    inc [hl]
    dec hl
    inc d
    dec hl
    inc d
    dec hl
    inc d
    rra
    ld bc, $000F
    ld a, b
    sub b
    ld a, b
    or b
    ld [hl], b
    and b
    ld h, b
    add b
    ld [hl], b
    add b
    ld hl, sp+$20
    db $FC
    sbc b
    db $FC
    ret c

    rlca
    nop
    rlca
    ld [bc], a
    rlca
    inc bc
    rrca
    ld b, $0F
    nop
    add hl, bc
    ld b, $0F
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$20
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    nop
    nop
    nop
    nop
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
    jr c, jr_00C_4201

jr_00C_4201:
    nop
    add b
    nop
    ld e, b
    add b
    and h
    ld e, b
    ld c, [hl]
    or b
    or d
    ld c, h
    xor [hl]
    ld d, b
    pop af
    ld c, $00
    nop
    ld e, a
    jr nz, @+$81

    dec d
    ld e, a
    dec h
    ld e, a
    dec hl
    ccf
    ld [$021D], sp
    dec e
    ld a, [bc]
    nop
    nop
    ld a, [$FE04]
    xor b
    ld a, [$FAA4]
    call nc, $30FC
    ld hl, sp-$30
    ld hl, sp-$30
    rrca
    nop
    rrca
    rlca
    rrca
    rlca
    rrca
    ld bc, $0609
    ld [$0407], sp
    inc bc
    rlca
    nop
    ldh a, [rP1]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$A0]
    ldh a, [$60]
    ldh [rP1], a
    and b
    ld b, b

jr_00C_424E:
    ret nz

    nop
    ld a, [$FE04]
    xor b
    ld a, [$FAA4]
    call nc, $10FC
    inc a
    ret nz

    inc a
    ret c

    inc a
    ret c

    ld hl, sp+$00
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$40
    ret z

    jr nc, @-$7A

    ld a, b
    call nz, $F838
    nop
    rrca
    nop
    rrca
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
    ldh a, [$E0]
    ldh a, [$E0]
    ldh a, [$E0]
    ldh [rP1], a
    jr nz, jr_00C_424E

    ldh [rP1], a
    nop
    nop
    ld bc, $1A00
    ld bc, $1A25
    ld [hl], d
    dec c
    ld c, a
    jr nc, jr_00C_4312

    ld a, [bc]
    adc l
    ld [hl], d
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ld b, b
    xor h
    ld d, b
    ld [hl], d
    adc h
    ld e, h
    and b
    ld d, d
    xor h
    ld [hl], l
    ld a, [bc]
    ld d, l
    ld a, [hl+]
    xor l
    ld d, d
    xor l
    ld d, d
    ld l, [hl]
    ld de, $122D
    dec d
    ld a, [bc]
    rrca
    nop
    ld e, h
    and b
    ld d, h
    xor b
    ld l, d
    sub h
    cp d
    ld b, h
    jp c, $AC24

    ld d, b
    ld e, b
    and b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$E0]
    ld hl, sp-$10
    ld hl, sp+$70
    ld hl, sp+$60
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    dec d
    ld a, [bc]
    ld a, [hl+]
    dec d
    dec l
    ld [de], a
    cpl
    stop
    nop
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
    cpl
    db $10
    ld e, e
    dec h
    ld d, a
    jr z, jr_00C_435C

    ld a, [hl+]
    scf
    ld [$010F], sp
    rrca
    dec b
    rrca
    dec b
    db $FC
    nop

jr_00C_4312:
    db $FC
    xor b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$40
    db $FC
    cp b
    db $FC
    ret c

    rlca
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rla
    dec bc
    inc de
    inc c
    jr @+$09

    rra
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    cp $E0
    ld sp, hl
    add $F1
    ld l, $72
    xor h
    ld l, [hl]
    sub b
    ld hl, sp+$00
    ld e, e
    dec h
    ld d, a
    jr z, jr_00C_439A

    ld a, [hl+]
    scf
    ld [$040B], sp
    rlca
    ld bc, $0003
    ld bc, $FC00
    xor b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    add sp, -$70
    add sp, $10

jr_00C_435C:
    add sp, -$30
    add sp, -$30
    ld bc, $0100
    nop
    inc bc
    ld bc, $0307
    rlca
    nop
    ld b, $01
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$10
    ld hl, sp-$20
    db $F4
    ld [$E814], sp
    inc e
    ldh [$F0], a
    nop
    cpl
    db $10
    ld e, e
    dec h
    ld d, a
    jr z, jr_00C_43DC

    ld a, [hl+]
    scf
    ld [$030F], sp
    rrca
    ld b, $0F
    ld b, $FC
    nop
    db $FC
    xor b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00

jr_00C_439A:
    sbc b
    ld h, b
    sbc h
    ld l, b
    sbc h
    ld l, b
    rlca
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    ld [bc], a
    rla
    ld [$0F10], sp
    jr @+$09

    rra
    nop
    sbc b
    ld h, b
    ldh a, [rP1]
    cp $F0
    ld sp, hl
    or $F1
    ld l, [hl]
    ld a, [c]
    inc l
    ld l, [hl]
    sub b
    ld hl, sp+$00
    ld b, [hl]
    nop
    rst $38
    ld b, b
    ld l, a
    scf
    ld [hl], a
    dec bc
    ld e, a
    add hl, sp
    ld a, a
    ccf
    ld e, h
    inc hl
    ccf
    inc d
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [$C0], a
    ldh a, [$E0]
    ldh a, [$E0]

jr_00C_43DC:
    ldh a, [$E0]
    ldh a, [rP1]
    rra
    dec b
    rra
    inc bc
    rrca
    inc b
    rrca
    dec b
    dec bc
    inc b
    rra
    inc c
    rra
    dec c
    rrca
    nop
    ldh [$80], a
    ldh [$C0], a
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    ldh a, [rNR41]
    ldh [$80], a
    ret nz

    nop
    inc b
    inc bc
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
    ld hl, $7F00
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

jr_00C_4437:
    jr z, jr_00C_4437

    db $F4
    cp $FC
    cp d
    call nz, $90FC
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0001
    ld [bc], a
    ld bc, $10F8
    ldh a, [rP1]
    ldh [rLCDC], a
    or b
    ld b, b
    ldh a, [rLCDC]
    ldh a, [$60]
    ldh a, [$60]
    ld h, b
    add b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
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
    ccf
    inc d
    rra
    dec b
    rlca
    inc bc
    rlca
    nop
    rrca
    inc b
    rrca

jr_00C_447B:
    inc b
    dec bc
    dec b
    rrca
    dec b
    db $FC
    jr z, jr_00C_447B

    and b

jr_00C_4484:
    ldh [$C0], a

jr_00C_4486:
    ldh [rP1], a

jr_00C_4488:
    ldh a, [rNR41]
    ret nc

    and b
    ldh a, [$60]
    ldh a, [$60]
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
    ldh [rP1], a
    ldh a, [$A0]
    ldh a, [rNR41]
    ret nc

    jr nz, @-$06

    or b
    ld hl, sp+$30
    halt
    ld [$1C22], sp
    ld [hl+], a
    inc e
    ld h, d
    inc e
    ld a, [c]
    ld l, h
    cp $70
    ld a, [hl]
    inc [hl]
    ld a, h
    nop
    jr nc, @-$3E

    jr nz, jr_00C_4484

    jr nz, jr_00C_4486

    jr nc, jr_00C_4488

    ld a, b
    or b
    db $FC
    ld a, b
    db $FC
    jr c, @-$06

    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rrca
    inc b
    rrca
    inc b
    dec bc

jr_00C_44DD:
    dec b
    rrca
    inc b
    nop
    nop

jr_00C_44E2:
    ld hl, sp+$00

jr_00C_44E4:
    ldh a, [rP1]

jr_00C_44E6:
    ldh [rP1], a

jr_00C_44E8:
    ldh a, [rNR41]

jr_00C_44EA:
    ret nc

    jr nz, jr_00C_44DD

    ld h, b
    ldh a, [$60]
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
    ret z

    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rNR41]
    ldh a, [rNR41]
    ret nc

    and b
    ld hl, sp-$50
    ld hl, sp+$30
    ld h, a
    jr jr_00C_4575

    inc e
    ld [hl+], a
    inc e
    ld a, [hl-]
    inc b
    inc a
    jr jr_00C_4597

    jr c, jr_00C_459B

    inc [hl]
    ld a, [hl]
    nop
    jr nc, jr_00C_44E2

    jr nz, jr_00C_44E4

    jr nz, jr_00C_44E6

    jr nz, jr_00C_44E8

    jr c, jr_00C_44EA

    ld a, h
    sbc b
    db $FC
    ld [hl], b
    ld hl, sp+$00
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
    rrca
    ld bc, $0000
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$50
    db $FC
    sbc b

Call_00C_454A:
Jump_00C_454A:
    sbc b
    ldh a, [$F8]
    nop
    ldh a, [$A0]
    rrca
    ld bc, $000F
    rlca
    nop
    rlca
    ld bc, $0007
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
    ldh a, [$60]
    ldh a, [$60]
    ldh [rP1], a
    rst $38
    ld c, $7E
    nop
    ld a, b

jr_00C_4575:
    db $10
    inc a
    db $10
    inc l
    db $10
    jr c, @+$32

    ld a, b
    jr nc, jr_00C_45F7

    nop
    rrca
    ld bc, $000F
    rlca
    nop
    rlca
    ld bc, $020D
    rra
    inc c
    rra
    dec c
    rrca
    nop
    ldh a, [$A0]
    ldh a, [$E0]
    ldh [rP1], a
    add b

jr_00C_4597:
    nop
    ret nz

    nop
    ret nz

jr_00C_459B:
    nop
    ldh [rLCDC], a
    ret nz

    nop
    inc b
    inc bc
    nop
    inc bc
    inc c
    inc bc

jr_00C_45A6:
    jr nc, jr_00C_45B7

    halt
    add hl, hl
    ld a, a
    ld [hl], $7F
    ld e, $7F
    nop
    add b
    nop
    add b
    nop
    ld [hl], b
    add b
    ld a, b

jr_00C_45B7:
    or b
    ld a, b
    or b
    ldh a, [$60]
    ldh a, [$C0]
    ldh [rP1], a
    ld [$2830], sp
    db $10
    jr z, jr_00C_45D6

    ld c, h
    jr nc, jr_00C_4647

    nop
    ld a, a
    inc a
    ld a, a
    ld a, $7F
    nop
    inc b
    inc bc
    nop
    inc bc
    inc b
    inc bc

jr_00C_45D6:
    ld [$1007], sp
    rrca
    ccf
    db $10
    ccf
    rrca
    rra
    nop
    add b
    nop
    ld b, b
    add b
    jr c, jr_00C_45A6

    inc a
    ret c

    ld a, h
    cp b
    ld hl, sp+$70
    ld hl, sp+$60
    ldh [rP1], a
    rrca
    nop
    stop
    jr nz, jr_00C_45F6

jr_00C_45F6:
    ld h, a

jr_00C_45F7:
    nop
    sbc a
    ld h, a
    ld b, a
    dec sp
    ld h, e
    dec e
    ld [hl], a
    dec bc
    nop
    nop
    add b
    nop
    add b
    nop
    db $E4
    nop
    ld a, [$F2E4]
    db $EC
    db $F4
    add sp, -$04
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc a
    nop
    ld a, h
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], a
    ld a, a
    jr c, jr_00C_4664

    ld b, $1F
    inc bc
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld b, $7F
    ld b, $FE
    db $EC
    db $FC
    ld [$C0F8], sp
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_00C_4647:
    nop
    ld a, a
    nop

Call_00C_464A:
    ld a, c
    ld b, $21
    ld e, $1F
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ret z

    jr nc, jr_00C_4663

    ldh a, [$F0]
    nop
    nop
    nop
    nop
    nop
    rrca

jr_00C_4663:
    nop

jr_00C_4664:
    ld de, $2100
    nop
    inc hl
    nop
    inc hl
    ld bc, $0327
    ld e, a
    rlca
    nop
    nop
    nop
    nop
    add h
    nop
    ld [$F204], a
    db $EC
    ld [c], a
    call c, $D8E4
    ld hl, sp-$80
    ccf
    rrca
    rra
    rlca
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    ld hl, sp+$70
    ld hl, sp-$50
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$08FC], sp
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
    nop
    ld c, $00
    ld e, $00
    inc e
    nop
    inc e
    nop
    jr jr_00C_46CB

jr_00C_46CB:
    jr nz, jr_00C_46CD

jr_00C_46CD:
    nop
    nop
    nop
    ld c, a
    scf
    ld a, a
    rrca
    rst $38
    ld [hl], b
    ld a, a
    dec [hl]
    ccf
    inc bc
    rra
    nop
    rra
    nop
    rra
    ld [$ECF2], sp
    cp $F0
    rst $38
    ld c, $FE
    xor h
    db $FC
    ret nz

    ld hl, sp+$00
    ld hl, sp-$40
    ld hl, sp-$40
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add hl, de
    ld b, $08
    rlca
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    add b
    nop
    nop
    nop
    jr nz, jr_00C_4716

jr_00C_4716:
    ld [c], a
    nop
    push af
    ld [c], a
    ld sp, hl
    or $F1
    xor $F2
    db $EC
    nop
    nop
    ld b, b
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
    cp $F0
    rst $38
    ld c, $FE
    xor h
    db $FC
    ret nz

    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    jr nc, @-$02

    jr nc, @-$06

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $FC
    nop
    call z, $8430
    ld a, b
    call nz, $F838
    nop
    ld e, [hl]
    inc l
    ld a, [hl]
    ld c, $FF
    ld [hl], a
    ld a, a
    jr nc, jr_00C_4798

    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    ld a, d
    inc [hl]
    ld a, [hl]
    jr nc, @+$01

    ld l, [hl]
    cp $0C
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    ld [$0000], sp
    nop
    inc c
    ld [$0004], sp
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
    rrca
    nop
    rrca
    nop
    rlca
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
    ld hl, sp+$00

jr_00C_4798:
    ld hl, sp+$00
    ldh a, [rP1]
    sub b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    add b
    nop
    nop
    nop
    ld [hl+], a
    nop
    dec [hl]
    ld [bc], a
    add hl, sp
    ld d, $39
    ld d, $3A
    inc [hl]
    nop
    nop
    ld b, b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    add b
    ld a, a
    ld c, $FF
    ld [hl], a
    ld a, a
    jr nc, jr_00C_4806

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    ld a, [hl]
    jr nc, @+$01

    ld l, [hl]
    cp $0C
    db $FC
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
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    db $F4
    ld [$708C], sp
    ld hl, sp+$00
    inc e
    nop
    ld [hl+], a
    nop
    ld b, a
    nop
    ld c, a
    inc b
    ld c, h
    inc bc
    ld e, [hl]
    dec b
    sbc a
    nop
    ld l, a
    rlca
    nop
    nop
    nop
    nop
    ldh a, [rP1]

jr_00C_4806:
    ld hl, sp+$70
    ld a, h
    cp b
    inc a
    ret c

    inc a
    ret c

    db $FC
    jr c, jr_00C_4811

jr_00C_4811:
    nop
    nop
    inc e
    nop
    jr c, jr_00C_4817

jr_00C_4817:
    jr nc, jr_00C_4819

jr_00C_4819:
    jr nc, jr_00C_481B

jr_00C_481B:
    jr nz, jr_00C_481D

jr_00C_481D:
    ld h, b
    nop
    nop
    ld l, a
    rlca
    rlca
    ld bc, $0003
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    inc b
    rrca

jr_00C_482F:
    inc b
    db $FC
    jr c, jr_00C_482F

    add b
    db $FC
    add sp, -$04
    ld a, b
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    jr @-$02

    jr jr_00C_4848

    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop

jr_00C_4848:
    rla
    ld [$0F10], sp
    jr @+$09

    rra
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    cp $00
    ld sp, hl
    ld b, $F1
    ld c, $F2
    inc c
    ld l, [hl]
    sub b
    ld hl, sp+$00
    rlca
    ld bc, $0003
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    db $FC
    add b
    db $FC
    add sp, -$04
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$60
    ld hl, sp+$60
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    inc b
    inc bc
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $F4
    ld [$E814], sp
    inc e
    ldh [$F0], a
    nop
    ld l, a
    rlca
    rlca
    ld bc, $0003
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    ld b, $0F

jr_00C_48AF:
    ld b, $FC
    jr c, jr_00C_48AF

    add b
    db $FC
    add sp, -$04
    ld a, b
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    ld [$08FC], sp
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rla
    ld [$0F10], sp
    jr @+$09

    rra
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    cp $00
    ld sp, hl
    ld b, $F1
    ld c, $F2
    inc c
    ld l, [hl]
    sub b
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
    ld [hl], b
    nop
    ld hl, sp+$70
    ld a, h
    jr c, jr_00C_4939

    db $10
    rra
    ld c, $1F
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_00C_4905:
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$E0]
    ld a, b
    and b
    jr nz, jr_00C_4912

jr_00C_4912:
    ld [hl], b
    jr nz, jr_00C_4905

    ld h, b
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ld sp, hl
    ld [hl], b
    rst $38
    add hl, sp
    nop
    nop
    inc b
    nop

jr_00C_4924:
    ld c, $04
    rrca
    ld b, $1F
    ld c, $3F
    ld e, $FE
    inc a
    db $FC
    ret c

    ccf
    rrca
    ccf
    ld e, $3E
    inc e
    ld a, h
    jr c, jr_00C_49B5

jr_00C_4939:
    jr c, jr_00C_49B3

    jr nc, jr_00C_4975

    db $10
    jr nc, jr_00C_4940

jr_00C_4940:
    sbc h
    ld l, b
    sbc $2C
    cpl
    ld b, $07
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    cp $5D
    rst $38
    ld h, d
    ld a, a
    inc a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$40
    jr nz, jr_00C_4924

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
    nop
    nop
    nop
    nop
    nop
    nop

jr_00C_4975:
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
    jr c, jr_00C_4990

jr_00C_4990:
    jr c, @+$12

    inc a
    jr jr_00C_49D4

    jr jr_00C_49B6

    rlca
    rra
    rrca
    rra
    inc c
    rra
    ld c, $0F
    rlca
    ld [$1C00], sp
    ld [$08FC], sp
    db $FC
    add sp, -$08
    ldh a, [$F8]
    nop
    ld hl, sp-$30
    ld hl, sp-$10
    ld a, h
    jr c, jr_00C_49F2

jr_00C_49B3:
    jr jr_00C_49D4

jr_00C_49B5:
    rlca

jr_00C_49B6:
    rra
    rrca
    rra
    inc c
    rra
    ld c, $2F
    rlca
    ld e, a
    ld hl, $000C
    cp $0C
    db $FC
    add sp, -$08
    ldh a, [$F8]
    nop
    ld hl, sp-$30
    db $FC
    ldh a, [$FA]
    db $E4
    rlca
    ld bc, $060F

jr_00C_49D4:
    rra
    add hl, bc
    rra
    ld c, $1F
    rlca
    ld e, $09
    rra
    inc c
    inc c
    nop
    ldh a, [$E0]
    ldh [rP1], a
    ldh a, [$E0]
    ld hl, sp-$30
    ld d, b
    ldh [$F0], a
    ldh [$F0], a
    ld h, b
    ld h, b
    nop
    cp a
    ld a, [hl]

jr_00C_49F2:
    ld a, a
    ccf
    ccf
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    db $FD
    ld e, $FE
    ld hl, sp-$08
    ldh [$F0], a
    ldh [$F0], a

jr_00C_4A09:
    ldh [$E0], a
    ret nz

    ret nz

    nop
    nop
    nop
    ld a, b
    nop
    add h
    ld a, b
    ld [hl-], a
    xor $37
    rst $08
    adc a
    ld [hl], b
    ld [$30F0], sp
    ret nz

    ldh [rP1], a
    nop
    nop
    inc b
    nop
    inc c
    nop
    ld d, $08
    ld c, $10
    ld a, $00
    ld e, $20
    ccf
    nop
    rra
    jr nz, jr_00C_4A52

    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $001F
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec sp
    inc b
    rst $00
    jr c, jr_00C_4ABC

    db $10
    ld e, a
    jr nz, jr_00C_4A09

    ld b, b

jr_00C_4A52:
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ld sp, hl
    ld b, $61
    ld e, $3B
    inc b
    dec [hl]
    ld a, [bc]
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec bc
    inc b
    rrca
    nop
    ld c, $00
    ld c, $00
    inc c
    nop
    inc bc
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec bc
    inc b
    inc sp
    inc c
    rst $30
    ld [$007F], sp
    rra
    nop
    rrca
    nop
    rrca
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
    ld [hl+], a
    jr z, jr_00C_4AEB

    inc c
    scf
    ld c, e
    ld [hl+], a
    jr z, jr_00C_4AF1

    inc c
    nop
    ld d, c
    ld [hl+], a
    jr z, jr_00C_4AF7

    inc c
    reti


    ld e, d
    ld [hl+], a
    jr z, jr_00C_4AFD

    inc c
    ld b, $5F
    ld [hl+], a
    jr z, jr_00C_4B03

    inc c

jr_00C_4ABC:
    ld a, [hl-]
    ld h, [hl]
    or [hl]
    add hl, sp
    and b
    ld bc, $1101
    inc b
    ld c, b
    ld d, $20
    ld l, a
    or [hl]
    add hl, sp
    and b
    ld [bc], a
    ld bc, $0305
    ld c, b
    ld d, $20
    ld l, a
    ld b, [hl]
    nop
    ld c, d
    and b
    add b
    inc c
    db $EC
    ld c, d
    or [hl]
    add hl, sp
    and b
    ld [bc], a
    or [hl]
    add hl, sp
    and b
    jr nz, @-$48

    ld c, d
    and b
    add b
    ld c, b
    ld d, $28

jr_00C_4AEB:
    ld [hl], c
    or [hl]
    add hl, sp
    and b
    ld [bc], a
    or [hl]

jr_00C_4AF1:
    add hl, sp
    and b
    jr nz, jr_00C_4AF6

    dec b

jr_00C_4AF6:
    inc bc

jr_00C_4AF7:
    ld c, b
    ld d, $20
    ld l, a
    or [hl]
    add hl, sp

jr_00C_4AFD:
    and b
    inc b
    ld bc, $1004
    ld c, b

jr_00C_4B03:
    ld d, $20
    ld l, a
    ld b, [hl]
    nop
    add hl, sp
    and b
    ld [$190C], sp
    ld c, e
    or [hl]
    add hl, sp
    and b
    ld [$0C01], sp
    ld d, $48
    ld d, $06
    ld [hl], d
    ld bc, $160C
    ld c, b
    ld d, $20
    ld l, a
    ld b, [hl]
    nop
    add hl, sp
    and b
    db $10
    inc c
    jr nc, @+$4D

    or [hl]
    add hl, sp
    and b
    db $10
    ld c, b
    ld d, $01
    ld [hl], b
    ld bc, $0E18
    ld c, b
    ld d, $20
    ld l, a
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld e, [hl]
    ld d, c
    inc de
    ld h, a
    ld [de], a
    ld b, a
    dec b
    nop
    inc [hl]
    ld h, e
    ld bc, $4C05
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    inc bc
    ld bc, $D012
    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec b
    inc b
    pop hl
    ld [hl], b
    dec b
    ld bc, $D014
    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec b
    dec b
    pop hl
    ld [hl], b
    rlca
    dec b
    ld d, d
    ret nc

    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec b
    ld b, $E1
    ld [hl], b
    add hl, bc
    ld bc, $D018
    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec b
    rlca
    pop hl

jr_00C_4B9D:
    ld [hl], b
    dec bc
    ld bc, $D01A
    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h

jr_00C_4BA9:
    dec b
    ld [$70E1], sp

jr_00C_4BAD:
    dec c
    ld [bc], a
    dec hl
    ret nc

jr_00C_4BB1:
    nop
    ld de, $75F4

jr_00C_4BB5:
    inc c
    ld b, b
    ld c, h
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    dec c
    inc bc
    ld a, [hl-]
    ret nc

    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    dec c
    inc b
    ld c, c
    ret nc

    nop
    ld de, $75F4
    inc c
    ld b, b
    ld c, h
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_00C_4B9D

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_00C_4BA9

    rst $28
    or l
    jr z, jr_00C_4BAD

    rst $18
    or l
    jr z, jr_00C_4BB1

    cp a
    or l
    jr z, jr_00C_4BB5

    ld a, a
    sbc e
    inc c
    dec de
    ld c, h
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00C_4C7C

    ld h, l
    ld [hl], e
    ld [hl], h

jr_00C_4C2D:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00C_4C78

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    inc c
    ld c, a
    ld c, h
    inc c
    jp nz, Jump_00C_454A

    or e
    ld sp, $01C7

jr_00C_4C44:
    ld c, e
    add hl, bc
    nop
    inc c
    ld c, a
    ld c, h
    inc d
    ld de, $75F4
    ld b, l
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0C

jr_00C_4C5B:
    ld h, [hl]
    ld c, h
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_00C_4C77

    ld a, d

jr_00C_4C72:
    jr nz, jr_00C_4CEC

    ld c, b
    inc c
    dec sp

jr_00C_4C77:
    ld c, e

jr_00C_4C78:
    dec d
    ld de, $76C3

jr_00C_4C7C:
    jr jr_00C_4C8F

    db $F4
    ld [hl], l
    jr jr_00C_4C93

    sbc h
    halt
    jr jr_00C_4C97

    db $F4
    ld [hl], l
    nop

jr_00C_4C89:
    nop
    or l
    jr z, jr_00C_4C2D

    cp $45

jr_00C_4C8F:
    dec d
    ld de, $76C3

jr_00C_4C93:
    jr jr_00C_4CA6

    db $F4
    ld [hl], l

jr_00C_4C97:
    jr jr_00C_4CAA

    sbc h
    halt
    jr jr_00C_4CAE

    db $F4
    ld [hl], l
    nop

jr_00C_4CA0:
    nop
    or l
    jr z, jr_00C_4C44

    db $FD
    ld b, l

jr_00C_4CA6:
    dec d
    ld de, $769C

jr_00C_4CAA:
    jr jr_00C_4CBD

    db $F4
    ld [hl], l

jr_00C_4CAE:
    jr jr_00C_4CC1

    jp $1876


    ld de, $75F4
    nop

jr_00C_4CB7:
    nop
    or l
    jr z, jr_00C_4C5B

    ei
    ld b, l

jr_00C_4CBD:
    dec d
    ld de, $76C3

jr_00C_4CC1:
    jr jr_00C_4CD4

    db $F4
    ld [hl], l
    jr jr_00C_4CD8

    sbc h
    halt
    jr jr_00C_4CDC

    db $F4
    ld [hl], l
    nop

jr_00C_4CCE:
    nop
    or l
    jr z, jr_00C_4C72

    rst $30
    ld b, l

jr_00C_4CD4:
    dec d
    ld de, $76C3

jr_00C_4CD8:
    jr jr_00C_4CEB

    db $F4
    ld [hl], l

jr_00C_4CDC:
    jr jr_00C_4CEF

    sbc h
    halt

jr_00C_4CE0:
    jr jr_00C_4CF3

    db $F4
    ld [hl], l
    nop
    nop

jr_00C_4CE6:
    or l
    jr z, jr_00C_4C89

    rst $28
    ld b, l

jr_00C_4CEB:
    dec d

jr_00C_4CEC:
    ld de, $7675

jr_00C_4CEF:
    ld h, b
    ld de, $75F4

jr_00C_4CF3:
    jr jr_00C_4D06

    ld c, [hl]
    halt
    ld h, b

jr_00C_4CF8:
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_00C_4CA0

    rst $18
    ld b, l
    dec d
    ld de, $7675

jr_00C_4D06:
    ld h, b
    ld de, $75F4

jr_00C_4D0A:
    jr jr_00C_4D1D

    ld c, [hl]
    halt
    ld h, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_00C_4CB7

    cp a
    ld b, l
    dec d
    ld de, $7675

jr_00C_4D1D:
    ld h, b
    ld de, $75F4
    jr jr_00C_4D34

    ld c, [hl]
    halt
    ld h, b
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_00C_4CCE

    ld a, a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4CD4

jr_00C_4D34:
    add b
    inc c
    ld b, c
    ld c, l
    add hl, bc

jr_00C_4D39:
    ld a, [bc]
    inc c
    add hl, de
    ld c, l
    or [hl]

jr_00C_4D3E:
    jr z, jr_00C_4CE0

    add b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4CE6

    ld b, b
    inc c
    ld d, e
    ld c, l

jr_00C_4D4A:
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l
    or [hl]

jr_00C_4D50:
    jr z, @-$5E

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4CF8

    jr nz, jr_00C_4D66

    ld h, l
    ld c, l

jr_00C_4D5C:
    add hl, bc
    ld [$EB0C], sp
    ld c, h

jr_00C_4D61:
    or [hl]
    jr z, @-$5E

    jr nz, jr_00C_4DAB

jr_00C_4D66:
    ld b, [hl]
    nop
    jr z, jr_00C_4D0A

    add b
    inc c
    ld [hl], a

jr_00C_4D6D:
    ld c, l
    add hl, bc
    ld a, [bc]
    inc c
    add hl, de
    ld c, l

jr_00C_4D73:
    or [hl]
    jr z, @-$5E

    add b
    ld b, [hl]
    nop
    jr z, @-$5E

    ld bc, $880C
    ld c, l

jr_00C_4D7F:
    add hl, bc
    inc bc
    inc c
    ld a, b
    ld c, h

jr_00C_4D84:
    or [hl]
    jr z, @-$5E

    ld bc, $4645
    nop
    jr z, @-$5E

    add b
    inc c
    sbc d

jr_00C_4D90:
    ld c, l
    add hl, bc
    ld a, [bc]
    inc c
    add hl, de
    ld c, l

jr_00C_4D96:
    or [hl]
    jr z, jr_00C_4D39

    add b
    ld b, [hl]
    nop
    jr z, jr_00C_4D3E

    ld [bc], a
    inc c
    xor e
    ld c, l

jr_00C_4DA2:
    add hl, bc
    inc b
    inc c
    adc a
    ld c, h

jr_00C_4DA7:
    or [hl]
    jr z, jr_00C_4D4A

    ld [bc], a

jr_00C_4DAB:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4D50

    add b
    inc c
    cp l

jr_00C_4DB3:
    ld c, l
    add hl, bc
    ld a, [bc]
    inc c
    add hl, de
    ld c, l

jr_00C_4DB9:
    or [hl]
    jr z, jr_00C_4D5C

    add b
    ld b, [hl]
    nop
    jr z, jr_00C_4D61

    inc b
    inc c
    adc $4D

jr_00C_4DC5:
    add hl, bc
    dec b
    inc c
    and [hl]
    ld c, h

jr_00C_4DCA:
    or [hl]
    jr z, jr_00C_4D6D

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4D73

    add b
    inc c
    ldh [rKEY1], a
    add hl, bc
    ld a, [bc]
    inc c
    add hl, de
    ld c, l

jr_00C_4DDC:
    or [hl]
    jr z, jr_00C_4D7F

    add b
    ld b, [hl]
    nop
    jr z, jr_00C_4D84

    ld [$F10C], sp
    ld c, l

jr_00C_4DE8:
    add hl, bc
    ld b, $0C
    cp l
    ld c, h

jr_00C_4DED:
    or [hl]
    jr z, jr_00C_4D90

    ld [$4645], sp
    nop
    jr z, jr_00C_4D96

    add b
    inc c
    inc bc

jr_00C_4DF9:
    ld c, [hl]
    add hl, bc
    ld a, [bc]
    inc c
    add hl, de
    ld c, l

jr_00C_4DFF:
    or [hl]
    jr z, jr_00C_4DA2

    add b
    ld b, [hl]
    nop
    jr z, jr_00C_4DA7

    db $10
    inc c
    inc d
    ld c, [hl]

jr_00C_4E0B:
    add hl, bc
    rlca
    inc c
    call nc, $B64C
    jr z, jr_00C_4DB3

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4DB9

    ld b, b
    inc c
    ld h, $4E
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l

jr_00C_4E22:
    or [hl]
    jr z, jr_00C_4DC5

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_00C_4DCA

    ld bc, $370C
    ld c, [hl]

jr_00C_4E2E:
    add hl, bc
    inc bc
    inc c
    ld a, b
    ld c, h

jr_00C_4E33:
    or [hl]
    jr z, @-$5E

    ld bc, $4645
    nop
    jr z, jr_00C_4DDC

    ld b, b
    inc c
    ld c, c

jr_00C_4E3F:
    ld c, [hl]
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l

jr_00C_4E45:
    or [hl]
    jr z, jr_00C_4DE8

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_00C_4DED

    ld [bc], a
    inc c
    ld e, d
    ld c, [hl]

jr_00C_4E51:
    add hl, bc
    inc b
    inc c
    adc a
    ld c, h

jr_00C_4E56:
    or [hl]
    jr z, jr_00C_4DF9

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4DFF

    ld b, b
    inc c
    ld l, h

jr_00C_4E62:
    ld c, [hl]
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l

jr_00C_4E68:
    or [hl]
    jr z, jr_00C_4E0B

    ld b, b
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    inc c
    ld a, l
    ld c, [hl]

jr_00C_4E74:
    add hl, bc
    dec b
    inc c
    and [hl]
    ld c, h

jr_00C_4E79:
    or [hl]
    jr z, @-$5E

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4E22

    ld b, b
    inc c
    adc a

jr_00C_4E85:
    ld c, [hl]
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l

jr_00C_4E8B:
    or [hl]
    jr z, jr_00C_4E2E

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_00C_4E33

    ld [$A00C], sp
    ld c, [hl]

jr_00C_4E97:
    add hl, bc
    ld b, $0C
    cp l
    ld c, h

jr_00C_4E9C:
    or [hl]
    jr z, jr_00C_4E3F

    ld [$4645], sp
    nop
    jr z, jr_00C_4E45

    ld b, b
    inc c
    or d

jr_00C_4EA8:
    ld c, [hl]
    add hl, bc
    add hl, bc
    inc c
    ld [bc], a
    ld c, l

jr_00C_4EAE:
    or [hl]
    jr z, jr_00C_4E51

    ld b, b
    ld b, [hl]
    nop
    jr z, jr_00C_4E56

    db $10
    inc c
    jp $094E


    rlca
    inc c
    call nc, $B64C
    jr z, jr_00C_4E62

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4E68

    jr nz, jr_00C_4ED6

    push de

jr_00C_4ECB:
    ld c, [hl]
    add hl, bc
    ld [$EB0C], sp
    ld c, h

jr_00C_4ED1:
    or [hl]
    jr z, jr_00C_4E74

    jr nz, jr_00C_4F1C

jr_00C_4ED6:
    nop
    jr z, jr_00C_4E79

    ld bc, $E60C
    ld c, [hl]

jr_00C_4EDD:
    add hl, bc
    inc bc
    inc c
    ld a, b
    ld c, h

jr_00C_4EE2:
    or [hl]
    jr z, jr_00C_4E85

    ld bc, $4645
    nop
    jr z, jr_00C_4E8B

    jr nz, jr_00C_4EF9

    ld hl, sp+$4E
    add hl, bc
    ld [$EB0C], sp
    ld c, h

jr_00C_4EF4:
    or [hl]
    jr z, jr_00C_4E97

    jr nz, jr_00C_4F3F

jr_00C_4EF9:
    nop
    jr z, jr_00C_4E9C

    ld [bc], a
    inc c
    add hl, bc
    ld c, a

jr_00C_4F00:
    add hl, bc
    inc b
    inc c
    adc a
    ld c, h

jr_00C_4F05:
    or [hl]
    jr z, jr_00C_4EA8

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4EAE

    jr nz, jr_00C_4F1C

    dec de

jr_00C_4F11:
    ld c, a
    add hl, bc
    ld [$EB0C], sp
    ld c, h

jr_00C_4F17:
    or [hl]
    jr z, @-$5E

    jr nz, jr_00C_4F62

jr_00C_4F1C:
    nop
    jr z, @-$5E

    inc b
    inc c
    inc l
    ld c, a

jr_00C_4F23:
    add hl, bc
    dec b
    inc c
    and [hl]
    ld c, h
    or [hl]
    jr z, jr_00C_4ECB

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4ED1

    jr nz, jr_00C_4F3F

    ld a, $4F
    add hl, bc
    ld [$EB0C], sp
    ld c, h
    or [hl]
    jr z, jr_00C_4EDD

    jr nz, jr_00C_4F85

jr_00C_4F3F:
    nop
    jr z, jr_00C_4EE2

    ld [$4F0C], sp
    ld c, a
    add hl, bc
    ld b, $0C
    cp l
    ld c, h
    or [hl]
    jr z, @-$5E

    ld [$4645], sp
    nop
    jr z, jr_00C_4EF4

    jr nz, jr_00C_4F62

    ld h, c
    ld c, a
    add hl, bc
    ld [$EB0C], sp
    ld c, h
    or [hl]
    jr z, jr_00C_4F00

    jr nz, jr_00C_4FA8

jr_00C_4F62:
    nop
    jr z, jr_00C_4F05

    db $10
    inc c
    ld [hl], d
    ld c, a
    add hl, bc
    rlca
    inc c
    call nc, $B64C
    jr z, jr_00C_4F11

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_4F17

    inc b
    inc c
    add h
    ld c, a
    add hl, bc
    dec b
    inc c
    and [hl]
    ld c, h
    or [hl]
    jr z, jr_00C_4F23

    inc b
    ld b, l

jr_00C_4F85:
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_4FF9

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00C_5002

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132

jr_00C_4FA8:
    dec b
    rst $38
    inc c
    ldh [rVBK], a
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5029

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5033

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_5021

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld bc, $0005
    inc c
    inc e
    ld d, b
    and c
    xor l
    ld a, l
    and c
    ld bc, $A132
    ld c, b
    inc c
    cp [hl]
    ld c, d
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5059

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5063

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_5067

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_502A

    dec [hl]

jr_00C_4FF9:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00C_5002:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld bc, $0005
    inc c
    inc e
    ld d, b
    and c
    xor l
    ld a, l
    and c
    ld bc, $A132
    ld c, b
    inc c
    cp [hl]
    ld c, d
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00C_5021:
    ld bc, $A17D
    inc c
    sbc e
    ld d, b
    sbc a
    ld a, l

jr_00C_5029:
    and c

jr_00C_502A:
    ld b, [hl]
    rrca
    ld bc, $A17D
    dec b
    ld bc, $610C

jr_00C_5033:
    ld d, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_509D

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_509A

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_50B6

    ld [hl], e
    cp $FC
    jr nz, jr_00C_50B3

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_5059:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    cp [hl]
    ld c, d
    and [hl]
    ld d, h

jr_00C_5063:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_5067:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_50C7

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_50F5

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    cp [hl]

jr_00C_509A:
    ld c, d
    sbc a
    ld a, l

jr_00C_509D:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00C_510A

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_5119

    ld h, c
    halt

jr_00C_50B3:
    ld h, l
    jr nz, jr_00C_5129

jr_00C_50B6:
    ld h, l
    ld [hl], h
    jr nz, jr_00C_511B

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5118

    ld h, e
    ld l, a

jr_00C_50C7:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00C_5140

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_515B

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_50F5:
    xor l
    ld a, l
    and c
    ld bc, $A132
    and c
    ld c, b
    inc c
    cp [hl]
    ld c, d
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00C_510A:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld a, h
    ld d, c
    inc de
    ld h, a
    ld h, e
    ld b, a

jr_00C_5118:
    sbc e

jr_00C_5119:
    inc c
    ld [hl], c

jr_00C_511B:
    ld d, d
    dec b
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    dec a
    ld b, d
    rst $18
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de

jr_00C_5129:
    add sp, $46
    dec b
    inc b
    pop hl
    ld [hl], b
    inc b
    jr nc, jr_00C_5136

    call c, $1118
    adc d

jr_00C_5136:
    ld [hl], a
    inc c
    ld l, c
    ld d, d
    dec b
    dec b
    pop hl
    ld [hl], b
    rrca
    inc a

jr_00C_5140:
    rrca
    rst $18
    jr jr_00C_5155

    adc d
    ld [hl], a
    inc c
    ld l, c
    ld d, d
    dec b
    ld b, $E1
    ld [hl], b
    dec d
    inc a
    dec d
    rst $18
    jr jr_00C_5164

    adc d
    ld [hl], a

jr_00C_5155:
    inc c
    ld l, c
    ld d, d
    dec b
    rlca
    pop hl

jr_00C_515B:
    ld [hl], b
    dec c
    ld a, [hl-]
    adc l
    sbc $18
    ld de, $778A

jr_00C_5164:
    inc c
    ld l, c
    ld d, d
    dec b
    ld [$70E1], sp
    rrca
    dec [hl]
    ld c, a
    db $DD
    jr jr_00C_5182

    adc d
    ld [hl], a
    inc c
    ld l, c
    ld d, d
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld de, $1138
    sbc $18
    ld de, $778A

jr_00C_5182:
    inc c
    ld l, c
    ld d, d
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    rra
    jr jr_00C_51AB

    sub $18
    ld de, $778A
    inc c
    ld l, c
    ld d, d
    dec b
    dec bc
    pop hl
    ld [hl], b
    dec h
    rla
    push hl
    push de
    jr jr_00C_51AF

    adc d
    ld [hl], a
    inc c
    ld l, c
    ld d, d
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    dec h
    inc d
    dec h
    push de

jr_00C_51AB:
    jr jr_00C_51BE

    adc d
    ld [hl], a

jr_00C_51AF:
    inc c
    ld l, c
    ld d, d
    dec b
    inc de
    pop hl
    ld [hl], b
    jr z, jr_00C_51CF

    add sp, -$2B
    jr jr_00C_51CD

    adc d
    ld [hl], a

jr_00C_51BE:
    inc c
    ld l, c
    ld d, d
    dec b

jr_00C_51C2:
    inc d
    pop hl
    ld [hl], b
    dec h

jr_00C_51C6:
    dec h
    ld h, l
    reti


    jr jr_00C_51DC

    adc d
    ld [hl], a

jr_00C_51CD:
    inc c

jr_00C_51CE:
    ld l, c

jr_00C_51CF:
    ld d, d
    dec b
    dec d

jr_00C_51D2:
    pop hl
    ld [hl], b
    dec h
    inc h
    dec h
    reti


    jr @+$13

    adc d
    ld [hl], a

jr_00C_51DC:
    inc c
    ld l, c
    ld d, d
    dec bc
    nop
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc de
    dec bc
    dec d
    dec bc
    inc d
    ld l, [hl]
    inc c
    inc c
    nop
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    ld a, [bc]
    rla
    nop
    ld b, b
    ret nz

    add b
    nop
    ld l, [hl]
    dec bc
    add hl, de
    ldh [rLYC], a
    add b
    add c
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    db $FD
    or l
    jr z, jr_00C_51BE

    ei
    or l
    jr z, jr_00C_51C2

    rst $30
    or l
    jr z, jr_00C_51C6

    rst $28
    or l
    jr z, @-$5E

    rst $18
    or l
    jr z, jr_00C_51CE

    cp a
    or l
    jr z, jr_00C_51D2

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    or l
    add hl, hl
    and b
    ei
    sbc e
    inc c
    ld b, h
    ld d, d
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00C_52A5

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, @+$47

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    inc c
    ld [hl], a
    ld d, d
    inc c
    call Call_00C_454A
    or e
    ld sp, $01C7
    inc d
    ld de, $778A
    inc c
    nop
    ld c, b
    inc c
    ld [hl], a
    ld d, d
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0C
    adc d
    ld d, d
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_00C_529B

    ld a, d
    jr nz, jr_00C_5310

    ld c, b
    inc c
    inc b

jr_00C_529B:
    ld d, c
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]

jr_00C_52A5:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_5310

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00C_5319

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    inc c
    rst $30
    ld d, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5340

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_534A

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_5338

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [bc], a
    dec b
    nop
    inc c
    inc sp
    ld d, e
    and c
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    ld c, b
    inc c
    ret


    ld c, d
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5370

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_537A

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_537E

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_5341

    dec [hl]

jr_00C_5310:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00C_5319:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [bc], a
    dec b
    nop
    inc c
    inc sp
    ld d, e
    and c
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    ld c, b
    inc c
    ret


    ld c, d
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00C_5338:
    ld bc, $A17E
    inc c
    or d
    ld d, e
    sbc a
    ld a, [hl]

jr_00C_5340:
    and c

jr_00C_5341:
    ld b, [hl]
    rrca
    ld bc, $A17E
    dec b
    ld bc, $780C

jr_00C_534A:
    ld d, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_53B4

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_53B1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_53CD

    ld [hl], e
    cp $FC
    jr nz, jr_00C_53CA

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_5370:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    ret


    ld c, d
    and [hl]
    ld d, h

jr_00C_537A:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_537E:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_53DE

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_540C

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    ret


jr_00C_53B1:
    ld c, d
    sbc a
    ld a, [hl]

jr_00C_53B4:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00C_5421

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_5430

    ld h, c
    halt

jr_00C_53CA:
    ld h, l
    jr nz, jr_00C_5440

jr_00C_53CD:
    ld h, l

jr_00C_53CE:
    ld [hl], h
    jr nz, jr_00C_5432

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_542F

    ld h, e
    ld l, a

jr_00C_53DE:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00C_5457

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5448

    ld h, e
    ld l, a

jr_00C_53F7:
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00C_5462

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_540C:
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    inc c
    ret


    ld c, d
    ld e, $15
    dec d
    ld de, $77F2
    ld b, [hl]
    ld de, $778A

jr_00C_5421:
    db $10
    ld de, $7808
    ld b, [hl]
    ld de, $778A
    nop
    nop
    or l
    jr z, jr_00C_53CE

    db $FD

jr_00C_542F:
    ld b, l

jr_00C_5430:
    ld e, $15

jr_00C_5432:
    dec d
    ld de, $7834
    ld [$F211], sp
    ld [hl], a
    jr c, @+$13

    ld e, $78
    jr z, jr_00C_5451

jr_00C_5440:
    adc d
    ld [hl], a
    db $10
    ld de, $7834
    jr z, jr_00C_5459

jr_00C_5448:
    ld [$3878], sp
    ld de, $781E
    ld [$8A11], sp

jr_00C_5451:
    ld [hl], a
    nop
    nop
    or l
    jr z, jr_00C_53F7

jr_00C_5457:
    ei
    ld b, l

jr_00C_5459:
    ld e, $15
    dec d
    ld de, $7808
    jr nc, @+$13

    adc d

jr_00C_5462:
    ld [hl], a
    db $10
    ld de, $77A2
    ld h, b
    ld de, $778A
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77CA
    db $10
    ld de, $778A
    sbc d
    ld de, $77DE
    db $10
    ld de, $778A
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45
    ld e, $15
    dec d
    ld de, $77CA
    db $10
    ld de, $778A
    sbc d
    ld de, $77DE
    db $10
    ld de, $778A
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77B6
    db $10
    ld de, $778A
    sbc d
    ld de, $77A2
    db $10

jr_00C_54AB:
    ld de, $778A
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l
    ld e, $15
    dec d
    ld de, $77B6
    db $10
    ld de, $778A
    sbc d

jr_00C_54C0:
    ld de, $77A2
    db $10
    ld de, $778A
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77DE
    db $10
    ld de, $778A
    sbc d
    ld de, $77CA
    db $10
    ld de, $778A
    nop
    nop
    or l
    add hl, hl
    and b
    ei
    ld b, l
    ld e, $15
    dec d
    ld de, $77DE
    db $10
    ld de, $778A
    sbc d
    ld de, $77CA
    db $10
    ld de, $778A
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77F2
    jr nz, @+$13

    ld e, $78
    db $10
    ld de, $778A
    nop
    nop
    or l
    jr z, jr_00C_54AB

    rst $28
    ld b, l
    ld e, $15
    dec d
    ld de, $7834
    db $10
    ld de, $7808
    jr nz, jr_00C_552A

    adc d
    ld [hl], a
    nop
    nop
    or l
    jr z, jr_00C_54C0

    rst $30
    ld b, l
    ld e, $15
    dec d
    ld de, $7808
    jr nc, jr_00C_553B

jr_00C_552A:
    adc d
    ld [hl], a
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77A2
    db $10
    ld de, $77F2
    jr z, jr_00C_554C

jr_00C_553B:
    adc d
    ld [hl], a
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $7834
    jr jr_00C_5559

    adc d
    ld [hl], a
    nop
    nop

jr_00C_554C:
    ld b, l
    ld e, $15
    dec d
    ld de, $781E
    jr jr_00C_5566

    adc d
    ld [hl], a
    nop
    nop

jr_00C_5559:
    or l
    jr z, @-$5E

    rst $18
    ld b, l
    ld e, $15
    dec d
    ld de, $7808
    jr jr_00C_5577

jr_00C_5566:
    adc d
    ld [hl], a
    nop
    nop
    ld b, l
    ld e, $15
    dec d
    ld de, $77F2
    jr @+$13

    adc d
    ld [hl], a
    nop

jr_00C_5576:
    nop

jr_00C_5577:
    ld b, l
    ld e, $15
    dec d
    ld de, $7834
    jr jr_00C_5591

    ld [$1878], sp
    ld de, $781E
    db $10
    ld de, $778A
    db $10
    ld de, $7834
    jr nz, jr_00C_55A1

    adc d

jr_00C_5591:
    ld [hl], a
    db $10
    ld de, $781E
    db $10
    ld de, $77F2
    jr @+$13

    ld e, $78
    jr @+$13

    adc d

jr_00C_55A1:
    ld [hl], a
    nop
    nop
    or l
    jr z, @-$5E

    cp a
    ld b, l
    ld e, $15
    dec d
    ld de, $7808
    ld [$8A11], sp
    ld [hl], a
    ld bc, $3411
    ld a, b
    ld [$8A11], sp
    ld [hl], a
    ld bc, $F211
    ld [hl], a
    ld [$8A11], sp
    ld [hl], a
    ld bc, $1E11
    ld a, b
    ld [$8A11], sp
    ld [hl], a
    nop
    nop
    or l
    jr z, @-$5E

    ld a, a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_5576

    ld [bc], a
    inc c
    db $E3
    ld d, l
    add hl, bc
    inc b
    inc c
    rla
    ld d, h
    or [hl]
    jr z, @-$5E

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    inc c
    ld a, [$0955]
    ld b, $0C
    ld e, c
    ld d, h
    add hl, bc
    dec b
    inc c
    jr nc, jr_00C_564A

    or [hl]
    jr z, @-$5E

    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $1E0C
    ld d, [hl]
    add hl, bc
    rlca
    inc c
    ld l, [hl]
    ld d, h
    add hl, bc
    ld [$B50C], sp
    ld d, h
    add hl, bc
    add hl, bc
    inc c
    db $E3
    ld d, h
    or [hl]
    add hl, hl
    and b
    ld bc, $29B6
    and b
    ld [bc], a
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    inc c
    ld b, d
    ld d, [hl]
    add hl, bc
    ld [$9C0C], sp
    ld d, h
    add hl, bc
    rlca
    inc c
    add a
    ld d, h
    add hl, bc
    add hl, bc
    inc c
    db $E3
    ld d, h
    or [hl]
    add hl, hl
    and b
    ld bc, $29B6
    and b
    ld [bc], a
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    inc b
    inc c
    ld h, [hl]

jr_00C_564A:
    ld d, [hl]
    add hl, bc
    add hl, bc
    inc c
    jp z, $0954

    rlca
    inc c
    add a
    ld d, h
    add hl, bc
    ld [$B50C], sp
    ld d, h
    or [hl]
    add hl, hl
    and b
    ld bc, $29B6
    and b
    ld [bc], a
    or [hl]
    add hl, hl
    and b
    inc b
    ld b, l
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    inc b
    dec b
    nop
    inc c
    adc c
    ld d, [hl]
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    ld [bc], a
    dec b
    nop
    inc c
    adc c
    ld d, [hl]
    ld b, [hl]
    rrca
    nop
    add hl, hl
    and b
    ld bc, $0005
    inc c
    adc c
    ld d, [hl]
    ld b, l
    add d
    db $FD
    ret nc

    ld bc, $5102
    db $DD
    dec [hl]
    ld de, $29B5
    and b
    cp $45
    ld e, l
    inc c
    sbc h
    ld d, [hl]
    ld b, l
    inc c
    inc b
    inc c
    dec b
    inc c
    ld b, $0C
    rlca
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    sub $DB
    cpl
    ld d, $43
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    sub [hl]
    db $DB
    ld l, $16
    ld b, e
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    ld d, [hl]
    db $DB
    dec l
    ld d, $43
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    ld d, $DB
    inc l
    ld d, $43
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    sub $DA
    dec hl
    ld d, $43
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    sub [hl]
    jp c, $162A

    ld b, e
    ld bc, $B682
    ret nc

    inc bc
    ld [bc], a

jr_00C_56EB:
    ld d, [hl]
    jp c, $1629

    add d
    or $D0
    ld bc, $D501
    reti


    daa
    dec d
    ld b, e
    ld [bc], a
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    ld d, $DA

jr_00C_5701:
    jr z, jr_00C_5719

    add d
    or $D0
    ld bc, $9501
    reti


    ld h, $15
    add d
    or $D0
    ld bc, $D901
    reti


    daa
    add hl, de
    ld b, e
    ld [bc], a
    add d

jr_00C_5718:
    or [hl]

jr_00C_5719:
    ret nc

    inc bc
    ld [bc], a
    sub $D9

jr_00C_571E:
    daa
    ld d, $82
    or $D0
    ld bc, $5501
    reti


    dec h
    dec d
    add d
    or $D0
    ld bc, $9901
    reti


    ld h, $19
    ld b, e
    ld [bc], a

jr_00C_5734:
    add d
    or [hl]
    ret nc

    inc bc
    ld [bc], a
    sub [hl]

jr_00C_573A:
    reti


    ld h, $16
    add d
    or $D0
    ld bc, $5901
    reti


    dec h
    add hl, de

jr_00C_5746:
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_56EB

    ld [$620C], sp
    ld d, a
    add hl, bc
    ld a, [bc]
    inc c
    ld hl, sp+$54
    add hl, bc
    dec bc
    inc c
    ld [hl+], a

jr_00C_5758:
    ld d, l
    add hl, bc
    ld [de], a
    inc c
    ld b, b
    ld d, l
    or [hl]
    jr z, jr_00C_5701

    ld [$4645], sp
    nop
    jr z, @-$5E

    db $10
    inc c
    ld a, c
    ld d, a
    add hl, bc
    inc de
    inc c
    ld e, [hl]
    ld d, l
    add hl, bc
    ld [de], a
    inc c
    ld c, l
    ld d, l
    or [hl]
    jr z, jr_00C_5718

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_571E

    jr nz, jr_00C_578C

    sub l
    ld d, a
    add hl, bc
    inc de
    inc c
    ld l, e
    ld d, l
    add hl, bc
    dec bc
    inc c
    cpl
    ld d, l

jr_00C_578C:
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld d, l
    or [hl]
    jr z, jr_00C_5734

    jr nz, @+$47

    ld b, [hl]
    nop
    jr z, jr_00C_573A

    ld b, b
    inc c
    and a
    ld d, a
    add hl, bc
    inc d
    inc c
    ld a, b
    ld d, l
    or [hl]
    jr z, jr_00C_5746

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    add b
    inc c
    cp c
    ld d, a
    add hl, bc
    dec d
    inc c
    xor c
    ld d, l
    or [hl]
    jr z, jr_00C_5758

    add b
    ld b, l
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_582E

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_00C_5823

    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    inc c
    dec d
    ld e, b
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_585E

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5868

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_5856

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [bc], a
    dec b
    nop
    inc c
    ld d, c
    ld e, b
    and c
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    ld c, b
    inc c
    call nc, $A64A
    ld c, c
    ld [hl], h
    jr nz, jr_00C_588E

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5898

    ld l, a
    ld [hl], l
    rst $38
    ld l, l

jr_00C_5823:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_589C

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_585F

    dec [hl]

jr_00C_582E:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [bc], a
    dec b
    nop
    inc c
    ld d, c
    ld e, b
    and c
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    ld c, b
    inc c
    call nc, Call_00C_464A
    inc de
    ld bc, $A132

jr_00C_5856:
    ld bc, $A17E
    inc c
    ret nc

    ld e, b
    sbc a
    ld a, [hl]

jr_00C_585E:
    and c

jr_00C_585F:
    ld b, [hl]
    rrca
    ld bc, $A17E
    dec b
    ld bc, $960C

jr_00C_5868:
    ld e, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_58D2

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_58EB

    ld [hl], e
    cp $FC
    jr nz, jr_00C_58E8

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_588E:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    call nc, $A64A
    ld d, h

jr_00C_5898:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_589C:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_58FC

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_592A

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    call nc, $9F4A
    ld a, [hl]

jr_00C_58D2:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_594E

    ld h, c
    halt

jr_00C_58E8:
    ld h, l
    jr nz, jr_00C_595E

jr_00C_58EB:
    ld h, l
    ld [hl], h
    jr nz, jr_00C_5950

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_594D

    ld h, e
    ld l, a

jr_00C_58FC:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00C_5975

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5966

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00C_5980

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_592A:
    xor l
    ld a, [hl]
    and c
    ld bc, $A132
    and c
    ld c, b
    inc c
    call nc, $1E4A
    dec b
    dec b
    nop
    ld hl, sp+$4A
    inc c
    jr c, @+$0E

    sbc $00
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    add c
    adc c
    pop bc
    ld [$0007], sp
    inc [hl]

jr_00C_594D:
    ld h, e

jr_00C_594E:
    add hl, bc
    nop

jr_00C_5950:
    inc d
    and c
    ld e, l
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $A30C
    ld e, c
    inc c
    inc b

jr_00C_595E:
    dec b
    inc b
    add a
    ld h, a
    ld c, $24
    ld c, $D9

jr_00C_5966:
    inc c
    ld de, $793A
    inc c
    and h
    ld e, c
    dec bc
    inc b
    inc c
    dec b
    dec b
    dec b
    add a
    ld h, a

jr_00C_5975:
    dec c
    ld hl, $D84D
    inc c
    ld de, $793A
    inc c
    and h
    ld e, c

jr_00C_5980:
    ld b, [hl]
    ld de, $CB01
    ret


    dec b
    nop
    inc c
    adc h
    ld e, c
    dec bc
    dec b
    inc c
    ld b, $05
    ld b, $87
    ld h, a
    dec c
    inc e
    dec c
    rst $10
    inc c
    ld de, $793A
    inc c
    and h
    ld e, c
    dec bc
    ld b, $B6
    add hl, hl
    and b
    ld bc, $1445
    ld de, $793A
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ld c, b
    ld e, d
    inc c
    ld bc, $5700
    ld e, d
    inc c
    ld [bc], a
    nop
    ld h, a
    ld e, d
    inc c
    inc bc
    nop
    ld [hl], a
    ld e, d
    rst $38
    ld c, b
    inc c
    bit 3, d
    inc d
    ld de, $794E
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ld c, b
    ld e, d
    inc c
    ld bc, $5700
    ld e, d
    inc c
    ld [bc], a
    nop
    ld h, a
    ld e, d
    inc c
    inc bc
    nop
    ld [hl], a
    ld e, d
    rst $38
    ld c, b
    inc c
    bit 3, d
    inc d
    ld de, $7944
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    bit 3, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ld c, b
    ld e, d
    inc c
    ld bc, $5700
    ld e, d
    inc c
    ld [bc], a
    nop
    ld h, a
    ld e, d
    inc c
    inc bc
    nop
    ld [hl], a
    ld e, d
    rst $38
    ld c, b
    inc c
    bit 3, d
    inc d
    ld de, $7958
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    bit 3, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ld c, b
    ld e, d
    inc c
    ld bc, $5700
    ld e, d
    inc c
    ld [bc], a
    nop
    ld h, a
    ld e, d
    inc c
    inc bc
    nop
    ld [hl], a
    ld e, d
    rst $38
    ld c, b
    inc c
    bit 3, d
    dec e
    inc c
    ld c, l
    ld e, d
    ld [de], a
    dec d
    ld de, $7A61
    inc b
    nop
    ld c, b
    inc c
    cp d
    ld e, d
    dec e
    inc c
    ld e, h
    ld e, d
    ld [de], a
    dec d
    ld de, $7A2E
    inc b
    nop
    ld c, b
    inc c
    sbc b
    ld e, d
    ld b, l
    dec e
    inc c
    ld l, h
    ld e, d
    ld [de], a
    dec d
    ld de, $7A50
    inc b
    nop
    ld c, b
    inc c
    xor c
    ld e, d
    ld b, l
    dec e
    inc c
    ld a, h
    ld e, d
    ld [de], a
    dec d
    ld de, $7A3F
    inc b
    nop
    ld c, b
    inc c
    add a
    ld e, d
    ld b, l
    dec e
    inc c
    adc h
    ld e, d
    ld [de], a
    inc d
    ld de, $794E
    inc de
    add a
    ld h, a
    inc e
    inc c
    call $4559
    dec e
    inc c
    sbc l
    ld e, d
    ld [de], a
    inc d
    ld de, $7944
    inc de
    add a
    ld h, a
    inc e
    inc c
    or $59
    ld b, l
    dec e
    inc c
    xor [hl]
    ld e, d
    ld [de], a
    inc d
    ld de, $7958
    inc de
    add a
    ld h, a
    inc e
    inc c
    rra
    ld e, d
    ld b, l
    dec e
    inc c
    cp a
    ld e, d
    ld [de], a
    inc d
    ld de, $793A
    inc de
    add a
    ld h, a
    inc e
    inc c
    and h
    ld e, c
    ld b, l
    or e
    ld sp, $01C7
    inc c
    nop
    inc d
    ld de, $793A
    ld c, b
    inc c
    ld [hl], c
    ld d, d
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ld l, l
    ld d, c
    inc de
    ld h, a
    xor b
    ld b, a
    dec b
    nop
    inc [hl]
    ld h, e
    rlca
    ld [$D087], sp
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    pop hl
    ld [hl], b
    add hl, bc
    ld b, $69
    ret nc

    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec b
    inc b
    pop hl
    ld [hl], b
    dec c
    dec b
    ld e, l
    ret nc

    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec b
    dec b
    pop hl
    ld [hl], b
    ld b, $03
    ld [hl], $D0
    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec b
    ld b, $E1
    ld [hl], b
    dec c
    ld [bc], a
    dec l
    ret nc

    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec b
    rlca
    pop hl

jr_00C_5B3F:
    ld [hl], b
    dec c
    ld bc, $D01D
    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h

jr_00C_5B4B:
    dec b
    ld [$70E1], sp

jr_00C_5B4F:
    ld b, $05
    ld d, [hl]
    ret nc

jr_00C_5B53:
    nop
    ld de, $75F4

jr_00C_5B57:
    inc c
    rrca
    ld e, h
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld bc, $6106
    ret nc

    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b
    ld bc, $7107
    ret nc

    nop
    ld de, $75F4
    inc c
    rrca
    ld e, h
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_00C_5B3F

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_00C_5B4B

    rst $28
    or l
    jr z, jr_00C_5B4F

    rst $18
    or l
    jr z, jr_00C_5B53

    cp a
    or l
    jr z, jr_00C_5B57

    ld a, a
    sbc e
    inc c
    cp l
    ld e, e
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00C_5C1E

    ld h, l
    ld [hl], e
    ld [hl], h

jr_00C_5BCF:
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00C_5C1A

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    inc c
    ld [hl], a
    ld d, d
    inc c
    rst $38
    ld c, d
    ld b, l
    or e
    ld sp, $01C7

jr_00C_5BE6:
    inc d
    add hl, de
    rst $20
    ld b, [hl]
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0C
    db $FD
    ld e, e
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_00C_5C0E

    ld a, d
    jr nz, @+$7A

    ld c, b
    inc c
    db $DD

jr_00C_5C0E:
    ld e, d
    ld c, e
    add hl, bc
    nop
    inc c
    ld [c], a

jr_00C_5C14:
    ld e, e
    inc d
    ld de, $75F4
    ld b, l

jr_00C_5C1A:
    dec d
    ld de, $76C3

jr_00C_5C1E:
    jr jr_00C_5C31

    db $F4
    ld [hl], l
    jr jr_00C_5C35

    sbc h
    halt
    jr jr_00C_5C39

    db $F4
    ld [hl], l
    nop

jr_00C_5C2B:
    nop
    or l
    jr z, jr_00C_5BCF

    cp $45

jr_00C_5C31:
    dec d
    ld de, $764E

jr_00C_5C35:
    jr jr_00C_5C48

    db $F4
    ld [hl], l

jr_00C_5C39:
    jr jr_00C_5C4C

    ld [hl], l
    halt
    jr jr_00C_5C50

    db $F4
    ld [hl], l
    nop

jr_00C_5C42:
    nop
    or l
    jr z, jr_00C_5BE6

    cp $45

jr_00C_5C48:
    dec d
    ld de, $7675

jr_00C_5C4C:
    jr jr_00C_5C5F

    db $F4
    ld [hl], l

jr_00C_5C50:
    jr jr_00C_5C63

    ld c, [hl]
    halt
    jr jr_00C_5C67

    db $F4
    ld [hl], l
    nop

jr_00C_5C59:
    nop
    or l
    jr z, @-$5E

    db $FD
    ld b, l

jr_00C_5C5F:
    dec d
    ld de, $764E

jr_00C_5C63:
    jr nc, jr_00C_5C76

    db $F4
    ld [hl], l

jr_00C_5C67:
    jr jr_00C_5C7A

    ld [hl], l
    halt
    jr nc, jr_00C_5C7E

    db $F4
    ld [hl], l
    nop

jr_00C_5C70:
    nop
    or l
    jr z, jr_00C_5C14

    ei
    ld b, l

jr_00C_5C76:
    dec d
    ld de, $7675

jr_00C_5C7A:
    jr nc, jr_00C_5C8D

    db $F4
    ld [hl], l

jr_00C_5C7E:
    jr jr_00C_5C91

    ld c, [hl]
    halt
    jr nc, jr_00C_5C95

    db $F4
    ld [hl], l
    nop

jr_00C_5C87:
    nop
    or l
    jr z, jr_00C_5C2B

    rst $30
    ld b, l

jr_00C_5C8D:
    dec d
    ld de, $7675

jr_00C_5C91:
    ld c, b
    ld de, $75F4

jr_00C_5C95:
    jr jr_00C_5CA8

    ld c, [hl]
    halt

jr_00C_5C99:
    ld c, b
    ld de, $75F4
    nop
    nop

jr_00C_5C9F:
    or l
    jr z, jr_00C_5C42

    rst $28
    ld b, l
    dec d
    ld de, $7675

jr_00C_5CA8:
    db $10
    ld de, $75F4
    jr jr_00C_5CBF

    ld c, [hl]
    halt
    db $10

jr_00C_5CB1:
    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_00C_5C59

    rst $18
    ld b, l
    dec d
    ld de, $764E

jr_00C_5CBF:
    jr nz, jr_00C_5CD2

    db $F4
    ld [hl], l

jr_00C_5CC3:
    jr jr_00C_5CD6

    ld [hl], l
    halt
    jr nz, jr_00C_5CDA

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_00C_5C70

    cp a
    ld b, l

jr_00C_5CD2:
    dec d
    ld de, $764E

jr_00C_5CD6:
    jr nz, jr_00C_5CE9

    db $F4
    ld [hl], l

jr_00C_5CDA:
    jr jr_00C_5CED

    ld [hl], l
    halt
    jr nz, jr_00C_5CF1

    db $F4

jr_00C_5CE1:
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_00C_5C87

jr_00C_5CE7:
    ld a, a
    ld b, l

jr_00C_5CE9:
    ld b, [hl]
    nop
    jr z, jr_00C_5C8D

jr_00C_5CED:
    ld bc, $FA0C
    ld e, h

jr_00C_5CF1:
    add hl, bc
    inc bc

jr_00C_5CF3:
    inc c
    ld a, [de]
    ld e, h
    or [hl]
    jr z, jr_00C_5C99

jr_00C_5CF9:
    ld bc, $4645
    nop
    jr z, jr_00C_5C9F

    ld bc, $0C0C
    ld e, l
    add hl, bc
    inc bc

jr_00C_5D05:
    inc c
    ld sp, $B65C
    jr z, @-$5E

jr_00C_5D0B:
    ld bc, $4645
    nop
    jr z, jr_00C_5CB1

    ld [bc], a
    inc c
    ld e, $5D
    add hl, bc
    inc b

jr_00C_5D17:
    inc c
    ld c, b
    ld e, h
    or [hl]
    jr z, @-$5E

jr_00C_5D1D:
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_5CC3

    inc b
    inc c
    jr nc, jr_00C_5D84

    add hl, bc
    dec b

jr_00C_5D29:
    inc c
    ld e, a
    ld e, h
    or [hl]
    jr z, @-$5E

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$420C], sp
    ld e, l
    add hl, bc
    ld b, $0C
    halt
    ld e, h
    or [hl]
    jr z, jr_00C_5CE1

    ld [$4645], sp
    nop
    jr z, jr_00C_5CE7

    db $10
    inc c
    ld d, h
    ld e, l
    add hl, bc
    rlca
    inc c
    adc l
    ld e, h
    or [hl]
    jr z, jr_00C_5CF3

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_5CF9

    jr nz, jr_00C_5D67

    ld h, [hl]
    ld e, l
    add hl, bc
    ld [$A40C], sp
    ld e, h
    or [hl]
    jr z, jr_00C_5D05

    jr nz, @+$47

jr_00C_5D67:
    ld b, [hl]
    nop
    jr z, jr_00C_5D0B

    ld b, b
    inc c
    ld a, b
    ld e, l
    add hl, bc
    add hl, bc
    inc c
    cp e
    ld e, h
    or [hl]
    jr z, jr_00C_5D17

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_5D1D

    add b
    inc c
    adc d
    ld e, l
    add hl, bc
    ld a, [bc]
    inc c

jr_00C_5D84:
    jp nc, $B65C

    jr z, jr_00C_5D29

    add b
    ld b, l
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_5DFF

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00C_5E08

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    inc c
    and $5D
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5E2F

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5E39

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_5E27

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    inc b
    dec b
    nop
    inc c
    ld [hl+], a
    ld e, [hl]
    and c
    xor l
    ld a, a
    and c
    ld bc, $A132
    ld c, b
    inc c
    ei
    ld c, d
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_5E5F

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_5E69

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_5E6D

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_5E30

    dec [hl]

jr_00C_5DFF:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00C_5E08:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    inc b
    dec b
    nop
    inc c
    ld [hl+], a
    ld e, [hl]
    and c
    xor l
    ld a, a
    and c
    ld bc, $A132
    ld c, b
    inc c
    ei
    ld c, d
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00C_5E27:
    ld bc, $A17F
    inc c
    and c
    ld e, [hl]
    sbc a
    ld a, a

jr_00C_5E2F:
    and c

jr_00C_5E30:
    ld b, [hl]
    rrca
    ld bc, $A17F
    dec b
    ld bc, $670C

jr_00C_5E39:
    ld e, [hl]
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_5EA3

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5EA0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_5EBC

    ld [hl], e
    cp $FC
    jr nz, jr_00C_5EB9

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_5E5F:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    ei
    ld c, d
    and [hl]
    ld d, h

jr_00C_5E69:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_5E6D:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5ECD

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_5EFB

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    ei

jr_00C_5EA0:
    ld c, d
    sbc a
    ld a, a

jr_00C_5EA3:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00C_5F10

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_5F1F

    ld h, c
    halt

jr_00C_5EB9:
    ld h, l
    jr nz, jr_00C_5F2F

jr_00C_5EBC:
    ld h, l
    ld [hl], h
    jr nz, jr_00C_5F21

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, @+$4A

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_5F1E

    ld h, e
    ld l, a

jr_00C_5ECD:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, @+$72

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_5F61

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00C_5F51

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_5EFB:
    xor l
    ld a, a
    and c
    ld bc, $A132
    and c
    ld c, b
    inc c
    ei
    ld c, d
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e

jr_00C_5F10:
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    adc e
    ld d, c
    inc de
    ld h, a
    pop de
    ld b, a

jr_00C_5F1E:
    dec b

jr_00C_5F1F:
    nop
    inc [hl]

jr_00C_5F21:
    ld h, e
    inc b
    dec b
    ld [hl], a
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc

jr_00C_5F2F:
    pop hl
    ld [hl], b
    ld b, $03
    ld c, e
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    inc b
    pop hl
    ld [hl], b
    ld [bc], a
    ld [$D0BA], sp
    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    dec b
    pop hl
    ld [hl], b
    dec bc
    dec c

jr_00C_5F51:
    ld [hl], $D1
    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    ld b, $E1
    ld [hl], b
    dec c
    ld c, $4F

jr_00C_5F61:
    pop de
    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    rlca
    pop hl
    ld [hl], b
    dec bc
    ld b, $95
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    ld [$70E1], sp
    inc c
    inc b
    ld l, b
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    add hl, bc
    pop hl
    ld [hl], b
    ld c, $05
    add c

jr_00C_5F8E:
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b

jr_00C_5F96:
    dec b
    ld a, [bc]
    pop hl
    ld [hl], b

jr_00C_5F9A:
    inc de
    ld a, [bc]
    ld sp, hl
    ret nc

jr_00C_5F9E:
    nop
    ld de, $75F4

jr_00C_5FA2:
    inc c
    ld h, [hl]
    ld h, b
    dec b

jr_00C_5FA6:
    dec bc
    pop hl
    ld [hl], b
    ld [de], a
    ld b, $9C
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec b
    ld [de], a
    pop hl
    ld [hl], b
    inc d
    inc b
    ld [hl], b
    ret nc

    nop
    ld de, $75F4
    inc c
    ld h, [hl]
    ld h, b
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [de], a
    ld l, [hl]
    jr nz, @+$1B

    ldh [rSCX], a
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_00C_5F8E

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_00C_5F96

    rst $30
    or l
    jr z, jr_00C_5F9A

    rst $28
    or l
    jr z, jr_00C_5F9E

    rst $18
    or l
    jr z, jr_00C_5FA2

    cp a
    or l
    jr z, jr_00C_5FA6

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    sbc e
    inc c
    inc d
    ld h, b
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, jr_00C_6075

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38

jr_00C_602A:
    jr nz, jr_00C_6071

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    inc c
    add hl, sp
    ld h, b
    inc c
    add hl, de
    ld c, e
    ld b, l
    or e
    ld sp, $01C7
    inc d
    add hl, de
    rst $20
    ld b, [hl]

jr_00C_6041:
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0C
    ld d, h
    ld h, b
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10

jr_00C_6058:
    ld [hl], d
    rrca
    nop
    nop
    ld a, d
    jr nz, jr_00C_6065

    ld a, d
    jr nz, @+$7A

    ld c, b
    inc c
    ld a, [bc]

jr_00C_6065:
    ld e, a
    or e
    ld sp, $01C7
    ld c, e
    add hl, bc
    nop
    inc c
    add hl, sp

jr_00C_606F:
    ld h, b
    inc d

jr_00C_6071:
    ld de, $75F4
    ld b, l

jr_00C_6075:
    dec d
    ld de, $7675
    jr z, jr_00C_608C

    db $F4
    ld [hl], l
    jr jr_00C_6090

    ld c, [hl]
    halt
    jr z, jr_00C_6094

    db $F4
    ld [hl], l
    nop

jr_00C_6086:
    nop
    or l
    jr z, jr_00C_602A

    cp $45

jr_00C_608C:
    dec d
    ld de, $76C3

jr_00C_6090:
    jr jr_00C_60A3

    db $F4
    ld [hl], l

jr_00C_6094:
    jr jr_00C_60A7

    sbc h
    halt
    jr jr_00C_60AB

    db $F4
    ld [hl], l
    nop

jr_00C_609D:
    nop
    or l
    jr z, jr_00C_6041

    cp $45

jr_00C_60A3:
    dec d
    ld de, $764E

jr_00C_60A7:
    jr z, jr_00C_60BA

    db $F4
    ld [hl], l

jr_00C_60AB:
    jr jr_00C_60BE

    ld [hl], l
    halt
    jr z, jr_00C_60C2

    db $F4
    ld [hl], l
    nop

jr_00C_60B4:
    nop
    or l
    jr z, jr_00C_6058

    db $FD
    ld b, l

jr_00C_60BA:
    dec d
    ld de, $769C

jr_00C_60BE:
    jr z, jr_00C_60D1

    db $F4
    ld [hl], l

jr_00C_60C2:
    jr jr_00C_60D5

    jp $2876


    ld de, $75F4
    nop

jr_00C_60CB:
    nop
    or l
    jr z, jr_00C_606F

    db $FD
    ld b, l

jr_00C_60D1:
    dec d
    ld de, $769C

jr_00C_60D5:
    ld [$F411], sp
    ld [hl], l
    jr jr_00C_60EC

    jp $0876


    ld de, $75F4
    nop

jr_00C_60E2:
    nop
    or l
    jr z, jr_00C_6086

    ei
    ld b, l
    dec d
    ld de, $76C3

jr_00C_60EC:
    jr jr_00C_60FF

    db $F4
    ld [hl], l
    jr jr_00C_6103

    sbc h
    halt
    jr jr_00C_6107

    db $F4
    ld [hl], l
    nop

jr_00C_60F9:
    nop
    or l
    jr z, jr_00C_609D

    ei
    ld b, l

jr_00C_60FF:
    dec d
    ld de, $7675

jr_00C_6103:
    jr z, jr_00C_6116

    db $F4
    ld [hl], l

jr_00C_6107:
    jr jr_00C_611A

    ld c, [hl]
    halt
    jr z, jr_00C_611E

    db $F4
    ld [hl], l
    nop

jr_00C_6110:
    nop
    or l
    jr z, jr_00C_60B4

    rst $30
    ld b, l

jr_00C_6116:
    dec d
    ld de, $769C

jr_00C_611A:
    ld [$F411], sp
    ld [hl], l

jr_00C_611E:
    jr jr_00C_6131

    jp $0876


    ld de, $75F4
    nop

jr_00C_6127:
    nop
    or l
    jr z, jr_00C_60CB

    rst $28
    ld b, l
    dec d
    ld de, $7675

jr_00C_6131:
    jr jr_00C_6144

    db $F4
    ld [hl], l
    jr jr_00C_6148

    ld c, [hl]
    halt
    jr jr_00C_614C

    db $F4
    ld [hl], l
    nop

jr_00C_613E:
    nop
    or l
    jr z, jr_00C_60E2

    rst $28
    ld b, l

jr_00C_6144:
    dec d
    ld de, $764E

jr_00C_6148:
    jr jr_00C_615B

    db $F4
    ld [hl], l

jr_00C_614C:
    jr jr_00C_615F

    ld [hl], l
    halt
    jr jr_00C_6163

    db $F4
    ld [hl], l
    nop

jr_00C_6155:
    nop
    or l
    jr z, jr_00C_60F9

    rst $28
    ld b, l

jr_00C_615B:
    dec d
    ld de, $76C3

jr_00C_615F:
    jr z, jr_00C_6172

    db $F4
    ld [hl], l

jr_00C_6163:
    jr jr_00C_6176

    sbc h
    halt
    jr z, jr_00C_617A

    db $F4
    ld [hl], l
    nop

jr_00C_616C:
    nop
    or l
    jr z, jr_00C_6110

    rst $18
    ld b, l

jr_00C_6172:
    dec d
    ld de, $7675

jr_00C_6176:
    jr z, jr_00C_6189

    db $F4
    ld [hl], l

jr_00C_617A:
    jr jr_00C_618D

    ld c, [hl]
    halt
    jr z, jr_00C_6191

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_00C_6127

    cp a
    ld b, l

jr_00C_6189:
    dec d
    ld de, $76C3

jr_00C_618D:
    jr nz, jr_00C_61A0

    db $F4
    ld [hl], l

jr_00C_6191:
    jr jr_00C_61A4

    sbc h
    halt
    jr nz, jr_00C_61A8

    db $F4
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_00C_613E

    cp a
    ld b, l

jr_00C_61A0:
    dec d
    ld de, $769C

jr_00C_61A4:
    jr nc, jr_00C_61B7

    db $F4
    ld [hl], l

jr_00C_61A8:
    jr jr_00C_61BB

    jp $3076


    ld de, $75F4
    nop
    nop
    or l
    jr z, jr_00C_6155

    ld a, a
    ld b, l

jr_00C_61B7:
    dec d
    ld de, $764E

jr_00C_61BB:
    ld [$F411], sp
    ld [hl], l
    jr jr_00C_61D2

    ld [hl], l
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    jr z, jr_00C_616C

    ld a, a
    ld b, l
    dec d
    ld de, $7675

jr_00C_61D2:
    ld [$F411], sp
    ld [hl], l
    jr jr_00C_61E9

    ld c, [hl]
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45
    dec d
    ld de, $76C3

jr_00C_61E9:
    db $10
    ld de, $75F4
    jr jr_00C_6200

    sbc h
    halt
    db $10
    ld de, $75F4
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45
    dec d
    ld de, $764E

jr_00C_6200:
    jr jr_00C_6213

    db $F4
    ld [hl], l
    jr jr_00C_6217

    ld [hl], l
    halt
    jr jr_00C_621B

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    cp $45

jr_00C_6213:
    dec d
    ld de, $76C3

jr_00C_6217:
    jr nc, jr_00C_622A

    db $F4
    ld [hl], l

jr_00C_621B:
    jr jr_00C_622E

    sbc h
    halt
    jr nc, jr_00C_6232

    db $F4
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l

jr_00C_622A:
    dec d
    ld de, $7675

jr_00C_622E:
    ld [$F411], sp
    ld [hl], l

jr_00C_6232:
    jr @+$13

    ld c, [hl]
    halt
    ld [$F411], sp
    ld [hl], l
    nop
    nop
    or l
    add hl, hl
    and b
    db $FD
    ld b, l
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_62B5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00C_62BE

    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    inc c
    sbc h
    ld h, d
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_62E5

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_62EF

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_62DD

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [$0005], sp
    inc c
    ret c

    ld h, d
    and c
    xor l
    add b
    and c
    ld bc, $A132
    ld c, b
    inc c
    ld b, $4B
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_6315

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_631F

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_6323

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_62E6

    dec [hl]

jr_00C_62B5:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00C_62BE:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    ld [$0005], sp
    inc c
    ret c

    ld h, d
    and c
    xor l
    add b
    and c
    ld bc, $A132
    ld c, b
    inc c
    ld b, $4B
    ld b, [hl]
    inc de
    ld bc, $A132

jr_00C_62DD:
    ld bc, $A180
    inc c
    ld d, a
    ld h, e
    sbc a
    add b

jr_00C_62E5:
    and c

jr_00C_62E6:
    ld b, [hl]
    rrca
    ld bc, $A180
    dec b
    ld bc, $1D0C

jr_00C_62EF:
    ld h, e
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_6359

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_6372

    ld [hl], e
    cp $FC
    jr nz, jr_00C_636F

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_6315:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    ld b, $4B
    and [hl]
    ld d, h

jr_00C_631F:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_6323:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_6383

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_63B1

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    ld b, $4B
    sbc a
    add b

jr_00C_6359:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_00C_6360:
    jr nz, jr_00C_63C6

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_63D5

    ld h, c
    halt

jr_00C_636F:
    ld h, l
    jr nz, jr_00C_63E5

jr_00C_6372:
    ld h, l
    ld [hl], h
    jr nz, jr_00C_63D7

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00C_63C4

    ld l, c
    ld h, a

jr_00C_637E:
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a

jr_00C_6383:
    ld [hl], d

jr_00C_6384:
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00C_63FC

    ld [hl], d
    ld h, l
    halt
    ld l, c

jr_00C_6390:
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b

jr_00C_6395:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_63ED

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_6417

    ld h, c

jr_00C_63A1:
    ld [hl], e
    cp $FC
    jr nz, jr_00C_6407

    ld [hl], h

jr_00C_63A7:
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_63B1:
    xor l
    add b

jr_00C_63B3:
    and c
    ld bc, $A132
    and c
    ld c, b

jr_00C_63B9:
    inc c
    ld b, $4B
    ld b, [hl]
    nop
    jr z, jr_00C_6360

    ld bc, $CD0C
    ld h, e

jr_00C_63C4:
    add hl, bc

jr_00C_63C5:
    inc bc

jr_00C_63C6:
    inc c
    ld [hl], l
    ld h, b
    or [hl]
    jr z, @-$5E

    ld bc, $4645
    nop
    jr z, jr_00C_6372

    ld bc, $DF0C

jr_00C_63D5:
    ld h, e
    add hl, bc

jr_00C_63D7:
    inc bc
    inc c
    adc h
    ld h, b
    or [hl]
    jr z, jr_00C_637E

    ld bc, $4645
    nop
    jr z, jr_00C_6384

    ld [bc], a

jr_00C_63E5:
    inc c
    pop af
    ld h, e
    add hl, bc

jr_00C_63E9:
    inc b
    inc c
    cp d
    ld h, b

jr_00C_63ED:
    or [hl]

jr_00C_63EE:
    jr z, jr_00C_6390

    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_00C_6395

    ld bc, $020C
    ld h, h
    add hl, bc

jr_00C_63FA:
    inc bc
    inc c

jr_00C_63FC:
    ld [hl], l
    ld h, b
    or [hl]
    jr z, jr_00C_63A1

    ld bc, $4645
    nop
    jr z, jr_00C_63A7

jr_00C_6407:
    ld [bc], a
    inc c
    inc d
    ld h, h
    add hl, bc

jr_00C_640C:
    inc b
    inc c
    cp d
    ld h, b
    or [hl]
    jr z, jr_00C_63B3

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop

jr_00C_6417:
    jr z, jr_00C_63B9

    ld [bc], a
    inc c
    ld h, $64
    add hl, bc

jr_00C_641E:
    inc b
    inc c
    and e
    ld h, b
    or [hl]
    jr z, jr_00C_63C5

    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    inc c
    jr c, jr_00C_6493

    add hl, bc

jr_00C_6430:
    dec b
    inc c
    add sp, $60
    or [hl]
    jr z, jr_00C_63D7

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$4A0C], sp
    ld h, h
    add hl, bc

jr_00C_6442:
    ld b, $0C
    rst $38
    ld h, b
    or [hl]

jr_00C_6447:
    jr z, jr_00C_63E9

    ld [$0046], sp
    jr z, jr_00C_63EE

    inc b
    inc c
    ld e, e
    ld h, h
    add hl, bc

jr_00C_6453:
    dec b
    inc c
    add sp, $60
    or [hl]
    jr z, jr_00C_63FA

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    inc b
    inc c
    ld l, l
    ld h, h
    add hl, bc

jr_00C_6465:
    dec b
    inc c
    pop de
    ld h, b
    or [hl]
    jr z, jr_00C_640C

    inc b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld [$7F0C], sp
    ld h, h
    add hl, bc

jr_00C_6477:
    ld b, $0C
    rst $38
    ld h, b
    or [hl]

jr_00C_647C:
    jr z, jr_00C_641E

    ld [$4645], sp
    nop
    jr z, @-$5E

    db $10
    inc c
    sub c
    ld h, h

jr_00C_6488:
    add hl, bc
    rlca
    inc c
    dec l
    ld h, c
    or [hl]

jr_00C_648E:
    jr z, jr_00C_6430

    db $10
    ld b, l
    ld b, [hl]

jr_00C_6493:
    nop
    jr z, @-$5E

    db $10
    inc c
    and e
    ld h, h

jr_00C_649A:
    add hl, bc
    rlca
    inc c
    ld d, $61

jr_00C_649F:
    or [hl]
    jr z, jr_00C_6442

    db $10
    ld b, [hl]
    nop
    jr z, jr_00C_6447

    ld b, b
    inc c
    or h
    ld h, h

jr_00C_64AB:
    add hl, bc
    add hl, bc
    inc c
    ld [hl], d
    ld h, c
    or [hl]

jr_00C_64B1:
    jr z, jr_00C_6453

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    ld b, b
    inc c
    add $64

jr_00C_64BD:
    add hl, bc
    add hl, bc
    inc c
    ld [hl], d
    ld h, c

jr_00C_64C2:
    or [hl]
    jr z, jr_00C_6465

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, @-$5E

    jr nz, jr_00C_64D9

    ret c

jr_00C_64CE:
    ld h, h
    add hl, bc
    ld [$5B0C], sp
    ld h, c

jr_00C_64D4:
    or [hl]
    jr z, jr_00C_6477

    jr nz, jr_00C_651F

jr_00C_64D9:
    nop
    jr z, jr_00C_647C

    ld b, b
    inc c
    jp hl


    ld h, h

jr_00C_64E0:
    add hl, bc
    add hl, bc
    inc c
    ld [hl], d
    ld h, c
    or [hl]

jr_00C_64E6:
    jr z, jr_00C_6488

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_648E

    jr nz, jr_00C_64FC

    ei
    ld h, h

jr_00C_64F2:
    add hl, bc
    ld [$5B0C], sp
    ld h, c
    or [hl]

jr_00C_64F8:
    jr z, jr_00C_649A

    jr nz, jr_00C_6542

jr_00C_64FC:
    nop
    jr z, jr_00C_649F

    db $10
    inc c
    inc c
    ld h, l
    add hl, bc

jr_00C_6504:
    rlca
    inc c
    ld b, h
    ld h, c
    or [hl]
    jr z, jr_00C_64AB

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_64B1

    ld b, b
    inc c
    ld e, $65
    add hl, bc
    add hl, bc
    inc c
    adc c
    ld h, c
    or [hl]
    jr z, jr_00C_64BD

    ld b, b
    ld b, [hl]

jr_00C_651F:
    nop
    jr z, jr_00C_64C2

    db $10
    inc c
    cpl
    ld h, l
    add hl, bc
    rlca
    inc c
    ld b, h
    ld h, c
    or [hl]
    jr z, jr_00C_64CE

    db $10
    ld b, l
    ld b, [hl]
    nop
    jr z, jr_00C_64D4

    db $10
    inc c
    ld b, c
    ld h, l
    add hl, bc

jr_00C_6539:
    rlca
    inc c
    ld b, h
    ld h, c
    or [hl]
    jr z, jr_00C_64E0

    db $10
    ld b, l

jr_00C_6542:
    ld b, [hl]
    nop
    jr z, jr_00C_64E6

    jr nz, jr_00C_6554

    ld d, e
    ld h, l
    add hl, bc
    ld [$5B0C], sp
    ld h, c
    or [hl]
    jr z, jr_00C_64F2

    jr nz, jr_00C_6599

jr_00C_6554:
    ld b, [hl]
    nop
    jr z, jr_00C_64F8

    ld b, b
    inc c
    ld h, l
    ld h, l
    add hl, bc
    add hl, bc
    inc c
    adc c
    ld h, c
    or [hl]
    jr z, jr_00C_6504

    ld b, b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $770C
    ld h, l
    add hl, bc
    dec bc
    inc c
    push hl
    ld h, c
    or [hl]

Jump_00C_6574:
jr_00C_6574:
    add hl, hl
    and b
    ld bc, $4645
    nop
    add hl, hl
    and b
    ld bc, $890C
    ld h, l

jr_00C_6580:
    add hl, bc
    dec bc
    inc c
    db $FC
    ld h, c
    or [hl]
    add hl, hl
    and b
    ld bc, $0046
    jr z, @-$5E

    add b
    inc c
    sbc d
    ld h, l
    add hl, bc
    ld a, [bc]
    inc c
    and b
    ld h, c
    or [hl]
    jr z, jr_00C_6539

jr_00C_6599:
    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $AC0C
    ld h, l
    add hl, bc
    dec bc
    inc c
    db $FC
    ld h, c
    or [hl]

jr_00C_65A9:
    add hl, hl
    and b
    ld bc, $0046
    add hl, hl
    and b
    ld [bc], a
    inc c
    cp l
    ld h, l
    add hl, bc

jr_00C_65B5:
    ld [de], a
    inc c
    inc de
    ld h, d
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld bc, $CF0C
    ld h, l
    add hl, bc
    dec bc
    inc c
    db $FC
    ld h, c
    or [hl]

jr_00C_65CC:
    add hl, hl
    and b
    ld bc, $4645
    nop
    jr z, jr_00C_6574

    add b
    inc c
    pop hl
    ld h, l

jr_00C_65D8:
    add hl, bc
    ld a, [bc]
    inc c
    and b
    ld h, c
    or [hl]
    jr z, jr_00C_6580

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    inc c
    di
    ld h, l
    add hl, bc
    ld [de], a
    inc c
    inc de
    ld h, d
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    inc c
    dec b
    ld h, [hl]
    add hl, bc
    ld [de], a
    inc c
    ld a, [hl+]
    ld h, d
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_00C_65A9

    add b
    inc c
    ld d, $66
    add hl, bc
    ld a, [bc]
    inc c
    and b
    ld h, c
    or [hl]
    jr z, jr_00C_65B5

    add b
    ld b, l
    ld b, [hl]
    nop
    add hl, hl
    and b
    ld [bc], a
    inc c
    jr z, jr_00C_6685

    add hl, bc
    ld [de], a
    inc c
    inc de
    ld h, d
    or [hl]
    add hl, hl
    and b
    ld [bc], a
    ld b, [hl]
    nop
    jr z, jr_00C_65CC

    add b
    inc c
    add hl, sp
    ld h, [hl]
    add hl, bc
    ld a, [bc]
    inc c
    or a
    ld h, c
    or [hl]
    jr z, jr_00C_65D8

    add b
    ld b, l
    or e
    ld [hl-], a
    and c
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    sbc d
    ld d, c
    inc de
    ld h, a
    ld a, $48
    sbc e
    inc c
    ld a, [$0568]
    nop
    inc [hl]
    ld h, e
    ld [bc], a
    jr @-$1C

    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    inc c
    ld a, [$0568]
    inc bc
    add a
    ld h, a
    inc bc
    ld d, $BB
    pop de
    nop
    ld de, $793A
    inc c
    dec h
    ld l, c
    dec b
    inc b
    add a
    ld h, a
    ld [$9814], sp
    pop de
    nop
    ld de, $793A
    inc c
    dec h
    ld l, c
    dec b
    dec b

jr_00C_6685:
    add a
    ld h, a
    ld b, $15
    xor d
    pop de
    nop
    ld de, $794E
    inc c
    dec h
    ld l, c
    dec b
    ld b, $87
    ld h, a
    inc b
    inc d
    sub h
    pop de
    nop
    ld de, $7944
    inc c
    dec h
    ld l, c
    dec b
    rlca
    add a

jr_00C_66A4:
    ld h, a
    ld [bc], a
    ld [de], a
    ld l, d

jr_00C_66A8:
    pop de
    nop
    ld de, $7958
    inc c
    dec h
    ld l, c

jr_00C_66B0:
    dec b
    ld [$6787], sp

jr_00C_66B4:
    ld [bc], a
    rrca
    ld l, $D1

jr_00C_66B8:
    nop
    ld de, $793A

jr_00C_66BC:
    inc c
    dec h
    ld l, c
    dec b
    add hl, bc
    add a
    ld h, a
    dec b
    dec bc
    pop hl
    ret nc

    nop
    ld de, $7944
    inc c
    dec h
    ld l, c
    dec b
    ld a, [bc]
    add a
    ld h, a
    ld [bc], a
    inc c
    ld a, [c]
    ret nc

    nop
    ld de, $793A
    inc c
    dec h
    ld l, c
    dec bc
    nop
    dec bc
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec bc
    ld b, $0B
    rlca
    dec bc
    ld [$090B], sp
    dec bc
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    rla
    nop
    ld b, b
    nop
    add b
    nop
    add [hl]
    sbc b
    or e
    daa
    and d
    ld bc, $28B5
    and b
    cp $B5
    jr z, jr_00C_66A4

    db $FD
    or l
    jr z, jr_00C_66A8

    ei
    or l
    jr z, @-$5E

    rst $30
    or l
    jr z, jr_00C_66B0

    rst $28
    or l
    jr z, jr_00C_66B4

    rst $18
    or l
    jr z, jr_00C_66B8

    cp a
    or l
    jr z, jr_00C_66BC

    ld a, a
    or l
    add hl, hl
    and b
    cp $B5
    add hl, hl
    and b
    db $FD
    or l
    add hl, hl
    and b
    ei
    or l
    add hl, hl
    and b
    rst $30
    sbc e
    inc c
    ld [hl-], a
    ld h, a
    ld b, l
    sbc [hl]
    or e
    ld sp, $01C7
    inc c
    nop
    ld e, $1F
    and d
    sbc b
    ld b, c
    and [hl]
    jr nz, @+$54

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    rst $38
    jr nz, jr_00C_678F

    ld a, b
    ld l, c
    ld [hl], h
    db $FD
    and e
    ld [bc], a
    inc c
    ld a, [c]
    ld l, b
    inc c
    jr nc, jr_00C_67A1

    ld b, l
    ld e, $05
    dec b
    nop
    ld hl, sp+$4A
    ld [$4810], sp
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    ld [hl], e
    rrca
    rst $38
    ld a, a
    add c
    adc c
    pop bc
    inc b
    ld a, l
    rrca
    rlca
    nop
    inc [hl]
    ld h, e
    ld b, l
    ld [hl+], a
    ld [bc], a
    or e
    ld sp, $01C7
    inc c
    nop
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_67EB

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00C_67F4

jr_00C_678F:
    ld a, b
    ld l, c
    ld [hl], h
    ld hl, $FDFE
    ld b, [hl]
    rrca
    ld bc, $A132
    dec b
    rst $38
    inc c
    jp nc, $9F67

    ld [hl-], a

jr_00C_67A1:
    and c
    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_681B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_6825

    ld l, a
    ld [hl], l
    rst $38
    db $FC
    jr nz, jr_00C_6813

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    db $10
    dec b
    nop
    inc c
    ld c, $68
    and c
    xor l
    add c
    and c
    ld bc, $A132
    ld c, b
    inc c
    jr nz, jr_00C_681D

    and [hl]
    ld c, c
    ld [hl], h
    jr nz, jr_00C_684B

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_6855

    ld l, a
    ld [hl], l
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_6859

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_00C_681C

    dec [hl]

jr_00C_67EB:
    dec [hl]
    cp $61
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h

jr_00C_67F4:
    ld [hl], e
    ld l, $FE
    db $FD
    ld b, [hl]
    stop
    add hl, sp
    and b
    db $10
    dec b
    nop
    inc c
    ld c, $68
    and c
    xor l
    add c
    and c
    ld bc, $A132
    ld c, b
    inc c
    jr nz, jr_00C_6859

    ld b, [hl]
    inc de
    ld bc, $A132

jr_00C_6813:
    ld bc, $A181
    inc c
    adc l
    ld l, b
    sbc a
    add c

jr_00C_681B:
    and c

jr_00C_681C:
    ld b, [hl]

jr_00C_681D:
    rrca
    ld bc, $A181
    dec b
    ld bc, $530C

jr_00C_6825:
    ld l, b
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00C_688F

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$55

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_68A8

    ld [hl], e
    cp $FC
    jr nz, jr_00C_68A5

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e

jr_00C_684B:
    ld l, $FE
    db $FD
    and c
    ld c, b
    inc c
    jr nz, jr_00C_689E

    and [hl]
    ld d, h

jr_00C_6855:
    ld l, b
    ld h, l
    jr nz, @+$65

jr_00C_6859:
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_68B9

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6B

    ld [hl], e
    cp $61
    ld l, [hl]
    jr nz, jr_00C_68E7

    ld l, [hl]
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    rst $38
    ld sp, $6120
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld hl, $FDFE
    and c
    ld c, b
    inc c
    jr nz, jr_00C_68D8

    sbc a
    add c

jr_00C_688F:
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00C_68FC

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $FF21

jr_00C_689E:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_690B

    ld h, c
    halt

jr_00C_68A5:
    ld h, l
    jr nz, jr_00C_691B

jr_00C_68A8:
    ld h, l
    ld [hl], h
    jr nz, jr_00C_690D

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00C_68FA

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_690A

    ld h, e
    ld l, a

jr_00C_68B9:
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00C_6932

    ld [hl], d
    ld h, l
    halt
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    rst $38
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00C_6923

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_694D

    ld h, c
    ld [hl], e

jr_00C_68D8:
    cp $FC
    jr nz, @+$63

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld [hl], e
    ld l, $FE
    db $FD
    and c

jr_00C_68E7:
    xor l
    add c
    and c
    ld bc, $A132
    and c
    ld c, b
    inc c
    jr nz, @+$4D

    or e
    ld sp, $01C7
    inc d
    ld de, $793A

jr_00C_68FA:
    inc c
    nop

jr_00C_68FC:
    ld c, b
    inc c
    nop
    ld l, c
    ld b, [hl]
    ld de, $3201
    and c
    dec b
    cp $0C
    inc de
    ld l, c

jr_00C_690A:
    xor l

jr_00C_690B:
    ld [hl-], a
    and c

jr_00C_690D:
    dec bc
    ld bc, $A132
    dec b
    ld bc, $081E
    ld b, e
    db $10
    ld [hl], d
    rrca
    nop
    nop

jr_00C_691B:
    ld a, d
    jr nz, @+$08

    ld a, d
    jr nz, jr_00C_6999

    ld c, b
    inc c

jr_00C_6923:
    ld a, $66
    inc d
    ld de, $793A
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]

jr_00C_6932:
    ld bc, $C9D8
    inc c
    nop
    nop
    ret


    ld l, c
    inc c
    ld bc, $D800
    ld l, c
    inc c
    ld [bc], a
    nop
    add sp, $69
    inc c
    inc bc
    nop
    ld hl, sp+$69
    rst $38
    ld c, b
    inc c
    ld c, h

jr_00C_694D:
    ld l, d
    inc d
    ld de, $794E
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ret


    ld l, c
    inc c
    ld bc, $D800
    ld l, c
    inc c
    ld [bc], a
    nop
    add sp, $69
    inc c
    inc bc
    nop
    ld hl, sp+$69
    rst $38
    ld c, b
    inc c
    ld c, h
    ld l, d
    inc d
    ld de, $7944
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ret


    ld l, c
    inc c
    ld bc, $D800
    ld l, c
    inc c
    ld [bc], a
    nop
    add sp, $69
    inc c
    inc bc
    nop

jr_00C_6999:
    ld hl, sp+$69
    rst $38
    ld c, b
    inc c
    ld c, h
    ld l, d
    inc d
    ld de, $7958
    inc de
    pop hl
    ld [hl], b
    inc e
    inc c
    ld c, h
    ld l, d
    ld c, e
    ld c, [hl]
    ld bc, $C9D8
    inc c
    nop
    nop
    ret


    ld l, c
    inc c
    ld bc, $D800
    ld l, c
    inc c
    ld [bc], a
    nop
    add sp, $69
    inc c
    inc bc
    nop
    ld hl, sp+$69
    rst $38
    ld c, b
    inc c
    ld c, h
    ld l, d
    dec e
    inc c
    adc $69
    ld [de], a
    dec d
    ld de, $7A61
    inc b
    nop
    ld c, b
    inc c
    dec sp
    ld l, d
    dec e
    inc c
    db $DD
    ld l, c
    ld [de], a
    dec d
    ld de, $7A2E
    inc b
    nop
    ld c, b
    inc c
    add hl, de
    ld l, d
    ld b, l
    dec e
    inc c
    db $ED
    ld l, c
    ld [de], a
    dec d
    ld de, $7A50
    inc b
    nop
    ld c, b
    inc c
    ld a, [hl+]
    ld l, d
    ld b, l
    dec e
    inc c
    db $FD
    ld l, c
    ld [de], a
    dec d
    ld de, $7A3F
    inc b
    nop
    ld c, b
    inc c
    ld [$456A], sp
    dec e
    inc c
    dec c
    ld l, d
    ld [de], a
    inc d
    ld de, $794E
    inc de
    add a
    ld h, a
    inc e
    inc c
    ld c, [hl]
    ld l, c
    ld b, l
    dec e
    inc c
    ld e, $6A
    ld [de], a
    inc d
    ld de, $7944
    inc de
    add a
    ld h, a
    inc e
    inc c
    ld [hl], a
    ld l, c
    ld b, l
    dec e
    inc c
    cpl
    ld l, d
    ld [de], a
    inc d
    ld de, $7958
    inc de
    add a
    ld h, a
    inc e
    inc c
    and b
    ld l, c
    ld b, l
    dec e
    inc c
    ld b, b
    ld l, d
    ld [de], a
    inc d
    ld de, $793A
    inc de
    add a
    ld h, a
    inc e
    inc c
    dec h
    ld l, c
    ld b, l
    or e
    ld sp, $01C7
    inc c
    nop
    inc d
    ld de, $793A
    ld c, b
    inc c
    ld a, [c]
    ld l, b
    ld e, $1F
    ld e, h
    inc c
    ld h, c
    ld l, d
    ld b, l
    or e
    ld sp, $01C7
    ld c, e
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld h, c
    halt
    ld h, l
    jr nz, jr_00C_6AB7

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00C_6AC8

    ld l, a
    ld l, $FF
    jr nz, jr_00C_6AD8

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    inc c
    call nz, $0C6A
    adc e
    ld l, d
    sbc d
    inc c
    xor l
    ld l, e
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_00C_6AEC

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_00C_6B13

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    inc c
    cp d
    ld l, d
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00C_6AE5

    ld l, $FE
    db $FD
    ld c, b

jr_00C_6AB7:
    inc c
    call nz, $A66A
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00C_6AF2

    ld l, $FE
    db $FD
    and c
    sbc e
    inc c
    ld e, d

jr_00C_6AC8:
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld c, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00C_6AD8:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de

jr_00C_6AE5:
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl

jr_00C_6AEC:
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]

jr_00C_6AF2:
    dec b
    nop
    inc [hl]
    ld h, e
    inc b
    dec d
    ld a, d
    jp nc, $1400

    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc b
    rla
    or [hl]
    jp nc, $0C00

    ld l, $6B
    inc c
    dec de
    ld [hl], d
    ld l, [hl]
    jr nc, jr_00C_6B20

jr_00C_6B13:
    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38

jr_00C_6B20:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    and b
    ld [$1019], sp
    ld b, a
    inc d
    inc de
    ld c, b
    ld l, l
    ld b, l
    ld [hl+], a
    ld c, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    ld d, $97
    jp nc, $0C00

    sbc h
    ld l, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc b
    rla
    or [hl]
    jp nc, $0C00

    ld l, $6B
    inc c
    dec de
    ld [hl], d
    ld l, [hl]
    jr nc, jr_00C_6B8D

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    nop
    add [hl]
    ld [hl], e
    rrca

jr_00C_6B8D:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_00C_6BA2

jr_00C_6BA2:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld c, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    nop
    ld d, $94
    jp nc, $0C00

    dec c
    ld l, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc b
    rla
    or [hl]
    jp nc, $0C00

    ld l, $6B
    inc c
    dec de
    ld [hl], d
    ld l, [hl]
    jr nc, jr_00C_6BFF

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    add [hl]
    ld [hl], e
    rrca
    rst $38

jr_00C_6BFF:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    jr nc, @+$16

    xor e
    ld e, l
    nop
    nop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    ld e, $AD
    add hl, sp
    and c
    dec bc
    ld bc, $A139
    dec b
    ld bc, $35B3
    and c
    rlca
    ld c, [hl]
    ld bc, $A136
    inc c
    nop
    nop
    ld d, d
    ld l, h
    inc c
    ld bc, $5A00
    ld l, h
    inc c
    ld [bc], a
    nop
    ld l, a
    ld l, h
    inc c
    inc bc
    nop
    add h
    ld l, h
    inc c
    inc b
    nop
    sbc c
    ld l, h
    inc c
    dec b
    nop
    sbc c
    ld l, h
    rst $38
    ld c, b
    inc c
    sbc c
    ld l, h
    or e
    ld [hl], $A1
    inc bc
    ld c, b
    inc c
    add h
    ld l, h
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    rst $10
    ld d, b
    inc de
    ld c, b
    dec bc
    adc e
    ld l, h
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    rst $10
    ld d, b
    inc de
    ld c, b
    dec bc
    ld de, $976D
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    rst $10
    ld d, b
    inc de
    ld c, b
    dec bc
    ld c, d
    ld l, l
    ld bc, $1314
    ld c, b
    inc c

jr_00C_6C9E:
    dec sp
    ld l, e
    ld [hl+], a
    ld c, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    inc d
    ld [de], a
    jr nc, jr_00C_6C9E

    nop
    inc c
    ld a, [$196C]
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld d, $15
    adc h
    jp nc, $0C00

    dec bc
    ld l, l
    inc c
    db $10
    ld l, l
    ld l, [hl]
    jr nc, jr_00C_6CF2

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    dec d
    dec d
    ld [hl], e

jr_00C_6CF2:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld e, l
    ld e, h
    jr nc, jr_00C_6D16

    or l
    ld e, l
    jr nz, jr_00C_6D06

jr_00C_6D06:
    ld e, [hl]
    dec bc
    xor d
    ld l, h
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    inc c

jr_00C_6D16:
    inc e
    ld l, l
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    or e
    ld sp, $01C7
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_00C_6D90

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_00C_6DA7

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00C_6DA1

    ld h, c
    halt
    ld h, l
    jr nz, jr_00C_6D9F

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0C9B
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld c, $97
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    dec b
    ld [bc], a
    ld b, c
    ret nc

    nop
    inc c
    xor l
    ld l, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    rlca
    inc b
    ld a, a
    ret nc

    nop
    inc c

jr_00C_6D90:
    pop hl
    ld l, l
    inc c
    ld a, [c]
    ld l, l
    ld l, [hl]
    jr nc, jr_00C_6DA5

    and b
    ld b, b
    nop
    add b
    nop
    dec bc
    nop

jr_00C_6D9F:
    dec bc
    ld [bc], a

jr_00C_6DA1:
    adc b
    rlca
    inc bc
    ld [hl], e

jr_00C_6DA5:
    rrca
    rst $38

jr_00C_6DA7:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_00C_6DC9

    or l
    ld e, l
    jr nz, jr_00C_6DB9

jr_00C_6DB9:
    or e
    dec [hl]
    and c
    rlca
    ld e, [hl]
    dec bc
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    ret


    ld e, l
    add b
    inc c

jr_00C_6DC9:
    dec bc
    ld bc, $2043
    add b
    inc d
    dec d
    ld bc, $2043
    add c
    adc c
    pop bc
    inc b
    ld e, a
    nop
    ld [bc], a
    ld e, c
    ld [bc], a
    sbc e
    inc c
    ld e, d
    ld l, d
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, e
    ld bc, $1314
    ld h, [hl]
    ld l, l
    ld h, e
    ld [bc], a
    inc d
    inc de
    inc [hl]
    ld l, l
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    inc c
    cp $6D
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    and d
    cp b
    ld e, l
    and [hl]
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_00C_6E85

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00C_6E7F

    ld h, c
    halt
    ld h, l
    jr nz, jr_00C_6E7D

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0C9B
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    ld c, $B6
    ld b, a
    and b
    ld [$31B3], sp
    rst $00
    nop
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    sub a
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    rla
    ld [bc], a
    ld d, e
    ret nc

    nop
    inc c
    adc a
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec d
    ld b, $C9
    ret nc

    nop
    inc c
    adc h
    ld l, a
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00C_6E87

    and b
    ld b, b
    nop

jr_00C_6E7D:
    add b
    nop

jr_00C_6E7F:
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    rla

jr_00C_6E85:
    rlca
    ld [hl], e

jr_00C_6E87:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld c, l
    ld e, h
    ld b, b
    inc d
    cp a
    ld e, l
    ld [$AB14], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    inc c
    cp e
    ld l, [hl]
    ld h, l
    ld bc, $1415
    and c
    ld e, l
    nop
    nop
    ld e, a
    nop
    inc bc
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00C_6F26

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    halt
    ld h, l
    rst $38
    ld c, c
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$67

    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00C_6F43

    ld h, l
    ld [hl], h
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00C_6F57

    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_00C_6F5C

    ld h, [hl]
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_00C_6F66

    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00C_6F7C

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    rst $38
    ld l, h
    ld l, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00C_6F8A

    ld l, c
    ld [hl], h
    ld l, b
    cp $73
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00C_6F86

    ld l, [hl]
    jr nz, jr_00C_6F99

    ld l, a
    ld [hl], l
    ld [hl], d
    rst $38
    ld [hl], e
    ld l, b

jr_00C_6F26:
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_00C_6F94

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$63

    ld l, h
    ld l, h
    cp $FD
    and [hl]
    ld h, d
    ld h, c
    ld h, h
    ld l, $2E
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a

jr_00C_6F43:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00C_6FB1

    ld l, a
    ld l, a
    ld h, h
    rst $38
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_00C_6FBE

    ld [hl], h
    ccf

jr_00C_6F57:
    cp $FD
    and d
    cp b
    ld e, l

jr_00C_6F5C:
    and [hl]
    ld d, l
    ld l, l
    ld l, $2E
    ld l, $20
    ld c, c
    ld [hl], h
    daa

jr_00C_6F66:
    ld [hl], e
    jr nz, jr_00C_6FCA

    rst $38
    ld [hl], e
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    ld hl, $FDFE
    ld e, e
    ld bc, $98A2
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld h, c

jr_00C_6F7C:
    ld l, b
    inc l
    jr nz, jr_00C_6FF2

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $FE

jr_00C_6F86:
    db $FD
    and c
    ld e, a
    nop

jr_00C_6F8A:
    inc bc
    ld b, l
    inc d
    inc de
    ld a, $6D
    ld h, l
    ld bc, $1315

jr_00C_6F94:
    or b
    ld l, h
    jr jr_00C_6FAB

    ret nc

jr_00C_6F99:
    ld l, h
    jr nz, jr_00C_6FAF

    or b
    ld l, h
    jr @+$15

    ret nc

    ld l, h
    jr nz, jr_00C_6FB7

    or b
    ld l, h
    ld h, h
    inc de
    ld a, [hl+]
    ld l, l
    nop

jr_00C_6FAB:
    nop
    ld e, a
    nop
    inc bc

jr_00C_6FAF:
    add hl, de
    ld b, l

jr_00C_6FB1:
    ld [hl+], a
    ld c, $B3
    inc [hl]
    and c
    rlca

jr_00C_6FB7:
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp

jr_00C_6FBE:
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    ret z

jr_00C_6FCA:
    ld d, b
    inc de
    ld h, a
    ld a, [$6B45]
    sbc d
    ld h, a
    dec hl
    ei
    ld h, h
    inc l
    ld l, h
    rla
    ld b, [hl]
    dec b
    nop
    ld hl, sp+$4A
    nop
    ld d, $94
    jp nc, $0C00

    ld b, c
    ld [hl], b
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    nop
    rla
    or d
    jp nc, $0C00

jr_00C_6FF2:
    db $EB
    ld [hl], b
    inc c
    dec de
    ld [hl], d
    dec b
    inc bc
    ld hl, sp+$4A
    ld a, [bc]
    dec d
    add b
    jp nc, $0C30

    ld h, $71
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec bc
    ld d, $9F
    jp nc, $0C58

    add b
    ld [hl], c
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00C_7025

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr z, jr_00C_702D

    ld b, b
    ld l, [hl]
    nop
    add e
    nop

jr_00C_7025:
    ld l, [hl]
    inc hl
    inc c
    ret nz

    ld b, e
    add b
    add l
    nop

jr_00C_702D:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    dec b
    ld d, $73
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    adc l
    ld e, h
    jr nz, jr_00C_705B

    ret


    ld e, l
    db $10
    inc d
    db $DD
    ld e, l
    db $10
    inc d
    db $D3
    ld e, l
    db $10
    inc d
    db $DD
    ld e, l
    db $10
    inc d
    or l
    ld e, l
    db $10
    inc d

jr_00C_705B:
    ret


    ld e, l
    stop
    ld h, l
    inc bc
    ld b, e
    jr nz, jr_00C_7078

    inc d
    or l
    ld e, l
    ld h, l
    dec b
    inc d
    inc d
    db $DD
    ld e, l
    ld e, [hl]
    inc c
    xor b
    ld [hl], h
    ld h, l
    ld b, $43
    inc c
    inc d
    inc d
    or l

jr_00C_7078:
    ld e, l
    ld h, l
    ld [$0C5E], sp
    dec b
    ld [hl], l
    ld h, l
    add hl, bc
    inc d
    inc d
    ret


    ld e, l
    ld e, [hl]
    inc c
    ld d, [hl]
    ld [hl], l
    ld h, l
    ld a, [bc]
    inc d
    inc d
    or l
    ld e, l
    ld e, [hl]
    inc c
    sbc l
    ld [hl], l
    ld h, l
    dec bc
    dec d
    inc d
    adc l
    ld e, h
    jr nz, jr_00C_70AF

    db $DD
    ld e, l
    jr nc, jr_00C_70B3

    ret


    ld e, l
    jr nc, jr_00C_70B7

    db $DD
    ld e, l
    jr nc, jr_00C_70A7

jr_00C_70A7:
    ld e, [hl]
    inc c
    add $75
    dec d
    inc d
    ld l, l
    ld e, h

jr_00C_70AF:
    jr nz, jr_00C_70C5

    or l
    ld e, l

jr_00C_70B3:
    nop
    nop
    ld h, l
    dec c

jr_00C_70B7:
    ld e, [hl]
    inc c
    inc e
    halt
    ld h, l
    ld de, $0C5E
    sub a
    halt
    ld h, l
    inc de
    ld e, [hl]
    inc c

jr_00C_70C5:
    ld a, [bc]
    ld [hl], a
    ld h, l
    add hl, de
    inc d
    inc d
    db $DD
    ld e, l
    ld e, [hl]
    inc c
    dec sp
    ld a, b
    ld h, l
    dec de
    inc d
    inc d
    or l
    ld e, l
    ld e, [hl]
    inc c
    sub h
    ld a, b
    ld e, a
    nop
    inc bc
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    inc c
    ld e, d
    ld l, d
    or e
    ld sp, $00C7
    ld b, l
    ld b, e
    db $10
    dec d
    inc de
    ret nc

    ld l, h
    jr nc, jr_00C_7106

    ld c, b
    ld l, l
    jr nz, jr_00C_70F7

jr_00C_70F7:
    ld e, [hl]
    inc c
    sub h
    ld [hl], e
    ld h, l
    ld bc, $0C5E
    db $DB
    ld [hl], e
    ld h, l
    ld [bc], a
    ld e, [hl]
    inc c
    nop

jr_00C_7106:
    ld [hl], h
    ld h, l
    inc bc
    ld b, e
    ld h, $14
    inc de
    ld d, d
    ld l, l
    ld h, l
    inc d
    dec d
    inc de
    ret nc

    ld l, h
    stop
    ld e, [hl]
    inc c
    ld [hl-], a
    ld [hl], a
    dec d
    inc de
    jr nz, jr_00C_718C

    jr jr_00C_7134

    ld c, b
    ld l, l
    nop
    nop
    ld b, l
    inc d
    ld de, $424C
    ld h, l
    inc bc
    dec d
    ld de, $41B0
    ld h, b
    ld de, $424C

jr_00C_7134:
    nop
    nop
    ld e, [hl]
    inc c
    ld [hl-], a
    ld [hl], h
    dec d
    ld de, $421A
    stop
    dec d
    ld de, $424C
    ld [$6500], sp
    inc b
    ld e, [hl]
    inc c
    ld c, a
    ld [hl], h
    ld h, l
    ld d, $15
    ld de, $41B0
    inc c
    ld de, $421A
    stop
    ld e, [hl]
    inc c
    xor c
    ld [hl], a
    ld h, l
    rla
    ld e, [hl]
    inc c
    rst $08
    ld [hl], a
    ld h, l
    jr @+$60

    inc c
    sbc $77
    ld h, l
    ld a, [de]
    inc d
    ld de, $424C
    ld e, [hl]
    inc c
    ld d, c
    ld a, b
    ld h, l
    dec de
    dec d
    ld de, $41A0
    jr nz, jr_00C_718B

    or b
    ld b, c
    ld h, h
    nop
    add hl, de
    ld b, l
    ld b, e
    ld [$1014], sp
    jp hl


    ld [hl], a
    ld h, l
    inc bc
    dec d
    db $10
    ld c, l

jr_00C_718B:
    ld [hl], a

jr_00C_718C:
    ld h, b
    db $10
    jp hl


    ld [hl], a
    nop
    nop
    ld h, l
    ld b, $14
    db $10
    pop bc
    ld [hl], a
    ld e, [hl]
    inc c
    jp Jump_00C_6574


    rlca
    ld e, [hl]
    inc c
    rst $28
    ld [hl], h
    ld h, l
    inc c
    ld e, [hl]
    inc c
    rlca
    halt
    ld h, l
    ld c, $5E
    inc c
    ld l, $76
    ld h, l
    rrca
    ld e, [hl]
    inc c
    ld d, l
    halt
    ld h, l
    db $10
    ld e, [hl]
    inc c
    ld [hl], l
    halt
    dec d
    db $10
    ld c, l
    ld [hl], a
    ld [$E910], sp
    ld [hl], a
    jr z, jr_00C_71D4

    pop bc
    ld [hl], a
    nop
    nop
    ld h, l
    ld [de], a
    ld e, [hl]
    inc c

jr_00C_71CC:
    db $E4
    halt
    dec d
    db $10
    push de
    ld [hl], a
    ld b, $10

jr_00C_71D4:
    xor l
    ld [hl], a
    ld b, $10

jr_00C_71D8:
    rst $18
    ld [hl], a
    ld b, $10
    bit 6, a
    ld b, $10
    di
    ld [hl], a
    ld b, $10

jr_00C_71E4:
    or a
    ld [hl], a
    ld b, $10
    jp hl


    ld [hl], a
    ld b, $10
    pop bc
    ld [hl], a
    ld b, $00
    ld h, l
    dec d
    dec d
    db $10
    jp hl


    ld [hl], a
    jr nc, jr_00C_71F8

jr_00C_71F8:
    ld e, [hl]
    inc c
    sub [hl]
    ld [hl], a
    ld h, l
    ld d, $43
    ld b, $14
    db $10
    pop bc
    ld [hl], a
    ld h, l
    dec de
    ld b, e
    jr @+$17

    db $10
    ld c, l
    ld [hl], a
    jr @+$12

    dec a
    ld [hl], a
    db $10
    db $10
    ld c, l
    ld [hl], a
    ld h, h
    nop
    ld e, a
    nop
    inc bc
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    inc c
    daa
    ld [hl], d
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, [hl]
    rrca
    nop
    jr c, jr_00C_71CC

    db $10
    ld b, $FF
    rst $38
    inc c
    adc l
    ld [hl], d
    ld b, [hl]
    rrca
    nop
    jr c, jr_00C_71D8

    ld [$FF06], sp
    rst $38
    inc c
    db $E3
    ld [hl], d
    ld b, [hl]
    rrca
    nop
    jr c, jr_00C_71E4

    inc b
    ld b, $FF
    rst $38
    inc c
    ld a, [hl-]
    ld [hl], e
    and d
    cp b
    ld e, l
    and [hl]
    ld b, [hl]
    ld l, h
    ld h, c
    ld [hl], d
    ld [hl], b
    ld [hl], e
    jr nz, jr_00C_72BB

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    rst $38
    ld h, l
    ld l, [hl]
    ld l, d
    ld l, a
    ld a, c
    jr nz, @+$76

    ld l, b
    ld h, l
    cp $64
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_00C_72D6

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_72F0

    ld l, b
    ld h, c
    ld l, [hl]
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_00C_72E9

    ld l, a
    ld hl, $FDFE
    ld c, b
    inc c
    sub b
    ld [hl], e
    and d
    cp b
    ld e, l
    and [hl]
    ld b, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00C_730B

    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], b
    jr nz, jr_00C_730D

    ld h, [hl]
    rst $38
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_00C_7311

    ld [hl], e
    cp $75
    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_00C_731A

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    rst $38
    ld h, l
    halt
    ld h, l
    ld l, [hl]

jr_00C_72BB:
    jr nz, jr_00C_7326

    ld h, [hl]
    jr nz, jr_00C_7339

    ld l, a
    ld [hl], l
    cp $64
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00C_733C

    ld h, l
    ld h, c
    ld l, h
    ld l, c
    ld a, d
    ld h, l
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_00C_7336

    ld [hl], h

jr_00C_72D6:
    jr nz, jr_00C_733E

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $FE
    db $FD
    ld c, b
    inc c
    sub b
    ld [hl], e
    and d
    cp b
    ld e, l
    and [hl]
    ld d, h
    ld l, b

jr_00C_72E9:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00C_735E

jr_00C_72F0:
    ld l, a
    rst $38
    ld [hl], e
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    jr nz, jr_00C_7360

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00C_7373

    ld l, b
    ld h, l
    cp $73
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], e
    jr nz, jr_00C_7373

jr_00C_730B:
    ld h, l
    ld [hl], d

jr_00C_730D:
    ld h, l
    inc l
    rst $38
    ld [hl], e

jr_00C_7311:
    ld l, a
    jr nz, jr_00C_7378

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00C_738D

jr_00C_731A:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld a, c
    cp $74
    ld l, a
    ld l, a
    jr nz, @+$68

    ld h, c
    ld [hl], d

jr_00C_7326:
    jr nz, jr_00C_738E

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00C_738E

    rst $38
    ld h, [hl]
    ld l, h
    ld h, c
    ld [hl], d
    ld [hl], b
    ld hl, $FDFE

jr_00C_7336:
    ld c, b
    inc c
    sub b

jr_00C_7339:
    ld [hl], e
    and d
    cp b

jr_00C_733C:
    ld e, l
    and [hl]

jr_00C_733E:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00C_73B1

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_00C_73BC

    ld l, a
    jr nz, jr_00C_73B2

    ld h, l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00C_73C6

    ld l, b
    ld h, l
    jr nz, jr_00C_73CD

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    cp $66
    ld l, a
    ld [hl], l

jr_00C_735E:
    ld l, [hl]
    ld [hl], h

jr_00C_7360:
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    rst $38
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00C_73E6

    ld l, a
    ld [hl], l
    cp $63
    ld l, a
    ld l, h

jr_00C_7373:
    ld l, h
    ld h, c
    ld [hl], b
    ld [hl], e
    ld h, l

jr_00C_7378:
    jr nz, jr_00C_73E0

    ld [hl], d
    ld l, a
    ld l, l
    rst $38
    ld h, h
    ld h, l
    ld l, b
    ld a, c
    ld h, h
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $FDFE
    ld c, b

jr_00C_738D:
    inc c

jr_00C_738E:
    sub b
    ld [hl], e
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00C_73E6

    jr nz, jr_00C_7413

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld b, e
    ld h, c
    ld l, h
    ld h, h
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_00C_7418

    ld l, a

jr_00C_73B1:
    ld [hl], h

jr_00C_73B2:
    ld l, $FE
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00C_742A

    ld l, h
    ld h, c

jr_00C_73BC:
    ld h, e
    ld h, l
    jr nz, jr_00C_7429

    ld [hl], e
    rst $38
    ld h, c
    ld [hl], e
    jr nz, jr_00C_742E

jr_00C_73C6:
    ld l, a
    ld [hl], h
    jr nz, jr_00C_742B

    ld [hl], e
    jr nz, jr_00C_742E

jr_00C_73CD:
    cp $64
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld b, a

jr_00C_73E0:
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_00C_745D

jr_00C_73E6:
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_00C_7435

    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_00C_7453

    jr nz, jr_00C_7458

    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    rst $38
    ld h, l
    ld a, b
    ld [hl], b
    ld l, h

jr_00C_7413:
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_00C_748F

jr_00C_7418:
    ld l, b
    ld a, c
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00C_7492

    ld l, a
    rst $38
    ld h, d
    ld h, l
    ld h, c

jr_00C_7429:
    ld h, e

jr_00C_742A:
    ld l, b

jr_00C_742B:
    ld l, $FE
    db $FD

jr_00C_742E:
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    jr c, jr_00C_7486

jr_00C_7435:
    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_00C_74A6

    ld l, a
    ld [hl], a
    jr nz, jr_00C_74A3

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ccf
    cp $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]

jr_00C_7453:
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_00C_7458:
    inc l
    jr nz, jr_00C_74A9

    ld h, c
    daa

jr_00C_745D:
    ld c, b
    ld h, c
    ld [hl], d
    ld h, c
    ld hl, $53FE
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00C_74D9

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld c, [hl]
    ld h, c
    daa
    ld c, b
    ld h, c
    ld [hl], d
    ld h, c
    jr nz, jr_00C_74DA

    ld l, [hl]
    ld h, h
    cp $59
    ld h, h
    ld [hl], d
    ld h, c
    ld l, $FF
    ld c, [hl]
    ld h, c
    daa
    ld c, b

jr_00C_7486:
    ld h, c
    ld [hl], d
    ld h, c
    jr nz, jr_00C_74F4

    ld [hl], e
    jr nz, jr_00C_7502

    ld l, b

jr_00C_748F:
    ld h, l
    cp $4B

jr_00C_7492:
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_00C_7508

    ld h, [hl]
    rst $38
    ld h, h
    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    ld l, $FE

jr_00C_74A3:
    db $FD
    and c
    ld e, e

jr_00C_74A6:
    dec b
    ld b, l
    and d

jr_00C_74A9:
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_00C_7522

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld b, $45
    and d
    ret z

    ld d, d
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    jr nz, jr_00C_7542

    ld h, l
    ld h, c
    ld l, h
    rst $38
    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e

jr_00C_74D9:
    ld [hl], l

jr_00C_74DA:
    ld [hl], d
    ld h, l
    jr nz, jr_00C_754D

    ld l, [hl]
    cp $6F
    ld [hl], l
    ld [hl], d
    jr nz, jr_00C_7555

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, l

jr_00C_74F4:
    ld l, b
    inc l
    jr nz, jr_00C_7567

    ld l, b
    ld l, $FF
    ld d, a
    ld l, b
    ld a, c
    ccf
    cp $FD
    and c

jr_00C_7502:
    ld e, e
    ld [$A245], sp
    jr c, jr_00C_7559

jr_00C_7508:
    and [hl]
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00C_757A

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00C_7588

    ld h, c
    ld a, c
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_00C_7595

jr_00C_7522:
    ld h, c
    ld l, [hl]
    ld h, h
    cp $77
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00C_759A

    ld l, a
    ld [hl], h
    jr nz, @+$64

    ld h, l
    rst $38
    halt
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_00C_75A3

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld l, [hl]
    cp $79
    ld l, a
    ld [hl], l

jr_00C_7542:
    ld [hl], d
    jr nz, @+$70

    ld h, l
    ld h, c
    ld [hl], d
    rst $38
    ld h, [hl]
    ld [hl], l
    ld [hl], h
    ld [hl], l

jr_00C_754D:
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, bc

jr_00C_7555:
    ld b, l
    and d
    sbc b
    ld b, c

jr_00C_7559:
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_00C_75C6

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, $20
    ld c, l
    ld l, a

jr_00C_7567:
    ld [hl], d
    ld h, l
    rst $38
    ld [hl], b
    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_00C_75E9

    ld l, b
    ld l, a
    cp $74
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e

jr_00C_757A:
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00C_75CA

    rst $38
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00C_75EE

jr_00C_7588:
    ld h, c
    ld l, c
    ld l, h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    cp $6D
    ld h, c
    ld a, d

jr_00C_7595:
    ld h, l
    ld l, $FE
    db $FD
    and c

jr_00C_759A:
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    ret z

    ld d, d
    and [hl]
    ld d, h
    ld h, c

jr_00C_75A3:
    ld l, e
    ld h, l
    jr nz, jr_00C_7608

    jr nz, jr_00C_7615

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_00C_760F

    ld [hl], h
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_00C_761C

    ld h, c
    ld [hl], h
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l

jr_00C_75C6:
    and d
    sbc b
    ld b, c
    and [hl]

jr_00C_75CA:
    ld c, h
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_00C_763D

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    rst $38
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00C_7656

    ld l, e
    ld [hl], l
    ld l, h
    ld l, h
    ld l, $FE

jr_00C_75E9:
    ld c, c
    ld [hl], h
    jr nz, jr_00C_7655

    ld h, c

jr_00C_75EE:
    ld [hl], e
    jr nz, @+$72

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, d
    ld l, c
    ld h, a
    jr nz, jr_00C_7670

    ld h, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc c
    ld b, l
    and d

jr_00C_7608:
    ret z

    ld d, d
    and [hl]
    ld d, e
    ld h, e
    ld h, c
    ld [hl], d

jr_00C_760F:
    ld h, l
    ld h, h
    jr nz, jr_00C_768C

    ld h, l
    ld [hl], h

jr_00C_7615:
    ccf
    cp $FD
    and c
    ld e, e
    dec c
    ld b, l

jr_00C_761C:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld h, [hl]
    jr nz, jr_00C_769B

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, e
    ld c, $45
    and d
    ret z

    ld d, d
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, @+$79

    ld h, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a

jr_00C_763D:
    jr nz, jr_00C_76A0

    rst $38
    ld [hl], e
    ld l, e
    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_00C_76A8

    ld [hl], e
    jr nz, jr_00C_76AB

    jr nz, jr_00C_76B4

    ld h, c
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    rrca
    ld b, l

jr_00C_7655:
    and d

jr_00C_7656:
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_00C_76D7

    ld l, a
    ld [hl], l
    jr nz, jr_00C_76C8

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    rst $38
    ld h, c
    jr nz, jr_00C_76DD

    ld l, e
    ld [hl], l
    ld l, h
    ld l, h
    ld l, $FE

jr_00C_7670:
    db $FD
    and c
    ld e, e
    db $10
    ld b, l
    and d
    ret z

    ld d, d
    and [hl]
    ld c, c
    jr nz, jr_00C_76E0

    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_00C_76EE

    ld [hl], h
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, @+$64

    ld h, c

jr_00C_768C:
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld hl, $FDFE
    and c
    ld e, e
    ld de, $A245
    sbc b
    ld b, c
    and [hl]

jr_00C_769B:
    ld c, c
    ld [hl], h
    jr nz, jr_00C_770B

    ld l, a

jr_00C_76A0:
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_00C_7706

    ld h, d
    ld l, a
    ld [hl], l

jr_00C_76A8:
    ld [hl], h
    rst $38
    ld [hl], h

jr_00C_76AB:
    ld l, b
    ld h, l
    jr nz, @+$75

    ld l, c
    ld a, d
    ld h, l
    jr nz, jr_00C_7723

jr_00C_76B4:
    ld h, [hl]
    jr nz, jr_00C_7718

    ld l, [hl]
    cp $45
    ld h, l
    ld h, d
    ld l, c
    ld [hl], h
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    rst $38
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], e

jr_00C_76C8:
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    cp $70
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld l, b
    ld h, c

jr_00C_76D7:
    ld [hl], d
    ld l, l
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e

jr_00C_76DD:
    ld l, $FE
    db $FD

jr_00C_76E0:
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    ret z

    ld d, d
    and [hl]
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00C_7762

jr_00C_76EE:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00C_776B

    ld h, c
    ld [hl], e
    rst $38
    ld sp, $2035
    ld h, [hl]
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_00C_7774

    ld h, c
    ld l, h
    ld l, h
    ld hl, $FDFE

jr_00C_7706:
    and c
    ld e, e
    inc de
    ld b, l
    and d

jr_00C_770B:
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld c, e
    inc l
    jr nz, jr_00C_777C

    ld [hl], h
    jr nz, @+$6A

    ld h, c
    ld h, h

jr_00C_7718:
    jr nz, jr_00C_777B

    rst $38
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_00C_778F

jr_00C_7723:
    ld l, a
    ld l, [hl]
    ld h, a
    cp $6E
    ld h, l
    ld h, e
    ld l, e
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc d
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_00C_7796

    ld h, h
    ld [hl], d
    ld h, c
    inc l
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_00C_77AE

    ld h, l
    ld h, l
    ld l, [hl]
    cp $74
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00C_77C0

    ld l, a
    ld [hl], d
    rst $38
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l

jr_00C_7762:
    jr nz, jr_00C_77D7

    ld l, a
    ld l, l
    ld h, l
    cp $74
    ld l, c
    ld l, l

jr_00C_776B:
    ld h, l
    ld l, $20
    ld b, h
    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    rst $38

jr_00C_7774:
    ld b, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_00C_777B:
    ld h, l

jr_00C_777C:
    ld [hl], e
    jr nz, jr_00C_77E3

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    cp $69
    ld l, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$6A

    ld h, l
    ld [hl], d

jr_00C_778F:
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec d
    ld b, l

jr_00C_7796:
    and d
    ret z

    ld d, d
    and [hl]
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld d, $45
    and d
    jr c, @+$53

    and [hl]
    ld d, e

jr_00C_77AE:
    ld l, b
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00C_7822

    ld l, a
    ld [hl], h
    jr nz, jr_00C_782C

    ld l, a
    rst $38
    ld h, d
    ld h, l
    jr nz, jr_00C_7827

    ld l, [hl]
    ld [hl], h

jr_00C_77C0:
    ld l, c
    ld l, l
    ld l, c
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    rla
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l

jr_00C_77D7:
    ld l, $FE
    db $FD
    and c
    ld e, e
    jr @+$47

    and d
    jr c, jr_00C_7832

    and [hl]
    ld d, a

jr_00C_77E3:
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00C_7855

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00C_7862

    ld h, l
    ld h, l
    rst $38
    ld l, c
    ld h, [hl]
    jr nz, jr_00C_7869

    ld l, b
    ld h, l
    jr nz, jr_00C_785D

    ld h, c
    ld l, [hl]
    cp $61
    halt
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_00C_7878

    ld l, b
    ld h, l
    jr nz, jr_00C_785B

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00C_7875

    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    cp $63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc l
    jr nz, jr_00C_7893

    ld l, b
    ld h, c
    ld [hl], h

jr_00C_7822:
    jr nz, jr_00C_7892

    ld l, a
    rst $38
    ld l, a

jr_00C_7827:
    ld l, [hl]
    ld h, l
    jr nz, @+$65

    ld h, c

jr_00C_782C:
    ld l, [hl]
    jr nz, jr_00C_7894

    ld [hl], e
    ld h, e
    ld h, c

jr_00C_7832:
    ld [hl], b
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00C_78BB

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, e
    ld a, [de]
    ld b, l
    and d
    jr c, @+$53

    and [hl]

jr_00C_7855:
    ld c, [hl]
    ld l, a
    jr nz, @+$71

    ld l, [hl]
    ld h, l

jr_00C_785B:
    jr nz, jr_00C_78C5

jr_00C_785D:
    ld h, c
    ld [hl], e
    jr nz, jr_00C_78C6

    halt

jr_00C_7862:
    ld h, l
    ld [hl], d
    rst $38
    ld l, h
    ld h, l
    ld h, [hl]
    ld [hl], h

jr_00C_7869:
    jr nz, jr_00C_78D3

    ld h, l
    ld [hl], d
    ld h, l
    cp $77
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l

jr_00C_7875:
    ld [hl], h
    ld l, $2E

jr_00C_7878:
    ld l, $FE
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$6B

    ld l, [hl]
    jr nz, jr_00C_78F7

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and c
    ld e, e

jr_00C_7892:
    dec de

jr_00C_7893:
    ld b, l

jr_00C_7894:
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $2121
    ld hl, $2121
    cp $FD
    and c
    ld e, a
    nop
    inc bc
    ld b, l
    ld c, b
    ld a, [bc]
    nop
    ld b, b
    ld c, b
    ld a, [bc]
    ld b, $40
    ld c, b
    ld a, [bc]
    inc c
    ld b, b
    ld c, b
    ld a, [bc]
    ld [de], a
    ld b, b

jr_00C_78BB:
    ld c, b
    ld a, [bc]
    jr @+$42

    ld bc, $1811
    ld c, b
    ld a, [de]
    inc l

jr_00C_78C5:
    ld d, c

jr_00C_78C6:
    ld bc, $180F
    ld c, b
    ld a, [de]
    inc l
    ld d, c
    or e
    ld sp, $01C7
    and d
    sbc b

jr_00C_78D3:
    ld b, c
    and [hl]
    ld b, c
    jr nz, @+$64

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$01

    ld h, e
    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b

jr_00C_78F7:
    ld b, c
    ld c, d
    inc b
    inc c
    ld b, $79
    inc c
    ld l, $79
    inc c
    ld b, e
    ld a, c
    inc c
    ld a, l
    ld a, c
    and [hl]
    ld b, l
    halt
    ld h, l
    ld l, [hl]
    jr nz, jr_00C_7981

    ld l, b
    ld h, l
    jr nz, @+$79

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_00C_798D

    ld h, c
    ld h, h
    ld l, c
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    cp $68
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $FDFE
    ld c, c
    or a
    ld a, c
    and [hl]
    ld c, a
    ld d, l
    ld b, e
    ld c, b
    ld hl, $4820
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_00C_79A3

    ld l, a
    ld [hl], h
    ld hl, $FDFE
    ld c, c
    or a
    ld a, c
    and [hl]
    ld d, e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00C_79AB

    ld l, [hl]
    ld h, h
    jr nz, @+$74

    ld l, a
    ld h, e
    ld l, e
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$63

    ld [hl], e
    cp $66
    ld h, c
    ld [hl], d
    jr nz, jr_00C_79C7

    ld [hl], e
    jr nz, jr_00C_79DD

    ld l, b
    ld h, l
    jr nz, @+$67

    ld a, c
    ld h, l
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, @+$75

    ld h, l
    ld h, l
    ld hl, $FDFE
    ld c, c
    or a
    ld a, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l

jr_00C_7981:
    jr nz, jr_00C_79F6

    ld [hl], l
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, @+$01

    ld [hl], d
    ld h, l
    ld h, [hl]
    ld l, h

jr_00C_798D:
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_00C_7A04

    ld h, [hl]
    ld h, [hl]
    cp $74
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00C_7A10

    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_00C_7A1A

jr_00C_79A3:
    ld h, c
    ld l, h
    ld l, h
    rst $38
    ld l, b
    ld [hl], l
    ld [hl], d
    ld [hl], h

jr_00C_79AB:
    ld [hl], e
    jr nz, jr_00C_7A1B

    ld a, c
    jr nz, jr_00C_7A16

    ld a, c
    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc bc
    inc c

jr_00C_79C7:
    rst $08
    ld a, c
    inc c
    inc bc
    ld a, d
    inc c
    ld c, b
    ld a, d
    and [hl]
    ld c, c
    jr nz, jr_00C_7A3B

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_00C_7A4C

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, [hl]

jr_00C_79DD:
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_00C_7A46

    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    jr nz, jr_00C_7A4A

    ld [hl], d
    ld h, l
    cp $61
    jr nz, jr_00C_7A63

    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, @+$01

    ld h, h

jr_00C_79F6:
    ld h, l
    ld l, h
    ld l, c
    ld h, e
    ld h, c
    ld h, e
    ld a, c
    ld l, $FE
    db $FD
    ld c, c
    add b
    ld a, d
    and [hl]

jr_00C_7A04:
    ld c, b
    ld [hl], d
    ld l, l
    ld l, l
    ld l, $2E
    ld l, $69
    ld h, [hl]
    jr nz, @+$76

    ld l, b

jr_00C_7A10:
    ld h, l
    ld [hl], d
    ld h, l
    rst $38
    ld l, c
    ld [hl], e

jr_00C_7A16:
    jr nz, jr_00C_7A79

    jr nz, jr_00C_7A7D

jr_00C_7A1A:
    ld h, c

jr_00C_7A1B:
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], e

jr_00C_7A1F:
    jr nz, jr_00C_7A1F

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_00C_7A9C

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$01

    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00C_7A96

    ld h, l
    jr nz, jr_00C_7AAE

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d

jr_00C_7A3B:
    cp $6E
    ld h, l
    ld h, c
    ld [hl], d
    ld h, d
    ld a, c
    ld hl, $FDFE
    ld c, c

jr_00C_7A46:
    add b
    ld a, d
    and [hl]
    ld c, c

jr_00C_7A4A:
    jr nz, jr_00C_7AC3

jr_00C_7A4C:
    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_00C_7ABC

    ld h, [hl]
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00C_7ABF

    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], e
    jr nz, jr_00C_7ACB

jr_00C_7A63:
    ld h, c
    ld [hl], e
    cp $73
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_00C_7AD5

    ld l, [hl]
    jr nz, jr_00C_7AD8

    ld [hl], h
    ld [hl], e
    jr nz, @+$01

    ld [hl], e
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    inc l

jr_00C_7A79:
    jr nz, @+$76

    ld l, a
    ld l, a

jr_00C_7A7D:
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc bc
    inc c
    sbc b
    ld a, d
    inc c
    jp z, $0C7A

jr_00C_7A96:
    jr jr_00C_7B13

    and [hl]
    ld c, c
    jr nz, @+$6A

jr_00C_7A9C:
    ld h, c
    halt
    ld h, l
    jr nz, jr_00C_7B15

    ld l, b
    ld h, l
    jr nz, jr_00C_7B1A

    ld [hl], d
    ld h, a
    ld h, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00C_7B10

    ld l, h

jr_00C_7AAE:
    ld l, c
    ld l, l
    ld h, d
    jr nz, @+$63

    cp $67
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$01

    ld h, d

jr_00C_7ABC:
    ld h, l
    ld h, c
    ld l, [hl]

jr_00C_7ABF:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h

jr_00C_7AC3:
    ld l, e
    ld l, $FE
    db $FD
    ld c, c
    ld c, h
    ld a, e
    and [hl]

jr_00C_7ACB:
    ld c, c
    jr nz, jr_00C_7B45

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_00C_7B3E

jr_00C_7AD5:
    ld h, [hl]
    jr nz, @+$01

jr_00C_7AD8:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00C_7B48

    ld [hl], e
    jr nz, jr_00C_7B43

jr_00C_7AE2:
    jr nz, jr_00C_7AE2

    ld h, a
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, jr_00C_7B5E

    ld h, l
    ld h, h
    jr nz, jr_00C_7B10

    rst $38
    ld h, [hl]
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_00C_7AF7:
    jr nz, jr_00C_7B5A

    ld [hl], h
    jr nz, jr_00C_7B70

    ld l, b
    ld h, l

jr_00C_7AFE:
    jr nz, jr_00C_7AFE

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00C_7B7C

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$01

    ld [hl], b
    ld l, h
    ld h, c

jr_00C_7B10:
    ld l, [hl]
    ld [hl], h
    ccf

jr_00C_7B13:
    cp $FD

jr_00C_7B15:
    ld c, c
    ld c, h
    ld a, e
    and [hl]
    ld d, h

jr_00C_7B1A:
    ld l, b
    ld h, l
    jr nz, jr_00C_7B92

    ld l, b
    ld l, a
    ld [hl], d

jr_00C_7B21:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_00C_7B94

    ld l, [hl]
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00C_7B9D

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00C_7B94

    ld [hl], d
    ld h, l
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00C_7BAE

    ld l, c
    ld a, d
    ld h, l

jr_00C_7B3E:
    jr nz, jr_00C_7BAF

    ld h, [hl]
    jr nz, jr_00C_7BB0

jr_00C_7B43:
    ld a, c
    rst $38

jr_00C_7B45:
    ld l, b
    ld h, l
    ld h, c

jr_00C_7B48:
    ld h, h
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    jr c, jr_00C_7AF7

    inc b
    dec b
    nop

jr_00C_7B5A:
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00C_7B5E:
    db $D3
    ret nc

    rlca
    ld c, $D3
    ret nc

    rlca
    ld bc, $4645
    rrca
    nop
    jr c, @-$5E

    ld [$0005], sp
    add hl, de

jr_00C_7B70:
    rst $20
    ld b, [hl]
    add e
    ld h, $D0
    ld [$260C], sp
    ret nc

    ld bc, $4508

jr_00C_7B7C:
    ld b, [hl]
    rrca
    nop
    jr c, jr_00C_7B21

    db $10
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    cp $D0
    ld [$FE07], sp
    ret nc

    ld [$450E], sp
    ld b, [hl]

jr_00C_7B92:
    rrca
    nop

jr_00C_7B94:
    jr c, @-$5E

    jr nz, jr_00C_7B9D

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00C_7B9D:
    jp hl


    ret nc

    dec b
    ld [$D0E9], sp
    rlca
    rla
    ld b, l
    ld b, [hl]
    rrca
    nop
    jr c, @-$5E

    add b
    dec b
    nop

jr_00C_7BAE:
    add hl, de

jr_00C_7BAF:
    rst $20

jr_00C_7BB0:
    ld b, [hl]
    add e
    rst $08
    pop de
    add hl, bc
    ld a, [bc]
    rst $08
    pop de
    rrca
    dec c
    ld b, l
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
