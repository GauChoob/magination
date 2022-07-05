; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    nop
    nop
    nop
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
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $007F
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
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
    rst $38
    nop
    rst $38
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
    ld [bc], a
    ld bc, $0708
    db $10
    rrca
    ld b, b
    ccf
    add b
    ld a, a
    inc e
    nop
    ld l, a
    db $10
    adc a
    ld [hl], b
    rla
    add sp, $0B
    db $F4
    inc bc
    db $FC
    dec b
    ld a, [$FD02]
    nop
    nop

jr_024_4072:
    ldh [rP1], a
    ld a, [$FB04]
    ld b, $F7
    ld c, $EF
    ld e, $DD
    ld a, $BB
    ld a, h
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
    rst $38
    nop
    pop hl
    jr @-$3B

    jr c, jr_024_4072

jr_024_4097:
    jr c, jr_024_4097

    add hl, sp
    db $FD
    ld a, [hl-]
    cp $39
    db $FC
    dec sp
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $83
    ld a, [hl]
    ld b, c
    cp [hl]
    inc bc
    cp $03
    cp $03
    cp $80
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
    db $FC
    nop
    ld bc, $0200
    ld bc, $0304
    ld [$2007], sp
    rra
    ld b, h
    dec sp
    ld [hl-], a
    ld a, l
    rrca
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $FD
    ld d, l
    xor d
    xor e
    ld d, h
    ld e, $E1
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    ld e, $C3
    dec a
    add a
    ld a, e
    adc h
    ld [hl], b
    inc d
    add sp, $24
    ret c

    ld h, h
    sbc b
    and h
    ld e, b
    db $E4
    ret c

    db $E4
    ret c

    db $E4
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_024_4120

jr_024_4120:
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    ldh a, [rP1]
    rst $28
    nop
    ldh [rIF], a
    rst $20
    rrca
    ldh [$0C], a
    inc de
    inc c
    dec hl
    db $10
    dec h
    jr jr_024_4148

    inc e

jr_024_4148:
    ld [de], a
    inc c
    ld bc, $080E
    rlca
    inc b
    inc bc
    db $FC
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    nop
    ld a, a
    ld b, b
    ccf
    jr nz, jr_024_4185

    inc e
    inc bc
    ld bc, $0700
    nop
    nop
    rlca
    nop
    rlca
    rra
    pop hl
    ld [c], a
    rra
    db $F4
    rrca
    db $FC
    rlca
    ld a, b
    rlca
    add hl, bc
    ld b, $C2
    dec b
    db $FC
    inc bc
    ldh a, [rTAC]
    add sp, $07
    ret z

jr_024_4185:
    rla
    sbc b
    scf

jr_024_4188:
    ld a, b
    scf
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    db $E4
    ret c

    db $E4
    ret c

    db $E4
    ret c

    db $E4
    ret c

    and $D8
    and $D8
    and $D8
    ld [c], a
    call c, $003F
    ld a, a
    nop
    rst $00
    nop
    jr jr_024_4188

    ld b, b
    cp a
    or b
    ld c, a
    inc l
    ld d, e
    daa
    ld e, b
    add b
    nop
    ld hl, sp+$00
    db $FC
    nop
    ld a, [hl]
    nop
    add e
    nop
    dec c
    ldh a, [$15]
    ld [$14E9], a
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    ld a, h
    cp e
    ld a, h
    cp e
    ld a, [hl]
    cp c
    ld a, l
    cp d
    ld a, [hl]
    cp c
    pop hl
    inc c
    pop hl
    inc c
    ldh [$0C], a
    db $E3
    inc c
    pop hl
    rrca
    ldh a, [rP1]
    db $FC
    ld [bc], a
    db $FC
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld bc, $0100
    inc bc
    nop
    rlca
    nop
    dec b
    ld [bc], a
    ld [$7606], sp
    nop
    dec hl
    add b
    ld d, l
    add b
    ld a, [hl+]
    ret nz

    dec d
    ldh [$8B], a
    ld [hl], b
    dec b
    ld [hl], b
    ld d, e
    jr nz, @+$26

    nop
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld hl, sp+$37
    ld hl, sp+$37
    db $F4
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    db $FC
    dec sp
    jp nc, $F2EC

    db $EC
    ld a, [c]
    db $EC
    ld a, [c]
    db $EC
    ld a, [c]
    db $EC
    ld a, [c]
    db $EC
    ld a, [c]
    db $EC
    ld a, [c]
    db $EC
    jr nz, @+$5C

    cpl
    ld d, c
    ccf
    ld c, a
    ld a, a
    cpl
    cp $F3
    or $F9
    jp nc, $82ED

    db $FD
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, [hl]
    cp c
    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    db $FD
    db $E3
    db $FD
    inc bc
    db $FD
    add c
    ld a, [hl]
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
    ld [hl], b
    rst $38
    ld a, l
    sbc a
    ld a, e
    sbc e
    ld h, a
    sub b
    ld l, a
    sub b
    ld l, a
    ldh a, [rIF]
    or $61
    xor h
    ld b, e
    ret z

    add a
    ld a, [c]
    pop hl
    cp $F4
    rst $38
    rst $08
    ld l, a
    sbc a
    ld b, a
    cp a
    ld b, c
    cp a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $FF03
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $05FF
    ei
    dec bc
    push af
    cp h
    dec sp
    cp h
    dec sp
    cp [hl]
    dec a
    sbc [hl]
    dec a
    call c, $DF1F
    rra
    rst $18
    rra
    rst $18
    rra
    inc c
    ldh [$0C], a
    ldh [$0D], a
    ldh [$0D], a
    ldh [$09], a
    ldh [$9B], a
    ldh [$F7], a
    ld hl, sp-$11
    ldh a, [$7C]
    nop
    jr jr_024_42D4

jr_024_42D4:
    ld b, d
    add c

jr_024_42D6:
    ld [$10F3], sp
    ei
    ld [de], a
    ld sp, hl
    jr nz, jr_024_42D6

    ld b, d
    ld hl, sp-$04
    ld bc, $00FC
    db $FC
    nop
    db $FD
    nop
    db $FD
    nop
    ldh a, [rSB]
    nop
    ld bc, $01F1
    cp a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    ld a, [hl]
    cp a
    ld a, a
    cp $3F
    xor $1F
    sbc l
    ld h, e
    or a
    ld [$738C], sp
    ld b, $F9
    nop
    ret nz

    nop
    ret nz

    ld bc, $4FC0
    add b
    rra
    add b
    rra
    add b
    ld e, $81
    inc e
    add e
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ldh [rNR23], a
    call nz, $8038
    ld a, h
    nop
    db $FC
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
    jr z, jr_024_435C

    add h
    ld a, b
    ld bc, $00FC
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $2000
    nop

jr_024_435C:
    ld a, b
    nop
    jr c, jr_024_4360

jr_024_4360:
    rla
    jp hl


    cpl
    pop de
    ld e, a
    and c
    cp a
    ld b, c
    ld a, a
    add c
    rst $38
    ld bc, $01FF
    ld a, a
    ld bc, $1FDF
    rst $18
    rra
    rst $18
    rra
    sbc $1F
    sbc $1F
    db $DD
    ld e, $DB
    inc e
    rst $10
    jr jr_024_4360

    ldh [$BF], a
    ret nz

    ld a, [hl]
    add c
    db $FC
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1F], a
    sbc b
    nop
    ld [$00E0], sp
    ldh a, [rNR41]
    ldh a, [$50]
    ldh [$29], a
    add $70
    adc a
    ldh [$1F], a
    rst $38
    nop
    rst $38
    nop
    db $FC
    inc bc
    di
    inc c
    ret nz

    ccf
    push af
    rrca
    ld a, [$F9C7]
    add [hl]
    ld sp, hl
    ld bc, $708D
    inc b
    ld sp, hl
    inc bc
    db $FC
    add b
    ld a, a
    ld e, a
    and b
    ld a, [$FF1D]
    ld a, l
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
    cp $18
    add a
    inc d
    adc a
    inc c
    add a
    ld [bc], a
    add a
    add d
    rlca
    ld b, $03
    ld bc, $0303
    ld bc, $FC02
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
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
    add b
    ret nz

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
    ld bc, $0400
    inc bc
    ld [$0E07], sp
    ld bc, $0304
    db $10
    rrca
    jr nz, jr_024_4435

    add b
    ld a, a
    nop
    ldh a, [$08]
    rst $20
    rra
    rst $08
    rra
    ret nz

    ld [bc], a
    db $FD
    ld bc, $02FE
    db $FC
    inc b
    ld hl, sp+$03
    nop
    ld [$80F0], sp
    rst $38
    db $FD
    ld a, a
    add $00
    ld h, l

jr_024_4433:
    ld c, $5E

jr_024_4435:
    rrca
    rst $08
    rra
    jp $001F


    rra
    ld bc, $10DE
    rst $08
    ld e, $01
    rst $00
    nop
    ld [hl], c
    add b
    add [hl]
    ld hl, sp-$08
    rst $38
    ld a, a
    rst $38
    add a
    ld a, a
    ld [hl], c
    adc a
    jr nz, @-$1F

    jr nz, jr_024_4433

    jr nz, jr_024_4435

    ld hl, $43DF
    cp [hl]
    add e
    ld a, [hl]
    dec b
    cp $49
    cp $3F
    rst $38
    ld a, a
    cp $7E
    db $FD
    ld a, a
    inc a
    ccf
    ld [$010F], sp
    rlca
    ld bc, $0307
    ld bc, $C13F
    ccf
    add d
    ld a, a
    dec b
    cp $07
    db $FC
    dec bc
    db $FC
    ld d, $F8
    inc c
    ldh a, [$7E]
    add c
    db $F4
    dec bc
    ld [c], a
    dec e
    pop bc
    ld a, $D4
    ccf
    xor d
    ld a, a
    sub h
    ld a, a
    pop bc
    ld a, $DE
    jr nz, jr_024_4501

    sub b
    cp h
    ld b, b
    ld [hl], e
    nop
    inc c
    inc bc
    or a
    rrca
    ld e, b
    daa
    or h
    ld a, e
    ld e, [hl]
    and b
    xor b
    ld d, b
    inc [hl]
    nop
    ld [c], a
    inc e
    ld e, c
    cp [hl]
    ld hl, $2BDE
    call nc, Call_024_6A95
    ld h, c
    nop
    and c
    ld [hl], b
    ld a, b
    ldh a, [$F1]
    ld hl, sp-$3E
    ld hl, sp+$03
    ld hl, sp-$7E
    ld a, c
    add hl, bc
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    rrca
    nop
    rlca
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
    ldh [$85], a
    ld h, b
    jp z, $EF20

    nop
    ld l, d
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_024_4501:
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    rlca
    pop hl
    nop
    pop hl
    inc bc
    rst $30
    inc bc
    rst $30
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc b
    inc bc
    ld c, $F1
    rlca
    ld a, b
    inc hl
    sbc h
    ret nc

    rst $08
    pop hl
    adc $E8
    rst $00
    db $E4
    jp $DC2F


    cp b
    ld a, a
    ld d, b
    ccf
    jr nc, jr_024_4555

    db $10
    rra
    adc b
    rra
    ld c, b
    ld e, $BB
    inc c
    ldh a, [$0C]
    inc hl
    ld bc, $0050
    jr z, jr_024_4546

jr_024_4546:
    ld [hl], l
    nop
    ld a, [hl+]
    nop
    push bc
    nop
    add sp, $10
    pop hl
    ld e, $FB
    db $F4
    rst $30
    ld l, c
    cpl

jr_024_4555:
    ld de, $130F
    rra
    rlca
    rra
    rlca
    rra
    nop
    rra
    rrca
    push bc
    nop
    cp c
    ld b, b
    ld e, d
    and c
    cp l
    ld b, e
    ld e, [hl]
    and e
    xor d
    ld d, a
    ld [$5707], sp
    and b
    ld b, d
    db $FD
    dec b
    ld a, [$14EB]
    ld e, $E1
    inc b
    ei
    cpl
    db $D3
    ld d, a
    xor b
    db $FD
    inc bc
    ld e, a
    and b
    rst $30
    ld e, $3B
    cp $C7
    ld a, [$FE71]
    call $0FFE
    ldh a, [rIE]
    db $FC
    ld de, $85E2
    ld [bc], a
    adc l
    jp nz, $C6E9

    jp hl


    add $EB
    call nz, $C4E3
    inc hl
    ret nz

    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld bc, $0203
    ld bc, $0103
    inc bc
    ld bc, $C6F9
    rst $38
    rst $18
    rst $38
    rst $18
    rst $28
    rst $18
    ld c, $FF
    db $ED
    di
    rst $20
    rst $38
    rst $20
    rst $38
    adc d
    ld a, l
    ld c, h
    or e
    sub h
    adc e
    sbc b
    add a
    ld d, h
    adc e
    adc b
    rst $00
    ret nc

    rst $08
    ret z

    rst $20
    ret nc

    ccf
    xor d
    ld a, a
    ld d, e
    cp h
    ld a, h
    add e
    jp z, $E53F

    rra
    xor d
    ld e, a
    xor b
    ld e, a
    add b
    rra
    jp nz, $151F

    rrca
    add d
    rrca
    push bc
    rrca
    ldh [rIF], a
    db $EB
    inc b
    and h
    ld b, e
    db $F4
    rlca
    db $F4
    rlca
    ldh a, [rTAC]
    db $F4
    inc bc
    rst $20
    nop
    call nz, $3203
    ld bc, $00F9
    rlca
    ei
    inc b
    ei
    ld c, $F1
    pop af
    ld c, $00
    rst $38
    ld bc, $82FE
    db $FD
    ld c, h
    di
    push bc
    ld a, [$F63D]
    db $EB
    cp $5B
    cp $B7
    ld a, [hl]
    push hl
    ld e, $7F
    add b
    inc de
    db $EC
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8007], sp
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld bc, $0001
    sub c
    ld h, b
    ld [$10F0], sp
    ld hl, sp+$04
    ld hl, sp+$02
    db $FC
    inc b
    cp $FB
    rst $30
    ei
    rst $30
    ld h, b
    ld a, [c]
    adc c
    ld h, b
    rra
    nop
    ld a, [hl]
    nop
    add hl, sp
    nop
    daa
    nop
    ret nz

    rst $20
    adc b
    rst $00
    jr c, jr_024_467D

    ldh [rIF], a
    sub b
    rrca
    ld c, c
    ld d, $F4

jr_024_467D:
    dec bc
    jp c, $D405

    cpl
    call nc, $E92F
    rla
    add sp, $17
    push af
    dec bc
    ld a, [$6701]
    nop
    sbc a
    nop
    dec hl
    rst $30
    ld e, c
    rst $30
    inc h
    ei
    sub d
    db $FD
    ld b, a
    ld hl, sp+$38
    rst $00
    push bc
    ccf
    adc d
    ld a, a
    inc bc
    db $FC
    inc bc
    db $FC
    add c
    cp $41
    cp $A6
    ld a, c
    ret z

    scf
    ldh a, [rIF]
    ldh a, [rIF]
    sub b
    ld l, a
    ld h, h
    rra
    add hl, de
    rlca
    add [hl]
    ld bc, $00E0
    db $FC
    nop
    cp $00
    cp $00
    ld hl, $21DE
    sbc $41
    cp [hl]
    ld b, l
    cp [hl]
    cp e
    ld a, h
    jr c, jr_024_46CC

jr_024_46CC:
    nop
    nop
    ld a, h
    nop
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ldh [$C0], a
    ret nz

    nop
    ret nz

    add b
    inc b
    add e
    nop
    nop
    nop
    nop
    nop
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
    ldh [rSB], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    ccf
    nop
    rra
    rst $20
    dec de
    rst $20
    inc d
    rst $28
    ccf
    rst $08
    cpl
    rst $18
    ld a, a
    sbc a
    ld h, [hl]
    cp a
    add hl, sp
    cp $EF
    rst $38
    rst $38
    rst $28
    ld d, [hl]
    rst $28
    cp e
    call c, $BEFF
    ld a, a
    cp [hl]
    cp [hl]
    ld a, [hl]
    rst $08
    db $FC
    add b
    rlca
    add h
    rlca
    add d
    rlca
    ld d, [hl]
    ld bc, $104F
    ld c, c
    ld d, $88
    rla
    adc b
    rla
    nop
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rP1], a
    ldh [$E0], a
    nop
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld d, e
    inc a
    cp a
    nop
    ld [bc], a
    cp $02
    cp $0C
    cp $12
    db $FC
    sbc $E0
    db $FC
    nop
    ldh [rP1], a
    inc bc
    nop
    nop
    nop
    ret nc

    rrca
    and b
    rra
    and b
    rra
    ld b, b
    ccf
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    dec a
    ld [bc], a
    adc [hl]
    ld bc, $E010
    ld [$04F0], sp
    ld hl, sp+$04
    ld hl, sp+$0C
    ldh a, [$08]
    db $F4
    nop
    nop
    ld b, b
    ccf
    ld h, b
    ccf
    ld b, b
    ccf
    ld h, b
    ccf
    ld b, b
    ccf
    ld h, b
    ccf
    ld e, h
    ccf
    ld bc, $0000
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $80
    cp $17
    rst $28
    add hl, bc
    rst $30
    rlca
    ld hl, sp+$03
    db $FC
    ld b, $F9
    ld [$10F7], sp
    rst $28
    and c
    ld e, [hl]
    db $FD
    rst $38
    db $FD
    rst $38
    dec de
    rst $38
    di
    rrca
    nop
    rst $38
    db $10
    db $E3
    nop
    call z, $3F00
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    ld bc, $1FFE
    ldh [rSCX], a
    inc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    db $FC
    inc bc
    ret nz

    ld a, $DF
    rst $38
    rst $18

jr_024_47E3:
    rst $38
    db $EC
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld [$0007], sp
    ldh a, [$E8]
    rst $30
    sub b
    rst $28
    ldh [$1F], a
    ret nz

    ccf
    ld h, b
    sbc a
    jr jr_024_47E3

    rrca
    ldh a, [$27]
    jr jr_024_4801

jr_024_4801:
    rst $38
    ld [hl-], a
    adc l
    inc e
    add c
    ld a, $81
    ld a, h
    add e
    ld l, h
    add e
    inc l
    jp $C13E


    nop
    rst $38
    inc [hl]
    ret


    ld e, d
    add c
    ld e, d
    add c
    ld l, $91
    ld [hl+], a
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $0707
    rrca
    rrca
    nop
    nop
    ld c, $0E
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    di
    ldh a, [$F9]
    ld hl, sp+$7D
    ld a, h
    ld b, $07
    pop hl
    ldh [rIE], a
    cp $FE
    cp $FE
    rst $38
    rst $38
    rst $20
    rst $28
    rst $20
    set 4, a
    adc c
    rst $20
    sub c
    ld l, [hl]
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc a
    jp $FFFF


    rst $38
    add b
    add b
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    pop hl
    cp [hl]
    pop hl
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld bc, $FF01
    ld h, c
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    rrca
    push af
    rrca
    push af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [rIE], a
    rst $38
    ret nz

    add b
    add b
    rst $38
    sbc l
    ld [c], a
    sbc c
    and $98
    rst $20
    sub b
    rst $28
    sub d
    db $ED
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
    ld a, a
    ccf
    ld a, a
    ccf
    ld b, b
    ccf
    inc h
    pop bc
    inc h
    pop bc
    inc l
    pop bc
    ld h, h
    add c
    ld h, $C1
    inc l
    jp $834C


    ld c, b
    add e
    ld [hl], $89
    ld d, h
    adc c
    inc d
    add c
    inc e
    add c
    ld c, d
    sub c
    ld c, b
    sub c
    ld b, b
    sbc c
    ld [bc], a
    reti


    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $1F1F
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $20
    rst $28
    rst $20
    rst $20
    rst $28
    rst $30
    rst $28
    rst $28
    rst $20
    rst $28
    rst $20
    ccf
    add b
    pop hl
    cp $F2
    ld a, [c]
    di
    di
    di
    di
    di
    di
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop hl
    cp [hl]
    ldh [$BF], a
    pop hl
    cp [hl]
    pop hl
    cp [hl]
    pop hl
    cp [hl]

