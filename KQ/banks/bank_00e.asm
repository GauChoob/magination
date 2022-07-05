; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    jr c, jr_00E_4002

jr_00E_4002:
    ld e, h
    jr z, jr_00E_4029

    jr jr_00E_4025

    inc b
    scf
    ld e, $43
    ld a, $43
    ld a, $3E
    nop
    nop
    nop
    nop
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
    rra
    rla
    rrca
    nop
    nop
    nop
    nop
    nop

jr_00E_4025:
    nop
    nop
    nop
    nop

jr_00E_4029:
    nop
    nop
    nop
    rst $38
    cp $FF
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
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    inc b
    inc bc
    ld [$1007], sp
    rrca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03FE
    db $FC
    nop
    nop
    nop
    nop
    ld a, [$CCFC]
    ldh a, [$78]
    add b
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, a
    ld a, a
    dec sp
    ld a, h
    ld c, $70
    inc e
    ld h, b
    jr jr_00E_40EC

    jr nc, jr_00E_40CE

    jr nz, jr_00E_40D0

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
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    rlca

jr_00E_40A3:
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
    nop
    inc bc
    nop
    inc bc
    rst $38
    ld bc, $11FF
    rst $28
    db $10
    rst $28
    jr @-$17

    jr jr_00E_40A3

    inc e
    db $E3
    inc e
    db $E3
    nop
    add b
    ret nz

    add b
    add b
    ret nz

    ldh [$C0], a
    ret nz

    ldh [$71], a
    ldh [$62], a
    pop af

jr_00E_40CE:
    inc a
    di

jr_00E_40D0:
    db $10
    rrca
    jr nz, jr_00E_40F3

    ld b, b
    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    inc bc
    db $FC
    ld b, $F9
    ld c, $F1
    rlca
    ld hl, sp+$0B
    db $FC
    ld c, $FC
    adc [hl]
    ld a, h
    ld c, $FC
    ld c, $FC

jr_00E_40EC:
    ld c, $FC
    ld c, $FC
    add c
    nop
    ld [bc], a

jr_00E_40F3:
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    ld b, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [rNR23]
    ldh a, [rNR23]
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
    ld [bc], a
    ld bc, $0304

jr_00E_4120:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    scf
    rrca
    cp a
    ld a, a
    ld [hl], e
    db $FC
    adc $F0
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ei
    db $FC
    rst $38
    rst $38
    rst $30
    rrca
    dec e
    inc bc
    nop
    nop
    nop
    nop
    ld a, a
    rra
    scf
    rrca
    sbc b
    rlca
    ld c, h
    add e
    add h
    jp $C304


    ld b, b
    nop
    nop
    nop
    db $FC
    cp $F4
    ld hl, sp+$18
    ldh [$30], a
    ret nz

    jr nc, @-$3E

    jr nc, jr_00E_4120

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
    nop
    inc bc
    nop
    inc bc
    nop
    ld e, $E1
    ld d, $E1
    inc de
    ldh [rNR13], a
    ldh [rNR11], a
    ldh [rNR11], a

jr_00E_417B:
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$3C], a
    di
    jr jr_00E_417B

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    pop bc
    ld a, $C3
    inc a
    ld e, $E1
    ld e, $E1
    ld [hl], $C1
    ld h, [hl]
    add c
    add $01
    add [hl]
    ld bc, $0106
    ld b, $01
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld de, $110E
    ld c, $23
    inc e
    inc hl
    inc e
    ld b, h
    jr c, jr_00E_41FF

    jr c, jr_00E_41C5

    ld [hl], b
    adc e
    ld [hl], a
    inc e
    ld hl, sp+$08
    db $FC
    adc h

jr_00E_41C5:
    ld a, h
    adc [hl]
    ld a, h
    call nz, $C63E
    ld a, $C7
    ld a, $62
    sbc a
    dec c
    inc bc

jr_00E_41D2:
    add hl, bc
    rlca

jr_00E_41D4:
    jr @+$09

jr_00E_41D6:
    db $10
    rrca

jr_00E_41D8:
    jr nc, jr_00E_41E9

jr_00E_41DA:
    jr nc, jr_00E_41EB

jr_00E_41DC:
    jr nc, jr_00E_41ED

jr_00E_41DE:
    jr nc, jr_00E_41EF

jr_00E_41E0:
    sbc b
    ldh [$30], a
    ret nz

    ld h, b
    add b
    ld h, b
    add b
    ret nz

jr_00E_41E9:
    nop
    ret nz

jr_00E_41EB:
    nop
    ret nz

jr_00E_41ED:
    nop
    ret nz

jr_00E_41EF:
    nop
    ld b, $01
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
    ld e, a

jr_00E_41FF:
    ccf
    inc b
    jp $C304


    inc b
    jp $4384


    add h
    ld b, e
    ld b, h
    inc bc
    inc b
    inc bc
    db $F4
    ei
    jr nc, jr_00E_41D2

    jr nc, jr_00E_41D4

    jr nc, jr_00E_41D6

    jr nc, jr_00E_41D8

    jr nc, jr_00E_41DA

    jr nc, jr_00E_41DC

    jr nc, jr_00E_41DE

    jr nc, jr_00E_41E0

    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    inc bc
    nop
    inc bc

jr_00E_4253:
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$66]
    jr jr_00E_42DF

    db $10
    jr c, jr_00E_4276

jr_00E_4276:
    jr nc, jr_00E_4278

jr_00E_4278:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld c, $FC
    rrca
    db $FC
    rrca
    db $FC
    rrca
    db $FC
    ld c, $FD

jr_00E_429A:
    ld c, $FD
    rrca
    db $FC
    ld c, $FC
    add b
    ld a, a
    rra
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    jr nz, @-$3E

    db $10
    ldh [$F8], a
    nop
    nop
    nop
    inc hl
    rst $18
    db $E3
    rra
    ld sp, $110F
    rrca
    db $10
    rrca
    jr nz, @+$21

jr_00E_42BC:
    ld a, a
    nop
    nop
    nop
    or b
    rrca

jr_00E_42C2:
    jr nc, jr_00E_4253

jr_00E_42C4:
    or b
    adc a

jr_00E_42C6:
    cp b
    rst $00

jr_00E_42C8:
    ret c

    rst $20

jr_00E_42CA:
    ld l, h
    di
    sub $39
    rlca
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ld h, b
    add b
    jr nc, jr_00E_429A

    jr jr_00E_42BC

    inc c
    ldh a, [$27]

jr_00E_42DF:
    ld hl, sp+$30
    rrca
    jr jr_00E_42EB

    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c

jr_00E_42EB:
    inc bc

jr_00E_42EC:
    inc e
    inc bc
    ld a, [$1C07]
    db $E3
    inc [hl]
    jp $8364


    ld h, h
    add e
    ld h, h
    add e
    ld l, b
    add a
    ld [hl], b
    adc a
    ld a, a
    add b
    jr nc, jr_00E_42C2

    jr nc, jr_00E_42C4

    jr nc, jr_00E_42C6

    jr nc, jr_00E_42C8

    jr nc, jr_00E_42CA

    jr jr_00E_42EC

    inc c
    ldh a, [$FE]
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rlca
    ld b, $01
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    jr nc, jr_00E_435B

    jr jr_00E_4355

    inc c
    inc bc
    ld b, b
    add b
    and b
    ret nz

    ret nc

jr_00E_4355:
    ldh [rBCPS], a
    ldh a, [$34]
    ld hl, sp+$1A

jr_00E_435B:
    db $FC
    dec c
    cp $06
    rst $38
    jr jr_00E_4369

    ccf
    nop
    nop
    nop
    rra
    nop
    rrca

jr_00E_4369:
    inc bc
    ld b, $01
    inc bc
    nop
    add c
    nop
    inc b
    ld hl, sp-$02
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $FF

jr_00E_437C:
    dec b
    cp $8A
    ld a, h
    inc bc
    nop
    ld [bc], a
    ld bc, $0305
    pop hl
    rlca
    ret


    add a
    add b
    rrca
    db $10
    rrca
    db $10
    rrca
    ld b, $01
    ld b, $01
    add [hl]
    ld bc, $830C
    ld hl, sp-$79
    or b
    rst $08
    rst $38
    ret nz

    ld b, a
    ldh [$0E], a
    db $FC
    ld c, $FC
    ld c, $FC
    ld c, $FC
    ld b, $FF
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_00E_437C

    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    cp a
    ld a, a
    ld l, a
    rra
    jr nc, jr_00E_43D9

    jr c, jr_00E_43DB

    jr c, @+$11

    ld hl, sp+$0F
    ld bc, $F800
    nop
    ret nc

    ldh [$60], a
    add b
    ret nz

jr_00E_43D9:
    nop
    pop bc

jr_00E_43DB:
    nop
    add $01
    ret


    rlca
    call c, $F33F
    rrca
    ccf
    nop
    rlca
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld c, $FF
    db $FC
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    rrca
    adc e
    rlca
    ld h, l
    add e
    sub d
    pop hl
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    cp $FB
    db $FC
    ld b, $F8
    adc h
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    add c
    nop
    ld [bc], a
    ld bc, $0305
    dec bc
    rlca
    rla
    rrca
    cpl
    rra
    ld e, b
    ccf
    or b
    ld a, a
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $FEFE
    rst $38
    ld a, [$0CFC]
    ldh a, [rNR23]

jr_00E_4437:
    ldh [$30], a
    ret nz

    ld h, b
    add b
    ret nz

    nop
    add b
    nop
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01

jr_00E_444C:
    ld b, $01
    ld b, $01
    inc bc
    rst $38
    ld bc, $00FF
    rst $38
    jr nz, jr_00E_4437

    db $10
    rst $28
    jr z, @-$27

    inc [hl]
    srl d
    push bc
    ld b, b
    add b
    and b
    ret nz

    ret nc

    ldh [rBCPS], a
    ldh a, [$34]
    ld hl, sp+$1A
    db $FC
    dec c
    cp $06
    rst $38
    call z, $CC38
    jr c, @-$32

    jr c, @-$32

    jr c, @-$32

    jr c, @-$32

    jr c, @-$32

    jr c, jr_00E_444C

    jr c, jr_00E_4485

    dec de
    ld h, $19
    dec bc

jr_00E_4485:
    jr nc, jr_00E_44D0

    jr nc, jr_00E_449A

    ld h, b
    sbc a
    ld a, a
    nop
    rst $38
    rra
    ldh [rPCM34], a
    db $E3
    dec h
    di
    inc a
    di
    dec d
    ld a, [$789F]

jr_00E_449A:
    adc d
    db $FC
    ld c, $FC
    call nz, $FF3E
    rst $38
    rst $38
    rst $38
    db $F4
    rrca
    ld a, [$0E07]
    inc bc
    ld c, $03
    ld c, $03
    ld c, $03
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $E1
    ccf
    ret nz

    ld sp, $30C0
    ret nz

    jr nc, @-$3E

    jr nc, @-$3E

    ld hl, sp-$71
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    cp b
    rrca
    cp b
    rrca

jr_00E_44CC:
    jr c, @+$11

    jr c, jr_00E_44DF

jr_00E_44D0:
    db $D3
    rrca
    or $0F
    push hl
    ld e, $EB
    inc e
    srl h
    srl h
    jp $C33C


jr_00E_44DF:
    inc a
    ld a, [hl]
    add c
    jp $8100


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ldh a, [$6D]
    ldh a, [$A5]
    ld a, b
    rst $10
    jr c, jr_00E_44CC

    inc a
    db $D3
    inc a
    jp $C33C


    inc a
    sbc b
    ldh [$98], a
    ldh [$98], a
    ldh [$98], a
    ldh [$99], a
    ldh [$9A], a
    pop hl

jr_00E_450C:
    sbc l
    db $E3

jr_00E_450E:
    sbc e
    rst $20

jr_00E_4510:
    ld d, $0F
    inc l
    rra
    ld e, b
    ccf
    or b
    ld a, a
    ld h, b
    rst $38
    ret nz

    rst $38
    add c
    cp $02
    db $FD
    inc bc
    db $FC
    inc bc
    db $FC
    inc bc
    db $FC
    inc hl
    call c, $BC43
    and e
    ld e, h
    ld h, e
    sbc h
    db $E3
    inc e
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    dec l
    jp nz, $C126

    inc hl
    ret nz

    ld hl, $20C0
    ret nz

    jr nz, jr_00E_450C

    jr nz, jr_00E_450E

    jr nz, jr_00E_4510

    inc bc
    rst $38
    add c
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ret nc

    cpl
    ld l, b
    rla
    inc [hl]
    dec bc
    ld a, [de]
    dec b
    call z, $CE39
    cp c

jr_00E_4564:
    call z, $0FBB
    ld hl, sp+$0C
    ld hl, sp+$0C
    ld hl, sp+$0C
    ld hl, sp+$0C
    ld hl, sp+$30
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$F8]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    rst $20
    ld e, $62
    rra
    inc sp
    rrca
    ld sp, $600F
    rra
    ret nz

    ccf
    rst $38
    nop
    nop
    nop
    ld c, $03
    ld c, $03
    adc [hl]
    inc bc
    ld c, [hl]
    add e
    ld l, $C3
    ld e, $E3
    cp $03
    ld c, $03
    jr nc, @-$3E

    jr nc, jr_00E_4564

    jr nc, @-$3E

    jr nc, @-$3E

    jr nc, @-$3E

jr_00E_45AA:
    jr nc, @-$3E

    jr nc, @-$3E

    jr nc, @-$3E

    jr c, jr_00E_45C1

    jr c, jr_00E_45C3

    jr c, jr_00E_45C5

    jr c, jr_00E_45C7

    jr c, jr_00E_45C9

    jr c, @+$11

    jr c, jr_00E_45CD

    jr c, jr_00E_45CF

    db $E3

jr_00E_45C1:
    inc e
    db $E3

jr_00E_45C3:
    inc e
    pop hl

jr_00E_45C5:
    ld e, $F1

jr_00E_45C7:
    ld c, $DA

jr_00E_45C9:
    rlca
    call $C703

jr_00E_45CD:
    nop
    pop bc

jr_00E_45CF:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp $FF00


    add c
    ld a, [hl]
    rst $38
    rst $38
    nop
    rst $00
    jr c, jr_00E_45AA

    jr c, @-$79

    ld a, b
    adc l
    ld [hl], b
    ld e, c
    ldh [$B1], a
    ret nz

    pop hl
    nop
    add c
    nop
    sbc [hl]
    rst $20

jr_00E_45F2:
    sbc h
    rst $28

jr_00E_45F4:
    sbc b
    rst $28

jr_00E_45F6:
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $82
    db $FD
    dec b
    ld a, [$F40B]
    ld d, $E8
    inc l
    ret nc

    ld e, b
    and b
    or b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    and e
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    ld b, $01
    ld b, $01
    ld c, $01
    ld a, [de]
    dec b
    jr nc, jr_00E_4639

    ld h, b
    rra
    rst $38
    nop
    nop
    nop
    jr nz, jr_00E_45F2

jr_00E_4632:
    jr nz, jr_00E_45F4

jr_00E_4634:
    jr nz, jr_00E_45F6

    db $10
    ldh [$08], a

jr_00E_4639:
    ldh a, [rDIV]
    ld hl, sp-$02
    nop
    nop
    nop

Call_00E_4640:
    dec c
    ld [bc], a
    ld b, $01
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
    inc c
    ld hl, sp-$74
    ld a, b
    ld c, h
    cp b
    xor h

Jump_00E_4657:
    ld e, b
    call c, Call_00E_6C28
    jr jr_00E_4699

    ld [$0814], sp
    ld c, $03
    ld c, $03
    ld c, $03
    ld a, [de]
    rlca
    inc [hl]
    rrca
    ld a, a
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00E_4632

    jr nc, jr_00E_4634

    ld sp, $18C0
    ldh [$0C], a
    ldh a, [$FE]
    nop
    nop
    nop
    nop
    nop
    ld l, b
    rra
    sub b
    ld a, a
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
    ld h, b
    add b
    db $10
    ldh [$F8], a
    nop
    nop
    nop
    nop

jr_00E_4699:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop

jr_00E_46AC:
    ld bc, $0100
    nop
    add l
    ld a, [$F48B]
    sub [hl]
    add sp, -$54
    ret nc

    ret c

    and b
    or b
    ret nz

    ldh [$80], a
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
    ld bc, $0300
    nop
    nop
    nop
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    ld b, d
    dec a
    add b
    ld a, a
    nop
    rst $38
    rst $38
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
    ld h, b
    add b
    jr nc, jr_00E_46AC

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $00
    ld c, l
    nop
    ld c, d
    nop
    ld c, b
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
    add b
    nop
    add b
    nop
    nop
    or e
    ld sp, $01C7
    sub a
    ld [hl+], a
    jr nz, jr_00E_4781

    ld e, b
    ld a, b
    inc d
    ld l, b
    ld d, c
    ld c, a
    inc de
    adc b
    inc b
    inc bc
    ld [hl], e
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld e, l
    ld c, $9E
    ld b, a
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e

jr_00E_4745:
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld e, l
    add hl, de
    rst $20
    ld b, [hl]
    and [hl]
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    jr nz, jr_00E_47CE

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00E_47CA

    ld h, l
    ld [hl], e
    ld l, $FF
    jr nz, jr_00E_47C5

    ld l, a
    ld l, $FD
    and e
    ld [bc], a
    ld c, $82
    ld b, a
    ld c, $92

jr_00E_4781:
    ld b, a
    or e
    ld [hl], $A1
    inc b
    and c
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00E_479D

    ld c, b
    ld a, [de]
    add l
    ld c, d
    and c
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    jr nz, jr_00E_47A9

    ld c, b
    jr jr_00E_4745

jr_00E_479D:
    ld e, l
    add a
    ld bc, $0100
    nop
    add a
    ld [bc], a
    nop
    nop
    nop
    ld c, b

jr_00E_47A9:
    ld c, $9E
    ld b, a
    ld [hl+], a
    inc d
    or e

jr_00E_47AF:
    ld [hl-], a
    and c
    nop
    sub a
    or e
    ld sp, $01C7
    or e
    inc sp
    rst $00
    ld bc, $31B3
    rst $00
    ld bc, $5869
    ld a, b
    inc d
    ld l, b
    dec d

jr_00E_47C5:
    ld c, a
    inc de
    ld h, a
    ld d, [hl]
    ld b, c

jr_00E_47CA:
    dec b
    nop
    inc [hl]
    ld h, e

jr_00E_47CE:
    add hl, bc
    inc c
    adc l
    ret nc

    nop
    inc d
    ld d, a
    ld e, [hl]
    add hl, de
    add sp, $46
    dec b
    add hl, bc
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    nop
    ld c, $B8
    ld c, b
    add hl, de
    rst $20
    ld b, [hl]
    dec b
    ld a, [bc]

jr_00E_47EA:
    ld hl, sp+$4A
    nop
    nop

jr_00E_47EE:
    nop
    ret nc

    ld [de], a
    ld c, $D1
    ld c, d
    add hl, de
    rst $20

jr_00E_47F6:
    ld b, [hl]
    dec b
    ld [de], a
    dec d
    ld [hl], c
    inc bc
    inc c
    add a
    ret nc

    db $10
    ld de, $75EA
    add hl, de
    rst $20
    ld b, [hl]
    ld d, e
    call $96C2
    inc hl
    dec d
    ld c, $53
    ld c, c
    ld l, [hl]
    inc c
    inc c
    nop
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    inc b
    add hl, de
    jr nc, jr_00E_485F

    ret nz

    add b
    nop
    ld l, [hl]
    ld [bc], a
    add hl, de
    ld [hl], b
    ld b, e
    nop
    add c
    nop
    ld l, [hl]
    inc bc
    dec c
    and b
    ld b, e
    jr nz, jr_00E_47AF

    nop
    ld l, [hl]
    dec b
    add hl, de
    sub b
    ld b, e
    ld d, b
    add c
    nop
    adc b
    inc b
    inc c
    sbc b
    or e
    daa
    and d
    dec b
    or l
    dec hl
    and b
    ei
    or l
    ld a, [hl+]
    and b
    rst $30
    or l
    jr z, jr_00E_47EA

    cp $B5
    jr z, jr_00E_47EE

    db $FD
    or l
    jr z, @-$5E

    ei
    or l
    jr z, jr_00E_47F6

    rst $30
    and [hl]
    ld b, a
    ld [hl], l
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$76

jr_00E_485F:
    ld l, b
    ld h, l
    rst $38
    ld d, h
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld [hl], h
    jr nz, jr_00E_48DE

    ld l, a
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00E_48D6

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    rst $38
    ld [hl], b
    ld h, l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h
    ld [hl], e
    cp $62
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_4900

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    jr nz, jr_00E_48FE

    ld [hl], l
    ld [hl], h
    cp $6F
    ld h, [hl]
    jr nz, @+$67

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    ld l, $FE
    ld d, d
    ld b, l
    ld b, c
    ld b, h
    ld e, c
    cp $53
    ld b, l
    ld d, h
    cp $47
    ld c, a
    ld hl, $FDFF
    and c
    dec bc
    nop
    dec bc
    ld [de], a
    dec bc
    ld a, [bc]
    dec bc
    inc c
    dec bc
    add hl, bc
    ld b, l
    ld b, e
    ld [bc], a
    ld c, [hl]
    inc bc
    ld c, $02
    nop
    sbc $48
    ld c, $01
    nop
    push de
    ld c, b
    ld c, $00
    nop
    rst $20
    ld c, b
    ld c, $03
    nop
    ldh a, [rOBP0]
    rst $38
    ld c, b
    ld c, $B8
    ld c, b
    add hl, bc

jr_00E_48D6:
    ld [de], a
    ld de, $75CC
    ld c, b
    ld c, $B8
    ld c, b

jr_00E_48DE:
    add hl, bc
    ld [de], a
    ld de, $75D6
    ld c, b
    ld c, $B8
    ld c, b
    add hl, bc
    ld [de], a
    ld de, $75C2
    ld c, b
    ld c, $B8
    ld c, b
    add hl, bc
    ld [de], a
    ld de, $75E0
    ld c, b
    ld c, $B8
    ld c, b
    dec d
    ld de, $74C0
    ld b, b

