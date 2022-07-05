; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    jr nz, jr_02F_4002

jr_02F_4002:
    inc b
    ret nz

    ld c, e
    nop
    ld bc, $8AA6
    nop
    ld bc, $94A2
    nop
    ld bc, $8AA6
    nop
    ld bc, $94A2
    nop
    ld bc, $8AA6
    nop
    ld bc, $C0A2
    sub a
    nop
    add e
    ld [$009D], sp
    add e
    ld [$EBC0], sp
    nop
    add e
    ld [$009D], sp
    add e
    ld [$008B], sp
    add e
    and b
    sbc l
    nop
    add e
    and b
    ret nz

    ld l, a
    nop
    add e
    and h
    sbc l
    nop
    add e
    and h
    ret nz

    ld l, [hl]
    nop
    ld bc, $9FA6
    nop
    ld bc, $9FA6
    nop
    ld bc, $B5A6
    nop
    nop
    inc d
    sub b
    ld bc, $C201
    ret nz

    ld l, b
    ld [$C001], sp
    adc c
    nop
    adc d
    ld [$008A], sp
    adc d
    ld [$0002], sp
    ld b, b
    adc b
    nop
    adc d
    ld [$0083], sp
    ld bc, $8608
    nop
    adc d
    ld [$0002], sp
    ld b, c
    adc b
    nop
    adc d
    ld [$008A], sp
    adc d
    ld [$0002], sp
    ld b, d
    adc b
    nop
    adc d
    ld [$008A], sp
    adc d
    ld [$0086], sp
    add e
    ld [$0001], sp
    adc d
    ld [$C101], sp
    add l
    nop
    inc b
    ld [$0800], sp
    nop
    ret nz

    ld l, c
    ld [$1E00], sp
    ld c, $01
    inc de
    dec b
    jp nz, $9F01

    add d
    ld [bc], a
    db $FD
    add d
    sbc d
    db $FD
    add d
    add d
    add a
    db $FD
    ld bc, $94A9
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    ld [bc], a
    db $FD
    xor c
    sbc d
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    adc b
    db $FD
    ld bc, $93A9
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    add d
    add d
    sbc h
    db $FD
    sbc a
    add d
    nop
    ld b, b
    nop
    db $10
    ret z

    ld a, [$8500]
    and h
    cp e
    nop
    add l
    and h
    cp e
    nop
    add l
    and h
    add d
    nop
    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    add [hl]
    and h
    adc e
    nop
    add l
    and e
    and d
    nop
    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    add [hl]
    and h
    adc e
    nop
    add l
    and e
    and d
    nop

jr_02F_4115:
    add l
    and b
    inc bc
    and a
    and [hl]
    and l
    add [hl]
    and h
    adc e
    nop
    add l
    and e
    jp $00D9


    add l
    and h
    cp e
    nop
    add l
    and h
    cp e
    nop
    add l
    and h
    pop bc
    add [hl]
    nop
    nop
    ld [hl-], a
    call nz, $C209
    ld e, a
    ld [$0084], sp
    ld [bc], a
    ld [$82C0], sp
    ld [$C106], sp
    ld [$C208], sp
    ld [$0408], sp
    jp $0808


    call nz, $08A0
    sub e
    nop
    ld bc, $8308
    nop
    sbc e
    ld [$0082], sp
    ld bc, $9308
    nop
    sbc h
    ld [$0093], sp
    sbc a
    ld [$0088], sp
    ld bc, $8508
    nop
    xor d
    ld [$0082], sp
    ld bc, $8408
    nop
    xor e
    ld [$0086], sp
    xor h
    ld [$0083], sp
    push bc
    cp $08
    nop
    ld bc, $9000
    nop
    ld d, b
    db $10
    ld [$0922], sp
    jr nz, jr_02F_4115

    push bc
    ld d, e
    inc b
    ld bc, $202F
    adc [hl]
    ld b, l
    ld d, h
    inc b
    ld bc, $602F
    adc [hl]
    ld c, e
    ld h, e
    ld bc, $2F02
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$E020], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a

jr_02F_41A5:
    ld [bc], a
    cpl
    nop
    sub b
    nop
    ld c, b
    db $10
    ld [$B022], sp
    adc [hl]
    ld c, e
    ld h, [hl]
    ld bc, $2F02
    ld [hl], b
    adc a
    push bc
    ld d, d
    inc b
    ld bc, $702F
    adc [hl]
    add l
    ld c, b
    inc b
    ld bc, $012F
    nop
    sub b
    nop
    ld e, b
    db $10
    ld [$0823], sp
    nop
    sub b
    nop
    ld e, b
    db $10
    ld [$A022], sp
    adc [hl]
    push bc
    ld c, [hl]
    inc b
    ld bc, $A02F
    adc a
    add l
    ld c, e
    inc b
    ld bc, $202F
    adc a
    push bc
    ld c, e
    inc b
    ld bc, $202F
    adc [hl]
    dec b
    ld c, e
    inc b
    ld bc, $602F
    adc [hl]
    xor e
    ld h, h
    ld bc, $2F02
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0220], sp
    nop
    add b
    push hl
    ld d, h
    db $10
    dec b
    jr z, jr_02F_420D

jr_02F_420D:
    sub b
    nop
    ld e, b
    db $10
    ld [$071D], sp
    jr nz, jr_02F_41A5

    ld b, l
    ld c, a
    inc b
    ld bc, $202F
    adc [hl]
    add l
    ld c, [hl]
    inc b
    ld bc, $602F
    adc [hl]
    adc e
    ld h, e
    ld bc, $2F02
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$E020], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    ld [hl], b
    adc [hl]
    add l
    ld c, a
    inc b
    ld bc, $002F
    sub b
    nop
    ld h, b
    db $10
    ld [$0023], sp
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02F_4253:
    dec a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02F_4253

    db $EC
    db $10
    ccf
    inc e
    ccf
    inc e
    cpl
    ld e, $1F
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    db $10
    add sp, -$10
    ret c

    ldh [$30], a
    ret nz

    ret nz

    nop
    nop
    nop
    ld l, a
    nop
    ret c

    inc b
    or e
    dec bc
    ld h, a
    rla
    adc $2E
    adc [hl]
    ld l, $8E
    ld l, $A7
    rla
    or $00
    dec de
    jr nz, @-$71

    sub b
    ld b, $08
    inc bc
    inc b
    ld bc, HeaderLogo
    inc b

jr_02F_42A3:
    dec b
    ld [$2B93], sp
    xor b
    inc d
    sub a
    ld [$07C8], sp
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    adc c
    sub h
    dec d
    jr z, jr_02F_42A3

    db $10
    inc de
    ldh [$E6], a
    nop
    dec c
    nop
    ei
    nop
    or $00
    ld c, d
    ld bc, $0195
    ei
    ld h, $20
    inc bc
    ld h, b
    ld bc, $26FB
    jr nz, jr_02F_42D6

    jr nz, jr_02F_42DB

    nop

jr_02F_42D6:
    ld hl, $5D00
    ld a, [hl-]
    ld l, l

jr_02F_42DB:
    ld [hl], l
    ld a, a
    nop
    ld e, l
    rst $38
    scf
    rra
    ld a, h

jr_02F_42E3:
    ldh [rNR41], a
    ldh [rNR41], a
    ld a, [bc]

jr_02F_42E8:
    ld [hl], $D5
    ld a, [hl]
    nop
    ld e, l
    sub d
    ld l, e
    nop
    ld e, l
    ei
    ld h, $1B
    ld d, $00
    ld e, l
    ld [hl], e
    ld a, [hl]
    sub d
    ld l, e
    ldh [rNR41], a
    nop
    nop
    add h
    db $10
    ld c, d
    add hl, hl
    rst $38
    ld a, a
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    jr jr_02F_4314

    scf
    cpl
    ccf
    ld [$003F], sp
    ccf

jr_02F_4314:
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02F_42E3

    ld [$8CF0], sp
    db $F4
    call nz, $C478
    jr c, jr_02F_42E8

    jr c, @+$39

    ld [$2F38], sp
    inc a
    daa
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    adc h
    ld a, b
    inc c
    db $F4
    inc a
    db $F4
    ld hl, sp-$38
    ret c

    jr c, jr_02F_4370

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    rlca
    ld a, a
    adc h
    ld a, l
    nop
    ld a, h
    db $ED
    inc d
    rst $10

jr_02F_434E:
    dec h
    or l

jr_02F_4350:
    ld hl, $1D72
    db $ED

jr_02F_4354:
    inc d
    nop
    ld a, h
    dec d
    ld [hl+], a
    ld c, [hl]
    dec d
    add [hl]
    ld [$7D8C], sp
    nop
    ld a, h
    ld c, [hl]
    dec d
    add [hl]
    ld [$25D7], sp
    ld de, $2A5E
    dec a
    add l
    jr z, jr_02F_436E

jr_02F_436E:
    ld a, h
    inc hl

jr_02F_4370:
    inc bc
    add e
    ld [bc], a
    jp nz, $BF01

    ld [hl-], a
    ld a, a
    ld h, $3F
    ld d, $FF
    ld bc, $0802
    ld c, e
    db $10
    ld d, l
    ld [hl], $FF
    ld a, a
    ld e, a
    nop
    add b
    nop
    nop
    nop
    cp h
    nop
    cp b
    ld bc, $00B0
    and b
    nop
    and b
    nop
    ld a, [$0100]
    nop
    nop
    nop
    dec a
    nop
    dec e
    ret nz

    dec c
    ldh [rTIMA], a
    ld [hl], b
    dec b
    ld [hl], b
    and b
    nop
    or b
    nop
    cp b
    ld bc, $00BC
    add b
    nop
    cpl
    nop
    add b
    nop
    ld e, a
    nop
    dec b
    ld [hl], b
    dec c
    ldh [rNR33], a
    ret nz

    dec a
    nop
    ld bc, $F400
    nop
    ld bc, $FA00
    nop
    nop
    nop
    add e
    inc a
    ld bc, $8039
    jr nc, jr_02F_434E

    jr nz, jr_02F_4350

    jr nz, @-$7E

    jr nz, jr_02F_4354

    jr nc, jr_02F_43D6

jr_02F_43D6:
    nop
    pop bc
    inc a
    ret nz

    call c, $ECE1
    ld [hl], c
    ld [hl], h
    ld [hl], c
    ld [hl], h
    ld [hl], c
    ld [hl], h
    pop hl
    db $EC
    add c
    add hl, sp
    cp a
    inc a
    add b
    nop
    add b
    rra
    sbc a
    nop
    rra
    nop
    add b
    nop
    ld e, a
    nop
    pop bc
    call c, $3CFD
    ld bc, $0100
    ld hl, sp-$07
    nop
    ld hl, sp+$00
    ld bc, $FA00
    nop
    jr c, jr_02F_4409

    rra
    ld h, [hl]

jr_02F_4409:
    rra
    nop
    nop
    nop
    db $10
    ld c, b
    rra
    ld h, [hl]
    rra
    nop
    nop
    nop
    nop
    ld e, b
    rra
    ld h, [hl]
    rra
    nop
    nop
    nop
    jr c, jr_02F_4421

    pop af
    ld a, [hl-]

jr_02F_4421:
    rst $08
    nop
    nop
    nop
    db $10
    ld c, b
    pop af
    ld a, [hl-]
    rst $08
    nop
    nop
    nop
    nop
    ld e, b
    pop af
    ld a, [hl-]
    jr c, jr_02F_4435

    nop
    nop

jr_02F_4435:
    jr c, jr_02F_4439

    rst $38
    cpl

jr_02F_4439:
    db $10
    ld c, b
    nop
    nop
    ldh [$7F], a
    ldh [$7F], a
    ldh [$7F], a
    ldh [$7F], a
    dec c
    ld d, h
    rlca
    inc l
    nop
    nop
    jr jr_02F_44C9

    nop
    ld a, h
    nop

jr_02F_4450:
    nop
    xor [hl]

jr_02F_4452:
    ld c, l
    and [hl]
    jr z, jr_02F_4463

    ld d, h
    nop
    nop
    rlca
    inc l
    jr @+$7E

    dec c
    ld d, h
    nop
    nop
    and b
    nop

jr_02F_4463:
    adc b
    ld bc, $540D
    nop
    nop
    dec [hl]
    ld bc, $09FF
    dec c
    ld d, h
    nop
    nop
    rst $38
    ld a, [hl]
    rra

jr_02F_4474:
    ld a, h
    ld [hl], h
    ld a, [hl]
    adc h
    ld a, l
    add l
    ld a, h
    nop
    ld a, h
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_02F_44A7:
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    nop
    ret c

    inc b

jr_02F_44C9:
    or c
    add hl, bc
    ld h, b
    db $10
    ret nz

    jr nz, jr_02F_4450

    jr nz, jr_02F_4452

    jr nz, jr_02F_4474

    db $10
    or $00
    dec de
    jr nz, jr_02F_44A7

    ret nc

    and $E8
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], h
    ld [hl], c
    ld [hl], h
    push hl
    add sp, -$6F
    add hl, hl
    xor b
    inc d
    sub a
    ld [$07C8], sp
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    ret


    call nc, $2815
    jp hl


    db $10
    inc de
    ldh [$E6], a
    nop
    dec c
    nop
    ei
    nop
    or $00
    ld l, a
    nop
    rst $18
    nop
    or b
    nop
    ld h, b
    inc b
    ret nz

    dec bc
    add b
    rla
    add b
    ld l, $80

jr_02F_4514:
    ld l, $F6
    nop
    ei
    nop
    dec c
    nop
    ld b, $20
    inc bc
    sub b
    ld bc, $0108
    inc b
    ld bc, $8004
    ld l, $A0
    rla
    sub b
    dec bc
    ret z

    inc b
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    ld bc, $0504
    ld [$9009], sp
    inc de
    jr nz, @-$18

    nop
    dec c
    nop
    ei
    nop
    or $00
    ld e, a
    nop
    add b