jr_024_49BA:
    ldh [$BF], a
    ldh [$BF], a
    pop hl
    cp [hl]
    rla
    db $ED
    rla
    db $ED
    rlca
    db $FD
    rrca
    pop af
    inc de

jr_024_49C9:
    pop af
    dec de
    pop af
    rrca

jr_024_49CD:
    db $FD
    rlca
    db $FD
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    ldh [$E0], a
    jr nz, jr_024_49BA

    nop
    ldh [$80], a

jr_024_49DD:
    ld a, a
    sbc a
    ld a, a
    sub b
    rst $28
    sbc b
    rst $20
    sbc [hl]
    pop hl
    sbc h
    db $E3
    add b
    rst $38
    and b
    ret nz

    add b
    rst $38
    rst $38
    rst $38
    ld b, b
    ccf
    ld c, a
    jr nc, @+$46

    jr nc, jr_024_4A3F

    scf
    ld c, a
    jr nc, jr_024_4A3F

    jr nc, @+$46

    jr nc, @+$46

    jr nc, jr_024_4A09

    jp $814A


    ld e, b
    add e
    jr jr_024_49C9

    ld a, b

jr_024_4A09:
    add c
    jr c, jr_024_49CD

    inc l
    pop bc
    inc [hl]
    ret


    ld a, [bc]
    pop de
    ld a, [de]
    pop bc
    inc c
    jp $C314


    jr nz, jr_024_49DD

    ld [hl], b
    add e
    ld a, [de]
    pop bc
    ld a, b
    add e
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop

jr_024_4A3F:
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    rra
    rra
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$49
    add sp, -$49
    add sp, -$49
    and b
    rst $38
    rst $38
    add b
    add b
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    rla
    db $ED
    rla
    db $ED
    rla
    db $ED
    dec b
    rst $38
    rst $38
    ld bc, $FF01
    ld h, c
    rst $38
    rst $38
    rst $38
    rra
    ldh [$1F], a
    ldh [$9F], a
    ldh [$1F], a
    ldh [$DF], a
    jr nz, @-$0F

    db $10
    rst $28
    db $10
    ldh [rNR10], a
    nop
    nop
    nop
    nop
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
    ld hl, sp-$04
    ld c, a
    jr nc, jr_024_4B72

    nop
    ld e, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ld b, b
    ld a, h
    add c
    inc a
    pop bc
    ld a, [hl-]
    add c
    ld [de], a
    add c
    nop
    add c
    nop
    rst $38
    ld a, [hl]
    add c
    nop
    rst $38
    ld a, d
    add c
    halt
    adc c
    ld a, $81
    inc e
    add c
    nop
    add c
    nop
    rst $38
    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF

jr_024_4B72:
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra

jr_024_4BB6:
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $FFE0
    rst $38
    ldh [$F0], a
    rst $28
    rst $38
    ldh [$3F], a
    ldh [rNR10], a
    ldh [$80], a
    ld a, a
    sbc a
    ld a, a
    nop
    db $FC
    ld hl, sp+$00
    jr z, jr_024_4BB6

    add sp, $10
    db $E4
    jr jr_024_4C0F

    jr jr_024_4BED

jr_024_4BED:
    db $FC
    ld hl, sp-$04
    nop
    ld a, a
    ld a, a
    nop
    ld e, a
    jr nz, jr_024_4C56

    jr nz, jr_024_4C58

    jr nz, jr_024_4C4B

    jr nz, jr_024_4C0D

    ld h, b
    nop
    nop
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b

jr_024_4C0D:
    inc bc
    nop

jr_024_4C0F:
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

jr_024_4C4B:
    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra

jr_024_4C56:
    ld hl, sp+$0F

jr_024_4C58:
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $E01F
    rra
    ldh [$9F], a
    ldh [$9F], a
    ldh [$9F], a
    ldh [$9F], a
    ldh [$9F], a
    ldh [rP1], a
    ldh [$F8], a
    db $FC
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    rst $38
    rst $38
    jr z, @+$01

    adc l
    ld a, [c]
    scf
    ret z

    ret nz

    rst $38
    cp a
    ret nz

    add b
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra

jr_024_4DB6:
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $FF00
    sbc a
    ld h, b
    db $10
    rst $28
    sbc a
    ld h, b
    sbc a
    ld h, b
    sub b
    ld h, b
    and b
    ld b, b
    nop
    nop
    nop
    db $FC
    ld hl, sp+$00
    jr z, jr_024_4DB6

    add sp, $10
    db $E4
    jr jr_024_4E0F

    jr @+$12

    inc c
    nop
    nop
    ret nz

    rst $38
    rst $08
    rst $38
    set 7, a
    ret nz

    rst $38
    rst $08
    rst $38
    set 7, a
    set 7, a
    set 7, a
    rst $38
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop

jr_024_4E0F:
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $E7D9
    cp h
    jp $3EC1


    ld a, $81
    inc b
    add c
    inc b
    add c
    inc b
    add c
    inc b
    add c
    rst $38
    rst $38
    ret nz

    adc b
    add b
    adc b
    adc b
    ldh a, [$84]
    or b
    add b
    adc a
    add d
    add b
    add b
    add e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    dec a
    ld a, a
    ld b, c
    ld a, a
    ld a, l
    ld a, a
    dec a
    ld a, a
    ld b, c
    ld a, a
    rst $38

Jump_024_4F01:
    ld a, a
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $7FFF
    cp $3F
    db $FC
    rra
    ld hl, sp+$0F
    ldh [rIF], a
    ret nz

    rlca
    add b
    inc bc
    nop
    ld bc, $8104
    inc b
    add c
    inc b
    add c
    inc b
    add c
    inc b
    add c
    add l
    nop
    rst $20
    add c
    rst $38
    jp $BA84


    add b
    jp nz, $8280

    add h
    cp d
    add b
    jp nz, $FFFF

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld [hl], b
    ld a, a
    ld c, e
    ld a, a
    rlca
    ld a, a
    scf
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
    nop
    rrca
    nop
    inc e
    inc bc
    dec de
    rlca
    add hl, de
    dec b
    inc c
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    jr nz, jr_024_507B

    sub b
    or b
    ret z

    ret c

    db $E4
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
    ccf
    ret nz

    ld a, a
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
    ld a, a
    nop
    pop af
    ld a, [bc]
    ld sp, hl
    inc b
    ld hl, sp+$05
    db $FC
    inc bc
    db $FC
    inc bc
    db $FC
    ld [bc], a
    db $FC
    ld bc, $05F8
    nop
    ld a, a
    ld a, a
    add b
    db $FD
    ld a, $CE
    cpl
    ld h, a
    sub a
    inc sp
    ld c, e
    ld de, $1125
    dec l
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    nop
    ld b, b
    and b
    jr nz, jr_024_50AC

    and a
    ret c

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
    ccf

jr_024_507B:
    ld b, b
    rst $00
    daa
    cp b
    cp b
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
    reti


    ld a, $BC
    ld e, a
    xor [hl]
    ld e, a
    or a
    ld c, a
    sbc e
    ld h, a
    adc $31
    ld b, a
    jr c, @+$35

    inc c
    ld d, l
    ld l, $FA
    dec c
    ld h, c
    sbc a
    scf
    res 3, a
    db $E3
    db $DB
    rst $20

jr_024_50AC:
    or h
    ld c, h
    ldh [rNR13], a
    jp nc, Jump_024_772F

    adc a
    or a
    rst $08
    or a
    adc a
    db $D3
    rst $08
    dec d
    cpl
    halt
    adc [hl]
    rla
    rst $28
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
    ld b, $09
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, h
    ld [hl], d
    ld a, $B9
    sbc e
    ld e, h
    rst $08
    jr nc, @-$10

    rra
    rst $00
    scf
    db $E3
    dec de
    ld h, c
    sbc l
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ldh [rNR10], a
    jr jr_024_5190

    adc $D1
    di
    db $F4
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
    rlca
    ld [$528D], sp
    ld bc, $0F02
    db $10
    inc sp
    ld c, e
    ld l, [hl]
    sbc [hl]
    ret c

    add hl, sp
    and b
    ld h, a
    ld c, a
    ret nc

    dec e
    db $E3
    ldh a, [$0A]
    ld de, $D0EF
    jp z, $2F11

    jr c, jr_024_51A0

    rst $38
    nop
    ret nz

    dec [hl]
    and b
    jp c, $DCAB

    ccf
    ld b, c
    or d
    sla l
    ld d, [hl]
    ld h, d
    sub e
    reti


    dec h
    rlca
    or b
    ld a, [bc]
    jp z, $00FF

    rst $38
    rst $38
    ret nz

    ld a, [hl+]
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add b
    cp a
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    add hl, bc
    ld b, $12
    dec c
    dec d
    ld [$0019], sp

jr_024_5190:
    ld a, a
    nop
    or a
    ld a, b
    reti


    and $6E
    sbc a
    db $DD
    ld a, $BE
    ld a, a

jr_024_519C:
    cp b
    ld a, c
    ld h, c
    ld [c], a

jr_024_51A0:
    inc e
    db $E3
    ld [hl], e
    adc e
    rst $18
    ccf
    cp a
    ld a, a
    ld hl, sp+$38
    rst $00
    jr z, jr_024_519C

    db $10
    cp $01
    rst $30
    rrca
    dec sp
    ld b, a
    call c, $E7C3
    ldh [$F8], a
    ld hl, sp+$3E
    cp h
    sbc l
    ld e, h
    pop bc
    ld [hl+], a
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
    rst $08
    cpl
    ld a, a
    ld e, a
    rst $38
    rst $08
    cp $E1
    rrca
    ld d, $09
    rst $30
    db $10
    rst $28
    ccf
    ret nz

    jr nc, jr_024_5261

    jr jr_024_523B

    inc c
    inc de
    rlca
    ld [$0201], sp
    nop
    ld bc, $0000
    ld a, a
    add b
    ld a, h
    ld a, l
    ccf
    cp a
    rrca
    rst $28
    inc bc
    di
    ret nz

    inc a
    ldh a, [rIF]
    inc a
    ld b, e
    rst $38
    nop
    ld hl, sp+$07
    inc e
    ld h, e
    rst $00
    ret c

    ldh a, [$F7]
    db $FD
    db $FC
    ccf

jr_024_523B:
    jr c, jr_024_5249

    ld a, [c]
    dec sp
    rst $00
    or a
    ld c, a
    ld l, a
    sbc a
    or $0E
    ld a, a
    add b
    ret nz

jr_024_5249:
    dec [hl]
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    db $ED
    xor d
    or d
    add hl, bc
    ld d, c
    cp $02
    rrca
    ld [hl], b
    pop hl
    and $FC
    db $FD
    rst $38
    rst $38
    inc d

jr_024_5261:
    dec d
    and c
    and d
    ld d, d
    ld e, l
    and a
    xor e
    dec a
    cp e
    sbc a
    ld e, h
    ld c, [hl]
    xor a
    daa
    ld d, a
    ccf
    ret nz

    rst $18
    ccf
    or b
    jp z, $956A

    cp a
    ret nz

    ld a, a
    rst $38
    rst $38
    nop
    xor b
    rst $38
    inc de
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    ld bc, $0204
    ld [bc], a
    ld bc, $CC43
    ld b, [hl]
    reti


    ld b, h
    db $DB
    and h
    ld a, e
    sub d
    ld a, l
    ret z

    ccf
    ld h, b
    sbc e
    inc [hl]
    rst $08
    inc [hl]
    jp $E112


    add hl, de
    ldh [$3C], a
    ret nz

    ld l, d
    sbc h
    ld e, a
    cp a
    ld c, a
    xor a
    ld b, b
    or b
    ld [hl], e
    adc h
    cp $00
    ret nz

    nop
    add hl, sp
    add hl, sp
    rst $30
    rst $30
    db $EB
    db $EB
    ld d, a
    rla
    cp a
    ccf
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
    inc bc
    inc b
    ld c, $11
    add hl, de
    dec h
    scf
    ld c, a
    ld l, a
    rra
    ld h, [hl]
    ld d, $60
    add hl, de
    jr nc, jr_024_535F

    rst $08
    cpl
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$F5]
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ccf

jr_024_531F:
    ret nz

    di
    db $F4
    db $FC

jr_024_5323:
    db $FD
    cp $FE
    inc a
    cp l

jr_024_5328:
    nop
    jp $FE01


    inc bc
    db $FC
    rst $20
    jr jr_024_5328

    rrca
    db $F4
    inc b
    ld l, b

jr_024_5335:
    sbc e
    ld h, e
    sub h
    add $29
    sbc b
    ld h, a
    or b
    ld c, a
    jr nz, jr_024_531F

    nop
    ld a, [hl+]
    nop
    rst $38
    ld a, a
    add b
    xor d
    ld d, l
    dec b
    ld a, [$FF00]
    rlca
    ld hl, sp+$1F
    ldh [$3F], a
    ccf
    rrca
    rst $08
    add e
    ld [hl], e
    pop hl
    dec e
    ld a, b
    add [hl]
    inc l
    db $D3
    add [hl]
    ld a, b
    ld [c], a

jr_024_535F:
    dec d
    add l
    cp l
    jp z, $ECD7

    pop hl
    push af
    ld a, [$F0F7]
    ld a, e
    ld a, h
    dec sp
    cp h
    ld de, $4F52
    ldh a, [rPCM34]
    adc a
    ret c

    jr c, jr_024_5323

    ld [hl], e
    ld [hl], b
    rst $28
    ld a, d
    push hl
    ccf
    or b
    sbc a
    ld e, a
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
    nop
    nop
    jr jr_024_5335

    ret z

    scf
    ld l, b
    inc de
    jr nc, jr_024_53A3

    jr nc, @+$05

    ld h, b
    rla
    call nz, $C623
    ld hl, $8679
    dec a

jr_024_53A3:
    jp nz, $C03F

    scf
    ret z

    inc sp
    call z, $9661
    ld l, c
    sbc [hl]
    ret z

    cpl
    cp a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    sbc a
    dec b
    push bc
    cp h
    ld b, b
    jp c, $013C

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
    rra
    jr nz, jr_024_5403

jr_024_5403:
    nop
    nop
    nop
    nop
    nop
    ccf

jr_024_5409:
    nop
    ld h, h
    dec de
    ld e, e
    or a
    cp c
    ld [hl], a
    ldh [rNR10], a
    nop
    nop
    ld bc, $1F02
    jr nz, jr_024_5409

    rrca
    rlca
    rst $38
    cp $FE
    db $E3
    db $EC
    ccf
    ld b, b
    ld h, e
    sbc h
    push bc
    ld a, $19
    cp $72
    db $FD
    call nz, $3ADB
    rst $00
    and $1F
    ld h, b
    sub l
    ret nz

    ld a, [hl+]
    ret nz

    dec b
    ret nz

    ld [hl+], a

jr_024_5438:
    ret z

    add hl, bc
    call z, $E62C
    ld d, $73
    adc e
    inc a
    ret nz

    ld l, a
    add c
    rst $10

jr_024_5445:
    ld de, $20A6
    add [hl]
    ld [$19C6], sp
    db $E3
    inc e
    ld [hl], e
    inc c
    ld [hl], c
    ld a, [bc]
    cp c
    add h
    jr jr_024_545B

    inc c
    inc bc
    inc c
    db $E3
    inc c

jr_024_545B:
    ld a, [c]
    inc c
    pop af
    jr jr_024_5445

    inc b
    or a
    ld [$00ED], sp
    cp e
    inc bc
    call c, Call_024_730C
    db $10
    xor b
    jr nz, jr_024_54BE

    nop
    rst $20
    rst $20
    rra
    ccf
    ret nz

    rlca
    jr jr_024_5438

    ld h, $70
    adc b
    inc e
    ld h, e
    rlca
    jr jr_024_5480

    add [hl]

jr_024_5480:
    nop
    ld bc, $0201
    rlca
    ld [$130D], sp
    rla
    cpl
    cpl
    rra
    cpl
    rra
    daa
    rra
    rst $20
    nop
    db $E3
    inc d
    pop de
    ld a, [hl+]
    ld c, e
    or h
    and a
    ret c

    or a
    ret z

    ld a, $41
    ld e, $60
    ret c

    dec sp
    sub l
    ld d, [hl]
    or d
    ld a, c
    or d
    inc a
    ld h, d
    db $EC
    ld h, e
    ld l, h
    pop bc
    adc $C0
    rst $28
    or h
    ld c, h
    ld l, a
    sbc a
    ccf
    ccf
    ld a, b
    nop
    rst $30
    ld [$0E77], sp
    add hl, sp
    add [hl]

jr_024_54BE:
    rst $38
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
    ld bc, $0200
    ld bc, $0103
    inc bc
    ld bc, $0503
    dec b
    inc bc
    dec b
    inc bc
    dec b

jr_024_54EF:
    inc bc
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
    cp b
    ld [hl], a
    xor b
    ld h, a
    xor b
    ld [hl], a
    ld h, h
    cp e
    ld b, a
    sbc b
    add $31
    db $E4
    inc de
    ld l, h
    sbc e
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld b, $F9
    add [hl]
    ld a, c
    inc bc
    db $FC
    ld bc, $00FE
    rst $38
    ld bc, $1CFE
    rst $38
    ldh a, [$F7]
    ld h, e
    db $EC
    inc c
    di

jr_024_5528:
    ld hl, $C7DD
    scf
    sbc a
    ld a, a
    jr c, jr_024_5528

    inc a
    jp nz, $00FF

    ret nz

    ccf
    rra
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    ccf
    ld b, b
    rst $38
    nop
    inc bc
    db $FC
    ldh [$E3], a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    ld hl, sp-$0F
    ld a, [bc]
    add d
    ld b, l

jr_024_5554:
    ld [c], a
    dec c
    inc a
    jp $B887


    ldh a, [$F7]
    db $FC
    db $FC
    rst $38
    rst $38
    rlca
    ret c

    inc c
    or b
    dec de
    ld h, e
    inc [hl]
    push bc
    or e
    ld b, h
    ld sp, hl
    ld b, $1F
    jr nz, jr_024_54EF

    add a
    ret nz

    jr nz, jr_024_55E3

    ld [$C6D8], sp
    halt
    ld [hl], c
    ld a, [de]
    reti


    call nz, $F024
    inc c
    db $FC
    inc bc
    dec de
    daa
    inc c
    ld [de], a
    ld bc, $000D
    ld bc, $0300
    ld [bc], a
    ld bc, $0502
    dec b
    dec bc
    sbc l
    db $E3

jr_024_5592:
    sbc l
    and c
    db $DB
    rst $20
    db $DB
    db $E3
    sub [hl]
    xor [hl]
    xor [hl]
    sbc $DC
    cp l
    dec a
    ld a, h
    add d
    xor l
    and d
    push bc
    ld h, d
    dec d
    ld h, d
    sub l
    ld [c], a
    dec d
    and d
    ld d, l
    and d
    ld d, c
    inc hl
    ret c

    rst $18
    jr nz, jr_024_5592

    jr nz, jr_024_5554

    ld h, b
    cp a
    nop
    adc a
    ld c, a
    ld [hl], b
    adc b
    ccf
    ret nz

    rrca
    ldh a, [rSB]
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
    dec b
    inc bc
    dec b