jr_00E_48FE:
    add hl, de
    rst $20

jr_00E_4900:
    ld b, [hl]
    nop
    nop
    rla
    nop
    nop
    nop
    nop
    nop
    ret nc

    ld b, l
    ld c, e
    ld e, $1F
    rla
    nop
    nop
    nop
    nop
    nop
    ret nc

    inc d
    add hl, de
    rst $20
    ld b, [hl]
    inc de
    ld hl, sp+$4A
    xor l
    ld [hl-], a
    and c
    dec bc
    ld bc, $A132
    dec b
    ld bc, $1146
    ld bc, $A132
    dec b
    cp $0E
    ld l, a
    ld c, d
    add hl, bc
    inc c
    add hl, de
    rst $20
    ld b, [hl]
    ld c, e
    add hl, bc
    inc c
    ld c, $53
    ld c, c
    ld e, l
    ld c, $3F
    ld c, c
    ld b, l
    inc c
    ld a, [bc]
    dec b
    ld a, [bc]
    ld hl, sp+$4A
    nop
    nop
    nop
    ret nc

    ld [de], a
    ld c, $D1
    ld c, d
    add hl, de
    rst $20
    ld b, [hl]
    dec bc
    ld a, [bc]
    ld b, l
    dec d
    ld de, $5A35
    jr nz, jr_00E_496A

    ld hl, $205A
    ld de, $5A17
    jr nz, jr_00E_4972

    dec c
    ld e, d
    jr nz, jr_00E_4976

    inc bc
    ld e, d
    jr nz, jr_00E_497A

    ld sp, hl

jr_00E_496A:
    ld e, c
    jr nz, jr_00E_497E

    rst $28
    ld e, c
    jr nz, jr_00E_4982

    push hl

jr_00E_4972:
    ld e, c
    jr nz, jr_00E_4986

    db $DB

jr_00E_4976:
    ld e, c
    jr nz, jr_00E_498A

    pop de

jr_00E_497A:
    ld e, c
    jr nz, jr_00E_498E

    rst $00

jr_00E_497E:
    ld e, c
    jr nz, jr_00E_4992

    cp l

jr_00E_4982:
    ld e, c
    jr nz, jr_00E_4996

    or e

jr_00E_4986:
    ld e, c
    nop
    nop
    ld e, [hl]

jr_00E_498A:
    ld c, $8E
    ld c, c
    ld b, l

jr_00E_498E:
    inc c
    nop
    inc c
    inc bc

jr_00E_4992:
    inc c
    inc b
    inc c
    dec b

jr_00E_4996:
    inc c
    ld b, $0C
    ld a, [bc]
    inc c
    ld [de], a
    inc c
    inc c
    sbc a
    ld [hl-], a
    and c
    and [hl]
    ld d, h
    ld l, c
    ld l, l
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_49FF

    ld d, b
    ld hl, $FE21
    ld e, c
    ld l, a
    ld [hl], l

jr_00E_49B1:
    jr nz, jr_00E_4A16

    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    rst $38
    db $FC
    jr nz, jr_00E_4A04

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    ld l, $FE
    db $FD
    ld b, [hl]
    rrca
    ld bc, $A191
    dec b
    nop
    ld c, $62
    ld c, d
    ld b, [hl]
    ld de, $3201
    and c
    ld bc, $A191
    ld c, $0A
    ld c, d
    sbc a
    sub c
    and c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00E_4A48

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
    jr nz, jr_00E_4A45

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_4A61

    ld [hl], e
    cp $FC
    jr nz, jr_00E_4A42

    ld l, [hl]
    ld h, l

jr_00E_49FF:
    ld [hl], d
    ld h, a
    ld a, c
    ld l, $FE

jr_00E_4A04:
    db $FD
    and c
    ld c, b
    jr jr_00E_49B1

    ld e, l
    sbc a
    sub c
    and c
    and [hl]
    rst $38
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$66

    ld l, a

jr_00E_4A16:
    ld l, [hl]
    ld h, l
    ld hl, $FF21
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00E_4A88

    ld h, c
    halt
    ld h, l
    jr nz, @+$75

    ld h, l
    ld [hl], h
    jr nz, @+$63

    cp $6E
    ld h, l
    ld [hl], a
    jr nz, jr_00E_4A77

    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00E_4A87

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $54FE
    ld l, b
    ld h, l
    jr nz, jr_00E_4AAF

    ld [hl], d
    ld h, l
    halt

jr_00E_4A42:
    ld l, c
    ld l, a
    ld [hl], l

jr_00E_4A45:
    ld [hl], e
    rst $38
    ld c, b

jr_00E_4A48:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_00E_4AA0

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_4ACA

    ld h, c
    ld [hl], e
    cp $FC
    jr nz, jr_00E_4A9E

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    ld l, $FE
    db $FD

jr_00E_4A61:
    and c
    xor l
    sub c
    and c
    ld bc, $A132
    and c
    sub [hl]
    ld bc, $1848
    xor b
    ld e, l
    inc c
    nop
    inc c
    inc bc
    inc c
    inc b
    inc c
    dec b

jr_00E_4A77:
    inc c
    ld b, $0C
    ld a, [bc]
    inc c
    ld [de], a
    inc c
    inc c
    ld e, l
    ld c, $99
    ld c, d
    ld e, [hl]
    ld c, $A9
    ld c, d

jr_00E_4A87:
    ld h, l

jr_00E_4A88:
    ld bc, $0F72
    rst $38
    ld a, a
    ld a, d
    and b
    rrca
    ld bc, $0606
    sub [hl]
    ld bc, $1448
    jr @+$7B

    ld e, $0F
    add a
    ld [bc], a
    ld [bc], a

jr_00E_4A9E:
    ld [bc], a
    nop

jr_00E_4AA0:
    add a
    ld [bc], a
    cp $FE
    nop
    ld c, b
    ld c, $9B
    ld c, d
    and [hl]
    ld b, l
    ld c, [hl]
    ld b, l
    ld d, d
    ld b, a

jr_00E_4AAF:
    ld e, c
    rst $38
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    ld c, h
    ld c, a
    ld b, c
    ld b, h
    ld hl, $2121
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0345
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop

jr_00E_4ACA:
    db $FD
    add hl, bc
    ld a, [bc]
    ld c, $0B
    ld c, c
    ld b, l
    ld c, d
    ld a, [bc]
    ld c, $F1
    ld c, d
    ld c, $FB
    ld c, d
    ld c, $05
    ld c, e
    ld c, $0F
    ld c, e
    ld c, $19
    ld c, e
    ld c, $23
    ld c, e
    ld c, $2D
    ld c, e
    ld c, $37
    ld c, e
    ld c, $41
    ld c, e
    ld c, $4B
    ld c, e
    rla
    ld [$0508], sp
    ld c, $9F
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0208], sp
    ld c, $9C
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0608], sp
    ld [$D05E], sp
    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0108], sp
    ld [$D059], sp
    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0508], sp
    ld a, [bc]
    ld [hl], e
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0308], sp
    inc c
    add a
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0608], sp
    rrca
    xor e
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0108], sp
    rrca
    and [hl]
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0508], sp
    dec c
    sub h
    ret nc

    ld c, c
    ld d, l
    ld c, e
    rla
    ld [$0308], sp
    add hl, bc
    ld h, [hl]
    ret nc

    ld c, c
    ld d, l
    ld c, e
    dec c
    nop
    nop
    nop
    nop
    pop bc
    db $FD
    dec d
    ld de, $72FB
    ld b, b
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    db $FD
    rla
    nop
    nop
    nop
    nop
    nop
    ret nc

    dec d
    add hl, de
    rst $20
    ld b, [hl]
    jr nz, jr_00E_4B76

jr_00E_4B76:
    ld c, b
    ld c, $D1
    ld c, d
    daa
    ld [$B397], sp
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
    rst $30
    ld c, [hl]
    inc de
    ld h, a
    ld e, e
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld b, $06
    inc d

jr_00E_4B9B:
    pop de
    nop
    inc d
    ld d, a
    ld e, [hl]

jr_00E_4BA0:
    add hl, de
    add sp, $46
    dec bc
    nop
    add [hl]
    sbc b
    ld b, l
    ld c, b
    rrca
    pop de
    ld l, c
    ld c, b
    rrca
    ld h, a
    ld l, l
    ld c, b
    rrca
    ld [$4871], sp
    rrca
    bit 6, h
    ld c, b
    rrca
    ld e, b
    ld a, d
    ld c, b
    dec d
    sbc a
    ld b, b
    ld c, b
    dec d
    rst $38
    ld b, h
    ld c, b
    dec d
    ld de, $484A
    dec d
    and a
    ld c, [hl]
    ld c, b
    dec d
    cp e
    ld d, [hl]
    ld c, b
    jr jr_00E_4BE1

    ld l, c
    ld c, b
    jr jr_00E_4BA0

jr_00E_4BD7:
    ld l, l
    ld c, b
    jr jr_00E_4C34

    ld [hl], h
    ld c, b
    jr jr_00E_4B9B

    ld a, c
    ld c, b

jr_00E_4BE1:
    jr jr_00E_4BD7

    ld h, e
    ld c, b
    rla
    ld b, c
    ld b, c
    ld c, b
    rla
    sbc e
    ld b, a
    ld c, b
    rla
    ld h, [hl]
    ld c, l
    ld c, b
    rla
    ld d, e
    ld d, d
    ld c, b
    rla
    ld c, [hl]
    ld d, a
    ld c, b
    ld [de], a
    cp e
    ld b, b
    ld c, b
    ld [de], a
    ld [hl], d
    ld b, e
    ld c, b
    ld [de], a
    rra
    ld b, a
    ld c, b
    ld [de], a
    sub a
    ld c, d
    ld c, b
    ld [de], a
    sbc $4F
    ld c, b
    ld a, [bc]
    ld h, a
    ld e, e
    ld c, b
    ld a, [bc]
    or h
    ld e, [hl]
    ld c, b
    ld a, [bc]
    dec d
    ld h, h
    ld c, b
    ld a, [bc]
    and b
    ld h, a
    ld c, b
    ld a, [bc]
    dec hl
    ld l, e
    ld c, b
    ld a, [bc]
    and c
    ld b, b
    ld c, b
    ld a, [bc]
    adc h
    ld c, e
    ld c, b
    ld a, [bc]
    ld h, a
    ld b, h
    ld c, b
    ld a, [bc]
    dec h

jr_00E_4C2F:
    ld c, b
    ld c, b
    ld a, [bc]
    or d
    ld d, c

jr_00E_4C34:
    ld c, b
    inc c
    scf
    ld c, e
    ld c, b
    inc c
    nop
    ld d, c
    ld c, b
    inc c
    reti


    ld e, d
    ld c, b
    inc c
    ld b, $5F
    ld c, b
    inc c
    ld a, [hl-]
    ld h, [hl]
    ld c, b
    rla
    pop af
    ld e, h
    ld c, b
    rla
    ld [hl+], a
    ld h, l
    ld c, b
    rla
    ld d, $6B
    ld c, b
    rla
    rst $10
    ld [hl], c
    ld c, b
    db $10
    inc a
    ld l, e
    ld c, b
    dec d
    xor $5E
    ld c, b
    dec d
    ld a, $62
    ld c, b
    dec d
    halt
    ld h, l
    ld c, b
    dec d
    rrca
    ld l, c
    ld c, b
    dec d
    sub a
    ld l, l
    ld c, b
    ld d, $9D
    ld b, b
    ld c, b
    ld d, $59
    ld b, a
    ld c, b
    ld d, $F1
    ld d, b
    ld c, b
    ld d, $28
    ld d, a
    ld c, b
    ld d, $9D
    ld h, b
    ld c, b
    jr jr_00E_4C2F

    ld e, l
    ld b, l
    ld e, $1F
    or [hl]
    dec hl
    and b
    inc b
    ld e, h
    ld c, $94
    ld c, h
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
    jr nz, jr_00E_4CEA

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00E_4CFB

    ld l, a
    ld l, $FF
    jr nz, @+$5B

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld c, $F7
    ld c, h
    ld c, $BE
    ld c, h
    sbc d
    ld c, $E8
    ld c, l
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_00E_4D1F

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_00E_4D46

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld c, $ED
    ld c, h
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00E_4D18

    ld l, $FE
    db $FD
    ld c, b

jr_00E_4CEA:
    ld c, $F7
    ld c, h
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00E_4D25

    ld l, $FE
    db $FD
    and c
    sbc e
    ld c, $89

jr_00E_4CFB:
    ld c, h
    or e
    ld sp, $00C7
    or l
    dec hl
    and b
    ei
    ld b, l
    sub a
    ld [hl+], a
    daa
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

jr_00E_4D18:
    ld l, b
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b

jr_00E_4D1F:
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c

jr_00E_4D25:
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    inc [hl]
    ld h, e
    ld c, $21
    db $EC
    db $D3
    nop
    inc d
    cp a
    ld e, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [$1609], sp
    pop de
    nop
    ld c, $69
    ld c, l
    ld c, $66

jr_00E_4D46:
    ld e, d
    ld l, [hl]
    jr nc, jr_00E_4D57

    ret nc

    ld b, e
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

jr_00E_4D57:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    or e
    ld sp, $00C7
    sbc e
    ld c, $89
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, [hl]
    and b
    db $10
    add hl, de
    db $10
    ld b, a
    inc d
    dec d
    sub [hl]
    ld a, b
    ld b, l
    ld [hl+], a
    daa
    sub a
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
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    ld d, $27
    xor b
    call nc, $0E00
    rst $10
    ld c, l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [$1609], sp
    pop de
    nop
    ld c, $69
    ld c, l
    ld c, $66
    ld e, d
    ld l, [hl]
    jr nc, jr_00E_4DC8

    ret nc

    ld b, e
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

jr_00E_4DC8:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld c, $89
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_00E_4DDD

jr_00E_4DDD:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    daa
    sub a
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
    inc sp

jr_00E_4DFD:
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    nop
    rlca
    jp nc, $00D0

    ld c, $48
    ld c, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld [$1609], sp
    pop de
    nop
    ld c, $69
    ld c, l
    ld c, $66
    ld e, d
    ld l, [hl]
    jr nc, jr_00E_4E3A

    ret nc

    ld b, e
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

jr_00E_4E3A:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld c, $89
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    sbc l
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
    jr c, jr_00E_4DFD

    dec bc
    ld bc, $A138
    dec b
    ld bc, $35B3
    and c
    dec b
    ld c, [hl]
    ld bc, $A136
    ld c, $00
    nop
    adc l
    ld c, [hl]
    ld c, $01
    nop
    sub c
    ld c, [hl]
    ld c, $02
    nop
    and [hl]
    ld c, [hl]
    ld c, $03
    nop
    cp e
    ld c, [hl]
    ld c, $04
    nop
    cp e
    ld c, [hl]
    ld c, $05
    nop
    cp e
    ld c, [hl]
    rst $38
    ld c, b
    ld c, $BB
    ld c, [hl]
    or e
    ld [hl], $A1
    ld bc, $B397
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop
    or e
    ld sp, $01C7
    ld l, b
    ld b, d
    ld c, a
    inc de
    ld c, b
    dec bc
    jr c, jr_00E_4F12

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
    ld b, d
    ld c, a
    inc de
    ld c, b
    dec bc
    jr nc, jr_00E_4F28

    ld bc, $0116
    ld c, b
    ld c, $76
    ld c, l
    ld [hl+], a
    daa
    sub a
    sbc e
    ld c, $89
    ld c, h
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
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    ld de, $8715
    jp nc, $0E00

    jr nz, jr_00E_4F45

    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc de
    rla
    push bc
    jp nc, $0E00

    ld d, [hl]
    ld c, a
    ld c, $6D
    ld c, a
    ld l, [hl]
    jr nc, jr_00E_4F18

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    nop

jr_00E_4F12:
    dec bc
    ld [bc], a
    adc b
    ld [de], a
    rla
    ld [hl], e

jr_00E_4F18:
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
    jr nz, jr_00E_4F3C

jr_00E_4F28:
    or l
    ld e, l
    jr nz, jr_00E_4F2C

jr_00E_4F2C:
    or e
    dec [hl]
    and c
    dec b
    ld e, [hl]
    ld c, $A5
    ld c, a
    ld h, e
    ld bc, $1414
    db $DD
    ld e, l
    add b
    db $10

jr_00E_4F3C:
    inc c
    ld bc, $3043
    ld e, c
    ld [bc], a
    inc d
    inc d
    sub a

jr_00E_4F45:
    ld e, l
    add b
    ld d, $05
    ld bc, $3043
    add c
    adc c
    pop bc
    inc b
    ld e, a
    nop
    ld [bc], a
    ld e, c
    inc bc
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, e
    ld bc, $1514
    adc h
    ld a, b
    ld h, e
    ld [bc], a
    inc d
    dec d
    ld e, d
    ld a, b
    ld h, e
    inc bc
    inc d
    dec d
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld c, $79
    ld c, a
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00E_4FBF

    and [hl]
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_00E_4FFB

    ld h, c
    ld a, c
    jr nz, jr_00E_4FFC

    ld l, a
    rst $38
    ld h, a
    ld l, a
    ccf
    ccf
    jr nz, jr_00E_4FE9

    ld c, a
    ld d, l
    jr nz, jr_00E_4FE1

    ld d, l
    ld d, e
    ld d, h
    cp $44
    ld b, l
    ld b, e
    ld c, c
    ld b, h
    ld b, l
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $AD45
    ld a, [hl-]
    and c
    dec bc
    ld bc, $A13A
    dec b
    ld bc, $28A2
    ld b, e
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld hl, $5920
    ld l, a
    ld [hl], l
    rst $38
    ld l, d

jr_00E_4FBF:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_00E_502C

    ld l, [hl]
    cp $65
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_00E_5041

    ld h, c
    ld a, d
    ld h, l
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, d
    ld h, l
    ld h, c

jr_00E_4FE1:
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_00E_505D

    ld l, b
    ld h, l
    ld [hl], d

jr_00E_4FE9:
    ld h, l
    jr nz, jr_00E_5055

    ld [hl], e
    rst $38
    ld l, c
    ld [hl], h
    ccf
    cp $FD
    and d
    jr z, jr_00E_5039

    ld e, c
    ld bc, $54A6
    ld l, b

jr_00E_4FFB:
    ld h, l

jr_00E_4FFC:
    jr nz, jr_00E_506D

    ld l, [hl]
    ld h, l
    jr nz, jr_00E_5065

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    rst $38
    ld h, d
    ld a, c
    jr nz, jr_00E_5074

    ld [hl], e
    jr nz, jr_00E_5082

    ld l, b
    ld h, l
    cp $6E
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_00E_507E

    ld a, b
    ld l, c
    ld [hl], h
    inc l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00E_5092

    ld l, [hl]
    ld h, l
    jr nz, jr_00E_509E

    ld h, c
    ld a, c
    jr nz, jr_00E_50A0

    ld [hl], b

jr_00E_502C:
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_509D

    ld [hl], e
    jr nz, jr_00E_50AB

    ld l, b
    ld h, l

jr_00E_5039:
    rst $38
    ld h, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, @+$71

jr_00E_5041:
    ld l, [hl]
    ld h, l
    ld l, $FE
    ld c, c
    ld h, [hl]
    jr nz, jr_00E_50C2

    ld l, a
    ld [hl], l
    jr nz, jr_00E_50C4

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    rst $38
    ld h, h

jr_00E_5055:
    ld l, a
    jr nz, jr_00E_50CC

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_50C2

jr_00E_505D:
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    cp $6F
    ld l, [hl]
    ld h, l

jr_00E_5065:
    inc l
    jr nz, jr_00E_50E1

    ld l, a
    ld [hl], l
    jr nz, jr_00E_50CE

    ld h, l

jr_00E_506D:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    rst $38
    ld h, h
    ld l, a

jr_00E_5074:
    jr nz, jr_00E_50DF

    ld [hl], h
    jr nz, jr_00E_50DF

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l

jr_00E_507E:
    cp $62
    ld h, l
    ld h, e

jr_00E_5082:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_00E_50D1

    jr nz, @+$63

    ld l, l
    rst $38
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]

jr_00E_5092:
    daa
    jr nz, jr_00E_5109

    ld l, a
    cp $67
    ld h, l
    ld [hl], h
    jr nz, jr_00E_510B

    ld [hl], l

jr_00E_509D:
    ld [hl], h

jr_00E_509E:
    jr nz, jr_00E_510F

jr_00E_50A0:
    ld h, [hl]
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    and c
    ld e, a

jr_00E_50AB:
    nop
    ld [bc], a
    ld e, l
    add hl, de
    ldh a, [rDMA]
    or e
    ld sp, $00C7
    ld c, b
    add hl, de
    bit 6, b
    ld [hl+], a
    daa
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp

jr_00E_50C2:
    rst $00
    nop

jr_00E_50C4:
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d

jr_00E_50CC:
    ld l, b
    inc sp

jr_00E_50CE:
    ld c, a
    inc de
    ld h, a

jr_00E_50D1:
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop

jr_00E_50DF:
    ld hl, sp+$4A

jr_00E_50E1:
    ld d, $00
    ld d, $D0
    nop
    ld c, $13
    ld d, c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    jr jr_00E_50F5

    ld [hl], d
    ret nc

    nop

jr_00E_50F5:
    ld c, $24
    ld d, c
    ld c, $29
    ld d, c
    ld l, [hl]
    jr nc, jr_00E_510B

    ret nc

    ld b, e
    nop
    add b
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    rla

jr_00E_5109:
    inc bc
    ld [hl], e

jr_00E_510B:
    rrca
    rst $38
    ld a, a
    sbc b

jr_00E_510F:
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
    jr nc, @+$16

    or l
    ld e, l
    jr nz, jr_00E_511F