jr_02F_4548:
    nop
    nop
    nop
    cp h
    nop
    cp b
    inc bc
    or b
    rlca
    and b
    ld c, $A0
    ld c, $FA
    nop
    ld bc, $0000
    nop
    dec a
    nop
    dec e
    add b
    dec c
    nop
    dec b
    nop
    dec b
    nop
    and b
    ld c, $B0
    rlca
    cp b
    inc bc
    cp h
    nop
    add b
    nop
    cpl
    nop
    add b
    nop
    ld e, a
    nop
    dec b
    nop
    dec c
    nop
    dec e
    add b
    dec a
    nop
    ld bc, $F400
    nop
    ld bc, $FA00
    nop
    ld l, a
    nop
    rst $18
    nop
    or b
    nop
    ld h, b

jr_02F_458C:
    inc b
    ret nz

    add hl, bc
    add b
    db $10
    add b
    jr nz, jr_02F_4514

    jr nz, jr_02F_458C

    nop
    ei
    nop
    dec c
    nop
    ld b, $20
    inc bc
    ret nc

    ld bc, $01E8
    ld [hl], h
    ld bc, $8074
    jr nz, jr_02F_4548

    db $10
    sub b
    add hl, bc
    ret z

    inc b
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    ld bc, $0574
    add sp, $09
    ret nc

    inc de
    jr nz, @-$18

    nop
    dec c
    nop
    ei
    nop
    or $00
    nop
    nop
    add e
    inc a
    inc bc
    dec sp
    add a
    scf
    adc [hl]
    ld l, $8E
    ld l, $8E
    ld l, $87
    scf
    nop
    nop
    pop bc
    inc a
    add b
    sbc h
    ld bc, $010C
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $830C
    dec sp
    cp a
    inc a
    add b
    nop
    add b
    rra
    sbc a
    nop
    rra
    nop
    add b
    nop
    ld e, a
    nop
    add c
    sbc h
    db $FD
    inc a
    ld bc, $0100
    ld hl, sp-$07
    nop
    ld hl, sp+$00
    ld bc, $FA00
    nop
    ret nz

    inc h
    dec l
    ld c, [hl]
    ld l, l
    ld e, l
    ld d, e
    ld l, l
    ldh a, [rPCM34]
    ld a, [bc]
    ld e, d
    ret nz

    inc h
    inc d
    ld a, a
    inc d
    ld a, a
    ld a, [bc]
    ld d, [hl]
    add e
    dec [hl]
    ret nz

    inc h
    rra
    ld a, l
    ldh [$2B], a
    nop
    ld sp, $24C0
    add e
    dec [hl]
    ld [$D355], a
    halt
    ldh a, [rPCM34]
    ret nz

    inc h
    nop
    ld sp, $5D6D
    db $D3
    ld [bc], a
    ldh a, [rPCM34]
    or d
    ld a, a
    db $EB
    ld a, a
    ld d, h
    ld a, a
    nop
    nop
    cpl
    add hl, de
    rst $28
    dec a
    rst $38
    ld a, a
    ld h, c
    db $10
    ld c, b
    ld b, c
    ld [de], a
    halt
    ld [c], a
    jr @+$4A

    ld b, c
    ld [de], a
    halt
    ld h, c
    db $10
    jr jr_02F_46D4

    jp nc, Jump_02F_5F00

    add hl, hl
    rst $38
    ld c, d
    ld h, c
    db $10
    ld [de], a
    halt
    ld b, d
    ld e, d
    ld h, c
    db $10
    ld c, b
    ld b, c
    jr jr_02F_46E6

    ld h, c
    db $10
    ld b, d
    ld e, d
    ld c, b
    ld b, c
    nop
    dec [hl]
    ld b, d
    ld e, d
    ld h, c
    db $10
    ld [c], a
    jr @+$07

    ld b, a
    db $EB
    ld a, a
    ld [c], a
    jr jr_02F_46DC

    dec l
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ei
    ld h, $95
    ld hl, $2CC8
    ld a, b
    ld c, [hl]
    ei
    ld h, $80
    ld bc, $1394
    ld l, h
    ld [bc], a
    jr nz, jr_02F_46F4

    ld d, c
    ld a, a
    ei
    ld h, $1B
    ld d, $83
    jr c, @+$01

    scf
    rra
    ld a, h
    ldh [rNR41], a
    ldh [rNR41], a
    ld a, [bc]
    ld [hl], $D5
    ld a, [hl]
    add e
    jr c, jr_02F_46FF

    ld a, a
    add e
    jr c, @-$03

    ld h, $1B
    ld d, $83
    jr c, jr_02F_46D8

    ld e, l
    ld d, c
    ld a, a
    ret nz

    ld [hl], c
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    cp e
    ld a, [hl+]
    dec bc
    inc h

jr_02F_46C9:
    rst $20
    add hl, hl
    ld [hl], e
    ld l, [hl]
    dec bc
    inc h
    ld a, [hl+]
    add hl, sp
    rst $20
    add hl, hl
    adc l

jr_02F_46D4:
    ld b, d
    cp e
    ld a, [hl+]
    dec bc

jr_02F_46D8:
    inc h
    sub d
    dec h
    ld e, d

jr_02F_46DC:
    ld [hl-], a
    cp e
    ld a, [hl+]
    ld d, b
    dec l
    or h
    add hl, sp
    ld e, a
    inc sp
    ld d, b

jr_02F_46E6:
    dec l
    nop
    ld e, h
    ld h, b
    ld a, a
    rst $38
    ld a, a
    sub c
    ld h, a
    dec bc
    inc h
    rst $20
    add hl, hl
    ld [hl], e

jr_02F_46F4:
    ld l, [hl]
    dec bc
    inc h
    rst $20
    add hl, hl
    cp e
    ld a, [hl+]
    sub d
    dec h
    nop
    nop

jr_02F_46FF:
    ld d, d
    dec c
    ld l, e
    dec l
    rst $38
    ld a, a
    ld d, e
    ld h, l
    and b
    dec d
    and b
    ld e, d
    ld b, l
    ld l, a
    ld b, b
    ld a, [hl-]
    ld b, l
    ld l, a
    db $EB
    ld a, a
    rst $18
    ld [hl], e
    ld c, h
    dec [hl]
    nop
    inc [hl]
    and b
    ld e, d
    db $EB
    ld a, a
    nop
    inc [hl]
    xor [hl]
    ld d, b
    ld d, $58
    sbc l
    ld [hl], $4C
    dec [hl]
    nop
    inc [hl]
    xor $00
    ldh [rSB], a
    ld c, h
    dec [hl]
    nop
    inc [hl]
    ret nz

    dec a
    ld a, [$4C01]
    dec [hl]
    nop
    inc [hl]
    ld d, $00
    or c
    add hl, hl
    ld a, [hl+]
    add hl, hl
    add sp, $20
    and [hl]
    jr jr_02F_46C9

    inc d
    nop
    inc bc
    nop
    inc c
    rlca
    db $10
    rrca
    jr nz, jr_02F_476D

    ld b, b
    rra
    add b
    ld e, $80
    inc b
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
    ld b, b
    ld b, b
    add b
    ld [bc], a
    ldh [rSB], a
    ld d, b

jr_02F_476D:
    nop
    adc a
    nop
    ret nz

    rrca
    ld [hl], b
    nop
    rra
    jr c, @+$04

    ld [hl-], a
    ld bc, $0740
    add b
    ld a, [bc]
    nop
    pop af
    ld [$F003], sp
    ld c, $00
    ld hl, sp+$00
    nop
    nop
    ld b, b
    rra
    ld b, e
    ld e, a
    ld c, a
    ld e, $4F
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    nop
    nop
    nop
    ld [bc], a
    ld hl, sp-$1E
    ld a, [$08F2]
    ld a, [$0AF2]
    ld a, [$FA02]
    ld [bc], a
    ld c, a
    ld e, [hl]
    ld e, a
    ld c, a
    ld d, e
    ld c, a
    ld e, h
    ld b, e
    ld b, b
    ld b, b
    nop
    ld e, a
    nop
    ccf
    nop
    nop
    ld a, [$F20A]
    ld a, [$F2EA]
    ld a, [de]
    ld [c], a
    ld [bc], a
    ld [bc], a
    nop
    ld a, [$FC00]
    nop
    nop
    nop
    ld b, d
    ld c, e
    dec a
    ld sp, $0056
    jr z, jr_02F_47CE

jr_02F_47CE:
    ld b, d
    xor l
    ld bc, $7EC0
    nop
    jr z, jr_02F_47D6

jr_02F_47D6:
    ld b, d
    dec d
    jr c, jr_02F_4839

    ld [bc], a
    nop
    jr z, jr_02F_47DE

jr_02F_47DE:
    ld b, d
    ldh [$03], a
    nop
    ld a, h
    nop
    jr z, jr_02F_47E6

jr_02F_47E6:
    ld b, d
    or d
    ld d, b
    ld sp, $0056
    jr z, @+$01

    inc bc
    jr nz, @+$04

    adc b
    ld bc, $2800
    rst $38
    inc bc
    or d
    ld d, b
    rst $08
    jr nc, jr_02F_47FC

jr_02F_47FC:
    jr z, jr_02F_47FE

jr_02F_47FE:
    nop
    dec c
    ld bc, $0114
    rst $38
    ld a, a
    nop
    inc bc
    inc bc
    rrca
    rrca
    jr jr_02F_482B

    jr nc, @+$41

    ld h, b
    ld a, a
    ldh [$7F], a
    pop hl
    ld a, $7A
    nop
    ret nz

    ret nz

    ldh a, [$F0]
    jr @-$06

    inc b
    db $FC
    ld b, $FE
    inc bc
    cp $83

jr_02F_4823:
    ld a, h
    ld b, [hl]
    inc a
    ld a, h
    ld a, h
    cp h
    ld e, $FC

jr_02F_482B:
    cpl
    ld a, [hl]
    ld [hl], b
    rst $38
    ccf
    rst $38
    rrca
    ld [hl], b
    nop
    rra
    inc a
    ld b, $3E
    dec c

jr_02F_4839:
    ld a, b
    ccf
    db $F4
    ld a, [hl]
    ld c, $FF
    db $FC
    rst $30
    ldh a, [$0E]

jr_02F_4843:
    nop
    ld hl, sp+$44
    jr nc, jr_02F_4848

jr_02F_4848:
    ld b, h
    jr nz, jr_02F_486C

    inc h
    ld b, $24
    ld b, $C3
    ld a, [hl+]
    inc l
    ld b, $F0
    rra
    ld b, h
    jr nc, jr_02F_4823

    ld c, b
    or d
    add hl, de
    rst $18
    ld [hl], e
    rlca
    inc l
    ld b, [hl]
    ld bc, $258F
    ld d, a
    scf
    ld c, a
    ld a, l
    ld b, h
    jr nc, jr_02F_48B9

    jr nz, jr_02F_488D

jr_02F_486C:
    dec e
    ld b, h
    jr nc, @+$09

    inc l
    ld b, [hl]
    ld bc, $258F
    and [hl]
    jr c, jr_02F_4843

    ld c, b
    dec l
    ld de, $2A15
    ld [bc], a
    ld [$104B], sp
    or l
    add hl, de
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop

jr_02F_488D:
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02F_4893:
    dec a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02F_4893

    db $EC
    db $10
    ccf
    inc e
    ccf
    inc e
    cpl
    ld e, $1F
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop

jr_02F_48B9:
    db $FC
    db $10
    add sp, -$10
    ret c

    ldh [$30], a
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
    inc bc
    nop
    rrca
    inc bc
    rra
    rlca
    jr jr_02F_48E2

    scf
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    ld a, b

jr_02F_48E2:
    ldh a, [$BC]
    ld a, b
    ccf
    nop
    ccf
    nop
    ccf
    ld [$0F17], sp
    dec de

jr_02F_48EE:
    rlca
    inc c
    inc bc
    inc bc
    nop
    nop

jr_02F_48F4:
    nop
    db $FC
    jr c, jr_02F_48F4

    jr c, jr_02F_48EE

    ld a, b
    ld hl, sp-$10
    ret z

    ldh a, [$30]
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
    inc bc
    nop
    rrca
    inc bc
    rra
    rlca
    jr jr_02F_4922

    scf
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    ld a, b

jr_02F_4922:
    ldh a, [$BC]
    ld a, b
    ccf
    nop
    ccf
    nop
    ccf
    ld [$0F17], sp
    dec de

jr_02F_492E:
    rlca
    inc c
    inc bc
    inc bc
    nop
    nop

jr_02F_4934:
    nop
    db $FC
    jr c, jr_02F_4934

    jr c, jr_02F_492E

    ld a, b
    ld hl, sp-$10
    ret z

    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rlca
    jr jr_02F_495E

    scf
    ld [$003F], sp
    ccf
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    ld a, b

jr_02F_495E:
    ldh a, [$BC]

jr_02F_4960:
    ld a, b
    db $FC
    jr c, jr_02F_4960

    jr c, jr_02F_49A5

    ld [$0F37], sp
    dec sp
    rlca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $F4
    ld a, b
    db $FC
    ldh a, [$CC]
    ldh a, [$38]
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02F_498F:
    dec a
    ld e, $3F
    inc e
    ccf
    inc e
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02F_498F

    db $EC
    db $10
    db $FC
    nop
    db $FC
    nop