jr_024_55E3:
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    dec bc
    ld a, [bc]
    rlca
    dec bc
    rlca
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
    inc l
    ld c, e
    ld e, h
    dec sp
    ld e, h
    dec sp
    ld e, h
    dec sp
    ld e, d
    dec a
    ld l, l
    ld e, $36
    ld c, a
    dec sp
    rlca
    add c
    ld a, [hl]
    add d
    ld a, l
    jp nz, Jump_024_723D

    adc l
    ld e, $E1
    ld [bc], a
    db $FD
    jp nz, $BF3D

    ret nz

    ld h, b
    rst $20
    ld b, b
    rst $08
    add b
    sbc a
    add b
    cp a
    add c
    cp [hl]
    ld bc, $013E
    ld a, $01
    cp [hl]
    rra
    ldh [$7F], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $E3
    inc e
    pop bc
    ld a, $F8
    rlca
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
    cp b
    inc bc
    xor h
    inc bc
    ret z

    inc bc
    or h
    rra
    rra
    ld bc, $C0E1
    ld a, $F0
    rrca
    rst $38
    nop
    rst $18
    jr nz, @-$3D

    ld a, [hl-]
    ld b, b
    xor c
    ld hl, sp-$08
    rst $38
    rst $38
    rra
    rra
    ld bc, $00E1
    cp $FC
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rrca
    ldh a, [$F0]
    rst $38
    rst $38
    ccf
    ccf
    nop
    ret nz

    ret nz

    ccf
    rst $38
    nop
    dec c
    inc de
    dec de
    daa
    scf
    ld c, a
    ld l, a
    rrca
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, [hl]
    ld l, $60
    db $10
    ld a, c
    ld a, [$F5F2]
    ldh [$EE], a
    ret nz

    call c, $9A81
    nop
    inc l
    inc c
    ld [hl], e
    inc bc
    call c, $4A31
    ld de, $1868
    ld h, l
    ld [$8CF4], sp
    ld [hl], d
    ld h, h
    sbc d
    ld e, $20
    add [hl]
    ld e, c
    nop
    rst $38
    add b
    ld a, a
    add b
    ld e, a
    ret nz

    rla
    ret nz

    dec hl
    ld h, b
    sub l
    jr nz, jr_024_5710

    jr nc, jr_024_56C9

    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra
    rrca

jr_024_56C9:
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
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    add hl, bc
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
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
    ld a, $01
    rra
    nop
    rlca
    ld [$0201], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_5710:
    rst $20
    ld hl, sp-$7F
    ld a, [hl]
    ldh a, [rIF]
    rst $38
    nop
    ccf
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $809E
    ld e, a
    ret nz

    cpl
    ldh [$1F], a
    ld hl, sp+$07
    ld a, a
    add b
    nop
    nop
    nop
    nop
    pop bc
    ld [hl-], a
    pop hl
    nop
    ldh [rNR10], a
    ld [hl], b
    adc b
    jr c, @-$3A

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    db $EC
    add e
    ld a, h
    add e
    ld a, h

jr_024_5746:
    ld h, [hl]
    add hl, de
    ld a, $00
    inc e
    nop
    nop
    nop
    nop
    nop
    ld h, b
    sub l
    ld hl, $33DE
    call z, $211E
    inc c
    stop
    nop
    nop
    nop
    nop
    nop

jr_024_5760:
    rst $18
    jr nz, @-$60

    ld h, c
    inc c
    ld a, [c]
    inc b
    ld a, [bc]
    ld b, $01
    ld [bc], a
    ld bc, $0003
    ld bc, $CF00
    jr nc, jr_024_577A

    add sp, $06
    sbc c
    inc b
    db $DB
    inc c
    ld [hl], e

jr_024_577A:
    jr jr_024_5760

    jr nc, jr_024_5746

    ldh [rP1], a
    jr nc, jr_024_5791

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
    sub b

jr_024_5791:
    rrca
    ld c, $81
    inc bc
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    ld h, $68
    adc c
    and h
    ld d, h
    and $16
    ld h, e
    sbc e
    jr nc, jr_024_57F8

    inc e
    inc hl
    rlca
    ld [$A018], sp
    adc b
    inc d
    ld [$5095], sp
    ld c, e
    add b
    xor a
    ld c, $51
    add hl, de
    db $E4
    ldh a, [$0A]
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, jr_024_57DA

jr_024_57CA:
    ld d, h
    jr c, jr_024_583F

    inc a
    ld a, [$003C]
    nop
    inc bc
    nop
    rrca
    inc bc
    dec d
    ld c, $2E
    add hl, de

jr_024_57DA:
    dec l
    inc de
    ld c, e
    scf
    ld d, a
    cpl
    dec bc
    rlca
    jp hl


    rlca
    jp c, $EBE7

    rla
    dec sp
    rst $00
    db $DB
    rst $20
    db $EB
    rst $30
    add hl, de
    rst $20
    ld bc, $03FF
    ld a, a
    rlca
    ccf
    rrca
    rra

jr_024_57F8:
    rrca
    rlca
    rra
    inc bc
    ccf
    ld bc, $007F
    ld [hl-], a
    jp nz, $2701

    jr z, jr_024_57CA

    add hl, bc
    add [hl]
    adc e
    rlca
    rra
    cpl
    ld c, a
    ld c, e
    add hl, bc
    ld c, h
    inc e
    add e
    adc e
    ld bc, $856C
    dec l
    inc b
    ld a, a
    ld e, a
    ld e, h
    ld a, [hl]
    add d
    dec l
    ld [bc], a
    inc l
    ld l, l
    adc c
    adc e
    add hl, bc
    adc l
    cpl
    ld c, a
    ld a, e
    ld l, e
    ld c, h
    inc l
    dec l
    ld l, l
    add a
    adc e
    dec c
    dec e
    rra
    ld a, a
    ld e, a
    ld e, e
    ld a, e
    ld c, h
    inc l
    ld l, l
    dec e
    ld l, h
    cpl
    ld a, a
    add h
    ld e, l

jr_024_583F:
    ld b, $5F
    ld a, e
    ld a, e
    ld e, h
    ld e, l
    ld e, l
    ld [bc], a
    ld a, [hl]
    inc l
    add l
    dec l
    ld [bc], a
    ld l, l
    sbc l
    add d
    adc e
    inc bc
    ld l, h
    ld a, a
    ld e, a
    add d
    ld a, e
    inc b
    ld e, h
    ld e, l
    ld a, [hl]
    inc l
    add d
    dec l
    add h
    adc e
    ld de, $2D6C
    cpl
    ld c, a
    ld a, e
    ld l, e
    ld a, e
    ld e, h
    ld a, [hl]
    inc l
    dec l
    cpl
    ld a, a
    ld e, a
    ld a, [hl+]
    ld a, e
    ld c, e
    add e
    ld a, e
    dec b
    ld h, a
    ld a, e
    ld [$5C4B], sp
    add [hl]
    ld e, l
    ld [bc], a
    ld a, [hl]
    inc l
    add d
    dec l
    ld [$4F2F], sp
    dec hl
    dec b
    ld b, $08
    ld a, [hl+]
    ld e, h
    add e
    ld e, l
    add e
    adc e
    ld a, [bc]
    adc l
    cpl
    ld a, a
    ld e, l
    ld e, a
    ld a, e
    ld h, a
    ld d, a
    ld a, e
    ld e, h
    add e
    ld e, l
    inc d
    ld e, a
    ld c, e
    ld a, [hl-]
    ld a, e
    ld e, d
    ld h, a
    rla
    add hl, hl
    jr z, jr_024_58BA

    ld d, $6B
    ld a, e
    ld [$7B2B], sp
    ld c, e
    ld a, [hl+]
    ld a, e
    ld e, h
    add h
    ld e, l
    ld a, [bc]
    ld e, a
    dec sp
    ld [hl], a
    halt
    dec d
    ld a, [hl-]
    ld a, e
    dec hl

jr_024_58BA:
    ld c, e
    ld a, e
    add e
    adc e
    inc d
    ld l, h
    ld a, a
    ld e, a
    ld c, e
    add hl, bc
    rlca
    ld b, $16
    rlca
    ld a, [hl+]
    ld a, e
    ld c, e
    add hl, bc
    ld a, e
    ld l, e
    ld a, e
    rla
    add hl, hl
    ld c, b
    ld c, c
    add d
    db $10
    ld c, $48
    jr z, jr_024_58E0

    dec d
    ld d, [hl]
    ld d, a
    ld d, $6B
    ld a, e
    ld h, a

jr_024_58E0:
    ld [$7B4B], sp
    ld c, e
    add d
    ld a, e
    add hl, bc
    dec b
    ld a, c
    nop
    ld [hl], h
    halt
    ld d, $3B
    ld e, e
    ld a, e
    add d
    adc e
    ld [de], a
    rra
    cpl
    ld c, a
    ld a, e
    ld l, e
    rlca
    ld d, $77
    ld [hl], h
    halt
    dec d
    ld a, e
    ld l, e
    ld a, e
    ld h, a
    ld a, e
    ld d, [hl]
    scf
    add h
    db $10
    inc bc
    add d
    db $10
    db $10
    add d
    ld c, b
    dec c
    ld c, c
    ld c, b
    jr z, jr_024_5919

    ld d, $06
    ld d, [hl]
    ld e, d
    ld a, e
    ld l, e
    ld h, a

jr_024_5919:
    rla
    ld [hl], a
    add h
    nop
    inc b
    halt
    ld h, a
    ld e, e
    ld a, e
    add d
    adc e
    rlca
    rra
    ld a, a
    ld e, a
    ld a, e
    dec b
    ld [hl], a
    ld [hl], h
    add e
    nop
    rlca
    halt
    dec d
    ld d, [hl]
    scf
    ld [hl], $57
    scf
    add [hl]
    db $10
    ld bc, $8692
    db $10
    add d
    ld c, b
    inc bc
    jr z, @+$17

    ld d, $82
    rla
    ld [bc], a
    ld b, $77
    add [hl]
    nop
    inc bc
    halt
    ld l, e
    ld a, e
    add d
    adc e
    ld [bc], a
    rra
    ld c, a
    add d
    ld a, e
    ld bc, $8577
    nop
    inc bc
    inc d
    ld c, b
    inc h
    add d
    db $10
    ld bc, $9124
    db $10
    add l
    ld c, b
    ld bc, $8613
    nop
    inc bc
    ld a, b
    dec d
    ld a, e
    add d
    adc e
    dec b
    rra
    ld c, a
    ld a, e
    dec b
    ld a, c
    add d
    nop
    inc bc
    cp $00
    inc d
    adc b
    db $10
    inc bc
    ld [de], a
    inc bc
    inc b
    adc [hl]
    db $10
    ld [bc], a
    add b
    add c
    add d
    db $10
    ld [bc], a
    ld [hl+], a
    inc de
    add h
    nop
    add hl, bc
    ld a, b
    ld d, $17
    dec e
    ld l, h
    cpl
    ld c, a
    ld a, e
    ld [hl], a
    add d
    nop
    inc bc
    inc d
    ld [hl+], a
    ld [hl+], a
    add e
    db $10
    ld bc, $8482
    db $10
    ld bc, $8303
    nop
    ld bc, $8D04
    db $10
    ld [bc], a
    sub b
    sub c
    add h
    db $10
    ld bc, $8413
    nop
    ld [$9B76], sp
    dec l
    cpl
    ld a, a
    ld e, a
    ld a, e
    ld a, c
    add d
    nop
    ld b, $02
    db $10
    db $10
    sub d
    add b
    add c
    add h
    db $10
    ld bc, $8503
    nop
    ld bc, $9302
    db $10
    ld b, $13
    nop
    nop
    ld l, d
    ld a, [bc]
    inc c
    add d
    ld e, l
    rlca
    ld e, a
    ld c, e
    dec d
    ld a, $85
    nop
    inc b
    add e
    db $10
    inc bc
    sub b
    sub c
    db $10
    add d
    ld [de], a
    ld [bc], a
    inc bc
    nop
    add d
    ld l, d
    add d
    nop
    ld bc, $9414
    db $10
    ld b, $03
    nop
    ld a, [bc]
    inc c
    dec c
    sbc a
    add d
    ld a, e
    inc bc
    dec hl
    ld l, e
    ld a, e
    add d
    sbc e
    inc bc
    ld a, c
    nop
    inc b
    add h
    ld [de], a
    ld bc, $8303
    nop
    ld b, $0A
    inc c
    rrca
    dec bc
    nop
    ld [bc], a
    add h
    db $10
    ld bc, $8E82
    db $10
    dec b
    ld bc, $0A00
    inc c
    sbc a
    add d
    adc e
    add d
    ld a, e
    rlca
    dec sp
    sbc e
    inc a
    inc c
    rrca
    dec bc
    ld l, d
    add a
    nop
    add hl, bc
    ld l, d
    ld a, [bc]
    inc c
    sbc a
    rra
    ld c, a
    ld a, c
    inc b
    ld [de], a
    sub d
    db $10
    inc b
    inc bc
    ld a, b
    ld c, h
    inc e
    add e
    adc e
    dec bc
    ld a, e
    sbc e
    inc a
    inc c
    dec c
    sbc a
    sbc [hl]
    dec c
    rrca
    dec bc
    ld l, d
    add e
    nop
    add hl, bc
    ld l, d
    ld a, [bc]
    inc c
    dec c
    sbc a
    adc e
    dec c
    rrca
    dec bc
    add d
    nop
    ld bc, $8704
    ld [de], a
    adc c
    db $10
    dec b
    inc bc
    nop
    ld a, [bc]
    inc c
    dec c
    add e
    adc e
    inc b
    inc a
    inc c
    dec c
    sbc a
    add h
    adc e
    add hl, bc
    sbc [hl]
    dec c
    rrca
    dec bc
    nop
    ld a, [bc]
    inc c
    dec c
    sbc a
    add h
    adc e
    inc b
    sbc [hl]
    rrca
    dec bc
    ld l, d
    add h
    nop
    add d
    ld l, d
    add d
    nop
    ld [bc], a
    inc b
    ld [de], a
    add [hl]
    db $10
    dec b
    ld bc, $7800
    ld c, h
    inc e
    add h
    adc e
    ld [bc], a
    inc c
    sbc a
    add [hl]
    adc e
    add d
    dec e
    dec b
    rra
    ld c, a
    ld a, [bc]
    inc c
    sbc a
    add a
    adc e
    inc b
    sbc [hl]
    dec c
    rrca
    dec bc
    add d
    ld l, d
    dec b
    ld a, [bc]
    inc c
    rrca
    dec bc
    ld l, d

Jump_024_5AAF:
    add d
    nop
    ld bc, $8504
    db $10
    rlca
    inc bc
    nop
    ld a, b
    ld c, h
    inc l
    ld l, l
    sbc l
    add d
    adc e
    ld bc, $869F
    dec e
    add hl, bc
    ld l, h
    dec l
    dec l
    cpl
    ld c, a
    ld c, h
    inc l
    dec l
    ld l, l
    adc b
    adc e
    ld bc, $849E
    dec c
    dec b
    sbc a
    sbc [hl]
    dec c
    rrca
    dec bc
    add d
    nop
    ld bc, $8304
    db $10
    dec bc
    ld bc, $0000
    ld a, b
    ld e, h
    ld e, l
    ld a, [hl]
    inc l
    ld l, l
    sbc l
    adc l
    add [hl]
    dec l
    ld [bc], a
    cpl
    ld a, a
    add d
    ld e, l
    ld b, $5F
    ld e, h
    ld e, l
    ld a, [hl]
    inc l
    adc h
    add a
    adc e
    add e
    dec e
    add l
    adc e
    inc bc
    sbc [hl]
    rrca
    dec bc
    add d
    nop
    ld b, $04
    ld [de], a
    ld [de], a
    inc bc
    nop
    nop
    dec bc
    dec a
    ld [$5C4B], sp
    ld e, l
    ld a, [hl]
    inc l
    ld l, h
    ld a, a
    ld a, [hl]
    ld a, a
    add h
    ld e, l
    add hl, bc
    ld e, a
    ld a, e
    ld c, e
    ld a, e
    ld a, [hl+]
    ld [$7E5C], sp
    inc e
    add [hl]
    adc e
    ld bc, $836C
    dec l
    ld bc, $856D
    adc e
    inc bc
    rra
    ld c, a
    ld a, c
    add [hl]
    nop
    inc b
    dec a
    ld d, [hl]
    ld h, [hl]
    ld e, e
    add d
    ld a, e
    inc d
    ld e, h
    ld a, [hl]
    ld e, l
    ld e, a
    ld e, h
    ld e, a
    ld c, e
    ld a, e
    ld c, e
    ld a, [hl+]
    ld h, a
    ld a, e
    ld l, e
    ld a, e
    ld a, [hl-]
    ld a, e
    ld c, e
    ld c, h
    inc l
    ld l, l
    add h
    adc e
    rlca
    adc l
    cpl
    ld a, a
    ld e, l
    ld a, [hl]
    inc l
    adc h
    add e
    adc e
    inc b
    adc l
    cpl
    ld c, a
    ld a, c
    add [hl]
    nop
    inc b
    ld c, l
    sbc e
    sbc e
    ld e, d
    add e
    ld a, e
    ld e, $4C
    ld a, e
    dec hl
    ld c, e
    add hl, bc
    ld e, d
    ld a, e
    ld e, e
    rlca
    ld b, $77
    halt
    dec d
    ld d, $7B
    ld e, d
    ld e, h
    ld a, [hl]
    inc l
    dec l
    ld l, l
    sbc l
    dec e
    ld l, h
    ld a, a
    ld e, a
    ld [$7E5C], sp
    inc e
    add e
    dec e
    inc b
    ld l, h
    ld a, a
    ld e, a
    ld a, c
    add [hl]
    nop
    inc b
    ld a, [bc]
    inc c
    rrca
    ccf
    add d
    ld a, e
    dec bc
    sbc e
    ld c, h
    ld a, e
    dec sp
    ld e, e
    rla
    ld d, $15
    ld l, e
    rla
    ld [hl], a
    add d
    nop
    add d
    ld [hl], h
    inc b
    halt
    rlca
    ld a, e
    ld e, h
    add d
    ld e, l
    dec b
    ld a, [hl]
    inc l
    dec l
    cpl
    ld c, a
    add d
    ld a, e
    inc bc
    dec hl
    ld c, h
    inc l
    add e
    dec l
    inc b
    cpl
    ld c, a
    ld a, e
    ld a, c
    add l
    nop
    add hl, bc
    ld a, [bc]
    inc c
    sbc a
    sbc [hl]
    rrca
    ccf
    inc a
    inc c
    dec c
    add d
    ld a, e
    inc bc
    ld e, e
    ld h, a
    ld [hl], a
    add e
    ld [hl], h
    add [hl]
    nop
    ld b, $76
    dec b
    ld [$7B4B], sp
    ld e, h
    add e
    ld e, l
    dec b
    ld e, a
    ld a, e
    ld d, a
    dec sp
    ld e, h
    add l
    ld e, l
    inc bc
    ld e, a
    ld a, e
    ld a, c
    add h
    nop
    inc bc
    ld a, [bc]
    inc c
    sbc a
    add d
    adc e
    add hl, bc
    sbc [hl]
    dec c
    dec c
    sbc a
    adc e
    rla
    ld d, $6B
    ld [hl], a
    adc d

Jump_024_5C01:
    nop
    add hl, bc
    ld a, b
    dec d
    ld a, e
    ld e, e
    ld a, e
    ld c, e
    ld a, [hl+]
    ld [$834B], sp
    ld a, e
    add hl, bc
    ld h, [hl]
    ld a, e
    ld c, e
    ld a, e
    ld c, e
    ld a, e
    ld a, [hl+]
    ld a, e
    ld [hl], a
    add h
    nop
    inc bc
    ld a, b
    ld c, h
    inc e
    adc b
    adc e
    inc b
    ld a, e
    ld h, a
    ld [hl], a
    add e
    add d
    ld [hl+], a
    ld bc, $8413
    nop
    jr jr_024_5C41

    ld [hl+], a
    ld [hl+], a
    inc de
    halt
    ld d, $6B
    ld h, a
    ld e, d
    ld a, [hl-]
    ld a, e
    ld l, e
    rla
    ld [hl], a
    halt
    dec b
    ld a, e
    ld l, e
    ld a, e
    ld e, d
    ld d, [hl]