jr_00E_511F:
    ld e, [hl]
    dec bc
    ld d, a
    ld l, h
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld c, $35
    ld d, c
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00E_517B

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld c, a
    ld hl, $5020
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    rst $38
    ld h, d
    ld [hl], d
    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_51C1

    ld l, a
    cp $76
    ld l, a
    ld l, h
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], d
    jr nz, jr_00E_51CE

    ld l, a
    rst $38
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_00E_51D1

    ld l, [hl]
    jr nz, jr_00E_51B0

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_51C8

    ld h, l
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    daa
    or [hl]
    ld b, [hl]

jr_00E_517B:
    and b
    db $10
    ld b, [hl]
    ld [$0F08], sp
    ld bc, $A136
    dec b
    ld [bc], a
    rrca
    ld bc, $A138
    dec b
    dec b
    rrca
    ld bc, $A139
    dec b
    dec b
    ld c, $DC
    ld d, d
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    ld [bc], a
    ld c, $49

jr_00E_519E:
    ld d, h
    sub a
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

jr_00E_51B0:
    ld l, b
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b

jr_00E_51C1:
    dec b
    nop
    ld hl, sp+$4A
    db $10
    dec bc
    ld e, d

jr_00E_51C8:
    pop de
    nop
    ld c, $25
    ld d, d
    add hl, de

jr_00E_51CE:
    add sp, $46
    dec b

jr_00E_51D1:
    ld [bc], a
    ld hl, sp+$4A
    inc d
    ld c, $B8
    pop de
    nop
    ld c, $7C
    ld d, d
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc d
    inc c
    ld a, h
    pop de
    and e
    ld c, $B5
    ld d, d
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec e
    inc c
    add l
    pop de
    ld e, e
    ld c, $CE
    ld d, d
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_520D

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    ld c, b
    dec c
    ret nz

    ld h, d
    or b
    add l
    nop

jr_00E_520D:
    ld l, [hl]
    ld c, b
    dec c
    ld b, b
    ld h, a
    jr nc, jr_00E_519E

    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    inc de
    ld c, $73
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, @+$17

    inc d
    ld c, l
    ld e, h
    jr nc, jr_00E_5241

    adc l
    ld e, h
    jr nz, jr_00E_5245

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $FD
    ld h, b
    ld h, l
    ld a, [de]
    ld e, [hl]
    ld c, $23
    ld h, c
    ld h, l
    dec de

jr_00E_5241:
    inc d
    inc d
    ret


    ld e, l

jr_00E_5245:
    ld e, [hl]
    ld c, $4C
    ld h, c
    ld h, l
    inc e
    ld e, [hl]
    ld c, $B6
    ld h, c
    ld h, l
    dec e
    inc d
    inc d
    or l
    ld e, l
    ld e, [hl]
    ld c, $13
    ld h, d
    ld h, l
    ld hl, $1416
    ld c, l
    ld e, h
    stop
    ld bc, $8D14
    ld e, h
    ld b, b
    ld bc, $1400
    ret


    ld e, l
    jr nz, jr_00E_526D

jr_00E_526D:
    nop
    nop
    ld e, [hl]
    ld c, $D3
    ld h, d
    ld h, l
    ld [hl+], a
    ld b, e
    ld h, b
    inc d
    inc d
    db $D3
    ld e, l
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld e, $14
    dec d
    sub [hl]
    ld a, b
    ld e, [hl]
    ld c, $56
    ld h, d
    ld h, l
    rra
    ld e, [hl]
    ld c, $76
    ld h, d
    ld h, l
    jr nz, jr_00E_52A7

    dec d
    ld l, [hl]
    ld a, b
    ld e, [hl]
    ld c, $9A
    ld h, d
    ld h, l
    ld hl, $2043
    dec d
    dec d
    ld a, [bc]
    ld a, b
    jr nz, jr_00E_52B9

    and b
    ld a, b
    nop

jr_00E_52A7:
    nop
    ld h, l
    ld [hl+], a
    ld b, e
    jr nc, jr_00E_52B8

    inc b
    ld b, e
    jr nc, jr_00E_52C5

    dec d
    add d
    ld a, b
    ld b, l
    dec d
    inc de
    xor a

jr_00E_52B8:
    ld a, d

jr_00E_52B9:
    stop
    ld e, [hl]
    ld c, $F8
    ld h, d
    ld h, l
    inc hl
    ld b, e
    jr nz, jr_00E_5336

    rrca

jr_00E_52C5:
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    add hl, bc
    adc d
    ld l, a
    dec d
    inc de
    ld e, l
    ld a, c
    ld c, b
    inc de
    sbc $79
    stop
    dec bc
    inc bc
    add hl, de
    ld b, l
    ld [hl+], a

jr_00E_52DD:
    daa
    sub a
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
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    db $10
    dec bc
    ld e, d
    pop de
    nop
    ld c, $64
    ld d, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc d
    ld c, $B8
    pop de
    nop
    ld c, $9B
    ld d, e
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc d
    inc c
    ld a, h
    pop de
    and e
    ld c, $B8
    ld d, e
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec e
    inc c
    add l
    pop de
    ld e, e

jr_00E_5336:
    ld c, $D2
    ld d, e
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_534C

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    ld c, b
    dec c
    ret nz

    ld h, d
    or b
    add l
    nop

jr_00E_534C:
    ld l, [hl]
    ld c, b
    dec c
    ld b, b
    ld h, a
    jr nc, jr_00E_52DD

    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    inc de
    ld c, $73
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, jr_00E_537C

    inc d
    ld c, l
    ld e, h
    jr nc, jr_00E_5380

    adc l
    ld e, h
    jr nz, jr_00E_5384

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $E0
    ld d, e
    ld h, l
    ld bc, $1416

jr_00E_537C:
    ld c, l
    ld e, h
    stop

jr_00E_5380:
    ld bc, $8D14
    ld e, h

jr_00E_5384:
    ld b, b
    ld bc, $1400
    ret


    ld e, l
    jr nz, jr_00E_538C

jr_00E_538C:
    nop
    nop
    ld e, [hl]
    ld c, $D3
    ld h, d
    ld h, l
    ld [hl+], a
    ld b, e
    ld h, b
    inc d
    inc d
    db $D3
    ld e, l
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $1515
    ld a, [bc]
    ld a, b
    jr nz, jr_00E_53BC

    and b
    ld a, b
    nop
    nop
    ld h, l
    ld [hl+], a
    ld b, e
    jr nc, jr_00E_53BB

    inc b
    ld b, e
    jr nc, jr_00E_53C8

    dec d
    add d
    ld a, b
    ld b, l
    dec d
    inc de
    xor a

jr_00E_53BB:
    ld a, d

jr_00E_53BC:
    stop
    ld e, [hl]
    ld c, $F8
    ld h, d
    ld h, l
    inc hl
    ld b, e
    jr nz, jr_00E_5439

    rrca

jr_00E_53C8:
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    db $10
    halt
    ld d, [hl]
    ld b, l
    dec d
    inc de
    ld e, l
    ld a, c
    ld c, b
    inc de
    sbc $79
    stop
    dec bc
    inc bc
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_5461

    ld h, c
    ld [hl], e
    jr nz, jr_00E_5454

    ld [hl], l
    ld l, [hl]
    ld hl, $4920
    rst $38
    ld l, h
    ld l, a
    halt
    ld h, l
    jr nz, jr_00E_5460

    ld l, h
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and d
    jr z, @+$45

    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_00E_5481

    ld l, a
    jr nz, @+$69

    ld l, a
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld l, a
    ld l, l
    ld h, l
    ccf
    jr nz, jr_00E_546E

    ld l, b
    inc l
    jr nz, jr_00E_549C

    ld h, l
    ld [hl], e
    ld hl, $FDFE
    and d
    jr z, jr_00E_546E

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00E_54A1

    ld l, a
    ld [hl], h
    jr nz, @+$73

    ld [hl], l
    ld l, c

jr_00E_5439:
    ld [hl], h
    ld h, l
    rst $38
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $2245

jr_00E_544A:
    daa
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop

jr_00E_5454:
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    inc sp
    ld c, a
    inc de

jr_00E_5460:
    ld h, a

jr_00E_5461:
    nop
    ld b, b
    ld l, e
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b

jr_00E_546E:
    nop
    ld hl, sp+$4A
    db $10
    dec bc
    ld e, d
    pop de
    nop
    ld c, $D1
    ld d, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    inc d

jr_00E_5481:
    ld c, $B8
    pop de
    nop
    ld c, $08
    ld d, l
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    inc d
    inc c
    ld a, h
    pop de
    and e
    ld c, $25
    ld d, l
    add hl, de
    add sp, $46
    dec b
    inc b

jr_00E_549C:
    ld hl, sp+$4A
    dec e
    inc c
    add l

jr_00E_54A1:
    pop de
    ld e, e
    ld c, $3F
    ld d, l
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_54B9

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    ld c, b
    dec c
    ret nz

    ld h, d
    or b
    add l
    nop

jr_00E_54B9:
    ld l, [hl]
    ld c, b
    dec c
    ld b, b
    ld h, a
    jr nc, jr_00E_544A

    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    adc b
    inc de
    ld c, $73
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    jr nz, jr_00E_54E9

    inc d
    ld c, l
    ld e, h
    jr nc, jr_00E_54ED

    adc l
    ld e, h
    jr nz, jr_00E_54F1

    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $4D
    ld d, l
    ld h, l
    ld bc, $1416

jr_00E_54E9:
    ld c, l
    ld e, h
    stop

jr_00E_54ED:
    ld bc, $8D14
    ld e, h

jr_00E_54F1:
    ld b, b
    ld bc, $1400
    ret


    ld e, l
    jr nz, jr_00E_54F9

jr_00E_54F9:
    nop
    nop
    ld e, [hl]
    ld c, $D3
    ld h, d
    ld h, l
    ld [hl+], a
    ld b, e
    ld h, b
    inc d
    inc d
    db $D3
    ld e, l
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $1515
    ld a, [bc]
    ld a, b
    jr nz, jr_00E_5529

    and b
    ld a, b
    nop
    nop
    ld h, l
    ld [hl+], a
    ld b, e
    jr nc, jr_00E_5528

    inc b
    ld b, e
    jr nc, jr_00E_5535

    dec d
    add d
    ld a, b
    ld b, l
    dec d
    inc de
    xor a

jr_00E_5528:
    ld a, d

jr_00E_5529:
    stop
    ld e, [hl]
    ld c, $F8
    ld h, d
    ld h, l
    inc hl
    ld b, e
    jr nz, jr_00E_55A6

    rrca

jr_00E_5535:
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    dec bc
    dec de
    ld c, d
    ld b, l
    dec d
    inc de
    ld e, l
    ld a, c
    ld c, b
    inc de
    sbc $79
    stop
    dec bc
    inc bc
    add hl, de
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

    ld h, c
    ld [hl], e
    jr nz, @+$68

    ld [hl], l
    ld l, [hl]
    ld hl, $4920
    rst $38
    ld l, h
    ld l, a
    halt
    ld h, l
    jr nz, jr_00E_55CD

    ld l, h
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and d
    jr z, jr_00E_55B5

    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    jr nz, @+$5B

    ld b, l
    ld b, c
    ld c, b
    ld hl, $4920
    ld [hl], h
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_55F1

    ld [hl], e
    jr nz, jr_00E_55F1

    ld [hl], l
    ld l, [hl]
    ld hl, $FDFE
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    jr nz, jr_00E_55E1

    jr nz, jr_00E_5602

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_5600

    ld l, [hl]
    ld a, c
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l

jr_00E_55A6:
    jr nz, jr_00E_5618

    ld [hl], l
    ld a, d
    ld a, d
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_00E_5624

    ld l, a
    cp $64
    ld l, a
    ccf

jr_00E_55B5:
    cp $FD
    and d
    jr z, @+$45

    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], b
    ld h, l
    inc l
    jr nz, jr_00E_563B

    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    rst $38
    ld l, b
    ld l, a
    ld l, l
    ld h, l

jr_00E_55CD:
    jr nz, jr_00E_5635

    ld [hl], d
    ld h, l
    ld h, l
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    cp $69
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l

jr_00E_55E1:
    jr nz, @+$76

    ld l, a
    rst $38
    ld d, b
    ld b, c
    ld d, d
    ld d, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld hl, $FDFE

jr_00E_55F1:
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    inc l
    jr nz, @+$4B

    jr nz, jr_00E_5675

    ld h, c
    ld [hl], e

jr_00E_5600:
    rst $38
    ld l, b

jr_00E_5602:
    ld h, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_567C

    ld l, a
    jr nz, jr_00E_5679

    ld [hl], l
    ld h, e
    ld l, b
    cp $66
    ld [hl], l
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e

jr_00E_5618:
    ld bc, $2245
    daa
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00E_5624:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e

jr_00E_5635:
    sub l
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l

jr_00E_563B:
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    nop
    rlca
    jp nc, $00D0

    ld c, $72
    ld d, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    ld b, $07
    ret c

    ret nc

    nop
    ld c, $91
    ld d, [hl]
    ld c, $9C
    ld d, [hl]
    ld l, [hl]
    jr nc, jr_00E_566C

    ret nc

    ld b, e
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

jr_00E_566C:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    dec d
    inc d
    sbc l

jr_00E_5675:
    ld e, h
    jr nc, jr_00E_568C

    or l

jr_00E_5679:
    ld e, l
    nop
    nop

jr_00E_567C:
    ld e, [hl]
    add hl, de
    ld a, [hl]
    ld h, e
    ld h, l
    ld bc, $1843
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    ld c, $89
    ld c, h

jr_00E_568C:
    or e
    ld sp, $00C7
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    ld bc, $1514
    ld h, h
    ld a, b
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld c, $A8
    ld d, [hl]
    ld c, b
    dec d
    xor d
    ld a, b
    and d
    jr z, jr_00E_56EE

    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    ld hl, $54FF
    ld l, b
    ld h, l
    jr nz, jr_00E_5718

    ld h, c
    ld l, e
    jr nz, @+$6B

    ld [hl], e
    jr nz, jr_00E_572D

    ld l, h
    ld h, c
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_00E_5741

    ld h, l
    ld h, l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    rst $38
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0E9B
    adc c
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    daa
    or e
    inc [hl]
    and c
    dec b

jr_00E_56EE:
    sub a
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
    inc sp
    ld c, a
    inc de
    ld h, a
    nop
    ld b, b
    ld l, e
    sub l

jr_00E_5708:
    ld c, a
    dec hl
    sub c
    ld c, c
    dec l
    ld l, h
    dec e
    ld b, b
    dec b
    nop
    ld hl, sp+$4A
    dec bc
    ld de, $D209

jr_00E_5718:
    nop
    ld c, $93
    ld d, a
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec c
    ld de, $D20B
    nop
    ld c, $80
    ld e, b
    ld c, $66

jr_00E_572D:
    ld e, d
    dec b
    inc bc
    ld hl, sp+$4A
    inc bc
    add hl, bc
    ld de, $30D1
    ld c, $7A
    ld e, c
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A

jr_00E_5741:
    inc c
    db $10
    db $EC
    pop de
    ld e, e
    ld c, $FD
    ld e, c
    add hl, de
    add sp, $46
    dec b
    dec b
    ld hl, sp+$4A
    add hl, bc
    rlca
    db $DB
    ret nc

    and e
    ld c, $0B
    ld e, d
    add hl, de
    add sp, $46
    or l
    dec hl
    and b
    ei
    ld l, [hl]
    jr nc, jr_00E_576F

    ret nc

    ld b, e
    nop
    add b
    nop
    ld l, [hl]
    dec hl
    dec c
    ret nc

    ld d, l
    nop
    add e
    nop

jr_00E_576F:
    ld l, [hl]
    ld c, b
    dec c
    ret nz

    ld h, d
    or b
    add l
    nop
    ld l, [hl]
    ld c, b
    dec c
    ld b, b
    ld h, a
    jr nc, jr_00E_5708

    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    add hl, bc
    add hl, bc
    ld [hl], e
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
    sbc l
    ld e, h
    ld [$E414], sp
    ld e, d
    and h
    inc d
    and c
    ld e, l
    db $10
    inc d
    ld e, l
    ld e, h
    ld a, [bc]
    inc d
    ld a, l
    ld e, h
    ld [$5D14], sp
    ld e, h
    ld [$5D00], sp
    ld c, $5B
    ld e, d
    dec d
    inc d
    db $DD
    ld e, l
    ld b, $14
    sub a
    ld e, l
    ld b, $14
    db $D3
    ld e, l
    ld b, $14
    xor e
    ld e, l
    ld [bc], a
    inc d
    ld l, l
    ld e, h
    ld [$5900], sp
    ld bc, $1415
    ret


    ld e, l
    ld b, $14
    and c
    ld e, l
    ld b, $14
    ret


    ld e, l
    ld b, $14
    xor e
    ld e, l
    ld [bc], a
    nop
    ld e, [hl]
    ld c, $73
    ld e, d
    ld h, l
    ld bc, $0E5E
    ld [c], a
    ld e, d
    ld h, l
    ld [bc], a
    ld e, [hl]
    ld c, $11
    ld e, e
    ld h, l
    dec b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    ld [bc], a
    ld c, $0C
    ld e, b
    ld e, [hl]
    ld c, $F2
    ld e, e
    dec d
    inc d
    cp [hl]
    ld e, d
    inc a
    inc d
    cp a
    ld e, l
    ld b, $14
    xor e
    ld e, l
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    ld c, $22
    ld e, h
    ld h, l
    rlca
    dec d
    inc d
    adc l
    ld e, h
    ld [$C914], sp
    ld e, l
    jr nz, @+$16

    cp a
    ld e, l
    inc b
    inc d
    xor e
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $8D
    ld e, h
    ld h, e
    inc bc
    dec d
    inc d
    ld a, l
    ld e, h
    ld [$AB14], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $CF
    ld e, l
    ld h, l
    inc de
    dec d
    inc d
    ld a, l
    ld e, h
    ld [$AB14], sp
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $FD
    ld e, [hl]
    ld h, l
    inc d
    ld e, [hl]
    ld c, $12
    ld e, a
    ld h, l
    dec d
    ld e, [hl]
    ld c, $98
    ld e, a
    ld b, e
    jr nz, jr_00E_586C

    inc d
    cp a
    ld e, l
    jr nz, jr_00E_5870

    xor e
    ld e, l
    nop
    nop
    ld e, a
    ld bc, $5E02
    ld c, $D8
    ld e, a
    ld h, l
    inc e
    inc d
    inc d
    or l

jr_00E_586C:
    ld e, l
    ld h, l
    add hl, de
    ld b, e

jr_00E_5870:
    ld b, b
    dec d
    inc d
    adc l
    ld e, h
    jr nz, jr_00E_588B

    inc hl
    ld e, h
    jr nz, jr_00E_587B

jr_00E_587B:
    ld e, l
    ld c, $49
    ld e, d
    ld b, l
    dec d
    dec d
    ld a, [$0877]
    dec d
    dec de
    ld [hl], a
    and h
    dec d
    ld h, h

jr_00E_588B:
    ld a, b
    inc d
    dec d
    ld [$1077], a
    dec d
    ld a, [$0877]
    dec d
    ld [$1977], a
    dec d
    ld a, [$1E77]
    dec d
    add d
    ld a, b
    stop
    ld h, l
    inc bc
    dec d
    dec d
    jp c, $0A77

    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld e, [hl]
    ld c, $49
    ld e, e
    ld h, l
    inc b
    dec d
    dec d
    ld [$0A77], a
    dec d
    add d
    ld a, b
    nop
    nop
    ld e, c
    ld [bc], a
    ld h, l
    ld a, [bc]
    dec d
    dec d
    ld a, [$0677]
    dec d
    jp c, $1677

    dec d
    ld a, [bc]
    ld a, b
    inc b
    dec d
    ld a, b
    ld a, b
    nop
    nop
    ld e, [hl]
    ld c, $06
    ld e, l
    ld h, l
    dec bc
    ld e, [hl]
    ld c, $29
    ld e, l
    ld h, l
    inc c
    dec d
    dec d
    ld a, [$0E77]
    dec d
    ld l, [hl]
    ld a, b
    nop
    nop
    ld e, [hl]
    ld c, $3E
    ld e, l
    ld h, l
    dec c
    ld e, [hl]
    ld c, $69
    ld e, l
    ld h, l
    ld c, $15
    dec d
    add d
    ld a, b
    ld b, $15
    sub [hl]
    ld a, b
    ld b, $15
    add d
    ld a, b
    ld b, $15
    sub [hl]
    ld a, b
    ld b, $15
    add d
    ld a, b
    ld b, $15
    sub [hl]
    ld a, b
    inc b
    dec d
    ld l, [hl]
    ld a, b
    jr nz, jr_00E_5914

jr_00E_5914:
    ld e, [hl]
    ld c, $C0
    ld e, l
    ld h, l
    rrca
    dec d
    dec d
    ld a, [bc]
    ld a, b
    ld [$EA15], sp
    ld [hl], a
    db $10
    dec d
    ld a, [$0877]
    dec d
    ld h, h
    ld a, b
    jr nz, jr_00E_5941

    sub [hl]
    ld a, b
    jr nc, jr_00E_5930

jr_00E_5930:
    ld e, c
    inc bc
    ld b, e
    db $10
    inc d
    dec d
    ld e, d
    ld a, b
    ld h, l
    ld de, $1514
    add d
    ld a, b
    ld e, [hl]
    ld c, $67