jr_02F_49A5:
    cpl
    ld e, $3F
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $FC
    db $10
    db $EC
    ldh a, [$DC]
    ldh [$38], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    rlca
    ld a, a
    adc h
    ld a, l
    nop
    ld a, h
    db $ED
    inc d
    rst $10
    dec h
    or l
    ld hl, $1D72
    db $ED
    inc d
    rst $10
    dec h
    ld h, d
    ld [bc], a
    jp nz, Jump_02F_6201

    ld bc, $0262
    nop
    nop
    or e
    dec e
    db $ED
    inc d
    ld b, b
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld h, d
    ld [bc], a
    rst $10
    dec h
    nop
    nop
    ld d, c
    add hl, de
    db $ED
    inc d
    rst $10
    dec h
    nop
    nop
    jp nz, Jump_02F_6201

    ld bc, $0802
    ld c, e
    db $10
    ld d, l
    ld [hl], $FF
    ld a, a
    and b
    ld [bc], a
    add b
    ld bc, $6F5B
    nop
    nop
    and b
    ld [bc], a
    add b
    ld bc, $0156
    nop
    nop
    and b
    ld [bc], a
    rst $38
    cpl
    nop
    ld e, b
    nop
    nop
    and b
    ld [bc], a
    rst $38
    cpl
    ld d, [hl]
    ld bc, $0000
    and b
    ld [bc], a
    ld d, [hl]
    ld bc, $4611
    nop
    nop
    nop
    ld e, b
    add b
    ld bc, $0156
    nop
    nop
    ld d, [hl]
    ld bc, $2FFF
    rra
    nop
    nop
    nop
    ld b, b
    nop
    ld c, l
    inc e
    rla
    ld l, $FF
    ld a, a
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ld e, $0F

jr_02F_4A4F:
    dec a
    ld e, $3F
    inc e
    ccf
    inc e
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$20
    jr jr_02F_4A4F

    db $EC
    db $10
    db $FC
    nop
    db $FC
    nop
    cpl
    ld e, $3F
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $FC
    db $10
    db $EC
    ldh a, [$DC]
    ldh [$38], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    jr c, jr_02F_4AB1

    nop
    nop
    sub l
    dec d
    xor a
    inc c
    sub l
    dec d
    rst $38
    ld a, a
    ld de, $2C7E
    ld a, l
    ld [hl], h
    ld d, [hl]
    nop
    nop
    rst $08
    ld c, c
    ld a, [hl+]
    add hl, sp
    jr c, jr_02F_4AC9

    nop
    nop
    rst $08
    ld c, c
    add sp, $2C
    ret nc

    ld d, b
    nop
    nop
    inc l
    ld a, l
    ld b, $38
    ld b, b
    inc bc
    nop
    nop

jr_02F_4AB1:
    xor b
    ld d, $65
    dec d
    ld e, a
    dec l
    nop
    nop
    rra
    nop
    inc d
    nop
    ld [bc], a
    ld [$104B], sp
    or l
    add hl, de
    rst $38
    ld a, a
    nop
    nop
    inc bc
    nop

jr_02F_4AC9:
    rrca
    inc bc
    rra
    rlca
    jr jr_02F_4ADE

    scf
    ld [$003F], sp
    ccf
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    ld a, b

jr_02F_4ADE:
    ldh a, [$BC]

jr_02F_4AE0:
    ld a, b
    db $FC

jr_02F_4AE2:
    jr c, jr_02F_4AE0

jr_02F_4AE4:
    jr c, jr_02F_4B25

jr_02F_4AE6:
    ld [$0F37], sp
    dec sp
    rlca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $F4
    ld a, b
    db $FC
    ldh a, [$CC]
    ldh a, [$38]
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
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
    nop
    rst $38
    ld e, $FF
    ld [hl], $FF
    db $FC
    db $FD
    ld [bc], a
    dec b
    ld a, [$FA05]
    rlca
    ld hl, sp-$01
    nop

jr_02F_4B25:
    rst $38
    nop
    ret nz

    ccf
    cp a
    ld a, a
    sbc a
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    ld a, c
    rst $38
    nop
    inc bc
    db $FC
    db $FD
    cp $F9
    cp $03
    db $FC
    rst $38
    nop
    rst $38
    jp nz, $9EFF

    pop af
    pop af
    add b
    adc h
    jr nz, jr_02F_4B97

    jr nz, jr_02F_4B99

    jr nz, jr_02F_4B9B

    jr nz, @+$4E

    jr nz, jr_02F_4B9F

    jr nz, @+$4E

    rst $00
    rst $00
    ld bc, $8231
    jr nc, jr_02F_4ADE

    jr nc, jr_02F_4AE0

    jr nc, jr_02F_4AE2

    jr nc, jr_02F_4AE4

    jr nc, jr_02F_4AE6

    jr nc, jr_02F_4B86

    ld b, b
    inc c
    nop
    ld [hl], c
    nop
    nop
    ld a, a
    nop
    nop
    ld a, a
    nop
    nop
    ld a, a
    add b
    add b
    add d
    nop
    jr nc, jr_02F_4B79

jr_02F_4B79:
    add $00
    ld [bc], a
    db $FC
    nop
    nop
    ld hl, sp+$00
    ld b, $F8
    ld bc, $0301

jr_02F_4B86:
    nop
    rrca
    inc bc
    rra
    rrca
    cpl
    rra
    ld e, a
    ccf
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    ld b, l
    ld a, $C0
    nop

jr_02F_4B97:
    ldh a, [$C0]

jr_02F_4B99:
    ld hl, sp-$10

jr_02F_4B9B:
    db $FC
    ld hl, sp-$02
    db $FC

jr_02F_4B9F:
    rst $38
    cp $7D
    cp $BE
    ld a, h
    ld b, e
    inc a
    jp $E37C


    ld e, $51
    cpl
    rst $08
    ld [hl], b
    ldh [$3F], a
    ld a, a
    rrca
    rra
    nop
    ld a, [$F33C]
    ld a, $C7
    ld a, b
    adc d
    db $F4
    di
    ld c, $0F
    db $FC
    cp $F0
    ld hl, sp+$00
    rst $38
    nop
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
    ret nz

    ccf
    rst $38
    nop
    rst $38
    db $FC
    rst $38
    ld [hl], $FF
    ld e, $FF
    sbc [hl]
    rst $38
    sbc $FF
    ld [bc], a
    inc bc
    db $FC
    cp a
    ld a, a
    sbc a
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    cp a
    ld b, b
    and b
    ld e, a
    ldh [$1F], a
    rst $38
    nop
    db $FD
    cp $F9
    cp $03
    db $FC
    rst $38
    nop
    db $FD
    ld [bc], a
    dec b
    ld a, [$F807]
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $28
    rst $10
    rst $00
    xor a
    adc a
    xor a
    adc a
    xor h
    adc h
    and e
    add b
    and a
    add b
    rst $20
    rst $20
    db $DB
    jp $E1ED


    db $ED
    pop hl
    push af
    pop af
    dec [hl]
    ld sp, $01C5
    push af
    ld bc, $8097
    ld a, e
    nop
    inc hl
    nop
    ld [hl], d
    nop
    and [hl]
    add b
    rst $10
    ret nc

    ei
    ld hl, sp-$04
    db $FC
    pop af
    ld bc, $01F9
    ld sp, hl
    ld bc, $03EB
    di
    inc bc
    ld [hl], e
    inc bc
    sub a
    rlca
    rlca
    rlca
    rst $20
    rst $20
    db $DB
    jp $87B7


    or a
    add a
    xor a
    adc a
    xor h
    adc h
    and e
    add b
    xor a
    add b
    rst $38
    rst $38
    rst $30
    rst $30
    db $EB
    db $E3
    push af
    pop af
    push af
    pop af
    dec [hl]
    ld sp, $01C5
    push hl
    ld bc, $808F
    sbc a
    add b
    sbc a
    add b
    rst $10
    ret nz

    rst $08
    ret nz

    adc $C0
    jp hl


    ldh [$E0], a
    ldh [$E9], a
    ld bc, $00DE
    call nz, Call_02F_4E00
    nop
    ld h, l
    ld bc, $0BEB
    rst $18
    rra
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, e
    ld h, a
    ld c, h
    ld d, h
    ld l, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld l, a
    nop
    nop
    db $FC
    db $FC
    cp $C6
    and $32
    ld a, [hl+]
    or $22
    sbc $02
    cp $22
    or $77
    ld l, e
    ld a, a
    ccf
    ld a, a
    nop
    ld b, b
    rra
    ld h, b
    rra
    ld h, b
    nop
    ccf
    nop
    nop
    nop
    xor $D6
    cp $FC
    cp $00
    ld [bc], a
    ld hl, sp+$06
    ld hl, sp+$06
    nop
    db $FC
    nop
    nop
    nop
    nop
    nop
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ld b, b
    inc bc
    add hl, sp
    ld b, b
    nop
    nop
    ld hl, sp-$04
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    ld [bc], a
    ret nz

    sbc h
    ld [bc], a
    ld [$0470], sp
    ld l, b
    inc de
    inc l
    ld b, b
    nop
    ccf
    ld b, b
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    db $10
    ld c, $20
    ld d, $C8
    inc [hl]
    ld [bc], a
    nop
    db $FC
    ld [bc], a
    ld [bc], a
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc a
    inc b
    ld l, b
    db $10
    ld l, b
    add hl, bc
    ld [hl], b
    jr c, jr_02F_4D54

    ld b, b
    nop
    rra
    ccf
    nop
    nop
    ret nz

    inc a
    jr nz, jr_02F_4D31

    ld [$9016], sp
    ld c, $1C
    jp nz, $0002

    ld hl, sp-$04
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ccf
    ld b, b
    ld b, b
    ccf

jr_02F_4D31:
    ccf
    nop
    nop
    nop
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    db $FC
    ld [bc], a
    ld [bc], a
    db $FC
    db $FC
    nop
    nop
    nop
    add b
    add b
    nop
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf

jr_02F_4D54:
    ld a, a
    ld bc, $0001
    db $FC
    ld hl, sp-$02
    db $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $3F

jr_02F_4D66:
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    add b
    ret nz

    ret nz

    db $FC
    cp $FC
    cp $FC
    cp $F8
    cp $00
    cp $00
    db $FC
    ld bc, $0301
    inc bc
    add b
    add b
    nop
    cpl
    rla
    ld b, a
    cpl
    rrca
    cpl
    rrca
    inc l
    inc c
    inc hl
    nop
    daa
    nop
    ld bc, $1801
    ret nz

    db $EC
    ldh [$EC], a
    ldh [$F4], a
    ldh a, [$34]
    jr nc, jr_02F_4D66

    nop
    db $F4
    nop
    rla
    nop
    ld a, e
    nop
    inc hl
    nop
    ld [hl], d
    nop
    ld h, $00
    rlca
    nop
    add e
    add b
    ret nz

    ret nz

    ldh a, [rP1]
    ld hl, sp+$02
    ld hl, sp+$02
    add sp, $02
    ldh a, [rSC]
    ld [hl], b
    inc b
    sub c
    ld bc, $0303
    ld e, $0E
    ld bc, $1413
    add h
    inc bc
    pop bc
    jr jr_02F_4DCF

jr_02F_4DCF:
    adc c
    ld a, $95
    nop
    adc c
    ld a, $95
    nop
    adc c
    ld a, $95
    nop
    adc c
    ld a, $95
    nop
    adc c
    ld a, $95
    nop
    adc c
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d
    ld a, $94
    nop
    adc d

Call_02F_4E00:
    ld a, $C1
    ld [bc], a
    nop
    nop
    rst $20
    rst $20
    dec de
    jp $87B0


    or b
    add a
    and e
    adc a
    and b
    adc h
    and e
    add b
    xor a
    add b
    ld sp, hl
    rst $38
    ld b, $F7
    add hl, hl
    db $E3
    ld b, h
    pop af
    add l
    pop af
    dec h
    ld sp, $01C5
    db $E4
    ld bc, $808F
    rra
    add b
    sbc a
    add b
    sub a
    ret nz

    ld c, a
    ret nz

    adc [hl]
    ret nz

    ret


    ldh [$E0], a
    ldh [$E9], a
    ld bc, $00DE
    call nz, Call_02F_4E00
    nop
    ld h, l
    ld bc, $0BE3
    sbc $1F
    ld h, $3F
    rst $38
    rst $38
    rlca
    rst $28
    ret nc

    rst $00
    xor b
    adc a
    and e
    adc a
    and b
    adc h
    and e
    add b
    and a
    add b
    pop hl
    rst $20
    ld a, [de]
    jp $E12D


    ld c, h
    pop hl
    add l
    pop af
    dec h
    ld sp, $01C5
    db $F4
    ld bc, $8097
    ld a, e
    nop
    inc hl
    nop
    ld [hl], d
    nop
    ld h, $80
    sub a
    ret nc

    jp $FCF8


    db $FC
    pop af
    ld bc, $01F8
    ld sp, hl
    ld bc, $03E9
    di
    inc bc
    ld [hl], e
    inc bc
    sub [hl]
    rlca
    ld b, $07
    ld a, b
    ld a, b
    ld l, h
    ld l, h
    ccf
    ccf
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    nop
    rra
    nop
    nop
    ld e, $1E
    ld [hl], $36
    db $FC
    db $FC
    nop
    ld [bc], a
    nop
    ld a, [$FA00]
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    ccf
    ccf
    ld h, b
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ld b, b
    ld b, e
    ld a, b
    ld a, c
    nop
    nop
    ld hl, sp-$04
    db $FC
    ld b, $FC
    cp $00
    db $FC
    nop
    nop
    ld [bc], a
    jp nz, $9E1E

    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    cpl
    rra
    ld e, a
    ccf
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    ld b, l
    ccf
    ret nz

    nop
    ldh a, [$C0]
    ld hl, sp-$10
    db $FC
    ld hl, sp-$02
    db $FC
    rst $38
    cp $7D
    cp $BE
    db $FC
    ld b, d

jr_02F_4EE6:
    ccf
    ret nz

    ld a, a
    ld [c], a
    rra
    ld d, c
    cpl
    rst $08
    ld [hl], b
    ldh [$3F], a
    ld a, a
    rrca
    rra
    nop
    ld a, d
    db $FC
    inc sp
    cp $47
    ld hl, sp-$76
    db $F4
    di
    ld c, $0F
    db $FC
    cp $F0
    ld hl, sp+$00
    add b
    add b
    jr jr_02F_4F0C

    scf
    rlca
    scf