jr_024_5C41:
    ld a, [hl-]
    rla
    ld a, c
    add h
    nop
    inc bc
    ld a, b
    ld c, h
    inc e
    adc b
    adc e
    add d
    sbc h
    ld [bc], a
    ld a, c
    ld [bc], a
    add e
    db $10
    add h
    ld [hl+], a
    add e
    db $10
    ld a, [bc]
    ld bc, $7400
    halt
    ld d, $17
    ld b, $07
    ld [hl], a
    ld [hl], h
    add d
    nop
    dec b
    halt
    ld b, $05
    rla
    rlca
    add d
    ld d, $01
    ld [hl], a
    add l
    nop
    inc bc
    dec a
    ld c, h
    inc e
    adc b
    adc e
    inc b
    dec c
    rrca
    dec bc
    inc b
    adc e
    db $10
    inc bc
    inc de
    nop
    nop
    add h
    ld [hl], h
    add h
    nop
    ld bc, $8614
    ld c, b
    ld a, [bc]
    inc de
    nop
    inc d
    ld [hl+], a
    inc de
    ld a, b
    ld a, e
    ld c, h
    inc l
    ld l, l
    adc b
    adc e
    inc b
    sbc [hl]
    rrca
    dec bc
    inc b
    adc d
    db $10
    ld bc, $8901
    nop
    ld bc, $8414
    db $10
    ld bc, $8392
    db $10
    ld bc, $8322
    db $10
    ld b, $13
    ld c, l
    ld e, h
    ld a, [hl]
    inc l
    ld l, l
    adc b
    adc e
    inc b
    rra
    ld c, a
    nop
    inc b
    adc c
    db $10
    inc bc
    ld bc, $0000
    add l
    ld l, d
    add d
    nop

Jump_024_5CC5:
    ld bc, $8304
    db $10
    ld bc, $8882
    db $10
    ld b, $01
    ld a, b
    ld a, [hl+]
    ld e, h
    ld a, [hl]
    inc c
    adc b
    adc e
    ld [bc], a
    rra
    ld c, a
    add d
    nop
    ld bc, $8802
    db $10
    inc b
    inc bc
    ld l, d
    ld a, [bc]
    inc c
    add e
    dec c
    ld [bc], a
    rrca
    dec bc
    add d
    nop
    ld bc, $8904
    db $10
    add d
    ld [de], a
    ld b, $03
    jr c, jr_024_5D2F

    sbc e
    ld c, h
    inc e
    adc b
    adc e
    dec b
    sbc [hl]
    rrca
    dec bc
    nop
    inc b
    add a
    db $10
    dec b
    inc bc
    ld a, [bc]
    inc c
    dec c
    sbc a
    add e
    adc e
    inc bc
    sbc [hl]
    rrca
    dec bc
    add d
    nop
    ld bc, $8702
    db $10
    add hl, bc
    inc bc
    nop
    nop
    ld a, b
    sbc e
    inc a
    inc c
    ld a, h
    ld a, l
    adc c
    adc e
    dec b
    sbc [hl]
    rrca
    dec bc
    nop
    ld [bc], a
    add l
    db $10
    inc b
    inc bc
    dec a
    ld c, h
    inc e
    add [hl]
    adc e

jr_024_5D2F:
    dec b
    rra
    ld l, a
    dec bc
    nop
    inc b
    add [hl]
    db $10
    ld bc, $8394
    nop
    inc b
    ld a, [bc]
    inc c
    dec c
    sbc a
    add a
    adc e
    ld bc, $838D
    adc e
    dec b
    adc l
    cpl
    ld c, a
    ld a, c
    ld [bc], a
    add h
    db $10
    dec b
    ld bc, $0578
    ld c, h
    inc e
    add [hl]
    adc e
    ld b, $0E
    rrca
    ld c, a
    ld a, c
    nop
    ld [bc], a
    add h
    db $10
    ld bc, $8301
    nop
    inc bc
    ld a, [bc]
    inc c
    sbc a
    adc c
    adc e
    ld bc, $836C
    adc e
    dec b
    rra
    ld a, a
    ld e, a
    ld a, c
    ld [bc], a
    add h
    db $10
    ld b, $01
    ld a, b
    ld d, a
    ld c, h
    inc l
    ld l, l
    add [hl]
    adc e
    dec b
    sbc [hl]
    rrca
    dec bc
    nop
    ld [bc], a
    add h
    db $10
    rlca
    ld bc, $0000
    ld a, b
    ld c, h
    inc l
    ld l, l
    add d
    dec e
    add [hl]
    adc e
    ld [bc], a
    ld l, h
    cpl
    add e
    adc e
    dec b
    rra
    ld c, a
    ld a, e
    ld a, c
    ld [bc], a
    add h
    db $10
    rlca
    inc bc
    nop
    ld c, l
    ld e, h
    ld a, [hl]
    inc l
    ld l, l
    add d
    sbc l
    ld bc, $836C
    dec l
    inc b
    cpl
    ld c, a
    ld a, c
    inc b
    add h
    db $10
    rlca
    ld bc, $0000
    ld a, b
    ld e, h
    ld a, [hl]
    inc l
    add d
    dec l
    ld bc, $846D
    dec e
    inc bc
    ld l, h
    cpl
    ld a, a
    add d
    adc e
    ld b, $8D
    cpl
    ld c, a
    ld h, a
    ld a, c
    ld [bc], a
    add e
    db $10
    ld bc, $8301
    nop
    rlca
    ld c, l
    ld e, h
    ld e, l
    ld a, [hl]
    inc l
    cpl
    ld a, a
    add h
    ld e, l
    inc b
    ld e, a
    ld a, c
    nop
    ld [bc], a
    add h
    db $10
    dec b
    inc de
    nop
    nop
    ld c, l
    ld e, h
    add d
    ld e, l
    ld [bc], a
    ld a, [hl]
    inc l
    add h
    dec l
    inc bc
    cpl
    ld a, a
    ld e, a
    add d
    adc e
    ld b, $6C
    ld a, a
    ld e, a
    ld b, $79
    ld [bc], a
    add e
    db $10
    ld bc, $8303
    nop
    inc b
    jr c, @+$2D

    ld c, e
    ld e, h
    add d
    ld e, l
    ld [$095F], sp
    ld c, e
    ld a, e
    ld c, e
    ld a, [hl+]
    add hl, sp
    inc d
    add [hl]
    db $10
    rlca
    ld [hl+], a
    inc de
    jr c, jr_024_5E58

    ld c, e
    ld a, e
    ld e, h
    add [hl]
    ld e, l
    ld a, [bc]
    ld e, a
    ld c, e
    adc e
    ld l, h
    ld a, a
    ld e, a
    ld a, e
    ld c, [hl]
    nop
    inc b
    add d
    db $10
    ld bc, $8401
    nop
    ld c, $15
    ld a, e
    ld l, e
    ld a, e
    ld [$7B4B], sp
    ld h, a
    ld e, d
    ld a, e
    ld e, e
    ld a, [hl-]
    dec b
    ld hl, $1088
    ld [$0528], sp
    ld l, e
    ld a, [hl+]
    ld a, e
    ld c, e
    ld [$824B], sp
    ld a, e
    ld [$7B2A], sp
    ld e, e
    ld l, h
    cpl
    ld c, a
    ld a, [hl+]
    ld c, [hl]

jr_024_5E58:
    add e
    nop
    inc bc
    inc b
    ld [de], a
    inc bc
    add h
    nop
    ld de, $1576
    ld d, $06
    ld a, e
    ld l, e
    ld d, [hl]
    dec b
    ld d, $15
    ld l, e
    dec b
    add hl, hl
    db $10
    add b
    add c
    sub d
    add [hl]
    db $10
    ld de, $1528
    ld d, $17
    ld e, d
    ld h, a
    ld e, e
    ld a, [hl+]
    add hl, bc
    ld a, [hl-]
    ld a, e
    ld l, e
    cpl
    ld a, a
    ld e, a
    ld a, [hl-]
    add hl, sp
    add d
    add l
    adc c
    nop
    add d
    ld [hl], h
    dec b

jr_024_5E8D:
    halt
    dec d
    ld d, $17
    add hl, hl
    add h
    ld c, b
    add d
    db $10
    ld [bc], a
    sub b
    sub c
    adc b
    db $10
    add d
    ld c, b
    dec c
    jr z, jr_024_5EB5

    rlca
    ld l, e
    ld a, [hl-]
    ld a, e
    ld h, a
    ld d, $67
    ld e, l
    ld e, a
    ld a, e
    ld d, a
    add d
    sbc e
    ld [bc], a
    ld d, $39
    add a
    nop
    ld bc, $8314

jr_024_5EB5:
    ld [hl+], a
    add e
    ld c, b
    add d
    db $10
    ld [bc], a
    add d
    sub d
    adc a
    db $10
    add hl, bc
    ld bc, $7674
    dec b
    dec d
    ld h, [hl]
    ld [hl], a
    ld [hl], l
    halt
    add d
    ld a, e
    rlca
    sbc e
    inc a
    inc c
    rrca
    ccf
    sbc e
    ld a, c
    add l
    nop
    ld bc, $8814
    db $10
    ld bc, $8492
    db $10
    add h
    ld [de], a
    adc d
    db $10
    inc bc
    add h
    nop
    ld [hl], h
    add d
    ld [hl], l
    add e
    nop
    add hl, bc
    ld a, e
    inc a
    inc c
    dec c
    sbc a
    sbc [hl]
    dec c
    rrca
    dec bc
    add l
    nop
    ld bc, $8A02
    db $10
    add d
    ld [de], a
    ld bc, $8403
    nop
    ld [bc], a
    inc b
    ld [de], a
    adc b
    db $10
    ld [bc], a
    sub h
    nop
    add e
    jr nc, jr_024_5E8D

    nop
    inc bc
    inc a
    inc c
    sbc a
    add h
    adc e
    inc bc
    sbc [hl]
    rrca
    dec bc
    add h
    nop
    inc bc
    ld [bc], a
    db $10
    db $10
    add a
    ld [de], a
    ld bc, $8903
    nop
    ld bc, $8604
    db $10
    ld b, $03
    nop
    nop
    ld b, d
    ld [hl], d
    ld [hl], d
    dec b
    ld d, c
    nop
    nop
    dec c
    sbc a
    add [hl]
    adc e
    inc bc
    rra
    ld c, a
    ld a, c
    add e
    nop
    inc bc
    inc b
    ld [de], a
    inc bc
    add d
    ld l, d
    sub b
    nop
    ld bc, $8404
    ld [de], a
    ld bc, $8403
    nop
    add d
    ld b, b
    add d
    nop
    ld bc, $880A
    adc e
    inc bc
    rra
    ld c, a
    ld a, c
    add e
    nop
    add d
    ld l, d
    inc b
    ld a, [bc]
    inc c
    rrca
    dec bc
    add h
    nop
    add d
    add l
    add d
    ld l, d
    add [hl]
    nop
    add e
    ld l, d
    adc d
    nop
    inc bc
    ld l, d
    ld a, [bc]
    inc c
    add a
    adc e
    inc b
    ld l, h
    ld a, a
    ld e, a
    add hl, sp
    add d
    add l
    ld [bc], a
    ld a, [bc]
    inc c
    add d
    dec c
    inc b
    sbc a
    rra
    ld c, a
    add hl, sp
    add d
    add l
    rlca
    jr c, jr_024_6002

    inc a
    inc c
    rrca
    dec bc
    ld l, d
    add e
    nop
    dec b
    ld a, [bc]
    inc c
    dec c
    rrca
    dec bc
    add d
    ld l, d
    add l
    nop
    dec b
    ld l, d
    ld a, [bc]
    inc c
    dec c
    sbc a
    add a
    adc e
    ld [bc], a
    rrca
    ld c, a
    add e
    sbc e
    inc bc
    inc a
    inc c
    sbc a
    add e
    adc e
    inc bc
    ld c, $0F
    ccf
    add e
    ld a, e
    dec c
    inc a
    inc c
    sbc a
    sbc [hl]
    dec c
    rrca
    dec bc
    ld l, d
    ld a, [bc]
    inc c
    sbc a
    adc e
    sbc [hl]
    add d
    dec c
    add hl, bc
    rrca
    dec bc
    ld l, d
    ld a, d
    ld l, d
    ld a, [bc]
    inc c
    dec c
    sbc a
    adc c
    adc e
    ld bc, $859E
    dec c
    ld bc, $859F
    adc e
    rlca
    sbc [hl]
    rrca
    ccf
    ld a, e
    ld d, $4C
    inc e
    add e
    adc e
    ld bc, $839E
    dec c
    ld bc, $859F
    adc e
    ld bc, $859E
    dec c
    ld bc, $849F
    adc e
    nop
    add h
    rrca
    ld [bc], a
    reti


    jp c, $0F82

    ld [bc], a
    db $DB
    call c, $0F82
    add d
    ldh [$82], a
    pop hl
    inc b
    rlca

jr_024_6002:
    ld [$0A09], sp
    add d
    rrca
    ld bc, $8B0B
    rrca
    ld [bc], a
    ld l, h
    ld l, l
    add d
    rrca
    inc c
    ld l, l
    ld l, h
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    dec de
    ld c, h
    inc l
    dec l
    ld c, h
    inc e
    add d
    cpl
    add h
    rrca
    add hl, bc
    inc bc
    inc b
    ld b, $42
    dec b
    inc bc
    ld b, e
    ld b, $0F
    add d
    adc l
    dec b
    adc [hl]
    adc h
    rrca
    adc a
    rrca
    add d
    ldh a, [$82]
    pop af
    add d
    ld [c], a
    add d
    db $E3
    inc c
    inc d
    dec d
    inc h
    dec h
    ld d, $17
    ld h, $27
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    add h
    rrca
    inc c
    ld d, $7D
    ld h, $27
    ld a, l
    ld a, h
    daa
    ld h, $6B
    ld l, d
    ld a, e
    ld a, d
    add d
    rrca
    ld bc, $840B
    rrca
    ld bc, $840B
    rrca
    db $10
    inc de
    ld [hl+], a
    ld l, a
    ld [hl-], a
    inc hl
    inc de
    inc sp
    ld l, a
    sbc l
    sbc [hl]
    xor l
    xor [hl]
    adc a
    rrca
    xor e
    xor a
    add d
    ld a, [c]
    add d
    di
    ld [$E9E8], sp
    ld [$0FEB], a
    ld a, b
    rrca
    ld a, b
    add e
    rrca
    dec e
    dec bc
    ld [$0A07], sp
    add hl, bc
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    ld [hl], $37
    ld b, [hl]
    ld b, a
    scf
    ld [hl], $47
    ld b, [hl]
    dec [hl]
    inc [hl]
    ld b, l
    ld b, h
    ld d, $5C
    ld h, $27
    ld e, h
    ld a, h
    daa
    ld h, $84
    rrca
    inc a
    ld e, [hl]
    ld b, d
    ld e, l
    ld c, [hl]
    ld b, e
    ld e, [hl]
    ld c, a
    ld e, l
    jp z, $BE56

    rrca
    ld e, d
    ld c, b
    ld c, d
    ld c, b
    ld hl, sp-$07
    ld a, [$E4FB]
    push hl
    and $E7
    ld h, e
    ld h, d
    ld [hl], e
    ld [hl], d
    rla
    ld a, h
    daa
    ld h, $15
    inc d
    dec h
    inc h
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld d, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, h
    ld h, l
    ld h, h
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld l, b
    ld h, a
    ld a, b
    ld [hl], a
    add [hl]
    rrca
    ld [bc], a
    ld l, h
    ld l, l
    add d
    rrca
    ld l, $6E
    cpl
    call $DE0F
    rrca
    ld e, d
    ld c, b
    ld e, d
    ld c, b
    db $F4
    push af
    or $F7
    db $DD
    ld c, d
    rrca
    ld e, d
    ld c, d
    call $DE5A
    dec e
    inc e
    rrca
    ld a, [bc]
    dec e
    inc e
    dec bc
    inc c
    ld [hl], h
    ld [hl], l
    ld d, d
    ld d, e
    halt
    ld [hl], a
    inc c
    rrca
    ld [hl], a
    halt
    rrca
    inc c
    ld [hl], l
    ld [hl], h
    ld d, e
    ld d, d
    add d
    rrca
    add d
    ld l, b
    ld e, $82
    add e
    sub d
    cp b
    add h
    add l
    cp b
    ret z

    ld d, $7D
    ld h, $27
    ld a, [hl]
    inc e
    ld a, a
    ld [de], a
    rrca
    sbc h
    sbc e
    xor h
    call z, $CFCB
    adc $4A
    db $DD
    ld e, d
    rrca
    call c, $82DB
    rrca
    ld [bc], a
    jp c, $82D9

    rrca
    ld [$1B1A], sp
    inc e
    ld a, [hl+]
    dec de
    ld a, [de]
    ld a, [hl+]
    inc e
    add d
    rrca
    add d
    ld l, b
    ld a, [bc]
    ld c, d
    ld c, b
    ld l, e
    ld l, d
    ld a, b
    ld c, d
    ld l, d
    ld l, e
    ld c, h
    inc e
    add d
    cpl
    ld [bc], a
    dec e
    inc e
    add d
    ld b, $03
    ret c

    rrca
    sub $82
    rrca
    inc bc
    add $0F
    cp c
    add d
    rrca
    ld [bc], a
    ld l, b
    ld l, [hl]
    add d
    rrca
    ld [$6C6D], sp
    adc [hl]
    cp e
    cp h
    cp l
    inc e
    ld c, h
    add d
    cpl
    inc d
    ld c, h
    dec de
    dec l
    inc l
    ld e, d
    xor a
    adc e
    ld c, b
    ld l, c
    ld l, b
    ld a, c
    inc e
    dec hl
    inc l
    inc a
    ld c, h
    inc l
    dec hl
    ld c, h
    inc a
    add d
    rrca
    ld a, [bc]
    ld d, a
    ld l, b
    ld a, e
    ld a, d
    add hl, bc
    ld a, [bc]
    ld a, d
    ld a, e
    ld a, [bc]
    add hl, bc
    add d
    rrca
    ld [bc], a
    ld l, b
    ld d, a
    add d
    rla
    dec b
    dec b
    rlca
    rst $00
    rrca
    rst $10
    add d
    rrca
    add hl, sp
    ret


    rrca
    rst $10
    ld c, l
    ld a, [hl]
    ld [de], a
    ld a, a
    ld a, l
    ld a, h
    daa
    ld h, $CB
    call z, $CFCE
    rrca
    adc h
    rrca
    adc a
    adc l
    rrca
    adc [hl]
    adc l
    xor a
    ld e, d
    ld a, b
    adc e
    ld l, b
    ld l, c
    ld c, l
    ld a, c
    ld c, l
    ldh [$5D], a
    ldh a, [$E1]
    ld c, l
    ldh a, [$5D]
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
    ret z

    add c
    add b
    sub c
    sub b
    dec d
    ld d, $82
    rlca
    ld de, $0926
    inc [hl]
    add hl, de
    ld [$1809], sp
    add hl, de
    ld [$1827], sp
    dec [hl]
    ld [$2409], sp
    dec h
    rrca
    add d
    adc l
    add hl, hl
    sbc l
    rrca
    adc a
    xor a
    xor e
    sbc [hl]
    sbc l
    xor [hl]
    xor l
    sbc h
    rrca
    xor h
    sbc e
    rra
    ld e, $3D
    inc a
    ld e, $1F
    inc a
    dec a
    ld a, b
    ld [c], a
    ld a, b
    jp hl


    and b
    and c
    or b
    or c
    and d
    and e
    or d
    or e
    and h
    and d
    or h
    or l
    and c
    and b
    or c
    or b
    add d
    rla
    add d
    rlca
    ld a, $36
    scf
    jr c, jr_024_6268

    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld a, [hl-]
    add hl, sp
    inc b
    add hl, bc
    inc [hl]
    add hl, de
    cp d
    xor l
    cp a
    jp z, Jump_024_5AAF

    ld a, b
    ld e, d
    ld d, [hl]
    jp z, $BE0F

    cp e
    adc [hl]
    cp l
    cp h
    ld a, b
    ld c, d
    ld a, b
    ld e, d
    ld c, d
    ld c, b
    ld e, d
    ld c, b
    ld a, b
    rst $28
    ld a, b
    rst $18
    ret nz

    pop bc
    ret nc

    pop de
    jp nz, $D2C3

    db $D3
    call nz, $D4C5
    jp nc, $C0C1

    pop de
    ret nc

    ld c, h
    inc e
    add d