jr_00E_5941:
    ld e, [hl]
    ld h, l
    ld [de], a
    ld e, [hl]
    ld c, $BC
    ld e, [hl]
    ld h, l
    inc de
    inc d
    dec d
    ld e, d
    ld a, b
    ld h, l
    dec de
    inc d
    dec d
    adc h
    ld a, b
    ld h, l
    rla
    inc d
    dec d
    ld e, d
    ld a, b
    ld e, [hl]
    ld c, $4E
    ld h, b
    ld h, l
    jr jr_00E_59BF

    ld c, $9F
    ld h, b
    ld h, l
    inc e
    inc d
    dec d
    ld h, h
    ld a, b
    ld b, [hl]
    nop
    dec hl
    and b
    inc b
    add hl, de
    rst $20
    ld b, [hl]
    dec c
    nop
    nop
    nop
    nop
    ld [$4528], sp
    ld b, e
    cp [hl]
    inc d
    inc de
    ld b, b
    ld l, b
    ld h, e
    ld bc, $1315
    jp nc, $1067

    inc de
    ld b, b
    ld l, b
    nop
    nop
    ld h, l
    ld [hl-], a
    dec d
    inc de
    jp nc, $0C67

    inc de
    ld b, b
    ld l, b
    nop
    nop
    ld h, e
    ld [bc], a
    ld b, e
    ld b, $46
    rrca
    ld bc, $A136
    dec b
    ld [bc], a
    ld c, $AE
    ld e, c
    ld e, [hl]
    ld c, $66
    ld e, e
    ld c, b
    ld c, $B5
    ld e, c
    ld e, [hl]
    ld c, $33
    ld h, h
    ld e, a
    nop
    ld [bc], a
    dec d
    inc de
    jp nc, $2067

    inc de
    ld b, b
    ld l, b
    nop
    nop

jr_00E_59BF:
    ld b, e
    jr nz, jr_00E_59D7

    inc de
    jp nz, $2067

    inc de
    ld b, b
    ld l, b
    nop
    nop
    ld h, l
    ld [$1315], sp
    jp nc, $0867

    inc de
    ld b, b
    ld l, b
    nop
    nop

jr_00E_59D7:
    ld e, [hl]
    ld c, $A8
    ld e, h
    ld h, l
    add hl, bc
    ld e, [hl]
    ld c, $CF
    ld e, h
    ld h, l
    inc e
    ld b, e
    jr nz, jr_00E_59FB

    inc de
    jp nz, $2067

    inc de
    and d
    ld h, a
    jr nz, jr_00E_5A02

    jp nz, $1067

    inc de
    and d
    ld h, a
    db $10
    inc de
    jp nz, $3C67

    nop

jr_00E_59FB:
    add hl, de
    ld b, l
    ld b, e
    ld [$1315], sp
    add e

jr_00E_5A02:
    ld a, c
    cp [hl]
    nop
    ld b, e
    jr nc, jr_00E_5A13

    dec b
    add hl, de
    ld b, l
    dec d
    inc de
    add a
    ld a, d
    db $10
    inc de
    dec e
    ld a, d

jr_00E_5A13:
    jr c, jr_00E_5A28

    dec c
    ld a, d
    ld [$AF13], sp
    ld a, d
    nop
    nop
    ld h, l
    db $10
    inc d
    inc de
    add a
    ld a, d
    ld e, [hl]
    ld c, $33
    ld e, [hl]
    ld h, l

jr_00E_5A28:
    ld de, $1314
    xor a
    ld a, d
    ld h, l
    inc e
    ld b, e
    ld [$1315], sp
    dec e
    ld a, d
    jr nc, jr_00E_5A4A

    db $FD
    ld a, c
    db $10
    inc de
    dec e
    ld a, d
    ld d, b
    inc de
    db $FD
    ld a, c
    db $10
    inc de
    dec e
    ld a, d
    ld h, h
    nop
    add hl, de
    ld b, l
    rlca

jr_00E_5A4A:
    nop
    inc [hl]
    ld h, e
    add hl, bc
    nop
    inc d
    and c
    ld e, l
    sbc e
    ld c, $89
    ld c, h
    or e
    ld sp, $00C7
    ld b, l
    add a
    db $10
    rst $38
    ld bc, $8700
    jr nz, @+$01

    nop
    nop
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld c, $17
    ld h, e
    ld c, b
    dec d
    xor d
    ld a, b
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_00E_5AF4

    ld l, a
    rst $38
    ld b, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    inc l
    jr nz, jr_00E_5AD6

    jr nz, jr_00E_5AF0

    ld l, l
    cp $FD
    ld e, e
    ld [hl-], a
    and [hl]
    ld b, h
    ld h, l
    ld l, h
    ld l, c
    ld h, c
    inc l
    jr nz, jr_00E_5AE8

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00E_5AE8

    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld l, $FE
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00E_5B1F

    ld [hl], e
    jr nz, jr_00E_5B04

    ld h, c
    ld l, h
    ld l, c
    ld [hl], l
    ld [hl], e
    inc l
    rst $38
    ld [hl], a
    ld l, b
    ld l, a
    ld l, l
    jr nz, jr_00E_5B0F

    jr nz, jr_00E_5B2A

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    halt
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_00E_5B3E

    ld [hl], l
    ld [hl], e

jr_00E_5AD6:
    ld [hl], h
    jr nz, jr_00E_5B46

    ld h, l
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b

jr_00E_5AE8:
    inc l
    jr nz, jr_00E_5B4C

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l

jr_00E_5AF0:
    ld [hl], d
    rst $38
    ld c, e
    ld h, l

jr_00E_5AF4:
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    daa
    ld l, l
    jr nz, jr_00E_5B72

    ld l, a
    cp $73
    ld [hl], l
    ld [hl], d

jr_00E_5B04:
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_00E_5B0F:
    ld [bc], a
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_00E_5B8D

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_5B98

jr_00E_5B1F:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, $20

jr_00E_5B2A:
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, jr_00E_5B98

    ld [hl], e
    jr nz, jr_00E_5BA1

    ld l, h
    ld h, h
    cp $45
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    inc l
    jr nz, @+$63

    ld l, [hl]

jr_00E_5B3E:
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    ccf
    cp $FD
    and c

jr_00E_5B46:
    ld e, e
    inc bc
    ld b, l
    and d
    jr z, jr_00E_5B8F

jr_00E_5B4C:
    and [hl]
    ld b, c
    ld c, h
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_00E_5BB5

    ld l, [hl]
    ld h, h
    rst $38
    ld c, e
    ld c, c
    ld b, e
    ld c, e
    ld c, c
    ld c, [hl]
    daa
    ld hl, $FE21
    db $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_5BD3

jr_00E_5B72:
    jr nz, jr_00E_5BE7

    ld h, l
    ld [hl], h
    jr nz, jr_00E_5BE7

    ld h, [hl]
    rst $38
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    inc l
    jr nz, jr_00E_5BD5

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    ld l, $FE
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_00E_5B8D:
    ld [hl], d
    ld h, l

jr_00E_5B8F:
    jr nz, jr_00E_5BF8

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_5C0B

    ld l, a

jr_00E_5B98:
    rst $38
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_00E_5C13

    ld l, b
    ld h, l

jr_00E_5BA1:
    ld l, l
    ld l, $FE
    db $FD
    and d
    ld hl, sp+$4A
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_00E_5C0F

    ld [hl], e
    jr nz, jr_00E_5C24

    ld [hl], b
    ld l, c
    ld h, [hl]
    ld h, [hl]

jr_00E_5BB5:
    ld a, c
    rst $38
    ld h, c
    ld [hl], e
    jr nz, jr_00E_5C28

    ld a, c
    jr nz, jr_00E_5C35

    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    inc l
    cp $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_00E_5C3D

    ld l, b
    ld h, l
    ld a, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_00E_5C35

    ld l, a
    rst $38

jr_00E_5BD3:
    ld h, [hl]
    ld l, a

jr_00E_5BD5:
    ld [hl], d
    jr nz, jr_00E_5C39

    jr nz, jr_00E_5C46

    ld h, c
    ld l, [hl]
    ld h, h
    dec l
    ld c, l
    ld h, c
    ld h, a
    ld l, c
    cp $6C
    ld l, c
    ld l, e
    ld h, l

jr_00E_5BE7:
    jr nz, jr_00E_5C62

    ld l, a
    ld [hl], l
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, h

jr_00E_5BF8:
    ld l, h
    jr nz, jr_00E_5C6D

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $4920
    daa
    halt
    ld h, l
    rst $38
    ld h, c
    ld l, h
    ld [hl], a
    ld h, c
    ld a, c

jr_00E_5C0B:
    ld [hl], e
    jr nz, jr_00E_5C85

    ld h, c

jr_00E_5C0F:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h

jr_00E_5C13:
    cp $74
    ld l, a
    jr nz, jr_00E_5C7E

    ld l, h
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, a
    nop
    ld [bc], a
    ld b, l
    and d
    ld l, b

jr_00E_5C24:
    ld c, c
    and [hl]
    ld b, c
    ld l, [hl]

jr_00E_5C28:
    ld h, h
    jr nz, jr_00E_5C8D

    ld h, l
    jr nz, jr_00E_5C91

    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    rst $38

jr_00E_5C35:
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b

jr_00E_5C39:
    jr nz, @+$76

    ld l, b
    ld l, a

jr_00E_5C3D:
    ld [hl], e
    ld h, l
    ld l, $20
    ld d, a
    ld h, l
    cp $64
    ld l, a

jr_00E_5C46:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_5CC2

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00E_5CC9

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00E_5CBF

    ld [hl], l
    ld [hl], d
    ld [hl], h
    cp $79
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h

jr_00E_5C62:
    ld h, [hl]
    jr nz, jr_00E_5CD9

    ld l, a
    ld l, a
    rst $38
    ld h, d
    ld h, c
    ld h, h
    ld l, h
    ld a, c

jr_00E_5C6D:
    jr nz, jr_00E_5CD1

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    cp $79
    ld l, a
    ld [hl], l
    jr nz, jr_00E_5CDC

    ld h, l
    ld h, e
    ld l, a
    ld l, l

jr_00E_5C7E:
    ld h, l
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l

jr_00E_5C85:
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    ld e, e
    rlca
    ld b, l

jr_00E_5C8D:
    and d
    sbc b
    ld b, c
    and [hl]

jr_00E_5C91:
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_5CFB

    ld l, c
    ld h, h
    jr nz, jr_00E_5D14

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], e
    ld h, c
    ld a, c
    ccf
    cp $FD
    and c
    ld e, e
    ld [$A245], sp
    ld l, b
    ld c, c
    and [hl]
    ld d, h
    ld l, a
    jr nz, jr_00E_5D12

    ld h, l
    jr nz, jr_00E_5D16

    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    inc l
    rst $38
    ld [hl], a
    ld h, l
    jr nz, @+$66

jr_00E_5CBF:
    ld l, a
    ld l, [hl]
    daa

jr_00E_5CC2:
    ld [hl], h
    jr nz, jr_00E_5D3C

    ld h, c
    ld l, [hl]
    ld [hl], h
    dec l

jr_00E_5CC9:
    cp $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    sbc b

jr_00E_5CD1:
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, a
    inc l
    jr nz, jr_00E_5D4C

    ld l, b

jr_00E_5CD9:
    ld h, l
    jr nz, @+$71

jr_00E_5CDC:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    dec l
    dec l
    jr nz, jr_00E_5D4A

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    cp $62
    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_5D59

    rst $38
    ld c, e
    ld h, l

jr_00E_5CFB:
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld a, [bc]
    ld b, l
    and d
    jr z, jr_00E_5D4C

    and [hl]
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_00E_5D53

    ld c, c
    ld b, h
    ld c, [hl]

jr_00E_5D12:
    daa
    ld d, h

jr_00E_5D14:
    jr nz, jr_00E_5D5E

jr_00E_5D16:
    ld b, l
    ld b, c
    ld d, d
    rst $38
    ld b, c
    ld c, [hl]
    ld e, c
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    ld hl, $FDFE
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_00E_5D7C

    jr nz, jr_00E_5D99

    ld l, c
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_00E_5D3C:
    inc c
    ld b, l
    and d
    jr z, jr_00E_5D84

    and [hl]
    ld d, h
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_00E_5DB0

    ld h, l
    ld [hl], d

jr_00E_5D4A:
    jr nz, jr_00E_5DC5

jr_00E_5D4C:
    ld l, a
    ld [hl], l
    rst $38
    ld h, h
    ld l, c
    ld h, h
    ld l, [hl]

jr_00E_5D53:
    daa
    ld [hl], h
    jr nz, @+$75

    ld h, c
    ld a, c

jr_00E_5D59:
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], h

jr_00E_5D5E:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec c
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld d, e
    ld h, c
    ld a, c
    jr nz, jr_00E_5DE9

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_00E_5DB9

    ld l, h
    ld l, h
    jr nz, jr_00E_5DC5

jr_00E_5D7C:
    rst $38
    ld [hl], e
    ld h, c
    ld l, c
    ld h, h
    jr nz, @+$79

    ld h, c

jr_00E_5D84:
    ld [hl], e
    jr nz, @+$75

    ld l, b
    ld h, l
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_5DFD

    ld [hl], l
    ld [hl], d
    ld [hl], h
    rst $38

jr_00E_5D99:
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_00E_5E04

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    cp $73
    ld l, b
    ld h, l
    jr nz, jr_00E_5E0F

    ld h, l
    ld h, e
    ld h, c

jr_00E_5DB0:
    ld l, l
    ld h, l
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_00E_5DB9:
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld c, $45
    and d
    jr z, jr_00E_5E06

    and [hl]
    ld d, h

jr_00E_5DC5:
    ld c, b
    ld b, c
    ld d, h
    ld hl, $FDFE
    and c
    ld e, e
    rrca
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, b
    ld h, c
    inc l
    jr nz, jr_00E_5E22

    jr nz, jr_00E_5E46

    ld l, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_00E_5E49

    ld [hl], h
    ld hl, $57FF
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_00E_5E4A

jr_00E_5DE9:
    jr nz, jr_00E_5E5E

    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    inc l
    cp $49
    jr nz, jr_00E_5E59

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_5E72

    ld h, c
    ld l, [hl]

jr_00E_5DFD:
    ld [hl], h
    jr nz, jr_00E_5E74

    ld l, a
    rst $38
    ld h, d
    ld h, l

jr_00E_5E04:
    ld h, e
    ld l, a

jr_00E_5E06:
    ld l, l
    ld h, l
    jr nz, jr_00E_5E55

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_00E_5E0F:
    ld l, $FE
    ld c, c
    daa
    ld h, h
    jr nz, jr_00E_5E88

    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00E_5E83

    ld l, h
    ld a, c
    inc l
    rst $38
    ld l, h

jr_00E_5E22:
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_00E_5E72

    ld h, c
    ld l, h
    ld l, c
    ld [hl], l
    ld [hl], e
    ld l, $FE
    db $FD
    and c
    ld e, e
    db $10
    ld b, l
    and d
    ld hl, sp+$4A
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00E_5E9F

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_5EA4

    ld l, h
    ld h, c
    ld l, l
    ld h, l

jr_00E_5E46:
    rst $38
    ld l, b
    ld h, l

jr_00E_5E49:
    ld [hl], d

jr_00E_5E4A:
    inc l
    jr nz, jr_00E_5EB3

    ld l, h
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_5EBD

    ld [hl], e

jr_00E_5E55:
    cp $70
    ld [hl], d
    ld h, l

jr_00E_5E59:
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, jr_00E_5EC4

jr_00E_5E5E:
    ld [hl], l
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld de, $A245
    jr z, jr_00E_5EAD

    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    inc l
    jr nz, jr_00E_5ECB

jr_00E_5E72:
    ld b, l
    ld b, c

jr_00E_5E74:
    ld c, b
    ld c, b
    ld hl, $46FF
    ld c, h
    ld e, c
    ld c, c
    ld c, [hl]
    daa
    ld hl, $5920
    ld l, a
    ld [hl], l

jr_00E_5E83:
    daa
    ld [hl], d
    ld h, l
    cp $72

jr_00E_5E88:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $20
    ld d, a
    ld l, b
    ld a, c
    rst $38
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$55

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c

jr_00E_5E9F:
    cp $68
    ld h, c
    halt
    ld h, l

jr_00E_5EA4:
    jr nz, jr_00E_5F1A

    ld l, a
    jr nz, jr_00E_5F0B

    ld h, l
    ld h, e
    ld l, a
    ld l, l

jr_00E_5EAD:
    ld h, l
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b

jr_00E_5EB3:
    ld h, l
    ld [hl], d
    ccf
    cp $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d

jr_00E_5EBD:
    ld l, b
    ld c, c
    and [hl]
    ld b, d
    ld h, l
    ld h, e
    ld h, c

jr_00E_5EC4:
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_00E_5F3C

    ld l, b
    ld h, l

jr_00E_5ECB:
    jr nz, jr_00E_5F36

    ld [hl], e
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00E_5F36

    ld h, l
    ld [hl], e
    ld [hl], h
    ld hl, $4E20
    ld l, a
    cp $6F
    ld l, [hl]
    ld h, l
    jr nz, jr_00E_5F46

    ld l, h
    ld [hl], e
    ld h, l
    jr nz, jr_00E_5F4F

    ld [hl], e
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_5F5F

    ld [hl], l
    ld h, c
    ld l, h
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    cp $4D
    ld h, l

jr_00E_5F0B:
    ccf
    cp $FD
    and c
    ld e, e
    inc d
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    inc l

jr_00E_5F1A:
    jr nz, jr_00E_5F95

    ld l, a
    ld [hl], l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, @+$63

    cp $70
    ld l, a
    ld [hl], a
    ld h, l

jr_00E_5F36:
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_00E_5F89

jr_00E_5F3C:
    ld h, c
    ld h, a
    ld l, c
    ld l, $FF
    ld e, c
    ld l, a
    ld [hl], l
    daa
    halt

jr_00E_5F46:
    ld h, l
    jr nz, jr_00E_5FBC

    ld l, b
    ld l, a
    ld [hl], a
    ld l, [hl]
    cp $67

jr_00E_5F4F:
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00E_5FC0

    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    rst $38
    ld h, c

jr_00E_5F5F:
    ld [hl], e
    jr nz, jr_00E_5FC3

    jr nz, jr_00E_5FD8

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld l, $FE
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00E_5FE8

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, l
    ld [hl], e
    ld [hl], h
    rst $38
    ld h, e
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_00E_5FED

    ld l, a
    ld [hl], d

jr_00E_5F89:
    cp $74
    ld l, b
    ld h, l
    jr nz, jr_00E_5FF9

    ld l, a
    ld h, d
    ld l, $FE
    db $FD
    and c

jr_00E_5F95:
    ld e, e
    dec d
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_6003

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    ccf
    jr nz, jr_00E_5FF6

    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_6014

    cp $74
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], d
    inc l

jr_00E_5FBC:
    jr nz, jr_00E_601F

    ld l, [hl]
    ld h, h

jr_00E_5FC0:
    jr nz, jr_00E_6023

    rst $38

jr_00E_5FC3:
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_00E_6038

    ld l, [hl]
    ld h, l
    inc l
    jr nz, jr_00E_6042

    ld l, a
    ld l, a
    ld l, $FE
    db $FD
    and c
    ld e, a
    ld bc, $4502

jr_00E_5FD8:
    and d
    jr z, jr_00E_601E

    and [hl]
    ld b, h
    ld c, c
    ld b, a
    jr nz, jr_00E_602A

    ld d, h
    ld hl, $2021
    ld c, c
    jr nz, jr_00E_6029

jr_00E_5FE8:
    ld c, l
    ld hl, $FE21
    db $FD

jr_00E_5FED:
    and c
    ld b, e
    jr nz, jr_00E_604C

    dec de
    and d
    jr z, jr_00E_6038

    and [hl]

jr_00E_5FF6:
    ld b, d
    ld [hl], l
    ld [hl], h

jr_00E_5FF9:
    jr nz, jr_00E_6044

    daa
    ld l, l
    jr nz, jr_00E_606D

    ld l, a
    ld [hl], h
    jr nz, jr_00E_6064

jr_00E_6003:
    ld [hl], e
    rst $38
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_00E_6070

    jr nz, jr_00E_605E

    ld h, c
    ld h, a
    ld l, c

jr_00E_6014:
    cp $61
    ld [hl], e
    jr nz, jr_00E_6092

    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld [hl], d

jr_00E_601E:
    ld h, l

jr_00E_601F:
    ld l, $FF
    ld d, h
    ld l, b

jr_00E_6023:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00E_609D

jr_00E_6029:
    ld l, b

jr_00E_602A:
    ld h, l
    cp $66
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_00E_6080

    ld b, c
    ld c, d
    ld c, a
    ld d, d
    rst $38

jr_00E_6038:
    ld l, d
    ld l, a
    ld h, d
    cp $72
    ld h, l
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], d

jr_00E_6042:
    ld h, l
    ld l, l

jr_00E_6044:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_00E_604C:
    rla
    ld b, l
    and d
    ld l, b
    ld c, c
    and [hl]
    ld d, e
    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00E_60D4

    ld l, a
    ld [hl], l
    rst $38

jr_00E_605E:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$65

jr_00E_6064:
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, [hl]
    cp $62
    ld h, l
    ld h, e

jr_00E_606D:
    ld h, c
    ld [hl], l
    ld [hl], e

jr_00E_6070:
    ld h, l
    jr nz, jr_00E_60EC

    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00E_60E1

    ld h, l

jr_00E_6080:
    ld [hl], e
    ld [hl], h
    cp $63
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_00E_60F4

    ld l, a
    ld [hl], d
    rst $38
    ld [hl], h

jr_00E_6092:
    ld l, b
    ld h, l
    jr nz, jr_00E_6100

    ld l, a
    ld h, d
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_00E_609D:
    jr @+$47

    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_00E_60F3

    jr nz, jr_00E_6113

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    rst $38
    ld l, c
    ld h, [hl]
    jr nz, jr_00E_6129

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_612D

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    cp $69
    ld [hl], e
    jr nz, @+$70

    ld l, a
    jr nz, jr_00E_6137

    ld l, [hl]
    ld h, l
    rst $38
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_00E_611D

jr_00E_60D4:
    daa
    ld l, h
    ld l, h
    jr nz, jr_00E_613D

    ld l, a
    cp $FD
    and [hl]
    ld l, c
    ld [hl], h
    ld l, $20

jr_00E_60E1:
    ld c, a
    ld l, [hl]
    jr nz, jr_00E_6159

    ld l, a
    jr nz, jr_00E_615C

    ld l, b
    ld h, l
    rst $38
    ld l, [hl]

jr_00E_60EC:
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_00E_615E

    ld h, c
    ld a, d

jr_00E_60F3:
    ld h, l