jr_02F_4F0C:
    rlca
    cpl
    rrca
    inc l
    inc c
    inc hl
    nop
    cpl
    nop
    ld bc, $0001
    db $F4
    add sp, -$1E
    db $F4
    ldh a, [$F4]
    ldh a, [$34]
    jr nc, jr_02F_4EE6

    nop
    db $E4
    nop
    rrca
    nop
    rra
    ld b, b
    rra
    ld b, b
    rla
    ld b, b
    rrca
    ld b, b
    ld c, $20
    adc c
    add b
    ret nz

    ret nz

    add sp, $00
    sbc $00
    call nz, Call_02F_4E00
    nop
    ld h, h
    nop
    ldh [rP1], a
    pop bc
    ld bc, $0303
    nop
    nop
    ccf
    ccf
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    ld b, b
    ld b, b
    rra
    ccf
    nop
    nop
    db $FC
    db $FC
    ld [hl], $36
    ld e, $1E
    ld e, $9E
    ld e, $DE
    ld [bc], a
    ld [bc], a
    ld hl, sp-$04
    ccf
    ld h, b
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ld b, b
    nop
    ld e, a
    nop
    rra
    nop
    nop
    db $FC
    ld b, $FC
    cp $00
    db $FC
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [$F800]
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rrca
    ccf
    rra
    ld a, a
    rra
    rst $38
    ld e, $FF
    dec c
    ld a, a
    nop
    ret nz

    ret nz

    ldh a, [$F0]
    ld hl, sp-$08
    db $FC
    db $FC
    cp $FE
    rst $38
    ld a, h
    rst $38
    cp h
    cp $47
    ld a, $43
    cp h
    inc bc
    cp $01
    ld a, a
    ld b, b
    rst $38
    jr nz, @+$01

    rrca
    ld a, a
    nop
    rra
    ld a, [$F27C]
    dec a
    ret nz

    ld a, a
    add b
    cp $02
    rst $38
    inc c
    rst $38

jr_02F_4FC1:
    ldh a, [$FE]
    nop
    ld hl, sp+$00

jr_02F_4FC6:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3E

jr_02F_4FDF:
    jr jr_02F_4FC1

    add sp, -$10
    db $FC
    db $10
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $101E
    rrca

jr_02F_4FED:
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    jr jr_02F_4FED

    jr c, jr_02F_4FDF

    ldh a, [$C0]
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
    inc bc
    nop
    inc c
    inc bc
    jr jr_02F_5018

    rla
    rrca
    ccf
    ld [$0000], sp
    nop

jr_02F_5018:
    nop
    nop
    nop

jr_02F_501B:
    ret nz

    nop
    jr nc, jr_02F_4FDF

    ld [$88F0], sp
    ldh a, [$C4]
    ld a, b
    ccf
    nop
    ccf
    nop
    scf
    ld [$0F18], sp
    inc e
    rlca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    call nz, $C438
    jr c, jr_02F_4FC6

    ld a, b
    ld [$38F0], sp
    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_501B

jr_02F_505B:
    jr @-$1E

    add sp, -$10
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    ld sp, $301E
    rrca
    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $EC
    db $10
    inc e
    ldh a, [$3C]
    ldh [$F8], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_02F_5094

    rla
    rrca
    ccf
    ld [$003F], sp
    ccf

jr_02F_5094:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_505B

    ld [$88F0], sp
    ldh a, [$C4]
    ld a, b
    call nz, $C438
    jr c, @+$39

    ld [$0F38], sp
    inc a
    rlca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    adc h
    ld a, b
    inc c
    ldh a, [$3C]
    ldh a, [$F8]
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    dec h
    rla
    push bc
    dec d
    db $E3
    inc c
    nop
    nop
    ld h, l
    ld d, $C5
    dec d
    db $E3
    inc c
    nop
    nop
    sbc [hl]
    ld c, [hl]
    or e
    add hl, sp
    jp z, $001C

    nop
    rst $08
    ld l, c
    ld c, h
    ld c, c
    add h
    jr nc, jr_02F_50E6

jr_02F_50E6:
    nop
    ld [hl], a
    ld l, l
    inc c
    ld d, b
    ld b, $24
    nop
    nop
    ld a, e
    ld sp, $1C58
    rrca
    nop
    nop
    nop
    sbc h
    daa
    ld a, [hl-]
    inc bc
    rst $38
    ld bc, $0000
    ld a, l
    inc bc
    push bc
    dec d
    push bc
    dec d
    nop
    nop
    dec h
    rla
    push bc
    dec d
    db $E3
    inc c
    nop
    nop
    ld h, l
    ld d, $C5
    dec d
    db $E3
    inc c
    nop
    nop
    sbc [hl]
    ld c, [hl]
    or e
    add hl, sp

jr_02F_511B:
    jp z, $001C

    nop
    rst $08
    ld l, c
    ld c, h
    ld c, c
    add h
    jr nc, jr_02F_5126

jr_02F_5126:
    nop
    ld [hl], a
    ld l, l
    inc c
    ld d, b
    ld b, $24
    nop
    nop
    ld a, e
    ld sp, $1C58
    rrca
    nop
    nop
    nop
    sbc h
    daa
    ld a, [hl-]
    inc bc
    rst $38
    ld bc, $0802
    ld c, e
    db $10
    ld d, l
    ld [hl], $FF
    ld a, a
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_511B

    jr @-$1E

    add sp, -$10
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    ld sp, $301E
    rrca
    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    db $EC
    db $10
    inc e
    ldh a, [$3C]
    ldh [$F8], a
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    add hl, hl
    ld hl, $2D6C
    sub b
    dec a
    inc de
    ld b, [hl]
    ld l, h
    dec l
    inc de
    ld b, [hl]
    cp b
    ld e, [hl]
    sbc a
    ld a, a
    add hl, hl
    ld hl, $19F0
    push af
    ld a, [bc]

jr_02F_519B:
    db $DB
    inc sp
    ldh a, [rNR24]
    push af
    ld a, [bc]
    add hl, hl
    ld hl, $318D
    add hl, hl
    ld hl, $318D
    inc de
    ld b, [hl]
    inc a
    ld [hl], e
    nop
    ld b, b
    adc l
    ld sp, $7AD3
    nop
    ld a, h
    push af
    ld a, [bc]
    add d
    ld hl, $1A00
    rst $28
    ld b, d
    add hl, hl
    dec h
    rst $20
    inc e
    and l
    inc d
    add h
    stop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_02F_51D4

    rla
    rrca
    ccf
    ld [$003F], sp
    ccf

jr_02F_51D4:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_519B

jr_02F_51DB:
    ld [$88F0], sp
    ldh a, [$C4]
    ld a, b
    call nz, $C438
    jr c, @+$39

    ld [$0F38], sp
    inc a
    rlca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    adc h
    ld a, b
    inc c
    ldh a, [$3C]
    ldh a, [$F8]
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc e
    inc bc
    ld sp, $670F
    rra
    db $EC
    rra

jr_02F_5211:
    pop hl
    ld e, $7B
    dec b
    ret nz

    nop
    ldh a, [rP1]
    jr c, jr_02F_51DB

    call z, $F6F0
    ld hl, sp+$3B
    db $FC
    adc d
    ld a, h
    jp nz, Jump_02F_7FBC

    ld b, e
    ccf
    ld b, e
    dec e
    inc bc
    xor $01
    or b
    ld b, b
    ld e, a
    jr nz, jr_02F_5262

    rrca
    rrca

jr_02F_5234:
    nop
    add $FA
    call z, $B8F2
    ret nz

    ld [hl], a
    add b
    dec c
    ld [bc], a
    ld a, [c]
    inc c
    inc c
    ldh a, [$F0]
    nop
    ldh a, [rP1]
    ldh [rIF], a
    ret nz

    inc e
    add b
    jr nc, jr_02F_524E

jr_02F_524E:
    ld l, b
    nop
    ldh a, [rP1]
    jp hl


    nop
    ld a, d
    rrca
    nop
    rlca
    ldh a, [$03]
    jr c, jr_02F_525D

    inc c

jr_02F_525D:
    nop
    ld b, $00
    inc bc
    nop

jr_02F_5262:
    add e
    nop
    ld b, d
    nop
    inc a
    nop
    inc a
    nop
    inc e
    nop
    xor $00
    or b
    nop
    ld e, a
    add b
    jr nc, jr_02F_5234

    rrca
    nop
    inc h
    nop
    inc l
    nop
    jr c, jr_02F_527C

jr_02F_527C:
    ld [hl], a
    nop
    dec c
    nop
    ld a, [c]
    ld bc, $030C
    ldh a, [rNR52]
    ld h, a
    add hl, de
    inc bc
    scf
    add a
    or [hl]
    add a
    and e
    add a
    jr nz, jr_02F_5211

    inc hl
    add b
    cpl
    nop
    inc l
    ld a, $10
    or l
    adc c
    jp $E1C5


    ld b, l
    pop hl
    dec b
    ld de, $01C5
    db $E4
    ld bc, $000F
    rra
    add b
    sbc a
    add b
    rst $10
    ret nz

    rst $08
    ret nz

    adc $C0
    ret


    ldh [$E0], a
    ldh [$E8], a
    nop
    sbc $00
    call nz, Call_02F_4E00
    nop
    ld h, l
    ld bc, $03E0
    ret nz

    add hl, de
    jr @+$3E

    ldh a, [rP1]
    ldh [rIF], a
    jp $8F1F


    ccf
    rla
    ld a, a
    rrca
    rst $38
    ld d, $FF
    dec b
    ld a, a
    rrca
    nop
    rlca
    ldh a, [$C3]
    ld hl, sp-$0F
    db $FC
    ld hl, sp-$02
    db $FC
    rst $38
    ld a, h
    cp $BC
    cp $43
    ld a, a
    ld b, e
    ld a, a
    ld bc, $001D
    xor $40
    ldh a, [rNR41]
    ld a, a
    adc a
    ccf
    ret nz

    rrca
    jp c, $D2FE

    cp $80
    cp b
    nop
    ld [hl], a
    ld [bc], a
    rrca
    inc c
    cp $F1
    db $FC
    inc bc
    ldh a, [$F5]
    ld a, [bc]
    ld [hl], h
    ld bc, $0E3B
    db $FC
    ld d, $F5
    ld a, [bc]
    dec sp
    ld c, $7D
    inc sp
    rst $38
    ld a, a
    add hl, hl
    ld hl, $19F0
    push af
    ld a, [bc]
    db $DB
    inc sp
    ldh a, [rNR24]

jr_02F_531F:
    push af
    ld a, [bc]
    add hl, hl
    ld hl, $318D
    add hl, hl
    ld hl, $318D
    inc de
    ld b, [hl]
    inc a
    ld [hl], e
    inc hl
    ld bc, $214C
    or $05
    ld e, $37
    push af
    ld a, [bc]
    inc hl
    ld bc, $214C
    ld e, $37
    add hl, hl
    dec h
    rst $20
    inc e

jr_02F_5341:
    and l
    inc d
    add h
    stop

jr_02F_5346:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld de, $230F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_531F

jr_02F_535F:
    jr jr_02F_5341

    add sp, -$10
    db $FC
    db $10
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $101E
    rrca

jr_02F_536D:
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    jr jr_02F_536D

    jr c, jr_02F_535F

    ldh a, [$C0]
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
    inc bc
    nop
    inc c
    inc bc
    jr jr_02F_5398

jr_02F_5391:
    rla
    rrca
    ccf
    ld [$0000], sp
    nop

jr_02F_5398:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02F_535F

    ld [$88F0], sp
    ldh a, [$C4]
    ld a, b
    ccf
    nop
    ccf
    nop
    scf
    ld [$0F18], sp
    inc e
    rlca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    call nz, $C438
    jr c, jr_02F_5346

    ld a, b
    ld [$38F0], sp
    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld l, h
    nop
    ld a, b
    ld bc, $0378
    ld a, b
    nop
    ld b, b
    rra
    ccf
    nop
    nop
    nop
    db $FC
    nop
    ld [hl], $00
    ld e, $80
    ld e, $C0
    ld e, $00
    ld [bc], a
    ld hl, sp-$04
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ld b, b
    nop
    ld e, a
    nop
    rra
    nop
    nop
    nop
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    ld [bc], a
    nop
    ld a, [$F800]
    nop
    nop
    nop
    ld a, $7F
    dec c
    cpl
    rla
    add a
    and [hl]
    adc a
    and e
    add a
    jr nz, jr_02F_5391

    inc hl
    add b
    daa
    nop
    inc h
    ld h, $18
    add c
    adc l
    pop bc
    call $45E1
    pop hl
    dec b
    ld de, $01C5
    db $F4
    ld bc, $0017
    ld a, e
    nop
    inc hl
    nop
    ld [hl], d
    nop
    and [hl]
    add b
    rst $10
    ret nc

    db $DB
    ld hl, sp-$04
    db $FC
    ldh a, [rP1]
    ld hl, sp+$01
    ld sp, hl
    ld bc, $03EB
    pop af
    inc bc
    ld [hl], b
    inc bc
    sub b
    ld bc, $0400
    nop
    nop
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    inc bc
    ld b, b
    ld bc, $0078
    nop
    ld hl, sp-$04
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    ret nz

    ld [bc], a

jr_02F_5463:
    add b
    ld e, $FF
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
    nop
    rst $38
    ld e, $FF
    ld [hl], $FF
    db $FC
    db $FD
    ld [bc], a

jr_02F_547D:
    dec b
    ld a, [$FA05]
    rlca
    ld hl, sp-$01
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02F_5463

    jr jr_02F_547D

    db $EC
    db $F4
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    ld sp, $301E
    cpl
    inc a
    cpl
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    db $EC
    db $10
    inc e
    db $F4
    inc a
    db $E4
    ld hl, sp-$38
    ret c

    jr c, jr_02F_54F0

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    ld sp, hl
    ld b, d
    nop
    nop
    ld b, d
    ld [hl], b
    sub h
    ld e, [hl]
    xor h
    nop
    nop
    nop
    ld sp, hl
    ld b, d
    ld a, [c]
    nop
    rst $18
    ld e, a
    nop
    nop
    ld sp, hl
    ld b, d
    or e
    dec c
    ld h, h
    inc bc
    nop
    nop
    ld [c], a
    ld bc, $0100
    ccf
    ld [bc], a