jr_024_6268:
    cpl
    ld h, $48
    ld c, e
    ld e, b
    ld e, e
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld c, d
    ld c, c
    ld e, d
    ld e, c
    rlca
    dec b
    ld d, $15
    adc l
    rrca
    sbc l
    adc l
    dec e
    inc e
    ld [bc], a
    jr z, @+$1F

    inc e
    jr z, jr_024_6298

    dec e
    inc e
    ld b, [hl]
    ld b, a
    dec e
    inc e
    ld b, [hl]
    ld [de], a
    dec e
    inc e
    add d
    ld [bc], a
    ld [bc], a
    dec e
    inc e
    add d
    ld [de], a
    add d

jr_024_6298:
    rrca
    ld [bc], a
    add sp, -$19
    add d
    rrca
    ld [bc], a
    and $E5
    add d
    rrca
    rrca
    db $E4
    db $E3
    ld c, b
    ccf
    ld e, c
    ld c, e
    ld a, [de]
    add hl, de
    dec hl
    ld a, [hl+]
    jr jr_024_62BF

    add hl, hl
    jr z, jr_024_62C2

    add d
    ld c, $03
    ld a, h
    dec c
    ld e, h
    add d
    dec e
    inc h
    ld c, $0F
    ld a, h

jr_024_62BF:
    ld c, $AD
    cp d

jr_024_62C2:
    jp z, $00BF

Jump_024_62C5:
    add hl, hl
    db $10
    ld h, b
    add hl, hl
    ld bc, $1160
    nop
    ld bc, $1110
    ld [bc], a
    inc bc
    ld [de], a
    inc de
    nop
    ld bc, $1110
    jr nc, jr_024_630B

    ld b, b
    ld b, c
    rrca
    and l
    rrca
    push de
    add d
    rrca
    ld [bc], a
    or [hl]
    or a
    add d
    rrca
    ld [$B6B7], sp
    and l
    rrca
    push de
    rrca
    dec sp
    ld a, [hl-]
    add d
    rrca
    ld b, $39
    jr c, jr_024_6334

    dec c
    rrca
    ld a, h
    add d
    ld e, $02
    dec c
    ld e, h
    add d
    dec e
    ld [bc], a
    ld a, h
    rrca
    add d
    dec l
    add h
    rrca
    cpl

jr_024_6308:
    jr nz, jr_024_6308

    ld h, b

jr_024_630B:
    rst $38
    cp $21
    rst $38
    ld h, b
    jr nz, jr_024_6333

    jr nc, @+$33

    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    jr nz, @+$23

    ld h, b
    ld h, c
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld c, h
    add [hl]
    cpl
    sub [hl]
    add a
    adc b
    sub a
    sbc b
    adc c
    adc d
    sbc c
    sbc d
    add [hl]
    ld c, h
    sub [hl]
    cpl
    ld hl, sp-$09
    rrca

jr_024_6333:
    ei

jr_024_6334:
    ld c, c
    ld e, b
    ld e, c
    add d
    cpl
    dec b
    ld e, $3F
    ld a, $2D
    ld e, $82
    dec a
    ld d, $2D
    cpl
    ld a, $3F
    rrca
    jr jr_024_6371

    add hl, hl
    add hl, de
    ld a, [de]
    ld a, [hl+]
    dec hl
    ccf
    ld a, b
    ld c, e
    ld e, c
    ld b, d
    ld d, h
    ld [hl], d
    ld d, c
    ld d, e
    ld b, b
    add d
    ld d, b
    ld [hl-], a
    ld b, c
    ld d, l
    ld d, c
    ld b, l
    ld a, [$FDF9]
    db $FC
    rrca
    and [hl]
    rrca
    and [hl]
    and a
    xor b
    sub a
    sbc b
    xor c
    xor d
    sbc c
    sbc d
    and [hl]
    rrca

jr_024_6371:
    and [hl]
    rrca
    xor $ED
    rrca
    or $EC
    db $EB
    push af
    db $F4
    ld [$F3F1], a
    ld a, [c]
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld c, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    jr c, jr_024_63C2

    dec c
    ld a, $3A
    dec sp

jr_024_638D:
    add [hl]
    rrca
    inc b
    ld [hl], d
    ld b, e
    ld [hl], d
    ld b, e
    add h
    ld d, c
    inc b
    ld [hl], c
    ld b, l
    ld [hl], c
    ld b, l
    add d
    rrca
    ld [bc], a
    db $E3
    db $E4
    add d
    rrca
    ld [bc], a
    push hl
    and $82
    rrca
    ld [hl+], a
    rst $20
    add sp, -$1E
    ld c, b
    jp hl


    ld c, b
    pop af
    ld [$F3F2], a
    db $EB
    db $EC
    db $F4
    push af
    db $ED
    xor $F6
    rrca
    rst $28
    ld c, b
    rst $18
    ld c, b
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a

jr_024_63C2:
    ld l, a

jr_024_63C3:
    ld l, [hl]
    ld a, a
    ld a, [hl]
    ld e, b
    ld c, c
    cpl
    ld e, c
    adc b
    rrca
    ld b, $52
    ld [hl], c
    ld b, d
    ld b, c
    ld [hl], c
    ld b, e
    add d
    ld d, e
    inc c
    ld b, e
    ld h, d
    ld d, h
    ld d, l
    rst $30
    ld hl, sp-$05
    rrca
    ld sp, hl
    ld a, [$FDFC]
    add d
    ld l, c
    add d
    ld a, c
    ld [$6463], sp
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, [hl]
    ld [hl], l
    halt
    adc b
    rrca
    add h
    ld d, c
    add d
    db $FC
    add d

jr_024_63F6:
    db $FD
    add d
    db $EC
    add d
    db $ED
    add h
    ld b, b
    add d
    dec b
    add d
    ld b, b
    add d
    dec b
    add d
    ld b, b
    inc b
    ld [$0828], sp
    jr z, jr_024_638D

    dec b
    ld [bc], a
    nop
    dec b
    add d
    ld b, b
    ld bc, $8B05
    ld b, b
    add d
    dec b
    add d
    ld b, b
    add d
    dec h
    add h
    ld a, [bc]
    ld [bc], a
    nop
    ld b, b
    add d
    dec b
    inc b
    ld b, b
    jr nz, jr_024_644B

    dec b
    add h
    ld b, b
    add l
    dec b
    inc b
    dec h
    dec b
    dec h

jr_024_642F:
    ld b, b
    add h
    dec b
    dec bc
    ld b, b
    dec b
    ld b, b
    ld [$0828], sp
    jr z, @+$0A

    jr z, jr_024_6445

jr_024_643D:
    jr z, jr_024_63C3

    nop
    add d
    dec b
    ld bc, $8300

jr_024_6445:
    dec b
    ld [bc], a
    nop
    dec b
    add h
    ld b, l

jr_024_644B:
    add d
    dec b
    inc bc
    nop
    dec b
    dec l
    add d
    dec h
    ld bc, $8420
    ld a, [hl+]
    add d
    ld b, b
    ld bc, $8405
    ld b, b
    ld bc, $8425
    ld b, b
    add l
    dec b
    inc bc
    dec h
    dec b
    dec h
    add l
    dec b
    rlca
    ld b, b
    dec b
    dec b
    ld [$0828], sp
    jr z, jr_024_63F6

    ld [$4004], sp
    dec h
    ld b, b
    dec h
    add e
    ld b, b
    add h
    dec h
    ld bc, $8420
    ld [bc], a
    add h
    dec b
    add h
    dec h
    add h
    ld [hl+], a
    add d
    dec b
    ld [bc], a

jr_024_6489:
    nop
    dec b
    add e
    dec h
    ld bc, $8420
    ld b, b
    add d
    dec b
    ld c, $00
    dec b
    dec b
    dec h
    dec b
    jr nz, jr_024_64A0

    dec c
    dec b
    ld b, [hl]

jr_024_649E:
    nop
    ld b, l

jr_024_64A0:
    nop
    ld b, l
    adc b
    ld [$2583], sp
    ld bc, $8320
    dec h
    add l
    jr nz, jr_024_642F

    ld [bc], a
    add d
    nop
    add h
    dec b
    add h
    dec h
    add d
    ld [hl+], a
    add d
    jr nz, jr_024_643D

    dec c
    add h
    dec l
    add d
    ld b, l
    add h
    ld b, b
    add d
    dec b
    add d
    ld b, b
    ld a, [bc]
    dec b
    ld b, l
    dec b
    ld b, [hl]
    dec b
    ld b, [hl]
    nop
    ld b, l
    nop
    ld b, l
    add h
    ld [$0508], sp

jr_024_64D3:
    nop
    ld b, b
    nop
    jr nz, jr_024_64FD

    jr nz, jr_024_64FF

    add d
    ld h, b
    ld [bc], a
    ld b, b
    dec bc
    add d
    ld h, b
    add d
    dec bc
    add a
    dec b
    inc b
    ld b, b
    dec h
    dec h
    ld b, b
    add l
    dec h
    add d
    ld b, b
    add d
    ld b, l

jr_024_64F0:
    dec b
    dec b
    add l
    dec b
    dec h
    add l
    add l
    dec b
    inc b
    nop
    dec b
    nop
    ld h, b

jr_024_64FD:
    add d
    dec b

jr_024_64FF:
    inc b
    ld b, b
    dec b
    nop
    dec b

jr_024_6504:
    add d
    jr nz, jr_024_6489

    dec h
    inc b
    jr nz, jr_024_6530

    jr nz, jr_024_654D

    add d
    dec h
    add d
    ld b, b
    add d
    dec h
    add d
    ld b, b
    add d
    ld [$0B82], sp
    add d
    jr z, jr_024_649E

    dec hl
    add d
    ld b, b
    add d
    ld b, l
    inc bc
    nop
    ld b, l
    jr nz, @-$7C

    dec h
    rlca
    jr nz, jr_024_652F

    nop
    ld b, b
    jr nz, @+$27

    dec b

jr_024_652F:
    add d

jr_024_6530:
    ld h, b
    dec b
    ld l, $0E
    dec h
    ld b, b
    dec b
    add d
    ld b, b
    inc bc
    dec h
    ld b, b
    dec b
    add d
    ld b, b
    ld [bc], a
    ld b, l
    dec h
    add d
    ld b, b
    add d
    dec h
    add d
    dec b
    add e
    nop
    dec b
    ld h, b
    dec h

jr_024_654D:
    dec b

jr_024_654E:
    ld h, b
    jr nz, jr_024_64D3

    dec h
    ld [$0500], sp
    jr nz, jr_024_659C

jr_024_6557:
    dec h
    ld b, l
    dec h
    ld h, b
    add h
    dec bc
    add h
    dec hl
    add d
    ld b, b
    ld [bc], a
    dec c
    ld b, l
    add d
    dec h
    ld bc, $8300
    dec b
    ld [bc], a
    dec h
    jr nz, jr_024_64F0

    ld b, b
    inc bc
    ld b, l
    dec l
    ld l, $83
    ld c, $03
    dec b
    ld b, b
    dec b
    add d
    ld b, b
    inc bc
    dec b
    ld b, b
    dec h
    add d
    jr nz, jr_024_6504

    dec h
    ld b, $2D
    dec h
    dec h
    jr nz, jr_024_6589

jr_024_6589:
    nop
    add d
    dec b
    inc bc
    ld b, b
    dec h
    ld b, b
    add d

jr_024_6591:
    dec h
    ld c, $40
    dec h
    dec b

jr_024_6596:
    dec h
    jr nz, @+$27

    nop
    ld b, l
    dec b

jr_024_659C:
    jr nz, jr_024_65A3

    dec bc
    inc bc
    dec bc
    add d
    inc bc

jr_024_65A3:
    rlca
    dec hl
    inc bc
    dec hl
    nop
    add d
    dec b
    nop
    add d
    add l
    add d
    dec b
    add d
    add l
    add d
    dec b
    ld b, $A2
    jr nz, jr_024_65D7

    dec h
    ld c, $0E
    ld bc, $912E
    ld c, $01
    ld b, b
    add e
    dec b
    ld bc, $8840
    dec h
    inc bc
    ld b, b
    dec h
    jr nz, jr_024_654E

    dec h

jr_024_65CC:
    rlca
    jr nz, @+$07

    dec b
    nop
    dec b
    dec h
    jr nz, jr_024_6557

    dec h
    ld [bc], a

jr_024_65D7:
    dec b
    nop
    add e
    dec b
    dec b
    nop
    dec b
    nop
    dec b
    dec h
    add d
    nop
    ld bc, $8320
    dec h
    inc bc
    ld l, $0E
    ld l, $91
    ld c, $84
    dec b
    rlca
    dec h
    jr nz, jr_024_6618

    jr nz, jr_024_6622

    dec h
    ld b, b
    add e
    dec h
    add d
    jr nz, @+$0E

    dec h
    jr nz, jr_024_6624

    jr nz, jr_024_6601

jr_024_6601:
    ld b, l
    nop
    ld b, l
    dec h
    jr nz, jr_024_662C

    jr nz, jr_024_6591

    dec b
    add d
    nop
    ld bc, $8505
    dec h
    ld [bc], a
    ld b, b
    jr nz, jr_024_6596

    dec h
    adc h
    ld c, $84

jr_024_6618:
    ld l, $02
    dec h
    ld b, b
    add d
    dec h
    add d
    ld h, b
    ld [bc], a
    dec b

jr_024_6622:
    dec c
    add d

jr_024_6624:
    ld h, b
    ld [bc], a
    dec l
    dec b
    add d
    ld h, b
    add d
    dec c

jr_024_662C:
    add d
    ld h, b
    ld [bc], a
    dec c
    dec b
    add d
    ld h, b
    add d
    dec b
    add d
    ld h, b
    add d
    dec b
    add d
    ld b, b
    add d
    and l
    add d
    ld b, b
    add d
    and l
    add d
    ld b, b
    add d
    and b
    add h
    dec h
    add d
    jr nz, jr_024_65CC

    dec h
    ld [bc], a
    jr nz, jr_024_668E

    add d
    jr nz, jr_024_6652

    ld b, b

jr_024_6652:
    add h
    dec hl
    ld [bc], a
    dec bc
    dec hl
    add d
    dec bc
    inc bc
    ld b, b
    dec bc
    dec bc
    add h
    dec h
    ld [$0800], sp
    nop
    ld [$0028], sp
    jr z, jr_024_6668

jr_024_6668:
    adc b
    ld [$0088], sp
    inc b
    ld b, b
    add d
    ld b, b
    add d
    add d
    ld b, b
    ld [bc], a
    add b
    add l
    add d
    ld b, b
    ld b, $A5
    and b
    and d
    ld b, b
    and d
    ld b, b
    add d
    dec h
    add d
    ld b, b
    inc b
    dec h
    jr nz, jr_024_66AC

    jr nz, @-$79

    dec hl
    ld [bc], a
    dec bc
    dec hl
    add e

jr_024_668E:
    dec bc
    add d
    dec hl
    add h
    ld b, e
    ld bc, $8300
    dec b
    inc b
    dec h
    nop
    dec h
    dec b
    add d
    ld [$0D82], sp
    add d
    ld [$0D82], sp
    add d
    nop
    add d
    dec b
    add d
    nop
    add d
    dec b

jr_024_66AC:
    inc b
    ld h, b
    dec b
    dec h
    dec b
    adc b
    add l
    ld [bc], a
    dec h
    ld b, b
    add d
    dec h
    inc b
    and b
    and l
    ret nz

    and b
    add e
    dec h
    ld bc, $8705
    dec hl
    ld [bc], a
    dec bc
    dec hl
    add e
    dec bc
    ld bc, $8540
    nop
    add e
    dec b
    dec b
    ld b, l
    dec b
    dec b
    add hl, hl
    ld l, c
    add d
    add hl, hl
    inc bc
    ld l, c
    add hl, bc
    add hl, hl
    add d
    add hl, bc
    dec b
    ld c, c
    add hl, bc
    ld c, c
    and b
    and l
    add d
    and b
    inc b
    ld b, [hl]
    dec b
    ld b, [hl]
    dec b
    adc b
    add l
    ld [$4625], sp
    dec h
    ld b, [hl]
    and b
    and l
    ret nz

    and b
    add e
    and l
    inc bc
    and b
    and l
    add b
    add d
    and l
    add h
    ld c, $84
    ld l, $03
    nop
    dec b
    nop
    add e
    dec b
    add [hl]
    ld b, b
    inc bc
    add hl, hl
    add hl, bc
    add hl, hl
    add d
    add hl, bc
    rlca
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    ld c, c
    add hl, bc
    ld c, c
    add d
    ld b, b
    add d
    add b
    add d
    ld b, b
    add d
    add l
    add d
    ret nz

    add d
    add l
    dec b
    add b
    push bc
    add l
    push bc
    and b
    add l
    add l
    inc bc
    add b
    add l
    add l
    add d
    add b
    dec b
    ret nz

    add b
    push bc
    add b
    push bc
    add h
    ld c, $84
    ld l, $82
    dec b
    ld [bc], a
    dec h
    dec b
    adc b
    ld b, b
    ld [bc], a
    ld l, c
    add hl, bc
    add d
    ld l, c
    add d
    add hl, bc
    ld b, $29
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec b
    add l
    add b
    add b
    ret nz

    add l
    add e
    add b
    inc b
    ld c, $2E
    ld c, $2E
    adc b
    ld [$4088], sp
    inc c
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    ld l, $0E
    ld l, $0E
    ld l, $0E
    ld l, $0E
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    cp a
    nop
    ld bc, $BBFE
    nop
    add e
    rst $30
    ld [bc], a
    nop
    cp $B6
    nop
    add e
    dec b
    add e
    nop
    add e
    sbc a
    ld bc, $BAFE
    nop
    add e
    sbc a
    inc bc
    ld bc, $9F9F
    cp d
    nop
    inc b
    sbc a
    nop
    nop
    ld bc, $00BC
    add e
    sbc a
    inc bc
    ld bc, $9F9F
    cp h
    nop
    add e
    sbc a
    jp nz, $001D

    ld bc, $8357
    nop
    rlca
    ld h, a
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, a
    cp b
    nop
    dec b
    ld [hl], l
    nop
    halt
    nop
    ld h, a
    add e
    nop
    ld [bc], a
    halt
    ld h, a
    or c
    nop
    ld de, $0067
    nop
    ld h, a
    ld [$0B0A], sp
    inc c
    dec c
    ld c, $0A
    dec bc
    ld c, $0A
    rrca
    ld d, a
    halt
    and b
    nop
    inc bc
    ld d, a
    nop
    ld h, a
    adc b
    nop
    inc b
    halt
    nop
    nop
    ld d, a
    add e
    nop
    ld c, $54
    jr jr_024_6802

    dec de
    inc e
    dec e
    ld e, $1A
    dec de
    ld e, $1A
    rra
    ld e, a
    ld d, l
    sbc [hl]
    nop
    ld [bc], a
    halt
    ld d, l
    add a
    nop
    ld bc, $8476
    nop
    inc d
    ld h, a
    nop
    nop

jr_024_6802:
    ld h, a
    nop
    ld [hl], l
    ld h, h
    jr z, jr_024_6832

    dec hl
    inc l
    dec l
    ld l, $2A
    dec hl
    ld l, $2A
    cpl
    ld l, a
    ld d, l
    sbc c
    nop
    inc bc
    ld h, a
    nop
    halt
    add d
    ld h, a
    dec b
    dec c
    ld c, $0A
    dec bc
    rrca
    add d
    halt
    add l
    nop
    ld bc, $8357
    nop
    inc de
    ld d, [hl]
    nop
    ld d, a
    ld h, a
    ld [$3A38], sp
    dec sp

jr_024_6832:
    inc a
    dec a
    ld a, $6A
    ld b, d
    ld l, c
    inc a
    ccf
    ld a, a
    nop
    ld h, a
    sbc d
    nop
    inc c
    ld d, a
    ld h, a
    jr @+$1F

    ld e, $1A
    dec de
    rra
    rrca
    ld d, a
    nop
    ld h, a
    add h
    nop
    add hl, bc
    ld h, a
    ld a, [bc]
    inc c
    dec c
    ld c, $0A
    dec bc
    jr @+$6D

    add d
    ld bc, $A004
    and c
    and c
    and d
    add e
    ld bc, $6C03
    adc a
    ld d, a
    sbc b
    nop
    ld c, $57
    halt
    nop
    ld h, a
    jr jr_024_6896

    dec l
    ld l, $2A
    dec hl
    cpl
    rra
    ld e, a
    ld [hl], l
    add e
    nop
    ld de, $5767
    jr jr_024_6897

    inc e
    dec e
    ld e, $1A
    dec de
    jr z, jr_024_68DF

    ld bc, $A4A0
    or c
    sub e
    jp nz, $0183

    ld b, $5C
    ld e, a
    nop
    ld d, l
    nop
    ld d, [hl]
    sub a
    nop
    rra