jr_00E_60F4:
    ld hl, $FDFE
    ld e, e
    inc e
    and c
    ld e, e
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c

jr_00E_6100:
    and [hl]
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_617E

    ld h, c
    ld [hl], e
    jr nz, jr_00E_6171

    ld [hl], l
    ld l, [hl]
    inc l
    rst $38
    ld h, c
    ld l, l
    jr nz, jr_00E_615C

jr_00E_6113:
    jr nz, jr_00E_6179

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_00E_6193

    ld h, l
    ld [hl], h
    ccf

jr_00E_611D:
    cp $FD
    and c
    ld e, e
    ld a, [de]
    ld b, l
    and d
    jr z, @+$45

    and [hl]
    ld b, h
    ld c, c

jr_00E_6129:
    ld b, a
    jr nz, jr_00E_6175

    ld d, h

jr_00E_612D:
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_00E_6195

    ld [hl], d
    ld h, l
    rst $38

jr_00E_6137:
    ld c, b
    ld b, c
    ld c, h
    ld b, [hl]
    jr nz, jr_00E_6194

jr_00E_613D:
    ld b, c
    ld e, c
    jr nz, jr_00E_6195

    ld c, b
    ld b, l
    ld d, d
    ld b, l
    ld hl, $FDFE
    and c
    ld e, e
    dec de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    daa
    halt
    ld h, l
    jr nz, @+$64

    ld h, l
    ld h, l
    ld l, [hl]

jr_00E_6159:
    jr nz, jr_00E_61CF

    ld l, a

jr_00E_615C:
    rst $38
    ld [hl], h

jr_00E_615E:
    ld l, b
    ld h, l
    jr nz, jr_00E_61B0

    ld h, c
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc l
    cp $55
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, c

jr_00E_6171:
    ld [hl], h
    ld l, b
    inc l
    rst $38

jr_00E_6175:
    ld b, e
    ld h, c
    ld l, h
    ld h, h

jr_00E_6179:
    inc l
    jr nz, jr_00E_61CB

    ld [hl], d
    ld l, a

jr_00E_617E:
    ld [hl], h
    ld l, b
    ld h, l
    inc l
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_61C9

    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    rst $38
    ld l, l
    ld h, c
    ld a, d

jr_00E_6193:
    ld h, l

jr_00E_6194:
    ld [hl], e

jr_00E_6195:
    ld l, $20
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6205

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    cp $74
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6210

    ld h, l
    ccf

jr_00E_61B0:
    cp $FD
    and c
    ld e, e
    inc e
    ld b, l
    and d
    jr z, jr_00E_61FC

    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_00E_6232

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_00E_622C

    ld l, a
    ld [hl], h
    rst $38
    ld [hl], h

jr_00E_61C9:
    ld l, b
    ld h, l

jr_00E_61CB:
    jr nz, jr_00E_6224

    ld h, l
    ld h, c

jr_00E_61CF:
    halt
    ld h, l
    inc l
    jr nz, jr_00E_6248

    ld l, b
    ld h, l
    cp $53
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_00E_624D

    ld h, [hl]
    rst $38
    ld h, h
    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    inc l
    jr nz, jr_00E_6234

    ld a, c
    ld h, d
    ld h, c
    ld [hl], d
    daa
    ld [hl], e
    cp $54
    ld h, l
    ld h, l
    ld [hl], h
    ld l, b
    inc l
    jr nz, jr_00E_623A

    ld l, a
    ld h, a
    ld [hl], d
    ld h, c

jr_00E_61FC:
    ld [hl], h
    ld l, b
    inc l
    rst $38
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$52

jr_00E_6205:
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and c

jr_00E_6210:
    ld e, e
    dec e
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, c
    jr nz, jr_00E_628E

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00E_6269

    daa
    halt
    ld h, l
    rst $38

jr_00E_6224:
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_00E_629A

    ld h, [hl]

jr_00E_622C:
    jr nz, jr_00E_62A2

    ld l, b
    ld h, l
    cp $57

jr_00E_6232:
    ld h, l
    ld h, c

jr_00E_6234:
    halt
    ld h, l
    inc l
    jr nz, jr_00E_629B

    ld [hl], l

jr_00E_623A:
    ld [hl], h
    jr nz, jr_00E_62B4

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_00E_62BA

    ld l, b
    ld h, l

jr_00E_6248:
    jr nz, jr_00E_62B9

    ld [hl], h
    ld l, b
    ld h, l

jr_00E_624D:
    ld [hl], d
    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    ld e, $45
    and d
    jr z, @+$45

    and [hl]
    ld b, l
    ld [hl], d
    ld [hl], d
    inc l
    jr nz, jr_00E_62CE

    ld h, l
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00E_62C8

    ld h, l
    ld h, l
    ld l, [hl]

jr_00E_6269:
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE
    db $FD
    and c
    ld e, e
    rra
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_00E_62F5

    ld l, b
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_00E_62EB

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$76

    ld h, c

jr_00E_628E:
    ld l, e
    ld h, l
    jr nz, jr_00E_62FF

    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    jr nz, jr_00E_62DF

jr_00E_629A:
    and d

jr_00E_629B:
    jr z, jr_00E_62E0

    and [hl]
    ld d, a
    ld l, b
    ld a, c
    inc l

jr_00E_62A2:
    jr nz, jr_00E_6318

    ld l, b
    ld h, l
    jr nz, jr_00E_62F5

    ld b, c
    ld c, c
    ld c, [hl]
    rst $38
    ld c, l
    ld b, c
    ld c, [hl]
    ld a, [hl-]
    jr nz, jr_00E_62F7

    ld l, c
    ld h, h

jr_00E_62B4:
    ld l, a
    ld l, [hl]
    ld hl, $48FE

jr_00E_62B9:
    ld h, l

jr_00E_62BA:
    daa
    ld [hl], e
    jr nz, jr_00E_6320

    ld h, l
    ld h, l
    ld l, [hl]
    rst $38
    ld h, l
    halt
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a

jr_00E_62C8:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $FE

jr_00E_62CE:
    db $FD
    and c
    ld e, e
    ld hl, $A245
    sbc b
    ld b, c
    and [hl]
    ld d, e
    ld l, a
    jr nz, jr_00E_6343

    ld l, a
    ld [hl], a
    jr nz, jr_00E_6343

jr_00E_62DF:
    ld l, a

jr_00E_62E0:
    jr nz, @+$79

    ld h, l
    rst $38
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_00E_634B

    ld h, c
    ld h, e

jr_00E_62EB:
    ld l, e
    jr nz, @+$66

    ld l, a
    ld [hl], a
    ld l, [hl]
    ccf
    cp $FD
    and c

jr_00E_62F5:
    ld e, e
    ld [hl+], a

jr_00E_62F7:
    ld b, l
    and d
    ld hl, sp+$4A
    and [hl]
    ld d, h
    ld l, b
    ld h, c

jr_00E_62FF:
    ld [hl], h
    jr nz, jr_00E_6379

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_00E_636A

    ld h, l
    rst $38
    ld l, l
    ld a, c
    jr nz, jr_00E_6378

    ld l, a
    ld h, d
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc hl
    ld b, l
    ld b, [hl]

jr_00E_6318:
    rrca
    nop
    inc sp
    and b
    ld [$FF06], sp
    rst $38

jr_00E_6320:
    ld c, $8D
    ld h, e
    ld b, [hl]
    rrca
    nop
    inc sp
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    ld c, $BC
    ld h, e
    ld b, [hl]
    rrca
    nop
    inc sp
    and b
    ld bc, $FF06
    rst $38
    ld c, $E5
    ld h, e
    and d
    jr z, @+$45

    and [hl]
    ld b, [hl]
    ld l, h
    ld a, c
    ld l, c

jr_00E_6343:
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_63BB

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l

jr_00E_634B:
    ld h, a
    ld l, b
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$63

    ld l, c
    ld [hl], d
    jr nz, jr_00E_63C0

    ld [hl], e
    jr nz, jr_00E_63BF

    ld h, c
    ld [hl], e
    ld a, c
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_63C9

    ld [hl], l
    ld l, [hl]
    dec l
    jr nz, jr_00E_63D2

    ld [hl], l
    ld [hl], e

jr_00E_636A:
    ld [hl], h
    cp $62
    ld h, l
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00E_63EB

    ld l, b

jr_00E_6378:
    ld h, l

jr_00E_6379:
    cp $65
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    jr nz, jr_00E_63E4

    ld h, l
    ld h, c
    ld l, l
    ld [hl], e
    ld hl, $FDFE
    ld c, b
    ld c, $2F
    ld h, h
    and d
    jr z, jr_00E_63D3

    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_63FA

    ld h, l
    jr nz, jr_00E_6401

    ld l, a
    ld l, a
    ld l, h
    ld h, l
    ld h, h
    rst $38
    ld h, d
    ld a, c
    jr nz, jr_00E_6419

    ld l, b
    ld h, l
    jr nz, jr_00E_63D0

    ld h, l
    ld h, c
    ld [hl], e
    ld a, c
    daa
    cp $70
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $2E
    ld l, $FE
    db $FD
    ld c, b
    ld c, $2F

jr_00E_63BB:
    ld h, h
    and d
    jr z, jr_00E_6402

jr_00E_63BF:
    and [hl]

jr_00E_63C0:
    ld b, e
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e

jr_00E_63C9:
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    rst $38
    ld l, c
    ld [hl], e

jr_00E_63D0:
    jr nz, jr_00E_6446

jr_00E_63D2:
    ld l, b

jr_00E_63D3:
    ld h, l
    jr nz, jr_00E_644D

    ld h, c
    ld a, c
    jr nz, jr_00E_644E

    ld l, a
    cp $67
    ld l, a
    ld hl, $FDFE
    ld c, b
    ld c, $2F

jr_00E_63E4:
    ld h, h
    and d
    jr z, jr_00E_642B

    and [hl]
    ld b, [hl]
    ld l, h

jr_00E_63EB:
    ld h, c
    ld [hl], d
    ld [hl], b
    ld [hl], e
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    rst $38
    ld h, [hl]
    ld l, h
    ld a, c
    jr nz, jr_00E_6469

jr_00E_63FA:
    halt
    ld h, l
    ld [hl], d
    jr nz, jr_00E_6476

    ld h, c
    ld l, h

jr_00E_6401:
    ld l, h

jr_00E_6402:
    ld [hl], e
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_6479

    ld l, c
    ld [hl], h
    ld [hl], e
    ld hl, $5520
    ld [hl], e
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$76

    ld l, a

jr_00E_6419:
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    ld [hl], d
    cp $61
    ld h, h
    halt
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    ld l, $FE
    db $FD

jr_00E_642B:
    ld c, b
    ld c, $2F
    ld h, h
    and c
    ld e, e
    ld bc, $5F45
    nop
    ld [bc], a
    and d
    ld l, b
    ld c, c
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_00E_64AE

    ld h, c
    ld a, d
    ld h, l
    ld [hl], e
    rst $38

jr_00E_6446:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$72

    ld l, h

jr_00E_644D:
    ld h, c

jr_00E_644E:
    ld h, e
    ld h, l
    cp $61
    ld l, l
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_00E_64CE

    ld l, b
    ld h, l
    rst $38
    ld h, e
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    ld [hl], e
    inc l
    jr nz, jr_00E_64D9

    ld l, a
    cp $79

jr_00E_6469:
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_00E_64DE

    ld h, l
    ld h, l
    ld h, h
    rst $38
    ld [hl], a
    ld l, c

jr_00E_6476:
    ld l, [hl]
    ld h, a
    ld [hl], e

jr_00E_6479:
    jr nz, jr_00E_64EF

    ld l, a
    cp $6E
    ld h, l
    ld h, a
    ld l, a
    ld [hl], h
    ld l, c
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_00E_64FC

    ld l, b
    ld h, l
    ld l, l
    ld l, $FF
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_64F6

    jr nz, jr_00E_6507

    ld h, c
    ld l, c
    ld [hl], d
    dec l
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_00E_651A

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld l, a
    ld l, e

jr_00E_64AE:
    ld h, c
    ld a, c
    ld l, $20
    ld c, c
    cp $61
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_00E_6525

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_6523

    rst $38
    ld [hl], b
    ld h, c
    ld l, c
    ld [hl], d
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$79

    ld l, c
    ld l, [hl]

jr_00E_64CE:
    ld h, a
    ld [hl], e
    ld l, $FE
    db $FD
    and d
    ld l, b
    ld c, c
    and [hl]
    ld d, d
    ld h, l

jr_00E_64D9:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf

jr_00E_64DE:
    jr nz, jr_00E_6529

    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_654A

    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    cp $79

jr_00E_64EF:
    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, h

jr_00E_64F6:
    ld h, h
    jr nz, @+$69

    ld h, l
    ld [hl], h
    rst $38

jr_00E_64FC:
    ld b, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c
    ld l, [hl]
    jr nz, jr_00E_657D

    ld l, c

jr_00E_6507:
    ld l, [hl]
    ld h, a
    ld [hl], e
    cp $61
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    rst $38
    ld l, b
    ld h, l

jr_00E_651A:
    ld [hl], d
    ld h, l
    ld l, $2E
    ld l, $20
    ld d, a
    ld l, b
    ld h, l

jr_00E_6523:
    ld [hl], d
    ld h, l

jr_00E_6525:
    cp $64
    ld l, c
    ld h, h

jr_00E_6529:
    jr nz, jr_00E_65A4

    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    jr nz, jr_00E_65AB

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_65BD

    ld l, b

jr_00E_654A:
    ld h, l
    ld l, l
    rst $38
    ld [hl], h
    ld l, a
    jr nz, @+$6F

    ld h, l
    jr nz, jr_00E_65BD

    ld l, [hl]
    jr nz, jr_00E_65CB

    ld l, b
    ld h, l
    cp $57
    ld h, l
    ld h, c
    halt
    ld h, l
    ld l, $20
    ld c, c
    jr nz, jr_00E_65D8

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    rst $38
    ld l, b
    ld h, l
    jr nz, jr_00E_65E0

    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00E_65C9

    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    cp $68
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_65F1

jr_00E_657D:
    ld l, a
    jr nz, jr_00E_65E7

    ld h, l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld l, $FE
    db $FD
    and d
    ld l, b
    ld c, c
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_00E_660C

    ld h, l
    ld [hl], e
    ld l, $20
    ld c, c
    rst $38
    ld [hl], d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, @+$6A

    ld l, c

jr_00E_65A4:
    ld l, l
    cp $6E
    ld l, a
    ld [hl], a
    ld l, $20

jr_00E_65AB:
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    rst $38
    ld l, c
    ld [hl], h
    jr nz, jr_00E_6616

    ld l, h
    ld l, h
    jr nz, @+$75

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e

jr_00E_65BD:
    jr nz, jr_00E_6628

    ld l, [hl]
    cp $6F
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    inc l
    jr nz, @+$76

jr_00E_65C9:
    ld l, b
    ld h, l

jr_00E_65CB:
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    ld c, b
    ld [de], a
    nop
    ld b, b
    ld c, b

jr_00E_65D8:
    ld [de], a
    ld b, $40
    ld c, b
    ld [de], a
    inc c
    ld b, b
    ld c, b

jr_00E_65E0:
    ld [de], a
    ld [de], a
    ld b, b
    ld c, b
    ld [de], a
    jr jr_00E_6627

jr_00E_65E7:
    ld bc, $1105
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    ld bc, $1105

jr_00E_65F1:
    ld c, b
    ld a, [de]
    ld a, [hl-]
    ld c, d
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    ld [$160E], sp
    ld h, [hl]
    ld c, $41
    ld h, [hl]
    ld c, $75
    ld h, [hl]
    ld c, $9C
    ld h, [hl]
    ld c, $43

jr_00E_660C:
    ld h, a
    ld c, $72
    ld h, a
    ld c, $B2
    ld h, a
    ld c, $FB
    ld h, a

jr_00E_6616:
    and [hl]
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00E_6669

    jr nz, jr_00E_6685

    ld h, c
    ld l, [hl]
    rst $38
    ld [hl], e
    ld h, l

jr_00E_6627:
    ld h, l

jr_00E_6628:
    jr nz, @+$6F

    ld a, c
    jr nz, jr_00E_6695

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    cp $66
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_00E_66A0

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $FDFE
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld c, a
    ld l, a
    ld l, a
    inc l
    jr nz, jr_00E_66AC

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_66BA

    ld l, a
    ld l, a
    ld l, e
    rst $38
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    inc l
    jr nz, jr_00E_66AC

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    cp $64
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_66D3

    ld l, a
    ld l, a

jr_00E_6669:
    ld l, e
    rst $38
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld hl, $FDFE
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld c, b
    ld h, l
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $2E
    ld l, $2E
    ld l, $FF
    ld l, l
    ld h, c
    ld l, e

jr_00E_6685:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_66F7

    ld h, l
    ld l, $2E
    ld l, $2E
    ld l, $FE
    ld h, h
    ld l, c
    ld a, d
    ld a, d

jr_00E_6695:
    ld a, c
    ld hl, $FDFE
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld d, a
    ld l, b
    ld h, c

jr_00E_66A0:
    ld [hl], h
    jr nz, jr_00E_6704

    ld [hl], d
    ld h, l
    jr nz, jr_00E_671B

    ld l, b
    ld h, l
    rst $38
    ld [hl], e
    ld h, e

jr_00E_66AC:
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, e
    jr nz, jr_00E_66D6

    cp $63
    ld l, a
    ld l, [hl]

jr_00E_66BA:
    ld [hl], e
    ld h, l
    ld [hl], c
    ld [hl], l
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_00E_6739

    ld l, a
    rst $38
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00E_673E

    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h

jr_00E_66D3:
    cp $77
    ld h, l

jr_00E_66D6:
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00E_674D

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_00E_6758

    ld l, a
    ld [hl], a
    dec l
    cp $6C
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_675D

jr_00E_66F7:
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00E_6750

    ld h, c
    ld [hl], d

jr_00E_6704:
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_00E_676D

    ld [hl], l
    ld h, l

jr_00E_670B:
    jr nz, jr_00E_670B

    ld [hl], h
    ld l, a
    jr nz, jr_00E_6785

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6779

    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a

jr_00E_671B:
    rst $38
    ld h, c
    jr nz, jr_00E_6786

    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_00E_6723:
    jr nz, jr_00E_6723

    ld h, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_6792

    ld l, c
    ld [hl], h
    ld a, c
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_00E_67AB

    ld l, b
    ld h, l

jr_00E_6739:
    jr nz, @+$75

    ld l, e
    ld a, c
    ccf

jr_00E_673E:
    cp $FD
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_00E_6792

    jr nz, jr_00E_67C2

    ld h, c
    ld l, h

jr_00E_674D:
    ld l, e
    jr nz, @+$71

jr_00E_6750:
    ld l, [hl]
    rst $38
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_00E_67CB

    ld l, b

jr_00E_6758:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_00E_67CC

jr_00E_675D:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    cp $63
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    ld [hl], e
    jr nz, jr_00E_67DE

    ld l, a
    ld l, a
    ccf

jr_00E_676D:
    cp $FD
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld d, a
    ld l, a
    ld [hl], a
    inc l
    jr nz, @+$76

jr_00E_6779:
    ld l, b
    ld h, l
    jr nz, @+$01

    ld c, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h

jr_00E_6785:
    ld [hl], e

jr_00E_6786:
    jr nz, jr_00E_67E9

    ld [hl], d
    ld h, l
    cp $61
    jr nz, jr_00E_67FA

    ld l, a
    ld [hl], h
    jr nz, jr_00E_67F4

jr_00E_6792:
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    rst $38
    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, @+$4B

    jr nz, @+$67

    halt
    ld h, l
    ld [hl], d
    cp $69
    ld l, l
    ld h, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, l

jr_00E_67AB:
    ld h, h
    ld hl, $FDFE
    ld c, c
    ld [hl], b
    ld l, b
    and [hl]
    ld c, c
    jr nz, jr_00E_6819

    ld h, c
    ld l, [hl]
    jr nz, jr_00E_682D

    ld h, l
    ld h, l
    jr nz, jr_00E_681F

    jr nz, jr_00E_6834

    ld l, a
    ld l, [hl]

jr_00E_67C2:
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00E_6839

    ld h, l
    ld h, a
    ld l, c
    ld l, a

jr_00E_67CB:
    ld l, [hl]

jr_00E_67CC:
    ld [hl], e
    jr nz, jr_00E_6835

    ld [hl], d
    ld l, a
    ld l, l
    cp $75
    ld [hl], b
    jr nz, jr_00E_683F

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6850

    ld l, b
    ld h, c

jr_00E_67DE:
    ld [hl], h
    jr nz, jr_00E_682A

    rst $38
    ld l, b
    ld h, c
    halt
    ld h, l
    jr nz, @+$70

    ld h, l

jr_00E_67E9:
    halt
    ld h, l
    ld [hl], d

jr_00E_67EC:
    jr nz, jr_00E_67EC

    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_00E_6868

jr_00E_67F4:
    ld l, a
    ld hl, $FDFE
    ld c, c
    ld [hl], b

jr_00E_67FA:
    ld l, b
    and [hl]
    ld c, c
    jr nz, jr_00E_6876

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_00E_686F

    ld h, [hl]
    jr nz, jr_00E_6852

    rst $38
    ld c, c
    jr nz, jr_00E_6884

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_00E_6875

    ld h, l
    jr nz, jr_00E_6882

    ld h, l
    ld [hl], e
    ld [hl], e

jr_00E_6819:
    cp $61
    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c

jr_00E_681F:
    ld h, h
    jr nz, jr_00E_6896

    ld l, a
    jr nz, jr_00E_6899

    ld [hl], d
    ld a, c
    jr nz, @+$01

    ld [hl], e

jr_00E_682A:
    ld l, e
    ld a, c
    ld h, h

jr_00E_682D:
    ld l, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_68A8

jr_00E_6834:
    ld l, b

jr_00E_6835:
    ld h, c
    ld l, [hl]
    cp $63

jr_00E_6839:
    ld l, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_00E_68A3

jr_00E_683F:
    ld l, c
    halt
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    rst $38
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $4E