jr_02F_54E7:
    nop
    nop
    ld d, h
    ld bc, $00EE
    ld sp, hl
    ld b, d
    nop

jr_02F_54F0:
    nop
    inc bc
    inc bc
    add d
    ld bc, $42F9
    nop
    nop
    ld e, a
    ld e, $F4
    nop
    ld [bc], a
    ld [$104B], sp

jr_02F_5501:
    ld d, l
    ld [hl], $FF
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02F_54E7

jr_02F_551F:
    jr jr_02F_5501

    db $EC
    db $F4
    db $FC
    db $10
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $301E
    cpl
    inc e
    rrca
    rra
    inc de
    rlca
    inc b
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    inc e
    db $F4
    jr c, jr_02F_551F

    ld hl, sp-$38
    ldh [rNR41], a
    nop
    nop
    nop
    nop
    nop
    ld a, a

jr_02F_5549:
    rra
    ld b, b
    rrca
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    ld e, a
    nop
    nop
    ld e, a
    ld l, a
    ld e, a
    ld a, a
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    ld e, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, a
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    nop
    ld e, a
    nop
    ld e, a
    ld e, a
    nop
    nop
    nop
    nop
    ld bc, $401C
    rra
    ld b, b
    nop
    nop
    call $2A31
    dec h
    ld d, c
    ld de, $25B2
    ld a, [hl+]
    dec h
    or d
    dec h
    ld a, [hl]
    scf
    rst $38
    ld a, a
    ld a, [hl+]
    dec h
    ld c, a
    dec h
    call $B331
    ld h, $4F
    dec h
    call $2A31
    dec h
    adc [hl]
    dec [hl]
    ld a, [hl+]
    dec h
    adc [hl]
    dec [hl]
    inc d
    ld c, d
    dec a
    ld [hl], a
    nop
    dec l
    inc c
    dec e
    ld c, a
    dec h
    call $CD31
    ld sp, $292A
    jp hl


    dec l
    ldh a, [rDMA]
    ld a, [hl+]
    add hl, hl
    add sp, $20
    and [hl]
    jr jr_02F_5549

    inc d
    nop
    ld hl, $39C0
    and b
    ld b, d
    or $47
    nop
    ld hl, $2540
    ld b, [hl]
    add hl, de
    add e
    ld de, $2100
    or $47
    rst $38
    ld a, a
    and b
    ld b, d
    nop
    ld hl, $21A8
    adc e
    ld l, $8B
    ccf
    nop
    ld hl, $21A8
    ld b, [hl]
    add hl, de
    dec bc
    inc sp
    nop
    ld hl, $39C0
    and b
    ld b, d
    jr nz, jr_02F_5622

    dec b
    ld hl, $3966
    xor l
    add hl, sp
    or c
    ld d, [hl]
    add hl, hl
    dec h
    xor b
    ld hl, $2E8B
    adc e
    ccf
    ret nz

jr_02F_5606:
    inc [hl]
    jp z, $B449

    ld e, [hl]
    call c, $C073
    inc [hl]
    jp z, $B449

    ld e, [hl]
    sub a
    ld d, d
    ret nz

    inc [hl]
    jp z, Jump_02F_7349

    ld c, [hl]
    di
    ld c, [hl]
    jp z, $B349

    ld c, [hl]
    di

jr_02F_5622:
    ld c, [hl]
    sub $4E
    ret nz

    inc [hl]

jr_02F_5627:
    and l
    add hl, hl
    ld a, [hl+]
    ld c, d
    db $D3
    ld d, [hl]
    ret nz

    inc [hl]
    sub a
    ld d, d
    rst $10
    ld d, d
    reti


    ld e, d
    ret nz

    inc [hl]
    jp z, $9749

    ld d, d
    rst $10
    ld d, d
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    jr jr_02F_5658

    scf
    cpl
    ccf
    ld [$0000], sp
    nop

jr_02F_5658:
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02F_5627

    ld [$8CF0], sp
    db $F4
    call nz, $3F78
    nop
    ccf
    nop
    scf
    ld [$2F38], sp
    inc e
    rlca

jr_02F_566F:
    rra
    inc de
    rlca
    inc b
    nop
    nop
    call nz, $C438
    jr c, jr_02F_5606

    ld a, b
    inc c
    db $F4
    jr c, jr_02F_566F

    ld hl, sp-$38
    ldh [rNR41], a
    nop
    nop
    ld sp, hl
    ld b, d
    nop
    nop
    ld b, d
    ld [hl], b
    sub h
    ld e, [hl]
    xor h
    nop
    nop
    nop
    ld sp, hl
    ld b, d
    ld a, [c]
    nop
    rst $18
    ld e, a
    nop
    nop
    ld sp, hl
    ld b, d
    or e
    dec c
    ld h, h
    inc bc
    nop
    nop
    ld [c], a
    ld bc, $0100
    ccf
    ld [bc], a
    nop
    nop
    ld d, h
    ld bc, $00EE
    ld sp, hl
    ld b, d
    nop
    nop
    inc bc
    inc bc
    add d
    ld bc, $42F9
    nop
    nop
    ld e, a
    ld e, $F4
    nop
    ld [bc], a
    ld [$037D], sp
    ld sp, hl
    ld b, d
    ld sp, hl
    ld b, d
    ld d, [hl]
    ld [bc], a
    add hl, hl
    dec h
    adc h
    ld sp, $4210
    add hl, hl
    dec h
    adc h
    ld sp, $4210
    sub $5A
    adc h
    ld sp, $4210
    sub $5A
    rst $38
    ld a, a
    dec a
    cpl
    adc h
    ld sp, $4210
    sub $5A
    ld [hl], e
    ld c, [hl]
    sub $5A
    jr jr_02F_574E

    rra
    nop
    add hl, hl
    dec h
    ld c, a
    ld bc, $0217
    ei
    ld c, d
    ld d, [hl]
    ld [bc], a
    dec a
    cpl
    rra
    nop
    inc de
    nop
    nop
    nop
    ld a, [bc]
    nop
    dec d
    nop
    rra
    nop
    inc sp
    ld h, c
    ccf
    ld [hl], $29
    dec [hl]
    inc b
    dec d
    inc sp
    ld h, c
    ret c

    ld a, a
    ld a, a
    ccf
    inc b
    dec d
    ld a, a
    ccf
    ccf
    ld [hl], $33
    ld h, c
    inc b
    dec d
    ld a, a
    ccf
    db $ED
    ld a, a
    nop
    ld [bc], a

jr_02F_5723:
    ld c, d
    dec a
    ld a, a
    ccf
    ret c

jr_02F_5728:
    ld a, a
    ld d, e
    ld a, [hl]
    inc b
    dec d
    rst $38
    ld a, a
    rst $38
    inc bc
    ret c

    ld a, a
    inc b
    dec d
    ld d, e
    ld a, [hl]
    add hl, hl
    dec [hl]
    rra
    nop
    inc b
    dec d
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
    rlca
    inc b
    inc e
    inc de
    jr jr_02F_5754

    scf

jr_02F_574E:
    cpl
    ccf
    ld [$003F], sp
    ccf

jr_02F_5754:
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, jr_02F_5723

    ld [$8CF0], sp
    db $F4
    call nz, $C478
    jr c, jr_02F_5728

    jr c, jr_02F_579D

    ld [$2F38], sp
    inc a
    daa
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    adc h
    ld a, b
    inc c
    db $F4
    inc a

jr_02F_577A:
    db $F4
    ld hl, sp-$38
    ret c

    jr c, jr_02F_57B0

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    nop
    nop
    ld c, $00
    rst $38
    nop
    ccf
    ld h, $00
    nop
    ld c, $04
    inc d
    inc b
    rlca
    nop
    nop
    nop
    adc b
    inc b
    sub c
    dec e
    dec sp
    ld b, [hl]

jr_02F_579D:
    nop
    nop
    adc b
    inc b
    sub c
    dec e
    nop
    nop
    inc d
    inc b
    inc e
    nop
    rlca
    nop
    rst $38
    nop
    nop
    nop
    inc b

jr_02F_57B0:
    add hl, de
    and a
    dec a
    daa
    ld l, a
    nop
    nop
    add c
    inc c
    ld l, c
    dec l
    ld d, b
    ld b, d
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    xor e
    ld e, h
    ld a, a
    ld e, $F7
    ld a, a
    ld c, d
    ld h, [hl]
    add b
    jr nc, @+$81

    ld e, $AD
    halt
    and d
    ld l, l
    add b
    jr nc, jr_02F_577A

    ld l, l
    ld l, b
    ld sp, $4DAA
    add b
    jr nc, jr_02F_582F

    ld h, d
    ld c, a
    ld h, d
    ld a, a
    ld e, $80
    jr nc, @-$0F

    inc bc
    rst $20
    add hl, de
    add sp, $3E
    nop
    nop
    ld a, l
    inc bc
    and d
    ld l, l
    rst $30
    ld a, a
    and b
    nop
    pop de
    nop
    ld hl, sp+$11
    ld sp, hl
    ld [hl-], a
    nop
    nop
    ld a, l
    inc bc
    and d
    ld l, l
    ld a, [$407F]
    jp $8198


    ld [hl-], a
    inc bc
    ld [hl], $07
    inc hl
    inc bc
    jr nz, jr_02F_5811

jr_02F_5811:
    inc hl
    nop
    cpl
    nop
    inc b
    rst $20
    ld b, d
    jp $C149


    db $E4
    ldh [$C4], a
    ret nz

    inc b
    nop
    call nz, $E400
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    sub a
    add b

Jump_02F_582D:
jr_02F_582D:
    rrca
    nop

jr_02F_582F:
    ld c, $00
    add hl, bc
    nop
    nop
    add b
    add sp, $00
    sbc $00
    call nz, Call_02F_4E00
    nop

jr_02F_583D:
    ld h, h
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    ld bc, $0000
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    ld sp, $232F
    ld e, $23
    inc e
    inc hl
    inc e
    nop
    nop
    ldh [rNR41], a
    jr c, @-$36

    jr jr_02F_583D

    db $EC
    db $F4
    db $FC
    db $10
    db $FC
    nop
    db $FC
    nop
    ld sp, $301E
    cpl
    inc a
    cpl
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    db $EC
    db $10
    inc e
    db $F4
    inc a
    db $E4
    ld hl, sp-$38
    ret c

    jr c, @+$32

    ldh a, [rLCDC]
    ret nz

    nop
    nop
    inc hl
    inc b
    rst $20
    inc b
    ld c, e
    ld bc, $01CF
    add b
    nop
    ret nz

    nop
    ld h, b
    ld bc, $01C0
    add b
    nop
    inc hl
    inc b
    xor c
    dec e
    and a
    ld a, [hl+]
    inc hl
    inc d
    add b
    nop
    ret


    jr nc, jr_02F_582D

    ld b, c
    inc hl
    inc b
    ld c, e
    ld bc, $0080
    rst $20
    inc b
    ld c, e
    ld bc, $0423
    add sp, $20
    adc d
    dec l
    add b
    nop
    ld c, e
    ld bc, $026C
    or $13
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    ld de, $6A46
    add hl, sp
    cp [hl]
    ld l, e
    nop
    nop
    nop
    inc l
    ld l, d
    add hl, sp
    ld de, $9F46
    ld [hl], e
    ld l, d
    add hl, sp
    xor [hl]
    ld b, l
    ld de, $9F46
    ld [hl], e
    nop
    inc l
    ld h, $25
    jp z, Jump_02F_7715

    ld [bc], a
    nop
    inc l
    jr nz, jr_02F_5926

    xor [hl]
    ld b, l
    db $10
    ld e, [hl]
    jr nz, @+$3F

    xor [hl]
    ld b, l
    db $10
    ld e, [hl]
    sub l
    halt
    sub l
    halt
    ld a, [de]
    ld a, a
    ld a, a
    cpl
    rst $38
    ld a, a
    nop
    nop
    ld [hl], $32
    db $ED
    dec [hl]
    rst $38
    ld a, a
    xor e
    ld e, h
    ld a, a
    ld e, $F7
    ld a, a
    ld c, d
    ld h, [hl]
    add b
    jr nc, jr_02F_598F

    ld e, $AD
    halt
    and d
    ld l, l
    add b
    jr nc, @-$5C

    ld l, l
    ld l, b
    ld sp, $4DAA
    add b
    jr nc, jr_02F_596F

    ld h, d
    ld c, a
    ld h, d
    ld a, a
    ld e, $80

jr_02F_5926:
    jr nc, @-$0F

    inc bc
    rst $20
    add hl, de
    add sp, $3E
    nop
    nop
    ld a, l
    inc bc
    and d
    ld l, l
    rst $30
    ld a, a
    add b
    jr nc, jr_02F_59A0

    ld sp, $460F
    ei
    ld c, [hl]
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    rst $20
    inc e
    ld c, d
    dec [hl]
    pop af
    ld b, l
    rst $10
    ld c, [hl]
    ld c, d
    dec [hl]
    pop af
    ld b, l
    rst $10
    ld c, [hl]
    rst $38
    ld a, a
    ld c, d
    dec [hl]
    rst $20
    inc e
    adc d
    dec e
    ld l, e
    ld c, [hl]
    rst $20
    inc e
    ld l, c
    ld sp, $398E
    ld d, d
    ld d, [hl]
    rst $20
    inc e
    ld c, d
    dec [hl]
    pop af
    ld b, l
    adc $3D
    ld c, d
    dec [hl]

jr_02F_596F:
    rst $20
    inc e
    ld c, b
    dec l
    adc d
    dec e
    daa
    rra
    daa
    rra
    daa
    rra
    daa
    rra
    daa
    rra
    daa
    rra
    daa
    rra
    daa
    rra
    nop
    nop
    ld a, [bc]
    ld b, b
    add hl, bc
    dec [hl]
    adc h
    ld b, l
    rst $00
    inc l