jr_024_6896:
    ld h, a

jr_024_6897:
    jr @+$2A

    jr c, jr_024_68D8

    ld a, $3C
    dec sp
    ccf
    cpl
    ld l, a
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    ld d, h
    jr z, jr_024_68D3

    inc l
    dec l
    ld l, $2A
    dec hl
    jr c, @+$7D

    ld b, d
    or b
    or c
    sub e
    jp nz, $0184

    inc bc
    ld b, d
    ld l, a
    ld h, a
    sbc b
    nop
    rlca
    ld h, a
    ld d, a
    jr jr_024_68EA

    jr c, jr_024_690F

    call nz, $0183
    inc bc
    ld c, a
    ccf
    ld a, a
    add l
    nop
    add hl, bc
    ld h, h
    jr c, jr_024_690B

    inc a
    dec a

jr_024_68D3:
    ld a, $3C
    dec sp
    ld c, b
    add d

jr_024_68D8:
    ld bc, $C00D
    pop bc
    jp nz, $B401

jr_024_68DF:
    ld bc, $01C5
    ld e, h
    ld a, a
    nop
    ld d, a
    halt
    sub a
    nop
    inc b

jr_024_68EA:
    ld d, h
    jr z, jr_024_6925

    ld c, e
    add h
    ld bc, $B306
    ld bc, $8F6C
    ld h, a
    ld d, a
    add d
    nop
    inc bc
    ld [hl], l
    ld [hl], h
    ld l, e
    add e
    ld bc, $9707
    sbc b
    sbc c
    sbc e
    sbc h
    sbc b
    sbc c
    add e
    ld bc, $C407

jr_024_690B:
    ld bc, $01C3
    ld e, h

jr_024_690F:
    adc a
    ld d, l
    sub a
    nop
    rrca
    ld d, l
    ld d, a
    ld h, h
    jr c, jr_024_6961

    ld bc, $BAB6
    cp h
    cp l
    or a
    cp c
    ld e, h
    ld e, a
    ld [hl], l
    add h
    nop

jr_024_6925:
    ld [bc], a
    add h
    ld e, e
    add d
    ld bc, $9D15
    and a
    xor b
    xor c
    xor e
    xor h
    xor b
    xor c
    add l
    or l
    push bc
    or l
    ld bc, $C5B4
    or l
    rrca
    ld d, a
    halt
    ld d, l
    ld h, a
    sub [hl]
    nop
    ld [bc], a
    ld [hl], h
    ld l, e
    add d
    ld bc, $C608
    jp z, $CDCC

    rst $00
    ret


    or l
    ld l, a
    add d
    nop
    dec bc
    ld h, a
    nop
    ld d, l
    ld d, h
    and c
    and d
    ld bc, $7667
    nop
    ld h, a
    add d
    nop
    inc b

jr_024_6961:
    ld d, a
    nop
    ld d, a
    or h
    add l
    ld bc, $5C07
    rra
    inc c
    dec c
    rrca
    nop
    halt
    sub h
    nop
    ld b, $67
    add h
    ld e, e
    ld bc, $B5C4
    add l
    ld bc, $5C02
    ld a, a
    add e
    nop
    add hl, bc
    ld d, [hl]
    nop
    ld h, h
    or c
    and e
    and d
    rrca
    ld d, [hl]
    halt
    add d
    nop
    db $10
    ld h, l
    nop
    halt
    ld [$015B], sp
    and b
    and c
    and d
    ld bc, $2F5C
    inc e
    dec e
    rra
    ld h, a
    sub h
    nop
    rlca
    ld d, a
    nop
    ld d, a
    ld e, e
    push bc
    ld bc, $82B4
    ld bc, $F706
    ld bc, $5C01
    adc a
    ld d, a
    add h
    nop
    add hl, de
    ld [hl], h
    or c
    or c

Jump_024_69B5:
    or d
    rra
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, l
    dec c
    add hl, bc
    ld a, [bc]
    jr @+$5D

    and b
    and h
    or c
    and e
    and d
    ld a, h
    ccf
    inc l
    dec l
    cpl
    ld e, a
    sub l
    nop
    ld b, $75
    ld d, h
    ld e, e
    ld bc, $C3B3
    add l
    ld bc, $5C02
    ld e, a
    add d
    nop
    inc b
    halt
    nop
    ld d, a
    add h
    add d
    or c
    ld d, $B2
    cpl
    add hl, de
    ld a, [de]
    dec de
    ld e, l
    dec e
    add hl, de
    ld a, [de]
    jr z, jr_024_6A49

    or b
    or c
    reti


    add e
    and e
    and d
    ld c, a
    inc a
    dec a
    ccf
    ld l, a
    sub l
    nop
    inc bc
    ld h, a
    ld h, h
    ld e, e
    add d
    ld bc, $C501
    add l
    ld bc, $5C08
    ld l, a
    nop
    ld h, a
    nop
    halt
    nop
    ld d, h
    add d
    or c
    ld de, $3FB2
    add hl, hl
    ld a, [hl+]
    dec hl
    ld l, l
    dec l
    add hl, hl
    ld a, [hl+]
    jr c, @+$7D

    or b
    rst $10
    jp hl


    sub c
    or c
    or d
    add e
    ld bc, $6C04
    ld a, a
    nop
    halt
    sub h
    nop
    inc c
    ld [hl], h
    ld e, e
    cp h
    cp l
    or e
    or l
    push bc
    jp $01C5


    and b
    ld a, a
    add d
    nop
    ld a, [bc]
    ld d, a
    nop
    nop
    ld h, h
    or c
    sub e
    jp nz, Jump_024_69B5

    ld a, [hl-]
    add d
    dec sp
    dec bc
    dec a

jr_024_6A49:
    add hl, sp
    ld a, [hl-]
    ld c, b
    and b
    and h
    rst $20
    or c
    sub e
    pop bc
    jp nz, $0183

    ld [bc], a
    ld e, h
    adc a
    sub h
    nop

jr_024_6A5A:
    ld [$0057], sp
    add h
    ld e, e
    call z, $C4CD
    and b
    add h
    and c
    dec c
    and h
    adc a
    ld d, a
    nop
    ld [hl], l
    nop
    ld h, a
    ld [$C293], sp
    ld bc, $A0C3
    add [hl]
    and c
    ld [bc], a
    and d
    ret nz

    add e
    pop bc
    ld bc, $85C2
    ld bc, $8E02
    sbc [hl]
    sub l
    nop
    inc d
    ld [hl], l
    nop
    add l
    ld bc, $B5B3
    or b
    or c
    di
    or c
    ld a, [c]
    db $F4
    rra
    inc c
    dec c
    ld c, $0A

Call_024_6A95:
    dec bc
    jr jr_024_6A5A

    add d
    ld bc, $C402
    ret nz

    add [hl]
    pop bc
    inc b
    jp nz, $BDB4

    or a
    add d
    ld bc, $9808
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    halt
    ld h, [hl]
    sub h
    nop
    add hl, bc
    ld h, a
    nop
    sub l
    sub [hl]
    ld bc, $B0B4
    or c
    add e
    add d
    or c
    add hl, bc
    sub e
    cpl
    inc e
    dec e
    ld e, $1A
    dec de
    jr z, jr_024_6B22

    add d
    ld bc, $B305
    ld bc, $BFBE
    cp e
    add d
    ld bc, $B40D
    push bc
    cp h
    cp l
    rst $00
    ld bc, $A88E
    xor d
    xor e
    xor h
    sbc [hl]
    ld h, [hl]
    sub l
    nop
    dec d
    ld [hl], l
    nop
    ld d, a
    ld [hl], l
    and [hl]
    add l
    jp $B1B0


    ld a, [c]
    di
    adc e
    jp nz, $2C3F

    dec l
    ld l, $2A
    dec hl
    jr c, jr_024_6B72

    add d
    ld bc, $B406
    or l
    adc $CF
    res 6, l
    add d
    call nz, $0103
    call z, $82CD
    ld bc, $9E06
    ld d, a
    ld [hl], l
    halt
    nop
    ld d, [hl]
    sbc d
    nop
    inc b
    ld d, a
    ld d, h
    push bc
    or b
    add d
    or c
    inc b
    sub e
    jp nz, Jump_024_4F01

    add d
    dec a
    inc b
    ld a, $3A

jr_024_6B22:
    dec sp
    ld c, b
    adc h
    ld bc, $B306
    push bc
    ld h, c
    ld bc, $765F
    add d
    nop
    ld bc, $9A66
    nop
    dec b
    ld h, a
    nop
    sub l
    sub [hl]
    ret nz

    add d
    pop bc
    ld bc, $95C2
    ld bc, $6107
    cp h
    cp l
    ld e, h
    ld l, a
    nop
    halt
    sbc b
    nop
    inc b

jr_024_6B4A:
    ld d, a
    nop
    halt
    ld d, l
    add e
    nop
    dec c
    and [hl]
    sub [hl]
    sbc b
    sbc c
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc d
    sbc e
    sbc h
    add h
    ld bc, $BA0E
    ld bc, $BFBE
    or a
    jp $C3C5


    or l
    ld bc, $CDCC
    ld e, h
    ld a, a
    sbc e
    nop
    inc d

jr_024_6B72:
    ld h, a
    ld a, [bc]
    ld a, [bc]
    inc c

jr_024_6B76:
    rrca
    nop
    halt
    and [hl]
    xor b
    xor c
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor d
    xor e
    xor h
    sub [hl]
    add e
    ld bc, $CA09
    or l
    adc $CF
    rst $00
    or h
    call nz, $B5B7
    add e
    ld bc, $5C04
    adc a
    ld h, [hl]
    halt
    sbc b
    nop
    ld [bc], a
    ld d, h
    jr @-$7C

    ld a, [de]
    dec b
    inc e
    rra
    rrca
    nop
    ld h, a
    add h
    nop
    ld bc, $8375
    nop
    inc b
    ld d, a
    nop
    ld [hl], l
    and [hl]
    add e
    ld bc, $C403
    or e
    and b
    add e
    and c
    ld [$01A2], sp
    or e
    ld bc, $C4B5
    or l
    ld e, a
    sbc d
    nop
    ld [bc], a
    ld h, h
    jr z, jr_024_6B4A

    ld a, [hl+]
    ld de, $2F2C
    rra
    dec c
    ld c, $0C
    dec c
    ld c, $0A
    inc c
    dec c
    ld c, $0F
    nop
    halt
    nop
    ld d, h
    add e
    ld bc, $B303
    ld bc, $83B0
    or c
    add hl, bc
    and e
    and d
    call nz, $B301
    or h
    ld e, h
    ld l, a
    ld h, a
    sbc c
    nop
    ld [bc], a
    ld [hl], h
    jr c, jr_024_6B76

    inc a
    ld de, $2F3F
    dec e
    ld e, $1C
    dec e
    ld e, $1A
    inc e
    dec e
    ld e, $1F
    ld e, a
    nop
    ld h, a
    ld h, h
    ld e, e
    add d
    ld bc, $C303
    ld bc, $83C0
    pop bc
    ld [$B294], sp
    cp h
    cp l
    jp Jump_024_5C01


    ld a, a
    sbc d
    nop
    ld [bc], a
    add h
    ld l, e
    add e
    ld bc, $4F0D
    ccf
    dec l
    ld l, $2C
    dec l
    ld l, $2A
    inc l
    dec l
    ld l, $2F
    ld l, a
    add d
    nop
    ld [bc], a
    ld [hl], h
    ld e, e
    add d
    ld bc, $B50E
    adc [hl]
    xor b
    xor c
    add l
    sbc e
    or b
    or d
    call z, $B5CD
    ld bc, $8F5C
    add d
    nop
    ld bc, $9776
    nop
    ld [bc], a
    ld d, h
    ld e, e
    add h
    ld bc, $4F06
    dec a
    ld a, $3C
    dec a
    ld a, $82
    inc a
    ld [$3E3D], sp
    ccf
    ld a, a
    nop
    ld d, a
    add h
    ld e, e
    add d
    ld bc, $9D09
    sbc [hl]
    ld h, a
    nop
    sub l
    xor e
    or b
    and e
    and d
    add e
    ld bc, $5C03
    ld e, a
    ld d, a
    sbc b
    nop
    ld [hl+], a
    ld d, l
    ld h, h
    ld e, e
    cp e
    ld bc, $BCB9
    cp l
    cp e
    jp $B5BA


    cp e
    jp $BCBA


    cp l
    ld l, h
    adc a
    ld [hl], l
    nop
    ld [$015B], sp
    ld e, h
    xor l
    ld d, a
    nop
    ld d, a
    nop
    ld d, h
    or b
    or c
    and e
    add d
    and c
    inc bc
    and d
    ld e, h
    ld l, a
    sbc d
    nop
    jr nz, @+$76

    or l
    res 6, l
    ret


    call z, $CBCD
    or h
    jp z, $CB01

    or h
    jp z, $CDCC

    ld e, h
    rra
    ld c, $0A
    jr jr_024_6D10

    ld bc, $5F5C
    nop
    halt
    ld h, a
    nop
    ld h, h
    ret nz

    sub h
    add d
    or c
    inc b
    di
    or d
    ld e, h
    ld a, a
    sbc d
    nop
    ld [bc], a
    add h
    ld e, e
    add d
    ld bc, $9707
    sbc b
    sbc c
    sbc e
    sbc h
    sbc b
    sbc c
    add e
    ld bc, $610C
    or l
    ld e, h
    cpl
    ld e, $1A
    jr z, jr_024_6D3B

    ld bc, $6F5C
    ld [hl], l
    add d
    nop
    inc b
    halt
    ld [hl], h
    add l
    ret nz

    add e
    pop bc
    inc bc
    jp nz, $8F8E

    sbc d
    nop
    dec c
    ld d, h
    ld e, e
    ld h, b
    sbc l
    and a
    xor b
    xor c
    xor e
    xor h
    xor b
    xor c
    add l
    call nz, $0182
    inc c
    or h
    or l
    ccf
    ld l, $2A
    jr c, @+$7D

    ld bc, $7F5C
    nop
    ld d, a

jr_024_6D10:
    add d
    nop
    ld [$9584], sp
    sub [hl]
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc e
    nop
    rlca
    ld h, h
    ld e, e
    ld bc, $7667
    nop
    ld h, a
    add d
    nop
    inc b
    ld d, a
    nop
    ld d, a
    or l
    add d
    ld bc, $C306
    ld bc, $3E4F
    inc a
    ld c, e
    add d
    ld bc, $5C02
    adc a
    add e

jr_024_6D3B:
    nop
    add hl, bc
    ld h, a
    nop
    ld d, a
    sub l
    xor d
    xor e
    xor h

jr_024_6D44:
    ld h, a
    ld d, a
    sbc d
    nop
    rlca
    ld [hl], l
    ld [hl], h
    ld e, e
    ld bc, $560F
    halt
    add d
    nop
    dec b
    ld h, l
    nop
    halt
    ld [$82B4], sp
    ld bc, $C505
    ld bc, $A1A0
    and d
    add e
    ld bc, $5C04
    ld e, a
    ld h, a
    halt
    add d
    nop
    inc bc
    halt

jr_024_6D6B:
    nop
    ld h, a
    add d
    nop
    ld bc, $9D76
    nop
    dec d
    add h
    ld e, e
    ld bc, $000F
    ld d, a
    nop
    ld [$090D], sp
    ld a, [bc]

jr_024_6D7F:
    jr jr_024_6D44

    or h
    ld h, c
    or e
    jp $B1B0


    and e
    and d
    add d
    ld bc, $8E02
    ld l, a
    adc b
    nop
    dec b
    ld d, a
    nop
    nop
    halt
    ld d, a
    sbc d
    nop
    dec c
    ld d, h
    ld e, e
    ld bc, $4D1F
    ld a, [bc]
    dec bc
    jr @+$1F

    add hl, de
    ld a, [de]
    jr z, jr_024_6D6B

    add e
    ld bc, $B508
    ret nz

    sub h
    or c
    or d
    cp e
    sbc l
    sbc [hl]
    add a
    nop
    ld bc, $8376
    nop
    ld bc, $9C67
    nop
    dec c
    ld h, h
    ld e, e
    ld bc, $5D2F
    ld a, [de]
    dec de
    jr z, jr_024_6DF2

    add hl, hl
    ld a, [hl+]
    jr c, jr_024_6D7F

    add e
    ld bc, $C50D
    ld bc, $C1C0
    jp nz, $ADCB

    nop
    ld h, a
    nop
    ld d, a
    nop
    halt
    and e
    nop
    dec c
    ld [hl], h
    ld e, e
    ld bc, $6D3F
    ld a, [hl+]
    dec hl
    jr c, @+$3F

    add hl, sp
    ld a, [hl-]
    ld c, b
    add $83
    ld bc, $C508
    or h
    push bc
    jp Jump_024_62C5


jr_024_6DF2:
    ld e, a
    ld h, a
    xor b
    nop
    ld [$5B84], sp
    ld bc, $3BB5
    ld a, [hl-]
    dec sp
    ld c, b
    add h
    ld bc, $B503
    ld bc, $8240
    ld bc, $6201
    add e
    ld bc, $5C04
    ld l, a
    ld d, a
    halt
    and a
    nop
    inc b
    ld d, h
    ld e, e
    ld bc, $82B4
    push bc
    ld b, $C3
    push bc
    call nz, $C5B4
    or e
    add l
    ld bc, $B507
    or h
    jp Jump_024_5CC5


    rra
    ld e, a
    add d
    nop
    ld bc, $A467
    nop
    inc bc
    halt
    ld h, h
    ld e, e
    adc c
    ld bc, $6001
    add l
    ld bc, $B407
    cp h
    cp l
    jp $2F5C


    ld e, a
    xor b
    nop
    ld b, $74
    ld e, e
    ld bc, $C5B4
    or h
    add d
    jp $B410


    jp $C3C5


    or h
    push bc
    jp $B4C5


    jp $CDCC


    or h
    ld a, h
    ccf
    ld l, a
    xor b
    nop
    ld [bc], a
    add h
    ld e, e
    adc e
    ld bc, $6201
    adc b
    ld bc, $6C03
    ld a, a
    halt
    and a
    nop
    rlca
    sub l
    add l
    sub a
    sbc b
    sbc d
    sbc e
    sbc h
    add [hl]
    ld bc, $C401
    add e
    ld bc, $9B08
    sbc h
    sbc h
    sbc d
    sbc e
    adc [hl]
    adc a
    ld d, a
    add d
    nop