jr_00E_6850:
    ld h, c
    ld l, b

jr_00E_6852:
    inc l
    jr nz, @+$4B

    jr nz, jr_00E_68BA

    ld h, c
    ld l, [hl]
    jr nz, jr_00E_68D2

    ld h, c
    ld l, c
    ld [hl], h
    rst $38
    ld l, a
    ld l, [hl]
    jr nz, jr_00E_68D7

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$76

jr_00E_6868:
    ld l, a
    ld l, a
    ld hl, $FDFE
    ld c, c
    ld [hl], b

jr_00E_686F:
    ld l, b
    and c
    or e
    ld sp, $00C7

jr_00E_6875:
    ld b, l

jr_00E_6876:
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    inc b
    ld c, $8B
    ld l, b

jr_00E_6882:
    ld c, $C6

jr_00E_6884:
    ld l, b
    ld c, $18
    ld l, c
    ld c, $3C
    ld l, c
    and [hl]
    ld d, l
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    jr nz, jr_00E_68F8

    ld l, h

jr_00E_6896:
    ld l, a
    ld [hl], l
    ld h, h

jr_00E_6899:
    jr nz, @+$01

    ld h, c
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_00E_6905

    ld l, a
    ld l, a

jr_00E_68A3:
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    inc l

jr_00E_68A8:
    cp $77
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_6910

    ld l, [hl]
    jr nz, @+$01

    ld l, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, a
    ld [hl], l

jr_00E_68BA:
    ld [hl], e
    jr nz, jr_00E_6926

    ld h, h
    ld h, l
    ld h, c
    ld hl, $FDFE
    ld c, c
    halt
    ld l, c
    and [hl]
    ld c, c
    ld h, [hl]
    jr nz, jr_00E_6914

    jr nz, jr_00E_6944

    ld h, c
    ld l, h
    ld l, e
    jr nz, @+$01

jr_00E_68D2:
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l

jr_00E_68D7:
    ld h, a
    ld l, b
    jr nz, jr_00E_693C

    jr nz, @+$65

    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    cp $64
    ld l, a
    ld l, a
    ld [hl], d
    inc l
    jr nz, jr_00E_6960

    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6957

    ld h, l
    jr nz, @+$63

jr_00E_68F8:
    jr nz, jr_00E_68F8

    ld h, e
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    jr nz, jr_00E_6970

    ld l, [hl]
    jr nz, jr_00E_6978

    ld l, b

jr_00E_6905:
    ld h, l
    rst $38
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_00E_6981

    ld l, c
    ld h, h

jr_00E_6910:
    ld h, l
    ccf

jr_00E_6912:
    jr nz, jr_00E_6912

jr_00E_6914:
    db $FD
    ld c, c
    halt
    ld l, c
    and [hl]
    ld b, e
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    jr nz, jr_00E_6984

    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, @+$01

jr_00E_6926:
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    jr nz, @+$75

    ld l, a

jr_00E_692D:
    jr nz, jr_00E_692D

    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, $FE
    db $FD
    ld c, c
    halt
    ld l, c

jr_00E_693C:
    and [hl]
    ld c, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_00E_6944:
    jr nz, jr_00E_69A7

    jr nz, jr_00E_69B0

    ld l, a
    ld l, h
    ld h, l
    rst $38
    ld l, c
    ld l, [hl]
    jr nz, jr_00E_69C4

    ld l, b
    ld h, l
    jr nz, jr_00E_69B7

    ld l, h
    ld l, a
    ld [hl], l

jr_00E_6957:
    ld h, h
    cp $6F
    ld [hl], d
    jr nz, jr_00E_69D0

    ld l, a
    ld l, l
    ld h, l

jr_00E_6960:
    jr nz, jr_00E_69CD

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    rst $38
    ld h, h
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c

jr_00E_6970:
    ccf
    cp $FD
    ld c, c
    halt
    ld l, c
    and c
    or e

jr_00E_6978:
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc sp
    and b

jr_00E_6981:
    ld bc, $0005

jr_00E_6984:
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld l, a
    pop de
    dec b
    ld [$D16F], sp
    inc c
    rlca
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc sp
    and b
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld b, e
    jp nc, $0C08

    ld b, e
    jp nc, $0913

    ld b, l
    ld b, [hl]

jr_00E_69A7:
    rrca
    nop
    inc sp
    and b
    inc b
    dec b
    nop
    add hl, de
    rst $20

jr_00E_69B0:
    ld b, [hl]
    add e
    ld b, c
    pop de
    ld [$4106], sp

jr_00E_69B7:
    pop de
    ld a, [bc]
    dec d
    ld b, l
    ld b, [hl]
    rrca
    nop
    inc sp
    and b
    ld [$0005], sp
    add hl, de

jr_00E_69C4:
    rst $20
    ld b, [hl]
    add e
    push de
    pop de
    ld b, $0B
    push de
    pop de

jr_00E_69CD:
    rrca
    inc de
    ld b, l

jr_00E_69D0:
    ld b, [hl]
    rrca
    nop
    inc sp
    and b
    jr nz, jr_00E_69DC

    nop
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00E_69DC:
    ld b, [hl]
    ret nc

    dec c
    rlca
    ld b, [hl]
    ret nc

    ld [bc], a
    ld a, [bc]
    ld b, l
    ld b, l
    ld e, $1F
    ld e, h
    ld c, $ED
    ld l, c
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
    jr nz, jr_00E_6A43

    ld h, c
    ld l, l
    ld h, l
    ccf
    cp $FD
    and b
    and [hl]
    jr nz, jr_00E_6A54

    ld l, a
    ld l, $FF
    jr nz, jr_00E_6A64

    ld h, l
    ld [hl], e
    ld l, $FD
    and e
    ld [bc], a
    ld c, $50
    ld l, d
    ld c, $17
    ld l, d
    sbc d
    ld c, $D9
    ld l, d
    sub [hl]
    ld bc, $A6A0
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_00E_6A78

    ld h, c
    halt
    ld h, l
    ld h, h
    jr nz, jr_00E_6A9F

    ld l, a
    rst $38
    db $FD
    ld b, [hl]
    rrca
    ld bc, $C74A
    dec b
    nop
    ld c, $46
    ld l, d
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00E_6A71

    ld l, $FE
    db $FD
    ld c, b

jr_00E_6A43:
    ld c, $50
    ld l, d
    and [hl]
    ld d, e
    ld l, h
    ld l, a
    ld [hl], h
    jr nz, jr_00E_6A7E

    ld l, $FE
    db $FD
    and c
    sbc e
    ld c, $E6

jr_00E_6A54:
    ld l, c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    and b
    ld [bc], a
    add hl, de
    db $10
    ld b, a
    inc d
    inc de

jr_00E_6A64:
    ld e, h
    ld l, l
    ld b, l
    ld [hl+], a
    dec bc
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00

jr_00E_6A71:
    nop
    or e
    ld sp, $01C7
    ld l, c
    ld e, b

jr_00E_6A78:
    ld a, b
    inc d
    ld l, b
    sbc b
    ld d, e
    inc de

jr_00E_6A7E:
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    ld d, $97
    jp nc, $0E00

    ret z

    ld l, d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    db $10

jr_00E_6A9F:
    inc b
    adc b
    ret nc

    nop
    ld c, $5A
    ld l, d
    ld c, $4A
    ld [hl], a
    ld l, [hl]
    jr nc, jr_00E_6AB9

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

jr_00E_6AB9:
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld c, $E6
    ld l, c
    or e
    ld sp, $00C7
    ld b, l
    ld d, $14
    ld e, l
    ld e, h
    jr nz, jr_00E_6ACE

jr_00E_6ACE:
    ld bc, $1400
    inc d
    cp a
    ld e, l
    ld e, l
    add hl, de
    ldh a, [rDMA]
    ld b, l
    ld [hl+], a
    dec bc
    sub a
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
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    dec c
    nop
    dec c
    ret nc

    nop
    ld c, $39
    ld l, e
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    db $10
    inc b
    adc b
    ret nc

    nop
    ld c, $5A
    ld l, d
    ld c, $4A
    ld [hl], a
    ld l, [hl]
    jr nc, jr_00E_6B2B

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

jr_00E_6B2B:
    ld a, a
    sbc b
    ld a, d
    ld h, b
    rrca
    sbc e
    ld c, $E6
    ld l, c
    or e
    ld sp, $00C7
    ld b, l
    dec d
    inc d
    ld c, l
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
    ld a, [bc]
    ld c, [hl]
    ld bc, $A136
    ld c, $00
    nop
    ld a, [hl]
    ld l, e
    ld c, $01
    nop
    add [hl]
    ld l, e
    ld c, $02
    nop
    sbc e
    ld l, e
    ld c, $03
    nop
    or b
    ld l, e
    ld c, $04
    nop
    push bc
    ld l, e
    ld c, $05
    nop
    push bc
    ld l, e
    rst $38
    ld c, b
    ld c, $C5
    ld l, e
    or e
    ld [hl], $A1
    inc bc
    ld c, b
    ld c, $B0
    ld l, e
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
    and a
    ld d, e
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
    and a
    ld d, e
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
    and a
    ld d, e
    inc de
    ld c, b
    dec bc
    ld c, d
    ld l, l
    ld bc, $0903
    ld c, b
    ld c, $67
    ld l, d
    ld [hl+], a
    dec bc
    sub a
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
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    inc bc
    add hl, bc
    ld de, $00D1
    ld c, $26
    ld l, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec b
    inc c
    ld l, l
    pop de
    nop
    ld c, $37
    ld l, h
    ld c, $3C
    ld l, h
    ld l, [hl]
    jr nc, jr_00E_6C1E

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
    inc b
    dec bc
    ld [hl], e

jr_00E_6C1E:
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

Call_00E_6C28:
    dec d
    inc d
    ld e, l
    ld e, h
    jr nc, @+$16

    or l
    ld e, l
    jr nz, jr_00E_6C32

jr_00E_6C32:
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
    ld c, $48
    ld l, h
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
    jr nz, jr_00E_6CB8

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_00E_6CCF

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_6CC9

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_6CC7

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    dec bc
    sub a
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
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    ld de, $970D
    pop de
    nop
    ld c, $CD
    ld l, h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    inc de
    rrca
    push de
    pop de
    nop
    ld c, $01
    ld l, l
    ld c, $12
    ld l, l
    ld l, [hl]
    jr nc, jr_00E_6CC5

jr_00E_6CB8:
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
    inc de
    ld c, $73

jr_00E_6CC5:
    rrca
    rst $38

jr_00E_6CC7:
    ld a, a
    sbc b

jr_00E_6CC9:
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    db $10

jr_00E_6CCF:
    dec d
    inc d
    ld e, l
    ld e, h
    jr nz, jr_00E_6CE9

    or l
    ld e, l
    jr nz, jr_00E_6CD9

jr_00E_6CD9:
    or e
    dec [hl]
    and c
    ld a, [bc]
    ld e, [hl]
    dec bc
    adc b
    ld l, l
    ld h, e
    ld bc, $1414
    cp a
    ld e, l
    add b
    add hl, bc

jr_00E_6CE9:
    ld d, $01
    ld b, e
    jr nz, @-$7E

    dec b
    add hl, bc
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
    ld c, $E6
    ld l, c
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, e
    ld bc, $1314
    inc [hl]
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
    ld c, $1E
    ld l, l
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
    jr nz, jr_00E_6DA5

    ld h, l
    rst $38
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_6D9F

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_6D9D

    ld l, h
    ld l, h
    cp $64
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $0E9B
    and $69
    or e
    ld sp, $00C7
    ld b, l
    ld [hl+], a
    dec bc
    or [hl]
    ld b, a
    and b
    ld [bc], a
    ld b, [hl]
    ld [$010F], sp
    ld [hl], $A1
    dec b
    ld bc, $010F
    add hl, sp
    and c
    dec b
    dec b
    ld c, $FF
    ld [hl], b
    ld b, [hl]
    rrca
    ld bc, $A136
    dec b
    ld [bc], a
    ld c, $43
    ld [hl], d
    ld b, [hl]

jr_00E_6D73:
    ld [$010F], sp
    ld [hl], $A1
    dec b
    inc bc
    rrca
    ld bc, $A139
    dec b
    dec b
    ld c, $02
    ld [hl], h
    sub a
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
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD

jr_00E_6D9D:
    ld l, l
    ld a, [hl+]

jr_00E_6D9F:
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e

jr_00E_6DA5:
    dec b
    nop
    ld hl, sp+$4A
    add hl, bc
    inc d
    ld h, c
    jp nc, $0E00

    dec c
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    rla
    cp l
    jp nc, $0E00

    add b
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    ld [$BA17], sp
    jp nc, $0E32

    and d
    ld l, [hl]
    add hl, de
    add sp, $46
    dec b
    inc b
    ld hl, sp+$4A
    dec bc
    ld d, $9F
    jp nc, $0E6E

    call nz, $196E
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_6DF1

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    dec l
    dec c
    jr nz, jr_00E_6E3B

    jr nz, jr_00E_6D73

    nop

jr_00E_6DF1:
    ld l, [hl]
    jr nc, jr_00E_6E01

    ret nc

    ld b, e
    ldh [$86], a
    nop
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b

jr_00E_6E01:
    adc b
    ld a, [bc]
    jr jr_00E_6E78

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
    jr nz, jr_00E_6E29

    cp a
    ld e, l
    jr nz, jr_00E_6E2D

    ret


    ld e, l
    jr nc, @+$16

    cp a
    ld e, l
    jr nc, jr_00E_6E35

    or l
    ld e, l
    inc c
    nop
    ld e, [hl]
    ld c, $E8
    ld l, [hl]

jr_00E_6E29:
    ld h, l
    ld bc, $1414

jr_00E_6E2D:
    ret


    ld e, l
    ld e, [hl]
    ld c, $33
    ld l, a
    ld h, l
    inc bc

jr_00E_6E35:
    dec d
    inc d
    cp [hl]
    ld e, d
    jr z, jr_00E_6E4F

jr_00E_6E3B:
    and c
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $55
    ld [hl], b
    ld h, l
    ld b, $43
    jr nz, @+$17

    inc d
    ld c, l
    ld e, h
    db $10
    inc d
    or l
    ld e, l

jr_00E_6E4F:
    stop
    ld e, [hl]
    ld c, $BC
    ld [hl], b
    ld h, l
    rlca
    ld e, [hl]
    ld c, $E6
    ld [hl], b
    ld h, l
    ld [$1415], sp
    ld c, l
    ld e, h
    jr nc, jr_00E_6E77

    adc l
    ld e, h
    ld h, h
    inc d
    and c
    ld e, l
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld b, [hl]
    ld de, $3901
    and c

jr_00E_6E77:
    dec b

jr_00E_6E78:
    nop
    dec bc
    sbc e
    ld h, b
    ld c, b
    dec bc
    dec de
    ld c, d
    inc d
    inc de
    inc [hl]
    ld l, l
    ld h, l
    ld [bc], a
    dec d
    inc de
    ret nz

    ld l, h
    ld [$4813], sp
    ld l, l
    nop
    nop
    ld e, [hl]
    ld c, $40
    ld l, a
    ld h, l
    rlca
    dec d
    inc de
    or b
    ld l, h
    jr nc, jr_00E_6EAF

    ret nc

    ld l, h
    ld h, h
    nop
    add hl, de
    ld b, l
    inc d
    inc de
    rst $00
    ld e, d
    ld h, l
    dec b
    dec d
    inc de
    ld e, c
    ld e, d
    inc b
    inc de
    rst $00

jr_00E_6EAF:
    ld e, d
    nop
    nop
    ld e, [hl]
    ld c, $96
    ld [hl], b
    ld h, l
    ld b, $15
    inc de
    add hl, sp
    ld e, d
    jr nc, jr_00E_6ED1

    ld e, c
    ld e, d
    ld h, h
    nop
    add hl, de
    ld b, l
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    inc b
    inc d
    dec d
    sub [hl]
    ld a, b
    ld e, [hl]
    ld c, $7D

jr_00E_6ED1:
    ld [hl], b
    ld h, l
    dec b
    inc d
    dec d
    ld l, [hl]
    ld a, b
    ld h, l
    rlca
    ld b, e
    inc c
    dec d
    dec d
    ld [$4077], a
    dec d
    ld a, [bc]
    ld a, b
    ld h, h
    nop
    add hl, de
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    inc l
    jr nz, jr_00E_6F6A

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_6F59

    ld [hl], d
    ld h, l
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00E_6F64

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_6F6E

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    jr z, jr_00E_6F52

    and [hl]
    ld d, a
    ld c, a
    ld c, a
    ld hl, $2021
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_00E_6F5F

    ld c, c
    ld b, h
    rst $38
    ld c, c
    ld d, h
    ld hl, $FE21
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld c, c
    ld [hl], h
    ld hl, $FDFE
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_00E_6FB0

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $46FF

jr_00E_6F52:
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h

jr_00E_6F59:
    ld hl, $54FE
    ld l, b
    ld h, l
    ld [hl], d

jr_00E_6F5F:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_6FD2

jr_00E_6F64:
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_00E_6F6A:
    rst $38
    ld l, l
    ld l, a
    ld [hl], d

jr_00E_6F6E:
    ld h, l
    jr nz, jr_00E_6FE5

    ld l, a
    jr nz, @+$66

    ld l, a
    ld hl, $FDFE
    ld b, [hl]
    db $10
    ld bc, $A138
    dec b
    dec b
    ld c, $51
    ld [hl], b
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6A

    ld h, c
    halt
    ld h, l
    jr nz, @+$6A

    ld h, c
    ld l, h
    ld h, [hl]
    rst $38
    ld l, a
    ld h, [hl]
    jr nz, jr_00E_7009

    ld l, b
    ld h, l
    jr nz, jr_00E_6FEC

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_00E_700E

    ld h, [hl]
    cp $48
    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    jr nz, jr_00E_7009

    ld l, [hl]
    ld h, h
    jr nz, jr_00E_7014

    ld h, c
    halt
    ld h, l
    rst $38

jr_00E_6FB0:
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_00E_7004

    ld l, a
    ld [hl], d
    ld h, a
    cp $61
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_701C

    ld h, l
    ld [hl], h
    jr nz, jr_00E_702C

    ld [hl], d
    ld l, a
    ld l, l
    rst $38
    ld [hl], d
    ld h, l
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_00E_6FD2:
    ld h, a
    jr nz, jr_00E_7049

    ld l, b
    ld h, l
    cp $63
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7046

    ld a, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld l, $FF
    ld c, c

jr_00E_6FE5:
    ld [hl], h
    jr nz, jr_00E_705F

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_00E_6FEC:
    jr nz, jr_00E_7050

    ld h, l
    cp $6E
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_00E_705F

    ld h, [hl]
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_00E_7065

    ld h, c
    ld h, h
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_00E_7004:
    ld h, h
    jr nz, jr_00E_7068

    ld l, h
    ld l, h

jr_00E_7009:
    jr nz, jr_00E_707A

    ld h, [hl]
    cp $74

jr_00E_700E:
    ld l, b
    ld h, l
    jr nz, jr_00E_7075

    ld [hl], d
    ld a, c

jr_00E_7014:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    inc l
    rst $38
    ld h, d
    ld [hl], l

jr_00E_701C:
    ld [hl], h
    jr nz, jr_00E_7098

    ld l, a
    ld [hl], l
    jr nz, jr_00E_7096

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    cp $74
    ld l, b

jr_00E_702C:
    ld h, l
    ld l, l
    inc l
    jr nz, jr_00E_7092

    ld l, [hl]
    ld h, h
    jr nz, jr_00E_70A9

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld l, c
    ld [hl], e
    jr nz, jr_00E_70B1

    ld l, b
    ld h, l
    cp $69
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h

jr_00E_7046:
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_00E_7049:
    jr nz, @+$72

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $FE

jr_00E_7050:
    db $FD
    and c
    ld e, e
    inc bc
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_00E_70D0

    ld l, c

jr_00E_705F:
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $5420

jr_00E_7065:
    ld l, b
    ld h, l
    ld l, [hl]

jr_00E_7068:
    rst $38
    ld c, c
    jr nz, jr_00E_70CF

    ld h, c
    ld l, [hl]
    jr nz, jr_00E_70D7

    ld l, a
    jr nz, @+$6A

    ld l, a
    ld l, l

jr_00E_7075:
    ld h, l
    ccf
    cp $FD
    and c

jr_00E_707A:
    ld e, e
    inc b
    ld b, l
    and d
    jr z, jr_00E_70C3

    and [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, b
    ld c, b
    ld c, b
    jr nz, jr_00E_70E2

    ld b, l
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld hl, $FE21
    db $FD

jr_00E_7092:
    and c
    ld e, e
    dec b
    ld b, l

jr_00E_7096:
    and d
    ld a, b

jr_00E_7098:
    ld d, a
    and [hl]
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_00E_7108

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_00E_7118

    ld l, c
    ld l, l
    ld h, l
    rst $38
    ld h, [hl]

jr_00E_70A9:
    ld l, a
    ld [hl], d
    jr nz, jr_00E_7121

    ld l, b
    ld h, l
    jr nz, jr_00E_7121

jr_00E_70B1:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld b, $45
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, c
    jr nz, jr_00E_7133

jr_00E_70C3:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ccf
    jr nz, jr_00E_7113

    jr nz, @+$6C

    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_00E_70CF:
    rst $38

jr_00E_70D0:
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_00E_714A

    ld l, a

jr_00E_70D7:
    jr nz, @+$69

    ld l, a
    cp $68
    ld l, a
    ld l, l
    ld h, l
    ld hl, $FDFE

jr_00E_70E2:
    and c
    ld e, e
    rlca
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld c, a
    ld l, b
    inc l
    jr nz, jr_00E_7168

    ld l, a
    ld [hl], l
    jr nz, jr_00E_716A

    ld l, c
    ld l, h
    ld l, h
    ld l, $2E
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$2245], sp
    dec bc
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp

jr_00E_7108:
    rst $00
    nop
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    sbc b
    ld d, e
    inc de
    ld h, a

jr_00E_7113:
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l