jr_02F_598F:
    ld l, e
    add hl, sp
    adc h
    ld b, l
    or h
    ld h, [hl]
    ld a, [bc]
    ld b, b
    nop
    nop
    inc bc
    add hl, de
    xor b
    dec l
    nop
    nop
    ld a, [bc]

jr_02F_59A0:
    ld b, b
    adc a
    jr z, @-$68

    ld e, c
    nop
    nop
    ld b, b
    jr z, jr_02F_59B3

    dec [hl]
    adc h
    ld b, l
    nop
    nop
    inc bc
    add hl, de
    xor b
    dec l

jr_02F_59B3:
    adc b
    ld a, [hl-]
    nop
    nop
    ld a, [bc]
    ld b, b
    add h
    inc h
    ld b, d
    inc e
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    jr nz, jr_02F_5A3D

    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld h, d
    ld bc, $5BF7
    ret nz

    nop
    nop
    nop
    sbc b
    ld c, [hl]
    nop
    nop
    ccf
    ld [hl-], a
    rst $38
    ld c, [hl]
    ld h, e
    inc bc
    and b
    ld bc, $00E0
    nop
    nop
    ld a, a
    ld [hl], e
    rst $38
    ld h, d
    ld a, a
    ld d, d
    rst $38
    ld b, c
    ldh [$03], a
    ldh [rSC], a
    ld b, b
    inc bc
    ldh [rSC], a
    nop
    nop
    rst $30
    ld e, e
    rst $30
    ld e, e
    rst $30
    ld e, e
    nop
    nop
    ld c, l
    inc e
    rla
    ld l, $FF
    ld a, a
    inc d
    ld e, b
    ld [bc], a
    cp a
    ld [$C001], sp
    sub d
    ld [$0083], sp
    sub c
    ld [$0083], sp
    sub c
    ld [$0083], sp
    sub c
    ld [$0083], sp
    sub c
    ld [$0083], sp
    sub c
    ld [$0083], sp
    ret nz

    cp a
    ld [$C101], sp
    sub e
    ld [$0001], sp
    sub b
    ld [$0084], sp
    adc a
    ld [$0082], sp
    sub d
    ld [$0001], sp
    sub e
    ld [$0001], sp

jr_02F_5A3D:
    sub e
    ld [$0086], sp
    ret nz

    ld h, [hl]
    ld [$E400], sp
    nop
    ld a, b
    ld a, [hl-]
    add $01
    sub d
    ld sp, $573C
    ld [hl], $32
    ld l, $21
    db $E4
    nop
    rst $18
    ld e, a
    db $DD
    ld bc, $2014
    db $E4
    nop
    add hl, de
    dec sp
    ld de, $2A0E
    dec l
    db $E4
    nop
    ld e, b
    ld [hl], $CD
    ld bc, $2D2A
    db $E4
    nop
    ld l, b
    ld sp, $00E4
    ld l, $21
    ld [hl], $32
    ld l, b
    ld sp, $0160
    jr nz, jr_02F_5ABD

    ret nc

    ld c, d
    nop
    nop
    ld c, e
    db $10
    ld d, l
    ld [hl], $FF
    ld a, a
    add hl, bc
    dec [hl]
    ldh [rLY], a
    ldh [$39], a
    xor c
    ld d, $A9
    ld d, $08
    dec sp
    inc [hl]
    dec hl
    di
    ccf
    add hl, bc
    dec [hl]
    ld l, [hl]
    dec l
    cp d
    ld a, $9F
    ld h, a
    dec l
    ld a, [hl+]
    add hl, bc
    dec [hl]
    add hl, sp
    inc bc
    ld l, e
    ld b, c
    dec l
    ld a, [hl+]
    add hl, bc
    dec [hl]
    and b
    ld sp, $16A9
    add hl, bc
    dec [hl]
    ld sp, $173D
    ld b, d
    ld e, d
    ld b, a
    add hl, bc
    dec [hl]
    nop
    nop
    stop
    rra
    nop

jr_02F_5ABD:
    add hl, sp
    inc bc
    rst $20
    inc e
    add $18
    add h
    db $10
    add hl, bc
    dec [hl]
    ldh [rLY], a

jr_02F_5AC9:
    ldh [$39], a
    xor c
    ld d, $A9
    ld d, $08
    dec sp
    inc [hl]
    dec hl
    di
    ccf
    add hl, bc
    dec [hl]
    ld l, [hl]
    dec l
    cp d
    ld a, $9F
    ld h, a
    dec l
    ld a, [hl+]
    add hl, bc
    dec [hl]
    add hl, sp
    inc bc
    ld l, e
    ld b, c
    dec l
    ld a, [hl+]
    add hl, bc
    dec [hl]
    and b
    ld sp, $16A9
    add hl, bc
    dec [hl]
    ld sp, $173D
    ld b, d
    ld e, d
    ld b, a
    add hl, bc
    dec [hl]
    nop
    ld e, h
    ret nz

    ld h, a
    sbc b
    ld a, a
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    xor b
    inc l
    sub b
    dec [hl]
    cp e
    ld b, d
    cp a
    ld l, a
    xor b
    inc l
    ld l, [hl]
    add hl, de
    xor l
    add hl, sp
    ld [hl], h
    ld a, $A8
    inc l
    ld b, b
    ld bc, $21EE
    sub $3A
    xor b
    inc l
    ld b, b
    add hl, de
    add sp, $39
    or b
    ld a, $A8
    inc l
    rst $28
    dec [hl]
    halt
    ld [hl-], a
    cp [hl]
    ld d, a
    xor b
    inc l
    ld c, l
    add hl, hl
    jp nc, Jump_02F_582D

    ld [hl], $A8
    inc l
    ld de, $1500
    nop
    ld d, c
    ld bc, $292A
    add sp, $20
    and [hl]
    jr jr_02F_5AC9

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    jr z, jr_02F_5B88

jr_02F_5B88:
    ld b, h
    jr nz, jr_02F_5BAC

    inc h
    ld b, $24
    ld b, $C3
    ld a, [hl+]
    inc l
    ld b, $F0
    rra
    ld [bc], a
    jr z, @-$56

    db $10
    sub e
    dec d
    inc a
    ld d, e
    ld h, [hl]
    dec b
    ld [bc], a
    jr z, jr_02F_5BDB

    inc bc
    jp Jump_02F_6634


    dec b

jr_02F_5BA7:
    ld [bc], a
    jr z, @-$1E

    jr jr_02F_5BD0

jr_02F_5BAC:
    ld b, $02
    jr z, jr_02F_5BBA

    jr nz, jr_02F_5C29

    inc h
    inc e
    ld b, e
    add hl, sp
    inc bc
    ld [c], a
    inc c
    ld l, a

jr_02F_5BBA:
    dec l
    ret c

    ld d, [hl]
    ld [bc], a
    ld [$104B], sp

jr_02F_5BC1:
    or l
    add hl, de
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10

jr_02F_5BD0:
    rrca
    ld sp, $232F
    ld e, $00
    nop
    nop
    nop
    nop
    nop

jr_02F_5BDB:
    ldh [rNR41], a
    jr c, jr_02F_5BA7

jr_02F_5BDF:
    jr jr_02F_5BC1

    db $EC
    db $F4
    db $FC
    db $10
    inc hl
    inc e
    inc hl
    inc e
    ld sp, $301E
    cpl
    inc e
    rrca
    rra
    inc de
    rlca
    inc b
    nop
    nop
    db $FC
    nop
    db $FC
    nop
    db $EC
    db $10
    inc e
    db $F4
    jr c, jr_02F_5BDF

    ld hl, sp-$38
    ldh [rNR41], a
    nop
    nop
    nop

jr_02F_5C06:
    nop
    ld b, b
    nop
    ld e, h
    rra
    db $10
    ld e, a
    ld d, c
    ld e, $03
    ld e, l
    inc bc
    ld e, a
    inc bc
    ld e, a
    nop
    nop
    ld [bc], a
    nop
    ld a, [de]
    ld hl, sp+$08
    ld a, [$08F2]
    ld hl, sp-$0E
    ld hl, sp-$06
    ld hl, sp-$06
    ld de, $104F
    ld e, a

jr_02F_5C29:
    inc e
    ld d, e
    rra
    ld e, h
    nop
    ld b, b
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    ldh a, [$FA]
    ld [$18F2], sp
    ld [$1AF8], a
    nop
    ld [bc], a
    ld a, [$FC00]
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
    inc b
    inc e
    inc de
    jr jr_02F_5C58

    scf
    cpl
    ccf
    ld [$0000], sp
    nop

jr_02F_5C58:
    nop
    nop
    nop
    ldh [rNR41], a
    jr c, @-$36

    ld [$8CF0], sp
    db $F4
    call nz, $3F78
    nop
    ccf
    nop
    scf
    ld [$2F38], sp
    inc e
    rlca

jr_02F_5C6F:
    rra
    inc de
    rlca
    inc b
    nop
    nop
    call nz, $C438
    jr c, jr_02F_5C06

    ld a, b
    inc c
    db $F4
    jr c, jr_02F_5C6F

    ld hl, sp-$38
    ldh [rNR41], a
    nop
    nop
    ld b, e
    ld hl, $2E2B
    ld a, e
    ld a, [hl-]
    rst $38
    ld l, a
    ld [bc], a
    ld bc, $3128
    dec hl
    ld l, $7B
    ld a, [hl-]
    ld [bc], a
    ld bc, $1981
    xor c
    ld b, $F0
    rra
    ld b, d
    dec h
    push hl
    add hl, sp
    add hl, hl
    ld l, a
    call c, $A97B
    ld b, $B2
    inc bc
    cp a
    ld a, [hl+]
    rst $38
    ld [hl], a
    xor c
    inc c
    or c
    ld c, c
    ld a, b
    ld a, [hl-]
    sbc a
    ld b, e
    xor c
    ld b, $A8
    jr jr_02F_5D03

    add hl, hl
    cp $7F
    ld b, b
    nop
    ld c, e
    db $10
    ld d, l
    ld [hl], $FF
    ld a, a
    nop
    nop
    inc bc
    inc a
    inc b
    ld l, b
    db $10
    ld l, b
    add hl, bc
    ld [hl], b
    jr c, jr_02F_5D14

    ld b, b
    nop
    rra
    ccf
    nop
    nop
    ret nz

    inc a
    jr nz, jr_02F_5CF1

    ld [$9016], sp
    ld c, $1C
    jp nz, $0002

    ld hl, sp-$04
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ccf
    ld b, b
    ld b, b
    ccf

jr_02F_5CF1:
    ccf
    nop
    nop
    nop
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    db $FC
    ld [bc], a
    ld [bc], a
    db $FC
    db $FC
    nop

jr_02F_5D03:
    nop
    nop
    nop
    nop
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    ld b, b
    inc bc
    add hl, sp

jr_02F_5D14:
    ld b, b
    nop
    nop
    ld hl, sp-$04
    db $FC
    cp $FC
    cp $00
    db $FC
    nop
    nop
    ld [bc], a
    ret nz

    sbc h
    ld [bc], a
    ld [$0470], sp
    ld l, b
    inc de
    inc l
    ld b, b
    nop
    ccf
    ld b, b
    ld b, b
    ccf
    ccf
    nop
    nop
    nop
    db $10
    ld c, $20
    ld d, $C8
    inc [hl]
    ld [bc], a
    nop
    db $FC
    ld [bc], a
    ld [bc], a
    db $FC
    db $FC
    nop
    nop
    nop
    ld b, b
    db $10
    dec b
    dec d
    ld b, b
    add hl, hl
    ret nz

    dec a
    dec b
    dec d
    ld b, b
    add hl, hl
    ret nz

    dec a
    and b
    ld b, [hl]
    ld b, b
    add hl, hl
    ret nz

    dec a
    and b
    ld b, [hl]
    rst $30
    ld c, e
    ret nz

    dec a
    and b
    ld b, [hl]
    rst $30
    ld c, e
    rst $38
    ld a, a
    dec b
    dec d
    ld b, b
    add hl, hl
    ret nz

    dec a
    ld b, b
    ld d, [hl]
    ld b, b
    add hl, hl
    ret nz

    dec a
    ld b, b
    ld d, [hl]
    rst $38
    ld a, a
    ld b, b
    add hl, hl
    ret nz

    dec a
    ld b, b
    ld d, [hl]
    rst $30
    ld c, e
    nop
    nop
    ld d, d
    dec h
    ld c, d
    add hl, hl
    rst $38
    ld a, a
    ld c, $11
    adc b
    ld [$0000], sp
    push de
    dec e
    or [hl]
    ld d, d
    nop
    nop
    ld l, h
    dec l