jr_024_6E88:
    ld bc, $A376
    nop
    inc de
    ld d, a
    nop
    sub l
    and a
    xor b
    xor d
    xor e
    xor h
    add l
    push bc
    or l
    push bc
    call nz, $BBB4
    or h
    or l
    adc [hl]
    xor e
    add d
    xor h
    inc bc
    xor d
    xor e
    sbc [hl]
    xor d
    nop
    add d
    and l
    ld [$A576], sp
    and l
    ld [hl], l
    sub l
    sub [hl]
    call nz, $82B4
    ld bc, $CB05
    ld bc, $9E9D
    halt
    or h
    nop
    nop
    ld [hl-], a
    jp nz, $2701

    jr z, jr_024_6E88

    add hl, bc
    ld bc, $941E
    dec l
    ld bc, $9B1E
    dec l
    dec b
    ld e, $2F
    inc d
    add hl, bc
    dec bc
    adc d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add l
    inc d
    ld bc, $952F
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add h
    inc d
    add d
    cpl
    inc bc
    inc d
    add hl, hl
    dec hl
    adc d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add l
    inc d
    ld [bc], a
    cpl
    dec sp
    add d
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add h
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add a
    inc d
    dec b
    dec c
    inc d
    inc d
    ld c, d
    ld c, e
    add h
    inc d
    add d
    cpl
    add e
    inc d
    ld a, [bc]
    ld a, [hl-]
    inc h
    inc h
    dec sp
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    add a
    inc d
    ld b, $2F
    inc hl
    dec sp
    inc d
    add hl, hl
    dec hl
    add d
    inc d
    rlca
    ld c, $14
    ld c, d
    ld c, e
    inc d
    add hl, bc
    dec bc
    adc c
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    inc d
    add d
    cpl
    inc b
    inc d
    ld a, [hl-]
    inc h
    dec h
    add d
    ld c, l
    ld [$3B23], sp
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    ld c, $83
    inc d
    rlca
    ld a, [hl-]
    dec sp
    inc d
    cpl
    ld sp, hl
    inc hl
    dec sp
    add h
    inc d
    ld bc, $842F
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    adc c
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    inc d
    add d
    cpl
    inc b
    ld a, [hl-]
    dec h
    ld c, l
    ld c, a
    add d
    rla
    ld [bc], a
    ld c, [hl]
    inc de
    add l
    inc d
    ld bc, $832F
    inc d
    inc b
    ld c, d
    ld c, e
    dec e
    ld e, $87
    dec l
    inc bc
    ld e, $2D
    rra
    add [hl]
    inc d
    ld bc, $843A
    inc h
    ld bc, $853B
    inc d
    add d
    cpl
    ld [bc], a
    dec d
    dec a
    add d
    rla
    dec b
    ld l, l
    ld e, h
    rla
    inc hl
    dec sp
    add h
    inc d
    ld bc, $862F
    inc d
    ld bc, $842E
    inc d
    inc b
    ld c, d
    dec b
    ld sp, hl
    cpl
    add a
    inc d
    ld [bc], a
    ld a, [hl-]
    dec h
    add h
    ld c, l
    ld [bc], a
    inc hl
    dec sp
    add h
    inc d
    add d
    cpl
    inc bc
    ld c, d
    dec b
    ccf
    add d
    rla
    inc b
    ld a, a
    rla
    ld c, h
    inc de
    add h
    inc d
    ld bc, $8C2F
    inc d
    ld b, $4A
    dec b
    cpl
    inc d
    ld a, [hl-]
    dec sp
    add h
    inc d
    ld [bc], a
    dec d
    dec a
    add d
    rla
    dec b
    ld e, [hl]
    ld e, a
    ld c, [hl]
    inc hl
    dec sp
    add e
    inc d
    add d
    cpl
    add hl, bc
    inc d
    ld c, d
    dec b
    inc a
    ccf
    adc a
    rla
    ld c, h
    inc de
    add d
    inc d
    inc bc
    ld a, [hl-]
    dec sp
    cpl
    add a
    inc d
    ld bc, $850D
    inc d
    dec b
    ld c, d
    cpl
    inc d
    ld c, d
    ld c, e
    add h
    inc d
    add hl, bc
    dec d
    dec a
    rla
    rst $38
    rla
    ld a, a
    rla
    ld c, h
    inc de
    add e
    inc d
    add d
    cpl
    add d
    inc d
    inc bc
    ld c, d
    inc b
    dec b
    add d
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add d
    inc d
    inc bc
    ld c, d
    ld c, e
    cpl
    adc h
    inc d
    inc b
    dec e
    dec l
    ld e, $1F
    add d
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    inc d
    ld [bc], a
    dec d
    dec a
    add d
    rla
    dec b
    ld a, [hl]
    ld a, a
    rla
    ld c, h
    inc de
    add d
    inc d
    ld [$1E1D], sp
    cpl
    inc d
    add hl, bc
    dec bc
    inc d
    ld c, d
    add d
    inc b
    ld bc, $854B
    inc d
    ld bc, $892F
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add e
    inc d
    ld bc, $832E
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    inc d
    add hl, bc
    ld c, d
    dec b
    ccf
    ld a, a
    rla
    ld sp, hl
    ld a, $03
    ld c, e
    add e
    inc d
    add d
    cpl
    inc bc
    inc d
    add hl, hl
    dec hl
    adc d
    inc d
    ld bc, $842F
    inc d
    ld bc, $840D
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    adc h
    inc d
    ld [bc], a
    ld c, d
    dec b
    add e
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add h
    inc d
    add d
    cpl
    add h
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add a
    inc d
    ld [bc], a
    cpl
    ld c, $97
    inc d
    ld bc, $834A
    inc b
    ld bc, $854B
    inc d
    add d
    cpl
    add d
    inc d
    inc b
    dec c
    inc d
    ld c, d
    ld c, e
    add l
    inc d
    ld [bc], a
    ld a, [hl-]
    dec e
    add d
    ld e, $01
    rra
    adc c
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add l
    inc d
    dec b
    dec c
    inc d
    inc d
    ld a, [hl-]
    dec sp
    adc c
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    cpl
    add h
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add l
    inc d
    inc b
    ld c, d
    dec b
    ld sp, hl
    ld e, $85
    dec l
    ld bc, $841F
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec sp
    add l
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    adc c
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    cpl
    add h
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add [hl]
    inc d
    inc bc
    ld c, d
    dec b
    ld l, $8D
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    sub d
    inc d
    add d
    cpl
    add [hl]
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add l
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add l
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    sub h
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add h
    inc d
    add d
    cpl
    add [hl]
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    adc b
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    inc d
    ld bc, $830D
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    adc b
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add h
    inc d
    add d
    cpl
    adc b
    inc d
    ld bc, $870E
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    inc d
    ld bc, $870E
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add e
    inc d
    ld bc, $8A0D
    inc d
    add d
    cpl
    add d
    inc d
    ld bc, $851D
    dec l
    ld [bc], a
    ld e, $1F
    add e
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add h
    inc d
    ld bc, $840D
    inc d
    ld bc, $972F
    inc d
    add d
    cpl
    inc bc
    inc d
    ld a, [hl-]
    dec sp
    add d
    inc d
    inc b
    ld c, d
    dec b
    ld sp, hl
    cpl
    add h
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    adc c
    inc d
    ld bc, $872F
    inc d
    ld bc, $8F0E
    inc d
    add d
    cpl
    inc bc
    inc d
    ld c, d
    ld c, e
    add e
    inc d
    inc bc
    ld c, d
    dec b
    cpl
    adc [hl]
    inc d
    ld [bc], a
    dec e
    ld e, $87
    dec l
    ld [bc], a
    ld e, $1F
    add a
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add l
    inc d
    add d
    cpl
    add a
    inc d
    dec b
    ld c, d
    cpl
    inc d
    ld a, [hl-]
    dec sp
    add d
    inc d
    inc bc
    ld a, [hl-]
    inc h
    dec sp
    add e
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    inc b
    cpl
    ld sp, hl
    inc bc
    ld c, e
    add h
    inc d
    ld bc, $842F
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add l
    inc d
    add d
    cpl
    add e
    inc d
    rrca
    dec c
    inc d
    add hl, bc
    dec bc
    inc d
    cpl
    inc d
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec h
    ld c, l
    inc hl
    dec sp
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add d
    inc d
    inc bc
    cpl
    inc bc
    ld c, e
    add l
    inc d
    ld bc, $842F
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    adc c
    inc d
    add d
    cpl
    add l
    inc d
    inc b
    add hl, hl
    dec hl
    inc d
    cpl
    add h
    inc d
    dec b
    dec d
    dec a
    ld sp, hl
    ld c, h
    inc de
    add [hl]
    inc d
    ld [bc], a
    cpl
    ld c, e
    add d
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    inc d
    inc bc
    cpl
    inc d
    ld c, $89
    inc d
    ld bc, $830D
    inc d
    add d
    cpl
    add h
    inc d
    ld bc, $830E
    inc d
    ld bc, $842F
    inc d
    dec b
    dec d
    dec a
    rla
    ld c, h
    inc de
    add [hl]
    inc d
    ld bc, $832F
    inc d
    ld [$2B29], sp
    ld a, [hl-]
    dec e
    ld e, $2D
    ld e, $1F
    add l
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add l
    inc d
    add d
    cpl
    add e
    inc d
    ld [bc], a
    dec e

Jump_024_723D:
    ld e, $83
    dec l
    ld [bc], a
    ld e, $1F
    add e
    inc d
    dec b
    dec d
    dec a
    rla
    ld c, h
    inc de
    add [hl]
    inc d
    dec bc
    cpl
    inc d
    ld a, [hl-]
    dec sp
    inc d
    ld a, [hl-]
    dec h
    ld c, l
    ld l, $23
    cpl
    add [hl]
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add l
    inc d
    add d
    cpl
    add h
    inc d
    ld bc, $832F
    inc d
    ld bc, $832E
    inc d
    ld b, $3A
    dec h
    ld c, a
    ld e, l
    ld c, h
    inc de
    add [hl]
    inc d
    rlca
    cpl
    inc d
    ld c, d
    ld c, e
    inc d
    dec d
    ld c, $82
    rla
    ld [bc], a
    ld c, [hl]
    cpl
    adc l
    inc d
    add d
    cpl
    add d
    inc d
    inc bc
    ld a, [hl-]
    dec sp
    ld l, $86
    inc d
    rlca
    ld a, [hl-]
    dec h
    ld c, a
    rla
    ld a, a
    ld c, h
    inc de
    add e
    inc d
    inc b
    add hl, bc
    dec bc
    inc d
    cpl
    add e
    inc d
    inc bc
    ld a, [hl-]
    dec h
    cpl
    add d
    rla
    inc bc
    adc l
    cpl
    dec sp
    add h
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add [hl]
    inc d
    add d
    cpl
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add [hl]
    inc d
    inc b
    ld a, [hl-]
    dec h
    ld c, a
    ld a, a
    add d
    rla
    ld [bc], a
    ld c, h
    inc de
    add e
    inc d
    inc b
    add hl, hl
    dec hl
    inc d
    cpl
    add e
    inc d
    ld [$3D15], sp
    cpl
    ccf
    jp c, $2F3E

    inc de
    add h
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add [hl]
    inc d
    add d
    cpl
    add h
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add h
    inc d
    ld [$3D15], sp
    rla
    adc a
    rst $38
    rla
    ld c, h
    inc de
    add [hl]
    inc d
    ld bc, $832F
    inc d
    inc bc
    ld c, d
    dec b
    reti


    add e
    dec l
    ld [bc], a
    ld e, $1F
    adc h
    inc d
    add d
    cpl
    add h
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add h
    inc d
    inc bc
    ld c, d
    dec b
    ccf

Call_024_730C:
    add d
    rla
    inc bc
    ld a, $03
    ld c, e
    add [hl]
    inc d
    inc bc
    cpl
    inc d
    ld c, $82
    inc d
    ld [bc], a
    ld c, d
    ld l, $82
    inc a
    ld [bc], a
    inc bc
    ld l, $89
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    add d
    cpl
    add a
    inc d
    ld bc, $830D
    inc d
    ld [bc], a
    ld c, d
    dec b
    add d
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    dec b
    dec e
    ld e, $2D
    ld e, $1F
    add d
    inc d
    inc b
    ld c, d
    inc b
    inc b
    ld c, e
    adc d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add d
    inc d
    add d
    cpl
    add d
    inc d
    ld bc, $860D
    inc d
    inc b
    ld a, [hl-]
    dec sp
    inc d
    ld c, d
    add d
    inc b
    ld bc, $834B
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add e
    inc d
    inc bc
    cpl
    inc d
    cpl
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add a
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    adc b
    inc d
    add d
    cpl
    adc c
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    adc l
    inc d
    inc bc
    cpl
    inc d
    cpl
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add a
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    adc b
    inc d
    add d
    cpl
    add l
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add l
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    add [hl]
    inc d
    inc b
    dec e
    ld e, $2D
    ld e, $95
    dec l
    dec b
    ld e, $2F
    inc d
    ld a, [hl-]
    dec sp
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add e
    inc d
    add hl, bc
    ld c, $14
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    ld a, [hl-]
    dec sp
    add l
    inc d
    inc bc
    ld l, $14
    cpl
    add l
    inc d
    ld bc, $833A
    inc h
    ld bc, $8B3B
    inc d
    add d
    cpl
    inc bc
    inc d
    ld c, d
    ld c, e
    add a
    inc d
    ld bc, $862F
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    ld a, [hl-]
    dec sp
    add h
    inc d
    ld bc, $842F
    inc d
    ld [bc], a
    ld a, [hl-]
    dec h
    add e
    ld c, l
    ld [bc], a
    inc hl
    dec sp
    add d
    inc d
    ld [$3B3A], sp
    add hl, bc
    dec bc
    inc d
    ld a, [hl-]
    dec sp
    inc d
    add d
    cpl
    add e
    inc d
    inc bc
    ld a, [hl-]
    inc h
    dec sp
    add d
    inc d
    inc bc
    ld c, $14
    cpl
    adc c
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add h
    inc d
    ld bc, $842F
    inc d
    ld [bc], a
    dec d
    dec a
    add e
    rla
    inc c
    ld c, [hl]
    inc hl
    dec sp
    inc d
    ld c, d
    ld c, e
    add hl, hl
    dec hl
    inc d
    ld c, d
    ld c, e
    inc d
    add d
    cpl
    add d
    inc d
    inc c
    ld a, [hl-]
    dec h
    ld c, l
    inc hl
    dec e
    dec l
    ld e, $2D
    ld e, $1F
    inc d
    ld a, [hl-]
    add d
    inc h
    ld bc, $893B
    inc d
    ld bc, $832F
    inc d
    inc bc
    ld a, [hl-]
    dec h
    ld c, a
    add d
    rla
    inc b
    ld e, l
    rla
    ld c, h
    inc de
    adc c
    inc d
    add d
    cpl
    add d
    inc d
    inc c
    dec d
    dec a
    rla
    ld c, h
    inc de
    inc d
    cpl
    inc d
    ld l, $14
    ld a, [hl-]
    dec h
    add d
    ld c, l
    ld [bc], a
    inc hl
    dec sp
    add h
    inc d
    ld bc, $830D
    inc d
    ld bc, $832E
    inc d
    inc b
    dec d
    dec a
    rla
    adc h
    add e
    rla
    ld [bc], a
    ld c, h
    inc de
    adc c
    inc d
    add d
    cpl
    add d
    inc d
    db $10
    dec d
    dec a
    ld sp, hl
    ld c, [hl]
    inc hl
    dec sp
    cpl
    inc d
    ld a, [hl-]
    inc h
    dec h
    ld c, a
    rla
    ld a, a
    ld c, h
    inc de
    adc h
    inc d
    inc bc
    ld c, d
    dec b
    ccf
    add h
    rla
    ld [bc], a
    ld c, h
    inc de
    add d
    inc d
    ld bc, $830E
    inc d
    inc bc
    add hl, bc
    dec bc
    inc d
    add d
    cpl
    add d
    inc d
    ld [bc], a
    dec d
    dec a
    add d
    rla
    rlca
    ld c, [hl]
    inc hl
    cpl
    inc h
    dec h
    ld c, l
    ld c, a
    add d
    rla
    inc bc
    adc a
    ld c, h
    inc de
    add d
    inc d
    ld [bc], a
    add hl, bc
    dec bc
    add d
    inc d
    ld [bc], a
    ld a, [hl-]
    dec sp
    add d
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc d
    dec d
    dec a
    add d
    rla
    inc b
    ld sp, hl
    rla
    ld c, h
    inc de
    add d
    inc d
    rlca
    cpl
    inc d
    ld a, [hl-]
    dec sp
    add hl, hl
    dec hl
    inc d
    add d
    cpl
    add d
    inc d
    add hl, bc
    ld c, d
    dec b
    ccf
    rla
    adc e
    ld c, [hl]
    cpl
    ld c, l
    ld c, a
    add d
    rla
    dec b
    ld sp, hl
    rla
    rla
    ld c, h
    inc de
    add d
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    add d
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    dec d
    dec a
    add h
    rla
    ld [bc], a
    ld c, [hl]
    ld c, $82
    inc d
    inc b
    cpl
    inc d
    ld c, d
    ld c, e
    add e
    inc d
    add d
    cpl
    add e
    inc d
    inc bc
    ld c, d
    dec b
    ccf
    add d
    rla
    inc bc
    cpl
    rla
    ld e, l
    add h
    rla
    inc bc
    ld a, $03
    ld c, e
    adc l
    inc d
    ld [bc], a
    dec d
    dec a
    add h
    rla
    ld [bc], a
    dec e
    ld e, $82
    dec l
    ld [bc], a
    ld e, $1F
    add d
    inc h
    inc bc
    dec sp
    inc d
    inc d
    add d
    cpl
    ld a, [bc]
    inc d
    ld a, [hl-]
    dec sp
    inc d
    ld c, d
    dec b
    inc a
    ccf
    cpl
    rst $38
    add h
    rla
    inc bc
    ld a, $03
    ld c, e
    add d
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc d
    add hl, bc
    dec bc
    add d
    inc d
    ld bc, $830D
    inc d
    add hl, bc
    ld a, [hl-]
    dec h
    ld c, a
    ld e, e
    ld e, h
    rla
    ld e, [hl]
    rla
    cpl
    add d
    ld c, l
    ld bc, $832E
    ld c, l
    inc bc
    inc hl
    dec sp
    inc d
    add d
    cpl
    inc bc
    inc d
    ld c, d
    ld c, e
    add d
    inc d
    inc b
    ld c, d
    inc b
    dec b
    cpl
    add l
    inc a
    ld [bc], a
    inc bc
    ld c, e
    add e
    inc d
    dec b
    ld c, d
    ld c, e
    inc d
    add hl, hl
    dec hl
    add [hl]
    inc d
    ld [bc], a
    dec d
    dec a
    add [hl]
    rla
    ld [bc], a
    cpl
    rst $38
    add e
    rla
    dec b
    adc e
    ld sp, hl
    ld c, h
    inc de
    inc d
    add d
    cpl
    add h
    inc d
    dec b
    add hl, bc
    dec bc
    inc d
    ld c, d
    cpl
    add l
    inc b
    inc b
    ld c, e
    inc d
    ld a, [hl-]
    dec sp
    adc h
    inc d
    ld [bc], a
    ld c, d
    dec b
    add [hl]
    inc a
    ld bc, $862F
    inc a
    inc bc
    inc bc
    ld c, e
    inc d
    add d
    cpl
    add h
    inc d
    ld [bc], a
    add hl, hl
    dec hl
    add d
    inc d
    ld bc, $872F
    inc d
    ld [bc], a
    ld c, d
    ld c, e
    adc l
    inc d
    ld bc, $864A
    inc b
    ld bc, $862F
    inc b
    dec b
    ld c, e
    inc d
    inc d
    cpl
    ld e, $88
    dec l
    ld bc, $9D1E
    dec l
    ld bc, $891E
    dec l
    ld bc, $001E
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
    rrca
    rrca
    rra
    rra
    ccf
    nop
    inc bc
    ld bc, $3F1F
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [$FC], a
    add b
    di
    ld bc, $00CF
    rst $38
    db $FC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    nop
    ccf
    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    rlca
    rrca
    rrca
    rra
    ld e, $3F
    dec a
    ld a, a
    ld a, $7F
    ld a, h
    rst $38
    ld hl, sp-$02
    ldh a, [$FD]
    ldh [$FB], a
    ret nz

    cp $C0
    db $EC
    add b
    ret c

    nop
    cp e
    nop
    ld [hl], e
    nop
    jp $8300


    ld bc, $0107
    rrca
    inc bc
    rrca
    ld b, $1F
    add b
    add b
    add b
    adc b
    add b
    sbc $80
    jp $C780


    nop
    adc a
    nop
    sbc a
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0103
    inc bc
    ld bc, $0007
    rlca
    add hl, sp
    rst $38
    ld a, d
    rst $38
    db $F4
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    ret c

    nop
    call c, $DF00
    dec b
    rst $18
    inc bc
    rst $08
    ld bc, $00C7
    pop bc
    nop
    ret nz

    ld c, $7F
    inc e
    cp $38
    db $FC
    ldh a, [$F8]
    ldh [$F0], a
    ret nz

    ldh [rP1], a
    add $02
    rrca
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
    ccf
    nop
    ccf
    nop
    cp a
    nop
    rlca
    nop
    dec bc
    nop
    rrca
    nop
    rrca
    nop
    dec d
    nop
    add hl, de
    nop
    dec hl
    nop
    inc sp
    jr @+$01

    jr @+$01

    ld [hl-], a
    rst $38
    inc h
    rst $38
    ld c, h
    rst $38
    ld [$18FF], sp
    rst $38
    jr c, @+$01

    nop
    rst $00
    nop
    rst $08
    ld [bc], a
    adc a
    ld [bc], a
    adc a
    ld bc, $019F
    sbc a
    ld bc, $009F
    sbc a
    ld bc, $40E7