jr_00E_7118:
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h

jr_00E_711D:
    sub h
    ld c, e
    dec b
    nop

jr_00E_7121:
    ld hl, sp+$4A
    add hl, bc
    inc d
    ld h, c
    jp nc, $0E00

    ld l, [hl]
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc

jr_00E_7133:
    rla
    cp l
    jp nc, $0E00

    cp d
    ld [hl], c
    add hl, de
    add sp, $46
    dec b
    inc bc
    ld hl, sp+$4A
    add hl, bc
    jr jr_00E_711D

    jp nc, $0E30

    cp a
    ld [hl], c
    add hl, de

jr_00E_714A:
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_715C

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr nc, jr_00E_7164

    ret nc

    ld b, e
    nop
    add e
    nop

jr_00E_715C:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    adc b
    ld a, [bc]

jr_00E_7164:
    jr jr_00E_71D9

    rrca
    rst $38

jr_00E_7168:
    ld a, a
    sbc b

jr_00E_716A:
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
    jr nz, jr_00E_718A

    ret


    ld e, l
    jr nz, jr_00E_718E

    and c
    ld e, l
    jr nc, @+$16

    ret


    ld e, l
    jr nc, jr_00E_7196

    and c
    ld e, l
    inc c
    nop
    ld e, [hl]
    ld c, $C4
    ld [hl], c

jr_00E_718A:
    ld h, l
    ld bc, $1414

jr_00E_718E:
    ret


    ld e, l
    ld e, [hl]
    ld c, $01
    ld [hl], d
    ld h, l
    ld [bc], a

jr_00E_7196:
    dec d
    inc d
    and c
    ld e, l
    jr nc, jr_00E_71B0

    ret


    ld e, l
    jr nc, jr_00E_71B4

    and c
    ld e, l
    jr nc, jr_00E_71B8

    ret


    ld e, l
    jr nc, jr_00E_71A8

jr_00E_71A8:
    ld e, [hl]
    ld c, $32
    ld [hl], d
    ld h, l
    inc bc
    ld [hl], d
    rrca

jr_00E_71B0:
    rst $38
    ld a, a
    ld a, d
    ld h, b

jr_00E_71B4:
    rrca
    ld c, b
    db $10
    sbc d

jr_00E_71B8:
    ld h, b
    ld b, l
    inc d
    inc de
    inc [hl]
    ld l, l
    ld b, l
    inc d
    dec d
    ld e, d
    ld a, b
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, c
    ld l, e
    ld l, c
    inc l
    jr nz, jr_00E_7238

    ld [hl], e
    jr nz, jr_00E_7246

    ld l, b
    ld h, c
    ld [hl], h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l

jr_00E_71D9:
    ccf
    cp $FD
    and d
    jr z, jr_00E_7222

    and [hl]
    ld c, a
    ld c, a
    ld c, b
    jr nz, jr_00E_723E

    ld b, l
    ld b, c
    ld b, c
    ld hl, $5420
    ld l, b
    ld h, l
    rst $38
    ld e, c
    ld b, c
    ld c, e
    ld c, c
    jr nz, jr_00E_725D

    ld [hl], e
    jr nz, jr_00E_7259

    ld h, c
    ld h, e
    ld l, e
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_727D

    ld h, l
    ld h, c
    ld l, [hl]
    rst $38
    ld c, c
    daa
    ld l, l
    jr nz, jr_00E_727D

    ld l, a
    ld l, [hl]
    ld h, l
    ccf
    jr nz, jr_00E_726D

    ld l, a
    cp $6D

jr_00E_7222:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_729B

    ld l, a
    jr nz, jr_00E_728E

    ld l, a
    ccf
    cp $FD
    and c
    ld e, e
    ld [bc], a
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld h, l

jr_00E_7238:
    ld l, h
    ld l, h
    ld l, $2E
    ld l, $FE

jr_00E_723E:
    db $FD
    and c
    ld e, e
    inc bc
    ld b, l
    ld [hl+], a
    dec bc
    sub a

jr_00E_7246:
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
    sbc b
    ld d, e

jr_00E_7259:
    inc de
    ld h, a
    ld [hl], a
    ld c, e

jr_00E_725D:
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b
    nop
    ld hl, sp+$4A
    add hl, bc
    inc d

jr_00E_726D:
    ld h, c
    jp nc, $0E00

    sbc l
    ld [hl], d
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc
    rla
    cp l

jr_00E_727D:
    jp nc, $0E00

    ld h, c
    ld [hl], e
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_7295

    and b
    ld b, b
    nop
    add b
    nop
    dec bc

jr_00E_728E:
    nop
    dec bc
    ld [bc], a
    adc b
    ld a, [bc]
    jr jr_00E_7308

jr_00E_7295:
    rrca
    rst $38
    ld a, a
    sbc b
    ld a, d
    ld h, b

jr_00E_729B:
    rrca
    ld b, l
    ld b, e
    db $10
    dec d
    inc d
    ld c, l
    ld e, h
    jr nz, jr_00E_72B9

    ret


    ld e, l
    jr nc, jr_00E_72A9

jr_00E_72A9:
    ld e, [hl]
    ld c, $89
    ld [hl], e
    ld h, l
    ld bc, $1415
    ld e, l
    ld e, h
    ld b, b
    inc d
    sbc l
    ld e, h
    ld d, b
    inc d

jr_00E_72B9:
    sbc l
    ld e, h
    ld b, b
    inc d
    and c
    ld e, l
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld [$FF06], sp
    rst $38
    ld c, $04
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld bc, $FF06
    rst $38
    ld c, $0C
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    inc b
    ld b, $FF
    rst $38
    ld c, $14
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    ld c, $1C
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld b, [hl]
    and b
    ld [bc], a
    dec b
    nop
    ld c, $24
    ld [hl], e
    ld b, l
    or e
    inc [hl]
    and c
    dec b

jr_00E_7308:
    ld c, b
    ld c, $2C
    ld [hl], e
    or e
    inc [hl]
    and c
    inc b
    ld c, b
    ld c, $2C
    ld [hl], e
    or e
    inc [hl]
    and c
    ld bc, $0E48
    inc l
    ld [hl], e
    or e
    inc [hl]
    and c
    inc bc
    ld c, b
    ld c, $2C
    ld [hl], e
    or e
    inc [hl]
    and c
    ld [bc], a
    ld c, b
    ld c, $2C
    ld [hl], e
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    db $10
    ld b, $FF
    rst $38
    ld c, $1A
    ld d, [hl]
    ld b, [hl]
    rrca
    nop
    ld c, b
    and b
    ld [$FF06], sp
    rst $38
    rrca
    jp nc, Jump_00E_4657

    rrca
    nop
    ld c, b
    and b
    ld bc, $FF06
    rst $38
    rrca
    call nc, Call_00E_4640
    rrca
    nop
    ld c, b
    and b
    inc b
    ld b, $FF
    rst $38
    add hl, bc
    ld [hl], a
    ld e, b
    ld c, b
    add hl, bc
    sub c
    ld b, h
    ld b, l
    dec d
    inc de
    inc [hl]
    ld l, l
    jr nc, jr_00E_737A

    ld c, b
    ld l, l
    nop
    nop
    ld e, [hl]
    ld c, $89
    ld [hl], e
    ld h, l
    ld [bc], a
    inc d
    inc de
    ld h, [hl]
    ld l, l
    ld h, l
    ld bc, $1043
    dec d

jr_00E_737A:
    inc de
    or b
    ld l, h
    jr nc, jr_00E_7392

    ret nc

    ld l, h
    jr nc, @+$15

    ret nc

    ld l, h
    ld b, b
    nop
    add hl, de
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    ld a, c

jr_00E_7392:
    jr nz, @+$76

    ld l, a
    jr nz, jr_00E_73FE

    ld l, a
    rst $38
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_00E_73F7

    ld h, c
    ld l, e
    ld l, c
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, h
    ld l, a
    jr nz, jr_00E_73F5

    jr nz, jr_00E_7416

    ld h, c
    halt
    ld h, l
    jr nz, jr_00E_7427

    ld l, a
    ccf
    cp $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld c, c
    daa
    ld l, l
    jr nz, jr_00E_7421

    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_00E_743A

    ld l, a
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_00E_7424

    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_00E_7454

    ld l, a
    jr nz, jr_00E_7451

    ld [hl], l
    ld h, e
    ld l, b
    cp $66
    ld [hl], l
    ld l, [hl]
    ld hl, $FDFE
    ld e, e
    ld [bc], a
    and d
    cp b
    ld e, l
    and [hl]
    ld b, e

jr_00E_73F5:
    ld l, a
    ld l, l

jr_00E_73F7:
    ld h, l
    jr nz, jr_00E_7469

    ld l, [hl]
    ld l, $FE
    db $FD

jr_00E_73FE:
    and c
    ld e, e
    ld bc, $2245
    dec bc
    sub a
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

jr_00E_7416:
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d

jr_00E_7421:
    ld d, d
    dec l
    ld l, h

jr_00E_7424:
    sub h
    ld c, e
    dec b

jr_00E_7427:
    nop
    ld hl, sp+$4A
    add hl, bc
    inc d
    ld h, c
    jp nc, $0E00

    ld e, h
    ld [hl], h
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    ld hl, sp+$4A
    dec bc

jr_00E_743A:
    rla
    cp l
    jp nc, $0E00

    adc c
    ld [hl], h
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_7454

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

jr_00E_7451:
    ld a, [bc]
    jr jr_00E_74C7

jr_00E_7454:
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
    jr nz, jr_00E_7478

    ret


    ld e, l
    jr nc, jr_00E_7468

jr_00E_7468:
    ld e, [hl]

jr_00E_7469:
    ld c, $A5
    ld [hl], h
    ld h, l
    ld bc, $1415
    ld e, l
    ld e, h
    ld c, b
    inc d
    sbc l
    ld e, h
    sub [hl]
    nop

jr_00E_7478:
    dec d
    inc d
    and c
    ld e, l
    nop
    nop
    ld [hl], d
    rrca
    rst $38
    ld a, a
    ld a, d
    ld h, b
    rrca
    ld c, b
    db $10
    xor $62
    dec d
    inc de
    inc [hl]
    ld l, l
    jr nc, jr_00E_74A2

    ld c, b
    ld l, l
    nop
    nop
    ld e, [hl]
    ld c, $A5
    ld [hl], h
    ld h, l
    ld bc, $1315
    or b
    ld l, h
    jr c, @+$15

    ret nc

    ld l, h
    ld a, b

jr_00E_74A2:
    nop
    add hl, de
    ld b, l
    and d
    cp b
    ld e, l
    and [hl]
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_00E_7524

    ld l, a
    jr nz, jr_00E_751A

    ld l, a
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00E_752D

    ld l, b
    ld h, l
    jr nz, jr_00E_7500

    ld l, a
    ld [hl], d
    ld h, l
    ccf
    cp $FD
    and d
    sbc b
    ld b, c
    and [hl]

jr_00E_74C7:
    ld c, [hl]
    ld l, a
    ld l, $FE
    db $FD
    and d
    cp b
    ld e, l
    and [hl]
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, @+$7B

    ld l, a
    ld [hl], l
    jr nz, jr_00E_753C

    ld [hl], d
    ld h, l
    cp $67
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7546

    ld l, [hl]
    ld a, c

jr_00E_74E7:
    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $FDFE
    and c
    ld e, e
    ld bc, $2245
    dec bc
    or e
    inc [hl]
    and c
    ld a, [bc]
    sub a
    or e
    ld sp, $00C7
    or e
    inc sp
    rst $00
    nop

jr_00E_7500:
    or e
    ld sp, $01C7
    ld l, c
    ld e, b
    ld a, b
    inc d
    ld l, b
    sbc b
    ld d, e
    inc de
    ld h, a
    ld [hl], a
    ld c, e
    ld l, e
    db $DD
    ld l, l
    ld a, [hl+]
    add d
    ld d, d
    dec l
    ld l, h
    sub h
    ld c, e
    dec b

jr_00E_751A:
    nop
    ld hl, sp+$4A
    inc c
    nop

jr_00E_751F:
    inc c
    ret nc

    nop
    ld c, $81

jr_00E_7524:
    ld [hl], l
    add hl, de
    add sp, $46
    dec b
    ld [bc], a
    adc a
    ld l, [hl]
    dec c

jr_00E_752D:
    nop
    dec c
    ret nc

    nop
    ld c, $FA
    ld [hl], l
    ld c, $4A
    ld [hl], a
    dec b
    inc bc
    ld hl, sp+$4A
    inc c

jr_00E_753C:
    dec bc
    ld d, [hl]
    pop de
    ld [hl-], a
    ld c, $3B
    halt
    add hl, de
    add sp, $46

jr_00E_7546:
    dec b
    inc b
    ld hl, sp+$4A
    inc c
    ld a, [bc]
    jr c, jr_00E_751F

    ld l, [hl]
    ld c, $D2
    halt
    add hl, de
    add sp, $46
    ld l, [hl]
    jr nc, jr_00E_7565

    and b
    ld b, b
    nop
    add b
    nop
    ld l, [hl]
    jr c, jr_00E_756D

    jr nz, jr_00E_75AF

    jr nz, jr_00E_74E7

    nop

jr_00E_7565:
    ld l, [hl]
    ld h, $0D
    ld b, b
    ld [hl], e
    ldh [$86], a
    nop

jr_00E_756D:
    dec bc
    nop
    dec bc
    ld [bc], a
    dec bc
    inc bc
    dec bc
    inc b
    adc b
    ld c, $02
    ld [hl], e
    rrca
    rst $38
    ld a, a

jr_00E_757C:
    sbc b
    ld a, d
    ld h, b
    rrca
    ld b, l
    ld b, e
    ld [$1415], sp
    ld c, l
    ld e, h
    dec de
    inc d
    cp a
    ld e, l
    jr nc, jr_00E_758D

jr_00E_758D:
    ld e, [hl]
    ld c, $75
    ld a, b
    dec d
    inc d
    db $DD
    ld e, l
    jr nc, jr_00E_75AB

    ret


    ld e, l
    jr nc, jr_00E_759B

jr_00E_759B:
    ld h, l
    rlca
    ld e, l
    ld c, $F2
    ld [hl], l
    dec d
    inc d
    adc l
    ld e, h
    db $10
    inc d
    ld c, l
    ld e, h
    ld d, b
    inc d

jr_00E_75AB:
    ld l, l
    ld e, h
    jr jr_00E_75C3

jr_00E_75AF:
    or l
    ld e, l
    nop
    nop
    ld e, [hl]
    ld c, $AA
    ld a, h
    ld h, l
    ld [$1415], sp
    db $DD
    ld e, l
    jr nc, jr_00E_75D3

    or l
    ld e, l
    jr nz, jr_00E_75C3

jr_00E_75C3:
    ld e, [hl]
    ld c, $0B
    ld a, d
    ld h, l
    add hl, bc
    dec d
    inc d
    ret


    ld e, l
    jr nc, jr_00E_75E3

    or l
    ld e, l
    nop
    nop

jr_00E_75D3:
    ld e, [hl]
    ld c, $6E
    ld a, d
    ld h, l
    dec c
    dec d
    inc d
    db $DD
    ld e, l
    ld b, b
    inc d
    or l
    ld e, l
    nop
    nop

jr_00E_75E3:
    ld e, [hl]
    ld c, $3F
    ld a, e
    ld h, l
    inc de
    inc d
    inc d
    db $DD
    ld e, l
    ld e, [hl]
    ld c, $57
    ld a, h
    ld b, l
    ld b, e
    jr nz, jr_00E_757C

    jr nz, jr_00E_75F7

jr_00E_75F7:
    ld bc, $4500
    dec d
    inc de
    or b
    ld l, h
    jr nc, jr_00E_7613

    ret nc

    ld l, h
    db $10
    inc de
    ld c, b
    ld l, l
    nop
    nop
    ld h, l
    ld bc, $0E5E
    and $78
    ld b, e
    db $10
    inc d
    inc de
    ld e, h

jr_00E_7613:
    ld l, l
    ld h, l
    rrca
    ld e, [hl]
    ld c, $A5
    ld a, e
    dec d
    inc de
    ret nc

    ld l, h
    ld [$B013], sp
    ld l, h
    jr jr_00E_7637

    ld e, h
    ld l, l
    nop
    nop
    ld h, l
    dec d
    ld b, e
    inc d
    dec d
    inc de
    ret nc

    ld l, h
    ld [$B013], sp
    ld l, h
    ld [$5C13], sp

jr_00E_7637:
    ld l, l
    nop
    nop
    ld b, l
    inc d
    inc de
    or e
    ld e, d
    ld h, l
    ld [bc], a
    dec d
    inc de
    add hl, hl
    ld e, d
    ld d, b
    inc de
    ld e, c
    ld e, d
    inc d
    inc de
    add hl, hl
    ld e, d
    jr jr_00E_7662

    ld e, c
    ld e, d
    inc d
    inc de
    pop de
    ld e, d
    nop
    nop
    ld e, a
    nop
    ld [bc], a
    ld e, [hl]
    ld c, $23
    ld a, c
    dec d
    inc de
    push hl
    ld e, d

jr_00E_7662:
    db $10
    inc de
    ld c, c
    ld e, d
    ld b, $13
    add hl, sp
    ld e, d
    ld b, $13
    push hl
    ld e, d
    nop
    nop
    ld h, l
    inc bc
    dec d
    inc de
    ld e, c
    ld e, d
    ld b, $13
    add hl, hl
    ld e, d
    ld b, $13
    push hl
    ld e, d
    nop
    nop
    ld h, l
    inc b
    inc d
    inc de
    pop de
    ld e, d
    ld e, [hl]
    ld c, $6B
    ld a, c
    ld h, l
    rla
    dec d
    inc de
    ld c, c
    ld e, d
    ld a, [bc]
    inc de
    add hl, sp
    ld e, d
    ld [hl+], a
    inc de
    cp l
    ld e, d
    nop
    nop
    ld e, [hl]
    ld c, $DA
    ld a, c
    ld h, l
    dec bc
    inc d
    inc de
    push hl
    ld e, d
    ld e, [hl]
    ld c, $8C
    ld a, d
    ld h, l
    inc c
    inc d
    inc de
    cp l
    ld e, d
    ld e, [hl]
    ld c, $C4
    ld a, d
    ld h, l
    ld de, $1314
    db $DB
    ld e, d
    ld e, [hl]
    ld c, $D6
    ld a, e
    ld h, l
    ld [de], a
    inc d
    inc de
    cp l
    ld e, d
    ld h, l
    dec d
    ld b, e
    inc c
    dec d
    inc de
    ld c, c
    ld e, d
    ld [$2913], sp
    ld e, d
    ld h, h
    nop
    add hl, de
    ld b, l
    inc d
    ld de, $4E3A
    ld h, l
    inc bc
    ld e, [hl]
    ld c, $5B
    ld a, c
    dec d
    ld de, $4DB0
    jr c, jr_00E_76F3

    ldh [rKEY1], a
    db $10
    ld de, $4DB0
    ld c, $11
    jr nc, jr_00E_773A

    nop
    nop
    ld h, l
    dec b
    ld e, [hl]
    ld c, $9F

jr_00E_76F3:
    ld a, c
    dec d
    ld de, $4DB0
    ld [$3011], sp
    ld c, [hl]
    nop
    nop
    ld h, l
    ld b, $5E
    ld c, $BF
    ld a, c
    ld h, l
    rlca
    ld b, e
    db $10
    dec d
    ld de, $4DE0
    db $10
    ld de, $4E44
    jr nc, jr_00E_7723

    ret nc

    ld c, l
    db $10
    ld de, $4E6C
    nop
    nop
    ld h, l
    ld de, $1114
    ld c, [hl]
    ld c, [hl]
    ld h, l
    ld [de], a
    dec d

jr_00E_7723:
    ld de, $4DD0
    ld b, $11
    ld l, h
    ld c, [hl]
    jr nz, jr_00E_772C

jr_00E_772C:
    ld e, [hl]
    ld c, $EE
    ld a, e
    ld h, l
    dec d
    dec d
    ld de, $4DE0
    inc c
    ld de, $4DB0

jr_00E_773A:
    ld h, h
    nop
    ld e, l
    add hl, de
    ldh a, [rDMA]
    sbc e
    ld c, $E6
    ld l, c
    or e
    ld sp, $00C7
    add hl, de
    ld b, l
    or e
    ld sp, $01C7
    ld e, [hl]
    ld c, $56
    ld [hl], a
    ld c, b
    inc de
    ld [hl], b
    ld l, l
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    inc b
    ld b, $FF
    rst $38
    ld c, $BA
    ld [hl], a
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    ld [bc], a
    ld b, $FF
    rst $38
    ld c, $DC
    ld [hl], a
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    ld bc, $FF06
    rst $38
    ld c, $24
    ld a, b
    and d
    cp b
    ld e, l
    and [hl]
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_00E_77F7

    ld l, b
    ld h, l
    jr nz, jr_00E_77FE

    ld h, c
    ld [hl], d
    ld [hl], b
    rst $38
    ld [hl], b
    ld h, c
    ld h, h
    ld [hl], e
    jr nz, jr_00E_7805

    ld l, a
    jr nz, jr_00E_77F5

    halt
    ld l, a
    ld l, c
    ld h, h
    cp $74
    ld l, b
    ld h, l
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], e
    daa
    rst $38
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_00E_781B

    ld h, [hl]
    jr nz, @+$75

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $FE
    db $FD
    ld c, b
    ld c, $71
    ld a, b
    and d
    cp b
    ld e, l
    and [hl]
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_00E_7827

    ld l, h
    ld l, a
    ld h, e
    ld l, e
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_00E_783D

    ld l, [hl]
    ld hl, $FDFE
    ld c, b
    ld c, $71
    ld a, b
    and d
    cp b
    ld e, l
    and [hl]
    ld c, [hl]
    ld l, a
    jr nz, jr_00E_7831

    ld h, c
    ld h, a
    ld l, c
    jr nz, jr_00E_7851

    ld h, c
    ld [hl], e
    rst $38
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld h, h

jr_00E_77F5:
    jr nz, @+$76