jr_02F_5D93:
    ld d, e
    ld c, d
    ld c, $11
    nop
    nop
    ld l, h
    dec l
    ld d, e
    ld c, d
    ld c, $11
    nop
    nop
    ld c, $09
    sbc a
    ld [de], a
    ld c, $11
    nop
    nop
    ld [c], a
    ld bc, $0100
    ld c, $11
    call z, $0004
    nop
    nop
    nop
    ld [c], a
    ld bc, $0000
    ld l, h
    dec l
    ld d, e
    ld c, d
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    inc bc
    nop
    and b
    ld bc, $02C9
    nop
    nop
    inc bc
    nop
    ret z

    db $10
    or b
    ld hl, $471B
    and b
    ld bc, $0003
    ldh [$08], a
    ret


    ld [bc], a
    inc bc
    nop
    db $ED
    dec [hl]
    push bc
    inc d
    sub $62
    nop
    nop
    adc a
    ld a, a
    add d
    jr nc, jr_02F_5D93

    ld b, l
    nop
    nop
    ld d, c
    dec c
    ld a, a
    ld h, $9C
    ld d, a
    inc bc
    nop
    ld h, e
    ld [$08C7], sp
    ld c, l
    dec d
    ld [bc], a
    ld [$104B], sp
    ld d, l
    ld [hl], $FF
    ld a, a
    ret


    inc l
    ldh [rLY], a
    ldh [$39], a
    xor c
    ld d, $A9
    ld d, $08
    dec sp
    inc [hl]
    dec hl
    di
    ccf
    ret


    inc l
    ld l, [hl]
    dec l
    cp d
    ld a, $9F
    ld h, a
    dec l
    ld a, [hl+]
    ret


    inc l
    add hl, sp
    inc bc
    ld l, e
    ld b, c
    dec l
    ld a, [hl+]
    ret


    inc l
    and b
    ld sp, $16A9
    ret


    inc l
    call z, $AD34
    dec d
    inc de
    ld [hl], $4A
    ld sp, $41B0
    ld a, [c]
    dec l
    cp c
    ld b, d
    add hl, hl
    dec h
    rst $20
    inc e
    add $18
    add h
    db $10
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    and b
    sub b
    and b
    add b
    and b
    cp a
    and b
    cp a
    and b
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    add b
    ldh [$BF], a
    ldh a, [$BF]
    rst $38
    cp a
    cp a
    cp a
    rst $38
    cp a
    cp a
    cp a
    rst $38
    and b
    rst $38
    and b
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $E3
    cp a
    ldh [$BF], a
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    ret nz

    add b
    rst $38
    rst $38
    rst $38
    cp $E3
    cp a
    ldh [$BF], a
    rst $38
    rst $38
    inc c
    sub b
    nop
    sbc a
    ld [$4103], sp
    ld [$8840], sp
    ld [$0084], sp
    ld bc, $8742
    ld [$0082], sp
    adc d
    ld [$0082], sp
    add a
    ld [$4103], sp
    ld [$8208], sp
    nop
    add [hl]
    ld [$4304], sp
    nop
    nop
    ld [$0083], sp
    add l
    ld [$0085], sp
    add a
    ld [$0085], sp
    add a
    ld [$0085], sp
    adc d
    ld [$C001], sp
    add [hl]
    ld [$0C00], sp
    sub b
    nop
    sbc a
    ld [$4103], sp
    ld [$8840], sp
    ld [$0084], sp
    ld bc, $8742
    ld [$0082], sp
    adc d
    ld [$0001], sp
    adc b
    ld [$4103], sp
    ld [$8208], sp
    nop
    add [hl]
    ld [$4304], sp
    nop
    nop
    ld [$0083], sp
    add l
    ld [$0085], sp
    add a
    ld [$0085], sp
    add a
    ld [$0085], sp
    adc d
    ld [$C001], sp
    add [hl]
    ld [$0100], sp
    nop
    sub h
    inc de
    ld e, [hl]

Jump_02F_5F00:
    db $10
    inc b
    add hl, hl
    rlca
    nop
    sub b
    and l
    ld [hl], a
    db $10
    ld b, $26
    ldh [$8E], a
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    adc [hl]
    xor e
    ld h, e
    ld [bc], a
    ld bc, $002F
    adc a
    bit 4, h
    ld [bc], a
    ld bc, $202F
    adc [hl]
    db $DD
    ld h, b
    inc bc
    ld bc, $202F
    adc a
    dec c
    ld h, c
    inc bc
    ld bc, $002F
    add b
    nop
    ld h, b
    db $10
    ld [$0120], sp
    nop
    sub b
    and l
    ld l, e
    db $10
    ld b, $26
    rlca
    nop
    sub b
    nop
    ld h, b
    db $10
    ld [$0022], sp
    adc [hl]
    add l
    ld c, h

jr_02F_5F49:
    ld [bc], a
    ld [bc], a
    cpl
    jr nz, @-$6F

    dec b
    ld c, l
    inc b
    ld bc, $202F
    adc [hl]
    push bc
    ld c, h
    inc b
    ld bc, $602F
    adc [hl]
    db $EB
    ld h, e
    ld bc, $2F02
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0F20], sp
    pop hl
    nop
    sub [hl]
    ld [$0085], sp
    adc d
    ld [$0087], sp
    add a
    ld [$0088], sp
    add a
    ld [$0088], sp
    add a
    ld [$0088], sp
    adc b
    ld [$0087], sp
    adc b
    ld [$0087], sp
    add a
    ld [$0087], sp
    add [hl]
    ld [$0089], sp
    add l
    ld [$008B], sp
    add e
    ld [$008C], sp
    add h
    ld [$008B], sp
    add [hl]
    ld [$0001], sp
    sbc b
    ld [$0100], sp
    nop
    sub b
    nop
    ld d, b
    db $10
    ld [$071D], sp
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    jr nz, jr_02F_5F49

    xor e
    ld h, a
    ld bc, $2F02
    nop
    adc a
    dec bc
    ld l, c
    ld [bc], a
    ld bc, $002F
    adc [hl]
    dec hl
    ld l, c
    ld [bc], a
    ld bc, $002F
    sub b
    nop
    ld l, b
    db $10
    ld [$301D], sp
    adc [hl]
    ld de, $0B62
    ld [bc], a
    dec l
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$2820], sp
    ld l, b
    ld bc, $1A1D
    and b
    dec b
    xor c
    ld a, e
    ld b, $1A
    ld a, e
    ld a, e
    add hl, de
    ld a, e
    xor e
    and d
    ld a, e
    ld b, $DD
    sbc $DE
    rst $18
    ld a, e
    xor e
    and d
    ld a, e
    inc bc
    ld a, [de]
    ld a, e
    add hl, de
    add d
    ld a, e
    ld bc, $A2AB
    ld a, e
    inc bc
    db $DD
    sbc $DF
    add d
    ld a, e
    ld bc, $C0AB
    jp hl


    ld a, e
    call nz, $0017
    nop
    inc bc
    nop
    sub b
    inc de
    ld h, [hl]
    db $10
    inc b
    add hl, hl
    nop
    sub [hl]
    rst $38
    ld h, b
    db $10
    ld [bc], a
    inc l
    nop
    sub h
    rst $38
    ld e, [hl]
    db $10
    ld [bc], a
    inc l
    inc b
    nop
    sub b
    nop
    ld d, b
    db $10
    ld [$E024], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    or b
    adc [hl]
    sbc $7D
    inc bc
    ld [bc], a
    ld l, $00
    add b
    nop
    ld h, b
    db $10
    ld [$0320], sp
    nop
    sub b
    nop
    ld b, b
    db $10
    ld [$0021], sp
    adc b
    nop
    ld e, b
    db $10
    ld [$0020], sp
    add b
    nop
    ld [hl], b
    db $10
    ld [$0420], sp
    ldh [$8E], a
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    sub b
    nop
    ld c, [hl]
    db $10
    rlca
    dec h
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0020], sp
    sub a
    ld d, c
    ld a, c
    rlca
    ld bc, $002E
    nop
    nop
    ld a, a
    rra
    ld a, a
    jr nc, jr_02F_6104

    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    nop
    nop
    cp $F8
    cp $0C
    cp $F4
    cp $F4
    cp $FC
    cp $CC
    cp $1F
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    ld h, b
    rra
    ld b, b
    ccf
    ld h, b
    rra
    ld a, a
    nop
    nop
    nop
    ld [hl-], a
    call nz, $0109
    ld [$0084], sp
    inc bc
    ld [$C3C9], sp
    xor d
    nop
    add [hl]
    ld [$0002], sp
    ret


    ret nz

    ld e, h
    nop
    add d
    ld [$0085], sp
    ld bc, $AE08
    nop
    add h
    ld [$00AB], sp
    ld [bc], a
    ld [$8200], sp
    ld [$00AE], sp
    inc bc
    ld [$0800], sp
    ret z

    sub a
    nop
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
    rra
    jr jr_02F_6129

    daa
    ld a, a
    ld e, [hl]
    ld c, $0E
    rla
    add hl, de
    inc de
    dec e
    ld de, $FF1F
    rst $38
    or $2E
    db $EC
    call c, Call_02F_7AFE
    cp $0E
    rst $38
    rst $20
    rra
    ei
    rst $00

jr_02F_6104:
    db $FD
    inc hl
    rst $38
    db $E3
    rra
    ld bc, $FFFF
    rst $38
    ld [hl], b
    ld [hl], b
    add sp, -$68
    ret z

    cp b
    adc b
    ld hl, sp-$01
    rst $38
    ld l, a
    ld [hl], h
    scf
    dec sp
    ld a, a
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ld hl, sp+$18

jr_02F_6129:
    db $FC
    db $E4
    cp $7A
    ld a, a
    ld [hl], b
    rst $38
    rst $20
    ld hl, sp-$21
    db $E3
    cp a
    call nz, $C7FF
    ld hl, sp-$80
    rst $38
    rst $38
    rst $38
    dec bc
    ld h, e
    nop
    nop
    ld a, [bc]
    call c, $C000
    ld e, c
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    add d
    ld hl, sp+$01
    db $FD
    add d
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    add l
    ld hl, sp-$7A
    db $FD
    or b
    ld hl, sp+$00
    jr z, jr_02F_61D6

    ld bc, $001D
    sub b
    ld bc, $7BA8
    dec b
    sbc d
    adc [hl]
    adc a
    dec e
    xor e
    and e
    ld a, e
    add d
    sbc [hl]
    inc bc
    sbc a
    dec e
    xor e
    and e
    ld a, e
    add d
    xor [hl]
    inc bc
    xor a
    ld e, d
    xor e
    and e
    ld a, e
    ld bc, $A71A
    ld a, e
    ld bc, $A72A
    ld a, e
    ld bc, $C03A
    sbc a
    ld a, e
    nop
    dec bc
    call c, $C000
    ld e, c
    ld [$0086], sp
    add l
    ld [$0086], sp
    add l
    ld [$0086], sp
    add l
    ld [$0086], sp
    add l
    ld [$0086], sp
    add d
    ld [$0001], sp
    add d
    ld [$0086], sp
    add l
    ld [$0086], sp
    add l
    ld [$0086], sp
    sub b
    ld [$C001], sp
    sbc a
    ld [$0100], sp
    nop
    sub b
    nop
    ld a, b
    db $10
    ld [$0520], sp
    nop
    sub b
    nop

jr_02F_61D6:
    ld b, a
    db $10
    rlca
    dec h
    nop
    adc a
    xor e
    ld h, d
    ld [bc], a
    ld bc, $202F
    adc a
    bit 4, d
    ld [bc], a
    ld bc, $E02F
    adc [hl]
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0220], sp
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    sub b
    nop

Jump_02F_6201:
    ld a, b
    db $10
    ld [$0321], sp
    nop
    sub b
    nop
    ld b, b
    db $10
    ld [$E022], sp
    adc [hl]
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$2820], sp
    and b
    dec b
    xor c
    nop
    add h
    ld bc, $0002
    ld bc, $00A2
    add h
    ld bc, $0002
    ld bc, $00A2
    add e
    ld bc, $0082
    ld bc, $A201
    nop
    add e
    ld bc, $0082
    ld bc, $C401
    db $FC
    nop
    nop
    ld bc, $9000
    nop
    ld c, b
    db $10
    ld [$0424], sp
    ret nz

    adc [hl]
    ld b, l
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    cpl
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    sub b
    nop
    ld l, b
    db $10
    ld [$0023], sp
    add b
    nop
    ld h, b
    db $10
    ld [$0220], sp
    nop
    adc a
    and b
    ld b, a
    db $10
    ld bc, $002E
    sub b
    nop
    ld e, b
    db $10
    ld [$031E], sp
    ldh [$8E], a
    add l
    ld b, h
    ld [bc], a
    ld [bc], a
    cpl
    nop
    sub b
    nop
    ld d, b
    db $10
    ld [$001E], sp
    add b
    nop
    ld h, b
    db $10
    ld [$4020], sp
    ld b, b
    ld [bc], a
    dec [hl]
    ld a, [bc]
    nop
    dec b
    ret nz

    ld b, c
    nop
    dec b
    rst $08
    adc $EB
    db $EC
    db $ED
    cp e
    nop
    dec b
    rst $18
    sbc $DB
    call c, $BBDD
    nop
    ld [bc], a
    rst $28
    xor $C4
    ld b, h
    nop
    nop
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
    dec de
    inc b
    rla
    inc c
    daa
    jr jr_02F_6323

    jr jr_02F_6321

    inc e
    jr nc, @+$21

    db $10
    rrca
    inc e
    rrca
    rrca
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
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02F_6343

    jr @+$25

    inc e
    jr nc, jr_02F_6340

jr_02F_6321:
    jr nc, jr_02F_6352

jr_02F_6323:
    inc e
    rrca
    rra
    inc de
    rrca
    inc c
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
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    daa
    inc e
    daa
    jr jr_02F_6377

jr_02F_6340:
    jr jr_02F_635D

    inc c

jr_02F_6343:
    rra
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [hl], b
    nop
    ld h, b

jr_02F_6352:
    rrca
    ld c, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld c, a
    cpl

jr_02F_635D:
    ld h, b
    db $10
    ld [hl], b
    rrca
    ccf
    ld b, b
    nop
    ld a, a
    dec h
    ld e, d
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
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca

jr_02F_6377:
    jr nc, jr_02F_63A8

    inc hl
    rra
    daa
    inc e
    daa
    jr jr_02F_63B7

    jr jr_02F_63BD

    inc l
    rra
    inc b
    rra
    db $10
    rlca
    inc b
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    nop
    ld [hl], b
    rrca
    ld l, a
    rra
    ld d, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    cpl
    ld h, b
    db $10
    ld [hl], b
    rrca
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    ld a, a
    nop

jr_02F_63A8:
    ld a, a
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
    rrca
    rrca
    rra
    dec de

jr_02F_63B7:
    dec de
    rla
    ccf
    daa
    ccf
    daa

jr_02F_63BD:
    ccf
    inc hl
    cpl
    jr nc, jr_02F_63E1

    db $10
    inc de
    inc e
    inc c
    rrca
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
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02F_6403

    jr jr_02F_6401

    inc e
    jr nc, jr_02F_6400

jr_02F_63E1:
    jr nc, jr_02F_6412

    inc e
    rrca
    rra
    inc de
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    ccf
    db $10
    ld b, b
    jr nz, jr_02F_6442

    rrca
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rrca
    ld c, a
    jr nz, jr_02F_643F

    rra