jr_024_76E2:
    di
    ld h, b

jr_024_76E4:
    ei
    jr nz, @-$05

    jr nz, jr_024_76E2

    jr nc, jr_024_76E4

    sub b
    db $FC
    sub b
    db $FC
    nop
    sbc a
    nop
    rst $18
    add b
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    nop
    ld d, a
    nop
    daa
    nop
    ld c, a
    nop
    ld e, a
    nop
    dec de
    nop
    scf
    nop
    cpl
    nop
    ld e, h
    jr nc, @+$01

    inc [hl]
    rst $38
    inc l
    rst $38
    ld c, b
    rst $38
    jr @+$01

    jr nc, @+$01

    inc h
    rst $38
    ld l, b
    rst $38
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rra

Jump_024_772F:
    sbc b
    db $FC
    sbc b
    cp $C8
    cp $C8
    cp $CC
    cp $CC
    cp $EC
    cp $6C
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld [hl], a
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    ld d, e
    nop
    and e
    nop
    ld b, a
    ld bc, $048F
    rla
    nop
    cpl
    inc bc
    ld e, a
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    add b
    cp $00
    ret nz

    nop
    cp a
    add b
    ldh [rNR34], a
    add b
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
    rrca
    nop
    adc a
    nop
    rrca
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $30
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld bc, $0200
    nop
    dec b
    ld bc, $000B
    scf
    ld [bc], a
    ld e, a
    inc b
    cp a
    dec c
    ld a, a
    ld b, $7F
    inc b
    cp $09
    db $FC
    inc hl
    ld hl, sp+$43
    ld hl, sp-$39
    ldh a, [$86]
    ldh a, [$86]
    ldh a, [$78]
    nop
    ldh [rSB], a
    pop bc
    rlca
    add [hl]
    rra
    inc e
    ld a, $38
    ld a, h
    jr nc, jr_024_785A

    ld h, c
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    adc a
    nop
    rrca
    nop
    rrca
    nop
    adc a
    nop
    adc a
    nop
    adc a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $FF
    cp $FF
    nop
    rst $30
    nop
    rst $30
    nop
    ld h, a
    nop
    ld h, a
    nop
    rst $20
    nop
    ld h, a
    nop
    rst $20
    nop
    rst $20
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    dec bc
    nop
    rlca
    nop
    rra
    nop
    cpl
    add hl, de
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    daa
    rst $38
    ld h, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld e, [hl]
    rst $38
    adc h
    ldh [$0C], a
    pop hl
    inc c
    pop hl
    inc c
    pop hl
    inc b
    pop af
    inc b
    or c
    inc b
    sub c
    nop
    sbc c
    ld b, d
    rst $38
    call nz, $8CFE
    cp $88
    sbc $88
    sbc h
    ld [$009C], sp
    cp h
    nop
    cp h
    nop
    rra
    ld [bc], a
    rra
    ld bc, $051F
    ccf
    dec b
    ccf
    add hl, bc

jr_024_785A:
    ld a, a
    dec bc
    ld a, a
    inc de
    rst $38
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    cp $FF
    db $FC
    rst $38
    db $FC
    rst $38
    db $FC
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rra
    nop
    ccf
    nop
    ccf
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
    ld e, $FF
    ld e, $FF
    ld a, $FF
    ld a, $FF
    ld a, $FF
    ld a, $FF
    ld a, $FF
    ld a, $FF
    nop
    ret


    nop
    ret z

    nop
    call nz, $C600
    nop
    ld [c], a
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    cp b
    nop
    cp c
    nop
    cp c
    nop
    or c
    nop
    or e
    nop
    inc hl
    nop
    ld h, a
    ld bc, $174F
    rst $38
    daa
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    db $FC
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $20
    nop
    rst $20
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    di
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld a, $FF
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$80]
    pop af
    ld bc, $038F
    rra
    ld b, $3F
    inc c
    ld a, a
    inc c
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    inc sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    ldh a, [rIE]
    ldh a, [$FE]
    ldh a, [$FE]
    ldh a, [$FE]
    ldh a, [$FE]
    ldh a, [$FC]
    ldh a, [$FC]
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop

jr_024_7956:
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    jr nz, jr_024_7956

    ld b, b
    ld sp, hl
    nop
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    ld a, l
    rst $38
    ld l, h
    rst $38
    ld l, [hl]
    rst $38
    scf
    rst $38
    add b
    pop af
    ret nz

    pop af
    ret nz

    pop af
    ret nz

    pop af
    ret nz

    pop af
    ret nz

    di
    ld b, b
    di
    nop
    di
    inc sp
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    ldh a, [$FC]
    ldh a, [$FC]
    ldh a, [$FC]
    ldh a, [$F9]
    ldh a, [$F9]
    ldh a, [$F9]
    ldh a, [$F9]
    ldh a, [$F9]
    jr nz, @-$05

    ld b, b

jr_024_79C2:
    ld sp, hl
    jr nz, @-$05

    ld h, b

jr_024_79C6:
    ld sp, hl
    jr nz, jr_024_79C2

    ld h, b
    ld sp, hl
    jr nz, jr_024_79C6

    ld h, b
    ld sp, hl
    nop
    ld e, a
    nop
    dec hl
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    add hl, de
    rst $38
    inc c
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    dec hl
    nop
    sub l
    nop
    ld b, b
    nop
    ldh [$80], a
    di
    nop
    pop hl
    nop
    add sp, $00
    ret z

    nop
    call c, $1C00
    nop
    ld c, $00
    rlca
    inc sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc b
    ld a, a
    ld [bc], a
    ccf
    ld bc, $001F
    rlca
    nop
    add c
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$F9]
    ldh a, [$F9]
    ldh [$F9], a
    ldh [$F9], a
    ret nz

    ld sp, hl
    add b
    ld sp, hl
    nop
    di
    nop
    db $E3
    ld h, b
    ld sp, hl
    ld h, b
    ld sp, hl
    ld h, b
    ld sp, hl
    ld h, b
    ld sp, hl
    ldh [$F9], a
    ret nz

    di
    ret nz

    di
    add b
    rst $30
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
    db $E3
    nop
    ld sp, hl
    nop
    inc a
    nop
    ld c, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $C000
    nop
    ldh a, [rP1]
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    jp $F000


    nop
    cp $00
    ccf
    nop
    ld c, $00
    nop
    nop
    ld bc, $FF00
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    ld bc, $0387
    rrca
    ld c, $7F

jr_024_7A85:
    jr c, jr_024_7A85

    add b
    ldh [rP1], a
    ld bc, $0700
    nop
    ccf
    add b
    rst $20
    nop
    rst $08
    nop
    sbc a
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    adc $00
    sbc [hl]
    nop
    sbc [hl]
    nop
    inc e
    nop
    adc a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, $00
    ld a, h
    nop
    ld [hl], c
    nop
    ld [c], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    adc a
    nop
    jr nc, jr_024_7ADA

jr_024_7ADA:
    ld c, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    ld c, $00
    ld c, $00
    inc e
    nop
    inc e
    nop
    jr c, jr_024_7AFC

jr_024_7AFC:
    ld a, b
    nop
    ld sp, $1C00
    nop
    jr c, jr_024_7B04

jr_024_7B04:
    ld sp, $3000
    nop
    ld h, c
    nop
    ld [c], a
    nop
    push bc
    nop
    adc d
    nop
    push bc
    nop
    sbc e
    nop
    daa
    nop
    ld e, a
    nop
    cp h
    nop
    ld h, b
    nop
    add b
    nop
    nop
    nop
    cp $00
    ldh a, [rP1]
    ld [c], a
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_024_7B2D:
    nop
    nop
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
    rlca
    ld b, $0F
    nop
    nop
    nop
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    ldh [rIE], a
    add b
    db $EB
    nop
    rrc b
    sbc c
    inc c
    rra
    ld [$0C1F], sp
    rra
    ld [$0C1E], sp
    ld e, $04
    ld e, $04
    ld e, $04
    ld a, $10
    cp l
    ld h, b
    db $FD
    ld [$103D], sp
    ld a, l
    ld b, b

jr_024_7B68:
    ld sp, hl
    nop
    ld sp, hl
    db $10
    ld sp, hl
    jr nc, jr_024_7B68

    nop
    nop
    nop
    nop
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
    inc c
    ld l, $08
    ld e, h
    db $10
    jr c, jr_024_7B86

jr_024_7B86:
    ld [hl], b
    ld [$1062], sp
    call nz, $8E20
    jr nz, jr_024_7B2D

    jr nc, @-$01

    jr nc, @-$01

    jr c, @-$01

    jr c, @-$01

    jr c, @-$01

    jr c, @-$01

    jr c, @-$01

    jr c, @-$01

    nop
    rrca
    ld bc, $011F
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    nop
    sub h
    nop
    and l
    nop
    xor c
    nop
    adc e
    ld bc, $81C3
    rst $00
    add e
    rst $08
    add e
    rst $08
    ld a, b
    db $FD
    ld [hl], b
    db $FD
    ldh a, [$FD]
    ldh a, [$FD]
    ldh a, [$FD]
    ldh [$FC], a
    ldh [$FE], a
    ldh [$F6], a
    rlca
    ld a, a
    inc bc
    ccf
    ld bc, $001F
    rrca
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    add e
    rst $18
    add e
    rst $18
    inc bc
    rst $18
    add e
    rst $18
    ld bc, $00AF
    and a
    nop
    reti


    nop
    ld h, b
    ldh [$F6], a
    ldh [$F6], a
    ldh [$F6], a
    ldh [$F6], a
    ldh [$F6], a
    ret nz

    db $F4
    nop
    db $ED
    nop
    add hl, de
    nop
    jr nz, jr_024_7C02

jr_024_7C02:
    inc d
    nop
    ld d, $00
    dec d
    nop
    dec d
    nop
    ld [hl+], a
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    rst $00
    nop
    sbc a
    nop
    inc a
    nop
    ld c, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $E3
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    db $E3
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $FC
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $FF
    cp $FF
    cp $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    dec b
    ld bc, $0302
    nop
    ld a, h
    add [hl]
    nop
    ld [bc], a
    ld a, h
    ld bc, $0282
    inc b
    inc bc
    nop
    ld d, b
    dec l
    add [hl]
    ld e, $0A
    ld l, $53
    nop
    ld a, h
    nop
    ld [de], a
    ld a, h
    inc de
    nop
    ld sp, $2285
    ld a, [bc]
    ld [hl-], a
    nop
    ld de, $7C12
    inc de
    ld a, h
    inc de
    inc c
    dec l
    add h
    ld l, $04
    cpl
    ld a, [bc]
    ld de, $827C
    nop
    dec b
    ld [de], a
    ld b, b
    inc hl
    ld sp, $8541
    nop
    inc bc
    ld b, d
    ld [hl-], a
    ld hl, $2282
    inc b
    inc hl
    ld sp, $1C41
    add [hl]
    ld d, h
    inc b
    ld a, [de]
    ld b, d
    ld b, e
    nop
    add d
    ld a, h
    inc bc
    ld d, b
    ld b, b
    ld b, c
    add a
    nop
    ld bc, $8442
    ld [hl+], a
    inc bc
    ld b, c
    add h
    inc l
    add [hl]
    ld d, h
    ld b, $1A
    add sp, $53
    ld a, h
    nop
    ld [de], a
    add d
    ld d, b
    add e
    nop
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    adc b
    nop
    ld bc, $861C
    ld d, h
    rlca
    ld a, [bc]
    ld [hl], h
    ld bc, $0063
    ld a, h
    ld [de], a
    add d
    ld d, b
    add e
    nop
    inc bc
    ld h, [hl]
    ld h, a
    ld l, b
    adc b
    nop
    ld de, $591C
    ld e, d
    ld e, e
    ld d, h
    ld a, [bc]
    dec bc
    ld [hl], h
    ld bc, $0163
    ld [bc], a
    inc bc
    ld [hl-], a
    inc de
    ld h, b
    inc bc
    add a
    nop
    ld bc, $8401
    ld [bc], a
    inc de
    inc bc
    inc e
    ld l, c
    ld l, d
    ld l, e
    ld d, h
    ld a, [de]
    db $EB
    ld bc, $7C63
    ld d, e
    nop
    ld a, h
    ld hl, $1241
    ld h, b
    inc bc
    add l
    nop
    inc bc
    ld bc, $7C63
    add e
    nop
    ld [bc], a
    ld d, b
    inc e
    add h
    ld d, h
    ld b, $2A
    sub h
    ld d, e
    ld a, h
    ld bc, $8263
    nop
    add d
    ld [de], a
    inc bc
    nop
    ld a, h
    ld h, b
    add l
    ld [bc], a
    ld bc, $8463
    nop
    inc b
    ld a, h
    ld d, b
    ld h, h
    inc c
    add h
    ld d, h
    rlca
    ld a, [de]
    ld d, e
    nop
    ld d, e
    ld bc, $0302
    adc [hl]
    ld [hl+], a
    dec b
    ld [hl-], a
    nop
    ld h, b
    inc bc
    ld h, h
    add h
    dec bc
    rlca
    ld [hl], h
    ld d, e
    ld a, h
    ld d, e
    ld de, $137C
    add d
    dec d
    ld bc, $843E
    dec h
    inc c
    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    dec hl
    sub h
    ld b, d
    ld [hl-], a
    nop
    ld h, b
    inc bc
    add l
    nop
    add hl, bc
    ld de, $1100
    ld hl, $2322
    dec d
    ld a, $26
    add h
    jr z, jr_024_7E1B

    inc h
    ccf
    ld c, [hl]
    ld b, $08
    add hl, bc
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    ld a, h
    ld h, b

jr_024_7E1B:
    add d
    ld [bc], a
    dec de
    inc bc
    nop
    nop
    ld b, d
    ld b, e
    ld hl, $0043
    ld bc, $1615
    add hl, de
    ld [hl], c
    cp e
    cp h
    ld d, h
    daa
    inc h
    ccf
    ld c, [hl]
    dec b
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    add d
    nop
    ld [bc], a
    ld a, h
    inc de
    add e
    nop
    dec de
    ld d, e
    nop
    ld d, e
    ld a, h
    ld de, $1615
    add hl, de
    add c
    set 1, h
    ld d, h
    ld [$2427], a
    dec h
    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld [hl-], a
    nop
    ld b, b
    inc hl
    add e
    nop
    dec bc
    ld d, e
    ld a, h
    ld de, $2100
    dec d
    ld d, $19
    sub c
    db $DB
    call c, $5483
    jr jr_024_7E95

    jr z, jr_024_7E94

    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    ld b, d
    ld b, e
    ld d, b
    ld a, d
    ld a, e
    ld a, h
    nop
    ld d, e
    nop
    ld hl, $3222
    ld a, $26
    add hl, hl
    add e
    ld d, h
    rra
    rlca
    ld [$0908], sp
    ld d, h
    daa
    inc h
    ccf
    ld c, [hl]
    ld b, $09
    ld a, [hl+]

jr_024_7E94:
    sub h

jr_024_7E95:
    ld d, e
    ld h, b
    inc bc
    adc e
    adc h
    nop
    ld d, e
    nop
    jp $21C4


    ld d, $19
    ld d, h
    ld [$0754], a
    inc b
    add d
    dec b
    dec c
    ld b, $09
    ld d, h
    daa
    inc h
    ccf
    ld d, $19
    ld d, h
    ld a, [de]
    ld de, $137C
    add d
    nop
    ld de, $1110
    ld [de], a
    db $D3
    call nc, $167C
    add hl, de
    ld a, [bc]
    inc c
    ld d, h
    rla
    inc d
    ld [hl], $37
    ld d, $19
    add d
    ld d, h
    inc h
    rla
    inc d
    ld c, [hl]
    ld b, $09
    ld a, [de]
    ld hl, $2322
    add h
    dec hl
    sub h
    ld hl, $E343
    db $E4
    nop
    ld d, $19
    ld a, [de]
    ld h, h
    inc c
    rla
    inc d
    ld b, [hl]
    ld b, a
    ld c, [hl]
    ld b, $09
    ld [$1417], a
    dec d
    ld d, $19
    ld a, [hl+]
    add e
    dec hl
    db $10
    inc l
    ld d, h
    ld a, [hl+]
    sub h
    ld de, $F4F3
    nop
    ld d, $19
    ld a, [de]
    nop
    inc e
    daa
    inc h
    ccf
    add d
    dec d
    ld a, [bc]
    ld c, [hl]
    ld b, $08
    inc b
    ld c, a
    dec d
    ld d, $19
    ld d, h
    ld [$5485], a
    ld c, $1A
    ld hl, $3222
    ld a, h
    ld d, $19
    ld a, [hl+]
    dec hl
    inc l
    ld d, h
    daa
    inc h
    ccf
    add d
    dec d
    inc bc
    ld c, [hl]
    dec b
    ld c, a
    add d
    dec d
    ld [bc], a
    ld d, $19
    add a
    ld d, h
    ld [$001A], sp
    nop
    ld hl, $4E43
    ld b, $09
    add h
    ld d, h
    ld [bc], a
    daa
    inc h
    add l
    dec h
    inc b
    ccf
    dec d
    ld c, [hl]
    ld b, $82
    ld [$0902], sp
    ld [$5483], a
    ld [$2B2A], sp
    sub h
    nop
    ld de, $4E15
    ld b, $84
    ld [$0902], sp
    daa
    add l
    jr z, jr_024_7F61

    inc h
    ccf
    dec d
    ld c, [hl]

jr_024_7F61:
    add d
    dec b
    ld [bc], a
    ld b, $09
    add d
    ld d, h
    ld b, $07
    ld [$2A09], sp
    sub h
    ld hl, $1582
    ld bc, $844E
    dec b
    inc b
    ld b, $09
    ld d, h
    ld a, [bc]
    add d
    dec bc
    ld de, $170C
    inc d
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, $19
    ld d, h
    rlca
    inc b
    dec b
    ld b, $09
    ld a, [de]
    ld a, [c]
    add a
    dec d
    rla
    ld c, [hl]
    ld b, $09
    ld a, [hl+]
    sub h
    dec de
    inc e
    rla
    inc d
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld d, $19
    ld d, h
    rla
    inc d
    dec d
    ld d, $19
    ld a, [hl+]
    dec hl
    adc b
    dec d
    ld [$064E], sp
    add hl, bc
    ld a, [de]
    dec de
    inc e
    daa
    inc h
    add h
    dec h
    ld a, [bc]
    ld h, $29
    ld d, h
    daa
    inc h
    ccf
    ld d, $19
    ld [$8807], a
    dec d
    ld [$263E], sp
    add hl, hl
    ld a, [hl+]
    sub h
    ld h, h
    inc c
    daa
    add h
    jr z, jr_024_7FCF

    add hl, hl

jr_024_7FCF:
    add e
    ld d, h
    ld b, $17
    inc d
    ld c, [hl]
    ld b, $08
    inc b
    adc b
    dec d
    rlca
    ld c, [hl]
    ld b, $09
    db $EC
    ld a, [hl+]
    dec hl
    inc l
    adc c
    ld d, h
    ld b, $17
    inc d
    dec d
    ld c, [hl]
    dec b
    ld c, a
    adc c
    dec d
    ld [bc], a
    ld c, [hl]
    ld b, $8D
    ld [$0402], sp
    ld c, a
    adc [hl]
    dec d
    ld bc, $8D4E
    dec b
    ld bc, $854F
    dec d
    nop