jr_00E_77F7:
    ld l, b
    ld l, c
    ld [hl], e
    cp $54
    ld [hl], d
    ld l, c

jr_00E_77FE:
    ld h, c
    ld l, h
    jr nz, jr_00E_7879

    ld l, c
    ld [hl], h
    ld l, b

jr_00E_7805:
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld l, b
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7873

    jr nz, jr_00E_788B

    ld h, c
    ld [hl], d
    ld [hl], b
    cp $70
    ld h, c
    ld h, h

jr_00E_781B:
    ld l, $2E
    ld l, $FE
    db $FD
    ld c, b
    ld c, $71
    ld a, b
    and d
    cp b
    ld e, l

jr_00E_7827:
    and [hl]
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_00E_78A1

    ld [hl], l
    ld [hl], b
    ld [hl], b

jr_00E_7831:
    ld l, h
    ld a, c
    jr nz, jr_00E_78A4

    ld h, [hl]
    rst $38
    ld h, d
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e

jr_00E_783D:
    jr nz, jr_00E_78A8

    ld [hl], e
    cp $6C
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    inc l
    jr nz, jr_00E_78BE

    ld l, a
    rst $38
    ld l, l
    ld h, c
    ld l, e
    ld h, l

jr_00E_7851:
    jr nz, jr_00E_78C7

    ld l, b
    ld h, l
    jr nz, jr_00E_78C4

    ld l, a
    ld [hl], e
    ld [hl], h
    cp $6F
    ld [hl], l
    ld [hl], h
    jr nz, jr_00E_78CF

    ld h, [hl]
    jr nz, @+$67

    ld h, c
    ld h, e
    ld l, b
    rst $38
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $FE
    db $FD
    ld c, b
    ld c, $71
    ld a, b
    and c
    ld e, e

jr_00E_7873:
    ld bc, $A245
    sbc b
    ld b, c
    and [hl]

jr_00E_7879:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00E_78D2

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, c
    ld h, e
    ld [hl], e
    ld hl, $41FF
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_00E_788B:
    jr nz, jr_00E_7901

    ld l, b
    ld h, l
    cp $64
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    inc l
    rst $38
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    inc l

jr_00E_78A1:
    jr nz, @+$63

    ld l, [hl]

jr_00E_78A4:
    ld h, h
    cp $62
    ld l, a

jr_00E_78A8:
    ld h, a
    inc l
    jr nz, jr_00E_7920

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6B

    ld [hl], e
    rst $38
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_00E_791B

    jr nz, jr_00E_792E

    ld h, l
    ld l, h

jr_00E_78BE:
    ld l, c
    ld h, l
    ld h, [hl]
    ld l, $FE
    ld d, a

jr_00E_78C4:
    ld l, b
    ld h, c
    ld [hl], h

jr_00E_78C7:
    jr nz, jr_00E_792D

    ld l, c
    ld h, h
    jr nz, jr_00E_7946

    ld l, a
    ld [hl], l

jr_00E_78CF:
    rst $38
    ld h, e
    ld h, c

jr_00E_78D2:
    ld l, h
    ld l, h
    jr nz, jr_00E_794A

    ld l, b
    ld l, c
    ld [hl], e
    cp $70
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ccf
    cp $FD
    and c
    ld e, e
    ld bc, $A245
    cp b
    ld e, l
    and [hl]
    ld d, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    ld l, $20
    ld b, c
    ld l, [hl]
    ld h, h
    rst $38
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7961

    ld l, a
    ld l, l
    ld h, l

jr_00E_7901:
    jr nz, jr_00E_7964

    cp $63
    ld l, a
    ld [hl], l
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_00E_7983

    ld l, b
    ld h, l
    rst $38
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld l, c
    halt
    ld h, l
    ld [hl], e
    ld l, $FE

jr_00E_791B:
    db $FD
    and c
    ld e, e
    ld [bc], a
    ld e, a

jr_00E_7920:
    nop
    ld [bc], a
    ld b, l
    and d
    ld a, b
    ld d, a
    and [hl]
    ld c, b
    ld h, l
    ld a, c
    jr nz, jr_00E_797F

    ld [hl], c

jr_00E_792D:
    ld [hl], l

jr_00E_792E:
    ld l, c
    ld h, e
    ld l, e
    ld hl, $45FF
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_00E_79A4

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    cp $6C
    ld h, l
    ld [hl], h
    jr nz, jr_00E_79BA

jr_00E_7946:
    ld l, b
    ld h, l
    jr nz, jr_00E_79BA

jr_00E_794A:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    rst $38
    ld h, d
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld hl, $FDFE
    ld e, e
    inc bc
    and c
    ld b, l
    ld b, e
    db $10
    and d
    ld [$A659], sp

jr_00E_7961:
    ccf
    ccf
    ccf

jr_00E_7964:
    ccf
    cp $FD
    and c
    ld e, e
    inc b
    ld b, l
    and d
    ld a, b
    ld d, a
    and [hl]
    ld c, b
    ld l, c
    inc l
    jr nz, jr_00E_79C7

    ld h, c
    ld l, h
    ld h, c
    ld h, [hl]
    ld a, c
    inc l
    jr nz, jr_00E_79C5

    daa
    ld l, l
    rst $38

jr_00E_797F:
    ld b, d
    ld h, c
    ld a, d
    ld l, b

jr_00E_7983:
    ld h, c
    inc l
    jr nz, jr_00E_79D2

    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    cp $6F
    ld h, [hl]
    jr nz, jr_00E_79E1

    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a
    ld a, c
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec b
    ld b, l
    and d
    ld [$A659], sp
    ld b, c

jr_00E_79A4:
    ld l, [hl]
    ld h, h
    jr nz, jr_00E_7A15

    ld a, c
    jr nz, jr_00E_7A19

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_00E_7A19

    ld [hl], e
    rst $38
    ld d, e
    ld [hl], c
    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    ld l, $FE

jr_00E_79BA:
    db $FD
    and c
    ld e, e
    ld b, $45
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, [hl]
    ld l, c

jr_00E_79C5:
    ld h, e
    ld h, l

jr_00E_79C7:
    jr nz, jr_00E_7A3D

    ld l, a
    jr nz, jr_00E_7A39

    ld h, l
    ld h, l
    ld [hl], h
    rst $38
    ld a, c
    ld l, a

jr_00E_79D2:
    ld [hl], l
    ld l, $FE
    db $FD
    and c
    ld e, e
    rlca
    ld b, l
    and d
    ld a, b
    ld d, a
    and [hl]
    ld b, l
    ld l, c
    ld h, h

jr_00E_79E1:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_00E_7A4F

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    rst $38
    ld [hl], e
    ld l, a
    jr nz, jr_00E_7A64

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7A63

    ld [hl], l
    ld [hl], e
    ld [hl], h
    cp $62
    ld h, l
    jr nz, @+$63

    jr nz, jr_00E_7A70

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [$A245], sp
    sbc b
    ld b, c
    and [hl]
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ccf

jr_00E_7A15:
    jr nz, jr_00E_7A58

    ld [hl], d
    ld h, l

jr_00E_7A19:
    jr nz, jr_00E_7A94

    ld l, a
    ld [hl], l
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7A9B

    ld h, l
    daa
    ld [hl], d
    ld h, l
    cp $74
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7A93

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl], h
    ld l, b

jr_00E_7A39:
    ld h, l
    jr nz, jr_00E_7AAF

    ld h, c

jr_00E_7A3D:
    ld l, l
    ld h, l
    jr nz, jr_00E_7AA8

    ld [hl], l
    ld a, c
    ccf
    cp $FD
    and d
    ld a, b
    ld d, a
    and [hl]
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, @+$71

jr_00E_7A4F:
    ld l, h
    ld h, h
    jr nz, jr_00E_7AB7

    ld l, a
    jr nz, jr_00E_7ACF

    ld l, a
    ld [hl], l

jr_00E_7A58:
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_00E_7AA5

    ld l, c
    ld h, h
    ld l, a

jr_00E_7A63:
    ld l, [hl]

jr_00E_7A64:
    jr nz, jr_00E_7ACF

    ld [hl], e
    ccf
    cp $FD
    and c
    ld e, e
    add hl, bc
    ld b, l
    and d
    sbc b

jr_00E_7A70:
    ld b, c
    and [hl]
    ld c, c
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6D

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $2E
    ld l, $FF
    ld l, a
    ld l, h
    ld h, h
    ld l, $FE
    db $FD
    and c
    ld e, e
    dec bc
    ld b, l
    and d
    ld a, b
    ld d, a
    and [hl]
    ld d, h
    ld l, b
    ld h, c

jr_00E_7A93:
    ld [hl], h

jr_00E_7A94:
    jr nz, jr_00E_7B03

    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    rst $38

jr_00E_7A9B:
    ld l, a
    ld l, [hl]
    ld h, e
    ld h, l
    inc l
    jr nz, jr_00E_7B0E

    ld l, a
    ld l, [hl]
    ld h, a

jr_00E_7AA5:
    inc l
    cp $6C

jr_00E_7AA8:
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7B0E

    ld h, a
    ld l, a

jr_00E_7AAF:
    inc l
    jr nz, jr_00E_7B1A

    ld h, l
    rst $38
    ld [hl], a
    ld h, c
    ld [hl], e

jr_00E_7AB7:
    jr nz, jr_00E_7B32

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld l, $FE
    db $FD
    and c
    ld e, e
    inc c
    ld b, l
    and d
    sbc b
    ld b, c
    and [hl]
    ld c, b
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$64

    ld h, l

jr_00E_7ACF:
    ld h, l
    ld l, [hl]
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_00E_7B3F

    halt
    ld h, l
    ld [hl], d
    cp $73
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, @+$4B

    jr nz, jr_00E_7B5E

    ld h, c
    ld [hl], e
    rst $38
    ld h, d
    ld l, a
    ld [hl], d
    ld l, [hl]
    ld l, $FE
    db $FD
    and d
    ld a, b
    ld d, a
    and [hl]
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_00E_7B5D

    ld [hl], l
    ld [hl], h
    jr nz, @+$4B

    rst $38
    ld [hl], d
    ld h, l
    ld l, l

jr_00E_7B03:
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_00E_7B72

    ld l, c
    ld l, l
    cp $62

jr_00E_7B0E:
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7B7D

    ld h, l
    jr nz, jr_00E_7B8F

    ld h, c
    ld [hl], e

jr_00E_7B1A:
    rst $38
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_00E_7B85

    ld l, [hl]
    ld h, h
    jr nz, jr_00E_7B90

    ld h, l
    cp $77
    ld h, c
    ld [hl], e
    jr nz, jr_00E_7B90

    jr nz, jr_00E_7BA8

    ld l, c

jr_00E_7B32:
    ld l, h
    ld h, h
    jr nz, jr_00E_7BA3

    ld h, c
    ld l, [hl]
    ld hl, $FDFE
    and c
    ld e, e
    dec c
    ld b, l

jr_00E_7B3F:
    and d
    sbc b
    ld b, c
    and [hl]
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_00E_7BB1

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    cp $FD
    and d
    ld a, b
    ld d, a
    and [hl]
    ld c, c
    jr nz, jr_00E_7BCE

    ld l, b
    ld l, c
    ld l, [hl]

jr_00E_7B5D:
    ld l, e

jr_00E_7B5E:
    jr nz, jr_00E_7BC9

    ld [hl], h
    jr nz, jr_00E_7BDA

    ld h, c
    ld [hl], e
    rst $38
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_00E_7BDA

    ld l, h
    ld h, h
    jr nz, jr_00E_7BDC

    ld h, l
    ld l, [hl]
    ld [hl], h

jr_00E_7B72:
    ld l, a
    ld [hl], d
    inc l
    cp $47
    ld l, c
    ld h, c
    ld l, $20
    ld d, h
    ld l, b

jr_00E_7B7D:
    ld h, c
    ld [hl], h
    jr nz, jr_00E_7BE3

    ld h, c
    ld [hl], h
    rst $38
    ld h, c

jr_00E_7B85:
    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_00E_7C03

    ld l, a
    ld [hl], d
    ld l, e

jr_00E_7B8F:
    ld h, l

jr_00E_7B90:
    ld h, h
    cp $68
    ld l, c
    ld l, l
    jr nz, jr_00E_7C0B

    ld l, a
    jr nz, jr_00E_7BFE

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld hl, $FDFE
    and c
    ld e, e

jr_00E_7BA3:
    rrca
    ld b, l
    and d
    cp b
    ld e, l

jr_00E_7BA8:
    and [hl]
    ld c, a
    ld c, e
    ld hl, $5320
    ld [hl], h
    ld l, a
    ld [hl], b

jr_00E_7BB1:
    ld hl, $59FF
    ld l, a
    ld [hl], l
    daa
    halt
    ld h, l
    cp $65
    ld l, l
    ld h, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_00E_7C34

    ld h, l
    rst $38

jr_00E_7BC9:
    ld h, l
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a

jr_00E_7BCE:
    ld l, b
    ld hl, $FDFE
    and c
    ld e, e
    ld de, $A245
    ld a, b
    ld d, a
    and [hl]

jr_00E_7BDA:
    ld c, a
    ld l, b

jr_00E_7BDC:
    inc l
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_00E_7C55

jr_00E_7BE3:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $FE
    db $FD
    and c
    ld e, e
    ld [de], a
    ld b, l
    and d
    ld [$A659], sp
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l

jr_00E_7BFE:
    rst $38
    ld d, e
    ld h, c
    ld l, h
    ld h, c

jr_00E_7C03:
    ld h, [hl]
    ld a, c
    ld l, $20
    ld c, c
    jr nz, jr_00E_7C6E

    ld l, a

jr_00E_7C0B:
    ld l, [hl]
    daa
    ld [hl], h
    cp $67
    ld h, l
    ld [hl], h
    jr nz, jr_00E_7C7D

    ld [hl], h
    jr nz, @+$67

    ld l, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_00E_7C98

    ld l, a
    ld [hl], a
    jr nz, jr_00E_7C77

    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e

jr_00E_7C34:
    jr nz, jr_00E_7C7F

    jr nz, jr_00E_7CA3

    ld l, [hl]
    ld l, a
    ld [hl], a
    cp $74
    ld l, a
    ld l, a
    jr nz, jr_00E_7CAE

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_00E_7CA7

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    rst $38
    ld b, l
    ld l, c
    ld h, h
    ld l, a
    ld l, [hl]
    ld l, $FE
    db $FD
    and c
    ld e, e

jr_00E_7C55:
    inc de
    ld b, l
    and d
    ld [$A659], sp
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    jr nz, jr_00E_7CAD

    daa
    ld l, l
    rst $38
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7CE6

    ld l, a

jr_00E_7C6E:
    ld [hl], l
    jr nz, jr_00E_7CD4

    ld h, c
    ld l, l
    ld h, l
    cp $74
    ld l, a

jr_00E_7C77:
    jr nz, jr_00E_7CEB

    ld [hl], l
    ld l, [hl]
    jr nz, jr_00E_7CEC

jr_00E_7C7D:
    ld [hl], l
    ld [hl], d

jr_00E_7C7F:
    rst $38
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld l, $FE
    db $FD
    and d
    sbc b
    ld b, c
    and [hl]
    ld e, c
    ld [hl], l
    ld [hl], b
    ld l, $20
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    rst $38
    ld [hl], h
    ld h, c
    ld l, h

jr_00E_7C98:
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7D12

    ld l, a
    jr nz, jr_00E_7D1A

    ld l, a
    ld [hl], l

jr_00E_7CA3:
    ld hl, $FDFE
    and c

jr_00E_7CA7:
    ld e, e
    dec d
    ld b, l
    and d
    sbc b
    ld b, c

jr_00E_7CAD:
    and [hl]

jr_00E_7CAE:
    ld b, d
    ld h, c
    ld a, d
    ld l, b
    ld h, c
    inc l
    jr nz, jr_00E_7D1A

    ld l, c
    ld h, h
    rst $38
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_00E_7D31

    ld h, c
    ld a, c
    jr nz, jr_00E_7D32

    ld h, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ccf
    cp $FD
    and c
    ld e, e
    rla
    ld b, l
    ld c, b
    dec d
    ld b, d
    ld e, [hl]
    ld c, b
    dec d
    ld c, b

jr_00E_7CD4:
    ld e, [hl]
    ld c, b
    dec d
    ld c, [hl]
    ld e, [hl]
    ld c, b
    dec d
    ld d, h
    ld e, [hl]
    ld c, b
    dec d
    ld e, d
    ld e, [hl]
    ld bc, $0906
    ld c, b
    ld a, [de]

jr_00E_7CE6:
    inc l
    ld d, c
    ld bc, $0906

jr_00E_7CEB:
    ld c, b

jr_00E_7CEC:
    ld a, [de]
    inc l
    ld d, c
    or e
    ld sp, $01C7
    and d
    sbc b
    ld b, c
    ld c, d
    dec b
    ld c, $07
    ld a, l
    ld c, $3C
    ld a, l
    ld c, $8B
    ld a, l
    ld c, $C3
    ld a, l
    ld c, $FC
    ld a, l
    and [hl]
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_00E_7D5D

    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], a

jr_00E_7D12:
    ld a, c
    ld l, [hl]
    rst $38
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_00E_7D1A:
    ld [hl], h
    jr nz, jr_00E_7D90

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_00E_7D8B

    ld [hl], e
    cp $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    ld l, $2E
    cp $63
    ld l, a
    ld l, h

jr_00E_7D31:
    ld l, a

jr_00E_7D32:
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $FE
    db $FD
    ld c, c
    ld d, l
    ld a, [hl]
    and [hl]
    dec l
    ld d, e
    ld c, b
    ld c, c
    ld d, [hl]
    ld b, l
    ld d, d
    dec l
    jr nz, jr_00E_7D67

    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_00E_7DC6

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e

jr_00E_7D57:
    jr nz, jr_00E_7D57

    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]

jr_00E_7D5D:
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    rst $38
    ld h, e
    ld l, a
    ld l, h
    ld h, h

jr_00E_7D67:
    ld hl, $4320
    ld l, a
    ld l, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    ld h, h
    cp $74
    ld l, a
    jr nz, jr_00E_7DDA

    daa
    ld d, d
    ld h, l
    ld [hl], e
    ld l, b
    jr nz, jr_00E_7DDE

    ld [hl], h
    jr nz, @+$01

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $FE
    db $FD
    ld c, c
    ld d, l
    ld a, [hl]

jr_00E_7D8B:
    and [hl]
    ld c, c
    jr nz, @+$6A

    ld h, c

jr_00E_7D90:
    ld l, h
    ld h, [hl]
    jr nz, jr_00E_7DF9

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    rst $38
    ld h, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, @+$76

    ld l, a
    jr nz, jr_00E_7E16

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    cp $66
    ld h, c
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7E17

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$01

    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_00E_7E2E

    ld l, e
    ld a, c
    ld hl, $FDFE
    ld c, c
    ld d, l
    ld a, [hl]
    and [hl]
    ld c, c
    ld h, [hl]

jr_00E_7DC6:
    jr nz, jr_00E_7E3C

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_00E_7E3F

    ld l, [hl]
    ld h, l
    rst $38
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7E23

jr_00E_7DDA:
    jr nz, jr_00E_7E3F

    ld h, c
    ld l, [hl]

jr_00E_7DDE:
    ld l, [hl]
    ld l, a
    ld [hl], h
    cp $73
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    inc l
    jr nz, @+$6B

    ld [hl], h
    daa
    ld [hl], e
    rst $38
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $FDFE

jr_00E_7DF9:
    ld c, c
    ld d, l
    ld a, [hl]
    and [hl]
    ld d, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, h
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_00E_7E75

    ld h, l
    ld h, l
    ld h, h
    rst $38
    ld [hl], h
    ld l, a
    jr nz, jr_00E_7E7B

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    cp $73
    ld l, a

jr_00E_7E16:
    ld l, l

jr_00E_7E17:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_00E_7E23:
    rst $38
    ld [hl], b
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_00E_7E8D

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d

jr_00E_7E2E:
    ld l, a
    ld l, h
    ld hl, $FE20
    ld d, h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_00E_7E9C

    ld [hl], l
    ld h, a

jr_00E_7E3C:
    ld [hl], e
    jr nz, @+$63

jr_00E_7E3F:
    ld [hl], d
    ld h, l
    rst $38
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_00E_7EB7

    ld h, l

jr_00E_7E4B:
    jr nz, jr_00E_7E4B

    ld h, c
    ld l, h
    ld l, c
    halt
    ld h, l
    ld hl, $FDFE
    and c
    or e
    ld sp, $00C7
    ld b, l
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    ld bc, $0005
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld c, e
    ret nc

    rlca
    ld b, $4B
    ret nc

    ld [bc], a
    rrca
    ld b, l
    ld b, [hl]
    rrca
    nop
    dec sp
    and b

jr_00E_7E75:
    ld [bc], a
    dec b
    nop
    add hl, de
    rst $20
    ld b, [hl]

jr_00E_7E7B:
    add e
    ld e, h
    pop de
    ld [$5C08], sp
    pop de
    dec bc
    ld [de], a
    ld b, l
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    inc b
    dec b
    nop

jr_00E_7E8D:
    add hl, de
    rst $20
    ld b, [hl]
    add e
    ld b, a
    jp nc, $0705

    ld b, a
    jp nc, $0D13

    ld b, l
    ld b, [hl]
    rrca

jr_00E_7E9C:
    nop
    dec sp
    and b
    ld [$0005], sp
    add hl, de
    rst $20
    ld b, [hl]
    add e
    cp e
    jp nc, $070F

    cp e
    jp nc, $0917

    ld b, l
    ld b, [hl]
    rrca
    nop
    dec sp
    and b
    jr nz, jr_00E_7EBB

    nop

jr_00E_7EB7:
    add hl, de
    rst $20
    ld b, [hl]
    add e

jr_00E_7EBB:
    adc d
    pop de
    dec c
    inc b
    adc d
    pop de
    dec c
    inc b
    add e
    dec c
    jp nc, $0102

    dec c
    jp nc, $0F11

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