jr_02F_6400:
    ld b, b

jr_02F_6401:
    ld h, b
    rra

jr_02F_6403:
    ccf
    ld b, b
    ld h, b
    rra
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    ldh [rP1], a
    ret nc

    rrca
    rst $18

jr_02F_6412:
    rrca
    rst $08
    nop
    ret nz

    ld bc, $01C4
    push bc
    nop
    add $02
    add $02
    add $02
    rst $00
    inc bc
    rst $00
    inc bc
    rst $00
    nop
    ldh [rP1], a
    ld a, a
    nop
    add b
    nop
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_02F_6492

    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_02F_649A

    nop
    nop
    ld a, a
    ld a, a

jr_02F_643F:
    nop
    nop
    nop

jr_02F_6442:
    ld a, a
    rra
    ld b, b
    ccf
    ld h, b
    nop
    ld a, a
    add b
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca
    jr nc, jr_02F_6484

    inc hl
    rra
    daa
    inc e
    daa
    jr jr_02F_6493

    jr jr_02F_6499

    inc l
    ccf
    inc h
    rra
    db $10
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr @+$29

    jr jr_02F_649D

    inc e
    jr nc, jr_02F_649C

    jr nc, jr_02F_64AE

    inc a
    cpl
    rra
    inc de
    dec de

jr_02F_6484:
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_02F_6492:
    inc b

jr_02F_6493:
    inc e
    inc de
    db $10
    rrca
    jr nc, jr_02F_64C8

jr_02F_6499:
    inc hl

jr_02F_649A:
    rra
    daa

jr_02F_649C:
    inc e

jr_02F_649D:
    daa
    jr jr_02F_64D7

    jr @+$3D

    inc l
    rra
    inc b
    rra
    db $10
    rlca
    inc b
    nop
    nop
    rst $38
    nop
    cp a

jr_02F_64AE:
    ld a, a
    ldh a, [rSVBK]
    ldh [$6F], a
    rst $08
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $08
    ld l, a
    ldh [rSVBK], a
    ldh a, [$7F]
    cp a
    ld a, a
    add b
    nop
    add b
    ld e, d
    add b

jr_02F_64C8:
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    dec de
    dec de
    rla
    ccf
    daa

jr_02F_64D7:
    ccf
    daa
    ccf
    inc hl
    cpl
    jr nc, @+$41

    jr nc, jr_02F_6513

    inc a
    inc e
    rra
    rra
    rra
    rrca
    rrca
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
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c
    ccf
    jr @+$41

    jr @+$41

    inc e
    cpl
    rra
    rra
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc e
    inc de
    db $10
    rrca

jr_02F_6513:
    jr nc, jr_02F_6544

    inc hl
    rra
    daa
    inc e
    daa

jr_02F_651A:
    jr jr_02F_6553

jr_02F_651C:
    jr jr_02F_6559

    inc l
    ccf
    inc h
    rra
    db $10
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02F_656B

    jr jr_02F_6575

jr_02F_653E:
    inc c
    dec sp
    inc b
    rra
    nop
    rra

jr_02F_6544:
    nop
    rrca
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
    inc bc
    nop

jr_02F_6553:
    rrca
    inc bc
    rra
    rrca
    rra
    rrca

jr_02F_6559:
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02F_658F

    jr @+$19

    inc c
    dec de
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop

jr_02F_656B:
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c

jr_02F_6575:
    ccf

jr_02F_6576:
    jr jr_02F_65B7

jr_02F_6578:
    jr jr_02F_65B9

    inc e
    cpl
    rra
    ccf
    rrca
    inc sp
    rrca
    inc e
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    ld l, a
    nop
    rst $18
    nop

jr_02F_658F:
    or b
    nop
    ld h, e
    inc b
    ret nz

    ld [$1080], sp
    add b
    jr nz, jr_02F_651A

jr_02F_659A:
    jr nz, jr_02F_651C

    jr nz, jr_02F_653E

    db $10
    sub b
    ld [$04CB], sp
    ld h, a
    nop
    or b
    nop
    rst $18
    nop

jr_02F_65A9:
    ld l, a
    nop
    ld l, a
    nop
    ret c

    inc b
    or e
    dec bc
    ld h, a
    rla
    rst $08
    cpl
    adc a
    cpl

jr_02F_65B7:
    adc a
    cpl

jr_02F_65B9:
    and a
    rla
    sub e
    dec hl
    xor b
    inc d
    sub a
    ld [$07C8], sp
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    nop
    nop
    nop
    ld a, [$0000]
    cp $FE
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
    nop
    nop
    nop
    cp $F8
    ld a, [$FAFC]
    nop
    cp $00
    nop
    ld l, a
    nop
    db $DB
    inc b
    or b
    ld [$1060], sp
    ret nz

    jr nz, jr_02F_6576

    jr nz, jr_02F_6578

    jr nz, jr_02F_659A

    db $10
    sub b
    jr z, jr_02F_65A9

    inc d
    sub a
    ld [$07C8], sp
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    nop
    nop
    nop
    cp $00
    ld a, [$FA04]
    nop
    cp $00
    cp $00
    ld a, [$FA04]
    nop
    nop
    cp $FE
    nop
    nop
    nop
    cp $F8
    ld a, [$FAFC]
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld b, b
    rra
    ld b, h
    ld e, e
    ld c, h
    rra

Jump_02F_6634:
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, h
    ld c, a
    ld e, a
    ld e, a
    ld c, a
    ld d, e
    ld c, a
    ld e, h
    ld b, e
    ld b, b
    ld b, b
    nop
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ccf
    rra
    ld h, b
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    ld b, b
    ccf
    ccf
    ld b, b
    ld a, a
    rra
    ld e, a
    ccf
    ld h, b
    rra
    ccf
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld e, h
    rra
    db $10
    ld e, a
    ld d, b
    rra
    inc bc
    ld e, h
    rlca
    ld e, e
    rlca
    ld e, a
    rlca
    ld e, a
    rla
    ld c, a
    dec de
    ld d, a
    rra
    ld e, e
    nop
    ld b, b
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld e, e
    rra
    rla
    ld e, e
    ld b, a
    rra
    rlca
    ld e, a
    rlca
    ld e, a
    inc bc
    ld e, a
    db $10
    ld c, a
    db $10
    ld e, a
    inc e
    ld d, e
    rra
    ld e, h
    nop
    ld b, b
    ld e, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rra
    ld b, e
    ld e, a
    ld c, a
    rra
    ld c, a
    ld e, h
    ld e, a
    ld e, e
    ld e, h
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld c, a
    ld e, b
    ld d, a
    ld c, h
    ld e, e
    ld b, h
    ld b, b
    ld b, b
    nop
    ld e, a
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
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02F_670F

    jr jr_02F_66F9

    inc c
    dec de
    inc b
    rrca
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
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c

jr_02F_66F9:
    ccf
    jr jr_02F_673B

    jr jr_02F_673D

    inc e
    cpl
    rra
    rra
    rrca
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a

jr_02F_670F:
    nop
    ld [hl], b
    rrca
    ld l, a
    rra
    ld d, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    cpl
    ld h, b
    db $10
    ld [hl], b
    rrca
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    inc b
    dec de
    inc c
    ccf
    jr jr_02F_6777

    jr jr_02F_6779

    inc e

jr_02F_673B:
    cpl
    rra

jr_02F_673D:
    ccf
    rrca
    inc sp
    rrca
    inc e
    inc bc
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
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rra
    rrca
    inc a
    rra
    dec sp
    inc e
    ccf
    jr jr_02F_678B

    jr jr_02F_6795

    inc c
    dec sp
    inc b
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
    nop
    ld a, a
    rra
    ld e, a
    rrca
    ld c, a
    nop
    ld b, b
    ld b, b
    nop

jr_02F_6777:
    nop
    ld b, b

jr_02F_6779:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ccf
    ld b, b
    nop
    nop
    nop
    ld bc, $5C1C
    rra
    ld e, a
    nop
    nop

jr_02F_678B:
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b
    rla
    inc c

jr_02F_6795:
    daa
    jr jr_02F_67BF

    jr jr_02F_67BD

    inc e
    jr nc, jr_02F_67BC

    jr nc, @+$11

    inc a
    rrca
    rra
    inc bc
    rra
    nop
    rrca
    nop
    inc bc
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
    jr c, jr_02F_67CC

    ld [hl], b
    cpl
    ld h, b
    ccf
    ld h, b
    ccf
    ld [hl], b

jr_02F_67BC:
    cpl

jr_02F_67BD:
    jr c, jr_02F_67D6

jr_02F_67BF:
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
    nop

jr_02F_67CC:
    nop
    ld e, a
    ld e, a
    nop
    ld e, a
    ld l, a
    jr nc, jr_02F_6853

    jr nz, jr_02F_6816

jr_02F_67D6:
    rra
    ld b, b
    rra
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    ld e, a
    ld e, a
    nop
    nop
    nop
    ld bc, $5C1C
    rra
    ld e, a
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
    dec de
    inc b
    rla
    inc c
    daa
    jr jr_02F_6823

    jr jr_02F_6821

    inc e
    jr nc, jr_02F_6820

    db $10
    rrca
    inc e
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10

jr_02F_6812:
    rrca
    db $10

jr_02F_6814:
    rrca
    inc hl

jr_02F_6816:
    rra
    daa

jr_02F_6818:
    inc e
    daa

jr_02F_681A:
    jr jr_02F_6853

jr_02F_681C:
    jr jr_02F_6859

    inc c
    ccf

jr_02F_6820:
    inc b

jr_02F_6821:
    rra
    nop

jr_02F_6823:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    inc hl
    rra
    daa
    inc e
    daa
    jr jr_02F_6873

    jr @+$3D

    inc c
    ccf
    inc b
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
    nop
    nop
    nop
    nop
    inc bc
    nop

jr_02F_6853:
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca

jr_02F_6859:
    inc hl
    rra
    daa
    inc e

jr_02F_685D:
    daa
    jr @+$39

    jr jr_02F_687D

    inc c
    rra
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    dec de
    inc b

jr_02F_6873:
    rla
    inc c
    daa
    jr jr_02F_689F

    jr @+$25

    inc e
    jr nc, jr_02F_689C

jr_02F_687D:
    jr nc, jr_02F_688E

    inc a
    rrca
    rra
    inc bc
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
    add e

jr_02F_688E:
    inc a
    nop
    jr c, jr_02F_6812

    jr nc, jr_02F_6814

    jr nz, jr_02F_6816

    jr nz, jr_02F_6818

    jr nz, jr_02F_681A

    jr nc, jr_02F_681C

jr_02F_689C:
    jr c, jr_02F_685D

    inc a

jr_02F_689F:
    add b
    nop
    add b
    rra
    sbc a
    nop
    rra
    nop
    add b
    nop
    ld e, a
    nop
    ld e, a
    nop
    add b
    nop
    nop
    nop
    cp h
    nop
    cp b
    nop
    or b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    or b
    nop
    cp b
    nop
    cp h
    nop
    add b
    nop
    cpl
    nop
    add b
    nop
    ld e, a
    nop
    ld l, a
    nop
    rst $18
    nop
    or b
    nop
    ld h, b
    inc b
    ret nz

    dec bc
    add b
    rla
    add b
    cpl
    add b
    cpl
    add b
    cpl
    and b
    rla
    sub b
    dec bc
    ret z

    inc b
    ld h, a
    nop
    or b
    nop
    rst $18
    nop
    ld l, a
    nop
    nop
    nop
    rlca
    inc b
    rra
    db $10
    dec de
    inc b
    scf
    inc l
    daa
    jr jr_02F_691F

    jr jr_02F_691D

    inc e
    jr nc, jr_02F_691C

    jr nc, @+$31

    inc a
    cpl
    rra
    inc de
    dec de
    inc e
    inc c
    rrca
    ld [bc], a
    inc bc
    nop
    nop
    add b
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
    jr nz, jr_02F_693A

    ld b, b

jr_02F_691C:
    ccf

jr_02F_691D:
    ld b, b
    ccf

jr_02F_691F:
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
    add b
    nop
    jr nz, jr_02F_694E

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

jr_02F_693A:
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
    nop
    nop
    add e

jr_02F_694E:
    inc a
    inc bc
    dec sp
    add a
    scf
    adc a
    cpl
    adc a
    cpl
    adc a
    cpl
    add a
    scf
    add e
    dec sp
    cp a
    inc a
    add b
    nop
    add b
    rra
    sbc a
    nop
    rra
    nop
    add b
    nop
    ld e, a
    nop
    ld e, a
    nop
    add b
    nop
    nop
    nop
    cp h
    nop
    cp b
    inc bc
    or b
    rlca
    and b
    rrca
    and b
    rrca
    and b
    rrca
    or b
    rlca
    cp b
    inc bc
    cp h
    nop
    add b
    nop
    cpl
    nop
    add b
    nop
    ld e, a
    nop
    jr z, jr_02F_691D

    ld bc, $00AB
    ld [bc], a
    ld [$A6A2], sp
    nop
    ld [bc], a
    ld [$A3A2], sp
    nop
    add h
    ld bc, $A201
    and e
    nop
    add l
    ld bc, $00A3
    add l
    ld bc, $C6C0
    nop
    nop
    ld bc, $9000
    nop
    ld e, b
    db $10
    ld [$031F], sp
    nop
    sub b
    nop
    ld b, b
    db $10
    ld [$E01F], sp
    adc [hl]
    ld b, l
    ld e, e
    ld [bc], a
    ld [bc], a
    cpl
    nop
    add b
    nop
    ld h, b
    db $10
    ld [$0120], sp
    nop
    sub b
    db $10
    ld b, b
    db $10
    rlca
    ld c, $01
    nop
    sub d
    and l
    ld [hl], c
    db $10
    ld b, $26
    inc d
    sub b
    ld bc, $A1C0
    nop
    ld bc, $C0C1
    pop af
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    dec [hl]
    ld [hl], $00
    db $10
    ret nc

    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02F_7349:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02F_7715:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02F_7AFE:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02F_7FBC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
